@interface DeveloperLinkView
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC18ASMessagesProvider17DeveloperLinkView)initWithCoder:(id)coder;
- (void)didTapLink:(id)link;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DeveloperLinkView

- (_TtC18ASMessagesProvider17DeveloperLinkView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_tapHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_5CDE6C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(DeveloperLinkView *)self measurementsWithFitting:self in:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9.n128_f64[0] = width;
  v10 = sub_5CE244(in, v9, height);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  swift_unknownObjectRelease();

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.var3 = v20;
  result.var2 = v19;
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

- (void)didTapLink:(id)link
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_tapHandler);
  if (v3)
  {
    v4 = *&self->disclosureImageView[OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_tapHandler];
    selfCopy = self;
    v6 = sub_F714(v3, v4);
    v3(v6);

    sub_F704(v3, v4);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_5CEC90(change);
}

@end