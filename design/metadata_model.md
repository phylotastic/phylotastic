# draft metadata list 

## comments 

We are trying to develop a metadata model for phylotastic trees.  The purpose for disseminating metadata is two-fold: 
* provide information on sources and methods useful to users for purposes of evaluation
* to provide credit and make resources discoverable by linking a tree to supporting phylogeny studies

To develop and implement this model we need
1. a description of the kinds of metadata required, e.g., MIAPA
1. a serialization format for metadata instances, e.g., json
1. a formal or informal language to capture the semantics of metadata

The last of these is potentially available via the MIAPA ontology.  See the MIAPA checklist 

 https://github.com/miapa/miapa/blob/master/checklist/MIAPA-checklist.md
 
and related resources. 

## list

MC = MIAPA checklist 

* topology ID (MC)
   * induced tree: synth tree ID
   * source tree
      * OT tree ID
      * TreeBASE ID
* gene or species tree (MC)
   * this is a species tree
* It is a tree or a network? (MC)
   * fully connected directed graph with maximum order 1 for edges entering a node
* Is topology rooted or not? (MC)
   * rooted
* The type of consensus if this a consensus topology
   * not consensus.  
* OTUs (MC)
   * sciName, ottID 
   * optional: vernacularName, other IDs
* Branch lengths (MC)
   * options
      * none
      * provided by DateLife
      * provided by BOLD scaling
* Branch support (MC)
* Character matrix (MC)
   * induced tree: not applicable
* Alignment method (MC)
   * induced tree: not applicable
* Tree inference method (MC)
   * induced tree: narrative description of how tree is derived 
