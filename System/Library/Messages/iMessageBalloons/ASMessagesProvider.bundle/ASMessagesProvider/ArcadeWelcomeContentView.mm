@interface ArcadeWelcomeContentView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC18ASMessagesProvider24ArcadeWelcomeContentView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ArcadeWelcomeContentView

- (_TtC18ASMessagesProvider24ArcadeWelcomeContentView)initWithCoder:(id)coder
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_5D1840();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9.n128_f64[0] = width;
  v10 = sub_5D1BD0(in, v9, height);
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_5D1F24(change);
}

@end