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
{
    NSArray* _pickerData;
    NSMutableDictionary *dict;
//    NSDictionary* selectedTranslate;
}
@end

@implementation ViewController
@synthesize source;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _pickerData = @[
  @[@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16"],
    @[@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16"]
    ];
    self.picker.dataSource = self;
    self.picker.delegate = self;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewWillAppear:(BOOL)animated {
    [switchEngineer setOn:NO animated:YES];
    if (switchEngineer.isOn == NO) {
        [self.picker setUserInteractionEnabled:NO];
        [self.picker setAlpha:.6];
    }
    else {
        [self.picker setUserInteractionEnabled:YES];
        [self.picker setAlpha:1];
    }
    [self.picker selectRow:8 inComponent:0 animated:NO];
    [self.picker selectRow:8 inComponent:1 animated:NO];
}
// The number of columns of data
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    NSString *prev;
    dict = [[NSMutableDictionary alloc] init];
    if(component == 0) {
        [dict setValue: _pickerData[component][row] forKey:@"fromTranslate"];
        prev = _pickerData[component][row];
        NSLog(@"%@", prev);
        
        
    } else {
        [dict setValue: _pickerData[component][row] forKey:@"toTranslate"];
    }
    self.setNotation.text = _pickerData[component][row];
    NSLog(@"Dic %@", dict);
}


// The number of rows of data
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 15;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return _pickerData[component][row];
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

- (IBAction)transfer:(id)sender {
    NSLog(@"Dictionary %@", dict);
}

- (IBAction)changeEngineer:(id)sender {
    switchEngineer = (UISwitch *)sender;
    if (switchEngineer.isOn) {
        [self.picker setUserInteractionEnabled:YES];
        [self.picker setAlpha:1];
    } else {
        [self.picker setUserInteractionEnabled:NO];
        [self.picker setAlpha:.6];
    }
}

@end
