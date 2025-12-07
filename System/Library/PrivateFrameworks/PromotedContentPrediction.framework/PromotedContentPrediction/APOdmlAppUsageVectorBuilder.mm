@interface APOdmlAppUsageVectorBuilder
- (id)eventsBetween:(id)between and:(id)and;
@end

@implementation APOdmlAppUsageVectorBuilder

- (id)eventsBetween:(id)between and:(id)and
{
  andCopy = and;
  betweenCopy = between;
  v7 = objc_alloc_init(APOdmlBiomeSQLQuery);
  v8 = [(APOdmlBiomeSQLQuery *)v7 query:@"App.InFocus" startDate:betweenCopy endDate:andCopy];

  return v8;
}

@end