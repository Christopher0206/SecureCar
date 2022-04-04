//
//  ViewController.m
//  Secure Car
//
//  Created by Christopher Luis Esparza on 31/03/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated{
    self.imvSplash.alpha = 0;
    
    self.imvSplash.frame =
    CGRectMake(self.imvSplash.frame.origin.x, -200, self.imvSplash.frame.size.width, self.imvSplash.frame.size.height);
    
    
    [UIView animateWithDuration:4 animations:^{
        self.imvSplash.alpha = 1;
        self.imvSplash.frame =
        CGRectMake(self.imvSplash.frame.origin.x, self.view.frame.size.height/2 - self.imvSplash.frame.size.height/2, self.imvSplash.frame.size.width, self.imvSplash.frame.size.height);
    } completion:^(BOOL finished) {
        [self performSegueWithIdentifier:@"sgJuego" sender:nil];
    }];
}


@end
