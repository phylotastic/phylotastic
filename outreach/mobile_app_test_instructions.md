# Mobile App Tester Instructions 

The Phylotastic Trees-to-Go app allows you to (1) take a photo of a sign (e.g., museum, zoo, hallway poster), (2) find scientific names by OCR (Optical character recognition), adding them to a list, (3) repeat the two previous steps to build up a list, and (4) get a tree for the list from OpenTree.  Multiple lists can be maintained.  The app stores lists but not trees (to save a tree, click on "?" in the app or read Tips & Tricks below).  

## What we are asking of you 

This is an initial implementation, without any frills.  Tree-visualization is very basic, but the ability to capture names from signage is quite good.  Our goal is to find out whether anyone would find this useful, so that we can decide whether to continue development, and in what direction.  

We encourage you to be open-minded about using this.  One of our team members captured 266 names from a photo of a printed page of genera (~12-pt font) taped to a wall (see it [here](https://github.com/phylotastic/Phylotastic_Mobile_Application/blob/master/test/images/hard/listseedplants.jpg)).

## How to install 

You will receive an invitation from Apple to install TestFlight, which allows us to distribute our app to selected users. Updates will be done through TestFlight. 

1.  Find TestFlight in the app store and install it just like you would install any app.
2.  Use the TestFlight app to install the Phylotastic mobile app. 
3.  Launch the app just like you would launch any other app.  Sign in using your google credentials.  You must have a google account to use the app. 

## How to give feedback 

Help us to stay focused on the big picture-- what we need most is to know who would use this app?  How would they use it?  What features would enhance its power and useability?   

Here are 3 relatively easy ways to give feedback
1. (preferred, real-time, interactive) use our public chatroom at https://gitter.im/phylotastic/phylotastic
   * sign up for github and gitter if you haven't already
   * type "@\all, i have a { comment | question | feature request | bug report } on the mobile app"
   * wait for someone to reply, then tell us-- we'll get the info and fill out a ticket
2. use the "issues" page at https://github.com/phylotastic/Phylotastic_Mobile_Application/issues
   * Search to see if the issue has been posted already (add terms to the "Filters" box at left and click "Filters").  
      * if the issue already exists, add clarifying comments, or just a "+1"
      * if the issue doesn't exist, click the green "New Issue" button at right
   * Even if the issue exists already, say something!  This helps us to know what's important.  
3. just email one of us, and we'll fill out a ticket for you

## Tips and tricks 

* The swipe-to-delete feature (for editing lists) works but doesn't depict the swiping very gracefully.  You'll know it worked when you get an alert box asking if you want to delete a name.

* If you want to look at your tree outside the app, or share it with someone, go to the tree view (Home --> List --> Get Tree), select "Export", then "View in Browser".  This sends the tree (inside a URL) to a display service.  You can then use whatever sharing capabilities your browser has.  In iOS, this means you can press one button to share via Text, Mail, Twitter, Facebook, Google+, etc. 
