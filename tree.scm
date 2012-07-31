  ;;; subst ::= (empty)
  ;;;         | (node even odd)
  ;;;         | (data idx val)

(define-record-type node (fields e o))

(define-record-type data (fields idx val))
 
(define shift (lambda (n) (fxsra n 1)))

(define unshift (lambda (n i) (fx+ (fxsll n 1) i)))

(define t:size
  (lambda (x) (size x)))
  
(define t:bind
  (lambda (xi v s)
    (unless (and (fixnum? xi) (>= xi 0))
      (error 't:bind "index must be a fixnum, got ~s" xi))
    (bind xi v s)))
  
(define t:unbind
  (lambda (xi s)
    (unless (and (fixnum? xi) (>= xi 0))
      (error 't:unbind "index must be a fixnum, got ~s" xi))
    (unbind xi s)))
  
(define t:lookup
  (lambda (xi s)
    (unless (and (fixnum? xi) (>= xi 0))
      (error 't:lookup "index must be a fixnum, got ~s" xi))
    (lookup xi s)))
  
(define t:binding-value
  (lambda (s)
    (unless (data? s)
      (error 't:binding-value "not a binding ~s" s))
    (data-val s)))
  
(define push
  (lambda (xi vi xj vj)
    (if (fxeven? xi)
        (if (fxeven? xj)
            (make-node (push (shift xi) vi (shift xj) vj) '())
            (make-node (make-data (shift xi) vi) (make-data (shift xj) vj)))
        (if (fxeven? xj)
            (make-node (make-data (shift xj) vj) (make-data (shift xi) vi))
            (make-node '() (push (shift xi) vi (shift xj) vj))))))

(define bind
  (lambda (xi vi s*)
    (cond
      [(node? s*)
       (if (fxeven? xi)
           (make-node (bind (shift xi) vi (node-e s*)) (node-o s*))
           (make-node (node-e s*) (bind (shift xi) vi (node-o s*))))]
      [(data? s*)
       (let ([xj (data-idx s*)] [vj (data-val s*)])
         (if (fx= xi xj)
             (make-data xi vi)
             (push xi vi xj vj)))]
      [else (make-data xi vi)])))

(define lookup
  (lambda (xi s*)
    (cond
      [(node? s*)
       (if (fxeven? xi)
           (lookup (shift xi) (node-e s*))
           (lookup (shift xi) (node-o s*)))]
      [(data? s*)
       (if (fx= (data-idx s*) xi)
           s*
           #f)]
      [else #f])))

(define size
  (lambda (s*)
    (cond
      [(node? s*) (fx+ (size (node-e s*)) (size (node-o s*)))]
      [(data? s*) 1]
      [else 0])))

(define cons^
  (lambda (e o)
    (cond
      [(or (node? e) (node? o)) (make-node e o)]
      [(data? e)
       (make-data (unshift (data-idx e) 0) (data-val e))]
      [(data? o)
       (make-data (unshift (data-idx o) 1) (data-val o))]
      [else '()])))

(define unbind
  (lambda (xi s*)
    (cond
      [(node? s*)
       (if (fxeven? xi)
           (cons^ (unbind (shift xi) (node-e s*)) (node-o s*))
           (cons^ (node-e s*) (unbind (shift xi) (node-o s*))))]
      [(and (data? s*) (fx= (data-idx s*) xi)) '()]
      [else s*])))
