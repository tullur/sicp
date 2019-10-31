(define (factorial n)
    (if (= n 1)
    1
    (* n (factorial (- n 1)))))

(define (factorial-o n)
    (fact-iter 1 1 n))

(define (fact-iter product counter max-counter)
    (if (> counter max-counter)
        product
        (fact-iter (* counter product)
                   (+ counter 1)
                   max-counter)))