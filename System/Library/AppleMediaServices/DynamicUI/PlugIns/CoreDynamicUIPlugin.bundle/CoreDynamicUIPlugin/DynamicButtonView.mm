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
  v3 = sub_37A14();

  return v3 & 1;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_37A68();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_37C20(width, height);
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
  sub_37DF0();
  v4 = v3;

  if (v4)
  {
    v5 = sub_8F5C4();
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
    sub_8F5F4();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_18714(selfCopy, v5);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  selfCopy = self;
  sub_381E4();
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
  sub_38254(selfCopy);
}

@end