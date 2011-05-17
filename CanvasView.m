//
//  CanvasView.m
//  ScrollTable
//
//  Created by nataliepo on 5/17/11.
//  Copyright 2011 Auburn & Ivory. All rights reserved.
//

#import "CanvasView.h"



@implementation CanvasView


@synthesize imageView;
//@synthesize image;

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame])) {
        self.showsVerticalScrollIndicator = NO;
        self.showsHorizontalScrollIndicator = NO;
        self.bouncesZoom = NO;
        self.decelerationRate = UIScrollViewDecelerationRateFast;
        self.delegate = self;        
    }
    return self;
}

- (void)dealloc
{
    [imageView release];
//    [image release];
    [super dealloc];
}


#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
//- (void)loadView
- (void)drawRect:(CGRect)rect
{    
    imageView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 800, 800)];
    UIImageView * imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"twinpeaks28.jpg"]];

    
    [imageView addSubview:imgView];
    
    [self addSubview:imageView];
    
    
}


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
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
