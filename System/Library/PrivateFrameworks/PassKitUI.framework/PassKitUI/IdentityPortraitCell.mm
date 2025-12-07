@interface IdentityPortraitCell
- (IdentityPortraitCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation IdentityPortraitCell

- (IdentityPortraitCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = IdentityPortraitCell;
  v4 = [(IdentityPortraitCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(IdentityPortraitCell *)v4 setBackgroundColor:clearColor];

    imageView = [(IdentityPortraitCell *)v4 imageView];
    [imageView setContentMode:2];
    layer = [imageView layer];
    [layer setMasksToBounds:1];
    [layer setCornerRadius:10.0];
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [layer setBorderColor:{objc_msgSend(systemBackgroundColor, "CGColor")}];

    [layer setBorderWidth:PKUIPixelLength() * 3.0];
    [imageView pkui_setExcludedFromScreenCapture:1 andBroadcasting:1];
  }

  return v4;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = IdentityPortraitCell;
  [(IdentityPortraitCell *)&v29 layoutSubviews];
  contentView = [(IdentityPortraitCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  imageView = [(IdentityPortraitCell *)self imageView];
  [imageView sizeThatFits:{v9, v11}];

  PKSizeAspectFit();
  v13.n128_u64[0] = v5;
  v14.n128_u64[0] = v7;
  v15.n128_f64[0] = v9;
  v16.n128_f64[0] = v11;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v17, v18, v13, v14, v15, v16, v19);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  imageView2 = [(IdentityPortraitCell *)self imageView];
  [imageView2 setFrame:{v21, v23, v25, v27}];
}

@end