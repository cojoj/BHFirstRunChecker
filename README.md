BHFirstRunChecker
=================

This is the one-method class which **allows you to execute some code on the first run of your application and on the another run.**  
  
The purpose of creating such a class is the fact that I needed thing like this in some of my projects.  
For example, would want to:

* Create database from the external source at the first run
* Show login view at the first run
* Determine which view should be displayed 

===

The usege of this class is easy-peasy:

1. **Copy** `BHFirstRunChecker.h` and `BHFirstRunChecker.h` to your project.
2. **Use** `#import "BHFirstRunChecker.h"`
3. **Call** `[BHFirstRunChecker executeBlockAtTheFirstRun:^firstRunBlock atAnotherRun:^anotherRunBlock]` anywhere you want it.

===

Created by [@cojoj](https://twitter.com/cojoj)
