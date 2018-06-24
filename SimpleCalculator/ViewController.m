//
//  ViewController.m
//  SimpleCalculator
//
//  Created by Анюта on 23.06.18.
//  Copyright © 2018 Анюта. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    operatorPressed = FALSE;
    firstEntry = NULL;
    secondEntry = NULL;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clearPressed:(id)sender {
}

- (IBAction)multiplyPressed:(id)sender {
}

- (IBAction)minusPressed:(id)sender {
}

- (IBAction)plusPressed:(id)sender {
}

- (IBAction)equallyPressed:(id)sender {
}

- (IBAction)commaPressed:(id)sender {
}

-(IBAction)numbersPressed:(UIButton *)sender{
    long tag = sender.tag;
    
    if(operatorPressed == FALSE){
        if(firstEntry == NULL){
            firstEntry = [NSString stringWithFormat:@"%li",tag];
            _lableOutput.text = firstEntry;
        }
        else{
            firstEntry = [NSString stringWithFormat:@"%@%li",firstEntry,tag];            
        }
    }
    
}
@end
