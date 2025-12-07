@interface PKDiscoverySpacerShelfView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDiscoverySpacerShelfView)initWithShelf:(id)shelf;
@end

@implementation PKDiscoverySpacerShelfView

- (PKDiscoverySpacerShelfView)initWithShelf:(id)shelf
{
  shelfCopy = shelf;
  v7.receiver = self;
  v7.super_class = PKDiscoverySpacerShelfView;
  v5 = [(PKDiscoveryShelfView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v5->_spacerType = [shelfCopy spacerType];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
  v6 = v5;
  v7 = self->_spacerType - 1;
  v8 = 0.0;
  if (v7 <= 3)
  {
    v9 = dbl_1BE116CA8[v7];
    [v5 lineHeight];
    v8 = v9 * v10;
  }

  PKSizeRoundToPixel(width, v8);
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

@end