@interface FMHyperlinkPlatterInfoView
- (_TtC6FindMy26FMHyperlinkPlatterInfoView)initWithFrame:(CGRect)frame;
- (void)buttonPressed;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMHyperlinkPlatterInfoView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10010053C();
}

- (void)buttonPressed
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_actionHandler);
  if (v2)
  {
    v3 = *&self->style[OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_actionHandler];
    v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_button);
    v8[3] = sub_100100354();
    v8[0] = v4;
    selfCopy = self;
    sub_100062900(v2, v3);
    v7 = v4;
    v2(v8);

    sub_10001835C(v2, v3);
    sub_100006060(v8);
  }
}

- (_TtC6FindMy26FMHyperlinkPlatterInfoView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end