(define-syntax test-check
  (syntax-rules ()
    ((_ title tested-expression expected-result)
     (begin
       (printf "Testing ~s\n" title)
       (let* ((expected expected-result)
              (produced tested-expression))
         (or (equal? expected produced)
             (errorf 'test-check
               "Failed: ~a\nExpected: ~a\nComputed: ~a\n"
               'tested-expression expected produced)))))))

;;;  Max fuel for engines
(define max-ticks 10000000)

(define-syntax test-divergence
  (syntax-rules ()
    ((_ title tested-expression)
     (begin
       (printf "Testing ~s (engine with ~s ticks fuel)\n" title max-ticks)
       ((make-engine (lambda () tested-expression))
        max-ticks
        (lambda (t v)
	  (error title "infinite loop returned ~s after ~s ticks" v (- max-ticks t)))
        (lambda (e^) (void)))))))

