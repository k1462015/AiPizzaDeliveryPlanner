(define (problem simpleProblem)
  (:domain pizzaDomain)
  (:objects
      motorbike car - vehicle
      p1 p2 p3 p4 p5 p6 - pizza
      s1 s2 s3 s4 s5 s6 s7 s8 - street
      fp1 fp2 - fuel_pump)
  (:init
  (street-linked s1 s2) (= (fuel-required s1 s2) 5)
  (street-linked s1 s3) (= (fuel-required s1 s3) 7)
  (street-linked s1 s4) (= (fuel-required s1 s4) 10)
  (street-linked s1 s6) (= (fuel-required s1 s6) 12)
  (street-linked s1 s7) (= (fuel-required s1 s7) 12)

  (street-linked s2 s1) (= (fuel-required s2 s1) 5)
  (street-linked s2 s3) (= (fuel-required s2 s3) 10)
  (street-linked s2 s4) (= (fuel-required s2 s4) 6)

  (street-linked s3 s1) (= (fuel-required s3 s1) 7)
  (street-linked s3 s2) (= (fuel-required s3 s2) 10)
  (street-linked s3 s4) (= (fuel-required s3 s4) 7)
  (street-linked s3 s5) (= (fuel-required s3 s5) 4)
  (street-linked s3 s6) (= (fuel-required s3 s6) 11)
  (street-linked s3 s8) (= (fuel-required s3 s8) 10)

  (street-linked s4 s1) (= (fuel-required s4 s1) 10)
  (street-linked s4 s2) (= (fuel-required s4 s2) 6)
  (street-linked s4 s3) (= (fuel-required s4 s3) 7)
  (street-linked s4 s5) (= (fuel-required s4 s5) 6)

  (street-linked s5 s3) (= (fuel-required s5 s3) 4)
  (street-linked s5 s4) (= (fuel-required s5 s4) 6)
  (street-linked s5 s6) (= (fuel-required s5 s6) 10)
  (street-linked s5 s7) (= (fuel-required s5 s7) 2)

  (street-linked s6 s1) (= (fuel-required s6 s1) 12)
  (street-linked s6 s3) (= (fuel-required s6 s3) 11)
  (street-linked s6 s5) (= (fuel-required s6 s5) 10)
  (street-linked s6 s8) (= (fuel-required s6 s8) 6)


  (street-linked s7 s1) (= (fuel-required s7 s1) 2)
  (street-linked s7 s5) (= (fuel-required s7 s5) 2)
  (street-linked s7 s8) (= (fuel-required s7 s8) 8)

  (street-linked s8 s3) (= (fuel-required s8 s3) 10)
  (street-linked s8 s6) (= (fuel-required s8 s6) 6)
  (street-linked s8 s7) (= (fuel-required s8 s7) 8)

  (fuelPump_Location fp1 s3)
  (fuelPump_Location fp2 s5)


  (at-vehicle motorbike s2)
  (= (fuel_level motorbike) 40)
  (= (fuel_used motorbike) 0)
  (= (fuel_wasted motorbike) 2)

  (at-vehicle car s1)
  (= (fuel_level car) 50)
  (= (fuel_used car) 0)
  (= (fuel_wasted car) 5)

  (at-pizza p1 s4)
  (at-pizza p2 s4)
  (at-pizza p3 s4)
  (at-pizza p4 s4)
  (at-pizza p5 s4)
  (at-pizza p6 s4)

  (address p1 s6)
  (address p2 s3)
  (address p3 s3)
  (address p4 s7)
  (address p5 s8)
  (address p6 s2)
  )

  (:goal (and
              (pizza-delivered p1)
              (pizza-delivered p2)
              (pizza-delivered p3)
              (pizza-delivered p4)
              (pizza-delivered p5)
              (pizza-delivered p6)))

  (:metric minimize (fuel_used motorbike)))
