@interface UIView
+ (void)bkui_animateWithDuration:(double)duration animations:;
+ (void)bkui_animateWithDuration:(void *)duration animations:(double)animations completion:;
+ (void)bkui_animateWithDuration:(void *)duration delay:(void *)delay options:(double)options animations:(double)animations completion:;
@end

@implementation UIView

+ (void)bkui_animateWithDuration:(double)duration animations:
{
  v5 = a2;
  v4 = objc_opt_self();
  [(UIView *)v4 bkui_animateWithDuration:v5 animations:0 completion:duration];
}

+ (void)bkui_animateWithDuration:(void *)duration animations:(double)animations completion:
{
  v6 = a2;
  durationCopy = duration;
  objc_opt_self();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__UIView_BKUI_ANIMATIONS__bkui_animateWithDuration_animations_completion___block_invoke;
  aBlock[3] = &unk_278D0A400;
  animationsCopy = animations;
  v8 = v6;
  v13 = v8;
  v9 = durationCopy;
  v14 = v9;
  v10 = _Block_copy(aBlock);
  if (MGGetProductType() == 1060988941 || MGGetProductType() == 3585085679 || MGGetProductType() == 689804742 || MGGetProductType() == 2309863438)
  {
    v11 = MEMORY[0x277D75D18];
    v16 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v11 _modifyAnimationsWithPreferredFrameRateRange:2293761 updateReason:v10 animations:{*&v16.minimum, *&v16.maximum, *&v16.preferred}];
  }

  else
  {
    v10[2](v10);
  }
}

+ (void)bkui_animateWithDuration:(void *)duration delay:(void *)delay options:(double)options animations:(double)animations completion:
{
  durationCopy = duration;
  delayCopy = delay;
  objc_opt_self();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__UIView_BKUI_ANIMATIONS__bkui_animateWithDuration_delay_options_animations_completion___block_invoke;
  aBlock[3] = &unk_278D0A428;
  optionsCopy = options;
  animationsCopy = animations;
  v21 = a2;
  v12 = durationCopy;
  v17 = v12;
  v13 = delayCopy;
  v18 = v13;
  v14 = _Block_copy(aBlock);
  if (MGGetProductType() == 1060988941 || MGGetProductType() == 3585085679 || MGGetProductType() == 689804742 || MGGetProductType() == 2309863438)
  {
    v15 = MEMORY[0x277D75D18];
    v22 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v15 _modifyAnimationsWithPreferredFrameRateRange:2293761 updateReason:v14 animations:{*&v22.minimum, *&v22.maximum, *&v22.preferred}];
  }

  else
  {
    v14[2](v14);
  }
}

@end