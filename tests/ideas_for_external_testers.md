# Tests

## Background

I have funds to hire outside consultants to test our system, or just to play with it. This is a way to prepare for the hackathon in August. The consultants can test the portal or the services or the toolbox controllers we are writing. They could do tests on robustness, correctness, error tolerance, coverage, response time, and so on. I have 3 different people in mind to do this. I will have to be specific about what I ask them to do. What specific suggestions do you have for tests?

## Tools
Docker compose


## Targets
* Standing up a robust, reproducible test suite. testthat with R packages works, but something we can run routinely to test many things, esp the portal (simulate mouseclicks, etc), could be good.
* Making sure people can redeploy our tools. If a wall suddenly covers all NMSU campus, can we stand up a service at UMD? I think it might be difficult.
* Making sure that workflows can be assembled just by following the provided API documentation
* Capacity testing.  
   * for services, Find out limits, response times, and add that information to the docs. 
   * for portal, find out response times with increasing number of concurrent users
* Correctness
* Define scope of the input ranges.  Test various inputs to see what is required.  Services.  
* Regression tests.  make sure functionality remains intact when other parts of the system change.  
* 
* 
