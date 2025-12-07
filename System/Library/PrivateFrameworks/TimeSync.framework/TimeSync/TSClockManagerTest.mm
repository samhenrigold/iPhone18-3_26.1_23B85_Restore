@interface TSClockManagerTest
+ (BOOL)mangled;
@end

@implementation TSClockManagerTest

+ (BOOL)mangled
{
  v2 = objc_opt_class();
  objc_opt_class();
  if (![v2 isSubclassOfClass:?])
  {
    return 0;
  }

  v3 = objc_opt_class();
  objc_opt_class();
  if (![v3 isSubclassOfClass:?])
  {
    return 0;
  }

  v4 = objc_opt_class();
  objc_opt_class();
  if (![v4 isSubclassOfClass:?])
  {
    return 0;
  }

  v5 = objc_opt_class();
  objc_opt_class();
  if (![v5 isSubclassOfClass:?])
  {
    return 0;
  }

  v6 = objc_opt_class();
  objc_opt_class();
  if (![v6 isSubclassOfClass:?])
  {
    return 0;
  }

  v7 = objc_opt_class();
  objc_opt_class();

  return [v7 isSubclassOfClass:?];
}

@end