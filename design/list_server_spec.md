# Species List Server (SLS) specification

## Purpose 
The list server provides programmatic access to lists of species.  

## Use cases 
### Examples for the web UI.  
The immediate need is to supply lists for the phylotastic web toolbox.  One of the workflows that we want to support is to get a tree for a pre-composed list of species.  The pre-composed lists will come from the SLS.  

We have some examples to use in github already
* https://github.com/phylotastic/phylotastic-portal/blob/master/examples/Taxa_med_metadata_sammen.csv

### Checklists
There are many kinds of checklists.  In fact, there is an actual online journal called "Check List" (http://biotaxa.org/CL).  
* IUCN has lists of endangered, threatened, etc. categories of species. 
* here is a list of protected and rare species in Ireland: http://www.npws.ie/sites/default/files/general/Listed_species_checklist_Dec12.pdf
* access to Galapagos Islands checklists here: http://www.darwinfoundation.org/datazone/checklists/

### Bird lists

Many birders keep lists of all the birds they have seen.  We might be able to coordinate with mobile birding apps.  The apps could post to the SLS, which would make the list accessible to other tools such as phylotastic tools.  

## Specification 

Minimal properties of a species list 
* unique identifier 
* display name 
* list of species 
* metadata 
   * description 
   * author
   * date 
   * source 

Additional properties that may be useful 
* list properties 
   * statement of purpose 
   * taxonomic authority - if same for all species 
* element properties 
   * taxonomic authority - if different for different elements of list 

## Applicable standards 

"Darwin Core Archive" is the clearly applicable data standard for checklists and other kinds of species lists.  The "archive" means that the format includes separate files.  There is a "core data file", recommended to be in csv format, which can be very simple, e.g., 

taxonID,vernacularName,taxonRank<br>
123,"Physeter catodon Linnaeus","species"<br>
124,"Eschrictius gibbous Erxleben","species"<br>
125,"Grampus griseus Cuvier", "species"<br>

Then there are other possible files that extend this.  We will probably want to have a metadata file that explains the format of the core file along with metadata on the list.  

Sources
* http://links.gbif.org/gbif_dwc-a_how_to_guide_en_v1
* http://www.gbif.org/resource/80647
