//
//  MusicPlaylist.h
//  Algorhythm
//
//  Created by ITMAC1 on 3/13/18.
//  Copyright © 2018 Senior Life Insurance Company. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kTitle;
extern NSString *const kDescription;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kBackgroundColor;
extern NSString *const kArtists;

@interface MusicPlaylist : NSObject

@property (strong, nonatomic) NSArray *library;

@end
