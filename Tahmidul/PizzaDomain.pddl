(define (domain PizzaDomain)
(:requirements :typing :fluents)
(:types vehicle pizza street)
(:predicates
  (at-vehicle ?v - vehicle ?l - street)
  (pizza-baked ?p - pizza)
  (at-pizza ?p - pizza ?l - street)
  (pizza-loaded ?p - pizza ?v - vehicle)
  (address ?p - pizza ?s - street)
  (pizza-delivered ?p - pizza)
  (street-linked ?x ?y - street))

(:functions (fuel_level ?v - vehicle)
            (fuel-required ?s1 ?s2 - street)
            (fuel_used ?v - vehicle)
            (fuel_wasted ?v - vehicle))

(:action drive
    :parameters (?v - vehicle ?from ?to - street)
    :precondition (and (street-linked ?from ?to)
                       (at-vehicle ?v ?from)
                       (>= (fuel_level ?v) (fuel-required ?from ?to) )
                       )
    :effect (and (not (at-vehicle ?v ?from))
                 (decrease (fuel_level ?v)(+ (fuel-required ?from ?to)(fuel_wasted ?v)))
                 (increase (fuel_used ?v) (+ (fuel-required ?from ?to)(fuel_wasted ?v)))
                 (at-vehicle ?v ?to)))

(:action pickup-pizza
    :parameters (?v - vehicle ?s - street ?p - pizza)
    :precondition (and (pizza-baked ?p)
                        (at-vehicle ?v ?s)
                        (at-pizza ?p ?s))
    :effect (and  (not(at-pizza ?p ?s))
                  (pizza-loaded ?p ?v)))

(:action deliver-pizza
    :parameters (?v - vehicle ?s - street ?p - pizza)
    :precondition (and (address ?p ?s)
                        (at-vehicle ?v ?s)
                        (pizza-loaded ?p ?v))
    :effect (and  (not(pizza-loaded ?p ?v))
                  (pizza-delivered ?p)))



(:action bake-pizza
    :parameters (?v - vehicle ?p - pizza ?s - street)
    :precondition (and (at-vehicle ?v ?s)(at-pizza ?p ?s))
    :effect (pizza-baked ?p)))
