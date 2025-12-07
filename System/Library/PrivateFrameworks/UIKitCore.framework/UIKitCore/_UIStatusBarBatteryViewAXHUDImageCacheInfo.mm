@interface _UIStatusBarBatteryViewAXHUDImageCacheInfo
- (BOOL)cacheMatchesCapacity:(double)capacity fillColor:(id)color tintColor:(id)tintColor showingBolt:(BOOL)bolt reverseLayout:(BOOL)layout scale:(double)scale showsPercentage:(BOOL)percentage contentSizeCategory:(id)self0;
@end

@implementation _UIStatusBarBatteryViewAXHUDImageCacheInfo

- (BOOL)cacheMatchesCapacity:(double)capacity fillColor:(id)color tintColor:(id)tintColor showingBolt:(BOOL)bolt reverseLayout:(BOOL)layout scale:(double)scale showsPercentage:(BOOL)percentage contentSizeCategory:(id)self0
{
  percentageCopy = percentage;
  layoutCopy = layout;
  boltCopy = bolt;
  colorCopy = color;
  tintColorCopy = tintColor;
  categoryCopy = category;
  [(_UIStatusBarBatteryViewAXHUDImageCacheInfo *)self capacity];
  if (v21 == capacity)
  {
    fillColor = [(_UIStatusBarBatteryViewAXHUDImageCacheInfo *)self fillColor];
    if (objc_msgSend_isEqual_(fillColor))
    {
      tintColor = [(_UIStatusBarBatteryViewAXHUDImageCacheInfo *)self tintColor];
      if (objc_msgSend_isEqual_(tintColor) && [(_UIStatusBarBatteryViewAXHUDImageCacheInfo *)self showBolt]== boltCopy && [(_UIStatusBarBatteryViewAXHUDImageCacheInfo *)self reverseLayoutDirection]== layoutCopy && ([(_UIStatusBarBatteryViewAXHUDImageCacheInfo *)self scale], v24 == scale) && [(_UIStatusBarBatteryViewAXHUDImageCacheInfo *)self showsPercentage]== percentageCopy)
      {
        contentSizeCategory = [(_UIStatusBarBatteryViewAXHUDImageCacheInfo *)self contentSizeCategory];
        isEqualToString = objc_msgSend_isEqualToString_(contentSizeCategory);
      }

      else
      {
        isEqualToString = 0;
      }
    }

    else
    {
      isEqualToString = 0;
    }
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

@end