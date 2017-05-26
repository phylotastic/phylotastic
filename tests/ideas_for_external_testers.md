# Tests

## Background

I have funds to hire outside consultants to test our system, or just to play with it. This is a way to prepare for the hackathon in August. The consultants can test the portal or the services or the toolbox controllers we are writing. They could do tests on robustness, correctness, error tolerance, coverage, response time, and so on. I have 3 different people in mind to do this. I will have to be specific about what I ask them to do. What specific suggestions do you have for tests?

## Tools
Docker compose


## Targets
* Thorough test suite for routine testing of major products
   * testthat with R packages works
   * something we can run routinely to test many things
   * especially the portal (simulate mouseclicks, etc).
* Explore range of inputs for services.  
   * Test what is required 
   * Explore what is possible.  
   * Find out how errors and exceptions are handled
   * Add this to the documentation.  
   * make plans to address any deficiencies
* Deployment and portability.  Can other people deploy our tools.  This is most important for the services, less important for the portal. 
* Capacity and responsiveness.  
   * for services, Find out limits, response times, and add that information to the docs. 
   * for portal, find out response times with increasing number of concurrent users
* Making sure that workflows can be assembled just by following the provided API documentation
* Regression tests.  make sure functionality remains intact when other parts of the system change.  
* Correctness
* 
