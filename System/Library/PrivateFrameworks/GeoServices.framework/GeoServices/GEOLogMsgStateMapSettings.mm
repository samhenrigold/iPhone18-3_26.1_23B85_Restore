@interface GEOLogMsgStateMapSettings
- (int)locationType;
@end

@implementation GEOLogMsgStateMapSettings

- (int)locationType
{
  if ((*&self->_flags & 4) != 0)
  {
    return self->_locationType;
  }

  else
  {
    return 0;
  }
}

@end