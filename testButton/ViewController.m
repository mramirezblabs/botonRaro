//
//  ViewController.m
//  testButton
//
//  Created by mario ramirez on 12/10/16.
//  Copyright © 2016 mario ramirez. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonBlue;
@property (weak, nonatomic) IBOutlet UIView *blueView;
@property (weak, nonatomic) IBOutlet UIButton *buttonBlueTop;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _buttonBlue.layer.cornerRadius = 50;
    self.buttonBlue.clipsToBounds = YES;
    
    _buttonBlueTop.layer.cornerRadius = 50;
    self.buttonBlueTop.clipsToBounds = YES;
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonBluePressed:(id)sender {
    
    
    float buttonWidth = _buttonBlueTop.frame.size.width;
    float buttonHeight = _buttonBlueTop.frame.size.height;
    float viewWidth = self.blueView.frame.size.width;
    float viewHeight = self.blueView.frame.size.height;

//    _buttonBlue.frame = CGRectMake((viewWidth - buttonWidth) * 0.5, viewHeight - buttonHeight - 20, buttonWidth, buttonHeight);
//    
    // scale the button down before the animation...
    _buttonBlue.transform = CGAffineTransformMakeScale(0.1, 0.1);
    
    // now animate the view...
    [UIView animateWithDuration:1.0
                          delay:0.0
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         _buttonBlue.transform = CGAffineTransformMakeScale(5.0, 5.0);

                  
                     }
                     completion:nil];
    _buttonBlueTop.layer.backgroundColor = _blueView.layer.backgroundColor;
    
}
- (IBAction)buttonBlueOff:(id)sender {
     _buttonBlue.transform = CGAffineTransformMakeScale(1.0, 1.0);
    _buttonBlueTop.layer.backgroundColor = _buttonBlue.layer.backgroundColor;
}

-(void)test:(id)sender
{
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
