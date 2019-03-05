;; Data definitions:

; 
; PROBLEM A:
; 
; Design a data definition to represent a movie, including  
; title, budget, and year released.
; 
; To help you to create some examples, find some interesting movie facts below: 
; "Titanic" - budget: 200000000 released: 1997
; "Avatar" - budget: 237000000 released: 2009
; "The Avengers" - budget: 220000000 released: 2012
; 
; However, feel free to resarch more on your own!
; 


(define-struct movie (title budget year))
;; movie is (make-movie String Number Number)
;; movie is (make-movie String Natural Natural)

;; interp. movie Title-String, budget-Natural Year-Natural

(define Movie1 (make-movie "Titanic" "200000000" "1997"))
(define Movie2 (make-movie "Avatar" "237000000" "2009"))
(define Movie3 (make-movie "The Avengers" "220000000" "2012"))

#;
(define (fn-for-movie m)
  (... (movie-title m)    ; produces a string
       (movie-budget m)   ; produces a Natural number
       (movie-year m)))   ; produces a Natural number

;; Template rules used:
;; Compound 3 fields.


;; =================
;; Functions
; 
; PROBLEM B:
; 
; You have a list of movies you want to watch, but you like to watch your 
; rentals in chronological order. Design a function that consumes two movies 
; and produces the title of the most recently released movie.
; 
; Note that the rule for templating a function that consumes two compound data 
; parameters is for the template to include all the selectors for both 
; parameters.
; 


;; Movie Movie -> String
;; define which given name was release most recently

(check-expect (recent-movie M1 M2) "Avatar")
(check-expect (recent-movie M3 M2) "The Avengers")

;; define (recent-movie M1 M2) "")  ;stub

(define (fn-for-movie m1 m2)
  (... (movie-title m1)
       (movie-budget m1)
       (movie-year m1)
       (movie-title m2)
       (movie-budget m2)
       (movie-year m2)))

(define (recent-movie m1 m2)
  (if (> (movie-year m1) (movie-year m2)
         (movie-title m1)
         (movie-title m2))))
