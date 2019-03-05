## HOW TO CODE: SIMPLE DATA: UNIVERSITY OF BRITISH COLUMBIA (UBCx - Edx)

How To Code: Simple Data, is the first 7 week module from the  [**MICROMASTER - Software Developer** from **University of British Columbia**](https://www.edx.org/course/how-code-simple-data-ubcx-htc1x).

## About this course 

**Course Description**

This course takes a unique approach, focusing on a systematic programming method rather than restricting learners to any one specific programming language. This practical approach will allow you to apply your skills and creativity more widely and to program well in any language.

The course is part of the [**Software Development MicroMasters Program**](https://www.edx.org/micromasters/software-development) and presents a core design method with a focus on numbers, strings, images and lists.

You will learn techniques to:

1. Develop program requirements
2. Produce programs with consistent structure that are easy to modify later
3. Make your programs more reliable by building tests as an integral part of the programming process.
4. This course concludes with the design of a simple interactive game.
5. Learners who enroll in the Verified track will receive staff grading for the course project and increased interaction with the instructor and staff.

What you'll learn:
1. How to represent information as data
2. How to focus each part of your program on a single task
3. How to use examples and tests to clarify what your program should do
4. How to simplify the structure of your program using common patterns
5. Recognize and represent more complicated information

## MODULE 3: How To Design Compound Data

In the third lesson from **module 3B: How to Design Data - Compound Data**, we learn how to use structures when two or more values naturally belong together. 


> (define-struct ball (x y)) <br>
> ;; Ball is (make-ball Number Number) <br>
> ;; interp. a ball at position x, y <br>
> <br>
> (define BALL-1 (make-ball 6 10)) <br>
> <br>
> #; <br>
> (define (fn-for-ball b) <br>
>   (... (ball-x b)     ;Number <br>
>        (ball-y b)))   ;Number <br>
> ;; Template rules used: <br>
> ;;  - compound: 2 fieldsv <br>

When do we need two or more pieces of information we need to use compound data. The simple structure is that:

> (define-struct pos (xy)) <br>

- pos: struct name<br>
- x y: field names<br>

Whe can create some examples for this become more clear, let´s see:

> (define P1 (make-pos 3 6))<br>
> (define P2 (make-pos 2 8))<br>

- P1: become a constant.
- 3 and 6 are the pos-x and pos-y coordinates. 

With that in mind: 

> (pos-x P1) ; produces 3
> (pos-y P2) ; produces 8

### To form a structure definitions

> (define-struct <name1> (<name2>...))<br>
> ; Structure "name" where name 1 = pos  and "Field Name" where name2 = x y <br>
> (define-struct pos (x y)) <br>
  
### A Structure definition defines: 

> - Constructor: make - < structure-name ><br>
> - Selector: < structure-name > - < field-name ><br>
> - Predicate: < structure-name > ? <br>
 
(define-struct pos (x y) defines:

> - Constructor: make-pos <br>
> - Selectors: pos-x   pos-y <br>
> - Predicate: pos? <br>
  
 
