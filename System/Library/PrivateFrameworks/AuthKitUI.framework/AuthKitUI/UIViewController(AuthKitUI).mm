@interface UIViewController(AuthKitUI)
- (id)ak_topPresentedViewController;
@end

@implementation UIViewController(AuthKitUI)

- (id)ak_topPresentedViewController
{
  v11[2] = self;
  v11[1] = a2;
  v11[0] = MEMORY[0x277D82BE0](self);
  while (1)
  {
    presentedViewController = [v11[0] presentedViewController];
    v9 = 0;
    v8 = 0;
    if (presentedViewController)
    {
      presentedViewController2 = [v11[0] presentedViewController];
      v9 = 1;
      v8 = [presentedViewController2 isBeingDismissed] == 0;
    }

    if (v9)
    {
      MEMORY[0x277D82BD8](presentedViewController2);
    }

    *&v2 = MEMORY[0x277D82BD8](presentedViewController).n128_u64[0];
    if (!v8)
    {
      break;
    }

    presentedViewController3 = [v11[0] presentedViewController];
    v4 = v11[0];
    v11[0] = presentedViewController3;
    MEMORY[0x277D82BD8](v4);
  }

  v6 = MEMORY[0x277D82BE0](v11[0]);
  objc_storeStrong(v11, 0);

  return v6;
}

@end