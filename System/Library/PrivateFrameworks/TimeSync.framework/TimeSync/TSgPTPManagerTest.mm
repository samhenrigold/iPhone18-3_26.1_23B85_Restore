@interface TSgPTPManagerTest
+ (BOOL)mangled;
@end

@implementation TSgPTPManagerTest

+ (BOOL)mangled
{
  v2 = objc_opt_class();
  objc_opt_class();

  return [v2 isSubclassOfClass:?];
}

@end