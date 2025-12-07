@interface _UIApplicationInfo(SplashBoard)
- (void)xb_userInterfaceStyleForRequestedUserInterfaceStyle:()SplashBoard;
@end

@implementation _UIApplicationInfo(SplashBoard)

- (void)xb_userInterfaceStyleForRequestedUserInterfaceStyle:()SplashBoard
{
  result = [self supportedUserInterfaceStyle];
  if (result == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a3;
  }

  if (result != 2)
  {
    return v5;
  }

  return result;
}

@end