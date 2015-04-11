(define (domain pizza-delivery)
(:requirements :typing :fluents)
(:types motorbike pizza street)
(:predicates
  (at-motorbike ?m - motorbike ?l - street)
  (pizza-baked ?p - pizza)
  (at-pizza ?p - pizza ?l - street)
  (pizza-loaded ?p - pizza ?m - motorbike)
  (delivery-Address ?p - pizza ?s - street)
  (pizza-delivered ?p - pizza)
  (street-linked ?x ?y - street))

(:action drive
    :parameters (?m - motorbike ?from ?to - street)
    :precondition (and (street-linked ?from ?to)
                       (at-motorbike ?m ?from))
    :effect (and (not (at-motorbike ?m ?from))
                 (at-motorbike ?m ?to)))

(:action pickup-pizza
    :parameters (?m - motorbike ?s - street ?p - pizza)
    :precondition (and (pizza-baked ?p)
                        (at-motorbike ?m ?s)
                        (at-pizza ?p ?s))
    :effect (and  (not(at-pizza ?p ?s))
                  (pizza-loaded ?p ?m)))

(:action deliver-pizza
    :parameters (?m - motorbike ?s - street ?p - pizza)
    :precondition (and (delivery-Address ?p ?s)
                        (at-motorbike ?m ?s)
                        (pizza-loaded ?p ?m))
    :effect (and  (not(pizza-loaded ?p ?m))
                  (pizza-delivered ?p)))

(:action bake-pizza
    :parameters (?m - motorbike ?p - pizza ?s - street)
    :precondition (and (at-motorbike ?m ?s)(at-pizza ?p ?s))
    :effect (pizza-baked ?p)))
