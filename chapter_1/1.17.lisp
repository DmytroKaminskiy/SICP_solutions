(defun mult (a b)
    
  (defun double (x)
    (+ x x))
    
  (defun halve (x)
    (/ x 2))
    
  (defun even? (y)
      (cond ((= (mod y 2) 1) NIL)
            ((= (mod y 2) 0) T)))
    
  (cond ((= b 0) 0)
        ((even? b) (mult (double a) (halve b)))
  (T (+ a (mult a (- b 1))))))

;; testing
(print (mult 2 4))  ;8
(print (mult 3 4))  ;12
(print (mult 4 4))  ;16
(print (mult 10 10));100

