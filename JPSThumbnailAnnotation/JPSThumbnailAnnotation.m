//
//  JPSThumbnailAnnotation.m
//  JPSThumbnailAnnotationView
//
//  Created by Jean-Pierre Simard on 4/21/13.
//  Copyright (c) 2013 JP Simard. All rights reserved.
//

#import "JPSThumbnailAnnotation.h"

@interface JPSThumbnailAnnotation ()

@end

@implementation JPSThumbnailAnnotation

+ (instancetype)annotationWithThumbnail:(JPSThumbnail *)thumbnail {
  return [[self alloc] initWithThumbnail:thumbnail];
}

- (id)initWithThumbnail:(JPSThumbnail *)thumbnail {
  self = [super init];
  if (self) {
    _coordinate = thumbnail.coordinate;
    _thumbnail = thumbnail;
    _bExpandMode = NO;
  }
  return self;
}

- (MKAnnotationView *)annotationViewInMap:(MKMapView *)mapView {
  if (_bExpandMode)
  {
    if (!self.view2) {
      self.view2 = (JPSThumbnailAnnotationView2 *)[mapView dequeueReusableAnnotationViewWithIdentifier:kJPSThumbnailAnnotationViewReuseID2];
    }
    
    if (!self.view2) {
      self.view2 = [[JPSThumbnailAnnotationView2 alloc] initWithAnnotation:self];
    }
    else {
      self.view2.annotation = self;
    }
    
    [self updateThumbnail:self.thumbnail animated:NO];
    return self.view2;
  }
  else
  {
    if (!self.view) {
      self.view = (JPSThumbnailAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:kJPSThumbnailAnnotationViewReuseID];
    }
    
    if (!self.view) {
      self.view = [[JPSThumbnailAnnotationView alloc] initWithAnnotation:self];
    }
    else {
      self.view.annotation = self;
    }
    
    [self updateThumbnail:self.thumbnail animated:NO];
    return self.view;
  }
  
  return nil;
}

- (void)updateThumbnail:(JPSThumbnail *)thumbnail animated:(BOOL)animated {
  if (animated) {
    [UIView animateWithDuration:0.33f animations:^{
      _coordinate = thumbnail.coordinate; // use ivar to avoid triggering setter
    }];
  } else {
    _coordinate = thumbnail.coordinate; // use ivar to avoid triggering setter
  }
  
  if (_bExpandMode) {
    [self.view2 updateWithThumbnail:thumbnail];
  } else {
    [self.view updateWithThumbnail:thumbnail];
  }
}

@end
