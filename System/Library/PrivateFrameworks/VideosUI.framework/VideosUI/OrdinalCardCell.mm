@interface OrdinalCardCell
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (CGSize)vui_sizeThatFits:(CGSize)fits;
- (id)zoomSourceView;
@end

@implementation OrdinalCardCell

- (CGSize)vui_sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_6_12();
  v5 = sub_1E3BCFC44(v4);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  onlyCopy = only;
  selfCopy = self;
  OUTLINED_FUNCTION_6_12();
  sub_1E3BD0B80(onlyCopy);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)zoomSourceView
{
  selfCopy = self;
  v3 = sub_1E3BD1A2C();

  return v3;
}

@end