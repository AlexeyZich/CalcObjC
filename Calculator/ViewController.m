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
}
@end

@implementation ViewController
@synthesize source;

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *_value= [[NSUserDefaults standardUserDefaults] stringForKey:@"turnOnOff"];
    
    if([_value isEqualToString:@"YES"]) {
        switchEngineer.on = YES;
        plusButton.enabled = NO;
        minusButton.enabled = NO;
        resButton.enabled = NO;
        multiplyButton.enabled = NO;
        divideButton.enabled = NO;
        plusminusButton.enabled = NO;
        twoButton.enabled = NO;
        threeButton.enabled = NO;
        fourButton.enabled = NO;
        fiveButton.enabled = NO;
        sixButton.enabled = NO;
        sevenButton.enabled = NO;
        eightButton.enabled = NO;
        nineButton.enabled = NO;
        aButton.enabled = NO;
        bButton.enabled = NO;
        cButton.enabled = NO;
        dButton.enabled = NO;
        eButton.enabled = NO;
        fButton.enabled = NO;
    } else {
        switchEngineer.on = NO;
        plusButton.enabled = YES;
        minusButton.enabled = YES;
        resButton.enabled = YES;
        multiplyButton.enabled = YES;
        divideButton.enabled = YES;
        plusminusButton.enabled = YES;
        twoButton.enabled = YES;
        threeButton.enabled = YES;
        fourButton.enabled = YES;
        fiveButton.enabled = YES;
        sixButton.enabled = YES;
        sevenButton.enabled = YES;
        eightButton.enabled = YES;
        nineButton.enabled = YES;
        aButton.enabled = NO;
        bButton.enabled = NO;
        cButton.enabled = NO;
        dButton.enabled = NO;
        eButton.enabled = NO;
        fButton.enabled = NO;
    }
    
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
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *_value= [[NSUserDefaults standardUserDefaults] stringForKey:@"turnOnOff"];
    self.setNotation.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"fromT"];
    [translateTo setText:[[NSUserDefaults standardUserDefaults] objectForKey:@"toT"]];
    if([_value isEqualToString:@"YES"]) {
        switchEngineer.on = YES;
        plusButton.enabled = NO;
        minusButton.enabled = NO;
        resButton.enabled = NO;
        multiplyButton.enabled = NO;
        divideButton.enabled = NO;
        plusminusButton.enabled = NO;
        twoButton.enabled = NO;
        threeButton.enabled = NO;
        fourButton.enabled = NO;
        fiveButton.enabled = NO;
        sixButton.enabled = NO;
        sevenButton.enabled = NO;
        eightButton.enabled = NO;
        nineButton.enabled = NO;
        aButton.enabled = NO;
        bButton.enabled = NO;
        cButton.enabled = NO;
        dButton.enabled = NO;
        eButton.enabled = NO;
        fButton.enabled = NO;
        NSString *_valueTranslate = [[NSUserDefaults standardUserDefaults] objectForKey:@"fromT"];
        int aValue = [_valueTranslate intValue];
//        NSLog(@"aValue %i", aValue);
        switch (aValue) {
            case 3:
                twoButton.enabled = YES;
                break;
            case 4:
                twoButton.enabled = YES;
                threeButton.enabled = YES;
                break;
            case 5:
                twoButton.enabled = YES;
                threeButton.enabled = YES;
                fourButton.enabled = YES;
                break;
            case 6:
                twoButton.enabled = YES;
                threeButton.enabled = YES;
                fourButton.enabled = YES;
                fiveButton.enabled = YES;
                break;
            case 7:
                twoButton.enabled = YES;
                threeButton.enabled = YES;
                fourButton.enabled = YES;
                fiveButton.enabled = YES;
                sixButton.enabled = YES;
                break;
            case 8:
                twoButton.enabled = YES;
                threeButton.enabled = YES;
                fourButton.enabled = YES;
                fiveButton.enabled = YES;
                sixButton.enabled = YES;
                sevenButton.enabled = YES;
                break;
            case 9:
                twoButton.enabled = YES;
                threeButton.enabled = YES;
                fourButton.enabled = YES;
                fiveButton.enabled = YES;
                sixButton.enabled = YES;
                sevenButton.enabled = YES;
                eightButton.enabled = YES;
                break;
            case 10:
                twoButton.enabled = YES;
                threeButton.enabled = YES;
                fourButton.enabled = YES;
                fiveButton.enabled = YES;
                sixButton.enabled = YES;
                sevenButton.enabled = YES;
                eightButton.enabled = YES;
                nineButton.enabled = YES;
                break;
            case 11:
                twoButton.enabled = YES;
                threeButton.enabled = YES;
                fourButton.enabled = YES;
                fiveButton.enabled = YES;
                sixButton.enabled = YES;
                sevenButton.enabled = YES;
                eightButton.enabled = YES;
                nineButton.enabled = YES;
                aButton.enabled = YES;
                break;
            case 12:
                twoButton.enabled = YES;
                threeButton.enabled = YES;
                fourButton.enabled = YES;
                fiveButton.enabled = YES;
                sixButton.enabled = YES;
                sevenButton.enabled = YES;
                eightButton.enabled = YES;
                nineButton.enabled = YES;
                aButton.enabled = YES;
                bButton.enabled = YES;
                break;
            case 13:
                twoButton.enabled = YES;
                threeButton.enabled = YES;
                fourButton.enabled = YES;
                fiveButton.enabled = YES;
                sixButton.enabled = YES;
                sevenButton.enabled = YES;
                eightButton.enabled = YES;
                nineButton.enabled = YES;
                aButton.enabled = YES;
                bButton.enabled = YES;
                cButton.enabled = YES;
                break;
            case 14:
                twoButton.enabled = YES;
                threeButton.enabled = YES;
                fourButton.enabled = YES;
                fiveButton.enabled = YES;
                sixButton.enabled = YES;
                sevenButton.enabled = YES;
                eightButton.enabled = YES;
                nineButton.enabled = YES;
                aButton.enabled = YES;
                bButton.enabled = YES;
                cButton.enabled = YES;
                dButton.enabled = YES;
                break;
            case 15:
                twoButton.enabled = YES;
                threeButton.enabled = YES;
                fourButton.enabled = YES;
                fiveButton.enabled = YES;
                sixButton.enabled = YES;
                sevenButton.enabled = YES;
                eightButton.enabled = YES;
                nineButton.enabled = YES;
                aButton.enabled = YES;
                bButton.enabled = YES;
                cButton.enabled = YES;
                dButton.enabled = YES;
                eButton.enabled = YES;
                break;
            case 16:
                twoButton.enabled = YES;
                threeButton.enabled = YES;
                fourButton.enabled = YES;
                fiveButton.enabled = YES;
                sixButton.enabled = YES;
                sevenButton.enabled = YES;
                eightButton.enabled = YES;
                nineButton.enabled = YES;
                aButton.enabled = YES;
                bButton.enabled = YES;
                cButton.enabled = YES;
                dButton.enabled = YES;
                eButton.enabled = YES;
                fButton.enabled = YES;
                break;
            default:
                break;
        }
        
    }
    else {
        switchEngineer.on = NO;
        plusButton.enabled = YES;
        minusButton.enabled = YES;
        resButton.enabled = YES;
        multiplyButton.enabled = YES;
        divideButton.enabled = YES;
        plusminusButton.enabled = YES;
        twoButton.enabled = YES;
        threeButton.enabled = YES;
        fourButton.enabled = YES;
        fiveButton.enabled = YES;
        sixButton.enabled = YES;
        sevenButton.enabled = YES;
        eightButton.enabled = YES;
        nineButton.enabled = YES;
        aButton.enabled = NO;
        bButton.enabled = NO;
        cButton.enabled = NO;
        dButton.enabled = NO;
        eButton.enabled = NO;
        fButton.enabled = NO;
    }
    NSNumber *row1 = [defaults objectForKey:@"selectedFrom"];
    NSNumber *row2 = [defaults objectForKey:@"selectedTo"];
    NSInteger row3 = [row1 integerValue];
    NSInteger row4 = [row2 integerValue];
    if (switchEngineer.isOn == NO) {
        [self.picker setUserInteractionEnabled:NO];
        [self.picker setAlpha:.6];
    }
    else {
        [self.picker setUserInteractionEnabled:YES];
        [self.picker setAlpha:1];
    }
    [self.picker selectRow:row3 inComponent:0 animated:NO];
    [self.picker selectRow:row4 inComponent:1 animated:NO];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    NSString *prev;
    dict = [[NSMutableDictionary alloc] init];
    if(component == 0) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [dict setValue: _pickerData[component][row] forKey:@"fromTranslate"];
        prev = _pickerData[component][row];
        [defaults setObject:prev forKey:@"fromT"];
        [defaults setInteger:row forKey:@"selectedFrom"];
        
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [dict setValue: _pickerData[component][row] forKey:@"toTranslate"];
        prev = _pickerData[component][row];
        [defaults setObject:prev forKey:@"toT"];
        [defaults setInteger:row forKey:@"selectedTo"];
    }
//    self.setNotation.text = _pickerData[component][row];
    self.setNotation.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"fromT"];
     [translateTo setText:[[NSUserDefaults standardUserDefaults] objectForKey:@"toT"]];
    NSLog(@"Dic %@", dict);
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 15;
}

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
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:x forKey:@"digits"];
    
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
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:switchEngineer.isOn ? @"YES" : @"NO" forKey:@"turnOnOff"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    if (switchEngineer.isOn) {
        [self.picker setUserInteractionEnabled:YES];
        [self.picker setAlpha:1];
    } else {
        [self.picker setUserInteractionEnabled:NO];
        [self.picker setAlpha:.6];
    }
}

- (IBAction)translationNumberSystem:(id)sender {
    NSString *_valueFrom = [[NSUserDefaults standardUserDefaults] objectForKey:@"fromT"];
    NSString *_valueTranslate = [[NSUserDefaults standardUserDefaults] objectForKey:@"toT"];
    NSNumber *digits = [[NSUserDefaults standardUserDefaults] objectForKey:@"digits"];
    int val = [_valueFrom intValue];
    if (val == 10) {
        NSString *s = [self valueFrom:_valueFrom toTranslate:_valueTranslate insertDigits:digits];
//        NSLog(@"%@", s);
//        [displayLabel setText:str];
        [displayLabel setText:s];
    }
//    else {
//        int n = [_valueTranslate intValue];
//        int toDecimal = 10;
//        NSString *str = [digits stringValue];
//        int len = [str length];
//        for (int i = len - 1; i >= 0; i--) {
//            NSLog(@"%@", [str substringFromIndex:i]);
//        }
//    }
}

-(NSString *)valueFrom:(NSString *)str1 toTranslate:(NSString *)str2 insertDigits:(NSNumber *)dig {
    int n = [str2 intValue];
    int d = [dig intValue];
    NSString *result = @"";
    NSString *s;
    int r;
    do {
        r = d % n;
        if(r > 9) {
            switch (r) {
                case 10:
                    s = @"a";
                    break;
                case 11:
                    s = @"b";
                    break;
                case 12:
                    s = @"c";
                    break;
                case 13:
                    s = @"d";
                    break;
                case 14:
                    s = @"e";
                    break;
                case 15:
                    s = @"f";
                    break;
                default:
                    break;
            }
        } else {
            s = [NSString stringWithFormat:@"%i", r];
        }
        result = [result stringByAppendingString:s];
        d = d / n;
    } while (d > 0);
    result = [self reverseString:result];
    NSLog(@"%@", result);
    return result;
}

-(NSString *)reverseString:(NSString *)string{
    NSString *reverseString = [NSString new];
    for (NSInteger i=string.length-1; i >- 1; i--) {
        reverseString=[reverseString stringByAppendingFormat:@"%c",[string characterAtIndex:i]];
    }
    return reverseString;
}

@end
