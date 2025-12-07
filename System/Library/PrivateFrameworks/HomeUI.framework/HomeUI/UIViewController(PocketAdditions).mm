@interface UIViewController(PocketAdditions)
- (void)hu_pocketedContainerViewController;
@end

@implementation UIViewController(PocketAdditions)

- (void)hu_pocketedContainerViewController
{
  objc_opt_class();
  parentViewController = [self parentViewController];
  if (objc_opt_isKindOfClass())
  {
    v4 = parentViewController;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end