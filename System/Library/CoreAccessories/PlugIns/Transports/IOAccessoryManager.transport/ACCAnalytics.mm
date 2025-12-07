@interface ACCAnalytics
+ (id)loggerForUser:(int)user;
- (void)logACCAnalyticsForEventNamed:(id)named withAttributes:(id)attributes;
@end

@implementation ACCAnalytics

+ (id)loggerForUser:(int)user
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___ACCAnalytics;
  v3 = objc_msgSendSuper2(&v5, sel_loggerForUser_, *&user);

  return v3;
}

- (void)logACCAnalyticsForEventNamed:(id)named withAttributes:(id)attributes
{
  if (attributes)
  {
    [(ACCAnalyticsLogger *)self logEventNamed:named withAttributes:?];
  }
}

@end