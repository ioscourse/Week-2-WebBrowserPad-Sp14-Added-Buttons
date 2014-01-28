//
//  Week_2_WebBrowserPad_Sp14ViewController.h
//  Week 2 WebBrowserPad Sp14
//
//  Created by Charles Konkol on 1/17/14.
//  Copyright (c) 2014 Chuck Konkol. All rights reserved.
//

//Challenge
//1) Add <UIWebViewDelegate> to interface on .h
//2) Add buttons to view
//3) Add Actions and Outlets to Buttons
//4) Add self.webview.delegate = self; to - (void)viewDidLoad
//5) Add new function for homepage
//6) Add - (void)webViewDidFinishLoad:(UIWebView *)webview along with code for back and forward enabled code to .m
//7) Add code to buttons

#import <UIKit/UIKit.h>
//add <UIWebViewDelegate> to use - (void)webViewDidFinishLoad:(UIWebView *)webview in .m

@interface Week_2_WebBrowserPad_Sp14ViewController : UIViewController <UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UITextField *txtURL;
- (IBAction)btnGo:(id)sender;
@property (strong, nonatomic) IBOutlet UIWebView *webview;


//Add action buttons for events
- (IBAction)btnBack:(id)sender;
- (IBAction)btnHome:(id)sender;
- (IBAction)btnForward:(id)sender;

//Add Outlets to enable/disable
@property (strong, nonatomic) IBOutlet UIButton *btnBack;

@property (strong, nonatomic) IBOutlet UIButton *btnHome;
@property (strong, nonatomic) IBOutlet UIButton *btnForward;


@end
