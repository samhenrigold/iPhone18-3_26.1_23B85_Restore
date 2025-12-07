@interface TSPortTest
+ (BOOL)mangled;
@end

@implementation TSPortTest

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
  if (![v7 isSubclassOfClass:?])
  {
    return 0;
  }

  v8 = objc_opt_class();
  objc_opt_class();
  if (![v8 isSubclassOfClass:?])
  {
    return 0;
  }

  v9 = objc_opt_class();
  objc_opt_class();
  if (![v9 isSubclassOfClass:?])
  {
    return 0;
  }

  v10 = objc_opt_class();
  objc_opt_class();
  if (![v10 isSubclassOfClass:?])
  {
    return 0;
  }

  v11 = objc_opt_class();
  objc_opt_class();
  if (![v11 isSubclassOfClass:?])
  {
    return 0;
  }

  v12 = objc_opt_class();
  objc_opt_class();
  if (![v12 isSubclassOfClass:?])
  {
    return 0;
  }

  v13 = objc_opt_class();
  objc_opt_class();

  return [v13 isSubclassOfClass:?];
}

@end