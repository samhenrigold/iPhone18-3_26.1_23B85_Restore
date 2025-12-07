@interface ImplicitAnimationGroup
- (BOOL)isReversed;
- (BOOL)isRunning;
- (double)fractionComplete;
- (int64_t)state;
- (void)addCompletion:(id)completion;
- (void)continueAnimationWithTimingParameters:(id)parameters durationFactor:(double)factor;
- (void)finishAnimationAtPosition:(int64_t)position;
- (void)pauseAnimation;
- (void)setFractionComplete:(double)complete;
- (void)setReversed:(BOOL)reversed;
- (void)startAnimation;
- (void)startAnimationAfterDelay:(double)delay;
- (void)stopAnimation:(BOOL)animation;
@end

@implementation ImplicitAnimationGroup

- (int64_t)state
{
  selfCopy = self;
  v3 = ImplicitAnimationGroup.state.getter();

  return v3;
}

- (BOOL)isRunning
{
  selfCopy = self;
  ImplicitAnimationGroup.isRunning.getter();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)isReversed
{
  selfCopy = self;
  v3 = ImplicitAnimationGroup.isReversed.getter();

  return v3 & 1;
}

- (void)setReversed:(BOOL)reversed
{
  reversedCopy = reversed;
  selfCopy = self;
  ImplicitAnimationGroup.isReversed.setter(reversedCopy);
}

- (double)fractionComplete
{
  selfCopy = self;
  ImplicitAnimationGroup.fractionComplete.getter();
  v4 = v3;

  return v4;
}

- (void)setFractionComplete:(double)complete
{
  selfCopy = self;
  ImplicitAnimationGroup.fractionComplete.setter(complete);
}

- (void)startAnimation
{
  selfCopy = self;
  ImplicitAnimationGroup.startAnimation()();
}

- (void)startAnimationAfterDelay:(double)delay
{
  selfCopy = self;
  ImplicitAnimationGroup.startAnimation(afterDelay:)(delay);
}

- (void)pauseAnimation
{
  selfCopy = self;
  ImplicitAnimationGroup.pauseAnimation()();
}

- (void)stopAnimation:(BOOL)animation
{
  selfCopy = self;
  ImplicitAnimationGroup.stopAnimation(_:)(animation);
}

- (void)finishAnimationAtPosition:(int64_t)position
{
  selfCopy = self;
  ImplicitAnimationGroup.finishAnimation(at:)(position);
}

- (void)addCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  ImplicitAnimationGroup.addCompletion(_:)(sub_1D7FECEEC, v5, v7, v8, v9, v10, v11);
}

- (void)continueAnimationWithTimingParameters:(id)parameters durationFactor:(double)factor
{
  swift_unknownObjectRetain();
  selfCopy = self;
  ImplicitAnimationGroup.continueAnimation(withTimingParameters:durationFactor:)(parameters, factor);
  swift_unknownObjectRelease();
}

@end