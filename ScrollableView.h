//
//  ScrollableView.h
//  ScrollTable
//
//  Created by nataliepo on 5/16/11.
//  Copyright 2011 Auburn & Ivory. All rights reserved.
//

#import <UIKit/UIKit.h>


//@interface ScrollableView : UIView {
@interface ScrollableView : UIViewController <UIApplicationDelegate, UIScrollViewDelegate> {
    UIScrollView * scrollView;
    
}   

@property (nonatomic, retain) UIScrollView * scrollView;
-(id)initScrollableView;


@end
