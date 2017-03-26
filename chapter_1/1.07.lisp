(defun square (x) (* x x))

(defun sqrt-iter (guess x)
    (if (good-enough? guess x) 
         guess
        (sqrt-iter (improve guess x) x)))

(defun average (x y) (/ (+ x y) 2))

(defun improve (guess x)
    (average guess (/ x guess)))

(defun good-enough? (guess x)
    (< (abs (- (square guess) x)) 0.001))

(defun sqrt (x)
    (sqrt-iter 1.0 x))

;; testing
(print (sqrt 3))
(print (sqrt 9))
(print (sqrt 2))
(print (sqrt 81))
(print (sqrt 121))
