;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname newton_square) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;求平均数
(define (average a b)
  (/ (+ a b) 2))

;(average 10 2)

;满足条件
(define (isok? neednum num)
   (< (abs (- (* neednum neednum) num)) 0.01))

;递归改进数值并测试是否满足条件
(define (guess innum num)
  (if (isok? innum num) innum (guess (average (/ num innum) innum ) num ) )
  )

(define (sqrt-iter num)
  (guess 1 num)
  )

(sqrt-iter 9)