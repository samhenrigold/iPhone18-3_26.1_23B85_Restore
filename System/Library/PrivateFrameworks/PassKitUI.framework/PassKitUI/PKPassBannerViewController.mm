@interface PKPassBannerViewController
+ (id)createForTransactionWithPass:(id)pass primaryText:(id)text secondaryText:(id)secondaryText trailingViewConfiguration:(id)configuration walletForeground:(BOOL)foreground;
+ (id)createWithPass:(id)pass primaryText:(id)text secondaryText:(id)secondaryText trailingViewConfiguration:(id)configuration walletForeground:(BOOL)foreground;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize;
- (PKBannerViewControllerPresentable)presentable;
- (UIEdgeInsets)bannerContentOutsets;
- (double)_layoutContentViewWithBounds:(CGFloat)bounds commit:(CGFloat)commit;
- (double)_maximumSystemApertureWidth;
- (id)_initWithPass:(void *)pass primaryText:(void *)text secondaryText:(void *)secondaryText trailingViewConfiguration:(char)configuration walletForeground:;
- (unint64_t)presentationBehaviors;
- (void)_appeared;
- (void)_platterView;
- (void)_revoke;
- (void)_revoked;
- (void)_tapped:(id)_tapped;
- (void)_updateFonts;
- (void)dealloc;
- (void)loadView;
- (void)passBannerMinimalViewDidChangeSize:(id)size;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)setPresentable:(id)presentable;
- (void)traitCollectionDidChange:(id)change;
- (void)viewWillLayoutSubviews;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation PKPassBannerViewController

+ (id)createWithPass:(id)pass primaryText:(id)text secondaryText:(id)secondaryText trailingViewConfiguration:(id)configuration walletForeground:(BOOL)foreground
{
  configurationCopy = configuration;
  secondaryTextCopy = secondaryText;
  textCopy = text;
  passCopy = pass;
  v15 = [[PKPassBannerViewController alloc] _initWithPass:passCopy primaryText:textCopy secondaryText:secondaryTextCopy trailingViewConfiguration:configurationCopy walletForeground:foreground];

  return v15;
}

- (id)_initWithPass:(void *)pass primaryText:(void *)text secondaryText:(void *)secondaryText trailingViewConfiguration:(char)configuration walletForeground:
{
  v12 = a2;
  passCopy = pass;
  textCopy = text;
  result = secondaryText;
  v16 = result;
  if (!self)
  {
LABEL_15:

    return self;
  }

  if (v12)
  {
    v22.receiver = self;
    v22.super_class = PKPassBannerViewController;
    v17 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
    self = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 140, a2);
      v18 = [passCopy length];
      if (v18)
      {
        v19 = [passCopy copy];
      }

      else
      {
        v19 = 0;
      }

      objc_storeStrong(self + 141, v19);
      if (v18)
      {
      }

      v20 = [textCopy length];
      if (v20)
      {
        v21 = [textCopy copy];
      }

      else
      {
        v21 = 0;
      }

      objc_storeStrong(self + 142, v21);
      if (v20)
      {
      }

      objc_storeStrong(self + 143, secondaryText);
      *(self + 993) = configuration;
      self[126] = SBSIsSystemApertureAvailable();
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

+ (id)createForTransactionWithPass:(id)pass primaryText:(id)text secondaryText:(id)secondaryText trailingViewConfiguration:(id)configuration walletForeground:(BOOL)foreground
{
  configurationCopy = configuration;
  secondaryTextCopy = secondaryText;
  textCopy = text;
  passCopy = pass;
  v15 = [[PKPassBannerViewController alloc] _initWithPass:passCopy primaryText:textCopy secondaryText:secondaryTextCopy trailingViewConfiguration:configurationCopy walletForeground:foreground];

  if (v15)
  {
    *(v15 + 992) = 1;
  }

  return v15;
}

- (void)dealloc
{
  revokeTimer = self->_revokeTimer;
  if (revokeTimer)
  {
    dispatch_source_cancel(revokeTimer);
  }

  v4.receiver = self;
  v4.super_class = PKPassBannerViewController;
  [(PKPassBannerViewController *)&v4 dealloc];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = PKPassBannerViewController;
  [(PKPassBannerViewController *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKPassBannerViewController *)self traitCollection];
  if (!changeCopy || ([changeCopy preferredContentSizeCategory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(traitCollection, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v6, v7), v7, v6, v8))
  {
    [(PKPassBannerViewController *)self _updateFonts];
  }
}

- (void)_updateFonts
{
  v66[3] = *MEMORY[0x1E69E9840];
  if (self)
  {
    viewIfLoaded = [self viewIfLoaded];
    if (!viewIfLoaded)
    {
LABEL_52:

      return;
    }

    traitCollection = [self traitCollection];
    v4 = traitCollection;
    if (!self[126])
    {
      v5 = MEMORY[0x1E69DD1B8];
      if (!traitCollection)
      {
        v4 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
        if (!v4)
        {
          goto LABEL_51;
        }

        goto LABEL_7;
      }

      v62[0] = traitCollection;
      v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
      v62[1] = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
      v8 = [v5 traitCollectionWithTraitsFromCollections:v7];

      v4 = v8;
    }

    if (!v4)
    {
LABEL_51:

      goto LABEL_52;
    }

LABEL_7:
    if (self[126])
    {
      v9 = [MEMORY[0x1E69DB878] sbui_systemAperturePreferredFontForTextStyle:1 compatibleWithTraitCollection:v4];
      v10 = self[133];
      self[133] = v9;

      [MEMORY[0x1E69DB878] sbui_systemAperturePreferredFontForTextStyle:3 compatibleWithTraitCollection:v4];
    }

    else
    {
      v12 = *MEMORY[0x1E69DB8D8];
      v13 = *MEMORY[0x1E69DB980];
      v14 = PKFontForDesign(v4, *MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDC0], *MEMORY[0x1E69DB980]);
      v15 = self[133];
      self[133] = v14;

      PKFontForDesign(v4, v12, *MEMORY[0x1E69DDD40], v13);
    }
    v11 = ;
    v16 = self[134];
    self[134] = v11;

    v17 = self[136];
    if (v17)
    {
      [v17 setFont:self[133]];
    }

    v18 = self[137];
    if (v18)
    {
      [v18 setFont:self[134]];
    }

    if (self[136] || self[137])
    {
      [viewIfLoaded setNeedsLayout];
    }

    if (!self[135])
    {
      goto LABEL_51;
    }

    viewIfLoaded2 = [self viewIfLoaded];
    if (!viewIfLoaded2 || !self[135])
    {
      goto LABEL_50;
    }

    v20 = self[141];
    v61 = self[142];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v22 = MEMORY[0x1E69DB600];
    v58 = v20;
    if (v20)
    {
      v23 = *MEMORY[0x1E69DB648];
      v66[0] = self[133];
      v24 = MEMORY[0x1E69DB650];
      v25 = *MEMORY[0x1E69DB650];
      v65[0] = v23;
      v65[1] = v25;
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      v27 = v22;
      v65[2] = *v22;
      v66[1] = labelColor;
      v66[2] = clearColor;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:3];

      v28 = 0x1E695D000;
    }

    else
    {
      v24 = MEMORY[0x1E69DB650];
      v27 = MEMORY[0x1E69DB600];
      v60 = 0;
      v28 = 0x1E695D000uLL;
    }

    if (v61)
    {
      v29 = *MEMORY[0x1E69DB648];
      v64[0] = self[134];
      v30 = *v24;
      v63[0] = v29;
      v63[1] = v30;
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v63[2] = *v27;
      v64[1] = secondaryLabelColor;
      v64[2] = clearColor;
      v32 = clearColor;
      v33 = [*(v28 + 3872) dictionaryWithObjects:v64 forKeys:v63 count:3];
    }

    else
    {
      v32 = clearColor;
      v33 = 0;
    }

    v34 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v35 = objc_alloc(MEMORY[0x1E696AAB0]);
    if ([viewIfLoaded2 _shouldReverseLayoutDirection])
    {
      v36 = @"⁧";
    }

    else
    {
      v36 = @"⁦";
    }

    v37 = v60;
    if (v60)
    {
      v38 = v60;
    }

    else
    {
      v38 = v33;
    }

    v39 = [v35 initWithString:v36 attributes:v38];
    [v34 appendAttributedString:v39];

    v59 = v32;
    if (v58)
    {
      v40 = objc_alloc(MEMORY[0x1E696AAB0]);
      v41 = self[141];
      if (v41)
      {
        v42 = MEMORY[0x1E696AEC0];
        v43 = v41;
        v44 = [[v42 alloc] initWithFormat:@"⁨%@⁩", v43];
      }

      else
      {
        v44 = 0;
      }

      v45 = [v40 initWithString:v44 attributes:v60];
      [v34 appendAttributedString:v45];

      if (!v61)
      {
        goto LABEL_46;
      }

      v46 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v33];
      [v34 appendAttributedString:v46];
    }

    else if (!v61)
    {
LABEL_46:
      v53 = objc_alloc(MEMORY[0x1E696AAB0]);
      if (v33)
      {
        v54 = v33;
      }

      else
      {
        v54 = v37;
      }

      v55 = [v53 initWithString:@"⁩" attributes:v54];
      [v34 appendAttributedString:v55];

      v56 = self[135];
      v57 = [v34 copy];
      [v56 setAttributedText:v57];

      [viewIfLoaded2 setNeedsLayout];
LABEL_50:

      goto LABEL_51;
    }

    v47 = objc_alloc(MEMORY[0x1E696AAB0]);
    v48 = self[142];
    if (v48)
    {
      v49 = MEMORY[0x1E696AEC0];
      v50 = v48;
      v51 = [[v49 alloc] initWithFormat:@"⁨%@⁩", v50];

      v37 = v60;
    }

    else
    {
      v51 = 0;
    }

    v52 = [v47 initWithString:v51 attributes:v33];
    [v34 appendAttributedString:v52];

    goto LABEL_46;
  }
}

- (void)loadView
{
  v30.receiver = self;
  v30.super_class = PKPassBannerViewController;
  [(PKPassBannerViewController *)&v30 loadView];
  view = [(PKPassBannerViewController *)self view];
  [view setAutoresizingMask:0];
  _platterView = [(PKPassBannerViewController *)self _platterView];
  if (_platterView)
  {
    [view addSubview:_platterView];
    customContentView = [_platterView customContentView];
  }

  else
  {
    customContentView = view;
  }

  contentView = self->_contentView;
  self->_contentView = customContentView;

  v7 = [[PKPassBannerLeadingView alloc] _initWithStyle:self->_pass pass:?];
  leadingView = self->_leadingView;
  self->_leadingView = v7;

  [(UIView *)self->_contentView addSubview:self->_leadingView];
  v9 = [[PKPassBannerTrailingView alloc] _initWithStyle:self->_trailingViewConfiguration configuration:?];
  trailingView = self->_trailingView;
  self->_trailingView = v9;

  [(UIView *)self->_contentView addSubview:self->_trailingView];
  if (self->_style == 1)
  {
    v11 = [[PKPassBannerMinimalView alloc] _initWithStyle:self->_style leadingView:self->_leadingView trailingView:self->_trailingView];
    minimalView = self->_minimalView;
    self->_minimalView = v11;

    v13 = self->_minimalView;
    if (v13)
    {
      objc_storeWeak(&v13->_delegate, self);
      v14 = self->_minimalView;
    }

    else
    {
      v14 = 0;
    }

    [(UIView *)self->_contentView addSubview:v14];
    if (self->_primaryText || self->_secondaryText)
    {
      v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      label = self->_label;
      self->_label = v15;

      [(UILabel *)self->_label setNumberOfLines:1];
      [(UILabel *)self->_label setLineBreakMode:4];
      [(UILabel *)self->_label setMarqueeEnabled:1];
      [(UIView *)self->_contentView addSubview:self->_label];
    }
  }

  else
  {
    if (self->_primaryText)
    {
      v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      primaryLabel = self->_primaryLabel;
      self->_primaryLabel = v17;

      [(UILabel *)self->_primaryLabel setNumberOfLines:1];
      [(UILabel *)self->_primaryLabel setLineBreakMode:4];
      [(UIView *)self->_contentView addSubview:self->_primaryLabel];
      [(UILabel *)self->_primaryLabel setText:self->_primaryText];
    }

    if (self->_secondaryText)
    {
      v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      secondaryLabel = self->_secondaryLabel;
      self->_secondaryLabel = v19;

      [(UILabel *)self->_secondaryLabel setNumberOfLines:1];
      [(UILabel *)self->_secondaryLabel setLineBreakMode:4];
      [(UIView *)self->_contentView addSubview:self->_secondaryLabel];
      [(UILabel *)self->_secondaryLabel setText:self->_secondaryText];
    }
  }

  if (self->_style)
  {
    __38__PKPassBannerViewController_loadView__block_invoke(self->_leadingView);
    __38__PKPassBannerViewController_loadView__block_invoke(self->_trailingView);
    __38__PKPassBannerViewController_loadView__block_invoke(self->_minimalView);
    __38__PKPassBannerViewController_loadView__block_invoke(self->_label);
  }

  else
  {
    v21 = [_platterView visualStylingProviderForCategory:1];
    v22 = v21;
    v23 = self->_primaryLabel;
    if (v23)
    {
      [v21 automaticallyUpdateView:v23 withStyle:0];
    }

    v24 = self->_secondaryLabel;
    if (v24)
    {
      [v22 automaticallyUpdateView:v24 withStyle:1];
    }

    if (_platterView)
    {
      v25 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__tapped_];
      [_platterView addGestureRecognizer:v25];
      v26 = self->_trailingView;
      v27 = _platterView;
      v28 = v27;
      if (v26 && v26->_imageView && !v26->_imageColor)
      {
        v29 = [v27 visualStylingProviderForCategory:1];
        [v29 automaticallyUpdateView:v26->_imageView withStyle:0];
      }
    }
  }

  [(PKPassBannerViewController *)self _updateFonts];
}

- (void)_platterView
{
  if (self)
  {
    selfCopy = self;
    v3 = self[128];
    if (!v3)
    {
      if (self[126])
      {
        v3 = 0;
      }

      else
      {
        v4 = [MEMORY[0x1E69C4A78] platterViewWithStyle:*MEMORY[0x1E69C4A80]];
        v5 = selfCopy[128];
        selfCopy[128] = v4;

        [selfCopy[128] setMaterialGroupNameBase:@"pass-notification"];
        v3 = selfCopy[128];
      }
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

void __38__PKPassBannerViewController_loadView__block_invoke(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v1 = [v2 layer];
    [v1 setAllowsHitTesting:0];

    [v2 setUserInteractionEnabled:0];
  }
}

- (double)_layoutContentViewWithBounds:(CGFloat)bounds commit:(CGFloat)commit
{
  if (!self)
  {
    return 0.0;
  }

  v12 = *(self + 1008);
  if (v12 == 1)
  {
    v47 = *(self + 1112);
    _shouldReverseLayoutDirection = [*(self + 1032) _shouldReverseLayoutDirection];
    if (_shouldReverseLayoutDirection)
    {
      v51 = 2;
    }

    else
    {
      v51 = 0x200000000;
    }

    v49.n128_u64[0] = 0x402F555555555555;
    PKFloatRoundToPixel(v49, v50);
    rect_24a = v52;
    sBUISA_systemApertureObstructedAreaLayoutGuide = [*(self + 1032) SBUISA_systemApertureObstructedAreaLayoutGuide];
    [sBUISA_systemApertureObstructedAreaLayoutGuide layoutFrame];
    v243 = v54;
    v251 = v55;
    v255 = v56;
    v58 = v57;

    [*(self + 1032) SBUISA_standardInteritemPadding];
    amount = v59;
    if (v47 == 4)
    {
      v60 = 1.0;
    }

    else
    {
      v60 = 0.5;
    }

    __72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke(*(self + 1040));
    v62 = v61;
    v64 = v63;
    __72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke(*(self + 1048));
    r2 = v62;
    v249 = v65.n128_f64[0];
    rect = v64;
    rect_8 = v66.n128_f64[0];
    v67 = v64 > 0.0 && v62 > 0.0;
    v68 = *(self + 1048);
    commitCopy = commit;
    v268 = a5;
    v242 = v60;
    rect_16a = a6;
    boundsCopy = bounds;
    if (v68)
    {
      LODWORD(v68) = *(v68 + 424) != 0;
    }

    v240 = *&v58;
    v253 = v251 + v58;
    if (v65.n128_f64[0] > 0.0)
    {
      v69 = v68;
    }

    else
    {
      v69 = 0;
    }

    v70 = v66.n128_f64[0];
    v71 = v66.n128_f64[0] > 0.0;
    v72 = *MEMORY[0x1E695F060];
    v73 = *(MEMORY[0x1E695F060] + 8);
    v66.n128_f64[0] = v62;
    if (v67)
    {
      v74 = v62;
    }

    else
    {
      v74 = *MEMORY[0x1E695F060];
    }

    if (v67)
    {
      v75 = v64;
    }

    else
    {
      v75 = *(MEMORY[0x1E695F060] + 8);
    }

    v65.n128_f64[0] = v74 * -0.5 + 30.0;
    v76 = 0.0;
    if (!v67)
    {
      v66.n128_f64[0] = 0.0;
    }

    v244 = v66.n128_f64[0];
    PKFloatRoundToPixel(v65, v66);
    v78 = v77;
    v79.n128_f64[0] = v75 * -0.5 + 30.0;
    PKFloatRoundToPixel(v79, v80);
    v82 = v69 & v71;
    v83.n128_f64[0] = rect_24a;
    v84 = fmax(v78, 15.0);
    if (v82)
    {
      v76 = v249;
    }

    v245 = v73;
    v246 = v72;
    if (v82)
    {
      v85 = v249;
    }

    else
    {
      v85 = v72;
    }

    v81.n128_f64[0] = v85 * -0.5 + 30.0;
    if (!v82)
    {
      v70 = v73;
    }

    PKFloatRoundToPixel(v81, v83);
    v87 = v86;
    v88.n128_f64[0] = v70 * -0.5 + 30.0;
    PKFloatRoundToPixel(v88, v89);
    v90 = fmax(v87, 15.0);
    v91 = v244 + v84;
    v92 = v76 + v90;
    _maximumSystemApertureWidth = v268;
    if (v47 != 4)
    {
      _maximumSystemApertureWidth = [(PKPassBannerViewController *)self _maximumSystemApertureWidth];
    }

    v94 = _maximumSystemApertureWidth - v91;
    v95 = amount;
    if (v67)
    {
      v94 = v94 - amount;
    }

    v96 = v94 - v92;
    if (v82)
    {
      v96 = v96 - amount;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke_2;
    aBlock[3] = &__block_descriptor_40_e34_____CGSize_dd_BdB_16__0__UILabel_8l;
    *&aBlock[4] = v96;
    v97 = _Block_copy(aBlock);
    v290 = 0;
    v288 = 0u;
    v289 = 0u;
    (v97)[2](&v288);
    v100 = v290;
    v101 = *&v288;
    if (v290 == 1)
    {
      v99.n128_u64[0] = *(&v288 + 1);
      v98.n128_f64[0] = *(&v289 + 1) + *(&v288 + 1);
      PKFloatRoundToPixel(v98, v99);
      v102 = rect_24a;
      if (!a2)
      {
        goto LABEL_130;
      }
    }

    else
    {
      v102 = rect_24a;
      if (!a2)
      {
LABEL_130:

        v229 = v95 + v91;
        if (!v67)
        {
          v229 = v91;
        }

        v230 = v229 + v101;
        if (!v100)
        {
          v230 = v229;
        }

        v231 = v95 + v230;
        if ((v82 & 1) == 0)
        {
          v231 = v230;
        }

        return fmax(v92 + v231, v255 + fmax(v91, v92) * 2.0);
      }
    }

    v239 = v91;
    if (v47 == 4)
    {
      [*(self + 1056) setAlpha:0.0];
      [*(self + 1040) setAlpha:1.0];
      [*(self + 1048) setAlpha:1.0];
    }

    v238 = v92;
    [*(self + 1080) setAlpha:(v47 == 4)];
    v146 = fmax(v243, boundsCopy);
    v147 = v146 - boundsCopy;
    v148 = fmax(v243 + v255, v146);
    v149 = fmax(boundsCopy + v268, v148) - v148;
    if (_shouldReverseLayoutDirection)
    {
      v150 = v148;
    }

    else
    {
      v150 = boundsCopy;
    }

    if (_shouldReverseLayoutDirection)
    {
      v151 = v149;
    }

    else
    {
      v151 = v147;
    }

    if (_shouldReverseLayoutDirection)
    {
      v152 = boundsCopy;
    }

    else
    {
      v152 = v148;
    }

    if (_shouldReverseLayoutDirection)
    {
      v153 = v147;
    }

    else
    {
      v153 = v149;
    }

    v236 = v152;
    v237 = v153;
    v283 = MEMORY[0x1E69E9820];
    v284 = 3221225472;
    v285 = __72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke_3;
    v286 = &__block_descriptor_64_e62__CGSize_dd_56__0_CGSize_dd_8_CGRect__CGPoint_dd__CGSize_dd__24l;
    v287.origin.x = boundsCopy + 15.0;
    v287.origin.y = commitCopy + v102;
    v287.size.width = v268 + -30.0;
    v287.size.height = rect_16a - (v102 + v102);
    v154 = _Block_copy(&v283);
    v156 = v154;
    v157.n128_u64[1] = 0;
    memset(&v281, 0, sizeof(v281));
    v282.origin.x = v150;
    v282.origin.y = commitCopy;
    v282.size.width = v151;
    v282.size.height = rect_16a;
    v241 = v101;
    v234 = v151;
    if (v67)
    {
      v158 = (v154[2])(v154, r2, rect, v150, commitCopy, v151, rect_16a);
      v159 = v155.n128_f64[0];
    }

    else
    {
      v159 = v73;
      v158 = v246;
    }

    v157.n128_f64[0] = v158 * -0.5 + 30.0;
    PKFloatRoundToPixel(v157, v155);
    v161 = v160;
    v162.n128_f64[0] = v159 * -0.5 + 30.0;
    PKFloatRoundToPixel(v162, v163);
    v293.origin.x = v150;
    v293.origin.y = commitCopy;
    v293.size.width = v234;
    v293.size.height = rect_16a;
    CGRectDivide(v293, &v281, &v282, fmax(v161, 15.0), v51);
    v164.n128_u64[0] = *&v282.origin.x;
    v165.n128_u64[0] = *&v282.origin.y;
    v166.n128_u64[0] = *&v282.size.width;
    v167.n128_u64[0] = *&v282.size.height;
    v168.n128_f64[0] = v158;
    v169.n128_f64[0] = v159;
    PKSizeAlignedInRect(v51 & 2 | 0x100000000, v168, v169, v164, v165, v166, v167, v170);
    v175 = v171.n128_f64[0];
    v176 = v172.n128_f64[0];
    v177 = v173;
    v178 = v174;
    if (v47 == 4)
    {
      [*(self + 1040) setFrame:{v171.n128_f64[0], v172.n128_f64[0], v173, v174}];
    }

    v233 = v178;
    v235 = v177;
    r2a = v176;
    recta = v175;
    v282.origin.x = v236;
    v282.origin.y = commitCopy;
    v180 = v245;
    v179 = v246;
    v282.size.width = v237;
    v282.size.height = rect_16a;
    if (v82)
    {
      v179 = v156[2](v156, v249, rect_8);
      v180 = v172.n128_f64[0];
    }

    v171.n128_f64[0] = v179 * -0.5 + 30.0;
    PKFloatRoundToPixel(v171, v172);
    v182 = v181;
    v183.n128_f64[0] = v180 * -0.5 + 30.0;
    PKFloatRoundToPixel(v183, v184);
    CGRectDivide(v282, &v281, &v282, fmax(v182, 15.0), HIDWORD(v51));
    v185.n128_u64[0] = *&v282.origin.x;
    v186.n128_u64[0] = *&v282.origin.y;
    v187.n128_u64[0] = *&v282.size.width;
    v188.n128_u64[0] = *&v282.size.height;
    v189.n128_f64[0] = v179;
    v190.n128_f64[0] = v180;
    PKSizeAlignedInRect(HIDWORD(v51) | 0x100000000, v189, v190, v185, v186, v187, v188, v191);
    if (v47 == 4)
    {
      v209 = v193;
      v250 = v195;
      v252 = v192;
      v210 = v194;
      [*(self + 1048) setFrame:?];
      v294.origin.x = boundsCopy;
      v294.origin.y = commitCopy;
      v282.origin.x = boundsCopy;
      v282.origin.y = commitCopy;
      v294.size.width = v268;
      v282.size.width = v268;
      v282.size.height = rect_16a;
      v294.size.height = rect_16a;
      v295 = CGRectStandardize(v294);
      x = v295.origin.x;
      y = v295.origin.y;
      width = v295.size.width;
      height = v295.size.height;
      v303.origin.x = recta;
      v303.origin.y = r2a;
      v303.size.height = v233;
      v303.size.width = v235;
      v296 = CGRectIntersection(v295, v303);
      v215 = v296.origin.x;
      v216 = v296.size.width;
      if (!CGRectIsNull(v296))
      {
        if (v51)
        {
          width = fmax(v215 - x, 0.0);
        }

        else
        {
          v217 = x + width;
          x = fmin(v215 + v216, x + width);
          width = v217 - x;
        }
      }

      v282.origin.x = x;
      v282.origin.y = y;
      v282.size.width = width;
      v282.size.height = height;
      if (v67)
      {
        v297.origin.x = x;
        v297.origin.y = y;
        v297.size.width = width;
        v297.size.height = height;
        CGRectDivide(v297, &v281, &v282, amount, v51);
        x = v282.origin.x;
        y = v282.origin.y;
        width = v282.size.width;
        height = v282.size.height;
      }

      v298.origin.x = x;
      v298.origin.y = y;
      v298.size.width = width;
      v298.size.height = height;
      v299 = CGRectStandardize(v298);
      v218 = v299.origin.x;
      v219 = v299.origin.y;
      v220 = v299.size.width;
      v221 = v299.size.height;
      v304.origin.x = v252;
      v304.origin.y = v209;
      v304.size.width = v210;
      v304.size.height = v250;
      v300 = CGRectIntersection(v299, v304);
      v222 = v300.origin.x;
      v223 = v300.size.width;
      if (CGRectIsNull(v300))
      {
        v95 = amount;
      }

      else
      {
        v95 = amount;
        if (_shouldReverseLayoutDirection)
        {
          v224 = v218 + v220;
          v218 = fmin(v222 + v223, v218 + v220);
          v220 = v224 - v218;
        }

        else
        {
          v220 = fmax(v222 - v218, 0.0);
        }
      }

      v282.origin.x = v218;
      v282.origin.y = v219;
      v282.size.width = v220;
      v282.size.height = v221;
      v92 = v238;
      if (v82)
      {
        v301.origin.x = v218;
        v301.origin.y = v219;
        v301.size.width = v220;
        v301.size.height = v221;
        CGRectDivide(v301, &v281, &v282, v95, HIDWORD(v51));
        v218 = v282.origin.x;
        v219 = v282.origin.y;
        v220 = v282.size.width;
        v221 = v282.size.height;
      }

      v302.origin.x = v218;
      v302.origin.y = v219;
      v302.size.width = v220;
      v302.size.height = v221;
      CGRectDivide(v302, &v281, &v282, v253, CGRectMinYEdge);
      v101 = v241;
    }

    else
    {
      v196 = v246 + *&v288;
      v197 = fmax(*(&v288 + 1), v245);
      if (!v290)
      {
        v196 = v246;
        v197 = v245;
      }

      PKSizeRoundToPixel(v196 * 0.5, v197 * 0.5);
      v198.n128_f64[0] = v243;
      v199.n128_f64[0] = v251;
      v200.n128_f64[0] = v255;
      v201.n128_u64[0] = v240;
      PKSizeAlignedInRect(0x200000001, v202, v203, v198, v199, v200, v201, v204);
      v282.origin.x = v205;
      v282.origin.y = v206;
      v282.size.width = v207;
      v282.size.height = v208;
      v95 = amount;
      v92 = v238;
    }

    *&remainder.origin.x = MEMORY[0x1E69E9820];
    *&remainder.origin.y = 3221225472;
    *&remainder.size.width = __72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke_4;
    *&remainder.size.height = &unk_1E8020BF8;
    v278 = v97;
    v279 = v242;
    v280 = v47 != 4;
    v225 = _Block_copy(&remainder);
    *&slice.origin.x = MEMORY[0x1E69E9820];
    *&slice.origin.y = 3221225472;
    *&slice.size.width = __72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke_5;
    *&slice.size.height = &__block_descriptor_48_e71_v88__0__UILabel_8____CGSize_dd_BdB_16_CGRect__CGPoint_dd__CGSize_dd__56l;
    v276 = v51;
    v275 = v242;
    v226 = _Block_copy(&slice);
    v273 = 0;
    v271 = 0u;
    v272 = 0u;
    v225[2](&v271, v225, *(self + 1080), v282.size.width);
    v227 = *(self + 1080);
    v228 = v226[2];
    v269[0] = v271;
    v269[1] = v272;
    v270 = v273;
    v228(v226, v227, v269, v282.origin.x, v282.origin.y, v282.size.width, v282.size.height);

    v91 = v239;
    goto LABEL_130;
  }

  if (!v12)
  {
    if ([*(self + 1032) _shouldReverseLayoutDirection])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0x200000000;
    }

    v15 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
    [*(self + 1040) sizeThatFits:{*MEMORY[0x1E695F060], v14}];
    v18 = v16.n128_f64[0];
    v19 = v17.n128_u64[0];
    v20 = v16.n128_f64[0] > 0.0;
    v21 = v17.n128_f64[0] > 0.0;
    v22 = v20 && v21;
    if (v20 && v21)
    {
      v23 = v17.n128_f64[0];
    }

    else
    {
      v16.n128_f64[0] = v15;
      v23 = v14;
    }

    v16.n128_f64[0] = v16.n128_f64[0] * -0.5 + 42.0;
    PKFloatRoundToPixel(v16, v17);
    v25 = v24;
    v26.n128_f64[0] = v23 * -0.5 + 42.0;
    PKFloatRoundToPixel(v26, v27);
    v28 = fmax(v25, 20.0);
    [*(self + 1048) sizeThatFits:{v15, v14}];
    v31 = *(self + 1048);
    if (v31)
    {
      LODWORD(v31) = *(v31 + 424) != 0;
    }

    if (v29.n128_f64[0] <= 0.0)
    {
      LODWORD(v31) = 0;
    }

    v32 = v30.n128_f64[0] > 0.0;
    v33 = v31 & v32;
    v34 = v29.n128_f64[0];
    if ((v31 & v32) == 0)
    {
      v29.n128_f64[0] = v15;
    }

    rect_24 = v30.n128_u64[0];
    if ((v31 & v32) != 0)
    {
      v14 = v30.n128_f64[0];
    }

    v29.n128_f64[0] = v29.n128_f64[0] * -0.5 + 42.0;
    PKFloatRoundToPixel(v29, v30);
    v36 = v35;
    v37.n128_f64[0] = v14 * -0.5 + 42.0;
    PKFloatRoundToPixel(v37, v38);
    memset(&slice, 0, sizeof(slice));
    v292.origin.x = bounds;
    v292.origin.y = commit;
    remainder.origin.x = bounds;
    remainder.origin.y = commit;
    v292.size.width = a5;
    v292.size.height = a6;
    remainder.size.width = a5;
    remainder.size.height = a6;
    CGRectDivide(v292, &slice, &remainder, v28, v13);
    if (v22)
    {
      v45 = 20.0;
      CGRectDivide(remainder, &slice, &remainder, v18, v13);
    }

    else
    {
      v46.n128_u64[1] = *&remainder.origin.y;
      slice.origin = remainder.origin;
      slice.size.width = 0.0;
      slice.size.height = remainder.size.height;
      v45 = 20.0;
    }

    v104 = fmax(v36, v45);
    v105 = MEMORY[0x1E69BB7F8];
    if (a2)
    {
      v106 = *(self + 1040);
      v40.n128_u64[0] = *&slice.origin.x;
      v41.n128_u64[0] = *&slice.origin.y;
      v42.n128_u64[0] = *&slice.size.width;
      v43.n128_u64[0] = *&slice.size.height;
      v46.n128_f64[0] = v18;
      v39.n128_u64[0] = v19;
      PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v46, v39, v40, v41, v42, v43, v44);
      [v106 setFrame:?];
    }

    CGRectDivide(remainder, &slice, &remainder, v104, HIDWORD(v13));
    v103 = a5;
    if (v33)
    {
      CGRectDivide(remainder, &slice, &remainder, v34, HIDWORD(v13));
      if (!a2)
      {
LABEL_67:
        if (v22)
        {
          CGRectDivide(remainder, &slice, &remainder, 16.0, v13);
          if ((v33 & 1) == 0)
          {
LABEL_70:
            v283 = MEMORY[0x1E69E9820];
            v284 = 3221225472;
            v285 = __72__PKPassBannerViewController__layoutLegacyContentViewWithBounds_commit___block_invoke;
            v286 = &__block_descriptor_64_e27__CGSize_dd_16__0__UILabel_8l;
            v287 = remainder;
            v115 = _Block_copy(&v283);
            v116 = v115[2](v115, *(self + 1088));
            v118 = v117;
            v124 = v115[2](v115, *(self + 1096));
            v125 = v130.n128_f64[0];
            v126 = v116 > 0.0;
            v127 = v118 > 0.0;
            v128 = v130.n128_f64[0] > 0.0;
            v129.n128_u64[0] = 0;
            v130.n128_f64[0] = v130.n128_f64[0] + 0.0;
            v131 = v124 > 0.0 && v128;
            if (v124 <= 0.0 || !v128)
            {
              v130.n128_f64[0] = 0.0;
            }

            v132 = v126 && v127;
            if (v126 && v127)
            {
              v129.n128_f64[0] = v118;
            }

            v133 = v129.n128_f64[0] + v130.n128_f64[0];
            v119.n128_u64[0] = *&remainder.origin.x;
            v120.n128_u64[0] = *&remainder.origin.y;
            v129.n128_u64[0] = *&remainder.size.width;
            v122.n128_u64[0] = *&remainder.size.height;
            v130.n128_f64[0] = v133;
            v121.n128_u64[0] = *&remainder.size.width;
            PKSizeAlignedInRect(*v105, v129, v130, v119, v120, v121, v122, v123);
            remainder.origin.x = v134;
            *&remainder.origin.y = v135.n128_u64[0];
            *&remainder.size.width = v136.n128_u64[0];
            *&remainder.size.height = v137.n128_u64[0];
            if (v131 == 1)
            {
              CGRectDivide(*&v134, &slice, &remainder, v125, CGRectMinYEdge);
            }

            else
            {
              v141.n128_u64[1] = *&remainder.origin.y;
              slice.origin = remainder.origin;
              *&slice.size.width = v136.n128_u64[0];
              slice.size.height = 0.0;
            }

            v142 = v132 & v131;
            if (a2)
            {
              v144 = *(self + 1096);
              v136.n128_u64[0] = *&slice.origin.x;
              v137.n128_u64[0] = *&slice.origin.y;
              v138.n128_u64[0] = *&slice.size.width;
              v139.n128_u64[0] = *&slice.size.height;
              v141.n128_f64[0] = v124;
              v135.n128_f64[0] = v125;
              PKSizeAlignedInRect(v13 & 2 | 0x100000000, v141, v135, v136, v137, v138, v139, v140);
              [v144 setFrame:?];
              if ((v142 & 1) == 0)
              {
LABEL_81:
                if (v132)
                {
                  goto LABEL_82;
                }

                goto LABEL_86;
              }
            }

            else if ((v132 & v131 & 1) == 0)
            {
              goto LABEL_81;
            }

            CGRectDivide(remainder, &slice, &remainder, 0.0, CGRectMinYEdge);
            if (v132)
            {
LABEL_82:
              CGRectDivide(remainder, &slice, &remainder, v118, CGRectMinYEdge);
              if (!a2)
              {
                goto LABEL_88;
              }

              goto LABEL_87;
            }

LABEL_86:
            v143.n128_u64[1] = *&remainder.origin.y;
            slice.origin = remainder.origin;
            slice.size.width = remainder.size.width;
            slice.size.height = 0.0;
            if (!a2)
            {
LABEL_88:

              return v103;
            }

LABEL_87:
            v145 = *(self + 1088);
            v136.n128_u64[0] = *&slice.origin.x;
            v137.n128_u64[0] = *&slice.origin.y;
            v138.n128_u64[0] = *&slice.size.width;
            v139.n128_u64[0] = *&slice.size.height;
            v143.n128_f64[0] = v116;
            v135.n128_f64[0] = v118;
            PKSizeAlignedInRect(v13 & 2 | 0x100000000, v143, v135, v136, v137, v138, v139, v140);
            [v145 setFrame:?];
            goto LABEL_88;
          }
        }

        else if ((v33 & 1) == 0)
        {
          goto LABEL_70;
        }

        CGRectDivide(remainder, &slice, &remainder, 8.0, HIDWORD(v13));
        goto LABEL_70;
      }
    }

    else
    {
      v113.n128_u64[1] = *&remainder.origin.y;
      slice.origin = remainder.origin;
      slice.size.width = 0.0;
      slice.size.height = remainder.size.height;
      if (!a2)
      {
        goto LABEL_67;
      }
    }

    v114 = *(self + 1048);
    v108.n128_u64[0] = *&slice.origin.x;
    v109.n128_u64[0] = *&slice.origin.y;
    v110.n128_u64[0] = *&slice.size.width;
    v111.n128_u64[0] = *&slice.size.height;
    v113.n128_f64[0] = v34;
    v107.n128_u64[0] = rect_24;
    PKSizeAlignedInRect(*v105, v113, v107, v108, v109, v110, v111, v112);
    [v114 setFrame:?];
    goto LABEL_67;
  }

  return *MEMORY[0x1E695F060];
}

void *__72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke(void *result)
{
  if (result)
  {
    [result sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    return PKSizeRoundToPixel(v1 + v1, v2 + v2);
  }

  return result;
}

- (double)_maximumSystemApertureWidth
{
  if (!self)
  {
    return 0.0;
  }

  if (self[126] != 1)
  {
    __break(1u);
    return 0.0;
  }

  viewIfLoaded = [self viewIfLoaded];
  v2 = viewIfLoaded;
  if (viewIfLoaded && ([viewIfLoaded window], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    [v3 bounds];
    v6 = v5;
  }

  else
  {
    v6 = 1.79769313e308;
  }

  return v6;
}

void __72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke_2(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  if (v5)
  {
    v23 = v5;
    [v5 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v8 = v6;
    v9 = fmin(v6, *(a1 + 32));
    if (v9 <= 0.0 || (v10 = v7, v7 <= 0.0))
    {
      v22 = 0;
      *a3 = *MEMORY[0x1E695F060];
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v5 = v23;
    }

    else
    {
      v11 = v9 < v6;
      [v23 bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [v23 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v8, v10}];
      [v23 _tightBoundingRectOfFirstLine];
      v21 = v20;
      [v23 setBounds:{v13, v15, v17, v19}];
      v5 = v23;
      *a3 = v9;
      *(a3 + 8) = v10;
      *(a3 + 16) = v11;
      *(a3 + 24) = -v21;
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
    *a3 = *MEMORY[0x1E695F060];
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  *(a3 + 32) = v22;
}

double __72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke_3(CGRect *a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v9.origin.x = a4;
  v9.origin.y = a5;
  v9.size.width = a6;
  v9.size.height = a7;
  v10 = CGRectIntersection(v9, a1[1]);
  CGRectIsNull(v10);

  PKSizeAspectFit();
  return result;
}

void *__72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  result = (*(*(a1 + 32) + 16))(&v18);
  if (a2 && (v20 & 1) != 0)
  {
    v9 = *(a1 + 40);
    v10 = vmulq_n_f64(v18, v9);
    v18 = v10;
    *(&v19 + 1) = v9 * *(&v19 + 1);
    v11 = v10.f64[0];
    if (v10.f64[0] > a4)
    {
      v18.f64[0] = a4;
      LOBYTE(v19) = 1;
      v11 = a4;
    }

    PKSizeRoundToPixel(v11, v10.f64[1]);
    v18.f64[0] = v12;
    *&v18.f64[1] = v13.n128_u64[0];
    v14.n128_u64[0] = *(&v19 + 1);
    result = PKFloatRoundToPixel(v14, v13);
    *(&v19 + 1) = v15;
    if (v19 == 1)
    {
      v16 = *(a1 + 48) ^ 1;
    }

    else
    {
      v16 = 0;
    }

    LOBYTE(v19) = v16 & 1;
    *(a3 + 32) = v20;
    v17 = v19;
    *a3 = v18;
    *(a3 + 16) = v17;
  }

  else
  {
    *a3 = *MEMORY[0x1E695F060];
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
  }

  return result;
}

void __72__PKPassBannerViewController__layoutModernContentViewWithBounds_commit___block_invoke_5(uint64_t a1, void *a2, double *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  remainder.origin.x = a4;
  remainder.origin.y = a5;
  remainder.size.width = a6;
  remainder.size.height = a7;
  v13 = a2;
  memset(&slice, 0, sizeof(slice));
  v36.origin.x = a4;
  v36.origin.y = a5;
  v36.size.width = a6;
  v36.size.height = a7;
  CGRectDivide(v36, &slice, &remainder, *a3, *(a1 + 40));
  v14 = slice.size.height - (a3[3] + 0.0);
  v15.f64[0] = 0.0;
  v15.f64[1] = a3[3];
  slice.origin = vaddq_f64(slice.origin, v15);
  slice.size.height = v14;
  CATransform3DMakeScale(&v33, *(a1 + 32), *(a1 + 32), 1.0);
  [v13 setTransform3D:&v33];
  [v13 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), *a3, a3[1]}];
  v16.n128_f64[0] = *a3;
  v17.n128_f64[0] = a3[1];
  v18.n128_u64[0] = *&slice.origin.x;
  v19.n128_u64[0] = *&slice.origin.y;
  v20.n128_u64[0] = *&slice.size.width;
  v21.n128_u64[0] = *&slice.size.height;
  PKSizeAlignedInRect(1, v16, v17, v18, v19, v20, v21, v22);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [v13 anchorPoint];
  [v13 setCenter:{v24 + v31 * v28, v26 + v32 * v30}];
  if ([v13 marqueeRunning] != *(a3 + 16))
  {
    [v13 setMarqueeRunning:?];
  }
}

double __72__PKPassBannerViewController__layoutLegacyContentViewWithBounds_commit___block_invoke(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return *MEMORY[0x1E695F060];
  }

  [a2 sizeThatFits:{*(a1 + 48), *(a1 + 56)}];
  return fmin(v3, *(a1 + 48));
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = PKPassBannerViewController;
  [(PKPassBannerViewController *)&v15 viewWillLayoutSubviews];
  view = [(PKPassBannerViewController *)self view];
  [(UIView *)view bounds];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  platter = self->_platter;
  if (platter)
  {
    [(PLPlatterView *)platter setFrame:v4, v5, v6, v7];
  }

  v13 = *MEMORY[0x1E695EFF8];
  v14 = *(MEMORY[0x1E695EFF8] + 8);
  if (view == self->_contentView)
  {
    v13 = v8;
    v14 = v9;
  }

  [(PKPassBannerViewController *)self _layoutContentViewWithBounds:v13 commit:v14, v10, v11];
}

void __47__PKPassBannerViewController__startRevokeTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(PKPassBannerViewController *)WeakRetained _revoke];
    WeakRetained = v2;
  }
}

- (void)_revoke
{
  if (self && (*(self + 995) & 1) == 0)
  {
    [(PKPassBannerViewController *)self _revoked];
    WeakRetained = objc_loadWeakRetained((self + 1104));
    [WeakRetained revoke];
  }
}

- (void)_revoked
{
  if (self)
  {
    if ((*(self + 995) & 1) == 0)
    {
      *(self + 995) = 1;
      v2 = *(self + 1000);
      if (v2)
      {
        dispatch_source_cancel(v2);
        v3 = *(self + 1000);
        *(self + 1000) = 0;
      }
    }
  }
}

- (void)_appeared
{
  if (self)
  {
    if ((*(self + 994) & 1) == 0)
    {
      *(self + 994) = 1;
      if ((*(self + 995) & 1) == 0)
      {
        if (*(self + 992) == 1)
        {
          v2 = 1394;
          if ([*(self + 1120) passType] == 1)
          {
            if ([*(self + 1120) isAccessPass])
            {
              v2 = 1163;
            }

            else
            {
              v2 = 1394;
            }
          }
        }

        else
        {
          v2 = 1400;
        }

        AudioServicesPlaySystemSound(v2);
      }
    }
  }
}

- (void)_tapped:(id)_tapped
{
  passURL = [(PKPass *)self->_pass passURL];
  if (passURL)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E699F918]];
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E699F970]];
    [v4 setObject:passURL forKeyedSubscript:*MEMORY[0x1E699F960]];
    v5 = *MEMORY[0x1E69BC3D8];
    v6 = [MEMORY[0x1E699FB70] optionsWithDictionary:v4];
    PKOpenApplication(v5, v6);
  }

  [(PKPassBannerViewController *)self _revoke];
}

void __57__PKPassBannerViewController__updatePreferredContentSize__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (WeakRetained[995] & 1) == 0)
  {
    v4 = WeakRetained;
    [WeakRetained loadViewIfNeeded];
    v3 = [(PKPassBannerViewController *)*(a1 + 32) _maximumSystemApertureWidth];
    [v4 setPreferredContentSize:{-[PKPassBannerViewController _layoutContentViewWithBounds:commit:](v4, 0, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v3, 1.79769313e308)}];
    WeakRetained = v4;
    v4[1016] = 0;
  }
}

- (void)setPresentable:(id)presentable
{
  presentableCopy = presentable;
  objc_storeWeak(&self->_presentable, presentableCopy);
  v4 = presentableCopy;
  if (presentableCopy && self->_revoked)
  {
    [presentableCopy revoke];
    v4 = presentableCopy;
  }
}

- (UIEdgeInsets)bannerContentOutsets
{
  _platterView = [(PKPassBannerViewController *)self _platterView];
  v3 = _platterView;
  if (_platterView)
  {
    [_platterView shadowOutsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x1E69DDCE0];
    v7 = *(MEMORY[0x1E69DDCE0] + 8);
    v9 = *(MEMORY[0x1E69DDCE0] + 16);
    v11 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize
{
  if (self->_style)
  {

    [(PKPassBannerViewController *)self preferredContentSize:size.width];
  }

  else
  {
    height = size.height;
    width = size.width;
    [(PKPassBannerViewController *)self loadViewIfNeeded:size.width];
    v9 = *MEMORY[0x1E695EFF8];
    v10 = *(MEMORY[0x1E695EFF8] + 8);

    height = [(PKPassBannerViewController *)self _layoutContentViewWithBounds:v9 commit:v10, width, height];
  }

  result.height = v6;
  result.width = height;
  return result;
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  if (!self->_style)
  {
    MEMORY[0x1EEE42668]();
  }
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  if (!self->_style)
  {
    location[5] = v3;
    v16 = v4;
    if (!self->_revoked)
    {
      revokeTimer = self->_revokeTimer;
      if (revokeTimer)
      {
        dispatch_source_cancel(revokeTimer);
        v7 = self->_revokeTimer;
        self->_revokeTimer = 0;
      }

      objc_initWeak(location, self);
      v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      v9 = self->_revokeTimer;
      self->_revokeTimer = v8;

      v10 = self->_revokeTimer;
      v11 = dispatch_time(0, 6000000000);
      dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      v12 = self->_revokeTimer;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __47__PKPassBannerViewController__startRevokeTimer__block_invoke;
      v13[3] = &unk_1E8010998;
      objc_copyWeak(&v14, location);
      dispatch_source_set_event_handler(v12, v13);
      dispatch_resume(self->_revokeTimer);
      objc_destroyWeak(&v14);
      objc_destroyWeak(location);
    }

    [(PKPassBannerViewController *)self _appeared];
  }
}

- (unint64_t)presentationBehaviors
{
  if (self->_walletForeground)
  {
    return 74;
  }

  else
  {
    return 72;
  }
}

- (void)setActiveLayoutMode:(int64_t)mode
{
  if (self->_activeLayoutMode != mode)
  {
    viewIfLoaded = [(PKPassBannerViewController *)self viewIfLoaded];
    v7 = viewIfLoaded;
    if (viewIfLoaded)
    {
      [viewIfLoaded layoutIfNeeded];
      viewIfLoaded = v7;
    }

    self->_activeLayoutMode = mode;
    if (mode == 4)
    {
      if (self->_style != 1)
      {
        __break(1u);
        return;
      }

      if (!self->_updatingPreferredContentSize)
      {
        self->_updatingPreferredContentSize = 1;
        objc_initWeak(&location, self);
        systemApertureElementContext = [(PKPassBannerViewController *)self systemApertureElementContext];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __57__PKPassBannerViewController__updatePreferredContentSize__block_invoke;
        v8[3] = &unk_1E80110E0;
        objc_copyWeak(&v9, &location);
        v8[4] = self;
        [systemApertureElementContext setElementNeedsUpdateWithCoordinatedAnimations:v8];

        objc_destroyWeak(&v9);
        objc_destroyWeak(&location);
        viewIfLoaded = v7;
      }
    }

    if (viewIfLoaded)
    {
      [v7 setNeedsLayout];
      viewIfLoaded = v7;
    }
  }
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  if (!self->_revoked && !self->_appeared)
  {
    minimalView = self->_minimalView;
    [(UIView *)self->_contentView SBUISA_standardInteritemPadding];
    [(PKPassBannerMinimalView *)minimalView _setInteritemPadding:?];

    [(PKPassBannerViewController *)self _appeared];
  }
}

- (void)passBannerMinimalViewDidChangeSize:(id)size
{
  sizeCopy = size;
  if (self->_style == 1 && self->_activeLayoutMode != 4)
  {
    v6 = sizeCopy;
    systemApertureElementContext = [(PKPassBannerViewController *)self systemApertureElementContext];
    [systemApertureElementContext setElementNeedsUpdate];

    sizeCopy = v6;
  }
}

- (PKBannerViewControllerPresentable)presentable
{
  WeakRetained = objc_loadWeakRetained(&self->_presentable);

  return WeakRetained;
}

@end