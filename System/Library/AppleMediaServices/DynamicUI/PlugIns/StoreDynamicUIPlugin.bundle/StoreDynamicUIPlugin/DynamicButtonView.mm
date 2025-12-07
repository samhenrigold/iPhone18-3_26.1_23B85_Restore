@interface DynamicButtonView
- (BOOL)hasContent;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (NSString)accessibilityLabel;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
- (void)tintColorDidChange;
@end

@implementation DynamicButtonView

- (BOOL)hasContent
{
  selfCopy = self;
  v3 = sub_90640();

  return v3 & 1;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_90694();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_9084C(width, height);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.var3 = v18;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_90A1C();
  v4 = v3;

  if (v4)
  {
    v5 = sub_13BB54();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    sub_13BB84();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_8F1CC(selfCopy, v5);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  selfCopy = self;
  sub_90E10();
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_90E80(selfCopy);
}

@end