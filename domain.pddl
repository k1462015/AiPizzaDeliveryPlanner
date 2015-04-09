(define (domain courier)
(:requirements :strips:typing :durative-actions :fluents)
(:types Location Truck Package)
(:predicates
  (at-truck ?t - Truck ?l - Location)
  (at-Package ?p - Package ?l - Location)
  (loaded ?t - TRUCK ?p - Package)
  (connected ?x ?y - Location))

(:functions (fuel_level ?t - Truck)
          (fuel-required ?x ?y - Location))


(:durative-action drive
    :parameters (?t1 - Truck ?from ?to - Location)
    :duration(= ?duration 5)
    :condition (over all (and (at-truck ?t1 ?from)
                              (connected ?from ?to)
                              (> (fuel_level ?t1) (fuel-required ?from ?to))))

    :effect (and (at start (at-truck ?t1 ?to))
                 (at end (not(at-truck ?t1 ?from)))
                 (at end (decrease (fuel_level ?t1)(fuel-required ?from ?to)))
                 ))

(:durative-action load_Package
    :parameters (?t1 - TRUCK ?p1 - Package ?loc - Location  )
    :duration(= ?duration 3)
    :condition (over all (and (at-truck ?t1 ?loc)
                              (at-Package ?p1 ?loc)
                ))
    :effect
        (and (at start (not(at-Package ?p1 ?loc)))
            (at end (loaded ?t1 ?p1))

        ))

(:durative-action unload_Package
    :parameters(?t1 - TRUCK ?p1 - Package ?loc - Location)
    :duration(= ?duration 2)
    :condition (over all(and (at-truck ?t1 ?loc)
                            (loaded ?t1 ?p1)))
    :effect
      (and (at start(at-Package ?p1 ?loc))
            (at end(not(loaded ?t1 ?p1)))
      )))
