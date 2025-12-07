@interface OfferCardCollectionViewCell
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (void)rentalExpirationLabelNeedsRelayout:(id)relayout;
- (void)vui_prepareForReuse;
@end

@implementation OfferCardCollectionViewCell

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  v8.n128_f64[0] = width;
  v9.n128_f64[0] = height;
  sub_1E417907C(only, v8, v9);

  v10 = OUTLINED_FUNCTION_17_4();
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)vui_prepareForReuse
{
  selfCopy = self;
  sub_1E41791C0(selfCopy);
}

- (void)rentalExpirationLabelNeedsRelayout:(id)relayout
{
  relayoutCopy = relayout;
  selfCopy = self;
  sub_1E3D18390();
}

@end