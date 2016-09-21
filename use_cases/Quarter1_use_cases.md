# **USE CASES WITH COMMUNITY AND OUR INPUT**

__Remember__: Provenance from all the data needs to be included, not just from our source (OTT, Treebase, etc.), but the publications that support the data.
__Requests__: All users would like the inclusion of some metric of distance between taxa in tree (e.g., p-distance, estimated time since divergence, etc.)

 
## USE CASE 1 (Priority 1)
### Quick trees for presentations

**Overview**: Provide a 'quick' tree for use in presentations or classes, where the user is a researcher/educator and wants a quick, on the fly tree for their presentation

**Example**: A botanist needs a tree to demonstrate the relationships of 10 genera they study within the family Asteraceae. They want to input a list of taxa into a service to retrieve this tree for the presentation.

* Main Success Scenario: 
   1. User inputs the list of 10 genera
   2. System provides list of recognised names from the input, where user can view/confirm the list
   3. System provides a tree that can be downloaded.
   4. User visualises the tree in viewer with the option for customisation
   5. User integrates visualisation of tree in pptx.
     
* Stakeholders: 
   * Educators, Professors, Research Scientists


## USE CASE 2 (Priority 1)
### Phylogenetic discovery using checklists

**Overview**: Ability to scrape and search lists of species from parks, regions, wikipedia pages with links to more information from EOL

**Example**: An educator is going to take their class to the art exhibit 'Flora of the National Parks' at the US Botanic Garden.  This exhibit showcases plant species from more than 400 National Parks, using botanical illustrations.  The educator obtains the plant species list (https://www.usbg.gov/floraofthenationalparks) to introduce the phylogenetic diversity that the students will see on their field trip. 
After the trip, the students can discover for themselves the relationships of the species they actually observed (phylogenetic), as well as information on each tip with EOL.

* Instructor main Success Scenario
   1. Instructor inputs the pdf they downloaded from https://www.usbg.gov/floraofthenationalparks
   2. System extracts the species and the instructor has the option to confirm them. 
   3. System provides a tree
   
* Students main Success Scenario
   1. Students input the species names they observed
   2. System verifies the species and the students can confirm
   3. System provides a tree with thumbnails and links to more information in Wikepedia or EOL, geographic area, habitat, etc.
   5. The students are then able to download the tree with thumbnails, and obtain the extra metadata for their report.

* Stakeholders
   * Educators, Professors, general community


## USE CASE 3 (Priority 1)
### Conservation biology using phylogenetics

**Overview**: Ability to provide red list status of tips and integrate geographic data

**Summary**: A conservation biologist working on Maryland biodiversity wants to discover (1) the relationship between those taxa that are endangered/threatened, (2) their distribution, and (3) three of the closest relatives of each taxon.  They use the Federal List of Endangered and Threatened Species of Maryland (http://www.fws.gov/chesapeakebay/endsppweb/lists/MD%20speciesList.pdf) as an input.  

* Main Success Scenario:
   1. User inputs the pdf they downloaded from: http://www.fws.gov/chesapeakebay/endsppweb/lists/MD%20speciesList.pdf
   2. System extracts the species and the user can confirm
   3. System provides a tree
   4. Tree contains information (maybe different coloured tips) on the conservation status and has a link for metadata, especially the distribution and habitat of each tip.
   5. User is able to download the tree and metadata
   
* Stakeholders
   * Ecologists, conservation biologists, policy makers, EPA, State depts of natural resources 


## USE CASE 4 (Priority 1)
### Generating 'summary' phylogenies from different evolutionary lineages

**Overview**: Provide the phylogenetic relationship of large clades. 

**Example**: Here are three examples of educators wanting this service to view and show the systematic relationships between large clades.

Example 1: the evolutionary relationship of birds, turtles, crocodilians, lizards, snakes, and mammals.  Their goal is to demonstrate how birds share a more recent common ancestor to turtles and crocodilians, followed by the relationship with the lizards and snakes clade, and ultimately the ancestry with mammals.
They need the ability to use common names: birds, turtles, crocodilians, lizards, snakes, and mammals as input, request 10 taxa of each, and obtain a phylogeny with thumbnails.

Example 2: the evolution of land plants.  The educator wants to demonstrate how the embryophytes are a lineage within the chlorophytes (green algae), and more closely related to the freshwater greens.  In this case, the educator wants to query for mosses, ferns, flowering plants, 'marine green algae', and 'freshwater green algae', obtain 10 taxa of each and receive a phylogeny

Example 3: evolutionary relationship of mammals, fungi, and embryophytes.  In this case, the educator asks the students to find 10 species each of mammals, land plants, and fungi to discover their relationship.  The students will select 10 species of each clade, and then create and obtain a tree showing that fungi and mammals share a more recent common ancestor than with plants.

* Main Success Scenario:
   1. User inputs the data with common name terminology
   2. System goes out and retrieves tips of these groups (a random sample of 10 taxa for each common name)  
   3. User visualises the tree in viewer with the option for customisation and adding thumbnails at the tip.
   4. System provides a tree that can be downloaded.
   5. User integrates tree in pptx.

* Stakeholders
   * Educators, students, general public


## USE CASE 5 (Priority 1)
### Integration of metadata on the tips

**Overview**: Provide trees with data integrated from external sources at the tips.

**Example**: There have been several requests from users as to what they want to see integrated at the tips. A user wants to be able to (1) input their data, (2)retrieve a phylogeny where they can (3) click to obtain more data/information at the tips:

* Resources requested to be integrated into the tree service
   * images
   * EOL/Wiki (clickable)
   * Toxicity
   * Pathogenicity 
   * Fossil data
   * medicinal value
   * conservation status
   * size
   * habitat
   * biogeographic (phylogeographic) information

* Main Success Scenario:
   1. User inputs their data
   2. System provides list of extracted names from the document
   3. User views/confirms the extracted list
   4. Integrate list with resources
   5. System provides a tree with tips containing information on these resources

* Stakeholders
   * Ecologists, Health Professionals, Biochemists, Research Scientists, Educators, Policy makers, environmentalists, conservation ...


## USE CASE 6 (Priority 2)
### Phylogenetic discovery using natural language

**Overview**: Ability to use natural language, such as 'Trees of Pennsylvania', 'Birds of Papua New Guinea' and receive a phylogeny.

**Example**: A current way of using natural language is in 2 parts. (1)The user conducts a google search for example 'Birds of Papua New Guinea' (https://en.wikipedia.org/wiki/List_of_birds_of_Papua_New_Guinea), and then (2)uses this url as the input for the service.  

* Main Success Scenario:
   1. The user inputs a url after a natural language search in an internet search engine
   2. System extracts the species
   3. System provides a tree
   4. Tree contains thumbnails and links to more information in Wikepedia or EOL 
   5. User is able to download the tree with thumbnails

* Stakeholders
   * Educators, Professors, general community


## USE CASE 7 (Priority 3)
### Phylogenetic discovery from photos/silhouettes 

**Overview**: Use images, instead of names, for a tree

**Example**: An educator from grade school (2-5) is teaching science to their students, and wants to introduce them to the relationships (phylogenetic) of 'mammals', 'farm animals', 'plants', etc.  The comprehension of even common names might be difficult for these young students, but they know what the species look like.  This educator wants a service easy enough for students to use, where they enter the site, view silhouettes of mammals or plants, ability to click these and receive a phylogeny with metadata at the tips.


* Main Success Scenario:
   1. User selects the images they want or are curious about
   2. System provides a tree with the common name, scientific name, including the photo at the tip

* Extensions
   * These tips can also be linked to EOL data by a click

* Stakeholders:
   * Grade school teachers, very young users, parents trying to teach the relationships of species, general public interested in phylogenetics

   
## USE CASE 8 (Priority 3)
### Restrict input to a focal clade

**Overview**: Extract names from an input and restrict these data to a focal clade (eg. family, order, genus, etc.)

**Example**: A user has a plantlist (survey) of MD, VA, WV (http://www.plantnative.org/rpl-mdvawv.htm) but only wants to obtain a phylogeny and information on the Euphorbiaceae in that list.  The user needs to restrict and only receive the taxa within this family, and retrieve a tree.

* Main Success Scenario:
   1. User inputs url (http://www.plantnative.org/rpl-mdvawv.htm)
   2. User restricts to a focal clade (Euphorbiaceae)
   3. System is then capable of returning:
      * a. All those taxa within the focal clade as a list (for confirmation)
      * b. A phylogeny of these taxa

* Stakeholders:
   * Authors, Grade school teachers, Community
   * Phylotastic Project (EOL)
      * Community that wants to focus on a specific area of a species list
         * e.g. A researcher has a plant list of NA plants, but wants to focus only on the Asteraceae to verify if they have a new citation for NA.


# The use cases below are not necessarily Phylotastic, but can be integrated with the services

## USE CASE 9 
## Extract taxon names from a document and verify the spelling

**Overview**: Extract the names from a document to verify the spelling

**Example**: A scientist is submitting a manuscript on an ecological survey of Plants of Svalbard and wants to verify the spelling of all the taxa due to potential typographical errors during typing the manuscript.

* Author/User provides the file

* Main Success Scenario: 
   1. User inputs their document
   2. System provides list of extracted names from the document
   3. User views/confirms the extracted list
   4. System provides the correct spelling of the names
   5. User views/accepts the correctly spelled names
   6. System provides list of all names
   7. User accepts this final list
   8. User authorizes the system to correct the names in the input document
   9. System notifies user of the changes in document

* Stakeholders: 
   * Author, Publisher, Community

* Extensions
   3. Add missing names that the scraper didn’t catch.
   
     
## USE CASE 10
### Extract names from a document and provide taxonomic authority

**Overview**: Extract the names from a document and provide the taxonomic authority according to the correct Nomenclature Code (ICN, ICNP, ICZN, ICTV).

**Example**: A scientist is submitting a manuscript on a species list of Plants and wants to use a service to verify authority.  Since nomenclature is restricted to the entities of a respective code, the same species name can exist under two different codes. The scientist wants to restrict to only the ICN. 

* Main Success Scenario:
   1. User inputs their document
   2. User restricts the search to a distinct Nomenclature Code: ICN.
   3. System extracts names
   4. System matches these names to taxonomic authority
   5. System provides list of extracted names and their taxonomic authority
   6. User accepts this list
   7. System adds these authorities to the input document
   8. System notifies user of the changes in the document

* Stakeholders
   * Authors, Publishers

* Extensions
   1. Author suggests nomenclature authority.
   2. Multiple authorities can be used.
   7. Alternative: Provide a detailed list
   8. Resubmit to check again


## USE CASE 11
### Extract taxon names and provide synonyms with their respective authority and reference

**Overview**: Extract names from a document, verify if these are valid names, and provide the synonyms 

**Example**: A publisher wants to verify if the authors of a manuscript are using the correct synonym in a submitted manuscript. Thus they want to input the manuscript and retrieve the synonymy of the species within and which is currently valid. This also needs to incorporate the correct Nomenclatural Code.

* Main Success Scenario:
   1. User inputs a document
   2. User restricts the Nomenclature Code to search
   3. System extracts taxa
   4. System provides list of synonyms of each extracted taxon
   5. System verifies which name is presently valid
   6. System provides taxonomic authority for all taxa
   7. System provides reference to these authorities

* Stakeholders
   * Authors, Publishers, Community
