//
//  TTTALBViewController.m
//  TTTAttributedLabelBug
//
//  Created by Josh Sklar on 1/8/14.
//  Copyright (c) 2014 Detroit Labs. All rights reserved.
//

#import "TTTALBViewController.h"
#import <TTTAttributedLabel/TTTAttributedLabel.h>

#define kWidth      self.view.bounds.size.width
#define kHeight     30

@interface TTTALBViewController ()

@property (strong, nonatomic) UILabel *uiLabel;
@property (strong, nonatomic) TTTAttributedLabel *tttAttributedLabel;

- (void)didTapChangeToBold:(UIButton*)sender;
- (void)didTapChangeToItalic:(UIButton*)sender;
- (void)didTapChangeText:(UIButton*)sender;

- (void)setupUILabel;
- (void)setupTTTAttributedLabel;
- (void)setupButtons;

@end

@implementation TTTALBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupUILabel];
    [self setupTTTAttributedLabel];
    [self setupButtons];
}

#pragma mark - Internal methods

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
}

- (void)didTapChangeText:(UIButton*)sender
{
    [self.uiLabel setText:@"New text for the UILabel"];
    [self.tttAttributedLabel setText:@"New text for the TTTAttributedLabel"];
}

- (void)setupUILabel
{
    self.uiLabel = [[UILabel alloc]
                    initWithFrame:CGRectMake(0, kHeight, kWidth, kHeight)];
    [self.uiLabel setText:@"This is a UILabel"];
    [self.view addSubview:self.uiLabel];
}

- (void)setupTTTAttributedLabel
{
    self.tttAttributedLabel = [[TTTAttributedLabel alloc]
                               initWithFrame:CGRectMake(0, kHeight * 2, kWidth, kHeight)];
    [self.tttAttributedLabel setText:@"This is a TTTAttributedLabel"];
    [self.view addSubview:self.tttAttributedLabel];
}

- (void)setupButtons
{
    UIButton *changeToBold = [[UIButton alloc]
                              initWithFrame:CGRectMake(0, kHeight * 3, kWidth, kHeight)];
    [changeToBold setTitle:@"Change font to bold" forState:UIControlStateNormal];
    [changeToBold addTarget:self
                     action:@selector(didTapChangeToBold:)
           forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:changeToBold];
    
    UIButton *changeToItalic = [[UIButton alloc]
                                initWithFrame:CGRectMake(0, kHeight * 4, kWidth, kHeight)];
    [changeToItalic setTitle:@"Change font to italic" forState:UIControlStateNormal];
    [changeToItalic addTarget:self
                       action:@selector(didTapChangeToItalic:)
             forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:changeToItalic];
    
    UIButton *changeText = [[UIButton alloc]
                            initWithFrame:CGRectMake(0, kHeight * 5, kWidth, kHeight)];
    [changeText setTitle:@"Change the text" forState:UIControlStateNormal];
    [changeText addTarget:self
                   action:@selector(didTapChangeText:)
         forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:changeText];
}

@end
