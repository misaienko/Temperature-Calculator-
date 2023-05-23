//
//  ViewController.h
//  TemperatureCalculator
//
//  Created by Admin on 25/04/2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textfield;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *outputLabel;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segControl;

@property (weak, nonatomic) IBOutlet UILabel *enterLabel;


- (IBAction)convert:(id)sender;

- (IBAction)switchConversion:(id)sender;


@end

