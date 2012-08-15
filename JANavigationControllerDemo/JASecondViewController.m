/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 *  JASecondViewController.m
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

#import "JASecondViewController.h"
#import "JAThirdViewController.h"
#import "JANavigationController.h"

@interface JASecondViewController ()

- (IBAction)didPressPushButton:(id)sender;
- (IBAction)didPressPopButton:(id)sender;

@end

@implementation JASecondViewController

- (IBAction)didPressPushButton:(id)sender
{
    JAThirdViewController *thirdViewController = [[JAThirdViewController alloc] initWithNibName:@"JAThirdViewController" bundle:nil];
    
    [self.customNavigationController pushViewController:thirdViewController animated:YES];
}

- (IBAction)didPressPopButton:(id)sender
{
    [self.customNavigationController popViewControllerAnimated:YES];
}
@end
