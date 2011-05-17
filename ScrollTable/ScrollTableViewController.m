//
//  ScrollTableViewController.m
//  ScrollTable
//
//  Created by nataliepo on 5/16/11.
//  Copyright 2011 Auburn & Ivory. All rights reserved.
//

#import "ScrollTableViewController.h"
#import "ScrollableViewController.h"

@implementation ScrollTableViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


-(void)displayGridView:(id) sender {
    NSLog(@"[ScrollTableViewController::displayGridView]\n");
    
    ScrollableViewController * scrollableView = [[ScrollableViewController alloc] initScrollableView];
    [self.navigationController pushViewController:scrollableView animated:YES];
    
    [scrollableView release];
}


#pragma mark - View lifecycle

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
