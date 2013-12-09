//
//  RFPasswordGenerator.m
//  RFPasswordGenerator
//
//  Created by Ricardo Funk on 11/25/13.
//  Copyright (c) 2013 Ricardo Funk. All rights reserved.
//

#import "RFPasswordGenerator.h"

@implementation RFPasswordGenerator

// Helper function for appending random chars from a supplied alphabet
// And then advances the pointer
char *appendRandom(char *str, char *alphabet, int amount) {
    for (int i = 0; i < amount; i++) {
        int r = arc4random() % strlen(alphabet);
        *str = alphabet[r];
        str++;
    }
    
    return str;
}

+(NSString *)generateLowSecurityPassword{
    // Get slider values
    int letters  = 6;
    int capitals = 0;
    int digits   = 0;
    int symbols  = 0;
    int length   = letters + capitals + digits + symbols;
    
    // Build the password using C strings - for speed
    char *cPassword = calloc(length + 1, sizeof(char));
    char *ptr       = cPassword;
    
    cPassword[length - 1] = '\0';
    
    char *lettersAlphabet = "abcdefghijklmnopqrstuvwxyz";
    ptr = appendRandom(ptr, lettersAlphabet, letters);
    
    char *capitalsAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    ptr = appendRandom(ptr, capitalsAlphabet, capitals);
    
    char *digitsAlphabet = "0123456789";
    ptr = appendRandom(ptr, digitsAlphabet, digits);
    
    char *symbolsAlphabet = "!@#$%*[];?()";
    ptr = appendRandom(ptr, symbolsAlphabet, symbols);
    
    // Shuffle the string!
    for (int i = 0; i < length; i++) {
        int  r    = arc4random() % length;
        char temp = cPassword[i];
        cPassword[i] = cPassword[r];
        cPassword[r] = temp;
    }
    
    return [NSString stringWithCString:cPassword encoding:NSUTF8StringEncoding];
}

+(NSString *)generateMediumSecurityPassword{
    // Get slider values
    int letters  = 4;
    int capitals = 3;
    int digits   = 3;
    int symbols  = 0;
    int length   = letters + capitals + digits + symbols;
    
    // Build the password using C strings - for speed
    char *cPassword = calloc(length + 1, sizeof(char));
    char *ptr       = cPassword;
    
    cPassword[length - 1] = '\0';
    
    char *lettersAlphabet = "abcdefghijklmnopqrstuvwxyz";
    ptr = appendRandom(ptr, lettersAlphabet, letters);
    
    char *capitalsAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    ptr = appendRandom(ptr, capitalsAlphabet, capitals);
    
    char *digitsAlphabet = "0123456789";
    ptr = appendRandom(ptr, digitsAlphabet, digits);
    
    char *symbolsAlphabet = "!@#$%*[];?()";
    ptr = appendRandom(ptr, symbolsAlphabet, symbols);
    
    // Shuffle the string!
    for (int i = 0; i < length; i++) {
        int  r    = arc4random() % length;
        char temp = cPassword[i];
        cPassword[i] = cPassword[r];
        cPassword[r] = temp;
    }
    
    return [NSString stringWithCString:cPassword encoding:NSUTF8StringEncoding];
}

+(NSString *)generateHighSecurityPassword{
    
    int letters  = 6;
    int capitals = 3;
    int digits   = 3;
    int symbols  = 4;
    int length   = letters + capitals + digits + symbols;
    
    // Build the password using C strings - for speed
    char *cPassword = calloc(length + 1, sizeof(char));
    char *ptr       = cPassword;
    
    cPassword[length - 1] = '\0';
    
    char *lettersAlphabet = "abcdefghijklmnopqrstuvwxyz";
    ptr = appendRandom(ptr, lettersAlphabet, letters);
    
    char *capitalsAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    ptr = appendRandom(ptr, capitalsAlphabet, capitals);
    
    char *digitsAlphabet = "0123456789";
    ptr = appendRandom(ptr, digitsAlphabet, digits);
    
    char *symbolsAlphabet = "!@#$%*[];?()";
    ptr = appendRandom(ptr, symbolsAlphabet, symbols);
    
    // Shuffle the string!
    for (int i = 0; i < length; i++) {
        int  r    = arc4random() % length;
        char temp = cPassword[i];
        cPassword[i] = cPassword[r];
        cPassword[r] = temp;
    }
    
    
    return [NSString stringWithCString:cPassword encoding:NSUTF8StringEncoding];
}

@end
