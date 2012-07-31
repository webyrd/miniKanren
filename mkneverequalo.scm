(load "mk.scm")

(define make-a (lambda (s c*) (cons s c*)))
(define s-of (lambda (a) (car a)))
(define c*-of (lambda (a) (cdr a)))
(define empty-c* '())
(define empty-a (make-a empty-s empty-c*))

(define =/=
  (lambda (u v)
    (lambdag@ (a)
      (=/=-verify (unify u v (s-of a)) a))))

(define =/=-verify
  (lambda (s^ a)
    (let ((s (s-of a))
          (c* (c*-of a)))
      (cond
        ((not s^) a)
        ((eq? s^ s) #f)
        (else (let ((c (prefix-s s^ s)))
                (make-a s (cons c c*))))))))

(define prefix-s
  (lambda (s <s)
    (cond
      ((eq? s <s) empty-s)
      (else (cons (car s) (prefix-s (cdr s) <s))))))

(define ==
  (lambda (u v)
    (lambdag@ (a)
      (==-verify (unify u v (s-of a)) a))))

(define ==-verify
  (lambda (s^ a)
    (let ((s (s-of a))
          (c* (c*-of a)))
      (cond
        ((not s^) #f)
        ((eq? s^ s) a)
        ((verify-c* c* empty-c* s^)
         => (lambda (c*) (make-a s^ c*)))
        (else #f)))))

(define verify-c*
  (lambda (c* c*^ s)
    (cond
      ((null? c*) c*^)
      ((unify* (car c*) s)
       => (lambda (s^)
            (cond
              ((eq? s s^) #f)
              (else (let ((c (prefix-s s^ s)))
                      (verify-c* (cdr c*) (cons c c*^) s))))))
      (else (verify-c* (cdr c*) c*^ s)))))

(define unify*
  (lambda (p* s)
    (cond
      ((null? p*) s)
      ((unify (lhs (car p*)) (rhs (car p*)) s)
       => (lambda (s) (unify* (cdr p*) s)))
      (else #f))))



(define reify
  (lambda (v a)
    (let ((s (s-of a)))
      (let ((v (walk* v s))
            (c* (walk* (c*-of a) s)))
        (let ((r (reify-s v empty-s)))
          (let ((v (walk* v r))
                (c* (walk* (rem-subsumed
                             (purify c* r)
                             empty-c*) 
                           r)))
            (cond
              ((null? c*) v)
              (else `(,v : (never-equal . ,c*))))))))))

(define purify
  (lambda (ls r)
    (cond
      ((null? ls) empty-c*)
      ((anyvar? (car ls) r)
       (purify (cdr ls) r))
      (else (cons (car ls)
              (purify (cdr ls) r))))))

(define anyvar?
  (lambda (v r)
    (cond
      ((var? v) (var? (walk v r)))
      ((pair? v) (or (anyvar? (car v) r)
                     (anyvar? (cdr v) r)))
      (else #f))))

(define rem-subsumed
  (lambda (c* c*^)
    (cond
      ((null? c*) c*^)
      ((or (subsumed? (car c*) c*^)
           (subsumed? (car c*) (cdr c*)))
       (rem-subsumed (cdr c*) c*^))
      (else (rem-subsumed (cdr c*)
              (cons (car c*) c*^))))))

(define subsumed?
  (lambda (c c*)
    (and (not (null? c*))
         (or (eq? (unify* (car c*) c) c)
             (subsumed? c (cdr c*))))))

(define-syntax project 
  (syntax-rules ()                                                              
    ((_ (x ...) g g* ...)
     (lambdag@ (a)
       (let ((s (s-of a)))
         (let ((x (walk* x s)) ...)
           ((exist () g g* ...) a)))))))

(define ==-check
  (lambda (u v)
    (lambdag@ (a)
      (==-verify (unify-check u v (s-of a)) a))))