@interface PKPassBannerLeadingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)_initWithStyle:(void *)style pass:;
- (void)layoutSubviews;
@end

@implementation PKPassBannerLeadingView

- (id)_initWithStyle:(void *)style pass:
{
  result = style;
  v7 = result;
  if (!self)
  {
LABEL_7:

    return self;
  }

  if (result)
  {
    v11.receiver = self;
    v11.super_class = PKPassBannerLeadingView;
    v8 = objc_msgSendSuper2(&v11, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    self = v8;
    if (v8)
    {
      v8[51] = a2;
      objc_storeStrong(v8 + 52, style);
      v9 = [PKPassThumbnailView alloc];
      if (v9)
      {
        v9 = [(PKPassThumbnailView *)&v9->super.super.super.isa initWithPass:0x177 suppressedContent:0 rendererState:0 options:?];
      }

      v10 = self[53];
      self[53] = v9;

      [(PKPassThumbnailView *)self[53] setShadowVisibility:?];
      [self addSubview:self[53]];
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  style = self->_style;
  passView = self->_passView;
  v5 = 15.0;
  if (style != 1)
  {
    v5 = 63.0;
  }

  [(PKPassThumbnailView *)passView sizeThatFits:1.79769313e308, v5];
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = PKPassBannerLeadingView;
  [(PKPassBannerLeadingView *)&v19 layoutSubviews];
  [(PKPassBannerLeadingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = *&v7;
  v10 = *&v9;
  passView = self->_passView;
  [(PKPassThumbnailView *)passView sizeThatFits:v7, v9];
  v12.n128_u64[0] = v4;
  v13.n128_u64[0] = v6;
  v14.n128_u64[0] = v8;
  v15.n128_u64[0] = v10;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v16, v17, v12, v13, v14, v15, v18);
  [(PKPassThumbnailView *)passView setFrame:?];
}

@end