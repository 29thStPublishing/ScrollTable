//
//  ScrollableView.m
//  ScrollTable
//
//  Created by nataliepo on 5/16/11.
//  Copyright 2011 Auburn & Ivory. All rights reserved.
//

#import "ScrollableViewController.h"
#import "CanvasView.h"

@implementation ScrollableViewController

@synthesize scrollView, canvasView;


-(id)initScrollableView {
    NSLog(@"[ScrollableView::initScrollableView]\n");
    
    self = [super init];
    if (self) {
        // Create the view!
        
    }
    return self;
}

/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
 */

- (void)dealloc
{
    [canvasView release];
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


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    [super loadView];
    
    //CGRect wholeWindow = [window bounds];
    
    CGRect bounds = [[UIScreen mainScreen] applicationFrame];
    
    scrollView = [[UIScrollView alloc] initWithFrame:bounds];
    
    // Make a view twice as large as the window
    CGRect reallyBigRect;
    
    // Do math here to get actual size out
    // even without forced aspect, we should have a max width & height for these images
    reallyBigRect.origin = CGPointZero;
    reallyBigRect.size.width = bounds.size.width * 2.0;
    reallyBigRect.size.height = bounds.size.height * 2.0;
    [scrollView setContentSize:reallyBigRect.size];
    
    canvasView = [[CanvasView alloc] initWithFrame:reallyBigRect];

    [canvasView setBackgroundColor:[UIColor clearColor]];
    [scrollView addSubview:canvasView];
    

    
    scrollView.contentSize =  canvasView.frame.size;
    
    [scrollView setMinimumZoomScale:0.2];
    [scrollView setMaximumZoomScale:10];
    [scrollView setDelegate:self];
    
    scrollView.bounces = NO;
    
    self.view = scrollView;
}


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    scrollView.contentSize = CGSizeMake(500, 500);

    UIImageView * imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"twinpeaks28.jpg"]];
    
    
    [self.view addSubview:imgView];
    
    [imgView release];

}
 */


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
