//
//  ViewController.h
//  Calculator
//
//  Created by Алексей Ермолаев on 26.07.17.
//  Copyright © 2017 Алексей Ермолаев. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    IBOutlet UILabel *displayLabel;
    double x, y;
    BOOL enterFlag, yFlag;
    NSInteger operation;
    
}

- (IBAction)clear:(id)sender;
- (IBAction)clearAll:(id)sender;

- (IBAction)digit:(id)sender;
- (IBAction)operation:(id)sender;

-(IBAction)inverseSign:(id)sender;

@end

