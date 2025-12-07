@interface NSLayoutConstraint(MobileSafariFrameworkExtras)
+ (uint64_t)sf_setConstraints:()MobileSafariFrameworkExtras active:;
@end

@implementation NSLayoutConstraint(MobileSafariFrameworkExtras)

+ (uint64_t)sf_setConstraints:()MobileSafariFrameworkExtras active:
{
  if (a4)
  {
    return [self activateConstraints:a3];
  }

  else
  {
    return [self deactivateConstraints:a3];
  }
}

@end