//
//  InteractablePoint.h
//  Interactable
//
//  Created by Tal Kol on 1/27/17.
//  Copyright © 2017 Wix. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "InteractableLimit.h"

@interface InteractablePoint : NSObject<NSCopying>

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat damping;
@property (nonatomic, assign) CGFloat tension;
@property (nonatomic, assign) CGFloat strength;
@property (nonatomic, assign) CGFloat falloff;
@property (nonatomic, copy) NSString *id;
@property (nonatomic, copy) InteractableLimit *limitX;
@property (nonatomic, copy) InteractableLimit *limitY;
@property (nonatomic, assign) BOOL haptics;

- (CGPoint)positionWithOrigin:(CGPoint)origin;
- (CGFloat)distanceFromPoint:(CGPoint)point withOrigin:(CGPoint)origin;
+ (CGPoint)deltaBetweenPoint:(CGPoint)point andOrigin:(CGPoint)origin;
+ (InteractablePoint*)findClosestPoint:(NSArray<InteractablePoint *>*)points toPoint:(CGPoint)relativeToPoint withOrigin:(CGPoint)origin;

@end
