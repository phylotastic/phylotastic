# Phylotastic project, year 1 

This is a report on the progress of the Phylotastic project.  

## Background 

The vision of the Phylotastic project is to make getting species trees as easy as getting driving directions.  The focus is on disseminating Tree-of-Life (species phylogeny) knowledge in a way that is convenient, computable, and credible.  Convenient typically means on-the-fly delivery of trees for a list of species that the user can specify easily.  Computable means that the tree is available in a logical format for downstream use.  Credible means that the tree comes with annotation information describing provenance. 

Rather than building a centralized tool that does this, we envision an ecology of interacting web services that together provide the functionality to support many different workflows via custom clients, or generalized clients.  

## Goals

1. Design a sustainable architecture for ToL delivery. 
2. Implement a production service and reference implementation. 
3. Cultivate a community resource. 

## Centers 

Project activities take place on 4 work sites

1. NMSU.  The role of NMSU is to 
   * implement software designs for back-end services, controllers, and clients
   * maintain installations of services, including any necessary hardware
   * participate in design and testing

2. UMD.  The role of UMD is to 
   * provide project leadership and to coordinate activities between the centers
   * to participate in product design
   * to serve as subject-matter experts 
   * to coordinate outreach efforts

3. UTK.  The role of UTK is to
   * provide a service for assigning dates to nodes on trees (DateLife)
   * participate in the design process

4. UIUC.  The role of UIUC is to
   * provide a service for recognizing taxonomic names (GNRD and related services)
   * participate in the design process

## Accomplishments: Requirements-gathering and design 

* Information gathered from colleagues and others  
   * feedback on mobile app mockup
   * feedback on portal mockup
* Identification of use-cases and development of descriptions
   * Based on user interviews, we identified 11 specific cases for use of the portal, including 5 that were identified as high priorities to support, in order to satisfy user needs.  The contexts of the cases included classroom instruction, research, and scientific illustration.  
* Analysis of viewer requirements 
   * based on our own experiences and observations, along with feedback from users, we identified and prioritized tree-rendering features.  The list of prioritized features was used to identify visualization tools suitable for use in our portal.  For instance, some high-priority features for scientific users are the ability to create compact rectangular tree representations, to highlight clades, and to display images at tip nodes.  

## Accomplishments: Software development 

### Web services newly implemented for this project

1.  *Find Scientific Names on webpages with GNRD*. A service for finding scientific names on web pages using Global Names Recognition and Discovery
([GNRD](http://gnrd.globalnames.org/)).

2. *Find Scientific Names on free-form text with GNRD*.  A service for finding scientific names on free texts using Global Names Recognition and Discovery
([GNRD](http://gnrd.globalnames.org/)).
   
3. *Resolve Scientific Names with OpenTreeOfLife*.  A service for taxonomic name resolution of scientific names using [OpenTreeOfLife](https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#tnrs).

4. *Resolve Scientific Names with GNR*.  A service for taxonomic name resolution of scientific names using Global Names Resolver ([GNR](http://resolver.globalnames.org)).
   
5. *Get Phylogenetic trees from OpenTreeOfLife*.  A service for getting Phylogenetic Trees from [OpenTreeOfLife](https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#taxonomy).

6. *Get all Species from a Taxon using OpenTreeOfLife*.   A service for getting all Species that belong to a particular Taxon using [OpenTreeOfLife](https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#taxonomy)

7. *Get all Species (from a Taxon) that established in a particular country using OpenTreeOfLife and Inaturalist*. A service for getting all Species (from a Taxon) that established in a particular country using [OpenTreeOfLife](https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#taxonomy) and [Inaturalist](http://www.inaturalist.org/pages/api+reference#get-places)

8. *Get images of a species using EOL*.  A service to get image urls of a species using [EOL](http://eol.org/api).
   
9. **Get Species (of a Taxon) that have genome sequence in [NCBI](http://www.ncbi.nlm.nih.gov/)**.  A service to get subset of Species that belong to a particular Taxon and have genome sequence in [NCBI](http://www.ncbi.nlm.nih.gov/books/NBK25500/#chapter1.Finding_Related_Data_Through_En).

10. *Get lists of species*.  A service to get lists of species that a user of phylotastic web application has published

11. *Post a new list of species*.  A service to insert a new list of species by a phylotastic web application user.

12. *Replace species of an existing list*.  A service to replace the existing species objects with new species object of an existing list.

13. *Remove an existing list*.  A service to remove an existing list.

14. *Compare Phylogenetic Trees*.  A service to compare two Phylogenetic Trees using [dendropy](http://dendropy.org/library/treecompare.html#module-dendropy.calculate.treecompare)

### Web services registry designed and implemented for this project

The web services registry (http://phylo.cs.nmsu.edu:8080/WSRegistry/) supports the following functions:
* Log in/out as user/admin.
* Upload wsdl files and insert description of web services.
* Edit description of web services.
* Remove wsdl files and relevant description.

### Mobile app  designed and implemented  this project

Currently, the mobile app 
* obtains images from the device's camera or photo library
* captures text from images using OCR
* recognizes taxon names in captured text 
* adds names to the active list
* maintains multiple named lists (e.g., "Zoo trip 2015")
* queries OpenTree for a phylogeny of species in a list
* displays the phylogeny
* allows the phylogeny to be shared or exported

The app passed a quality check to be distributed on the Apple appstore.  

The strategy of capturing names from signage makes the mobile app very general.  It can be used at any zoo, arboretum, garden, museum collection, etc., that has signage with printed scientific names.  There is no need to coordinate with the institution.  

### Portal designed and implemented  for this project
The web portal is a Rails application accessed through any browser at http://phylo.cs.nmsu.edu:3000.  

Currently the web portal 
* obtains a list by any of 3 main workflows 
   * read taxon list (checklist, inventory)
      * in Darwin Core Archive format
      * in plain text format (one name per line)
   * scrape taxon names from a file or URL (html, txt, PDF, xls, doc)
   * designate a taxon (e.g., "Felidae") with the option to 
      * filter by location, via records from iNaturalist
      * filter by whether a genome is available at NCBI
* allows the user to manage lists 
   * multiple lists may be maintained
   * lists may be edited
   * lists may be made public
* provides a taxon matching report for the list 
* queries tree resources for a phylogeny of species in the list 
* displays the phylogeny with species images (via EOL) 
* maintains a gallery of saved trees

### TNRS improvements for this project

* revisions and improvements to NetiNeti and namefinder

### DateLife improvements for this project

Substantial updates to DateLife. [R package that runs the main functions](https://github.com/phylotastic/datelife) is now separate (and useful on its own) from the [web interface code](https://github.com/phylotastic/datelifeweb) (which now includes an API). Changes haven't moved over to the datelife.org server yet, but see https://github.com/phylotastic/datelifeweb for how to install and play with GUI and https://phylotastic.ocpu.io/datelifeweb for the continuous integration test version. Still premature to do real testing on this (unit testing being built in to the core code, not for the web yet).
  
## Accomplishments: Installations 

* registry
   * registry
   * web server interface to registry
* services 
   * 14 NMSU services listed above 
   * DateLife
   * GNRD
* portal
* mobile app distribution 
   * Android
   * iOS

## Accomplishments: Testing and evaluation  

### Automated 

We have developed an infrastructure for automated testing of services based on the Travis framework.  This consists mainly of black-box tests.  

### Field-tests of mobile app 

The mobile app was tested informally at the Washington National Zoo, Shedd Aquarium, and Longwood Gardens.  

### Content and accuracy analysis of name recognition

(dail's content analysis)

### Test cases and example data

Mainly for purposes of formative evaluation, we have gathered a variety of concrete examples and test cases including
* ~150 photographs of signs from zoos, museums, gardens, etc, used to evaluate OCR and name-recognition 
* 8 studies with test files for name-recognition in PDFs, text and jpg
* over 20 species lists of various types for use in testing, including surveys or inventories of particular taxa and regions, redlists, arbitrary samples of a taxon, and species names identified in a particular digital source.  For instance, there is a list of 85 liverwort species found on Svalbard. 
* 10 lists that include metadata in Darwin archive format. 

## Accomplishments: Documentation 

* services docs: https://github.com/phylotastic/phylo_services_docs
* portal docs: embedded (crude drafts, currently)
* mobile app docs: embedded docs only (very simple)
* registry docs: see services docs

## Accomplishments: Project management 

administration 
* github repos
* issue tracker
* chat room
* milestones
* weekly bullet points

## Accomplishments: Collaborations 

* Other organizations 
   * opentree - KC, JR, JB
* Individuals 
   * JR (OneZoom)
   * YW
   * JHC (ETE)
   * consultants - KS, CP, RW, BS
* mock-up feedback
   * ~25 prospective users, including researchers, curators, educators, journalists, lay persons 

## Changes and challenges

### Changes 
Our development strategy and our development model have changed, with no change in goals. Our original plan called for a "waterfall" development model in which we would spend a long time analyzing requirements and designing a system architecture prior to building anything, starting with the back-end web services.  Instead we realized that it was best to begin with agile development of services and clients, and addresss infrastructure challenges along the way.  That is, we are letting the needs of client apps drive the design and development of back-end infrastructure.   

This change occurred partly because we realized that (1) we already had done extensive analysis of use-cases and requirements, and (2) our new and inexperienced staff could not participate right away in high-level design discussions, without months of exposure to the project and its goals. 

### Challenges 

Our original proposal enumerated use-cases targeted toward specialists, scientists with non-specialized needs for trees, educators, and the general public.  Though we will continue to pursue all of these directions, we expect to shift more emphasis to the least critical uses of phylogeny.  This is partly due to a recognition that subtrees obtained from available tree sources are often not of sufficient quality for the most critical uses.  From an arbitrary list of species names, we find good coverage on a per-species basis, but sometimes poor resolution of the tree topology, e.g., a recovered subtree might contain 90 % of the requested species, but often with polytomies that render the tree considerably much less useful than one obtained from the literature.  Obtaining a tree from the literature is a task that requires effort and specialized expertise: low-resolution trees remain useful for users who are not specialists. 


