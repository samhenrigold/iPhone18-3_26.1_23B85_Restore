@interface PhoneSessionHeartRateDiscoveryView
- (_TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)didTapContinueButton:(id)button;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PhoneSessionHeartRateDiscoveryView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_20B9644C4(change);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_20B964620(event, x, y);

  return v10;
}

- (void)didTapContinueButton:(id)button
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20C13DA64();
  swift_unknownObjectRelease();
  v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView_presenter);
  v6 = *(v5 + 32);
  if (v6)
  {
    v7 = *(v5 + 40);

    v6(v8);
    sub_20B583ECC(v6, v7);
  }

  [(PhoneSessionHeartRateDiscoveryView *)selfCopy removeFromSuperview];

  __swift_destroy_boxed_opaque_existential_1(v9);
}

- (_TtC9SeymourUI34PhoneSessionHeartRateDiscoveryView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end