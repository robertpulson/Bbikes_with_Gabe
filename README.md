# boris-bikes

An Introduction to Object Oriented Programming in Ruby.

# Key Learning Areas

* Single Responsibilty Principle
* Test Driven Development
* Encapsulation
* Inheritance

In 2010 Boris Johnson Introduced the Baraclays Cycle Hire Scheme, allowing Londoners to pay for short term cycle hire. London now contains multiple docking stations meaning cycles can be hired and docked around the capital. This exercise was based around this principle.

The following classes were implemented:

* Bike
* Docking Station
* Van
* Garage

The program worked on the assumption that aswell as being able to hire a Bike, a Bike could also be broken, and fixed by a Garage. Bikes are delivered and collected from docking stations or a garage by a Van.
The aim of this exercise was to gain a deeper understanding of OOP, so therefore it is focused on writing functionality and not front end design.

# Pair Partner

For this task I paired with Gabriel Arafa. His GitHub profile can be seen here: https://github.com/GabeMaker

# Testing

Rspec was used for unit testing. As this was the first time I have done any Test Driven Development, it was difficult learning two new concepts at once. Also it seemed counter-intuitive at times to write a test for code I already knew would pass that test.
In retrospect, I now see the value of this. As when new code is added, or existing code changed, it is easy to check for faults.

# Getting Started

Copy and paste the following command into your terminal whilst in your projects folder, to clone this repository:

`git clone https://github.com/robertpulson/boris-bikes.git`

Then `cd boris-bikes` to navigate into it.

To check status of tests insure rspec is installed, `gem install rspec`, and run `rspec` whilst in the main directory.

Their's a difference between knowing the path, and walking the path...
