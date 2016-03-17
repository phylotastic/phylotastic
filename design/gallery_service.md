# Phylotastic gallery service and web UI

Not finished 

## Concept and purpose

A Phylotastic Gallery service provides a repository with an API to allow users (almost always via apps) to manage their phylotastic trees.  The purposes of the gallery are
* to archive the data & metadata of each tree for the user to access anywhere, anytime
* to centralize the user's productions across multiple originating apps
* to provide a platform for social networking around phylogenies
* to allow an assessment of user activity

Although the gallery-service API will transmit data and not visualizations, it is natural to imagine the service being paired with a generalized web UI that provides a graphical interface.

## Example user story and workflow 

### user story 1

User's mobile app stores the user's account information.  When user visits museum with mobile app, creates "Museum visit" list, and generates tree, this is automatically sent to the user's gallery, along with metadata.  The user returns home, uses laptop to log in to a web UI that accesses the gallery, edits the tree by adding 1 species and removing 1 species, creates a custom visualization to print, save (e.g., for an educational purpose) and share (via social media). 

### user story 2

User has proprietary phylotastic birding app that links to vendor's proprietary phylotastic gallery.  User maintains bird lists for each major trip, and a combined life list, and birding app acquires phylotastic trees and stores them in gallery.  

### user story 3 

Educator creates a 

## Minimal features 

* API that allows write access to gallery
   * add tree with metadata
   * delete tree and metadata
* API that allows read access gallery information
   * access list of trees
   * search list of trees by metadata values

## Minimal implementation 

To implement this fully, we need to begin with the concept of a user account.  Each user who wishes to have a gallery needs an account. 

The minimal implementation does not require sending images.  I think the smartest version of the gallery concept is that this is not actually a gallery of images.  The gallery should display the trees using its own viewer.  

Therefore, each account needs to store trees with their metadata.  

### Security features 

Offering a way to upload content may create security holes, and users may exploit the system to share pirated content.  The two most obvious precautionary steps to take are: 
* validate the content as Newick, NEXUS or NeXML
* only accept content from registered phylotastic apps

The way to make the second approach ironclad is to identify registered apps with a key.  

## Additional features 

* allow user to delete a tree
* allow user to annotate a tree


service that users will access with either a web front-end, or with the gallery view of a phylotastic app. 





