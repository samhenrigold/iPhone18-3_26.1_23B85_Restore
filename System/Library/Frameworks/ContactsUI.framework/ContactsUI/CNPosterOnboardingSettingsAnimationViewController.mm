@interface CNPosterOnboardingSettingsAnimationViewController
+ (void)controllerFor:(id)for isRTL:(BOOL)l windowScene:(id)scene shouldDefaultToCleanState:(BOOL)state completion:(id)completion;
- (BOOL)isAnimationPaused;
- (_TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController)initWithCoder:(id)coder;
- (_TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setIsAnimationPaused:(BOOL)paused;
- (void)toggleAnimation;
- (void)viewWillLayoutSubviews;
@end

@implementation CNPosterOnboardingSettingsAnimationViewController

+ (void)controllerFor:(id)for isRTL:(BOOL)l windowScene:(id)scene shouldDefaultToCleanState:(BOOL)state completion:(id)completion
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = sub_199DFA1BC();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  sub_199DFA17C();
  forCopy = for;
  sceneCopy = scene;
  v20 = forCopy;
  v21 = sceneCopy;

  v22 = sub_199DFA16C();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  *(v23 + 16) = v22;
  *(v23 + 24) = v24;
  *(v23 + 32) = v20;
  *(v23 + 40) = l;
  *(v23 + 48) = v21;
  *(v23 + 56) = state;
  *(v23 + 64) = sub_199B72B68;
  *(v23 + 72) = v16;
  sub_199AE5E60(0, 0, v14, &unk_199E42728, v23);
}

- (_TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_animationLayer) = 0;
  v3 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
  *(&self->super.super.super.isa + v3) = !UIAccessibilityIsVideoAutoplayEnabled();
  result = sub_199DFA85C();
  __break(1u);
  return result;
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_199B71488(selfCopy);
}

- (BOOL)isAnimationPaused
{
  v3 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setIsAnimationPaused:(BOOL)paused
{
  v5 = OBJC_IVAR____TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController_isAnimationPaused;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = paused;
}

- (void)toggleAnimation
{
  selfCopy = self;
  sub_199B71854();
}

- (_TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end