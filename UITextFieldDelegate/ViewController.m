//
//  ViewController.m
//  UITextFieldDelegate
//
//  Created by James O'Connor on 6/20/16.
//  Copyright © 2016 James O'Connor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UISwitch *shouldBeginEditing;
@property (nonatomic, weak) IBOutlet UISwitch *didBeginEditing;
@property (nonatomic, weak) IBOutlet UISwitch *shouldEndEditing;
@property (nonatomic, weak) IBOutlet UISwitch *didEndEditing;
@property (nonatomic, weak) IBOutlet UISwitch *shouldChangeCharacters;
@property (nonatomic, weak) IBOutlet UISwitch *fieldShouldClear;
@property (nonatomic, weak) IBOutlet UISwitch *fieldShouldReturn;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    if(self.shouldBeginEditing.on) {
        NSLog(@"shouldBeginEditing");
    }
    
    return YES;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField {
    if(self.didBeginEditing.on){
        NSLog(@"didBeginEditing");
    }

}

-(BOOL) textFieldShouldEndEditing:(UITextField *)textField {
    if(self.shouldEndEditing.on){
        NSLog(@"shouldEndEditing.on");
    }
    
    return YES;
}

-(void)textFieldDidEndEditing: (UITextField *)textfield {
    if(self.didEndEditing.on){
        NSLog(@"didEndEditing.on");
    }
}

-(BOOL)textField:(UITextField *) textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    if(self.shouldChangeCharacters.on){
        NSLog(@"ChangeCharacters");
    }
    return YES;
}

-(BOOL) textFieldShouldClear:(UITextField *)textField {
    if(self.fieldShouldClear.on){
        NSLog(@"fieldShouldClear");
    }
    return YES;
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField {
    
    if(self.fieldShouldReturn.on) {
    
    NSLog(@"textFieldShouldReturn");
    }
    
    [textField resignFirstResponder];
    
    return YES;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

