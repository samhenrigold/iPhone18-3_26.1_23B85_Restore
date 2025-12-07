@interface PKPeerPaymentMessagesContentView
- (PKPeerPaymentMessagesContentView)initWithFrame:(CGRect)frame;
- (UIActivityIndicatorView)activityIndicator;
- (UIButton)button;
- (UIEdgeInsets)contentInset;
- (UIImageView)imageView;
- (UILabel)label;
- (void)layoutSubviews;
@end

@implementation PKPeerPaymentMessagesContentView

- (PKPeerPaymentMessagesContentView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PKPeerPaymentMessagesContentView;
  v3 = [(PKPeerPaymentMessagesContentView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[PKPeerPaymentTheme backgroundColor];
    [(PKPeerPaymentMessagesContentView *)v3 setBackgroundColor:v4];

    v3->_contentAlignment = *MEMORY[0x1E69BB7F8];
    v3->_verticalPadding = 10.0;
    pkui_userInterfaceIdiomSupportsLargeLayouts = [(UIView *)v3 pkui_userInterfaceIdiomSupportsLargeLayouts];
    v6 = 44.0;
    v3->_contentInset.top = 8.0;
    if (!pkui_userInterfaceIdiomSupportsLargeLayouts)
    {
      v6 = 24.0;
    }

    v3->_contentInset.left = v6;
    v3->_contentInset.bottom = 8.0;
    v3->_contentInset.right = v6;
  }

  return v3;
}

- (void)layoutSubviews
{
  v83 = *MEMORY[0x1E69E9840];
  subviews = [(PKPeerPaymentMessagesContentView *)self subviews];
  v4 = [subviews count];

  if (v4)
  {
    [(PKPeerPaymentMessagesContentView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(PKPeerPaymentMessagesContentView *)self safeAreaInsets];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    ignoreTopSafeArea = self->_ignoreTopSafeArea;
    if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
    {
      v22 = 0.0;
      if (!ignoreTopSafeArea)
      {
        v22 = v14;
      }

      v6 = v6 + v16;
      v8 = v8 + v22;
      v10 = v10 - (v16 + v20);
      v12 = v12 - (v18 + v22);
    }

    top = self->_contentInset.top;
    left = self->_contentInset.left;
    right = self->_contentInset.right;
    v26 = v12 - (top + self->_contentInset.bottom);
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    subviews2 = [(PKPeerPaymentMessagesContentView *)self subviews];
    v28 = [subviews2 countByEnumeratingWithState:&v76 objects:v82 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = v10 - (left + right);
      v31 = v6 + left;
      v32 = v8 + top;
      v33 = *v77;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v77 != v33)
          {
            objc_enumerationMutation(subviews2);
          }

          v35 = *(*(&v76 + 1) + 8 * i);
          [v35 sizeThatFits:{v30, v26}];
          v37 = v36;
          v39 = v38;
          if ([v35 isHidden])
          {
            v39 = 0.0 - self->_verticalPadding;
          }

          verticalAlignment = self->_contentAlignment.verticalAlignment;
          if ((verticalAlignment & 0xFFFFFFFD) == 1)
          {
            v48 = 0;
          }

          else
          {
            v48 = verticalAlignment;
          }

          v40.n128_u64[0] = v37;
          v41.n128_f64[0] = v39;
          v42.n128_f64[0] = v31;
          v43.n128_f64[0] = v32;
          v44.n128_f64[0] = v30;
          v45.n128_f64[0] = v26;
          PKSizeAlignedInRect(self->_contentAlignment.horizontalAlignment | (v48 << 32), v40, v41, v42, v43, v44, v45, v46);
          [v35 setFrame:?];
          v49 = v39 + self->_verticalPadding;
          if (!v48)
          {
            v32 = v32 + v49;
          }

          v26 = v26 - v49;
        }

        v29 = [subviews2 countByEnumeratingWithState:&v76 objects:v82 count:16];
      }

      while (v29);
    }

    v50 = self->_contentAlignment.verticalAlignment;
    if (v50 == 3)
    {
      [(PKPeerPaymentMessagesContentView *)self bounds];
      v58 = v57;
      subviews3 = [(PKPeerPaymentMessagesContentView *)self subviews];
      v60 = [subviews3 count];

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      subviews4 = [(PKPeerPaymentMessagesContentView *)self subviews];
      v61 = [subviews4 countByEnumeratingWithState:&v68 objects:v80 count:16];
      if (v61)
      {
        v62 = v61;
        v63 = v58 / v60;
        v64 = *v69;
        v65 = 0.0;
        do
        {
          for (j = 0; j != v62; ++j)
          {
            if (*v69 != v64)
            {
              objc_enumerationMutation(subviews4);
            }

            v67 = *(*(&v68 + 1) + 8 * j);
            if (([v67 isHidden] & 1) == 0)
            {
              [v67 frame];
              [v67 setFrame:?];
              v65 = v63 + v65;
            }
          }

          v62 = [subviews4 countByEnumeratingWithState:&v68 objects:v80 count:16];
        }

        while (v62);
      }
    }

    else
    {
      if (v50 != 1)
      {
        return;
      }

      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      subviews4 = [(PKPeerPaymentMessagesContentView *)self subviews];
      v52 = [subviews4 countByEnumeratingWithState:&v72 objects:v81 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v73;
        do
        {
          for (k = 0; k != v53; ++k)
          {
            if (*v73 != v54)
            {
              objc_enumerationMutation(subviews4);
            }

            v56 = *(*(&v72 + 1) + 8 * k);
            if (([v56 isHidden] & 1) == 0)
            {
              [v56 frame];
              [v56 setFrame:?];
            }
          }

          v53 = [subviews4 countByEnumeratingWithState:&v72 objects:v81 count:16];
        }

        while (v53);
      }
    }
  }
}

- (UILabel)label
{
  label = self->_label;
  if (!label)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(PKPeerPaymentMessagesContentView *)self bounds];
    v5 = [v4 initWithFrame:?];
    v6 = self->_label;
    self->_label = v5;

    [(UILabel *)self->_label setNumberOfLines:0];
    v7 = self->_label;
    v8 = +[PKPeerPaymentTheme primaryTextColor];
    [(UILabel *)v7 setTextColor:v8];

    [(UILabel *)self->_label setTextAlignment:1];
    v9 = self->_label;
    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v9 setFont:v10];

    [(PKPeerPaymentMessagesContentView *)self addSubview:self->_label];
    label = self->_label;
  }

  return label;
}

- (UIActivityIndicatorView)activityIndicator
{
  activityIndicator = self->_activityIndicator;
  if (!activityIndicator)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    v5 = self->_activityIndicator;
    self->_activityIndicator = v4;

    v6 = self->_activityIndicator;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIActivityIndicatorView *)v6 setColor:whiteColor];

    [(PKPeerPaymentMessagesContentView *)self addSubview:self->_activityIndicator];
    activityIndicator = self->_activityIndicator;
  }

  return activityIndicator;
}

- (UIButton)button
{
  button = self->_button;
  if (!button)
  {
    _glassButtonConfiguration = [MEMORY[0x1E69DC740] _glassButtonConfiguration];
    [_glassButtonConfiguration setButtonSize:3];
    [_glassButtonConfiguration setCornerStyle:4];
    v5 = +[PKPeerPaymentTheme primaryTextColor];
    [_glassButtonConfiguration setBaseForegroundColor:v5];

    v6 = [MEMORY[0x1E69DC738] buttonWithConfiguration:_glassButtonConfiguration primaryAction:0];
    v7 = self->_button;
    self->_button = v6;

    [(PKPeerPaymentMessagesContentView *)self addSubview:self->_button];
    button = self->_button;
  }

  return button;
}

- (UIImageView)imageView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(PKPeerPaymentMessagesContentView *)self bounds];
    v5 = [v4 initWithFrame:?];
    v6 = self->_imageView;
    self->_imageView = v5;

    [(PKPeerPaymentMessagesContentView *)self addSubview:self->_imageView];
    imageView = self->_imageView;
  }

  return imageView;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end