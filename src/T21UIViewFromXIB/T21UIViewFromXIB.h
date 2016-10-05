//
//  UIViewFromXIB.h
//  sochi2014
//
//  Created by Eloi Guzmán on 28/06/13.
//  Copyright (c) 2013 Eloi Guzmán. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface T21UIViewFromXIB : UIView

-(void)initView;

@end


@interface T21UIViewFromXIBWithViewController : UIView

@property (nonatomic,strong) UIViewController * viewController;
@property (nonatomic) NSString * vc;

-(void)initView;

@end
