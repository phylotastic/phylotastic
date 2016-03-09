# Species popularity service 

Not finished 

## Concept and purpose

The page-rank or popularity service maintains a simple ranking of species by popularity.  This makes it possible to reduce the complexity of trees by showing the species that are most familiar.  For instance, a user may request a tree of mammals, but there are 4500 mammals.  Providing a tree with the 100 most popular mammals, or the 10 most popular mammals in each order, would allow a simpler tree that the user would be able to digest more readily, being based on familiar species.  

In principle, there could be different rankings for research purposes, based on frequency of use in the research literature. 

## Minimal interfaces

Only one interface is needed at minimum 

* The basic query is taxon=t & number=n, where t is a string with a taxon name, and n is a whole number.  

This should return sensible results when t is not found, or when the number of species in t is less than n. 

## More advanced interfaces 

* A more advanced query is taxon=t & number=n & by=r to find n species of each taxon of rank r within t, e.g., taxon=mammalia & number=10 & by=order means to get 10 species from each order within mammals.  

## Basic implementation 

The back-end minimally requires a taxonomy and a ranking. 

The brute-force method would be to enter the tree at t, then descend t to collect all the species.  Then the list of all species in t would be queried against the ranking to find the top n. 

There is a relatively simple way to store a taxonomy tree in an SQL database, called the Nested Sets model (https://en.wikipedia.org/wiki/Nested_set_model). It depends on computing a set of indices for the nodes such that a node has a left number and a right number, and all of the children have numbers in between these. This makes it easy, in particular, to get all of the children of a node.  
