#lang racket

123
456
432223.012323

(+ 12 12)
(- 6 6)
(* 5 5)
(/ 26 2)

(+ 3.0 0.2)
(- 0.1 0.2)
(* 5.25 1.3)
(/ 901.2543 2.33333)

(+ 5 5 105)
(+ 17 (+ 15 (* 5 (/ 105 5))))

(+ (* 3
      (+ (+ 3 3)
         (+ 4 4)))
   (+ (- 10 5)
      6))

(define zero 0)

(* 5 zero)
(+ 5 zero)
(- zero zero)

(define pi 3.14159)
(define radius 10)

(* pi (* radius radius))
(define circumference (* 2 pi radius))

(* (+ 1 (* 9 9))
   (+ 2 (* 2 2 2)))

(define (square x) (* x x))
(square 5)
(square 3)
(square (+ 2 2))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 2 6)

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 5)

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(define (abs-o x)
  (cond ((< x 0) (- x))
        (else x)))

(define (abs-i x)
  (if (< x 0)
      (- x)
      x))
