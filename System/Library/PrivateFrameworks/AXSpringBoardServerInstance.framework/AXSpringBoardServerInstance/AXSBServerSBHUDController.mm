@interface AXSBServerSBHUDController
- (void)_presentHUD:(id)d animated:(BOOL)animated;
@end

@implementation AXSBServerSBHUDController

- (void)_presentHUD:(id)d animated:(BOOL)animated
{
  animatedCopy = animated;
  dCopy = d;
  v7 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  v8 = [v7 shouldBlockGestureActivation:4];

  if (!v8 || ([(AXSBServerSBHUDController *)self safeValueForKey:@"hudViewController"], v9 = objc_claimAutoreleasedReturnValue(), NSClassFromString(&cfstr_Sbelastichudvi.isa), isKindOfClass = objc_opt_isKindOfClass(), v9, (isKindOfClass & 1) == 0))
  {
    v11.receiver = self;
    v11.super_class = AXSBServerSBHUDController;
    [(AXSBServerSBHUDController *)&v11 _presentHUD:dCopy animated:animatedCopy];
  }
}

@end