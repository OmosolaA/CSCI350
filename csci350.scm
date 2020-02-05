;PROBLEM 1 REVERSE GENERAL
(define (reverse-general L)
    (if (null? L)
        '()
        (if (list? (car L))
            (append (reverse-general (cdr L))
                (list (reverse-general (car L))))  
            (append (reverse-general (cdr L)) (list (car L)))
        )
    )
)

(display (reverse-general '()))
(newline)
(display (reverse-general '(1 2)))
(newline)
(display (reverse-general '(1 2 3)))
(newline)
(display (reverse-general '((a b c) (d e f))))
(newline)

;PROBLEM 2 SUM UP NUMBERS SIMPLE
(define (sum-up-numbers-simple L)
    (cond
        ((null? L) 0)
        ((list? (car L)) (+ (sum-up-numbers-simple (cdr L))))
        ((not(number? (car L))) (sum-up-numbers-simple (cdr L)))
        (else (+ (car L) (sum-up-numbers-simple (cdr L))))
    )
)

(display (sum-up-number-simple '()))
(newline)
(display (sum-up-number-simple '(100 200)))
(newline)
(display (sum-up-number-simple '(a b c)))
(newline)

;PROBLEM 3 SUM UP NUMBERS GENERAL
(define (sum-up-numbers-general L)
    (cond
        ((null? L) 0)
        ((list? (car L)) (+ (sum-up-numbers-general (car L)) (sum-up-numbers-general (cdr L))))
        ((not(number? (car L))) (sum-up-numbers-general (cdr L))) 
        (else (+ (car L) (sum-up-numbers-general (cdr L))))
    )
)   