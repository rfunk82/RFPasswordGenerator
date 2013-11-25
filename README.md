RFPasswordGenerator
===================

I found this (http://neilang.com/entries/how-to-write-a-password-generator/) great article about writing your own Password Generator so I decided to create one.

How To Get Started
==================

1.  Drag and drop RFPasswordGenerator Class into your project.
2.  #import "RFPasswordGenerator.h"
3.  Use 3 different security options:
  
     NSString *myPassword = [RFPasswordGenerator generateHighSecurityPassword]
     NSString *myPassword = [RFPasswordGenerator generateMediumSecurityPassword]
     NSString *myPassword = [RFPasswordGenerator generateLowSecurityPassword]

Enjoy!
