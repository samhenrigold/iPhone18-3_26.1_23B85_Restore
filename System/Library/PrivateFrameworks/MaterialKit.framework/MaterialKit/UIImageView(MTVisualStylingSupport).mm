@interface UIImageView(MTVisualStylingSupport)
- (void)mt_applyVisualStyling:()MTVisualStylingSupport;
@end

@implementation UIImageView(MTVisualStylingSupport)

- (void)mt_applyVisualStyling:()MTVisualStylingSupport
{
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __61__UIImageView_MTVisualStylingSupport__mt_applyVisualStyling___block_invoke;
  v7 = &unk_27835D4F0;
  selfCopy = self;
  return [a3 applyToView:? withColorBlock:?];
}

@end