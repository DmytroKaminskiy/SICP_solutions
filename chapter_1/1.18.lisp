(defun fast-mult (a b)
    
  (defun double (x)
    (+ x x))
    
  (defun halve (x)
    (/ x 2))
    
  (defun even? (y)
    (cond ((= (mod y 2) 1) NIL)
          ((= (mod y 2) 0) T)))

  (defun mult-iter (a counter sum)
    (cond ((= counter 0) sum)
          ((even? counter) (mult-iter (double a) (halve counter) sum))
          (T (mult-iter a (- counter 1) (+ sum a))))) (mult-iter a b 0))

;; testing
(print (fast-mult 2 4))  ;8
(print (fast-mult 3 4))  ;12
(print (fast-mult 4 4))  ;16
(print (fast-mult 10 9)) ;90

