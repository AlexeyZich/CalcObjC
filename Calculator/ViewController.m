//
//  ViewController.m
//  Calculator
//
//  Created by Алексей Ермолаев on 26.07.17.
//  Copyright © 2017 Алексей Ермолаев. All rights reserved.
//

#import "ViewController.h"

enum {
    OP_PLUS = 1001,
    OP_MINUS = 1002,
    OP_MULTI = 1003,
    OP_DIV = 1004
};

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)clear:(id)sender {
    
    if(yFlag) {
        x = 0;
        [self calcScreen];
    }
    
}

- (IBAction)clearAll:(id)sender {
    
    x = 0;
    y = 0;
    enterFlag = NO;
    yFlag = NO;
    
    [self calcScreen];
    
}

- (IBAction)digit:(id)sender {
    
    if(enterFlag) {
        y = x;
        x = 0;
        enterFlag = NO;
    }
    x = (10.0f * x) + [sender tag];
    
    
    [self calcScreen];
}

- (IBAction)operation:(id)sender {
    
    if(!enterFlag && yFlag) {
        
        switch (operation) {
            case OP_PLUS:
                x = y + x;
                break;
                
            case OP_MINUS:
                x = y - x;
                break;
                
            case OP_MULTI:
                x = y * x;
                break;
                
            case OP_DIV:
                x = y / x;
                break;
                
            default:
                break;
        }
    }
    
    y = x;
    
    operation = [sender tag];
    
    enterFlag = YES;
    yFlag = YES;
    
    [self calcScreen];
    
}

-(IBAction)inverseSign:(id)sender {
    
    x = -x;
    
    [self calcScreen];
    
}

- (void)calcScreen {
    
    NSString *str = [NSString stringWithFormat: @"%g", x];
    [displayLabel setText:str];
    

    
}

@end
