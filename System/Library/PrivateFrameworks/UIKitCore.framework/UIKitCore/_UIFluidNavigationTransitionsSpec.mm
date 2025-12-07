@interface _UIFluidNavigationTransitionsSpec
+ (id)settingsControllerModule;
- (_TtC5UIKit33_UIFluidNavigationTransitionsSpec)initWithDefaultValues;
- (void)setDefaultValues;
- (void)setParallaxSettings:(id)settings;
@end

@implementation _UIFluidNavigationTransitionsSpec

- (void)setParallaxSettings:(id)settings
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings) = settings;
  settingsCopy = settings;
}

- (void)setDefaultValues
{
  v3 = type metadata accessor for _UIFluidNavigationTransitionsSpec();
  v5.receiver = self;
  v5.super_class = v4;
  [(PTSettings *)&v5 setDefaultValues];
}

+ (id)settingsControllerModule
{
  sub_18916B5E8();

  return v2;
}

- (_TtC5UIKit33_UIFluidNavigationTransitionsSpec)initWithDefaultValues
{
  v3 = OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings;
  type metadata accessor for _UIFluidParallaxTransitionSettings();
  *(&self->super.super.isa + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = type metadata accessor for _UIFluidNavigationTransitionsSpec();
  v7.receiver = self;
  v7.super_class = v5;
  return [(PTSettings *)&v7 initWithDefaultValues];
}

@end