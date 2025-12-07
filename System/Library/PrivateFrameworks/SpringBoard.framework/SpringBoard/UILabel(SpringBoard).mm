@interface UILabel(SpringBoard)
- (double)sb_yPositionForLayoutAfterLabel:()SpringBoard baselineOffset:;
- (uint64_t)sb_yPositionForLabelWithContainerBounds:()SpringBoard baselineOffset:font:;
- (uint64_t)sb_yPositionForLabelWithContainerBounds:()SpringBoard lineHeight:baselineOffset:font:;
@end

@implementation UILabel(SpringBoard)

- (uint64_t)sb_yPositionForLabelWithContainerBounds:()SpringBoard lineHeight:baselineOffset:font:
{
  v13 = a9;
  v16.origin.x = self;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  CGRectGetMinY(v16);
  [v13 descender];

  return SBFloatRoundForScale();
}

- (uint64_t)sb_yPositionForLabelWithContainerBounds:()SpringBoard baselineOffset:font:
{
  v12 = a8;
  v15.origin.x = self;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  CGRectGetMinY(v15);
  [v12 ascender];

  return SBFloatRoundForScale();
}

- (double)sb_yPositionForLayoutAfterLabel:()SpringBoard baselineOffset:
{
  v5 = a4;
  objc_msgSend_frame(v5);
  CGRectGetMaxY(v10);
  [v5 _baselineOffsetFromBottom];

  font = [self font];
  [font ascender];
  SBFloatRoundForScale();
  v8 = v7;

  return v8;
}

@end