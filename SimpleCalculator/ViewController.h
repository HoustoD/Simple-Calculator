//
//  ViewController.h
//  SimpleCalculator
//
//  Created by Анюта on 23.06.18.
//  Copyright © 2018 Анюта. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    bool operatorPressed;
    char op;
    NSString *firstEntry;
    NSString *secondEntry;
}

@property (weak, nonatomic) IBOutlet UILabel *lableOutput;

- (IBAction)clearPressed:(id)sender;
- (IBAction)multiplyPressed:(id)sender;
- (IBAction)minusPressed:(id)sender;
- (IBAction)plusPressed:(id)sender;
- (IBAction)equallyPressed:(id)sender;
- (IBAction)commaPressed:(id)sender;

-(IBAction)numbersPressed:(UIButton *)sender;

@end

