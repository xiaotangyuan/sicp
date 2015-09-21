;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname newton_square) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;求平均数
(define (average a b)
  (/ (+ a b) 2))

;newif
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause))
  )
;(average 10 2)

;满足条件
(define (isok-iter2? neednum num)
   (< (abs (- (* neednum neednum) num)) 0.01))

;改进猜测数值 平方根
(define (improve-2 innum num)
  (average (/ num innum) innum ))

;满足条件
(define (isok-iter3? neednum num)
   (< (abs (- (* neednum neednum neednum) num)) 0.01))
;改进猜测数值 立方根
(define (improve-3 innum num)
  (/ (+ (/ num (* innum innum))
        (* 2 innum))
     3))
;递归改进数值并测试是否满足条件
(define (guess innum num)
   (if (isok-iter3? innum num) innum (guess (improve-3 innum num) num) )
   )

(define (sqrt-iter num)
  (guess 2 num)
  )

(sqrt-iter 64)