@interface FocusableTitledAppIconView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation FocusableTitledAppIconView

- (void)prepareForReuse
{
  selfCopy = self;
  sub_24E28725C();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E31F09C();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = sub_24E31F158(in, width, height);
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