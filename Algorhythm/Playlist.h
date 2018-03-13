//
//  Playlist.h
//  Algorhythm
//
//  Created by ITMAC1 on 3/13/18.
//  Copyright © 2018 Senior Life Insurance Company. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Playlist : NSObject

@property (strong, nonatomic) NSString *playlistTitle;
@property (strong, nonatomic) NSString *playlistDescription;
@property (strong, nonatomic) UIImage  *playlistIcon;
@property (strong, nonatomic) UIImage  *playlistIconLarge;
@property (strong, nonatomic) NSArray  *playlistArtists;
@property (strong, nonatomic) UIColor  *backgroundColor;

@end
