This document is written in MarkDown.  
* Open in Chrome to see the formatting. 
* For FireFox, install this: https://addons.mozilla.org/en-US/firefox/addon/markdown-here/ 

# Draft metadata for portal workflows 

The purpose of this is to start thinking about what a metadata report would look like for a portal output such as a list, a taxon matching report, a tree image, or a tree.  

## note on sub-models  

We are also working on models for `<list_metadata>` and `<tree_metadata>`. 

### List metadata 
* Title : brief title 
* Description : narrative description 
* Keywords : comma-separated list of keywords
* Author : list author 
* Creation date : date initially created
* Curator : list curator 
* Modified date : date of most recent update
* Source : URI or other source description 
* Focal group : focal clade or taxon where relevant 
* Comment :  anything else 

### Tree metadata
* topology\_id : NA
* gene\_or\_species : species
* rooted : TRUE
* anastomosing : FALSE
* consensus\_type : NA
* branch\_lengths\_type : (none|time-proportional|inferred changes)
* branch\_support\_type : (bootstrap|posterior|none)
* character matrix : NA
* alignment method : NA
* inference method : induced\_tree

## common features 

### preamble template

Every portal output can have the same kind of preamble, which would look like this: 
* This is the metadata for `<output_name>` (`<output_type>`) generated by `<client_name>` `<client_version>` on `<output_date>` by (user `<username>`|anonymous user) from `<IP>`.  See `<client_info_URL>` for more information.  

### export behavior

The path of least effort, in terms of implementation, is to keep all of this hidden, and when the user makes a choice to export, pop up a box with the metadata report in a text pane, and allow the user to save this or to copy and paste it. 

We should also consider the option of always saving metadata in a manner that associates it directly with the file.  The way to do this is that, when the user chooses to export, we export a zip archive consisting of a single folder with the item and its metadata, e.g., unzipping my\_tree.zip would give

* my\_tree
   * my\_tree.nwk
   * my\_tree_metadata.txt

This ensure that, unless the user takes active steps to disassociate them, the data and the metadata will still be together on the user's hard drive a year later. 

## Workflow 1: import text list and download taxon match report. 

### issues, recommendations  

### workflow template

1. Processed file `<input_file_name>` (one name per line) with `<file_lines>` non-empty lines on `<upload_date>`.
1. Created list `<list_name>` of `<list_length>` names with description `<list_description>`.  
1. Extended list `<list_name>` with taxon match data from `<list_tnrs>` with settings `<list_tnrs_settings>`. 
1. User may have interactively selected some or all of the species before proceeding to the steps below.  
1. Exported taxon match report as (.csv|PDF) file with columns Query (source string), MatchedName (name matched to), Match (Exact or Fuzzy), Synonyms (list of synonyms). 

### example 1 

This is the metadata for "aquatic\_mammal\_diversity.report.pdf" (taxon matching report) generated by Phylotastic Portal (v. 1.6) on 2016-12-1 by "arlin" from 172.38.98.191. See http://phylo.cs.nmsu.edu:3001/static_pages/about for more information.  

1. Processed file "going\_further.txt" (one name per line) with 17 non-empty lines on 2016/12/1. 
1. Created list "aquatic\_mammal\_diversity" of 17 names with 
   * Title : "Aquatic mammal diversity" 
   * Description : "This list includes members of 3 different groups of aquatic mammals in phylogenetic context" 
   * Keywords : mammals, aquatic, whales, seals, manatees
   * Author : Arlin Stoltzfus 
   * Creation date : 2016/12/1
   * Curator : Arlin Stoltzfus 
   * Source : NA
   * Focal group : Mammalia
   * Comment : NA 
1. Extended list "aquatic\_mammal\_diversity" with taxon match data from OpenTree taxonomy services with settings 
   * do\_approximate\_matching = FALSE
   * (other settings)
1. User may have interactively selected some or all of the species before proceeding to the steps below.  
1. Exported taxon match report as PDF file with columns Query (source string), MatchedName (name matched to), Match (Exact or Fuzzy), Synonyms (list of synonyms). 

## Workflow 2: choose public list, get tree, and save image. 

### issues, recommendations 

### workflow template

1. Public list selected: `<list_name>` of `<list_length>` names with `<list_metadata>`.  
1. User may have interactively selected some or all of the species before proceeding to the steps below.  
1. Queried `<tree_source_service>`, retrieved a tree with `<tree_size>` tips matching `<query_hits>` out of `<query_size>` taxa in the input list.  Metadata for tree is `<tree_metadata>`.  
1. User may have interactively re-ordered clades, integrated information or resources (e.g., images), and customized any available tree view. 
1. Exported tree image as (SVG|PNG). 

### example 1 

This is the metadata for "nemo.png" (tree image) generated by Phylotastic Portal (v. 1.6) on 2016-12-1 by "arlin" from 172.38.98.191. See http://phylo.cs.nmsu.edu:3001/static_pages/about for more information.  

1. Public list selected: "Finding Nemo" of 17 names with metadata
   * Title : "Finding Nemo" 
   * Description : "Species from Finding Nemo (Australian marine setting), including Green sea turtle (Crush), Clownfish (Nemo, Marlin), Regal Tang (Dory), Moorish Idol (Gill), Porcupinefish (Bloat), Royal Gramma (Gurgle), Yellow Tang (Bubbles), Starfish (Peach), Flapjack octopus (Pearl), Spotted eagle ray (Mr. Ray), Pacific cleaner shrimp (Jacques), Damselfish (Deb, Flo), Mako Shark (Chum), Great White Shark (Bruce), Hammerhead Shark (Anchor), Australian Pelican (Nigel)" 
   * Keywords : bird, Australia, aquarium, marine, reef
   * Author : Arlin Stoltzfus 
   * Creation date : 2016/10/24
   * Curator : Arlin Stoltzfus 
   * Source : see http://www.listchallenges.com/species-in-finding-nemo and http://protecttheoceans.org/wordpress/?p=852
   * Focal group : Mammalia
   * Comment : NA 
1. User may have interactively selected some or all of the species before proceeding to the steps below.  
1. Queried OpenTree service induced\_subtree, retrieved a tree with 15 tips matching 15 out of 17 taxa in the input list.  Metadata for tree is 
   * topology\_id : NA
   * gene\_or\_species : species
   * rooted : TRUE
   * anastomosing : FALSE
   * consensus\_type : NA
   * branch\_lengths\_type : None
   * branch\_support\_type : None
   * character matrix : NA
   * alignment method : NA
   * inference method : induced\_subtree from OpenTree synth tree version 2.2
1. User may have interactively re-ordered clades, integrated information or resources (e.g., images), and customized any available tree view. 
1. Exported tree image as a PNG file. 

## Workflow 3: scrape from URL, edit list, get tree, add images, export tree

### issues, recommendations  

### workflow template

1. Scraped names from web page using `<scraper_service>` with settings
   * engine = (0|1|2)
   * URL = `<the_url>`
1. Created list `<list_name>` of `<list_length>` names with description `<list_description>`.  
1. Extended list `<list_name>` with taxon match data from `<list_tnrs>` with settings `<list_tnrs_settings>`. 
1. User may have interactively selected some or all of the species before proceeding to the steps below.  
1. Queried `<tree_source_service>`, retrieved a tree with `<tree_size>` tips matching `<query_hits>` out of `<query_size>` taxa in the input list.  Metadata for tree is `<tree_metadata>`. 
1. User may have interactively re-ordered clades, integrated information or resources (e.g., images), and customized any available tree view. 
1. options
   1. Exported tree as Newick archive, with a single "\*.nwk" file, one or more "\*.csv" files, a metadata report, and instructions. 
   1. Exported tree as (NeXML|NEXUS).  The single file will include the tree, any integrated data or metadata on taxa, and workflow metadata. 

### example 1 

This is the metadata for "wiki ants" (tree) generated by Phylotastic Portal (v. 1.6) on 2016-12-1 by "arlin" from 172.38.98.191. See http://phylo.cs.nmsu.edu:3001/static_pages/about for more information.

1. Scraped names from URL "https://en.wikipedia.org/wiki/Ant" using service "Find Scientific Names on Web Pages" with settings
   * engine = 0
   * URL = https://en.wikipedia.org/wiki/Ant
1. Created list "wiki ants" of 286 names with metadata
   * Title : "wiki ants" 
   * Description : "list of ants from wiki"
   * Author : H. Dail Laughinghouse
   * Creation date : 2016/12/1
1. Extended list "wiki ants" with taxon match data from OpenTree match\_names service with settings
   * do\_approximate\_matching = FALSE
   * (other settings)
1. User may have interactively selected some or all of the species before proceeding to the steps below.  
1. Queried OpenTree service induced\_subtree, retrieved a tree with 59 tips matching 59 out of 59 taxa in the input list.  Metadata for tree is 
   * topology\_id : NA
   * gene\_or\_species : species
   * rooted : TRUE
   * anastomosing : FALSE
   * consensus\_type : NA
   * branch\_lengths\_type : None
   * branch\_support\_type : None
   * character matrix : NA
   * alignment method : NA
   * inference method : induced\_subtree from OpenTree synth tree version 2.2 
1. User may have interactively re-ordered clades, integrated information or resources (e.g., images), and customized any available tree view. 
1. Exported tree as Newick archive, with a single "\*.nwk" file, one or more "\*.csv" files, a metadata report, and instructions. 

## Workflow 4: Sample from taxon and save list. 

### issues, recommendations  

### workflow template

1. Specified focal taxon `<taxon_name>`
1. options
   1. Sub-selected by country `<country_name>` using service `<iNat_service_name>` (for more information, see `<iNat_service_information>`). 
   1. Sub-selected by known genomes using service `<ncbi_genome_subset_service_name>` (for more information, see `<ncbi_genome_subset_service_information>`). 
   1. Sub-selected at random. 
1. Created list `<list_name>` of `<list_length>` with description `<list_description>`. 
1. Exported list as text file with one name per line. 

### example 1 

This is the metadata for "US cats" (text file with list) generated by Phylotastic Portal (v. 1.6) on 2016/12/1 by "arlin" from 172.38.98.191. See http://phylo.cs.nmsu.edu:3001/static_pages/about for more information. 

1. Specified focal taxon "Felidae"
   1. Sub-selected by country "USA" using service "Get all Species from a Taxon filtered by country" (for more information, see https://github.com/phylotastic/phylo_services_docs/blob/master/ServiceDescription/PhyloServicesDescription.md#web-service-7). 
1. Created list "US cats" of 8 names with metadata
   * Title : "US cats" 
   * Description : "list of cats found in US"
   * Author : Arlin Stoltzfus
   * Creation date : 2016/12/1
1. Exported list as text file with one name per line. 
