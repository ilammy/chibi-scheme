
(define-library (srfi 160 c128)
  (export
   make-c128vector
   c128?
   c128vector?
   c128vector-ref
   c128vector-set!
   c128vector-length
   (rename uvector-unfold c128vector-unfold)
   (rename uvector-unfold-right c128vector-unfold-right)
   (rename vector-copy c128vector-copy)
   (rename vector-reverse-copy c128vector-reverse-copy)
   (rename vector-append c128vector-append)
   (rename vector-concatenate c128vector-concatenate)
   (rename vector-append-subvectors c128vector-append-subvectors)
   (rename vector-empty? c128vector-empty?)
   (rename vector= c128vector=)
   (rename vector-take c128vector-take)
   (rename vector-take-right c128vector-take-right)
   (rename vector-drop c128vector-drop)
   (rename vector-drop-right c128vector-drop-right)
   (rename vector-segment c128vector-segment)
   (rename vector-fold c128vector-fold)
   (rename vector-fold-right c128vector-fold-right)
   (rename vector-map c128vector-map)
   (rename vector-map! c128vector-map!)
   (rename vector-for-each c128vector-for-each)
   (rename vector-count c128vector-count)
   (rename vector-cumulate c128vector-cumulate)
   (rename vector-take-while c128vector-take-while)
   (rename vector-take-while-right c128vector-take-while-right)
   (rename vector-drop-while c128vector-drop-while)
   (rename vector-drop-while-right c128vector-drop-while-right)
   (rename vector-index c128vector-index)
   (rename vector-index-right c128vector-index-right)
   (rename vector-skip c128vector-skip)
   (rename vector-skip-right c128vector-skip-right)
   (rename vector-binary-search c128vector-binary-search)
   (rename vector-any c128vector-any)
   (rename vector-every c128vector-every)
   (rename vector-partition c128vector-partition)
   (rename vector-filter c128vector-filter)
   (rename vector-remove c128vector-remove)
   (rename vector-swap! c128vector-swap!)
   (rename vector-fill! c128vector-fill!)
   (rename vector-reverse! c128vector-reverse!)
   (rename vector-copy! c128vector-copy!)
   (rename vector-reverse-copy! c128vector-reverse-copy!)
   (rename reverse-vector->list reverse-c128vector->list)
   (rename reverse-list->vector reverse-list->c128vector)
   (rename uvector->vector c128vector->vector)
   (rename vector->uvector vector->c128vector)
   (rename make-vector-generator make-c128vector-generator)
   (rename write-vector write-c128vector))
  (import (except (scheme base)
                  vector-append vector-copy vector-copy!
                  vector-map vector-for-each)
          (scheme write)
          (srfi 160 base))
  (begin
    (define uvector? c128vector?)
    (define make-uvector make-c128vector)
    (define vector c128vector)
    (define uvector->list c128vector->list)
    (define list->uvector list->c128vector)
    (define uvector-length c128vector-length)
    (define uvector-ref c128vector-ref)
    (define uvector-set! c128vector-set!))
  (include "uvector.scm"))
