//
//  UIViewFromXIB.m
//  sochi2014
//
//  Created by Eloi Guzmán on 28/06/13.
//  Copyright (c) 2013 Eloi Guzmán. All rights reserved.
//

#import "T21UIViewFromXIB.h"

@implementation T21UIViewFromXIB


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        NSString * className = NSStringFromClass(self.class);
        NSArray * array = [[NSBundle mainBundle] loadNibNamed:className owner:self options:nil];
        if (array && array.count > 0) {
            self = [array objectAtIndex:0];
            if ([self isKindOfClass:[T21UIViewFromXIB class]]) {
                [self initView];
            }
        }
    }
    return self;
}

-(void)initView
{
    
}


@end

@implementation T21UIViewFromXIBWithViewController

-(void)awakeFromNib
{
    [super awakeFromNib];
    
    NSString * vcName = [self valueForKey:@"vc"];
    Class vcClass = NSClassFromString(vcName);
    self.viewController = [[vcClass alloc]initWithNibName:vcName bundle:nil];
    [self addSubview:self.viewController.view];
}

-(void)initView
{
    
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    self.viewController.view.frame = self.bounds;
}

-(void)removeFromSuperview
{
    [super removeFromSuperview];
    self.viewController = nil;
}

@end
