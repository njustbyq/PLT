;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex07) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; Create an expression that converts the value of in to a positive number.
; For a String, it determines how long the String is
; For an image, it uses the area
; For a number, it decrements the number by 1, unless it is already 0 or negative
; For a #true it uses 10 and for #false 20

(define in -900)

(if (string? in)
    (string-length in)
    (if (image? in)
        (* (image-height in) (image-width in))
        (if (number? in)
            (if (> in 0)
                (- in 1)
                (abs in))
            (if (boolean? in)
                (if in
                    10
                    20)
    (error "Unknown data type")))))