@interface PHPhotosHighlight(PXDisplayAssetAdoption)
- (__CFString)px_symbolImageName;
- (void)px_isTrip;
@end

@implementation PHPhotosHighlight(PXDisplayAssetAdoption)

- (__CFString)px_symbolImageName
{
  if ([self px_isTrip])
  {
    v1 = @"suitcase";
  }

  else
  {
    v1 = @"rectangle.stack";
  }

  return v1;
}

- (void)px_isTrip
{
  result = [self type];
  if (result != 1)
  {
    return ([self type] == 2);
  }

  return result;
}

@end