(define (problem simpleProblem)
  (:domain pizzaDomain)
  (:objects
      motorbike car - vehicle
      p1 p2 - pizza
      s1 s2 s3 s4 - street
      fp1 - fuel_pump)
  (:init
  (street-linked s1 s2) (= (fuel-required s1 s2) 6)
  (street-linked s1 s3) (= (fuel-required s1 s3) 3)
  (street-linked s1 s4) (= (fuel-required s1 s4) 12)


  (street-linked s2 s1) (= (fuel-required s2 s1) 6)
  (street-linked s2 s3) (= (fuel-required s2 s3) 10)

  (street-linked s3 s1) (= (fuel-required s3 s1) 3)
  (street-linked s3 s2) (= (fuel-required s3 s2) 10)
  (street-linked s3 s4) (= (fuel-required s3 s4) 8)

  (street-linked s4 s1) (= (fuel-required s4 s1) 12)
  (street-linked s4 s3) (= (fuel-required s4 s3) 8)

  (fuelPump_Location fp1 s3)


  (at-vehicle motorbike s2)
  (= (fuel_level motorbike) 30)
  (= (fuel_used motorbike) 0)
  (= (fuel_wasted motorbike) 2)

  (at-vehicle car s1)
  (= (fuel_level car) 30)
  (= (fuel_used car) 0)
  (= (fuel_wasted car) 5)

  (at-pizza p1 s4)
  (at-pizza p2 s4)


  (address p1 s3)
  (address p2 s2)
  )

  (:goal (and
              (pizza-delivered p1)
              (pizza-delivered p2)))

  (:metric minimize (fuel_used car)))
