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
    isComma = FALSE;
    _lableOutput.numberOfLines = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clearPressed:(id)sender {
    operatorPressed = FALSE;
    firstEntry = NULL;
    secondEntry = NULL;
    line = NULL;
    op = ' ';
    _lableOutput.text=NULL;
    isComma = FALSE;
}

- (IBAction)multiplyPressed:(id)sender {
    operatorPressed = TRUE;
    if(op != '='){
        op = '*';
    
        line = [NSString stringWithFormat:@"%@ %c ",firstEntry,op];
        _lableOutput.text = line;
    }
}

- (IBAction)minusPressed:(id)sender {
    operatorPressed = TRUE;
    if(op != '='){
        op = '-';
        
        line = [NSString stringWithFormat:@"%@ %c ",firstEntry,op];
        _lableOutput.text = line;
    }
}

- (IBAction)plusPressed:(id)sender {
    operatorPressed = TRUE;
    if(op != '='){
        op = '+';
        
        line = [NSString stringWithFormat:@"%@ %c ",firstEntry,op];
        _lableOutput.text = line;
    }
}

- (IBAction)equallyPressed:(id)sender {
    float result=3;
    
        if(op!='='){
            if(op=='*'){
                result = [firstEntry floatValue] * [secondEntry floatValue];
            }
            else if(op =='-'){
                result = [firstEntry floatValue] - [secondEntry floatValue];
            }
            else if(op =='+'){
                result = [firstEntry floatValue] + [secondEntry floatValue];
            }
            
            line = [NSString stringWithFormat:@"%@ = %f",line,result];
            _lableOutput.text = line;
            op = '=';

        }
    }

- (IBAction)commaPressed:(id)sender {
    if(op!='=' && isComma==FALSE){
        if(firstEntry!=NULL){
            firstEntry = [NSString stringWithFormat: @"%@.",firstEntry];
            line = firstEntry;
            
            _lableOutput.text = line;
        }
        else{
            secondEntry = [NSString stringWithFormat: @"%@.",secondEntry];
            line = secondEntry;
            
            _lableOutput.text = line;
        }
        isComma = TRUE;
    }
}

-(IBAction)numbersPressed:(UIButton *)sender{
    long tag = sender.tag;
    if(op != '='){
        if(operatorPressed == FALSE){
            if(firstEntry == NULL){
                firstEntry = [NSString stringWithFormat:@"%li",tag];
                line = firstEntry;
                _lableOutput.text = line;
            }
            else{
                firstEntry = [NSString stringWithFormat:@"%@%li",firstEntry,tag];
                line = firstEntry;
                _lableOutput.text = line;
            }
        }
        else{
            if(secondEntry == NULL){
                secondEntry = [NSString stringWithFormat:@"%li",tag];
                line = [NSString stringWithFormat:@"%@%@",line,secondEntry];
                _lableOutput.text = line;
            }
            else{
                secondEntry = [NSString stringWithFormat:@"%li",tag];
                line = [NSString stringWithFormat:@"%@%@",line,secondEntry];
                _lableOutput.text = line;
            }
        }
    }
}
@end
