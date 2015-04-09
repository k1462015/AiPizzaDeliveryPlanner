(define (problem problemSmall)
  (:domain courier)
  (:objects
      t1 - Truck
      p1 p2 p3 p4 - Package
      l1 l2 l3 l4 l5 l6 - Location)
  (:init
  (=(fuel_level t1) 10)

  (= (fuel-required l1 l2) 2)
  (= (fuel-required l1 l3) 2)

  (= (fuel-required l2 l1) 2)
  (= (fuel-required l2 l3) 2)
  (= (fuel-required l2 l5) 2)

  (= (fuel-required l3 l1) 2)
  (= (fuel-required l3 l2) 2)
  (= (fuel-required l3 l4) 2)

  (= (fuel-required l4 l3) 2)

  (= (fuel-required l5 l2) 2)
  (= (fuel-required l5 l6) 2)

  (= (fuel-required l6 l5) 2)


  (connected l1 l2)
  (connected l1 l3)

  (connected l2 l1)
  (connected l2 l3)
  (connected l2 l5)

  (connected l3 l1)
  (connected l3 l2)
  (connected l3 l4)

  (connected l4 l3)

  (connected l5 l2)
  (connected l5 l6)

  (connected l6 l5)



  (at-truck t1 l3)

  (at-Package p1 l2)
  (at-Package p2 l4)
  (at-Package p3 l5)
  )

(:goal (and (at-Package p1 l6)
            (at-Package p2 l6)
            (at-Package p3 l6))))
