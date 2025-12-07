@interface _UIDurationBounceAnimationSpec
+ (id)settingsControllerModule;
- (_TtC5UIKit30_UIDurationBounceAnimationSpec)initWithDefaultValues;
@end

@implementation _UIDurationBounceAnimationSpec

+ (id)settingsControllerModule
{
  sub_188E807A8();

  return v2;
}

- (_TtC5UIKit30_UIDurationBounceAnimationSpec)initWithDefaultValues
{
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_duration) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_bounce) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_delay) = 0;
  v3 = type metadata accessor for _UIDurationBounceAnimationSpec();
  v6.receiver = self;
  v6.super_class = v4;
  return [(PTSettings *)&v6 initWithDefaultValues];
}

@end