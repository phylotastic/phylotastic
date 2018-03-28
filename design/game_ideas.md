# ideas for game-ifying phylogeny 

## using trait information 

Being able to supply the user with hints based on trait data would be useful for various kinds of games.  Broad sources of trait information include 
* mammal phenomics data set 
* phenoscape project fish traits
* leaf economics spectrum dataset 
* EOL ranges, images, sizes, habitats, but I suspect most of these are not good for phylogeny
* genomic characters such as rDNA sequences

In the branch placement game, suppose that user sees fox and moose, and wants to place giraffe.  One form of clue would be to go to a trait matrix, pull out all the traits for which (1) there is a value for all 3 species, and (2) the values are not all the same, then display those to the user as a pop-up chart.  

This would be easy to do with molecular data using an rDNA alignment.  

## Build tree with progressive branch placement

This game builds and tests knowledge of phylogenetic relationships for species.  The player is challenged to build a tree in stepwise fashion by placing a new (randomly drawn) species card onto the correct branch.  The species cards have pictures and perhaps some data harvested from EOL.  

See the [Powerpoint slide deck](https://www.dropbox.com/s/iye25wy7husagcj/phylogeny_game.pptx?dl=0) 

Here is the "phylogeny of mammalian orders" version.  

1. Setup.  
   * program picks 26 mammal species cards, one from each taxonomic order of mammals.  
   * program draws 2-species tree, places 2 randomly drawn cards at tips. 
   * program presents player with a 3rd species card, not attached to tree
1. Initial play
   * player drags card for species 3 onto branch a, b, or c.  
   * program responds by placing species 3
      * If player placement correct, program responds with new node and branch attaching species 3
      * If incorrect, that is counted as a miss, and program places species correctly.  Alternatively, program could offer a new card.  

**Continued play.**  The process above continues.  With each species placed, there are now B + 2 branches, making the choice of placement more detailed and challenging with each play.  The game ends when the tree with 26 mammals is finished, or the user has accumuated too many misses.  

**Options** There are a lot of possibilities here.  This could be made simpler and more visual for younger players, or more sophisticated for university students.  

## Navigate tree of life to destination

If we can solve the problem of how to supply useful clues over the whole tree of life, we could set up a navigation game where you start at some random place on the tree (e.g., giant squid or lady beetle) and you have to navigate your way back to human by making a series of binary choices at various branch points.  In the case of starting with a squid, the player would have to traverse up the tree to an early animal ancestor, then back down to human.  

This is easy if you can see the whole tree, but I'm imagining a game where all you see is the next node, which appears as an intersection on your path, a fork in the road ahead of you.  If you are going backward in time and you hit an intersection, one choice goes further back in time, and the other goes forward.  If you are going forward in time and you hit an intersection, you can go forward right or forward left.   

Each intersection can have various signs, e.g., "mammals ahead in 50 MY".  The whole trick is to put the content on these signs that makes the game meaningful to play. 

## competitive territory capture game

Any number of players.  Each player draws a hand of species cards, perhaps 6 or 8 of them.  A pre-set tree topology is supplied, such as a ladder with 20 branches or a balanced binary tree with 32 branches.  Players take turns placing their cards on the tree.  The object is to use up your cards.  An incorrect placement is a lost turn.  If this is done using a computer program, the program can draw the tree and determine whether the placements are correct.  

The strategy to win is (1) don't make mistakes and (2) play to the advantage of your hand.   If you have a phylogenetically narrow hand, place the most distant species on opposite sides of the root, so that your opponent has no place to put cards that are out-groups to the cards in your hand.  If you have a broad hand, place it as narrowly as possible so that your opponent will not have enough ingroup branches
