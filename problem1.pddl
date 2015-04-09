(define (problem problem2)
  (:domain courier)
  (:objects
      t1 t2 - Truck
      p1 p2 p3 p4 - Package
      l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 - Location)
  (:init
  (=(fuel_level t1) 100)
  (=(fuel_level t2) 100)

  (= (fuel-required l1 l2) 2)
  (= (fuel-required l1 l3) 2)
  (= (fuel-required l1 l4) 2)

  (= (fuel-required l2 l1) 2)
  (= (fuel-required l2 l3) 2)
  (= (fuel-required l2 l7) 2)
  (= (fuel-required l2 l9) 2)

  (= (fuel-required l3 l2) 2)
  (= (fuel-required l3 l1) 2)
  (= (fuel-required l3 l4) 2)
  (= (fuel-required l3 l5) 2)
  (= (fuel-required l3 l7) 2)
  (= (fuel-required l3 l8) 2)

  (= (fuel-required l4 l3) 2)
  (= (fuel-required l4 l1) 2)

  (= (fuel-required l5 l3) 2)
  (= (fuel-required l5 l6) 2)

  (= (fuel-required l6 l5) 2)
  (= (fuel-required l6 l10) 2)
  (= (fuel-required l6 l11) 2)

  (= (fuel-required l7 l2) 2)
  (= (fuel-required l7 l3) 2)
  (= (fuel-required l7 l9) 2)
  (= (fuel-required l7 l10) 2)

  (= (fuel-required l8 l4) 2)
  (= (fuel-required l8 l3) 2)
  (= (fuel-required l8 l11) 2)

  (= (fuel-required l9 l2) 2)
  (= (fuel-required l9 l7) 2)

  (= (fuel-required l10 l7) 2)
  (= (fuel-required l10 l6) 2)

  (= (fuel-required l11 l8) 2)
  (= (fuel-required l11 l6) 2)

  (connected l1 l2)
  (connected l1 l3)
  (connected l1 l4)

  (connected l2 l1)
  (connected l2 l3)
  (connected l2 l7)
  (connected l2 l9)

  (connected l3 l2)
  (connected l3 l1)
  (connected l3 l4)
  (connected l3 l5)
  (connected l3 l7)
  (connected l3 l8)

  (connected l4 l3)
  (connected l4 l1)

  (connected l5 l3)
  (connected l5 l6)

  (connected l6 l5)
  (connected l6 l10)
  (connected l6 l11)

  (connected l7 l2)
  (connected l7 l3)
  (connected l7 l9)
  (connected l7 l10)

  (connected l8 l4)
  (connected l8 l3)
  (connected l8 l11)

  (connected l9 l2)
  (connected l9 l7)

  (connected l10 l7)
  (connected l10 l6)

  (connected l11 l8)
  (connected l11 l6)

  (at-truck t1 l1)
  (at-truck t2 l10)

  (at-Package p1 l3)
  (at-Package p2 l11)
  (at-Package p3 l2)
  (at-Package p4 l9))

(:goal (and (at-Package p1 l6)
            (at-Package p2 l6)
            (at-Package p3 l6)
            (at-Package p4 l6))))
