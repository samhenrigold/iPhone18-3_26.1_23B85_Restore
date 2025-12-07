@interface OrdinalListCell
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (id)zoomSourceView;
@end

@implementation OrdinalListCell

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  v8 = sub_1E3FB01C8(only, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)zoomSourceView
{
  selfCopy = self;
  v3 = sub_1E3FB1988();

  return v3;
}

@end