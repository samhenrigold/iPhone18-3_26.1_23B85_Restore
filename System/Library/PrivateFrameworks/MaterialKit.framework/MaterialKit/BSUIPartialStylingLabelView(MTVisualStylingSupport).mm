@interface BSUIPartialStylingLabelView(MTVisualStylingSupport)
- (void)mt_applyVisualStyling:()MTVisualStylingSupport;
- (void)mt_removeAllVisualStyling;
@end

@implementation BSUIPartialStylingLabelView(MTVisualStylingSupport)

- (void)mt_applyVisualStyling:()MTVisualStylingSupport
{
  v4 = a3;
  contentLabel = [self contentLabel];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __77__BSUIPartialStylingLabelView_MTVisualStylingSupport__mt_applyVisualStyling___block_invoke;
  v9 = &unk_27835D4F0;
  selfCopy = self;
  [v4 applyToView:? withColorBlock:?];
}

- (void)mt_removeAllVisualStyling
{
  contentLabel = [self contentLabel];
  [contentLabel mt_removeAllVisualStyling];
}

@end