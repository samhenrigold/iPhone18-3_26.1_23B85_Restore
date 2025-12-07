@interface UIView(MTVisualStylingSupport)
- (void)mt_applyVisualStyling:()MTVisualStylingSupport;
- (void)mt_removeAllVisualStyling;
- (void)mt_replaceVisualStyling:()MTVisualStylingSupport;
@end

@implementation UIView(MTVisualStylingSupport)

- (void)mt_removeAllVisualStyling
{
  layer = [self layer];
  [layer mt_removeAllVisualStyling];
}

- (void)mt_replaceVisualStyling:()MTVisualStylingSupport
{
  v4 = a3;
  [self mt_removeAllVisualStyling];
  [self mt_applyVisualStyling:?];
}

- (void)mt_applyVisualStyling:()MTVisualStylingSupport
{
  v7 = a3;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v5, sel__mt_applyVisualStyling_);
  if (MethodImplementation == class_getMethodImplementation(v4, sel__mt_applyVisualStyling_))
  {
    [v7 applyToView:? withColorBlock:?];
  }

  else
  {
    [self _mt_applyVisualStyling:?];
  }
}

@end