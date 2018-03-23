//
//  ViewController.m
//  Algorhythm
//
//  Created by ITMAC1 on 3/12/18.
//  Copyright © 2018 Senior Life Insurance Company. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUInteger count = self.playlistImageViews.count;
    for (NSUInteger index = 0; index < count; index++) {
        Playlist *playlist = [[Playlist alloc] initWith:index];
        UIImageView *playlistImageView = self.playlistImageViews[index];
        playlistImageView.image = playlist.playlistIcon;
        playlistImageView.backgroundColor = playlist.backgroundColor;
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showPlaylistDetail"]) {
        UIImageView *playlistImageView = (UIImageView *)[sender view];
        if ([self.playlistImageViews containsObject:playlistImageView]) {
            NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];
            PlaylistDetailViewController *playlistDetailViewController = (PlaylistDetailViewController *)segue.destinationViewController;
            playlistDetailViewController.playlist = [[Playlist alloc] initWith:index];
        }
    }        
}

- (IBAction)showPlaylistDetail:(id)sender {
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}


@end
