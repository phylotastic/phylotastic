# ideas for game-ifying phylogeny 

## Place species card to grow tree

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

'''Continued play.'''  The process above continues.  With each species placed, there are now B + 2 branches, making the choice of placement more detailed and challenging with each play.  The game ends when the tree with 26 mammals is finished, or the user has accumuated too many misses.  

## competitive territory capture game

Any number of players.  Each player draws a hand of species cards, perhaps 6 or 8 of them.  A pre-set tree topology is supplied, such as a ladder with 20 branches or a balanced binary tree with 32 branches.  Players take turns placing their cards on the tree.  The object is to use up your cards.  An incorrect placement is a lost turn.  If this is done using a computer program, the program can draw the tree and determine whether the placements are correct.  

The strategy to win is (1) don't make mistakes and (2) play to the advantage of your hand.   If you have a phylogenetically narrow hand, place the most distant species on opposite sides of the root, so that your opponent has no place to put cards that are out-groups to the cards in your hand.  If you have a broad hand, place it as narrowly as possible so that your opponent will not have enough ingroup branches
