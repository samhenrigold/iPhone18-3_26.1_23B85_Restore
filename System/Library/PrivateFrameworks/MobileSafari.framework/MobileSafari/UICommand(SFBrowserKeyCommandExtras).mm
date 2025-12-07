@interface UICommand(SFBrowserKeyCommandExtras)
- (__CFString)sf_commandSource;
@end

@implementation UICommand(SFBrowserKeyCommandExtras)

- (__CFString)sf_commandSource
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = @"keyboard shortcut";
  }

  else
  {
    v1 = @"context menu";
  }

  return v1;
}

@end