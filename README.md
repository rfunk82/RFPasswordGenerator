RFPasswordGenerator
===================

I found this (http://neilang.com/entries/how-to-write-a-password-generator/) great article about writing your own Password Generator so I decided to create one.

![Password Generator](http://i.imgur.com/22nshMQ.png)

How To Get Started
==================

1.  Drag and drop RFPasswordGenerator Class into your project.
2.  #import "RFPasswordGenerator.h"
3.  Use 3 different security options:
  
     NSString *myHighSecurityPassword = [RFPasswordGenerator generateHighSecurityPassword];

     NSString *myMediumSecurityPassword = [RFPasswordGenerator generateMediumSecurityPassword];
     
     NSString *myLowSecurityPassword = [RFPasswordGenerator generateLowSecurityPassword]

Enjoy!
Follow me on Twitter @rfunk82
