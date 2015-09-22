#lang racket
;折半查找 平方根
(define (sqrt targetnum x)
  (if (is_enough_sqrt targetnum x)
      targetnum
      (sqrt (get-new-targetnum targetnum x) x)))

;获得范围的开始
(define (get-scope-start targetnum x)
  (if (> (* targetnum targetnum) x)
      0
      targetnum))
;获得范围的结束
(define (get-scope-end targetnum x )
  (if (> (* targetnum targetnum) x)
      targetnum
      (* targetnum 2)))
;根据范围获取测试数字
(define (get-new-targetnum targetnum x )
  (/ (+ (get-scope-start targetnum x) (get-scope-end targetnum x)) 2))

(define (is_enough_sqrt targetnum num)
  (let ((bi (/ (abs (- (* targetnum targetnum) num)) num)))
    (< bi 0.01)
  ))

(sqrt 90 100)
;(is_enough_sqrt 11 100)