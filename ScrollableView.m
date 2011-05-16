//
//  ScrollableView.m
//  ScrollTable
//
//  Created by nataliepo on 5/16/11.
//  Copyright 2011 Auburn & Ivory. All rights reserved.
//

#import "ScrollableView.h"


@implementation ScrollableView

@synthesize scrollView;


-(id)initScrollableView {
    NSLog(@"[ScrollableView::initScrollableView]\n");
    
    self = [super init];
    if (self) {
        scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 200.0, 200.0)];
        [self.view addSubview:scrollView];
                      
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [scrollView release];
    [super dealloc];
}

/*
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}
 */

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    scrollView.contentSize = CGSizeMake(500, 500);

    UIImageView * imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"twinpeaks28.jpg"]];
    
    
    [self.view addSubview:imgView];
    
    [imgView release];
    


}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
