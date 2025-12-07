@interface GEOAMPPhotoInfoProvider
- (double)sizeRatio;
@end

@implementation GEOAMPPhotoInfoProvider

- (double)sizeRatio
{
  templatePhotoContent = self->_templatePhotoContent;
  result = 0.0;
  if (templatePhotoContent)
  {
    height = templatePhotoContent->_height;
    if (height)
    {
      LODWORD(result) = templatePhotoContent->_width;
      return *&result / height;
    }
  }

  return result;
}

@end