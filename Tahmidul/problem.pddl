(define (problem simpleProblem)
  (:domain pizza-delivery)
  (:objects
      m - motorbike
      p1 p2 p3 p4 - pizza
      s1 s2 s3 s4 s5 s6 s7 s8 - street)
  (:init
  (street-linked s1 s2)
  (street-linked s1 s4)

  (street-linked s2 s1)
  (street-linked s2 s3)

  (street-linked s3 s2)
  (street-linked s3 s6)

  (street-linked s4 s1)
  (street-linked s4 s5)

  (street-linked s5 s3)
  (street-linked s5 s4)
  (street-linked s5 s7)

  (street-linked s6 s3)
  (street-linked s6 s8)

  (street-linked s7 s5)
  (street-linked s7 s8)

  (street-linked s8 s6)
  (street-linked s8 s7)

  (at-motorbike m s2)

  (at-pizza p1 s4)
  (at-pizza p2 s4)
  (at-pizza p3 s4)
  (at-pizza p4 s4)

  (delivery-address p1 s6)
  (delivery-address p2 s3)
  (delivery-address p3 s1)
  (delivery-address p4 s7)
  )

  (:goal (and
              (pizza-delivered p1)
              (pizza-delivered p2)
              (pizza-delivered p3)
              (pizza-delivered p4))))
