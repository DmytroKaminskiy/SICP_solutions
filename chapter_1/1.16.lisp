(defun exponent (b n)
    (exponent-iter b n 1))

(defun exponent-iter (b counter product)
     (cond ((= counter 0) product)
           (T (exponent-iter b (- counter 1) (* b product)))))

;; testing
(print (exponent 2 3))
(print (exponent 2 8))


;; TODO page 61
