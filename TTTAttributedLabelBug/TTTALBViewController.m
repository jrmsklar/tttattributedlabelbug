//
//  TTTALBViewController.m
//  TTTAttributedLabelBug
//
//  Created by Josh Sklar on 1/8/14.
//  Copyright (c) 2014 Detroit Labs. All rights reserved.
//

#import "TTTALBViewController.h"
#import <TTTAttributedLabel/TTTAttributedLabel.h>

@interface TTTALBViewController ()

@property (strong, nonatomic) UILabel *uiLabel;
@property (strong, nonatomic) TTTAttributedLabel *tttAttributedLabel;

@end

@implementation TTTALBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGFloat width = self.view.bounds.size.width;
    CGFloat height = 30;
    
    self.uiLabel = [[UILabel alloc]
                                 initWithFrame:CGRectMake(0, height, width, height)];
    [self.uiLabel setText:@"This is a UILabel"];
    [self.view addSubview:self.uiLabel];
    
    self.tttAttributedLabel = [[TTTAttributedLabel alloc]
                                    initWithFrame:CGRectMake(0, height * 2, width, height)];
    [self.tttAttributedLabel setText:@"This is a TTTAttributedLabel"];
    [self.view addSubview:self.tttAttributedLabel];
    
    UIButton *changeToBold = [[UIButton alloc]
                              initWithFrame:CGRectMake(0, height * 3, width, height)];
    [changeToBold setTitle:@"Change font to bold" forState:UIControlStateNormal];
    [changeToBold addTarget:self
                     action:@selector(didTapChangeToBold:)
           forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:changeToBold];
    
    UIButton *changeToItalic = [[UIButton alloc]
                                initWithFrame:CGRectMake(0, height * 4, width, height)];
    [changeToItalic setTitle:@"Change font to italic" forState:UIControlStateNormal];
    [changeToItalic addTarget:self
                       action:@selector(didTapChangeToItalic:)
             forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:changeToItalic];
}

- (void)didTapChangeToBold:(UIButton*)sender
{
    UIFont *font = [UIFont boldSystemFontOfSize:15];
    [self.uiLabel setFont:font];
    [self.tttAttributedLabel setFont:font];
}

- (void)didTapChangeToItalic:(UIButton*)sender
{
    UIFont *font = [UIFont italicSystemFontOfSize:15];
    [self.uiLabel setFont:font];
    [self.tttAttributedLabel setFont:font];
}s

@end
