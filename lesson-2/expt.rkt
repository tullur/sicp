#lang racket

;; O(n) - steps
;; O(n) - memory usage
(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (- n 1)))))

(expt 5 5)
(expt 5 2)
(expt 5 1)
(expt 5 0)


;; O(n) - steps
;; O(1) - memory usage
(define (expt-i b n)
  (expt-iter b n 1))

(define (expt-iter b counter product)
  (if (= counter 0)
      product
      (expt-iter b
                 (- counter 1)
                 (* b product))))

(expt-i 2 2)
(expt-i 2 8)
(expt-i 2 1)
(expt-i 2 0)


;; Time complexity - O(log(n))
(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (square x)
  (* x x))

(define (even? n)
  (= (remainder n 2) 0))
