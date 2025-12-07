@interface EditorsChoiceView
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC18ASMessagesProvider17EditorsChoiceView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation EditorsChoiceView

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  ObjectType = swift_getObjectType();
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_preferredLineCount);
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_shouldCapWidthByAvailableWidth);
  v8 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useAdsLocale);
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useCase);
  v10 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_size);
  selfCopy = self;
  sub_2E368C(v10, v6, v7, selfCopy, width, v8, v9, ObjectType);
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  selfCopy = self;
  [(EditorsChoiceView *)selfCopy sizeThatFits:width, height];
  v8 = v7;
  v10 = v9;
  [(EditorsChoiceView *)selfCopy lastBaselineFromBottom];
  v12 = v11;

  v13 = v8;
  v14 = v10;
  v15 = v10;
  v16 = v12;
  result.var3 = v16;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2E17BC();
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_2E1CC0(selfCopy, x, y, width, height);
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_2E1FB4();
}

- (_TtC18ASMessagesProvider17EditorsChoiceView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end