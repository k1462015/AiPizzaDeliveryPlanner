# Task Overview #
## Introduction to Artificial Intelligence - 4CCS1IAI. ##
The coursework is about the use of the existing planners for solving a domain and a number of instances of your choice. 
This requires:
* Coming up with an interesting planning domain and instances,
* Modelling the domain and the instances in PDDL, 
* Using a planner for solving them, analysing the results;
* Writing a report about the work done. 

The evaluation will take into account: how rich is the domain (e.g., a domain that involves
just one type of action for moving from one place to another is not interesting), how appropriate
is the PDDL encoding, and how insightful is the experimental analysis with the planner (how easily
the planner solves the instances, how well the planner scales up as the
instances are made larger or more complex, how well the results are reported: times,
quality of solutions, etc).
You can take inspiration from existing domains encoded in PDDL, available on the Web,
but in this case you have to clearly state how you modified and extended the domain.

### Project Overview ###
The purpose of our domain and problem files is to allow the user to plan a route for delivering a set number of pizzas to locations in the most efficient way possible, whilst taking into account time, fuel and the fact that there may be more than one possible vehicle transporting the pizza, and therefore our plan allows us to make efficient use of this fact.

<img src="https://i.gyazo.com/60f9dab4f5c99076c51d507ec7791389.gif" height="300px" width="700px"/>
