# Sketch of higher-level testing strategy

This is about integrative black-box or grey-box testing via the service registry APIs, not really unit tests.  

## All services 

* service describes itself
   * input data type and format
   * output data type and format
   * contact for feedback
   * API reference
   * opt: citation 
   * opt: any restrictions on capacity or scope
   * opt: expected response time 
* service provides informative message 
   * message when down 
   * malformed input
* uptime 
   * perform a few basic tests 4 times per day for each service 
   
## Taxonomy 

### Accuracy tests with a simple string as input

Basic tests 
* validity, e.g., "Lonicera japonica" is valid, whereas "Japonica lonicera" does not map to any currently valid name, except as a miss-spelling. 
* synonymy, e.g., "Caprifolium japonica" is a synonym of "Lonicera japonica".  To succeed in recognizing synonym, a service must either 
   * say explicitly that the two are synonyms
   * map them to the same preferred name
   * map them to the same set of synonyms
* preference, e.g.,  "Lonicera japonica" is the preferred name for "Caprifolium japonica"
* remapping, i.e., if a service maps an input string to something else, it should say so

Tests of more advanced functionality
* child_of, 
* parent_of, 
* synonyms_of, 
* fuzzy_match, 
* better_fuzzy_match, e.g., in the list of fuzzy matches to "Lioncera japonica", "Lonicera japonica" should come up higher than "Ardisia japonica". 

### Accuracy tests with a list of strings 

Note that each of the tests in the previous section can be done in bulk, but this does not reveal much other than performance (see other section).  

This section is about tests that only have meaning with multiple inputs.  These only involve advanced functionality. 

Tests of advanced functionality
* homonym resolution by taxonomic context, e.g., "Ficus" is a genus of snail and also a genus of fig; "Satyrium" is a genus of butterflies and a genus of orchid.  If the other species included with a token X that has taxonomic interpretations A, B or C are all closer to A than to B or C, then A is the preferred interpretation.  See http://sn2000.taxonomy.nl/Main/Index/Homonyms/A1.htm or https://species.wikimedia.org/wiki/List_of_valid_homonyms for long lists.    
* reduction, i.e., inputs are "A, A, B, C", but outputs do not repeat A
* reduction with synonymy, i.e., inputs are "a, A, B, C", where a and A are synonyms, but outputs do not repeat the match to A.  

### Edge tests 
* doesn't choke on special characters as in "Sphinx chersis (Hübner)" or "Halyomorpha halys Stål, 1855", see also Guenée, Lacepède (can search in EOL to get numerous examples).  

### Metadata tests 

Service provides information on 
* whether a re-mapping has taken place
* what kind of re-mapping has taken place (miss-spelling, junior synonym, etc)
* ultimate source of match (citation or URL)

### Capacity tests 


