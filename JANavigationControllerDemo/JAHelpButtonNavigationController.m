/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 *  JAHelpButtonNavigationController.m
 *
 *  Copyright (c) 2012 Josh Avant
 *
 *  Permission is hereby granted, free of charge, to any person obtaining a
 *  copy of this software and associated documentation files (the "Software"),
 *  to deal in the Software without restriction, including without limitation
 *  the rights to use, copy, modify, merge, publish, distribute, sublicense,
 *  and/or sell copies of the Software, and to permit persons to whom the
 *  Software is furnished to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included in
 *  all copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 *  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 *  DEALINGS IN THE SOFTWARE.
 *
 *  If we meet some day, and you think this stuff is worth it, you can buy me a
 *  beer in return.
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

#import "JAHelpButtonNavigationController.h"
#import "JANavigationController+ForSubclassEyesOnly.h"

@interface JAHelpButtonNavigationController ()

- (void)didPressCustomHelpButton;

@end

@implementation JAHelpButtonNavigationController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *customHelpButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [customHelpButton setTitle:@"?" forState:UIControlStateNormal];
    [customHelpButton sizeToFit];
    
    CGRect customHelpButtonFrame = customHelpButton.frame;
    customHelpButtonFrame.origin.x = self.navigationBarViewContainer.frame.size.width - customHelpButtonFrame.size.width;
    customHelpButtonFrame.origin.y = (self.navigationBarViewContainer.frame.size.height - customHelpButtonFrame.size.height) / 2.f;
    customHelpButton.frame = customHelpButtonFrame;
    
    [customHelpButton addTarget:self
                         action:@selector(didPressCustomHelpButton)
               forControlEvents:UIControlEventTouchUpInside];
    
    [self.navigationBarViewContainer addSubview:customHelpButton];
}

- (void)didPressCustomHelpButton
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Persistent Button" 
                                                    message:@"This is an example of a persisent button."
                                                   delegate:nil
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil];
    
    [alert show];
}

@end
