RFPasswordGenerator
===================

I found this (http://neilang.com/entries/how-to-write-a-password-generator/) great article about writing your own Password Generator so I decided to create one.

![Password Generator](http://i.imgur.com/22nshMQ.png)

How To Get Started
==================

1.  Drag and drop RFPasswordGenerator Class into your project.
2.  `#import "RFPasswordGenerator.h"`
3.  Use 3 different security options:
  
     `NSString *myHighSecurityPassword = [RFPasswordGenerator generateHighSecurityPassword];`

     `NSString *myMediumSecurityPassword = [RFPasswordGenerator generateMediumSecurityPassword];`
     
     `NSString *myLowSecurityPassword = [RFPasswordGenerator generateLowSecurityPassword]`

Created By
==========

Ricardo Funk ([@rfunk82](http://www.twitter.com/rfunk82))

License
=======

> This is licensed under an MIT License:

> Copyright (c) 2013 Ricardo Funk

> Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

> The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.

