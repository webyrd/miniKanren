(load "mkneverequalo.scm")
(load "prelude.scm")

(define-syntax run1 (syntax-rules () ((_ (x) g0 g ...) (run 1 (x) g0 g ...))))
(define-syntax run2 (syntax-rules () ((_ (x) g0 g ...) (run 2 (x) g0 g ...))))
(define-syntax run3 (syntax-rules () ((_ (x) g0 g ...) (run 3 (x) g0 g ...))))
(define-syntax run4 (syntax-rules () ((_ (x) g0 g ...) (run 4 (x) g0 g ...))))
(define-syntax run5 (syntax-rules () ((_ (x) g0 g ...) (run 5 (x) g0 g ...))))
(define-syntax run6 (syntax-rules () ((_ (x) g0 g ...) (run 6 (x) g0 g ...))))
(define-syntax run7 (syntax-rules () ((_ (x) g0 g ...) (run 7 (x) g0 g ...))))
(define-syntax run8 (syntax-rules () ((_ (x) g0 g ...) (run 8 (x) g0 g ...))))
(define-syntax run9 (syntax-rules () ((_ (x) g0 g ...) (run 9 (x) g0 g ...))))
(define-syntax run10 (syntax-rules () ((_ (x) g0 g ...) (run 10 (x) g0 g ...))))

(define-syntax run11 (syntax-rules () ((_ (x) g0 g ...) (run 11 (x) g0 g ...))))
(define-syntax run12 (syntax-rules () ((_ (x) g0 g ...) (run 12 (x) g0 g ...))))
(define-syntax run13 (syntax-rules () ((_ (x) g0 g ...) (run 13 (x) g0 g ...))))
(define-syntax run14 (syntax-rules () ((_ (x) g0 g ...) (run 14 (x) g0 g ...))))
(define-syntax run15 (syntax-rules () ((_ (x) g0 g ...) (run 15 (x) g0 g ...))))
(define-syntax run16 (syntax-rules () ((_ (x) g0 g ...) (run 16 (x) g0 g ...))))
(define-syntax run17 (syntax-rules () ((_ (x) g0 g ...) (run 17 (x) g0 g ...))))
(define-syntax run18 (syntax-rules () ((_ (x) g0 g ...) (run 18 (x) g0 g ...))))
(define-syntax run19 (syntax-rules () ((_ (x) g0 g ...) (run 19 (x) g0 g ...))))
(define-syntax run20 (syntax-rules () ((_ (x) g0 g ...) (run 20 (x) g0 g ...))))

(define-syntax run21 (syntax-rules () ((_ (x) g0 g ...) (run 21 (x) g0 g ...))))
(define-syntax run22 (syntax-rules () ((_ (x) g0 g ...) (run 22 (x) g0 g ...))))
(define-syntax run23 (syntax-rules () ((_ (x) g0 g ...) (run 23 (x) g0 g ...))))
(define-syntax run24 (syntax-rules () ((_ (x) g0 g ...) (run 24 (x) g0 g ...))))
(define-syntax run25 (syntax-rules () ((_ (x) g0 g ...) (run 25 (x) g0 g ...))))
(define-syntax run26 (syntax-rules () ((_ (x) g0 g ...) (run 26 (x) g0 g ...))))
(define-syntax run27 (syntax-rules () ((_ (x) g0 g ...) (run 27 (x) g0 g ...))))
(define-syntax run28 (syntax-rules () ((_ (x) g0 g ...) (run 28 (x) g0 g ...))))
(define-syntax run29 (syntax-rules () ((_ (x) g0 g ...) (run 29 (x) g0 g ...))))
(define-syntax run30 (syntax-rules () ((_ (x) g0 g ...) (run 30 (x) g0 g ...))))

(define-syntax run31 (syntax-rules () ((_ (x) g0 g ...) (run 31 (x) g0 g ...))))
(define-syntax run32 (syntax-rules () ((_ (x) g0 g ...) (run 32 (x) g0 g ...))))
(define-syntax run33 (syntax-rules () ((_ (x) g0 g ...) (run 33 (x) g0 g ...))))
(define-syntax run34 (syntax-rules () ((_ (x) g0 g ...) (run 34 (x) g0 g ...))))
(define-syntax run35 (syntax-rules () ((_ (x) g0 g ...) (run 35 (x) g0 g ...))))
(define-syntax run36 (syntax-rules () ((_ (x) g0 g ...) (run 36 (x) g0 g ...))))
(define-syntax run37 (syntax-rules () ((_ (x) g0 g ...) (run 37 (x) g0 g ...))))
(define-syntax run38 (syntax-rules () ((_ (x) g0 g ...) (run 38 (x) g0 g ...))))
(define-syntax run39 (syntax-rules () ((_ (x) g0 g ...) (run 39 (x) g0 g ...))))
(define-syntax run40 (syntax-rules () ((_ (x) g0 g ...) (run 40 (x) g0 g ...))))

(test-check "=/=-1"
  (run* (q)
    (=/= 3 q)
    (== q 3))
  '())

(test-check "=/=-2"
  (run* (q)
    (== q 3)
    (=/= 3 q))
  '())

(test-check "=/=-3"
  (run* (q)
    (exist (x y)
      (=/= x y)
      (== x y)))
  '())

(test-check "=/=-4"
  (run* (q)
    (exist (x y)
      (== x y)
      (=/= x y)))
  '())

(test-check "=/=-5"
  (run* (q)
    (exist (x y)
      (=/= x y)
      (== 3 x)
      (== 3 y)))
  '())

(test-check "=/=-6"
  (run* (q)
    (exist (x y)
      (== 3 x)
      (=/= x y)
      (== 3 y)))
  '())

(test-check "=/=-7"
  (run* (q)
    (exist (x y)
      (== 3 x)
      (== 3 y)
      (=/= x y)))
  '())

(test-check "=/=-8"
  (run* (q)
    (exist (x y)
      (== 3 x)
      (== 3 y)
      (=/= y x)))
  '())

(test-check "=/=-9"
  (run* (q)
    (exist (x y z)
      (== x y)
      (== y z)
      (=/= x 4)
      (== z (+ 2 2))))
  '())

(test-check "=/=-10"
  (run* (q)
    (exist (x y z)
      (== x y)
      (== y z)
      (== z (+ 2 2))
      (=/= x 4)))
  '())

(test-check "=/=-11"
  (run* (q)
    (exist (x y z)
      (=/= x 4)
      (== y z)
      (== x y)
      (== z (+ 2 2))))
  '())

(test-check "=/=-12"
  (run* (q)
    (exist (x y z)
      (=/= x y)
      (== x `(0 ,z 1))
      (== y `(0 1 1))))
  '(_.0))

(test-check "=/=-13"
  (run* (q)
    (exist (x y z)
      (=/= x y)
      (== x `(0 ,z 1))
      (== y `(0 1 1))
      (== z 1)
      (== `(,x ,y) q)))
  '())

(test-check "=/=-14"
  (run* (q)
    (exist (x y z)
      (=/= x y)
      (== x `(0 ,z 1))
      (== y `(0 1 1))
      (== z 0)))
  '(_.0))

(test-check "=/=-15"
  (run* (q)
    (exist (x y z)
      (== z 0)
      (=/= x y)
      (== x `(0 ,z 1))
      (== y `(0 1 1))))
  '(_.0))

(test-check "=/=-16"
  (run* (q)
    (exist (x y z)
      (== x `(0 ,z 1))
      (== y `(0 1 1))
      (=/= x y)))
  '(_.0))

(test-check "=/=-17"
  (run* (q)
    (exist (x y z)
      (== z 1)
      (=/= x y)
      (== x `(0 ,z 1))
      (== y `(0 1 1))))
  '())

(test-check "=/=-18"
  (run* (q)
    (exist (x y z)
      (== z 1)
      (== x `(0 ,z 1))
      (== y `(0 1 1))
      (=/= x y)))
  '())

(test-check "=/=-19"
  (run* (q)
    (exist (x y)
      (=/= `(,x 1) `(2 ,y))
      (== x 2)))
  '(_.0))

(test-check "=/=-20"
  (run* (q)
    (exist (x y)
      (=/= `(,x 1) `(2 ,y))
      (== y 1)))
  '(_.0))

(test-check "=/=-21"
  (run* (q)
    (exist (x y)
      (=/= `(,x 1) `(2 ,y))
      (== x 2)
      (== y 1)))
  '())

(test-check "=/=-22"
  (run* (q)
    (exist (x y)
      (=/= `(,x 1) `(2 ,y))
      (== `(,x ,y) q)))
  '(((_.0 _.1) : (never-equal ((_.0 . 2) (_.1 . 1))))))

(test-check "=/=-23"
  (run* (q)
    (exist (x y)
      (=/= `(,x 1) `(2 ,y))
      (== x 2)
      (== `(,x ,y) q)))
  '(((2 _.0) : (never-equal ((_.0 . 1))))))

(test-check "=/=-24"
  (run* (q)
    (exist (x y)
      (=/= `(,x 1) `(2 ,y))
      (== x 2)
      (== y 9)
      (== `(,x ,y) q)))
  '((2 9)))

(test-check "=/=-25"
  (run* (q)
    (exist (x y)
      (=/= `(,x 1) `(2 ,y))
      (== x 2)
      (== y 1)
      (== `(,x ,y) q)))
  '())

(test-check "=/=-26"
  (run* (q)
    (exist (a x z)
      (=/= a `(,x 1))
      (== a `(,z 1))
      (== x z)))
  '())

(test-check "=/=-27"
  (run* (q)
    (exist (a x z)
      (=/= a `(,x 1))
      (== a `(,z 1))
      (== x 5)
      (== `(,x ,z) q)))
  '(((5 _.0) : (never-equal ((_.0 . 5))))))

(test-check "=/=-28"
  (run* (q)
    (=/= 3 4))
  '(_.0))

(test-check "=/=-29"
  (run* (q)
    (=/= 3 3))
  '())

(test-check "=/=-30"
  (run* (q)
    (exist (a)
      (=/= a 3)
      (== 3 a)))
  '())

(test-check "=/=-31"
  (run* (q)
    (exist (a)
      (== 3 a)
      (=/= a 3)))
  '())

(test-check "=/=-32"
  (run* (q)
    (exist (a)
      (== 3 a)
      (=/= a 4)))
  '(_.0))

(test-check "=/=-33"
  (run* (q)
    (=/= 4 q)
    (=/= 3 q))
  '((_.0 : (never-equal ((_.0 . 4)) ((_.0 . 3))))))

(test-check "=/=-34"
  (run* (q) (=/= q 5) (=/= q 5))
  '((_.0 : (never-equal ((_.0 . 5))))))

(test-check "=/=-35"
  (let ((foo (lambda (x)
               (exist (a)
                 (=/= x a)))))
    (run* (q) (exist (a) (foo a))))
  '(_.0))

(test-check "=/=-36"
  (let ((foo (lambda (x)
               (exist (a)
                 (=/= x a)))))
    (run* (q) (exist (b) (foo b))))
  '(_.0))

(test-check "=/=-37"
  (run* (q)
    (exist (x y)
      (== `(,x ,y) q)
      (=/= x y)))
  '(((_.0 _.1) : (never-equal ((_.0 . _.1))))))

(test-check "=/=-38"
  (run* (q)
    (exist (x y)
      (== `(,x ,y) q)
      (=/= y x)))
  '(((_.0 _.1) : (never-equal ((_.1 . _.0))))))

(test-check "=/=-39"
  (run* (q)
    (exist (x y)
      (== `(,x ,y) q)
      (=/= x y)
      (=/= y x)))
  '(((_.0 _.1) : (never-equal ((_.0 . _.1))))))

(test-check "=/=-40"
  (run* (q)
    (exist (x y)
      (== `(,x ,y) q)
      (=/= x y)
      (=/= x y)))
  '(((_.0 _.1) : (never-equal ((_.0 . _.1))))))

(test-check "=/=-41"
  (run* (q) (=/= q 5) (=/= 5 q))
  '((_.0 : (never-equal ((_.0 . 5))))))

(test-check "=/=-42"
  (run* (q)
    (exist (x y)
      (== `(,x ,y) q)
      (=/= `(,x ,y) `(5 6))
      (=/= x 5)))
  '(((_.0 _.1) : (never-equal ((_.0 . 5))))))

(test-check "=/=-43"
  (run* (q)
    (exist (x y)
      (== `(,x ,y) q)
      (=/= x 5)
      (=/= `(,x ,y) `(5 6))))
  '(((_.0 _.1) : (never-equal ((_.0 . 5))))))

(test-check "=/=-44"
  (run* (q)
    (exist (x y)
      (=/= x 5)
      (=/= `(,x ,y) `(5 6))
      (== `(,x ,y) q)))
  '(((_.0 _.1) : (never-equal ((_.0 . 5))))))

(test-check "=/=-45"
  (run* (q)
    (exist (x y)
      (=/= 5 x)
      (=/= `(,x ,y) `(5 6))
      (== `(,x ,y) q)))
  '(((_.0 _.1) : (never-equal ((_.0 . 5))))))

(test-check "=/=-46"
  (run* (q)
    (exist (x y)
      (=/= 5 x)
      (=/= `( ,y ,x) `(6 5))
      (== `(,x ,y) q)))
  '(((_.0 _.1) : (never-equal ((_.0 . 5))))))

(test-check "=/=-47"
  (run* (x)
    (exist (y z)
      (=/= x `(,y 2))
      (== x `(,z 2))))
  '((_.0 2)))

(test-check "=/=-48"
  (run* (x)
    (exist (y z)
      (=/= x `(,y 2))
      (== x `((,z) 2))))
  '(((_.0) 2)))

(test-check "=/=-49"
  (run* (x)
    (exist (y z)
      (=/= x `((,y) 2))
      (== x `(,z 2))))
  '((_.0 2)))


(test-check "testc11.tex-1" 
(run* (q)
  fail)

`())

(test-check "testc11.tex-2"   
(run* (q)
  (== #t q))

`(#t))

(test-check "testc11.tex-3"   
(run* (q) 
  fail
  (== #t q))
`())

 (define g fail)
  

(test-check "testc11.tex-4"   
(run* (q) 
  succeed 
  (== #t q))
(list #t))

(test-check "testc11.tex-5"   
(run* (q) 
  succeed 
  (== #t q))

`(#t))

(test-check "testc11.tex-6"   
(run* (r) 
  succeed
  (== 'corn r))

(list 'corn))

(test-check "testc11.tex-7"   
(run* (r) 
  succeed
  (== 'corn r))

`(corn))

(test-check "testc11.tex-8"   
(run* (r)
  fail
  (== 'corn r))

`())

(test-check "testc11.tex-9"   
(run* (q) 
  succeed 
  (== #f q))

`(#f))

(test-check "testc11.tex-10" 
(run* (x)
  (let ((x #f))
    (== #t x)))

'())

(test-check "testc11.tex-11" 
(run* (q)
  (exist (x)
    (== #t x)
    (== #t q)))

(list #t))

(run* (q)
  (exist (x)
    (== #t x)
    (== #t q)))


(test-check "testc11.tex-12" 
(run* (q)
  (exist (x)
    (== x #t)
    (== #t q)))

(list #t))

(test-check "testc11.tex-13" 
(run* (q)
  (exist (x)
    (== x #t)
    (== q #t)))

(list #t))

(test-check "testc11.tex-14"   
(run* (x)
  succeed)

(list `_.0))

(test-check "testc11.tex-15"   
(run* (x)
  (let ((x #f))
    (exist (x)
      (== #t x))))

`(_.0))

(test-check "testc11.tex-16" 
(run* (r)
  (exist (x y)
    (== (cons x (cons y '())) r)))

(list `(_.0 _.1)))

(test-check "testc11.tex-17" 
(run* (s)
  (exist (t u)
    (== (cons t (cons u '())) s)))

(list `(_.0 _.1)))

(test-check "testc11.tex-18" 
(run* (r)
  (exist (x)
    (let ((y x))
      (exist (x)
        (== (cons y (cons x (cons y '()))) r)))))

(list `(_.0 _.1 _.0)))

(test-check "testc11.tex-19" 
(run* (r)
  (exist (x)
    (let ((y x))
      (exist (x)
        (== (cons x (cons y (cons x '()))) r)))))

(list `(_.0 _.1 _.0)))

(test-check "testc11.tex-20" 
(run* (q) 
  (== #f q)
  (== #t q))

`())

(test-check "testc11.tex-21"   
(run* (q) 
  (== #f q)
  (== #f q))

'(#f))

(test-check "testc11.tex-22" 
(run* (q)
  (let ((x q))
    (== #t x)))

(list #t))

(test-check "testc11.tex-23" 
(run* (r)
  (exist (x)
    (== x r)))

(list `_.0))

(test-check "testc11.tex-24" 
(run* (q)
  (exist (x)
    (== #t x)
    (== x q)))

(list #t))

(test-check "testc11.tex-25" 
(run* (q)
  (exist (x)
    (== x q)
    (== #t x)))

(list #t))

(run* (q)
  (exist (x)
    (== #t x)
    (== x q)))


(test-check "testc11.tex-26" 
(run* (q)
  (exist (x)
    (== (eq? x q) q)))


    (list #f))
  

(test-check "testc11.tex-27" 
(run* (q)
  (let ((x q))
    (exist (q)
      (== (eq? x q) x))))

(list #f))

(test-check "testc11.tex-28" 
(cond
  (#f #t)
  (#t #f))

#f)

(test-check "testc11.tex-29" 
(cond
  (#f succeed)
  (#t fail))


    fail)
  

    (test-check "testc13.tex-fail1" (run* (q)
  

(conde 
  (fail succeed) 
  (succeed fail)) 


    ) '())
  

    (test-check "testc13.tex-succeed1" (not (null? (run* (q)
  

(conde
  (fail fail)
  (succeed succeed))


    ))) #t)
  

    (test-check "testc13.tex-succeed2" (not (null? (run* (q)
  

(conde
  (succeed succeed)
  (succeed fail))


    ))) #t)
  

(test-check "testc11.tex-30" 
(run* (x)
  (conde
    ((== 'olive x) succeed)
    ((== 'oil x) succeed)))

`(olive oil))

(test-check "testc11.tex-31" 
(run1 (x)
  (conde
    ((== 'olive x) succeed)
    ((== 'oil x) succeed)))

`(olive))

(test-check "testc11.tex-32" 
(run* (x)
  (conde
    ((== 'virgin x) fail)
    ((== 'olive x) succeed)
    (succeed succeed)
    ((== 'oil x) succeed)))

`(olive _.0 oil))

    (test-check "testc13.tex-conde1" (run* (x)
  

(conde
  ((== 'olive x) succeed)
  (succeed succeed)
  ((== 'oil x) succeed))


    ) `(olive _.0 oil))
  

(test-check "testc11.tex-33" 
(run2 (x)
  (conde
    ((== 'extra x) succeed)
    ((== 'virgin x) fail)
    ((== 'olive x) succeed)
    ((== 'oil x) succeed)))

`(extra olive))

(test-check "testc11.tex-34" 
(run* (r)
  (exist (x y)
    (== 'split x)
    (== 'pea y)
    (== (cons x (cons y '())) r)))

(list `(split pea)))

(test-check "testc11.tex-35" 
(run* (r)
  (exist (x y)
    (conde
      ((== 'split x) (== 'pea y))
      ((== 'navy x) (== 'bean y)))
    (== (cons x (cons y '())) r)))

`((split pea) (navy bean)))

(test-check "testc11.tex-36" 
(run* (r)
  (exist (x y)
    (conde
      ((== 'split x) (== 'pea y))
      ((== 'navy x) (== 'bean y)))
    (== (cons x (cons y (cons 'soup '()))) r)))

`((split pea soup) (navy bean soup)))

(define teacupo
  (lambda (x)
    (conde
      ((== 'tea x) succeed)
      ((== 'cup x) succeed))))


(test-check "testc11.tex-37"   
(run* (x)
  (teacupo x))

`(tea cup))

(test-check "testc11.tex-38"   
(run* (r)
  (exist (x y)
    (conde
      ((teacupo x) (== #t y) succeed)
      ((== #f x) (== #t y)))
    (== (cons x (cons y '())) r)))

`((#f #t) (tea #t) (cup #t)))

(test-check "testc11.tex-39"   
(run* (r)                                                                      
  (exist (x y z)                                                              
    (conde                                                                    
      ((== y x) (exist (x) (== z x)))                                         
      ((exist (x) (== y x)) (== z x)))                                        
    (== (cons y (cons z '())) r)))

`((_.0 _.1) (_.0 _.1)))

(test-check "testc11.tex-40"   
(run* (r)                                                                      
  (exist (x y z)                                                              
    (conde                                                                    
      ((== y x) (exist (x) (== z x)))                                         
      ((exist (x) (== y x)) (== z x)))
    (== #f x)
    (== (cons y (cons z '())) r)))

`((#f _.0) (_.0 #f)))

(test-check "testc11.tex-41" 
(run* (q)
  (let ((a (== #t q))
        (b (== #f q)))
   b))

'(#f))

(test-check "testc11.tex-42" 
(run* (q)
  (let ((a (== #t q))
        (b (exist (x)
             (== x q)
             (== #f x)))
        (c (conde
             ((== #t q) succeed)
             (succeed (== #f q)))))
   b))

'(#f))

(test-check "testc12.tex-1" 
(let ((x (lambda (a) a))
      (y 'c))
  (x y))

'c)

(test-check "testc12.tex-2" 
(run* (r)
  (exist (y x)
    (== `(,x ,y) r)))

(list `(_.0 _.1)))

(test-check "testc12.tex-3" 
(run* (r)
  (exist (v w)
    (== (let ((x v) (y w)) `(,x ,y)) r)))

`((_.0 _.1)))

(test-check "testc12.tex-4"   
(car `(grape raisin pear))

`grape)

(test-check "testc12.tex-5" 
(car `(a c o r n))

'a)


(define caro
  (lambda (p a)
    (exist (d)
      (== (cons a d) p))))


(test-check "testc12.tex-6" 
(run* (r)
  (caro `(a c o r n) r))

(list 'a))

(test-check "testc12.tex-7" 'a

          (car 
        
`(a c o r n)

          ))
        

(test-check "testc12.tex-8"   
(run* (q) 
  (caro `(a c o r n) 'a)
  (== #t q))

(list #t))

(test-check "testc12.tex-9" 'a

          (car
        
`(a c o r n)

          ))
        

(test-check "testc12.tex-10" 
(run* (r)
  (exist (x y)
    (caro `(,r ,y) x)
    (== 'pear x)))

(list 'pear))


(test-check "testc12.tex-11"   
(cons 
  (car `(grape raisin pear))
  (car `((a) (b) (c))))

`(grape a))

(test-check "testc12.tex-12" 
(run* (r)
  (exist (x y)
    (caro `(grape raisin pear) x)
    (caro `((a) (b) (c)) y)
    (== (cons x y) r)))

(list `(grape a)))

(test-check "testc12.tex-13"   
(cdr `(grape raisin pear))

`(raisin pear))

(test-check "testc12.tex-14"   
(car (cdr `(a c o r n)))

'c)


(define cdro
  (lambda (p d)
    (exist (a)
      (== (cons a d) p))))


(test-check "testc12.tex-15" 
(run* (r)
  (exist (v)
    (cdro `(a c o r n) v)
    (caro v r)))

(list 'c))


(test-check "testc12.tex-16"   
(cons 
  (cdr `(grape raisin pear))
  (car `((a) (b) (c))))

`((raisin pear) a))

(test-check "testc12.tex-17" 
(run* (r)
  (exist (x y)
    (cdro `(grape raisin pear) x)
    (caro `((a) (b) (c)) y)
    (== (cons x y) r)))

(list `((raisin pear) a)))

(test-check "testc12.tex-18"   
(run* (q) 
  (cdro '(a c o r n) '(c o r n)) 
  (== #t q))

(list #t))

(test-check "testc12.tex-19" `(c o r n)

   (cdr 
 
'(a c o r n)

   ))
 

(test-check "testc12.tex-20" 
(run* (x)
  (cdro '(c o r n) `(,x r n)))

(list 'o))

(test-check "testc12.tex-21" `(o r n)

   (cdr 
 
`(c o r n)

   ))
 

(test-check "testc12.tex-22" 
(run* (l)
  (exist (x) 
    (cdro l '(c o r n))
    (caro l x)
    (== 'a x)))

(list `(a c o r n)))


(define conso
  (lambda (a d p)
    (== (cons a d) p)))


(test-check "testc12.tex-23" 
(run* (l)
  (conso '(a b c) '(d e) l))

(list `((a b c) d e)))

(test-check "testc12.tex-24" 
(run* (x)
  (conso x '(a b c) '(d a b c)))

(list 'd))

(test-check "testc12.tex-25" (cons 'd '(a b c))
`(d a b c))

(test-check "testc12.tex-26" 
(run* (r)
  (exist (x y z)
    (== `(e a d ,x) r)
    (conso y `(a ,z c) r)))

(list `(e a d c)))

(test-check "testc12.tex-27" 
(run* (x)
  (conso x `(a ,x c) `(d a ,x c)))

(list 'd))

         (define x 'd)
       

(test-check "testc12.tex-28" (cons x `(a ,x c))
`(d a ,x c))

(test-check "testc12.tex-29" 
(run* (l)
  (exist (x)
    (== `(d a ,x c) l)
    (conso x `(a ,x c) l)))

(list `(d a d c)))

(test-check "testc12.tex-30" 
(run* (l)
  (exist (x)
    (conso x `(a ,x c) l)
    (== `(d a ,x c) l)))

(list `(d a d c)))


(test-check "testc12.tex-31" 
(run* (l)
  (exist (d x y w s)
    (conso w '(a n s) s)
    (cdro l s)
    (caro l x)
    (== 'b x)
    (cdro l d)
    (caro d y)
    (== 'e y)))

(list `(b e a n s)))

(test-check "testc12.tex-32"   
(null? `(grape raisin pear))

#f)

(test-check "testc12.tex-33"   
(null? '())

#t)


(define nullo
  (lambda (x)
    (== '() x)))


(test-check "testc12.tex-34" 
(run* (q)
  (nullo `(grape raisin pear))
  (== #t q))

`())

(test-check "testc12.tex-35" 
(run* (q)
  (nullo '())
  (== #t q))

`(#t))

(test-check "testc12.tex-36"   
(run* (x) 
  (nullo x))

`(()))


(test-check "testc12.tex-37" 
(eq? 'pear 'plum)

#f)

(test-check "testc12.tex-38"   
(eq? 'plum 'plum)

#t)


(define eqo
  (lambda (x y)
    (== x y)))


(test-check "testc12.tex-39" 
(run* (q)
  (eqo 'pear 'plum)
  (== #t q))

`())

(test-check "testc12.tex-40" 
(run* (q)
  (eqo 'plum 'plum)
  (== #t q))

`(#t))


(test-check "testc12.tex-41"   
(pair? `((split) . pea))

#t)

(test-check "testc12.tex-42"   
(pair? '())

#f)

(test-check "testc12.tex-43" 
(car `(pear))

`pear)

(test-check "testc12.tex-44" 
(cdr `(pear))

`())

(test-check "testc12.tex-45"   
(cons `(split) 'pea)

`((split) . pea))

(test-check "testc12.tex-46"   
(run* (r) 
  (exist (x y)
    (== (cons x (cons y 'salad)) r)))

(list `(_.0 _.1 . salad)))

(define pairo
  (lambda (p)
    (exist (a d)
      (conso a d p))))


(test-check "testc12.tex-47" 
(run* (q)
  (pairo (cons q q))
  (== #t q))

`(#t))

(test-check "testc12.tex-48" 
(run* (q)
  (pairo '())
  (== #t q))

`())

(test-check "testc12.tex-49" 
(run* (q)
  (pairo 'pair)
  (== #t q))

`())

(test-check "testc12.tex-50"   
(run* (x) 
  (pairo x))

(list `(_.0 . _.1)))

(test-check "testc12.tex-51"   
(run* (r) 
  (pairo (cons r 'pear)))

(list `_.0))

(define new-list?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((pair? l) (new-list? (cdr l)))
      (else #f))))


(test-check "testc14.tex-1"   
(new-list? `((a) (a b) c))

#t)

(test-check "testc14.tex-2"   
(new-list? `())

#t)

(test-check "testc14.tex-3"   
(new-list? 's)

#f)

(test-check "testc14.tex-4"   
(new-list? `(d a t e . s))

#f)

(define listo
  (lambda (l)
    (conde
      ((nullo l) succeed)
      ((pairo l)
       (exist (d)
         (cdro l d)
         (listo d)))
      ((== #f #f) fail))))


(define listo
  (lambda (l)
    (conde
      ((nullo l) succeed)
      ((pairo l)
       (exist (d)
         (cdro l d)
         (listo d)))
      (succeed fail))))


(define listo
  (lambda (l)
    (conde
      ((nullo l) succeed)
      ((pairo l)
       (exist (d)
         (cdro l d)
         (listo d))))))


(test-check "testc14.tex-5" 
(run* (x)
  (listo `(a b ,x d)))

(list `_.0))

(test-check "testc14.tex-6" 
(run1 (x)
  (listo `(a b c . ,x)))

(list `()))
(define e (make-engine (lambda () 
(run* (x)
  (listo `(a b c . ,x)))
)))
(printf "Testing testc14.tex-7  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc14.tex-7 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))


(test-check "testc14.tex-8" 
(run5 (x)
  (listo `(a b c . ,x)))


`(()
 (_.0)
 (_.0 _.1)
 (_.0 _.1 _.2)
 (_.0 _.1 _.2 _.3))
)

(define lol?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((new-list? (car l)) (lol? (cdr l)))
      (else #f))))


(define lolo
  (lambda (l)
    (conde
      ((nullo l) succeed)
      ((exist (a) 
         (caro l a)
         (listo a))
       (exist (d)
         (cdro l d)
         (lolo d))))))


(test-check "testc14.tex-9" 
(run1 (l)                                                                       
  (lolo l))                                                                     

`(()))

(test-check "testc14.tex-10" 
(run* (q)
  (exist (x y) 
    (lolo `((a b) (,x c) (d ,y)))
    (== #t q)))

(list #t))

(test-check "testc14.tex-11" 
(run1 (q)
  (exist (x)
    (lolo `((a b) . ,x))
    (== #t q)))

(list #t))

(test-check "testc14.tex-12" 
(run1 (x)
  (lolo `((a b) (c d) . ,x)))

`(()))

(test-check "testc14.tex-13" 
(run5 (x)
  (lolo `((a b) (c d) . ,x)))


`(()
 (()) 
 ((_.0))
 (() ())
 ((_.0 _.1)))
)

(define twinso
  (lambda (s)
    (exist (x y)
      (conso x y s)
      (conso x '() y))))


(test-check "testc14.tex-14" 
(run* (q)
  (twinso '(tofu tofu))
  (== #t q))

(list #t))

(test-check "testc14.tex-15" 
(run* (z) 
  (twinso `(,z tofu)))

(list `tofu))

(define loto
  (lambda (l)
    (conde
      ((nullo l) succeed)
      ((exist (a)
         (caro l a)
         (twinso a))
       (exist (d)
         (cdro l d)
         (loto d))))))


(test-check "testc14.tex-16" 
(run1 (z)
  (loto `((g g) . ,z)))

(list `()))

(test-check "testc14.tex-17" 
(run5 (z)
  (loto `((g g) . ,z)))


'(()
 ((_.0 _.0))
 ((_.0 _.0) (_.1 _.1))
 ((_.0 _.0) (_.1 _.1) (_.2 _.2))
 ((_.0 _.0) (_.1 _.1) (_.2 _.2) (_.3 _.3)))
)

(test-check "testc14.tex-18" 
(run5 (r)
  (exist (w x y z)
    (loto `((g g) (e ,w) (,x ,y) . ,z))
    (== `(,w (,x ,y) ,z) r)))


'((e (_.0 _.0) ())
 (e (_.0 _.0) ((_.1 _.1)))
 (e (_.0 _.0) ((_.1 _.1) (_.2 _.2)))
 (e (_.0 _.0) ((_.1 _.1) (_.2 _.2) (_.3 _.3)))
 (e (_.0 _.0) ((_.1 _.1) (_.2 _.2) (_.3 _.3) (_.4 _.4))))
)

(test-check "testc14.tex-19" 
(run3 (out)
  (exist (w x y z)
    (== `((g g) (e ,w) (,x ,y) . ,z) out)
    (loto out)))


`(((g g) (e e) (_.0 _.0))
 ((g g) (e e) (_.0 _.0) (_.1 _.1))
 ((g g) (e e) (_.0 _.0) (_.1 _.1) (_.2 _.2)))
)

(define listofo
  (lambda (predo l)
    (conde
      ((nullo l) succeed)
      ((exist (a)
         (caro l a)
         (predo a))
       (exist (d)
         (cdro l d)
         (listofo predo d))))))


(test-check "testc14.tex-20" 
(run3 (out)
  (exist (w x y z)
    (== `((g g) (e ,w) (,x ,y) . ,z) out)
    (listofo twinso out)))


`(((g g) (e e) (_.0 _.0))
 ((g g) (e e) (_.0 _.0) (_.1 _.1))
 ((g g) (e e) (_.0 _.0) (_.1 _.1) (_.2 _.2)))
)

(define loto
  (lambda (l)
    (listofo twinso l)))


(define member?
  (lambda (x l)
    (cond
      ((null? l) #f)
      ((eq? (car l) x) #t)
      (else (member? x (cdr l))))))


(test-check "testc14.tex-21" 
(member? 'olive `(virgin olive oil))

#t)

(define membero
  (lambda (x l)
    (conde
      ((nullo l) fail)
      ((exist (a)
         (caro l a)
         (== a x))
       succeed)
      (succeed
        (exist (d)
          (cdro l d)
          (membero x d))))))


(test-check "testc14.tex-22"   
(run* (q) 
  (membero 'olive `(virgin olive oil))
  (== #t q))

(list #t))

(test-check "testc14.tex-23"   
(run1 (y) 
  (membero y `(hummus with pita)))

(list `hummus))

(test-check "testc14.tex-24"   
(run1 (y) 
  (membero y `(with pita)))

(list `with))

(test-check "testc14.tex-25"   
(run1 (y) 
  (membero y `(pita)))

(list `pita))

(test-check "testc14.tex-26"   
(run* (y) 
  (membero y `()))

`())

(test-check "testc14.tex-27"   
(run* (y) 
  (membero y `(hummus with pita)))

`(hummus with pita))

(test-check "testc14.tex-28"   
(run* (x) 
  (membero 'e `(pasta ,x fagioli)))

(list `e))

(test-check "testc14.tex-29"   
(run1 (x) 
  (membero 'e `(pasta e ,x fagioli)))

(list `_.0))

(test-check "testc14.tex-30"   
(run1 (x) 
  (membero 'e `(pasta ,x e fagioli)))

(list `e))

(test-check "testc14.tex-31"   
(run* (r)
  (exist (x y)
    (membero 'e `(pasta ,x fagioli ,y))
    (== `(,x ,y) r)))

`((e _.0) (_.0 e)))

(test-check "testc14.tex-32"   
(run1 (l) 
  (membero 'tofu l))

`((tofu . _.0)))
(define e (make-engine (lambda ()   
(run* (l) 
  (membero 'tofu l))
)))
(printf "Testing testc14.tex-33  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc14.tex-33 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))


(test-check "testc14.tex-34" 
(run5 (l)
  (membero 'tofu l))


`((tofu . _.0)
 (_.0 tofu . _.1)
 (_.0 _.1 tofu . _.2)
 (_.0 _.1 _.2 tofu . _.3)
 (_.0 _.1 _.2 _.3 tofu . _.4))
)

(define pmembero
  (lambda (x l)
    (conde
      ((caro l x) (cdro l '()))
      ((exist (d)
         (cdro l d)
         (pmembero x d))))))


(test-check "testc14.tex-35"   
(run5 (l)
  (pmembero 'tofu l))


`((tofu)
 (_.0 tofu)
 (_.0 _.1 tofu)
 (_.0 _.1 _.2 tofu)
 (_.0 _.1 _.2 _.3 tofu))
)

(test-check "testc14.tex-36"   
(run* (q)
  (pmembero 'tofu `(a b tofu d tofu))
  (== #t q))

`(#t))

(define pmembero
  (lambda (x l)
    (conde
      ((caro l x)
       (conde
         ((cdro l '()))
         (succeed)))
      ((exist (d)
         (cdro l d)
         (pmembero x d))))))


(test-check "testc14.tex-37"   
(run* (q)
  (pmembero 'tofu `(a b tofu d tofu))
  (== #t q))

`(#t #t #t))

(define pmembero
  (lambda (x l)
    (conde
      ((caro l x)
       (conde
         ((cdro l '()))
         ((exist (a d)
            (cdro l `(,a . ,d))))))
      ((exist (d)
         (cdro l d)
         (pmembero x d))))))


(test-check "testc14.tex-38"   
(run* (q)
  (pmembero 'tofu `(a b tofu d tofu))
  (== #t q))

`(#t #t))

(test-check "testc14.tex-39" 
(run12 (l)
  (pmembero 'tofu l))


`((tofu)
 (tofu _.0 . _.1)
 (_.0 tofu)
 (_.0 tofu _.1 . _.2)
 (_.0 _.1 tofu)
 (_.0 _.1 tofu _.2 . _.3)
 (_.0 _.1 _.2 tofu)
 (_.0 _.1 _.2 tofu _.3 . _.4)
 (_.0 _.1 _.2 _.3 tofu)
 (_.0 _.1 _.2  _.3 tofu _.4 . _.5 )
 (_.0 _.1 _.2 _.3 _.4 tofu)
 (_.0 _.1 _.2 _.3 _.4 tofu _.5 . _.6))
)

(define mem
  (lambda (x l)
    (cond
      ((null? l) #f)
      ((eq? (car l) x) l)
      (else (mem x (cdr l))))))    


(test-check "testc15.tex-1"   
(mem 'tofu `(a b tofu d peas e))

`(tofu d peas e))

(test-check "testc15.tex-2"   
(mem 'tofu `(a b peas d peas e))

#f)

(test-check "testc15.tex-3"   
(run* (out) 
  (== (mem 'tofu `(a b tofu d peas e)) out))

(list `(tofu d peas e)))

(test-check "testc15.tex-4"   
(mem 'peas 
  (mem 'tofu `(a b tofu d peas e)))

`(peas e))

(test-check "testc15.tex-5"   
(mem 'tofu 
  (mem 'tofu `(a b tofu d tofu e)))

`(tofu d tofu e))

(test-check "testc15.tex-6"   
(mem 'tofu
  (cdr (mem 'tofu `(a b tofu d tofu e))))

`(tofu e))

(define memo
  (lambda (x l out)
    (conde
      ((nullo l) fail)
      ((exist (a)
         (caro l a)
         (== a x))
       (== l out))
      (succeed
        (exist (d)
          (cdro l d)
          (memo x d out))))))


(define memo
  (lambda (x l out)
    (conde
      ((exist (a)
         (caro l a)
         (== a x))
       (== l out))
      ((exist (d)
         (cdro l d)
         (memo x d out))))))


(define memo
  (lambda (x l out)
    (conde
      ((caro l x) (== l out))
      ((exist (d)
         (cdro l d)
         (memo x d out))))))


(test-check "testc15.tex-7"   
(run1 (out) 
  (memo 'tofu `(a b tofu d tofu e) out))

`((tofu d tofu e)))

(test-check "testc15.tex-8"   
(run1 (out) 
  (exist (x)
    (memo 'tofu `(a b ,x d tofu e) out)))

`((tofu d tofu e)))

(test-check "testc15.tex-9"   
(run* (r)
  (memo r
    `(a b tofu d tofu e)
    `(tofu d tofu e)))

(list `tofu))

(test-check "testc15.tex-10" 
(run* (q)
  (memo 'tofu '(tofu e) '(tofu e))
  (== #t q))

(list #t))

(test-check "testc15.tex-11" 
(run* (q)
  (memo 'tofu '(tofu e) '(tofu))
  (== #t q))

`())

(test-check "testc15.tex-12" 
(run* (x)
  (memo 'tofu '(tofu e) `(,x e)))

(list `tofu))

(test-check "testc15.tex-13" 
(run* (x)
  (memo 'tofu '(tofu e) `(peas ,x)))

`())

(test-check "testc15.tex-14"   
(run* (out) 
  (exist (x) 
    (memo 'tofu `(a b ,x d tofu e) out)))

`((tofu d tofu e) (tofu e)))

(test-check "testc15.tex-15" 
(run12 (z)
  (exist (u)
    (memo 'tofu `(a b tofu d tofu e . ,z) u)))


`(_.0
 _.0
 (tofu . _.0)
 (_.0 tofu . _.1)
 (_.0 _.1 tofu . _.2)
 (_.0 _.1 _.2 tofu . _.3)
 (_.0 _.1 _.2 _.3 tofu . _.4)
 (_.0 _.1 _.2 _.3 _.4 tofu . _.5)
 (_.0 _.1 _.2 _.3 _.4 _.5 tofu . _.6)
 (_.0 _.1 _.2 _.3 _.4 _.5 _.6 tofu . _.7)
 (_.0 _.1 _.2 _.3 _.4 _.5 _.6 _.7 tofu . _.8)
 (_.0 _.1 _.2 _.3 _.4 _.5 _.6 _.7 _.8 tofu . _.9))
)

(define rember
  (lambda (x l)
    (cond
      ((null? l) '())
      ((eq? (car l) x) (cdr l))
      (else 
        (cons (car l)
          (rember x (cdr l)))))))


(test-check "testc15.tex-16"   
(rember 'peas '(a b peas d peas e))

`(a b d peas e))

(define rembero
  (lambda (x l out)
    (conde
      ((nullo l) (== '() out))
      ((exist (a)
         (caro l a)
         (== a x))
       (cdro l out))
      ((exist (res)
         (exist (d)
           (cdro l d)
           (rembero x d res))
         (exist (a)
           (caro l a)
           (conso a res out)))))))


(define rembero
  (lambda (x l out)
    (conde
      ((nullo l) (== '() out))
      ((caro l x) (cdro l out))
      ((exist (res)
         (exist (d)
           (cdro l d)
           (rembero x d res))
         (exist (a)
           (caro l a)
           (conso a res out)))))))


(exist (res)
  (exist (d)
    (cdro l d)
    (rembero x d res))
  (exist (a)
    (caro l a)
    (conso a res out)))


(exist (a d res)
  (cdro l d)
  (rembero x d res)
  (caro l a)
  (conso a res out))


(define rembero
  (lambda (x l out)
    (conde
      ((nullo l) (== '() out))
      ((caro l x) (cdro l out))
      (


(exist (a d res)
  (conso a d l)
  (rembero x d res)
  (conso a res out))


  ))))


(test-check "testc15.tex-17" 
(run1 (out)
  (exist (y)
    (rembero 'peas `(a b ,y d peas e) out)))

`((a b d peas e)))

(test-check "testc15.tex-18" 
(run* (out)
  (exist (y z)
    (rembero y `(a b ,y d ,z e) out)))


`((b a d _.0 e)
 (a b d _.0 e)
 (a b d _.0 e)
 (a b d _.0 e)
 (a b _.0 d e)
 (a b e d _.0)
 (a b _.0 d _.1 e))
)

(test-check "testc15.tex-19" 
(run* (r) 
  (exist (y z) 
    (rembero y `(,y d ,z e) `(,y d e))
    (== `(,y ,z) r)))


`((d d)
 (d d)
 (_.0 _.0)
 (e e))
)

(test-check "testc15.tex-20" 
(run13 (w)
  (exist (y z out)
    (rembero y `(a b ,y d ,z . ,w) out)))


`(_.0 
 _.0
 _.0
 _.0
 _.0
 ()
 (_.0 . _.1)
 (_.0)
 (_.0 _.1 . _.2)
 (_.0 _.1)
 (_.0 _.1 _.2 . _.3)
 (_.0 _.1 _.2)
 (_.0 _.1 _.2 _.3 . _.4))
)

(define surpriseo
  (lambda (s)
    (rembero s '(a b c) '(a b c))))


(test-check "testc15.tex-21" 
(run* (r)
  (== 'd r)
  (surpriseo r))

(list 'd))

(test-check "testc15.tex-22" 
(run* (r)
  (surpriseo r))

`(_.0))

(test-check "testc15.tex-23" 
(run* (r)
  (== 'b r)
  (surpriseo r))

`(b))

(define new-append
  (lambda (l s)
    (cond
      ((null? l) s)
      (else (cons (car l)
              (new-append (cdr l) s))))))


(test-check "testc16.tex-1" 
(new-append `(a b c) `(d e))

`(a b c d e))

(test-check "testc16.tex-2"   
(new-append '(a b c) '())

`(a b c))

(test-check "testc16.tex-3"   
(new-append '() '(d e))

`(d e))

(test-check "testc16.tex-4"   
(new-append '(d e) 'a)

`(d e . a))

(define appendo
  (lambda (l s out)
    (conde
      ((nullo l) (== s out))
      ((exist (a d res)
         (caro l a)
         (cdro l d)   
         (appendo d s res)
         (conso a res out))))))


(test-check "testc16.tex-5" 
(run* (x)
  (appendo
    '(cake)
    '(tastes yummy)
    x))

(list `(cake tastes yummy)))

(test-check "testc16.tex-6" 
(run* (x)
  (exist (y)
    (appendo
      `(cake with ice ,y)
      '(tastes yummy)
      x)))

(list `(cake with ice _.0 tastes yummy)))

(test-check "testc16.tex-7" 
(run* (x)
  (exist (y)
    (appendo
      '(cake with ice cream)
      y
      x)))

(list `(cake with ice cream . _.0)))

(test-check "testc16.tex-8" 
(run1 (x)
  (exist (y)
    (appendo `(cake with ice . ,y) '(d t) x)))

(list `(cake with ice d t)))

(test-check "testc16.tex-9" 
(run1 (y)
  (exist (x)
    (appendo `(cake with ice . ,y) '(d t) x)))


  (list '()))


(define appendo
  (lambda (l s out)
    (conde
      ((nullo l) (== s out))
      ((exist (a d res)
         (conso a d l)
         (appendo d s res)
         (conso a res out))))))


(test-check "testc16.tex-10" 
(run5 (x)
  (exist (y)
    (appendo `(cake with ice . ,y) '(d t) x)))


`((cake with ice d t)
 (cake with ice _.0 d t)
 (cake with ice _.0 _.1 d t)
 (cake with ice _.0 _.1 _.2 d t)
 (cake with ice _.0 _.1 _.2 _.3 d t))
)

(test-check "testc16.tex-11" 
(run5 (y)
  (exist (x)
    (appendo `(cake with ice . ,y) '(d t) x)))


`(()
 (_.0)
 (_.0 _.1)
 (_.0 _.1 _.2)
 (_.0 _.1 _.2 _.3))
)

 (define y 

`(_.0 _.1 _.2)

 ) 


(test-check "testc16.tex-12" 
`(cake with ice . ,y)


`(cake with ice . (_.0 _.1 _.2))
)

(test-check "testc16.tex-13" 
(run5 (x)
  (exist (y)
    (appendo
      `(cake with ice . ,y)
      `(d t . ,y)
      x)))


`((cake with ice d t)
 (cake with ice _.0 d t _.0)
 (cake with ice _.0 _.1 d t _.0 _.1)
 (cake with ice _.0 _.1 _.2 d t _.0 _.1 _.2)
 (cake with ice _.0 _.1 _.2 _.3 d t _.0 _.1 _.2 _.3))
)

(test-check "testc16.tex-14" 
(run* (x)
  (exist (z)
    (appendo
      `(cake with ice cream)
      `(d t . ,z)
      x)))


`((cake with ice cream d t . _.0))
)

(test-check "testc16.tex-15" 
(run6 (x)
  (exist (y)
    (appendo x y `(cake with ice d t))))


`(()
 (cake)
 (cake with)
 (cake with ice)
 (cake with ice d)
 (cake with ice d t))
)

(test-check "testc16.tex-16" 
(run6 (y)
  (exist (x)
    (appendo x y `(cake with ice d t))))


`((cake with ice d t)
 (with ice d t)
 (ice d t)
 (d t)
 (t)
 ())
)

  (define appendxyquestion
    (lambda ()


(run6 (r)
  (exist (x y)
    (appendo x y `(cake with ice d t))
    (== `(,x ,y) r)))


  ))
(define appendxyanswer


`((() (cake with ice d t))
 ((cake) (with ice d t))
 ((cake with) (ice d t))
 ((cake with ice) (d t))
 ((cake with ice d) (t))
 ((cake with ice d t) ()))


  )
  (test-check "appendxy"
    (appendxyquestion)
    appendxyanswer)

(define e (make-engine (lambda () 
(run7 (r)
  (exist (x y)
    (appendo x y `(cake with ice d t))
    (== `(,x ,y) r)))
)))
(printf "Testing testc16.tex-17  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc16.tex-17 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))


(define appendo
  (lambda (l s out)
    (conde
      ((nullo l) (== s out))
      ((exist (a d res)
         (conso a d l)
         (conso a res out)
         (appendo d s res))))))


(test-check "testc16.tex-18" 
(run7 (r)
  (exist (x y)
    (appendo x y `(cake with ice d t))
    (== `(,x ,y) r)))


  appendxyanswer)


(test-check "testc16.tex-19" 
(run7 (x)
  (exist (y z)
    (appendo x y z)))


`(()
 (_.0)
 (_.0 _.1)
 (_.0 _.1 _.2)
 (_.0 _.1 _.2 _.3)
 (_.0 _.1 _.2 _.3 _.4)
 (_.0 _.1 _.2 _.3 _.4 _.5))
)

(test-check "testc16.tex-20" 
(run7 (y)
  (exist (x z)
    (appendo x y z)))


`(_.0 
 _.0 
 _.0 
 _.0
 _.0 
 _.0  
 _.0)
)

(test-check "testc16.tex-21" 
(run7 (z)
  (exist (x y)
    (appendo x y z)))


`(_.0
 (_.0 . _.1)
 (_.0 _.1 . _.2)
 (_.0 _.1 _.2 . _.3)
 (_.0 _.1 _.2 _.3 . _.4)
 (_.0 _.1 _.2 _.3 _.4 . _.5)
 (_.0 _.1 _.2 _.3 _.4 _.5 . _.6))
)

(test-check "testc16.tex-22" 
(run7 (r)
  (exist (x y z)
    (appendo x y z)
    (== `(,x ,y ,z) r)))


`((() _.0 _.0)
 ((_.0) _.1 (_.0 . _.1))
 ((_.0 _.1) _.2 (_.0 _.1 . _.2))
 ((_.0 _.1 _.2) _.3 (_.0 _.1 _.2 . _.3))
 ((_.0 _.1 _.2 _.3) _.4 (_.0 _.1 _.2 _.3 . _.4))
 ((_.0 _.1 _.2 _.3 _.4) _.5 (_.0 _.1 _.2 _.3 _.4 . _.5))
 ((_.0 _.1 _.2 _.3 _.4 _.5) _.6 (_.0 _.1 _.2 _.3 _.4 _.5 . _.6)))
)

(define swappendo
  (lambda (l s out)
    (conde
      ((exist (a d res)
         (conso a d l)
         (conso a res out)
         (swappendo d s res)))
      ((nullo l) (== s out)))))


(test-check "testc16.tex-23" 
(run7 (r)
  (exist (x y z)
    (swappendo x y z)
    (== `(,x ,y ,z) r)))


`((() _.0 _.0)
 ((_.0) _.1 (_.0 . _.1))
 ((_.0 _.1) _.2 (_.0 _.1 . _.2))
 ((_.0 _.1 _.2) _.3 (_.0 _.1 _.2 . _.3))
 ((_.0 _.1 _.2 _.3) _.4 (_.0 _.1 _.2 _.3 . _.4))
 ((_.0 _.1 _.2 _.3 _.4) _.5 (_.0 _.1 _.2 _.3 _.4 . _.5))
 ((_.0 _.1 _.2 _.3 _.4 _.5) _.6 (_.0 _.1 _.2 _.3 _.4 _.5 . _.6)))
)

(define unwrap
  (lambda (x)
    (cond
      ((pair? x) (unwrap (car x)))
      (else x))))


(test-check "testc16.tex-24" 
(unwrap '((((pizza)))))

`pizza)

(test-check "testc16.tex-25" 
(unwrap '((((pizza pie) with)) extra cheese))

`pizza)

(define unwrapo
  (lambda (x out)
    (conde
      ((pairo x)
       (exist (a)
         (caro x a)
         (unwrapo a out)))
      ((== x out)))))


(test-check "testc16.tex-26" 
(run* (x)
  (unwrapo '(((pizza))) x))


`((((pizza)))
 ((pizza))
 (pizza)
 pizza)
  )

(test-check "testc16.tex-27" 
(run1 (x)
  (unwrapo x 'pizza))


`(pizza)
)

(test-check "testc16.tex-28" 
(run1 (x)
  (unwrapo `((,x)) 'pizza))


`(pizza)
)

(test-check "testc16.tex-29" 
(run5 (x)
  (unwrapo x 'pizza))


`(pizza
 (pizza . _.0)
 ((pizza . _.0) . _.1)
 (((pizza . _.0) . _.1) . _.2)
 ((((pizza . _.0) . _.1) . _.2) . _.3))
)

(test-check "testc16.tex-30" 
(run5 (x)
  (unwrapo x '((pizza))))


`(((pizza))
 (((pizza)) . _.0)
 ((((pizza)) . _.0) . _.1)
 (((((pizza)) . _.0) . _.1) . _.2)
 ((((((pizza)) . _.0) . _.1) . _.2) . _.3))
)

(test-check "testc16.tex-31" 
(run5 (x)
  (unwrapo `((,x)) 'pizza))


`(pizza
 (pizza . _.0)
 ((pizza . _.0) . _.1)
 (((pizza . _.0) . _.1) . _.2)
 ((((pizza . _.0) . _.1) . _.2) . _.3))
)

(define flatten
  (lambda (s)
    (cond
      ((null? s) '())
      ((pair? s)
       (new-append
         (flatten (car s))
         (flatten (cdr s))))
      (else (cons s '())))))


(test-check "testc16.tex-32" 
(flatten '((a b) c))

`(a b c))

(define flatteno
  (lambda (s out)
    (conde
      ((nullo s) (== '() out))
      ((pairo s)
       (exist (a d res-a res-d)
         (conso a d s)
         (flatteno a res-a)
         (flatteno d res-d)
         (appendo res-a res-d out)))
      ((conso s '() out)))))


(test-check "testc16.tex-33" 
(run10 (x)
  (flatteno '((a b) c) x))


`((((a b) c))
 ((a b) (c))
 ((a b) c)
 (a (b) (c))
 ((a b) c ())
 (a (b) c)
 (a (b) c ())
 (a b (c))
 (a b () (c))
 (a b c))
)

(test-check "testc16.tex-34" 
(run10 (x)
  (flatteno '(a (b c)) x))


`(((a (b c)))
 (a ((b c)))
 (a (b c))
 (a (b c) ())
 (a b (c))
 (a b (c) ())
 (a b c)
 (a b c ())
 (a b c ())
 (a b c () ()))
)

(test-check "testc16.tex-35" 
(run* (x)
  (flatteno '(a) x))


`(((a))
 (a)
 (a ()))
)

(test-check "testc16.tex-36" 
(run* (x)
  (flatteno '((a)) x))


`((((a)))
 ((a))
 ((a) ())
 (a)
 (a ())
 (a ())
 (a () ()))
)

(test-check "testc16.tex-37" 
(run* (x)
  (flatteno '(((a))) x))


`(((((a))))
 (((a)))
 (((a)) ())
 ((a))
 ((a) ())
 ((a) ())
 ((a) () ())
 (a)
 (a ())
 (a ())
 (a () ())
 (a ())
 (a () ())
 (a () ())
 (a () () ()))
)

  (define flattenogrumblequestion
    (lambda ()


(run* (x)
  (flatteno '((a b) c) x))


  ))
(define flattenogrumbleanswer


`((((a b) c))
 ((a b) (c))
 ((a b) c)
 (a (b) (c))
 ((a b) c ())
 (a (b) c)
 (a (b) c ())
 (a b (c))
 (a b () (c))
 (a b c)
 (a b c ())
 (a b () c)
 (a b () c ()))


  )
  (test-check "flattenogrumble"
    (flattenogrumblequestion)
    flattenogrumbleanswer)

(define e (make-engine (lambda () 
(run* (x)
  (flatteno x '(a b c)))
)))
(printf "Testing testc16.tex-38  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc16.tex-38 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))


(test-check "testc16.tex-39" 
(length
  (run* (x)
    (flatteno '((((a (((b))) c))) d) x)))

574)

(define strangeo
  (exist ()
    strangeo))

(define e (make-engine (lambda ()   
(run1 (x)
  strangeo)
)))
(printf "Testing testc17.tex-1  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc17.tex-1 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))


(test-check "testc17.tex-2" 
(run1 (q)
  (conde
    (strangeo)
    (succeed)))

`(_.0))

(define strangero
  (conde 
    (strangero (conde 
                 (strangero) 
                 (succeed)))
    (succeed)))


(test-check "testc17.tex-3" 
(run5 (q) 
  strangero)

`(_.0 _.0 _.0 _.0 _.0))

(define strangesto
  (lambda (x y)
    (conde
      ((strangesto y x) (== #f y))
      ((== #f x)))))


(test-check "testc17.tex-4" 
(run5 (q)
  (exist (x y)
    (strangesto x y)
    (== `(,x ,y) q)))

`((#f _.0) (_.0 #f) (#f #f) (#f #f) (#f #f)))

(define any*
  (lambda (g)
    (conde
      (g)
      ((any* g)))))


(define never (any* fail))

(define e (make-engine (lambda ()   
(run1 (q)
  never 
  (== #t q))
)))
(printf "Testing testc17.tex-5  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc17.tex-5 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))

  
(run1 (q)
  fail
  never)

 
(define always (any* succeed))


(test-check "testc17.tex-6"   
(run1 (q) 
  always 
  (== #t q))

(list #t))
(define e (make-engine (lambda ()   
(run* (q) 
  always 
  (== #t q))
)))
(printf "Testing testc17.tex-7  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc17.tex-7 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))


(test-check "testc17.tex-8"   
(run5 (q) 
  always 
  (== #t q))

`(#t #t #t #t #t))

(test-check "testc17.tex-9"   
(run5 (q) 
  (== #t q) 
  always)

`(#t #t #t #t #t))

(define salo
  (lambda (g)
    (conde
      (succeed)
      (g))))


(test-check "testc17.tex-10"   
(run1 (q)
  (salo always)
  (== #t q))

`(#t))

(test-check "testc17.tex-11" 
(run1 (q)
  (salo never)
  (== #t q))

`(#t))
(define e (make-engine (lambda () 
(run* (q)
  (salo never)
  (== #t q))
)))
(printf "Testing testc17.tex-12  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc17.tex-12 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))

(define e (make-engine (lambda () 
(run1 (q)
  (salo never)
  fail
  (== #t q))
)))
(printf "Testing testc17.tex-13  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc17.tex-13 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))

(define e (make-engine (lambda ()   
(run1 (q) 
  always 
  fail
  (== #t q))
)))
(printf "Testing testc17.tex-14  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc17.tex-14 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))


(test-check "testc17.tex-15"   
(run1 (q)
  (conde
    ((== #f q) always)
    ((== #t q)))
  (== #t q))

`(#t))
(define e (make-engine (lambda () 
(run2 (q)
  (conde
    ((== #f q) always)
    ((== #t q)))
  (== #t q))
)))
(printf "Testing testc17.tex-16  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc17.tex-16 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))


(test-check "testc17.tex-17"   
(run5 (q)
  (conde                                                                  
    ((== #f q) always)                                              
    ((any* (== #t q)))) 
  (== #t q))


`(#t #t #t #t #t)
)

(test-check "testc17.tex-18" 
(run5 (q)                                                                  
  (conde
    (always)
    (never))
  (== #t q))

`(#t #t #t #t #t))

(test-check "testc17.tex-19"   
(run1 (q)                                                                  
  (exist ()                                                                    
    (conde
      ((== #f q))
      ((== #t q)))                    
    always)                                                        
  (== #t q))

`(#t))

(test-check "testc17.tex-20"   
(run5 (q)
  (exist ()
    (conde
      ((== #f q))
      ((== #t q)))                    
    always)                                                        
  (== #t q))

`(#t #t #t #t #t))

(test-check "testc17.tex-21"   
(run5 (q)
  (exist ()
    (conde
      ((== #t q))
      ((== #f q)))
    always)                                           
  (== #t q))

`(#t #t #t #t #t))

(define bit-xoro
  (lambda (x y r)
    (conde
      ((== 0 x) (== 0 y) (== 0 r))
      ((== 0 x) (== 1 y) (== 1 r))
      ((== 1 x) (== 0 y) (== 1 r))
      ((== 1 x) (== 1 y) (== 0 r)))))


(test-check "testc20.tex-1" 
(run* (s)
  (exist (x y)
    (bit-xoro x y 0)
    (== `(,x ,y) s)))  
  

`((0 0)
 (1 1))
)

(test-check "testc20.tex-2" 
(run* (s)
  (exist (x y)
    (bit-xoro x y 1)
    (== `(,x ,y) s)))


`((0 1)
 (1 0))
)

(test-check "testc20.tex-3" 
(run* (s)
  (exist (x y r)
    (bit-xoro x y r)
    (== `(,x ,y ,r) s)))


`((0 0 0) 
 (0 1 1)
 (1 0 1)
 (1 1 0))
)

(define bit-ando
  (lambda (x y r)
    (conde
      ((== 0 x) (== 0 y) (== 0 r))
      ((== 1 x) (== 0 y) (== 0 r))
      ((== 0 x) (== 1 y) (== 0 r))
      ((== 1 x) (== 1 y) (== 1 r)))))


(test-check "testc20.tex-4" 
(run* (s)
  (exist (x y)
    (bit-ando x y 1)
    (== `(,x ,y) s)))  
  

`((1 1))
)

(define half-addero
  (lambda (x y r c)
    (exist ()
      (bit-xoro x y r)
      (bit-ando x y c))))


(test-check "testc20.tex-5" 
(run* (r)
  (half-addero 1 1 r 1))

(list 0))

(test-check "testc20.tex-6" 
(run* (s)
  (exist (x y r c)
    (half-addero x y r c)
    (== `(,x ,y ,r ,c) s)))


`((0 0 0 0)
 (0 1 1 0)
 (1 0 1 0)
 (1 1 0 1))
  )

(define full-addero
  (lambda (b x y r c)
    (exist (w xy wz)
      (half-addero x y w xy)
      (half-addero w b r wz)
      (bit-xoro xy wz c))))


(test-check "testc20.tex-7" 
(run* (s)
  (exist (r c)
    (full-addero 0 1 1 r c)
    (== `(,r ,c) s)))

(list `(0 1)))

(define full-addero
  (lambda (b x y r c)
    (conde
      ((== 0 b) (== 0 x) (== 0 y) (== 0 r) (== 0 c))
      ((== 1 b) (== 0 x) (== 0 y) (== 1 r) (== 0 c))
      ((== 0 b) (== 1 x) (== 0 y) (== 1 r) (== 0 c))
      ((== 1 b) (== 1 x) (== 0 y) (== 0 r) (== 1 c))
      ((== 0 b) (== 0 x) (== 1 y) (== 1 r) (== 0 c))
      ((== 1 b) (== 0 x) (== 1 y) (== 0 r) (== 1 c))
      ((== 0 b) (== 1 x) (== 1 y) (== 0 r) (== 1 c))
      ((== 1 b) (== 1 x) (== 1 y) (== 1 r) (== 1 c)))))


(test-check "testc20.tex-8" 
(run* (s)
  (exist (r c)
    (full-addero 1 1 1 r c)
    (== `(,r ,c) s)))

(list `(1 1)))

(test-check "testc20.tex-9" 
(run* (s)
  (exist (b x y r c)
    (full-addero b x y r c)
    (== `(,b ,x ,y ,r ,c) s)))


`((0 0 0 0 0)
 (1 0 0 1 0)
 (0 1 0 1 0)
 (1 1 0 0 1)
 (0 0 1 1 0)
 (1 0 1 0 1)
 (0 1 1 0 1)
 (1 1 1 1 1))
)


(define build-num
  (lambda (n)
    (cond
      ((zero? n) '())
      ((and (not (zero? n)) (even? n))
       (cons 0
         (build-num (quotient n 2))))
      ((odd? n)
       (cons 1
         (build-num (quotient (- n 1) 2)))))))


(test-check "testc20.tex-10" `(1 0 1)

    (build-num
 
5

    ))
 

(test-check "testc20.tex-11" `(1 1 1)

    (build-num 
 
7

    ))
 
(test-check "nine" (build-num 
9

    )

`(1 0 0 1)

    )

(test-check "six" (build-num 
6

    )

`(0 1 1)

    )

(test-check "nineteen" (build-num 
19

    )

`(1 1 0 0 1)

    )

(test-check "biggie" (build-num 
17290

    )

`(0 1 0 1 0 0 0 1 1 1 0 0 0 0 1)

    )


(test-check "testc20.tex-12" (build-num 0)
`())

(test-check "testc20.tex-13" (build-num 36)
`(0 0 1 0 0 1))

(test-check "testc20.tex-14" (build-num 19)
`(1 1 0 0 1))


(define build-num
  (lambda (n)
    (cond
      ((odd? n)
       (cons 1
         (build-num (quotient (- n 1) 2))))    
      ((and (not (zero? n)) (even? n))
       (cons 0
         (build-num (quotient n 2))))
      ((zero? n) '()))))


(define poso
  (lambda (n)
    (exist (a d)
      (== `(,a . ,d) n))))


(test-check "testc20.tex-15" 
(run* (q)
  (poso '(0 1 1))
  (== #t q))

(list #t))

(test-check "testc20.tex-16" 
(run* (q)
  (poso '(1))
  (== #t q))

(list #t))

(test-check "testc20.tex-17" 
(run* (q)
  (poso '())
  (== #t q))

`())

(test-check "testc20.tex-18" 
(run* (r)
  (poso r))

(list `(_.0 . _.1)))

(define >1o
  (lambda (n)
    (exist (a ad dd)
      (== `(,a ,ad . ,dd) n))))


(test-check "testc20.tex-19" 
(run* (q)
  (>1o '(0 1 1))
  (== #t q))

(list #t))

(test-check "testc20.tex-20" 
(run* (q)
  (>1o '(0 1))
  (== #t q))

`(#t))

(test-check "testc20.tex-21" 
(run* (q)
  (>1o '(1))
  (== #t q))

`())

(test-check "testc20.tex-22" 
(run* (q)
  (>1o '())
  (== #t q))

`())

(test-check "testc20.tex-23" 
(run* (r)
  (>1o r))

(list 
`(_.0 _.1 . _.2)
))


(define addero
  (lambda (d n m r)
    (conde
      ((== 0 d) (== '() m) (== n r))
      ((== 0 d) (== '() n) (== m r)
       (poso m))
      ((== 1 d) (== '() m)
       (addero 0 n '(1) r))
      ((== 1 d) (== '() n) (poso m)
       (addero 0 '(1) m r))
      ((== '(1) n) (== '(1) m)
       (exist (a c)
         (== `(,a ,c) r)
         (full-addero d 1 1 a c)))
      ((== '(1) n) (gen-addero d n m r))
      ((== '(1) m) (>1o n) (>1o r)
       (addero d '(1) n r))
      ((>1o n) (gen-addero d n m r)))))

(define gen-addero
  (lambda (d n m r)
    (exist (a b c e x y z)
      (== `(,a . ,x) n)
      (== `(,b . ,y) m) (poso y)
      (== `(,c . ,z) r) (poso z)
      (full-addero d a b c e)
      (addero e x y z))))


(test-check "testc20.tex-24" 
(run3 (s)
  (exist (x y r)
    (addero 0 x y r)
    (== `(,x ,y ,r) s)))
  

`((_.0 () _.0)
 (() (_.0 . _.1) (_.0 . _.1))
 ((1) (1) (0 1)))
 )

(test-check "testc20.tex-25" 
(run22 (s)
  (exist (x y r)
    (addero 0 x y r)
    (== `(,x ,y ,r) s)))


`((_.0 () _.0)
 (() (_.0 . _.1) (_.0 . _.1))
 ((1) (1) (0 1))
 ((1) (0 _.0 . _.1) (1 _.0 . _.1))
 ((1) (1 1) (0 0 1))
 ((0 _.0 . _.1) (1) (1 _.0 . _.1))
 ((1) (1 0 _.0 . _.1) (0 1 _.0 . _.1))
 ((0 1) (0 1) (0 0 1))
 ((1) (1 1 1) (0 0 0 1))
 ((1 1) (1) (0 0 1))
 ((1) (1 1 0 _.0 . _.1) (0 0 1 _.0 . _.1))
 ((1 1) (0 1) (1 0 1))
 ((1) (1 1 1 1) (0 0 0 0 1))
 ((1 0 _.0 . _.1) (1) (0 1 _.0 . _.1))
 ((1) (1 1 1 0 _.0 . _.1) (0 0 0 1 _.0 . _.1))
 ((1) (1 1 1 1 1) (0 0 0 0 0 1))
 ((1 1 1) (1) (0 0 0 1))
 ((1) (1 1 1 1 0 _.0 . _.1) (0 0 0 0 1 _.0 . _.1))
 ((1) (1 1 1 1 1 1) (0 0 0 0 0 0 1))
 ((0 1) (1 1) (1 0 1))
 ((1 1 0 _.0 . _.1) (1) (0 0 1 _.0 . _.1))
 ((1) (1 1 1 1 1 0 _.0 . _.1) (0 0 0 0 0 1 _.0 . _.1)))
)



(test-check "testc20.tex-26" 
(run* (s)
  (gen-addero 1 '(0 1 1) '(1 1) s))

(list `(0 1 0 1)))

(test-check "testc20.tex-27" 
(run* (s)
  (exist (x y)
    (addero 0 x y '(1 0 1))
    (== `(,x ,y) s)))


`(((1 0 1) ())
 (() (1 0 1))
 ((1) (0 0 1))
 ((0 0 1) (1))
 ((1 1) (0 1))
 ((0 1) (1 1)))
)

(run* (s)
  (exist (x y)
    (addero 0 x y '(1 0 1))
    (== `(,x ,y) s)))


(define pluso
  (lambda (n m k)
    (addero 0 n m k)))


(run* (s)
  (exist (x y)
    (pluso x y '(1 0 1))
    (== `(,x ,y) s)))


(test-check "testc20.tex-28" 
(run* (s)
  (exist (x y)
    (pluso x y '(1 0 1))
    (== `(,x ,y) s)))


`(((1 0 1) ())
 (() (1 0 1))
 ((1) (0 0 1))
 ((0 0 1) (1))
 ((1 1) (0 1))
 ((0 1) (1 1)))
)

(define minuso
  (lambda (n m k)
    (pluso m k n)))


(test-check "testc20.tex-29" 
(run* (q)
  (minuso '(0 0 0 1) '(1 0 1) q))


`((1 1))
)

(test-check "testc20.tex-30" 
(run* (q)
  (minuso '(0 1 1) '(0 1 1) q))


`(())
)

(test-check "testc20.tex-31" 
(run* (q)
  (minuso '(0 1 1) '(0 0 0 1) q))


`()
)


(define *o
  (lambda (n m p)
    (conde
      ((== '() n) (== '() p))
      ((poso n) (== '() m) (== '() p))  
      ((== '(1) n) (poso m) (== m p))   
      ((>1o n) (== '(1) m) (== n p))
      ((exist (x z)
         (== `(0 . ,x) n) (poso x)
         (== `(0 . ,z) p) (poso z)
         (>1o m)
         (*o x m z)))
      ((exist (x y)
         (== `(1 . ,x) n) (poso x)
         (== `(0 . ,y) m) (poso y)
         (*o m n p)))
      ((exist (x y)
         (== `(1 . ,x) n) (poso x)      
         (== `(1 . ,y) m) (poso y)
         (odd-*o x n m p))))))

(define odd-*o
  (lambda (x n m p)
    (exist (q)
      (bound-*o q p n m)
      (*o x m q)
      (pluso `(0 . ,q) m p))))

(define bound-*o
  (lambda (q p n m)
    (conde
      ((nullo q) (pairo p))
      ((exist (x y z)
         (cdro q x)
         (cdro p y)
         (conde
           ((nullo n)
            (cdro m z)
            (bound-*o x y z '()))
           ((cdro n z) 
            (bound-*o x y z m))))))))


(test-check "testc21.tex-1" 
(run34 (t)
  (exist (x y r)
    (*o x y r)
    (== `(,x ,y ,r) t)))


`((() _.0 ())
 ((_.0 . _.1) () ())
 ((1) (_.0 . _.1) (_.0 . _.1))
 ((_.0 _.1 . _.2) (1) (_.0 _.1 . _.2))
 ((0 1) (_.0 _.1 . _.2) (0 _.0 _.1 . _.2))
 ((0 0 1) (_.0 _.1 . _.2) (0 0 _.0 _.1 . _.2))
 ((1 _.0 . _.1) (0 1) (0 1 _.0 . _.1))
 ((0 0 0 1) (_.0 _.1 . _.2) (0 0 0 _.0 _.1 . _.2))
 ((1 _.0 . _.1) (0 0 1) (0 0 1 _.0 . _.1))
 ((0 1 _.0 . _.1) (0 1) (0 0 1 _.0 . _.1))
 ((0 0 0 0 1) (_.0 _.1 . _.2) (0 0 0 0 _.0 _.1 . _.2))
 ((1 _.0 . _.1) (0 0 0 1) (0 0 0 1 _.0 . _.1))
 ((0 1 _.0 . _.1) (0 0 1) (0 0 0 1 _.0 . _.1))
 ((0 0 1 _.0 . _.1) (0 1) (0 0 0 1 _.0 . _.1))
 ((1 1) (1 1) (1 0 0 1))
 ((0 0 0 0 0 1) (_.0 _.1 . _.2) (0 0 0 0 0 _.0 _.1 . _.2))
 ((1 _.0 . _.1) (0 0 0 0 1) (0 0 0 0 1 _.0 . _.1))
 ((0 1 _.0 . _.1) (0 0 0 1) (0 0 0 0 1 _.0 . _.1))
 ((0 0 1 _.0 . _.1) (0 0 1) (0 0 0 0 1 _.0 . _.1))
 ((0 0 0 1 _.0 . _.1) (0 1) (0 0 0 0 1 _.0 . _.1))
 ((1 1) (1 0 1) (1 1 1 1))
 ((0 1 1) (1 1) (0 1 0 0 1))
 ((1 1) (1 1 1) (1 0 1 0 1))
 ((1 1) (0 1 1) (0 1 0 0 1))
 ((0 0 0 0 0 0 1) (_.0 _.1 . _.2) (0 0 0 0 0 0 _.0 _.1 . _.2))
 ((1 _.0 . _.1) (0 0 0 0 0 1) (0 0 0 0 0 1 _.0 . _.1))
 ((0 1 _.0 . _.1) (0 0 0 0 1) (0 0 0 0 0 1 _.0 . _.1))
 ((0 0 1 _.0 . _.1) (0 0 0 1) (0 0 0 0 0 1 _.0 . _.1))
 ((0 0 0 1 _.0 . _.1) (0 0 1) (0 0 0 0 0 1 _.0 . _.1))
 ((1 0 1) (1 1) (1 1 1 1))
 ((0 0 0 0 1 _.0 . _.1) (0 1) (0 0 0 0 0 1 _.0 . _.1))
 ((0 1 1) (1 0 1) (0 1 1 1 1))
 ((0 0 1 1) (1 1) (0 0 1 0 0 1))
 ((1 1) (1 0 0 1) (1 1 0 1 1)))
)

(test-check "testc21.tex-2" 
(run* (p)
  (*o '(0 1) '(0 0 1) p))  

(list `(0 0 0 1)))



(define bound-*o
  (lambda (q p n m)
    succeed))


(test-check "testc21.tex-3" 
(run1 (t)
  (exist (n m)
    (*o n m '(1))
    (== `(,n ,m) t)))

(list `((1) (1))))
(define e (make-engine (lambda () 
(run2 (t)
  (exist (n m)
    (*o n m '(1))
    (== `(,n ,m) t)))
)))
(printf "Testing testc21.tex-4  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc21.tex-4 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))



(define bound-*o
  (lambda (q p n m)
    (conde
      ((nullo q) (pairo p))
      ((exist (x y z)
         (cdro q x)
         (cdro p y)
         (conde
           ((nullo n)
            (cdro m z)
            (bound-*o x y z '()))
           ((cdro n z) 
            (bound-*o x y z m))))))))



(test-check "testc21.tex-5" 
(run2 (t)
  (exist (n m)
    (*o n m '(1))
    (== `(,n ,m) t)))

`(((1) (1))))

(test-check "testc21.tex-6" 
(run* (p)
  (*o '(1 1 1) '(1 1 1 1 1 1) p))

(list `(1 0 0 1 1 1 0 1 1)))

(define =lo
  (lambda (n m)
    (conde
      ((== '() n) (== '() m))
      ((== '(1) n) (== '(1) m))
      ((exist (a x b y)
         (== `(,a . ,x) n) (poso x)
         (== `(,b . ,y) m) (poso y)
         (=lo x y))))))


(test-check "testc21.tex-7" 
(run* (t)
  (exist (w x y)
    (=lo `(1 ,w ,x . ,y) '(0 1 1 0 1))
    (== `(,w ,x ,y) t)))

(list `(_.0 _.1 (_.2 1))))

(test-check "testc21.tex-8" 
(run* (b)
  (=lo '(1) `(,b)))

(list 1))

(test-check "testc21.tex-9" 
(run* (n)
  (=lo `(1 0 1 . ,n) '(0 1 1 0 1)))

(list 
`(_.0 1)
))

(test-check "testc21.tex-10" 
(run5 (t)
  (exist (y z)
    (=lo `(1 . ,y) `(1 . ,z))
    (== `(,y ,z) t)))


`((() ())
 ((1) (1))
 ((_.0 1) (_.1 1))
 ((_.0 _.1 1) (_.2 _.3 1))
 ((_.0 _.1 _.2 1) (_.3 _.4 _.5 1)))
)

(test-check "testc21.tex-11" 
(run5 (t)
  (exist (y z)
    (=lo `(1 . ,y) `(0 . ,z))
    (== `(,y ,z) t)))


`(((1) (1))
 ((_.0 1) (_.1 1))
 ((_.0 _.1 1) (_.2 _.3 1))
 ((_.0 _.1 _.2 1) (_.3 _.4 _.5 1))
 ((_.0 _.1 _.2 _.3 1) (_.4 _.5 _.6 _.7 1)))
)

(test-check "testc21.tex-12" 
(run5 (t)
  (exist (y z)
    (=lo `(1 . ,y) `(0 1 1 0 1 . ,z))
    (== `(,y ,z) t)))


`(((_.0 _.1 _.2 1) ())
 ((_.0 _.1 _.2 _.3 1) (1))
 ((_.0 _.1 _.2 _.3 _.4 1) (_.5 1))
 ((_.0 _.1 _.2 _.3 _.4 _.5 1) (_.6 _.7 1))
 ((_.0 _.1 _.2 _.3 _.4 _.5 _.6 1) (_.7 _.8 _.9 1)))
)

(define <lo
  (lambda (n m)
    (conde
      ((== '() n) (poso m))
      ((== '(1) n) (>1o m))
      ((exist (a x b y)
         (== `(,a . ,x) n) (poso x)
         (== `(,b . ,y) m) (poso y)
         (<lo x y))))))


(test-check "testc21.tex-13" 
(run8 (t)
  (exist (y z)
    (<lo `(1 . ,y) `(0 1 1 0 1 . ,z))
    (== `(,y ,z) t)))


`((() _.0)
 ((1) _.0)
 ((_.0 1) _.1)
 ((_.0 _.1 1) _.2)
 ((_.0 _.1 _.2 1) (_.3 . _.4))
 ((_.0 _.1 _.2 _.3 1) (_.4 _.5 . _.6))
 ((_.0 _.1 _.2 _.3 _.4 1) (_.5 _.6 _.7 . _.8))
 ((_.0 _.1 _.2 _.3 _.4 _.5 1) (_.6 _.7 _.8 _.9 . _.10)))
)
(define e (make-engine (lambda () 
(run1 (n)
  (<lo n n))
)))
(printf "Testing testc21.tex-14  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc21.tex-14 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))


(define <=lo
  (lambda (n m)
    (conde
      ((=lo n m))
      ((<lo n m)))))


(test-check "testc21.tex-15" 
(run8 (t)
  (exist (n m)
    (<=lo n m)
    (== `(,n ,m) t)))


`((() ())
 ((1) (1))
 (() (_.0 . _.1))
 ((1) (_.0 _.1 . _.2))
 ((_.0 1) (_.1 1))
 ((_.0 1) (_.1 _.2 _.3 . _.4))
 ((_.0 _.1 1) (_.2 _.3 1))
 ((_.0 _.1 _.2 1) (_.3 _.4 _.5 1)))
)

(test-check "testc21.tex-16" 
(run1 (t)
  (exist (n m)
    (<=lo n m)
    (*o n '(0 1) m)
    (== `(,n ,m) t)))

(list `(() ())))

(test-check "testc21.tex-17" 
(run10 (t)
  (exist (n m)
    (<=lo n m)
    (*o n '(0 1) m)
    (== `(,n ,m) t)))


`((() ())
 ((1) (0 1))
 ((0 1) (0 0 1))
 ((1 1) (0 1 1))
 ((1 _.0 1) (0 1 _.0 1))
 ((0 0 1) (0 0 0 1))
 ((0 1 1) (0 0 1 1))
 ((1 _.0 _.1 1) (0 1 _.0 _.1 1))
 ((0 1 _.0 1) (0 0 1 _.0 1))
 ((0 0 0 1) (0 0 0 0 1)))
)

(test-check "testc21.tex-18" 
(run15 (t)
  (exist (n m)
    (<=lo n m)
    (== `(,n ,m) t)))


`((() ())
 ((1) (1))
 (() (_.0 . _.1))
 ((1) (_.0 _.1 . _.2))
 ((_.0 1) (_.1 1))
 ((_.0 1) (_.1 _.2 _.3 . _.4))
 ((_.0 _.1 1) (_.2 _.3 1))
 ((_.0 _.1 _.2 1) (_.3 _.4 _.5 1))
 ((_.0 _.1 1) (_.2 _.3 _.4 _.5 . _.6))
 ((_.0 _.1 _.2 _.3 1) (_.4 _.5 _.6 _.7 1))
 ((_.0 _.1 _.2 1) (_.3 _.4 _.5 _.6 _.7 . _.8))
 ((_.0 _.1 _.2 _.3 _.4 1) (_.5 _.6 _.7 _.8 _.9 1))
 ((_.0 _.1 _.2 _.3 1) (_.4 _.5 _.6 _.7 _.8 _.9 . _.10))
 ((_.0 _.1 _.2 _.3 _.4 _.5 1) (_.6 _.7 _.8 _.9 _.10 _.11 1))
 ((_.0 _.1 _.2 _.3 _.4 1) (_.5 _.6 _.7 _.8 _.9 _.10 _.11 . _.12)))
)

(define <o
  (lambda (n m)
    (conde
      ((<lo n m))
      ((=lo n m)
       (exist (x)
         (poso x)
         (pluso n x m))))))


(define <=o
  (lambda (n m)
    (conde
      ((== n m))
      ((<o n m)))))


(test-check "testc21.tex-19" 
(run* (q)
  (<o '(1 0 1) '(1 1 1))
  (== #t q))

(list #t))

(test-check "testc21.tex-20" 
(run* (q)
  (<o '(1 1 1) '(1 0 1))
  (== #t q))

`())

(test-check "testc21.tex-21" 
(run* (q)
  (<o '(1 0 1) '(1 0 1))
  (== #t q))

`())

(test-check "lessthanequalo-1"
  (run* (q)
    (<=o '(1 0 1) '(1 0 1))
    (== #t q))

`(#t))

(test-check "testc21.tex-22" 
(run6 (n)
  (<o n `(1 0 1)))


`(() (1) (_.0 1) (0 0 1))
)

(test-check "testc21.tex-23" 
(run6 (m)
  (<o `(1 0 1) m))


`((_.0 _.1 _.2 _.3 . _.4) (0 1 1) (1 1 1))
)
(define e (make-engine (lambda () 
(run* (n)
  (<o n n))
)))
(printf "Testing testc21.tex-24  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc21.tex-24 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))



(define /o
  (lambda (n m q r)
    (conde
      ((== r n) (== '() q) (<o n m))
      ((== '(1) q) (=lo n m) (pluso r m n)
       (<o r m))
      ((<lo m n)                        
       (<o r m)                        
       (poso q)                 
       (exist (nh nl qh ql qlm qlmr rr rh)
         (splito n r nl nh)
         (splito q r ql qh)
         (conde
           ((== '() nh)
            (== '() qh)
            (minuso nl r qlm)
            (*o ql m qlm))
           ((poso nh)
            (*o ql m qlm)
            (pluso qlm r qlmr)
            (minuso qlmr nl rr)
            (splito rr r '() rh)
            (/o nh m qh rh))))))))

(define splito
  (lambda (n r l h)
    (conde
      ((== '() n) (== '() h) (== '() l))
      ((exist (b n^)
         (== `(0 ,b . ,n^) n)
         (== '() r)
         (== `(,b . ,n^) h)
         (== '() l)))
      ((exist (n^)
         (==  `(1 . ,n^) n)
         (== '() r)
         (== n^ h)
         (== '(1) l)))
      ((exist (b n^ a r^)
         (== `(0 ,b . ,n^) n)
         (== `(,a . ,r^) r)
         (== '() l)
         (splito `(,b . ,n^) r^ '() h)))
      ((exist (n^ a r^)
         (== `(1 . ,n^) n)
         (== `(,a . ,r^) r)
         (== '(1) l)
         (splito n^ r^ '() h)))
      ((exist (b n^ a r^ l^)
         (== `(,b . ,n^) n)
         (== `(,a . ,r^) r)
         (== `(,b . ,l^) l)
         (poso l^)
         (splito n^ r^ l^ h))))))


(test-check "testc21.tex-25" 
(run6 (t)
  (exist (n m q r)
    (/o n m q r)
    (== `(,n ,m ,q ,r) t)))


`((() (_.0 . _.1) () ())
 ((1) (_.0 _.1 . _.2) () (1))
 ((_.0 1) (_.1 _.2 _.3 . _.4) () (_.0 1))
 ((_.0 _.1 1) (_.2 _.3 _.4 _.5 . _.6) () (_.0 _.1 1))
 ((_.0 _.1 _.2 1) (_.3 _.4 _.5 _.6 _.7 . _.8) () (_.0 _.1 _.2 1))
 ((_.0 _.1 _.2 _.3 1) (_.4 _.5 _.6 _.7 _.8 _.9 . _.10) () (_.0 _.1 _.2 _.3 1)))
)





(define /o
  (lambda (n m q r)
    (conde
      ((== '() q) (== n r) (<o n m))
      ((== '(1) q) (== '() r) (== n m)
       (<o r m))      
      ((<o m n) (<o r m)
       (exist (mq)
         (<=lo mq n)
         (*o m q mq)
         (pluso mq r n))))))
  


  (define /otest1
    (lambda ()


(run3 (t)
  (exist (y z)
    (/o `(1 0 . ,y) '(0 1) z '())
    (== `(,y ,z) t)))


  ))
(define e (make-engine /otest1))
(printf "Testing testc23.tex-/otest1  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc23.tex-/otest1 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))



(define /o
  (lambda (n m q r)
    (conde
      ((== r n) (== '() q) (<o n m))
      ((== '(1) q) (=lo n m) (pluso r m n)
       (<o r m))
      ((<lo m n)                        
       (<o r m)                        
       (poso q)                 
       (exist (nh nl qh ql qlm qlmr rr rh)
         (splito n r nl nh)
         (splito q r ql qh)
         (conde
           ((== '() nh)
            (== '() qh)
            (minuso nl r qlm)
            (*o ql m qlm))
           ((poso nh)
            (*o ql m qlm)
            (pluso qlm r qlmr)
            (minuso qlmr nl rr)
            (splito rr r '() rh)
            (/o nh m qh rh))))))))

(define splito
  (lambda (n r l h)
    (conde
      ((== '() n) (== '() h) (== '() l))
      ((exist (b n^)
         (== `(0 ,b . ,n^) n)
         (== '() r)
         (== `(,b . ,n^) h)
         (== '() l)))
      ((exist (n^)
         (==  `(1 . ,n^) n)
         (== '() r)
         (== n^ h)
         (== '(1) l)))
      ((exist (b n^ a r^)
         (== `(0 ,b . ,n^) n)
         (== `(,a . ,r^) r)
         (== '() l)
         (splito `(,b . ,n^) r^ '() h)))
      ((exist (n^ a r^)
         (== `(1 . ,n^) n)
         (== `(,a . ,r^) r)
         (== '(1) l)
         (splito n^ r^ '() h)))
      ((exist (b n^ a r^ l^)
         (== `(,b . ,n^) n)
         (== `(,a . ,r^) r)
         (== `(,b . ,l^) l)
         (poso l^)
         (splito n^ r^ l^ h))))))


(define logo
 (lambda (n b q r)
   (conde
     ((== '(1) n) (poso b) (== '() q) (== '() r))
     ((== '() q) (<o n b) (pluso r '(1) n))
     ((== '(1) q) (>1o b) (=lo n b) (pluso r b n))
     ((== '(1) b) (poso q) (pluso r '(1) n))
     ((== '() b) (poso q) (== r n))
     ((== '(0 1) b)
      (exist (a ad dd)
        (poso dd)
        (== `(,a ,ad . ,dd) n)
        (exp2 n '() q)
        (exist (s)
          (splito n dd r s))))
     ((exist (a ad add ddd)
        (conde
          ((== '(1 1) b))
          ((== `(,a ,ad ,add . ,ddd) b))))
      (<lo b n)
      (exist (bw1 bw nw nw1 ql1 ql s)
        (exp2 b '() bw1)
        (pluso bw1 '(1) bw)
        (<lo q n)
        (exist (q1 bwq1)
          (pluso q '(1) q1)
          (*o bw q1 bwq1)
          (<o nw1 bwq1))
          (exp2 n '() nw1)
          (pluso nw1 '(1) nw)
          (/o nw bw ql1 s)
          (pluso ql '(1) ql1)
          (<=lo ql q)
          (exist (bql qh s qdh qd)
            (repeated-mul b ql bql)
            (/o nw bw1 qh s)
            (pluso ql qdh qh)
            (pluso ql qd q)
            (<=o qd qdh)
            (exist (bqd bq1 bq)
              (repeated-mul b qd bqd)
              (*o bql bqd bq)
              (*o b bq bq1)
              (pluso bq r n)
              (<o n bq1))))))))


(define exp2
  (lambda (n b q)
    (conde
      ((== '(1) n) (== '() q))
      ((>1o n) (== '(1) q)
       (exist (s)
         (splito n b s '(1))))
      ((exist (q1 b2)
         (== `(0 . ,q1) q)
         (poso q1)
         (<lo b n)
         (appendo b `(1 . ,b) b2)
         (exp2 n b2 q1)))
      ((exist (q1 nh b2 s)
         (== `(1 . ,q1) q)
         (poso q1)
         (poso nh)
         (splito n b s nh)
         (appendo b `(1 . ,b) b2)
         (exp2 nh b2 q1))))))


(define repeated-mul
  (lambda (n q nq)
    (conde
      ((poso n) (== '() q) (== '(1) nq))
      ((== '(1) q) (== n nq))
      ((>1o q)
       (exist (q1 nq1)
         (pluso q1 '(1) q)
         (repeated-mul n q1 nq1)
         (*o nq1 n nq))))))


(test-check "testc21.tex-26" 
(run* (r) 
  (logo '(0 1 1 1) '(0 1) '(1 1) r))

(list `(0 1 1)))


(printf "This next test takes several minutes to run!\n")


(test-check "testc21.tex-27" 
(run9 (s)
  (exist (b q r)
    (logo '(0 0 1 0 0 0 1) b q r)
    (>1o q)
    (== `(,b ,q ,r) s)))
`((() (_.0 _.1 . _.2) (0 0 1 0 0 0 1))
 ((1) (_.0  _.1 . _.2) (1 1 0 0 0 0 1))
 ((0 1) (0 1 1) (0 0 1))
 ((1 1) (1 1) (1 0 0 1 0 1))
 ((0 0 1) (1 1) (0 0 1))
 ((0 0 0 1) (0 1) (0 0 1))
 ((1 0 1) (0 1) (1 1 0 1 0 1))
 ((0 1 1) (0 1) (0 0 0 0 0 1))
 ((1 1 1) (0 1) (1 1 0 0 1)))
)

(define expo
  (lambda (b q n)
    (logo n b q '())))


(test-check "testc21.tex-28" 
(run* (t)
  (expo '(1 1) '(1 0 1) t))

(list `(1 1 0 0 1 1 1 1)))

 (define u (var 'u))
 
 (define v (var 'v))
 
 (define w (var 'w))
 

 (define x (var 'x))
 
 (define y (var 'y))
 
 (define z (var 'z))
 

(test-check "testc22.tex-1"   
(rhs `(,z . b))

'b)

(test-check "testc22.tex-2"   
(rhs `(,z . ,w))

w)

(test-check "testc22.tex-3" 
(rhs `(,z . (,x e ,y)))

`(,x e ,y))


(test-check "testc22.tex-4" 
(walk z `((,z . a) (,x . ,w) (,y . ,z)))

'a)

(test-check "testc22.tex-5"   
(walk y `((,z . a) (,x . ,w) (,y . ,z)))

'a)

(test-check "testc22.tex-6"   
(walk x `((,z . a) (,x . ,w) (,y . ,z)))

w)

(test-check "testc22.tex-7"   
(walk w `((,z . a) (,x . ,w) (,y . ,z)))

w)

(test-check "testc22.tex-8"   
(walk u `((,x . b) (,w . (,x e ,x)) (,u . ,w)))

`(,x e ,x))


(test-check "testc22.tex-9" 
(walk y (ext-s x 'e `((,z . ,x) (,y . ,z))))

'e)

(test-check "testc22.tex-10"                                                    
(walk y `((,x . e)))                                                            

y)

(test-check "testc22.tex-11"   
(walk x `((,y . ,z) (,x . ,y)))

z)

(test-check "testc22.tex-12"   
(walk x (ext-s y z `((,x . ,y))))

z)

(test-check "testc22.tex-13" 
(walk x (ext-s z 'b `((,y . ,z) (,x . ,y))))

'b)

(test-check "testc22.tex-14" 
(walk x (ext-s z w `((,y . ,z) (,x . ,y))))

w)


(test-check "testc22.tex-15" 
(occurs-check z u 
  `((,x . (a ,y)) (,w . (,x e ,x)) (,u . ,w) (,y . (,z))))

#t)



(test-check "testc22.tex-16"   
(walk* x
  `((,y . (a ,z c)) (,x . ,y) (,z . a)))

`(a a c))

(test-check "testc22.tex-17" 
(walk* x
  `((,y . (,z ,w c)) (,x . ,y) (,z . a)))

`(a ,w c))

(test-check "testc22.tex-18" 
(walk* y
  `((,y . (,w ,z c)) (,v . b) (,x . ,v) (,z . ,x)))

`(,w b c))



(test-check "testc22.tex-19" 
(run* (q)
  (== #f q)
  (project (q)
    (== (not (not q)) q)))

'(#f))



(test-check "testc22.tex-20" 
(let ((r (walk* `(,x ,y ,z) empty-s)))
  (walk* r (reify-s r empty-s)))

`(_.0 _.1 _.2))

(test-check "testc22.tex-21" 
(let ((r `(,u (,v (,w ,x) ,y) ,x)))
  (walk* r (reify-s r empty-s)))

`(_.0 (_.1 (_.2 _.3) _.4) _.3))

(test-check "testc22.tex-22" 
(let ((s `((,y . (,z ,w c ,w)) (,x . ,y) (,z . a))))
  (let ((r (walk* x s)))
    (walk* r (reify-s r empty-s))))

`(a _.0 c _.0))

(test-check "testc22.tex-23" 
(let ((s `((,y . (,z ,w c ,w)) (,x . ,y) (,z . ,u))))
  (let ((r (walk* x s)))
    (walk* r (reify-s r empty-s))))

`(_.0 _.1 c _.1))


;(test-check "testc22.tex-24" 
;(let ((s `((,y . (,z ,w c ,w)) (,x . ,y) (,z . a))))
;  (reify x s))
;`(a _.0 c _.0))
 
(define e (make-engine (lambda ()   
(run1 (x) 
  (== `(,x) x))
)))
(printf "Testing testc22.tex-25  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc22.tex-25 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))



(test-check "testc22.tex-26"   
(run1 (q) 
  (exist (x)
    (== `(,x) x)
    (== #t q)))

`(#t))

(test-check "testc22.tex-27"   
(run1 (q)
  (exist (x y)
    (== `(,x) y)
    (== `(,y) x)
    (== #t q)))

`(#t))

(test-check "testc22.tex-28"   
(run1 (x) 
  (==-check `(,x) x))

`())
(define e (make-engine (lambda () 
(run1 (x)
  (exist (y z)
    (== x z)
    (== `(a b ,z) y)
    (== x y)))
)))
(printf "Testing testc22.tex-29  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc22.tex-29 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))


(test-check "testc22.tex-30" 
(run1 (x)
  (exist (y z)
    (== x z)
    (== `(a b ,z) y)
    (==-check x y)))

`())
(define e (make-engine (lambda ()   
(run1 (x)
  (== `(,x) x))
)))
(printf "Testing testc22.tex-31  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc22.tex-31 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))


    (test-check "testc23.tex-fail1" (run* (q)
  

(conda 
  (fail succeed) 
  (fail)) 


    ) '())
  

    (test-check "testc23.tex-succeed1" (not (null? (run* (q)
  

(conda
  (fail succeed)
  (succeed))


    ))) #t)
  

    (test-check "testc23.tex-succeed1" (not (null? (run* (q)
  

(conda
  (succeed fail)
  (succeed))


    ))) #f)
  

    (test-check "testc23.tex-succeed2" (not (null? (run* (q)
  

(conda
  (succeed succeed)
  (fail))


    ))) #t)
  

(test-check "testc23.tex-1" 
(run* (x)
  (conda
    ((== 'olive x) succeed)
    ((== 'oil x) succeed)))

`(olive))

(test-check "testc23.tex-2" 
(run* (x)
  (conda
    ((== 'virgin x) fail)
    ((== 'olive x) succeed)
    ((== 'oil x) succeed)))

`())

(test-check "testc23.tex-3" 
(run* (q)
  (exist (x y)
    (== 'split x)
    (== 'pea y)
    (conda
      ((== 'split x) (== x y))
      (succeed)))
  (== #t q))

`())

(test-check "testc23.tex-4" 
(run* (q)
  (exist (x y)
    (== 'split x)
    (== 'pea y)
    (conda
      ((== x y) (== 'split x))
      (succeed)))
  (== #t q))

(list #t))
                                                 
(define notpastao
  (lambda (x)                                                                   
    (conda                                                                      
      ((== 'pasta x) fail)                             
      (succeed))))                                                         


(test-check "testc23.tex-5"     
(run* (x) 
  (conda
    ((notpastao x) fail)
    ((== 'spaghetti x))))

'(spaghetti))

(test-check "testc23.tex-6" 
(run* (x)                                                                       
  (== 'spaghetti x)  
  (conda
    ((notpastao x) fail)
    ((== 'spaghetti x))))

'())
(define e (make-engine (lambda () 
(run* (q)
  (conda
    (always succeed)
    (fail))
  (== #t q))
)))
(printf "Testing testc23.tex-7  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc23.tex-7 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))


(test-check "testc23.tex-8" 
(run* (q)
  (condu
    (always succeed)
    (fail))
  (== #t q))

`(#t))
(define e (make-engine (lambda () 
(run* (q)
  (condu
    (succeed always)
    (fail))
  (== #t q))
)))
(printf "Testing testc23.tex-9  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc23.tex-9 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))

(define e (make-engine (lambda ()   
(run1 (q)
  (conda
    (always succeed)
    (fail)) 
  fail
  (== #t q))
)))
(printf "Testing testc23.tex-10  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc23.tex-10 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))


(test-check "testc23.tex-11"   
(run1 (q)
  (condu
    (always succeed)
    (fail)) 
  fail
  (== #t q))

`())

(define onceo
  (lambda (g)
    (condu
      (g succeed))))


(test-check "testc23.tex-12" 
(run* (x)
  (onceo (teacupo x)))

`(tea))

(test-check "testc23.tex-13" 
(run1 (q)
  (onceo (salo never))
  fail)

`())

(test-check "testc23.tex-14"   
(run* (r)
  (conde
    ((teacupo r) succeed)
    ((== #f r) succeed)))

`(#f tea cup))

(test-check "testc23.tex-15"   
(run* (r)
  (conda
    ((teacupo r) succeed)
    ((== #f r) succeed)))

`(tea cup))

(test-check "testc23.tex-16" 
(run* (r)
  (== #f r)
  (conda
    ((teacupo r) succeed)
    ((== #f r) succeed)))

`(#f))

(test-check "testc23.tex-17"   
(run* (r)
  (== #f r)
  (condu
    ((teacupo r) succeed)
    ((== #f r) succeed)))

`(#f))

(define bumpo
  (lambda (n x)
    (conde
      ((== n x) succeed)
      ((exist (m)
         (minuso n '(1) m)
         (bumpo m x))))))


(test-check "testc23.tex-18" 
(run* (x)
  (bumpo '(1 1 1) x))


`((1 1 1)
 (0 1 1)
 (1 0 1)
 (0 0 1)
 (1 1)
 (0 1)
 (1)
 ())
)

(define gen&testo
  (lambda (op i j k)
    (onceo
      (exist (x y z)
        (op x y z)
        (== i x)
        (== j y)
        (== k z)))))


(test-check "testc23.tex-19" 
(run* (q)
  (gen&testo pluso '(0 0 1) '(1 1) '(1 1 1))
  (== #t q))

(list 
#t
))
(define e (make-engine (lambda () 
(run1 (q)
  (gen&testo pluso '(0 0 1) '(1 1) '(0 1 1)))
)))
(printf "Testing testc23.tex-20  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc23.tex-20 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))

(define e (make-engine (lambda () 
(run1 (q)
  (gen&testo pluso '(0 0 1) '(1 1) '(0 1 1)))
)))
(printf "Testing testc23.tex-21  (engine with ~s ticks fuel)\n" max-ticks)
(e max-ticks
(lambda (t v) (error 'testc23.tex-21 "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
(lambda (e^) (void)))


(define enumerateo
  (lambda (op r n)
    (exist (i j k)
      (bumpo n i)
      (bumpo n j)
      (op i j k)
      (gen&testo op i j k)
      (== `(,i ,j ,k) r))))


(test-check "testc23.tex-22" 
(run* (s)
  (enumerateo pluso s '(1 1)))


`(((1 1) (1 1) (0 1 1))
 ((1 1) (0 1) (1 0 1))
 ((1 1) () (1 1))
 ((0 1) (1 1) (1 0 1))
 ((1 1) (1) (0 0 1))
 ((1) (1 1) (0 0 1))
 ((0 1) (0 1) (0 0 1))
 (() (1 1) (1 1))
 ((0 1) () (0 1))
 ((0 1) (1) (1 1))
 ((1) (0 1) (1 1))
 ((1) (1) (0 1))
 ((1) () (1))
 (() (0 1) (0 1))
 (() (1) (1))
 (() () ()))
)

(run* (s)
  (enumerateo pluso s '(1 1)))


(test-check "testc23.tex-23" 
(run1 (s)
  (enumerateo pluso s '(1 1 1)))


`(((1 1 1) (1 1 1) (0 1 1 1)))
)







;;;  Will's toys:

(define proof-that-exist-needs-an-inc
  (exist ()
    (proof-that-exist-needs-an-inc)))

(test-check 'proof-that-run-needs-an-inc
  (run 1 (q)
    (conde
      (proof-that-exist-needs-an-inc)
      (succeed)))
  '(_.0))

(define proof-that-exist-needs-an-inc-with-conda
  (conda
    (proof-that-exist-needs-an-inc)))

(test-check 'proof-that-run-needs-an-inc-with-conde-and-conda
  (run 1 (q)
    (conde
      (proof-that-exist-needs-an-inc)
      (succeed)))
  '(_.0))

(define proof-that-exist-needs-an-inc-with-conda
  (exist ()
    (conda
      (proof-that-exist-needs-an-inc succeed))))

(test-check 'proof-that-run-needs-an-inc-with-conde
  (run 1 (q)
    (conde
      (proof-that-exist-needs-an-inc succeed)
      (succeed)))
  '(_.0))

(test-check 'why-conde-must-also-have-an-inc
  ((make-engine 
     (lambda () 
       (run 5 (q) 
         (letrec ((f (exist () 
                       (conde 
                         (f (conde 
                              (f) 
                              (succeed))) 
                         (succeed))))) 
           f)))) 
   100000 
   (lambda (x y) y) 
   list)
  '(_.0 _.0 _.0 _.0 _.0))
