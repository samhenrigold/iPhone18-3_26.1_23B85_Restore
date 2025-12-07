@interface UIViewController(BFFCustomStringConvertible)
- (uint64_t)customDescription;
@end

@implementation UIViewController(BFFCustomStringConvertible)

- (uint64_t)customDescription
{
  v1 = objc_opt_class();

  return [v1 description];
}

@end