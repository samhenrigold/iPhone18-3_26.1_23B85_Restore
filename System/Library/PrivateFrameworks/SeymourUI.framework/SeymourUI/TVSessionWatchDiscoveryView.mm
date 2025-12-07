@interface TVSessionWatchDiscoveryView
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI27TVSessionWatchDiscoveryView)initWithFrame:(CGRect)frame;
- (void)didTapStartStandaloneButton;
@end

@implementation TVSessionWatchDiscoveryView

- (void)didTapStartStandaloneButton
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_presenter);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 24);
    selfCopy = self;
    v6 = sub_20B584050(v3, v4);
    v3(v6);
    sub_20B583ECC(v3, v4);
  }

  else
  {
    selfCopy2 = self;
  }

  [(TVSessionWatchDiscoveryView *)self removeFromSuperview];
}

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI27TVSessionWatchDiscoveryView_startStandaloneButton);
  *(v3 + 32) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0, &unk_20C14F970);
  v6 = sub_20C13CC54();

  return v6;
}

- (_TtC9SeymourUI27TVSessionWatchDiscoveryView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end