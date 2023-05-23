//
//  ViewController.m
//  TemperatureCalculator
//
//  Created by Admin on 25/04/2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)switchConversion:(id)sender {
    if (self.segControl.selectedSegmentIndex == 0) {
        // trigers the data depending which segment slelcted and which conversion should be made
        self.enterLabel.text = @"Enter Fahrenheit";
        self.textfield.text = @"";
        //every time it updates - text filled - no text
        self.outputLabel.text = @"0 Celsius";
        
    }
    if (self.segControl.selectedSegmentIndex == 1) {
        self.enterLabel.text = @"Enter Celsius";
        self.textfield.text = @"";
        //every time it updates - text filled - no text
        self.outputLabel.text = @"0 Fahrenheit";
        
    }
    
}
- (IBAction)convert:(id)sender {
    if (self.segControl.selectedSegmentIndex == 0) {
        
        double fahrenheit = [self.textfield.text doubleValue];
        double celsius = (fahrenheit - 32)/ 1.8;
        
        self.outputLabel.text = [NSString stringWithFormat:@"%4.2f Celsius", celsius];
        // f - Why?
        if (celsius > 120){
            self.imageView.image = [UIImage imageNamed:@"Temp9"];
            
        } else if (celsius > 100){
            self.imageView.image = [UIImage imageNamed:@"Temp8"];
        } else if (celsius > 80){
            self.imageView.image = [UIImage imageNamed:@"Temp7"];
        } else if (celsius > 60){
            self.imageView.image = [UIImage imageNamed:@"Temp6"];
        } else if (celsius > 40){
            self.imageView.image = [UIImage imageNamed:@"Temp5"];
        } else if (celsius > 20){
            self.imageView.image = [UIImage imageNamed:@"Temp4"];
        } else if (celsius > 0){
            self.imageView.image = [UIImage imageNamed:@"Temp3"];
        } else if (celsius > -20){
            self.imageView.image = [UIImage imageNamed:@"Temp2"];
        } else if (celsius < 20){
            self.imageView.image = [UIImage imageNamed:@"Temp1"];
        }
    }
    if(self.segControl.selectedSegmentIndex == 1) {
        double celsius = [self.textfield.text doubleValue];
        double fahrenheit = celsius* 1.8 + 32;
        self.outputLabel.text = [NSString stringWithFormat:@"%4.2f Fahrenheit", fahrenheit];
        
        if (fahrenheit > 180){
            self.imageView.image = [UIImage imageNamed:@"Temp9"];
        } else if (fahrenheit > 160){
            self.imageView.image = [UIImage imageNamed:@"Temp8"];
        } else if (fahrenheit > 140){
            self.imageView.image = [UIImage imageNamed:@"Temp7"];
        } else if (fahrenheit > 120){
            self.imageView.image = [UIImage imageNamed:@"Temp6"];
        } else if (fahrenheit > 100){
            self.imageView.image = [UIImage imageNamed:@"Temp5"];
        } else if (fahrenheit > 80){
            self.imageView.image = [UIImage imageNamed:@"Temp4"];
        } else if (fahrenheit > 60){
            self.imageView.image = [UIImage imageNamed:@"Temp3"];
        } else if (fahrenheit > 40){
            self.imageView.image = [UIImage imageNamed:@"Temp2"];
        } else if (fahrenheit < 40){
            self.imageView.image = [UIImage imageNamed:@"Temp1"];
            
            
            
        }
        // makes keyboard disappear
        [self resignFirstResponder];
        
    }
}
@end
