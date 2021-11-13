//
//  ViewController.m
//  Basic 1 - Objective C
//
//  Created by Tiara Mahardika on 13/11/21.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *answerImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //hide image
    _answerImageView.hidden = YES;
    // Do any additional setup after loading the view.
}
- (IBAction)questionTapped:(id)sender {
     //making alert
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"HEY" message:@"AM I PRETTY?" preferredStyle:UIAlertControllerStyleAlert];
     //making action for alert
    UIAlertAction *yesAction = [UIAlertAction actionWithTitle:@"YES" style: UIAlertActionStyleDefault handler:^(UIAlertAction * action){
        //if yes
        self->_answerImageView.image = [UIImage imageNamed:@"yesyesyes.jpeg"];
    }];
    UIAlertAction *noAction = [UIAlertAction actionWithTitle:@"NO" style: UIAlertActionStyleCancel handler:^(UIAlertAction * action){
        //if no
        self->_answerImageView.image = [UIImage imageNamed:@"WRONG.jpeg"];
        
    }];
    //unhide image
    _answerImageView.hidden = NO;
    
    //add action to alert
    [alert addAction:yesAction];
    [alert addAction:noAction];
    
    //present
    [self presentViewController:alert animated:true completion:nil];
}


@end
