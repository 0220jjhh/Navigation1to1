//
//  ViewController.m
//  Navigation1t1
//
//  Created by SWUComputer on 2016. 9. 26..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "ViewController.h"
#import "OrderViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize pizzaChicken;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    OrderViewController *vc = [segue destinationViewController];
    
    NSString *ordered = [pizzaChicken titleForSegmentAtIndex:[pizzaChicken selectedSegmentIndex]];
    vc.title = ordered;
    ordered = [ordered stringByAppendingString:@", 맞나요?"];
    
    vc.info = [NSString stringWithFormat:@"감사합니다!! \n 주문내역 : %@", ordered];
                         
}

@end
