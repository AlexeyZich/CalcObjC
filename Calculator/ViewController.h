//
//  ViewController.h
//  Calculator
//
//  Created by Алексей Ермолаев on 26.07.17.
//  Copyright © 2017 Алексей Ермолаев. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate> {
    
    IBOutlet UILabel *displayLabel;
    IBOutlet UIButton *plusButton;
    IBOutlet UIButton *minusButton;
    IBOutlet UIButton *multiplyButton;
    IBOutlet UIButton *divideButton;
    IBOutlet UIButton *plusminusButton;
    IBOutlet UIButton *resButton;
    IBOutlet UIButton *oneButton;
    IBOutlet UIButton *twoButton;
    IBOutlet UIButton *threeButton;
    IBOutlet UIButton *fourButton;
    IBOutlet UIButton *fiveButton;
    IBOutlet UIButton *sixButton;
    IBOutlet UIButton *sevenButton;
    IBOutlet UIButton *eightButton;
    IBOutlet UIButton *nineButton;
    IBOutlet UIButton *aButton;
    IBOutlet UIButton *bButton;
    IBOutlet UIButton *cButton;
    IBOutlet UIButton *dButton;
    IBOutlet UIButton *eButton;
    IBOutlet UIButton *fButton;
    IBOutlet UIButton *convert;
    double x, y;
    BOOL enterFlag, yFlag;
    NSInteger operation;
    IBOutlet UISwitch *switchEngineer;
    __weak IBOutlet UILabel *translateTo;
}

@property (nonatomic,retain) NSMutableArray *source;

- (IBAction)clear:(id)sender;
- (IBAction)clearAll:(id)sender;

- (IBAction)digit:(id)sender;
- (IBAction)operation:(id)sender;

- (IBAction)inverseSign:(id)sender;
@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UILabel *setNotation;
- (IBAction)transfer:(id)sender;

- (IBAction)changeEngineer:(id)sender;

- (IBAction)translationNumberSystem:(id)sender;

@end

