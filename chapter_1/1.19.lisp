(defun fib (n)
  (fib-iter 1 0 0 1 n))

(defun square (x)
    (* x x))

(defun even? (y)
    (cond ((= (mod y 2) 1) NIL)
          ((= (mod y 2) 0) T)))

 
(defun fib-iter (a b p q count)
  (cond ((= count 0) b)
        ((even? count) (fib-iter a 
                                 b
                                 (+ (square p) (square q))  ; p'
                                 (+ (* 2 p q)  (square q))  ; q'
                                 (/ count 2)))
        (T (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))


;; testing
(print (fib 10)) ;55
(print (fib 20)) ;6765

