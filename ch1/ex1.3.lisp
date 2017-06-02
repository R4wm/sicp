(define (sumOfTopTwoSquared a b c) 
	(if (and (< c a) (< c b)) (+ (* a a) (* b b) ) 
		(if (and (< b a) (< b c)) (+ (* b b) (* c c)) 
			(if (and (< a b) (< a c)) (+ (* b b) (* c c))))))
