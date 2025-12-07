@interface UIView(ControlCenterUI)
+ (void)ccui_performLayerAnimations:()ControlCenterUI;
- (uint64_t)ccui_setFramePreservingTransform:()ControlCenterUI;
@end

@implementation UIView(ControlCenterUI)

- (uint64_t)ccui_setFramePreservingTransform:()ControlCenterUI
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  objc_msgSend_transform(self, a2);
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  v13 = *MEMORY[0x277CBF2C0];
  v14 = v11;
  v15 = *(MEMORY[0x277CBF2C0] + 32);
  [self setTransform:&v13];
  [self setFrame:{a3, a4, a5, a6}];
  v13 = v16;
  v14 = v17;
  v15 = v18;
  return [self setTransform:&v13];
}

+ (void)ccui_performLayerAnimations:()ControlCenterUI
{
  v3 = MEMORY[0x277CD9FF0];
  v4 = a3;
  [v3 activate];
  [MEMORY[0x277CD9FF0] begin];
  _currentAnimationSettings = [MEMORY[0x277D75D18] _currentAnimationSettings];
  if ([MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled])
  {
    [_currentAnimationSettings duration];
    v6 = BSFloatIsZero() ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x277CD9FF0];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__UIView_ControlCenterUI__ccui_performLayerAnimations___block_invoke;
  v12 = &unk_278382A88;
  v14 = v6;
  v13 = _currentAnimationSettings;
  v8 = _currentAnimationSettings;
  [v7 pushAnimator:&v9];
  v4[2](v4);

  [MEMORY[0x277CD9FF0] popAnimator];
  [MEMORY[0x277CD9FF0] commit];
}

@end