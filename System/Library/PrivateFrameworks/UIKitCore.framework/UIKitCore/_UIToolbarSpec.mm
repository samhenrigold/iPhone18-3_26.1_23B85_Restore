@interface _UIToolbarSpec
+ (id)settingsControllerModule;
- (_TtC5UIKit14_UIToolbarSpec)initWithDefaultValues;
- (void)setDefaultValues;
- (void)setPadding:(id)padding;
@end

@implementation _UIToolbarSpec

- (void)setPadding:(id)padding
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding) = padding;
  paddingCopy = padding;
}

- (void)setDefaultValues
{
  type metadata accessor for _UIToolbarSpec();
  v6.receiver = self;
  v6.super_class = v3;
  selfCopy = self;
  [(PTSettings *)&v6 setDefaultValues];
  v5 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);
  [v5 setDefaultValues];
}

+ (id)settingsControllerModule
{
  sub_188F7D68C();

  return v2;
}

- (_TtC5UIKit14_UIToolbarSpec)initWithDefaultValues
{
  v3 = OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding;
  type metadata accessor for _UIToolbarPaddingSpec();
  *(&self->super.super.isa + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = type metadata accessor for _UIToolbarSpec();
  v7.receiver = self;
  v7.super_class = v5;
  return [(PTSettings *)&v7 initWithDefaultValues];
}

@end