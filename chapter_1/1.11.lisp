(defun f (n) 
  (cond ((< n 3) n)
        ((>= n 3) (+
                    (f (- n 1))
                    (f (- n 2))
                    (f (- n 3))
                  ))))

;; testing
(print (f 5)) ;11
(print (f 10)) ;230
