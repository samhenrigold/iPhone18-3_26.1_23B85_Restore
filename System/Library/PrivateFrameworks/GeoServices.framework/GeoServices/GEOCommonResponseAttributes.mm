@interface GEOCommonResponseAttributes
- (int)elevationModel;
@end

@implementation GEOCommonResponseAttributes

- (int)elevationModel
{
  if (*&self->_flags)
  {
    return self->_elevationModel;
  }

  else
  {
    return 0;
  }
}

@end