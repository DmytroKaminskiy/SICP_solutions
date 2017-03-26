(defun ptr (x y)
    (cond ((= y 1) 1)
          ((= x y) 1)
          (T (+ (ptr (- x 1) (- y 1))
                (ptr (- x 1) y)))))

;; testing
(print (ptr 3 2))
(print (ptr 5 3))
