@interface PKMultiSelectIndicatorView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKMultiSelectIndicatorView)init;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected;
@end

@implementation PKMultiSelectIndicatorView

- (PKMultiSelectIndicatorView)init
{
  v6.receiver = self;
  v6.super_class = PKMultiSelectIndicatorView;
  v2 = [(PKMultiSelectIndicatorView *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v2->_imageView;
    v2->_imageView = v3;

    [(UIImageView *)v2->_imageView setContentMode:1];
    [(PKMultiSelectIndicatorView *)v2 addSubview:v2->_imageView];
  }

  return v2;
}

- (void)setSelected:(BOOL)selected
{
  self->_selected = selected;
  if (selected)
  {
    v4 = @"checkmark.circle.fill";
  }

  else
  {
    v4 = @"circle";
  }

  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:v4];
  image = [(UIImageView *)self->_imageView image];

  if (image && _UISolariumFeatureFlagEnabled())
  {
    v6 = MEMORY[0x1E6982288];
    transition = [MEMORY[0x1E6982288] transition];
    v8 = [v6 magicTransitionWithFallback:transition];

    [(UIImageView *)self->_imageView setSymbolImage:v9 withContentTransition:v8];
  }

  else
  {
    [(UIImageView *)self->_imageView setImage:v9];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 22.0;
  v4 = 22.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = 22.0;
  v3 = 22.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  [(PKMultiSelectIndicatorView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKMultiSelectIndicatorView *)self _shouldReverseLayoutDirection];
  v11 = PKContentAlignmentMake();
  imageView = self->_imageView;
  v13.n128_u64[0] = 22.0;
  v14.n128_u64[0] = 22.0;
  v15.n128_u64[0] = v4;
  v16.n128_u64[0] = v6;
  v17.n128_u64[0] = v8;
  v18.n128_u64[0] = v10;
  PKSizeAlignedInRect(v11, v13, v14, v15, v16, v17, v18, v19);

  [(UIImageView *)imageView setFrame:?];
}

@end