//
//  InteractableViewManager.m
//  InteractableViewManager
//
//  Created by Tal Kol on 1/27/17.
//  Copyright © 2017 Wix. All rights reserved.
//

#import "InteractableViewManager.h"
#import "InteractableView.h"
#import "InteractablePoint.h"
#import "InteractableLimit.h"
#import "InteractableSpring.h"
#import "RCTConvert+Interactable.h"

@implementation InteractableViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
    return [[InteractableView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(verticalOnly, BOOL)
RCT_EXPORT_VIEW_PROPERTY(horizontalOnly, BOOL)
RCT_EXPORT_VIEW_PROPERTY(snapPoints, NSArray<InteractablePoint *>)
RCT_EXPORT_VIEW_PROPERTY(springPoints, NSArray<InteractablePoint *>)
RCT_EXPORT_VIEW_PROPERTY(gravityPoints, NSArray<InteractablePoint *>)
RCT_EXPORT_VIEW_PROPERTY(frictionAreas, NSArray<InteractablePoint *>)
RCT_EXPORT_VIEW_PROPERTY(limitX, InteractableLimit)
RCT_EXPORT_VIEW_PROPERTY(limitY, InteractableLimit)
RCT_EXPORT_VIEW_PROPERTY(dragWithSpring, InteractableSpring)
RCT_EXPORT_VIEW_PROPERTY(dragToss, CGFloat)
RCT_EXPORT_VIEW_PROPERTY(onSnap, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onStop, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(initialPosition, CGPoint)
RCT_EXPORT_VIEW_PROPERTY(onAnimatedEvent, RCTDirectEventBlock)

@end
