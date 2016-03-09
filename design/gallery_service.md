# Phylotastic gallery 

Not finished 

## Concept and purpose

The Phylotastic Gallery allows users to manage their phylotastic trees.  The purposes of the gallery are
* to archive the data & metadata of each tree for the user to access anywhere, anytime
* to centralize the user's productions, regardless of which app creates them
* to provide more features than the mobile app easily allows
* to provide a platform for social networking around phylogenies
* to allow us to assess user activity

## User story and workflow 



## Minimal features 

* allow user to send tree with metadata to gallery
* allow user to view trees in gallery

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





