@interface _GEOPlaceDataPhotoInfo
- (CGSize)size;
@end

@implementation _GEOPlaceDataPhotoInfo

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end