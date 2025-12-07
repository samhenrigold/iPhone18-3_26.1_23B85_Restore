@interface UIView
+ (void)safari_animate:(uint64_t)safari_animate withDuration:(void *)duration delay:(void *)delay options:(double)options animations:(double)animations completion:;
+ (void)safari_animate:(void *)safari_animate withDuration:(double)duration animations:;
@end

@implementation UIView

+ (void)safari_animate:(void *)safari_animate withDuration:(double)duration animations:
{
  v5 = a2;
  safari_animateCopy = safari_animate;
  v6 = objc_opt_self();
  [(UIView *)v6 safari_animate:v5 withDuration:0 delay:safari_animateCopy options:0 animations:duration completion:0.0];
}

+ (void)safari_animate:(uint64_t)safari_animate withDuration:(void *)duration delay:(void *)delay options:(double)options animations:(double)animations completion:
{
  durationCopy = duration;
  delayCopy = delay;
  v13 = objc_opt_self();
  v14 = _Block_copy(delayCopy);

  if (a2)
  {
    [v13 animateWithDuration:safari_animate delay:durationCopy options:v14 animations:options completion:animations];
  }

  else
  {
    if (durationCopy)
    {
      durationCopy[2](durationCopy);
    }

    if (delayCopy)
    {
      v14[2](v14, 1);
    }
  }
}

@end