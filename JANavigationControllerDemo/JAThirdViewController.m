/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 *  JAThirdViewController.m
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

#import "JAThirdViewController.h"
#import "JANavigationController.h"

@interface JAThirdViewController ()

- (IBAction)didPressBackButton:(id)sender;
- (IBAction)didPressPopToRootButton:(id)sender;

@end

@implementation JAThirdViewController

@synthesize customNavigationBarBackgroundView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self)
    {        
        CGRect customNavigationBarBackgroundViewFrame = CGRectMake(0,
                                                                   0,
                                                                   [UIScreen mainScreen].bounds.size.width,
                                                                   kNAVIGATION_BAR_HEIGHT);
        
        self.customNavigationBarBackgroundView = [[UIView alloc] initWithFrame:customNavigationBarBackgroundViewFrame];
        
        self.customNavigationBarBackgroundView.backgroundColor = [UIColor colorWithRed:0.4 green:0 blue:0 alpha:1];
    }
    return self;
}

- (IBAction)didPressBackButton:(id)sender
{
    [self.customNavigationController backItemTapped];
}

- (IBAction)didPressPopToRootButton:(id)sender
{
    [self.customNavigationController popToRootViewControllerAnimated:YES];
}

@end