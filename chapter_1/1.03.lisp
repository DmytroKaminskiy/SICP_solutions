(defun square (x) (* x x) )

(defun sum-of-squares (x y) (+ (square x) (square y)))

(defun largest-sum-of-squares (a b c)
  (cond ((and (<= a b) (<= a c)) (sum-of-squares b c))
        ((and (<= b a) (<= b c)) (sum-of-squares a c))
        ((and (<= c a) (<= c b)) (sum-of-squares b a))))

;; testing
(print (largest-sum-of-squares 5 3 4))
(print (largest-sum-of-squares 5 4 3))
(print (largest-sum-of-squares 3 4 5))
(print (largest-sum-of-squares 3 5 4))
(print (largest-sum-of-squares 4 5 3))
(print (largest-sum-of-squares 4 3 5))
