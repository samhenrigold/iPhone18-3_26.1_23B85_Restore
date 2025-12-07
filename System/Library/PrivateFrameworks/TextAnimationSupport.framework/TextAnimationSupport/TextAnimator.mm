@interface TextAnimator
- (NSDictionary)configuration;
- (NSString)fromPhase;
- (NSString)toPhase;
- (_NSTextAnimatorStateSnapshot)stateSnapshot;
- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator)init;
- (double)duration;
- (double)nextAnimationTriggerDelay;
- (void)cancel;
- (void)invalidate;
- (void)pause;
- (void)resume;
- (void)setConfiguration:(id)configuration;
- (void)setStateSnapshot:(id)snapshot;
- (void)setToPhase:(id)phase;
- (void)start;
- (void)startWithDuration:(double)duration;
@end

@implementation TextAnimator

- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)start
{
  selfCopy = self;
  TextAnimator.start()(v2);
}

- (void)startWithDuration:(double)duration
{
  selfCopy = self;
  v4.n128_f64[0] = duration;
  TextAnimator.start(duration:)(v4);
}

- (void)pause
{
  selfCopy = self;
  TextAnimator.pause()(v2);
}

- (void)resume
{
  selfCopy = self;
  TextAnimator.resume()(v2);
}

- (void)invalidate
{
  selfCopy = self;
  TextAnimator.invalidate()(v2);
}

- (double)duration
{
  selfCopy = self;
  v4 = TextAnimator.duration.getter(v3);

  return v4;
}

- (NSString)toPhase
{
  selfCopy = self;
  v4 = TextAnimator.toPhase.getter(v3);

  return v4;
}

- (void)setToPhase:(id)phase
{
  if (phase)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase);
  *v6 = v4;
  v6[1] = v5;
}

- (NSString)fromPhase
{
  selfCopy = self;
  v4 = TextAnimator.fromPhase.getter(v3);

  return v4;
}

- (NSDictionary)configuration
{
  if (*(&self->super.isa + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__configuration))
  {

    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    swift_weakLoadStrong();

    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)setConfiguration:(id)configuration
{
  if (configuration)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  *(&self->super.isa + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__configuration) = v4;
}

- (_NSTextAnimatorStateSnapshot)stateSnapshot
{
  selfCopy = self;
  v3 = TextAnimator.stateSnapshot.getter();

  return v3;
}

- (void)setStateSnapshot:(id)snapshot
{
  swift_unknownObjectRetain();
  selfCopy = self;
  TextAnimator.stateSnapshot.setter(snapshot);
}

- (double)nextAnimationTriggerDelay
{
  selfCopy = self;
  TextAnimator.nextAnimationTriggerDelay.getter();
  v4 = v3;

  return v4;
}

- (void)cancel
{
  selfCopy = self;
  TextAnimator.cancel()();
}

@end