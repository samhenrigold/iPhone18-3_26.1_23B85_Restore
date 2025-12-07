@interface NSObject(NSLayoutConstraintCallsThis)
- (NSString)className;
@end

@implementation NSObject(NSLayoutConstraintCallsThis)

- (NSString)className
{
  v1 = objc_opt_class();

  return NSStringFromClass(v1);
}

@end