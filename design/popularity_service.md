# Species popularity service 

Not finished 

## Notes 

### Concept and purpose

The page-rank or popularity service maintains a simple ranking of species by popularity.  This makes it possible to reduce the complexity of trees by showing the species that are most familiar.  For instance, a user may request a tree of mammals, but there are 4500 mammals.  Providing a tree with the 100 most popular mammals, or the 10 most popular mammals in each order, would allow a simpler tree that the user would be able to digest more readily, being based on familiar species.  

In principle, there could be different rankings for research purposes, based on frequency of use in the research literature. 

### Minimal interfaces

Only one interface is needed at minimum 

* The basic query is taxon=t & number=n, where t is a string with a taxon name, and n is a whole number.  

This should return sensible results when t is not found, or when the number of species in t is less than n. 

### More advanced interfaces 

* A more advanced query is taxon=t & number=n & by=r to find n species of each taxon of rank r within t, e.g., taxon=mammalia & number=10 & by=order means to get 10 species from each order within mammals.  

## SOW for basic implementation 

Implement a species popularity service with a public web-services API.  Popularity will be based on wikispecies usage statistics.  The code will be developed on a branch of OneZoom with an OSI license.  The basic functionality will be,
* given a list of species S and a number N, to return the N most popular species 
* given a taxon T (specified by otid) and a number N, to return the N most popular species in T

The service 
* will return results in JSON
* will typically return results in < 3 sec when query implicates < X species
* will have a WSDL description developed with the NMSU partners, who will register it with the Phylotastic services registry
* will be active for a year from the date of completion of this work
* will respond with informative error messages to the following input errors
   * S, N or T is empty 
   * T is not a recognized taxon 
   * N < 1
   * N > cardinality(S)
* failure to recognize species in S will not be an error unless the number of recognized species is less than N. 

Develop public API documentation that lists the arguments, their domains, and the expected return values.  The documentation will include at least a few sentences describing how popularity is calculated.  

It is recommended, but not required, to set up monitoring with automatic notification sent to the owners in case of a service outage. 

## SOW for second phase of implementation

not done
