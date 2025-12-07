@interface ContinuePlayingEmptyStateView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (void)didTapButton:(id)button;
- (void)layoutSubviews;
@end

@implementation ContinuePlayingEmptyStateView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E2FDDE0();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = sub_24E2FECB8(in, width, height);
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

- (void)didTapButton:(id)button
{
  if (button)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_24E3487A8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_24E2FEDE8();

  sub_24DF8C95C(v6, &qword_27F1E0370, &unk_24E369A10);
}

@end