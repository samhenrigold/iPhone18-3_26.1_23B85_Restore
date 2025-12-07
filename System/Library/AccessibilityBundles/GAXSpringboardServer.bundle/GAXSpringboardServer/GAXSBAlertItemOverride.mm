@interface GAXSBAlertItemOverride
- (void)dismiss:(int)dismiss;
@end

@implementation GAXSBAlertItemOverride

- (void)dismiss:(int)dismiss
{
  v3 = *&dismiss;
  v5 = +[GAXSpringboard sharedInstance];
  if (([v5 allowsTouch] & 1) == 0)
  {
    [v5 notifyBackboardSBMiniAlertIsShowing:0];
  }

  v6.receiver = self;
  v6.super_class = GAXSBAlertItemOverride;
  [(GAXSBAlertItemOverride *)&v6 dismiss:v3];
}

@end