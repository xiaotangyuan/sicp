#lang racket
;帕斯卡三角形
;规律：层级和每层级的数字数量相等的
;除了第一二层特殊，其他数字n都是上一层级第n-1和第n个数字之和
(define (iter-paska tall index)
  (cond ((= 1 index) 1)
        ((and (= 2 index) (= 2 tall)) 1)
        ((= index tall) 1)
        (else
         (+ (iter-paska (- tall 1) (- index 1))
            (iter-paska (- tall 1) index ))))
  )

(iter-paska 6 5)