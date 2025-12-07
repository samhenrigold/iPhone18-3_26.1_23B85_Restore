@interface PKPassBannerMinimalView
- (CGSize)_layoutWithBounds:(CGRect)bounds commit:(BOOL)commit;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)_initWithStyle:(int64_t)style leadingView:(id)view trailingView:(id)trailingView;
- (void)_setInteritemPadding:(double)padding;
- (void)layoutSubviews;
@end

@implementation PKPassBannerMinimalView

- (id)_initWithStyle:(int64_t)style leadingView:(id)view trailingView:(id)trailingView
{
  viewCopy = view;
  result = trailingView;
  if (viewCopy && (v10 = result) != 0)
  {
    v17.receiver = self;
    v17.super_class = PKPassBannerMinimalView;
    v11 = [(PKPassBannerMinimalView *)&v17 init];
    v12 = v11;
    if (v11)
    {
      v11->_style = style;
      v13 = [[PKPassBannerLeadingView alloc] _initWithStyle:viewCopy[52] pass:?];
      leadingView = v12->_leadingView;
      v12->_leadingView = v13;

      v15 = [[PKPassBannerTrailingView alloc] _initWithStyle:v10[52] configuration:?];
      trailingView = v12->_trailingView;
      v12->_trailingView = v15;

      [(PKPassBannerMinimalView *)v12 addSubview:v12->_leadingView];
      [(PKPassBannerMinimalView *)v12 addSubview:v12->_trailingView];
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKPassBannerMinimalView *)self _layoutWithBounds:0 commit:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPassBannerMinimalView;
  [(PKPassBannerMinimalView *)&v3 layoutSubviews];
  [(PKPassBannerMinimalView *)self bounds];
  [(PKPassBannerMinimalView *)self _layoutWithBounds:1 commit:?];
}

- (CGSize)_layoutWithBounds:(CGRect)bounds commit:(BOOL)commit
{
  commitCopy = commit;
  v5 = *&bounds.size.height;
  v6 = *&bounds.size.width;
  v80 = *&bounds.origin.x;
  v81 = *&bounds.origin.y;
  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);
  [(PKPassBannerLeadingView *)self->_leadingView sizeThatFits:*MEMORY[0x1E695F060], v9];
  v11 = v10;
  v13 = v12;
  [(PKPassBannerTrailingView *)self->_trailingView sizeThatFits:v8, v9];
  v21 = v14.n128_f64[0];
  v22 = v15.n128_f64[0];
  v23 = v11 > 0.0;
  if (v13 <= 0.0)
  {
    v23 = 0;
  }

  trailingView = self->_trailingView;
  if (trailingView)
  {
    image = trailingView->_image;
    v26 = v14.n128_f64[0] > 0.0;
    if (v15.n128_f64[0] <= 0.0)
    {
      v26 = 0;
    }

    if (image)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v23 && v27)
    {
      v28 = fmax(v11, v14.n128_f64[0]);
      interitemPadding = self->_interitemPadding;
      v30 = v15.n128_f64[0] + v13 + interitemPadding;
      if (commitCopy)
      {
        v76 = v22 + v13 + interitemPadding;
        v78 = v28;
        PKSizeAspectFit();
        v32 = v31;
        v34 = v33;
        PKSizeAspectFit();
        v36 = v35;
        v38 = v37;
        v39.n128_u64[0] = v32;
        v40.n128_u64[0] = v34;
        v41.n128_u64[0] = v80;
        v42.n128_u64[0] = v81;
        v43.n128_u64[0] = v6;
        v44.n128_u64[0] = v5;
        PKSizeAlignedInRect(1, v39, v40, v41, v42, v43, v44, v45);
        leadingView = self->_leadingView;
        PKRectRoundToPixel(v47, v48, v49, v50, v51);
        [(PKPassBannerLeadingView *)leadingView setFrame:?];
        v52.n128_u64[0] = v36;
        v53.n128_u64[0] = v38;
        v54.n128_u64[0] = v80;
        v55.n128_u64[0] = v81;
        v56.n128_u64[0] = v6;
        v57.n128_u64[0] = v5;
        PKSizeAlignedInRect(0x200000001, v52, v53, v54, v55, v56, v57, v58);
        v59 = self->_trailingView;
        PKRectRoundToPixel(v60, v61, v62, v63, v64);
LABEL_30:
        [(PKPassBannerTrailingView *)v59 setFrame:*&v76, *&v78];
        v30 = v77;
        v28 = v79;
        goto LABEL_33;
      }

      goto LABEL_33;
    }

    if (v27)
    {
      v65 = v15.n128_f64[0];
    }

    else
    {
      v65 = 1.0;
    }

    if (v27)
    {
      v66 = v21;
    }

    else
    {
      v66 = 1.0;
    }
  }

  else
  {
    v27 = 0;
    v65 = 1.0;
    v66 = 1.0;
  }

  if (v23)
  {
    v30 = v13;
  }

  else
  {
    v30 = v65;
  }

  if (v23)
  {
    v28 = v11;
  }

  else
  {
    v28 = v66;
  }

  if (commitCopy)
  {
    v76 = v30;
    v78 = v28;
    v67 = self->_leadingView;
    v14.n128_f64[0] = v8;
    v15.n128_f64[0] = v9;
    if (v23)
    {
      PKSizeAspectFit();
    }

    v68 = *MEMORY[0x1E69BB7F8];
    v16.n128_u64[0] = v80;
    v17.n128_u64[0] = v81;
    v18.n128_u64[0] = v6;
    v19.n128_u64[0] = v5;
    PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v14, v15, v16, v17, v18, v19, v20);
    [(PKPassBannerLeadingView *)v67 setFrame:?];
    v59 = self->_trailingView;
    if (v27)
    {
      PKSizeAspectFit();
      v8 = v69.n128_f64[0];
      v9 = v70.n128_f64[0];
    }

    v69.n128_f64[0] = v8;
    v70.n128_f64[0] = v9;
    v71.n128_u64[0] = v80;
    v72.n128_u64[0] = v81;
    v73.n128_u64[0] = v6;
    v74.n128_u64[0] = v5;
    PKSizeAlignedInRect(v68, v69, v70, v71, v72, v73, v74, v75);
    goto LABEL_30;
  }

LABEL_33:
  result.height = v30;
  result.width = v28;
  return result;
}

- (void)_setInteritemPadding:(double)padding
{
  if (self->_interitemPadding != padding)
  {
    self->_interitemPadding = padding;
    [(PKPassBannerMinimalView *)self setNeedsLayout];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained passBannerMinimalViewDidChangeSize:self];
  }
}

@end