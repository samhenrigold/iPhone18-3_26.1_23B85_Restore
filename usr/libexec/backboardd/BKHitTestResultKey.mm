@interface BKHitTestResultKey
- (BOOL)isEqual:(id)equal;
@end

@implementation BKHitTestResultKey

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  equalCopy = equal;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = equalCopy && BSEqualObjects() && self->_userIdentifier == v8[2];
  return v9;
}

@end