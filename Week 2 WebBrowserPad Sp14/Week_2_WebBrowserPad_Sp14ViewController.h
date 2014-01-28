//
//  Week_2_WebBrowserPad_Sp14ViewController.h
//  Week 2 WebBrowserPad Sp14
//
//  Created by Charles Konkol on 1/17/14.
//  Copyright (c) 2014 Chuck Konkol. All rights reserved.
//

#import <UIKit/UIKit.h>
//add <UIWebViewDelegate> to use - (void)webViewDidFinishLoad:(UIWebView *)webview in .m
@interface Week_2_WebBrowserPad_Sp14ViewController : UIViewController <UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UITextField *txtURL;
- (IBAction)btnGo:(id)sender;
@property (strong, nonatomic) IBOutlet UIWebView *webview;

//Challenge

//Add action buttons for events
- (IBAction)btnBack:(id)sender;
- (IBAction)btnHome:(id)sender;
- (IBAction)btnForward:(id)sender;

//Add Outlets to enable/disable
@property (strong, nonatomic) IBOutlet UIButton *btnBack;

@property (strong, nonatomic) IBOutlet UIButton *btnHome;
@property (strong, nonatomic) IBOutlet UIButton *btnForward;


@end
