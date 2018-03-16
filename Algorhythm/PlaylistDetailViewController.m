//
//  PlaylistDetailViewController.m
//  Algorhythm
//
//  Created by ITMAC1 on 3/12/18.
//  Copyright © 2018 Senior Life Insurance Company. All rights reserved.
//

#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistDetailViewController ()

@end

@implementation PlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.playlist) {
        self.buttonPressLabel.text = self.playlist.playlistTitle;
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
