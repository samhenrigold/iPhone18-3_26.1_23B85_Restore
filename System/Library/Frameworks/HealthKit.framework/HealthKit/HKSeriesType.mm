@interface HKSeriesType
- (Class)dataObjectClass;
@end

@implementation HKSeriesType

- (Class)dataObjectClass
{
  code = [(HKObjectType *)self code];
  if (code == 102 || code == 119)
  {
    v3 = objc_opt_class();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end