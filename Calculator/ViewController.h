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
    double x, y;
    BOOL enterFlag, yFlag;
    NSInteger operation;
    IBOutlet UISwitch *switchEngineer;
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


@end

