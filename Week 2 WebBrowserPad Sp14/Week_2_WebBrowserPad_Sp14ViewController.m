//
//  Week_2_WebBrowserPad_Sp14ViewController.m
//  Week 2 WebBrowserPad Sp14
//
//  Created by Charles Konkol on 1/17/14.
//  Copyright (c) 2014 Chuck Konkol. All rights reserved.
//

#import "Week_2_WebBrowserPad_Sp14ViewController.h"

@interface Week_2_WebBrowserPad_Sp14ViewController ()

@end

@implementation Week_2_WebBrowserPad_Sp14ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //add delegate to webview so all uiwebview actions can be used
  self.webview.delegate = self;
    
    
    //Load RVC homepage
    [self homepage];
}

//created a function to call homepage
- (void) homepage
{
    NSURL *url = [NSURL URLWithString:@"http://rockvalleycollege.edu"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [self.webview loadRequest:req];
}
- (BOOL) checkwebsite
{
    //if starts with http
    if ([self.txtURL.text rangeOfString:@"http"].location==NSNotFound)
    {
        self.txtURL.text = [[NSString alloc] initWithFormat:@"http://%@",self.txtURL.text];
        NSLog(@"%@", self.txtURL.text);
    }
    NSURL *scriptUrl = [NSURL URLWithString:self.txtURL.text];
    NSData *data = [NSData dataWithContentsOfURL:scriptUrl];
    if (data)
    {
        NSLog(@"Device is connected to the internet and website exist");
        return YES;
    }
    else
    {
        NSLog(@"Device is not connected to the internet or website doesn't exist");
        return NO;
    }
    
}

//Fires AFTER a website loads
- (void)webViewDidFinishLoad:(UIWebView *)webview
{
    if([self.webview canGoForward]) {
        [self.btnForward setEnabled:YES];
    } else {
        [self.btnForward  setEnabled:NO];
    }
    
    if([self.webview canGoBack]) {
        [self.btnBack setEnabled:YES];
    } else {
        [self.btnBack setEnabled:NO];
    }
    self.txtURL.text = self.webview.request.URL.absoluteString;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnGo:(id)sender {
    //Send textbox URL to Browser
    
    //Check id URL is valid and exists
    
   if([self checkwebsite] == NO)
    {
        UIAlertView *alert =
        [[UIAlertView alloc] initWithTitle:@"No Web Page Found"
                                   message:@"Please try again!"
                                  delegate:self
                         cancelButtonTitle:@"OK"
                         otherButtonTitles:nil];
        [alert show];
       
        //select all text
        [self.txtURL selectAll:self];
        //set focus on txtURL
        [self.txtURL becomeFirstResponder];
    }
    else
    {
        NSURL *url = [NSURL URLWithString:self.txtURL.text];
        NSURLRequest *req;
        req = [NSURLRequest requestWithURL:url];
        [self.webview loadRequest:req];
    }

}
- (IBAction)btnBack:(id)sender {
    [self.webview goBack];
}

- (IBAction)btnHome:(id)sender {
    [self homepage];
}

- (IBAction)btnForward:(id)sender {
     [self.webview goForward];
}
@end
