pagesize-checker
================

A bash script that loads a user-specified array of URLs and outputs a CSV of rendered page sizes.

Requirements:
=============
- <a href="http://phantomjs.org/">PhantomJS</a>
- <a href="http://yslow.org/phantomjs/">YSlow for PhantomJS</a>

Be sure to have the yslow.js file in the same directory as the sizetest.sh bash script when it is run.  

To specify the URLs to gather page sizes for, edit the pagesize.csv file, with each URL on its own line.

That's all you need!  Just execute the script and then wait for it to finish.  After it's done, check out the resulting pagesize.csv file.
You can import it directly into Excel in case you want to sort it from largest to smallest.
