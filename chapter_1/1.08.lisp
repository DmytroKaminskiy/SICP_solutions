(defun square (x) (* x x))

(defun cube (x) (* x x x))

(defun cbrt-iter (guess x)
    (if (good-enough? guess x) 
         guess
        (cbrt-iter (improve guess x) x)))

(defun improve (guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(defun good-enough? (guess x)
    (< (abs (- (cube guess) x)) 0.001))

(defun cbrt (x)
    (cbrt-iter 1.0 x))

;; testing
(print (cbrt 8))
(print (cbrt 27))
(print (cbrt 1000))
