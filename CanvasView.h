//
//  CanvasView.h
//  ScrollTable
//
//  Created by nataliepo on 5/17/11.
//  Copyright 2011 Auburn & Ivory. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CanvasView : UIScrollView <UIScrollViewDelegate> {
//    UIImage * image;
    UIView        *imageView;

}
//@property (nonatomic, retain) UIImageView * imageView;
//@property (nonatomic, retain) UIImage * image;
@property (nonatomic, retain) UIView * imageView;
@end
