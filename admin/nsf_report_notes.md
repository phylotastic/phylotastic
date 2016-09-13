# NSF report notes

## goals

1. Design a sustainable architecture for ToL delivery. 
2. Implement a production service and reference implementation. 
3. Cultivate a community resource. 

The role of UMD is to 
* provide project leadership and to coordinate activities between the centers
* to participate in product design
* to serve as subject-matter experts 
* to coordinate outreach efforts

## accomplished

administration 
* github repos
* issue tracker
* chat room
* milestones
* weekly bullet points

The strategy of capturing names from signage makes the mobile app very general.  It can be used at any zoo, arboretum, garden, museum collection, etc., that has signage with printed scientific names.  There is no need to coordinate with the institution.  

currently, the mobile app 
* obtains images from the device's camera or photo library
* captures text from images using OCR
* recognizes taxon names in captured text 
* adds names to the active list
* maintains multiple named lists (e.g., "Zoo trip 2015")
* queries OpenTree for a phylogeny of species in a list
* displays the phylogeny
* allows the phylogeny to be shared or exported

The web portal is a Rails application accessed through any browser.  

currently the web portal 
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

### major activities

use-case analysis 


## Products

libraries with ~150 photographs of signs from zoos, museums, gardens, etc, used to evaluate OCR and name-recognition 

8 studies with test files for name-recognition in PDFs, text and jpg
 
(analysis: 90 % of names from PDFs) 

collections of 20 species lists of various types for use in testing, including surveys or inventories of particular taxa and regions, redlists, arbitrary samples of a taxon, and species names identified in a particular digital source 


## Participants

other orgs
* opentree - KC, JR, JB

collabs
* rosindell (onezoom)
* yan wong 
* consultants - katja, cyndy, brian, ramona, jen (eol),
* mock-up feedback
   * ~25 prospective users, including researchers, curators, educators, journalists, lay persons 

## Impacts

## Changes/problems 

Our development strategy and our development model have changed, with no change in goals. Our original plan called for a "waterfall" development model in which we would spend a long time analyzing requirements and designing a system architecture prior to building anything, starting with the back-end web services.  Instead we realized that it was best to begin with agile development of services and clients, and addresss infrastructure challenges along the way.  That is, we are letting the needs of client apps drive the design and development of back-end infrastructure.   

This change occurred partly because we realized that (1) we already had done extensive analysis of use-cases and requirements, and (2) our new and inexperienced staff could not participate right away in high-level design discussions, without months of exposure to the project and its goals. 

### anticipated problems. 

Our original proposal enumerated use-cases targeted toward specialists, scientists with non-specialized needs for trees, educators, and the general public.  Though we will continue to pursue all of these directions, we expect to shift more emphasis to the least critical uses of phylogeny.  This is partly due to a recognition that subtrees obtained from available tree sources are often not of sufficient quality for the most critical uses.  From an arbitrary list of species names, we find good coverage on a per-species basis, but sometimes poor resolution of the tree topology, e.g., a recovered subtree might contain 90 % of the requested species, but often with polytomies that render the tree considerably much less useful than one obtained from the literature.  Obtaining a tree from the literature is a task that requires effort and specialized expertise: low-resolution trees remain useful for users who are not specialists. 

In the image shown of the genus Passerina, for instance, we recover the 7 expected species, including the Blue Grosbeak (P. caerulea), which was classified in a different genus (Guiraca) until rather recently.  The image of the Painted Bunting (P. ciris)  is enlarged and hides the Rose-bellied Bunting (P. rositae) behind it.  This tree essentially reflects the taxonomy only, and does not represent that the Painted Bunting and the Varied Bunting (P. versicolor) likely form a clade, as do the Blue Grosbeak and the Lazuli Bunting (P. amoena; e.g., see Klicka, et al., The Auk 118(3):611–623, 2001).  


ETE (Python), ggtree (R) and phytools (R). 




