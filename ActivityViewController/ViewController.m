//
//  ViewController.m
//  ActivityViewController
//
//  Created by Pavankumar Arepu on 29/10/2015.
//  Copyright (c) 2015 PPAM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIActivityViewController *activityVC;
}
@property (weak, nonatomic) IBOutlet UITextView *myTextView;
- (IBAction)showActivity:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
   //
//    let activityViewController = UIActivityViewController(activityItems: [self.noteTextview.text], applicationActivities: nil)
//    
//    activityViewController.excludedActivityTypes = [UIActivityTypeMail]
//    
//    self.presentViewController(activityViewController, animated: true, completion: nil)
    
    
}

- (IBAction)showActivity:(id)sender
{

    
    NSArray *myArray = [[NSArray alloc]initWithObjects:self.myTextView.text, nil];
    
   // NSArray *types = [[NSArray alloc]initWithObjects:UIActivityTypeMail, nil];
    
    // Dispose of any resources that can be recreated.
    activityVC = [[UIActivityViewController alloc]initWithActivityItems:myArray applicationActivities:nil];
    
   // activityVC.excludedActivityTypes = types;
    
    [self presentViewController:activityVC animated:YES completion:nil];
    
    

}
@end
