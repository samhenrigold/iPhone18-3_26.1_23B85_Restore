@interface SearchResultsMessageView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
@end

@implementation SearchResultsMessageView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1004774AC();
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(SearchResultsMessageView *)&v3 layoutMarginsDidChange];
  [v2 setNeedsLayout];
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = sub_100478358(in, width, height);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  swift_unknownObjectRelease();

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.var3 = v19;
  result.var2 = v18;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

@end