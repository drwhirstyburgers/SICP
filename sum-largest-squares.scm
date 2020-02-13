(define (square x) (* x x))

(define (sqrsum a b)
  (+ (square a) (square b))
)

(define (getlargest a b c)
  (if (> 
    (if (> a b) a b) 
  c)
    (if (> a b) a b) 
  c)
)

(define (getmiddle a b c)
  (cond ((= (getlargest a b c) a) (if (> b c) b c))
        ((= (getlargest a b c) b) (if (> a c) a c))
        ((= (getlargest a b c) c) (if (> a b) a b))
))

(define (main a b c) 
  (sqrsum (getlargest a b c) (getmiddle a b c))
)