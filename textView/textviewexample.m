//
//  textviewexample.m
//  textView
//
//  Created by mx1614 on 3/23/19.
//  Copyright © 2019 ludy. All rights reserved.
//

#import "textviewexample.h"

@implementation textviewexample

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.font = [NSFont fontWithName:@"arial" size:14];
        self.automaticQuoteSubstitutionEnabled = NO;
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (void)insertText:(id)string replacementRange:(NSRange)replacementRange
{
    [super insertText:string replacementRange:replacementRange];
    if ([string isEqualToString:@"\""]) {
        [super insertText:@" " replacementRange:replacementRange];
        [super insertText:@"\"" replacementRange:replacementRange];
        [super moveBackward:self];
    }
    if ([string isEqualToString:@"("]) {
      
        [super insertText:@")" replacementRange:replacementRange];
       
        [super moveBackward:self];

    }
    if ([string isEqualToString:@"{"]) {
        [super insertNewline:self];
        [super insertTab:self];
        [super insertNewline:self];
        [super insertText:@"}" replacementRange:replacementRange];
        [super moveBackward:self];
        [super moveBackward:self];
    }

}

@end
