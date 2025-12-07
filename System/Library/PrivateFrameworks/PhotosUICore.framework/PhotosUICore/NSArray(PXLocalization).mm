@interface NSArray(PXLocalization)
- (__CFString)px_localizedComposedStringThatFitsWidth:()PXLocalization maxCount:useUndefinedMoreCount:withMeasuringBlock:;
@end

@implementation NSArray(PXLocalization)

- (__CFString)px_localizedComposedStringThatFitsWidth:()PXLocalization maxCount:useUndefinedMoreCount:withMeasuringBlock:
{
  v8 = a6;
  v9 = [self count];
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = [self objectAtIndex:0];
    }

    else
    {
      if (v9 >= a4)
      {
        v11 = a4;
      }

      else
      {
        v11 = v9;
      }

      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      if (v12 >= 1)
      {
        PXLocalizedComposedString();
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = &stru_1F1741150;
  }

  return v10;
}

@end