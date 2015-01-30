//
//  JPSThumbnailAnnotationView.h
//  JPSThumbnailAnnotationView
//
//  Created by Jean-Pierre Simard on 4/21/13.
//  Copyright (c) 2013 JP Simard. All rights reserved.
//

#import "JPSThumbnailAnnotationView.h"

@import MapKit;

@class JPSThumbnail;

extern NSString * const kJPSThumbnailAnnotationViewReuseID2;

@interface JPSThumbnailAnnotationView2 : MKAnnotationView <JPSThumbnailAnnotationViewProtocol>

- (id)initWithAnnotation:(id<MKAnnotation>)annotation;

- (void)updateWithThumbnail:(JPSThumbnail *)thumbnail;

@end
