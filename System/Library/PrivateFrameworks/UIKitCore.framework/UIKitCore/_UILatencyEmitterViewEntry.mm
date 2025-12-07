@interface _UILatencyEmitterViewEntry
- (_TtC5UIKit26_UILatencyEmitterViewEntry)init;
- (void)addEffectToView:(id)view;
- (void)removeEffectFromView:(id)view;
@end

@implementation _UILatencyEmitterViewEntry

- (void)addEffectToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_18908EE78(viewCopy);
}

- (void)removeEffectFromView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_18908F128(viewCopy);
}

- (_TtC5UIKit26_UILatencyEmitterViewEntry)init
{
  v3 = self + OBJC_IVAR____TtC5UIKit26_UILatencyEmitterViewEntry_duration;
  *v3 = 0x4000000000000000;
  v3[8] = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UILatencyEmitterViewEntry__cachedLatencyView) = 0;
  v4 = type metadata accessor for _UILatencyEmitterViewEntry();
  v7.receiver = self;
  v7.super_class = v5;
  return [(_UILatencyEmitterViewEntry *)&v7 init];
}

@end