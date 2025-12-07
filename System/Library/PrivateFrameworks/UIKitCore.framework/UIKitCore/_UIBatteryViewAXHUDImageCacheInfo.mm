@interface _UIBatteryViewAXHUDImageCacheInfo
- (BOOL)cacheMatchesCapacity:(double)capacity fillColor:(id)color tintColor:(id)tintColor showingBolt:(BOOL)bolt boltInactive:(BOOL)inactive reverseLayout:(BOOL)layout scale:(double)scale showsPercentage:(BOOL)self0 contentSizeCategory:(id)self1;
@end

@implementation _UIBatteryViewAXHUDImageCacheInfo

- (BOOL)cacheMatchesCapacity:(double)capacity fillColor:(id)color tintColor:(id)tintColor showingBolt:(BOOL)bolt boltInactive:(BOOL)inactive reverseLayout:(BOOL)layout scale:(double)scale showsPercentage:(BOOL)self0 contentSizeCategory:(id)self1
{
  percentageCopy = percentage;
  layoutCopy = layout;
  inactiveCopy = inactive;
  boltCopy = bolt;
  colorCopy = color;
  tintColorCopy = tintColor;
  categoryCopy = category;
  [(_UIBatteryViewAXHUDImageCacheInfo *)self capacity];
  if (v22 == capacity)
  {
    fillColor = [(_UIBatteryViewAXHUDImageCacheInfo *)self fillColor];
    if (objc_msgSend_isEqual_(fillColor))
    {
      tintColor = [(_UIBatteryViewAXHUDImageCacheInfo *)self tintColor];
      if (objc_msgSend_isEqual_(tintColor) && [(_UIBatteryViewAXHUDImageCacheInfo *)self showBolt]== boltCopy && [(_UIBatteryViewAXHUDImageCacheInfo *)self boltInactive]== inactiveCopy && [(_UIBatteryViewAXHUDImageCacheInfo *)self reverseLayoutDirection]== layoutCopy && ([(_UIBatteryViewAXHUDImageCacheInfo *)self scale], v25 == scale) && [(_UIBatteryViewAXHUDImageCacheInfo *)self showsPercentage]== percentageCopy)
      {
        contentSizeCategory = [(_UIBatteryViewAXHUDImageCacheInfo *)self contentSizeCategory];
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