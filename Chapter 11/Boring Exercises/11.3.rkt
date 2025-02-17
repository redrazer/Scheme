;;; Exercise 11.3

(define (unspell-letter letter)
  (cond ((member? letter 'abc) 2)
	((member? letter 'def) 3)
	((member? letter 'ghi) 4)
	((member? letter 'jkl) 5)
	((member? letter 'mno) 6)
	((member? letter 'prs) 7)
	((member? letter 'tuv) 8)
	((member? letter 'wxy) 9)
	(else 0)))

(define (phone-unspell wd)
  (if (equal? (count wd) 1)
      (unspell-letter wd)
      (word (unspell-letter (first wd)) (phone-unspell (butfirst wd)))))