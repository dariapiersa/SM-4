//
//  ViewController.m
//  zadanie4 dp
//
//  Created by student on 23/11/2021.
//  Copyright © 2021 pb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self becomeFirstResponder];
    // Do any additional setup after loading the view.
}
-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if(motion == UIEventSubtypeMotionShake) {
        [self showShakeDetectedAlert];
    }
}

-(BOOL) canBecomeFirstResponder{
    return YES;
}


-(IBAction)showShakeDetectedAlert {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Shake gesture detected!" message:@"Do you want to change the background color?" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *yesButton = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
    }];
    UIAlertAction *noButton = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
    }];
    
    [alertController addAction:yesButton];
    [alertController addAction:noButton];
    [self presentViewController:alertController animated:YES completion:nil];
}

-(IBAction)tapGesture:(UITapGestureRecognizer *)sender {
    _gestureLabel.text = @"Tap detected!";

}

-(IBAction)pinchGesture: (UIPinchGestureRecognizer *) sender {
    _gestureLabel.text = @"Pinch detected!";
}

-(IBAction)swipeGesture: (UISwipeGestureRecognizer *) sender {
    _gestureLabel.text = @"Swipe detected!";
}

-(IBAction)longPressGesture: (UILongPressGestureRecognizer *) sender {
    _gestureLabel.text = @"LongPress detected!";
}

@end
