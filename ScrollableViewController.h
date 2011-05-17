//
//  ScrollableView.h
//  ScrollTable
//
//  Created by nataliepo on 5/16/11.
//  Copyright 2011 Auburn & Ivory. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CanvasView;


@interface ScrollableViewController : UIViewController <UIApplicationDelegate, UIScrollViewDelegate> {
    UIScrollView * scrollView;
    CanvasView * canvasView;
    
}   

@property (nonatomic, retain) UIScrollView * scrollView;
@property (nonatomic, retain) CanvasView * canvasView;

-(id)initScrollableView;


@end
