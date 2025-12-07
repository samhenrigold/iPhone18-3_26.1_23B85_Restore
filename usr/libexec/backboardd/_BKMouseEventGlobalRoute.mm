@interface _BKMouseEventGlobalRoute
- (BOOL)isEqual:(id)equal;
@end

@implementation _BKMouseEventGlobalRoute

- (BOOL)isEqual:(id)equal
{
  v4 = objc_opt_class();
  equalCopy = equal;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = BSEqualObjects();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end