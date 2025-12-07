@interface GEODefaultPhotoInfoProvider
- (double)sizeRatio;
@end

@implementation GEODefaultPhotoInfoProvider

- (double)sizeRatio
{
  if (![(NSArray *)self->_sortedPhotoInfos count])
  {
    return 0.0;
  }

  lastObject = [(NSArray *)self->_sortedPhotoInfos lastObject];
  [lastObject size];
  v4 = 0.0;
  if (v5 > 0.0)
  {
    [lastObject size];
    v7 = v6;
    [lastObject size];
    v4 = v7 / v8;
  }

  return v4;
}

@end