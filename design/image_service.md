# Species image service 

## Status

Initial draft.  Needs discussion and further clarification. 

## Concept, purpose, and anticipated use

The image service returns images in response to species names.  The main purpose of this service is to allow applications to augment species trees by displaying images at the tips.  This is expected to be an important service, because displaying images will be the default behavior for applications targeting students or the general public. 

## Background 

We need to either build up content ourselves (burdensome), or rely on a source such as EOL.  See below.  Some other possible sources
* wikispecies - apparently does not have an API, but images could be scraped by a robot looking for an image with the title "<species>" in a thumbnail div. 
* [phylopic](http://phylopic.org/) - phylopic has an [api](http://phylopic.org/api/), and there are Python and R wrappers for this (see the bottom of the [api](http://phylopic.org/api/) page)
* note that there are multiple birding apps with nice images but they likely won't want to share with us. 
* [leafsnap](http://leafsnap.com/) has images of leaves (and often flower and fruit) for all 185 north american trees, plus hundreds (more?) of other species.  

### EOL's api

EOL has an URL API that returns json information about a species, including taxonomic information and associated data and objects.  Here is a honeybee example:

http://eol.org/api/pages/1.0.json?batch=false&id=1045608&images=1&videos=0&sounds=0&maps=0&text=2&iucn=false&subjects=overview&licenses=all&details=true&common_names=true&synonyms=true&references=true&taxonomy=true&vetted=0&cache_ttl=

At the top level of the json, there may be a "dataObjects" list, and this is where the images will be.  We want a dataObject with a top-level attribute  
* dataType" = "http://purl.org/dc/dcmitype/StillImage",

And what we want to harvest from StillImage dataOjects are (at least)
* "license", e.g., "http://creativecommons.org/licenses/by/2.0/"
* "rightsHolder", e.g., "John Doe"
* "eolThumbnailURL", e.g., "http://media.eol.org/content/2016/02/04/11/18963_98_68.jpg",

We might also want
* "mediaURL", e.g., "https://farm9.staticflickr.com/8308/7894625598_ccba4881c2_o.jpg"
* "eolMediaURL", e.g., "http://media.eol.org/content/2016/02/04/11/18963_orig.jpg",

## Minimal features 

* returns thumbnail in response to binomial 
* returns image metadata including attribution or license as required
* provides informative error messages 

## Additional features 

* returns link to full-size image
* if species is not found, substitutes silhouette of class or order
* 

## Challenges 

### Format and size

The first 3 thumbnails I got from EOL were 3 different sizes: 
* 98 X 65 
* 93 X 68
* 98 X 55

One approach is to pick a maximum frame of Wmax x Hmax (e.g., 120 x 80), and then implement the following rules 
* if image is smaller, align horizontal=left and vertical=center in frame
* if image W > Wmax, crop left and right equally to fit
   * more sophisticated: resize image
* if image H > Hmax, crop above and below equally to fit
   * more sophisticated: resize image

### Satisfying license requirements 

**cc-by** says "You must give appropriate credit, provide a link to the license, and indicate if changes were made."

The simplest way to satisfy this is to create a legend strip on each image with tiny text indicating: "Unmodified image by <person> (<license link>)" where license URL = EOL:license, and person = EOL:rightsHolder

### Size issues 

A thumbnail jpg in the size range above is 2000 to 3000 bytes in size. Assume an average of 2.5K.  This means that 1000 of them are 2.5 Mb, and 100,000 are 250 Mb.  A mobile device could easily cache thumbnails for the top 10,000 or 100,000 species, but users are going to think twice about downloading our app if it takes up hundreds of megabytes. 

## Resources

http://eol.org/api

