//
//  ViewController.m
//  LocationDemo
//
//  Created by snowlu on 2017/6/23.
//  Copyright © 2017年 ZhunKuaiTechnology. All rights reserved.
//

#import "ViewController.h"
#import "CPLocationManger.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [CPLocationManger getLocationFailComplete:^(NSError *error) {
        switch([error code]) {
            case kCLErrorDenied:
            {
                [[[UIAlertView alloc]initWithTitle:@"当前定位服务不可用" message:@"请到“设置->隐私->定位服务”中开启定位" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil] show];
                
                NSURL * url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
                if([[UIApplication sharedApplication] canOpenURL:url]) {
                    
                    NSURL*url =[NSURL URLWithString:UIApplicationOpenSettingsURLString];
                    [[UIApplication sharedApplication] openURL:url];
                }
            }
                break;
            case kCLErrorLocationUnknown:
                break;
            default:
                break;
        }
    }];
    

    
    [CPLocationManger getLocationComplete:^(CPPlacemark *placemark) {
        
        NSLog(@"%@",placemark.country);
        
    }];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
