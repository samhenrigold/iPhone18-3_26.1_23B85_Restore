@interface WorkoutCountdownRingView
- (_TtC9WorkoutUI24WorkoutCountdownRingView)initWithFrame:(CGRect)frame;
- (void)countdownAnimator:(id)animator performingAnimation:(id)animation withDuration:(double)duration;
- (void)countdownAnimatorDidFinishAnimating:(id)animating;
@end

@implementation WorkoutCountdownRingView

- (_TtC9WorkoutUI24WorkoutCountdownRingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)countdownAnimatorDidFinishAnimating:(id)animating
{
  v4 = self + OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownCompleted;
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 1);
    selfCopy = self;
    v8 = sub_20C69A264(v5, v6);
    v5(v8);

    sub_20C69A274(v5, v6);
  }
}

- (void)countdownAnimator:(id)animator performingAnimation:(id)animation withDuration:(double)duration
{
  animatorCopy = animator;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized WorkoutCountdownRingView.countdownAnimator(_:performing:withDuration:)(animation);

  swift_unknownObjectRelease();
}

@end