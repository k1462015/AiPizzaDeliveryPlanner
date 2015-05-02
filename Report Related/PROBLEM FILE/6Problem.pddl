(define (problem simpleProblem)
  (:domain pizzaDomain)
  (:objects
      motorbike car - vehicle
      p1 p2 - pizza
      s1 s2 s3 s4 s5 s6 - street)
  (:init
  (street-linked s1 s2) (= (fuel-required s1 s2) 5)
  (street-linked s1 s6) (= (fuel-required s1 s6) 14)
  (street-linked s1 s4) (= (fuel-required s1 s4) 10)

  (street-linked s2 s1) (= (fuel-required s2 s1) 5)
  (street-linked s2 s5) (= (fuel-required s2 s5) 9)
  (street-linked s2 s4) (= (fuel-required s2 s4) 7)
  (street-linked s2 s6) (= (fuel-required s2 s6) 8)

  (street-linked s3 s4) (= (fuel-required s3 s4) 5)

  (street-linked s4 s1) (= (fuel-required s4 s1) 10)
  (street-linked s4 s2) (= (fuel-required s4 s2) 7)
  (street-linked s4 s3) (= (fuel-required s4 s3) 5)
  (street-linked s4 s5) (= (fuel-required s4 s5) 6)
  (street-linked s4 s6) (= (fuel-required s4 s6) 3)

  (street-linked s5 s2) (= (fuel-required s5 s2) 9)
  (street-linked s5 s4) (= (fuel-required s5 s4) 6)
  (street-linked s5 s6) (= (fuel-required s5 s4) 9)

  (street-linked s6 s1) (= (fuel-required s6 s1) 14)
  (street-linked s6 s2) (= (fuel-required s6 s2) 8)
  (street-linked s6 s4) (= (fuel-required s6 s4) 3)
  (street-linked s6 s5) (= (fuel-required s6 s5) 9)

  (at-vehicle motorbike s2)
  (= (fuel_level motorbike) 30)
  (= (fuel_used motorbike) 0)
  (= (fuel_wasted motorbike) 2)

  (at-vehicle car s1)
  (= (fuel_level car) 60)
  (= (fuel_used car) 0)
  (= (fuel_wasted car) 5)

  (at-pizza p1 s6)
  (at-pizza p2 s6)

  (address p1 s3)
  (address p2 s1)

  )

  (:goal (and
              (pizza-delivered p1)
              (pizza-delivered p2)))

  (:metric minimize (fuel_used motorbike)))

