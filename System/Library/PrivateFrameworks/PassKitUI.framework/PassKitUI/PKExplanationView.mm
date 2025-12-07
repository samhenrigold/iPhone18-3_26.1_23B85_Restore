@interface PKExplanationView
- (BOOL)_isBuddyiPad;
- (CGSize)logoImageViewTargetSize;
- (PKExplanationView)initWithContext:(int64_t)context delegate:(id)delegate;
- (PKExplanationViewDelegate)delegate;
- (double)_resolvedHorizontalMargin;
- (id)_createBodyTextView;
- (int64_t)visibilityBackdropView:(id)view preferredStyleForTraitCollection:(id)collection;
- (void)_bodyButtonTapped;
- (void)_calculateBlur;
- (void)_configureScrollViewBackgroundColor;
- (void)_continue;
- (void)_createBodyButton;
- (void)_createSubviews;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_setupLater;
- (void)_updateIconBorderColor;
- (void)_updateImage;
- (void)_updateTitleLabel;
- (void)dealloc;
- (void)layoutSubviews;
- (void)pk_applyAppearance:(id)appearance;
- (void)setAttributedBodyText:(id)text;
- (void)setAttributedSecondaryBodyText:(id)text;
- (void)setBodyButtonNumberOfLines:(int64_t)lines;
- (void)setBodyButtonText:(id)text;
- (void)setBodyButtonUsesLearnMoreStyle:(BOOL)style;
- (void)setBodyDataDetectorTypes:(unint64_t)types;
- (void)setBodyImage:(id)image;
- (void)setBodyText:(id)text;
- (void)setBodyTextAlignment:(int64_t)alignment;
- (void)setBodyTextColor:(id)color;
- (void)setBodyView:(id)view;
- (void)setBodyViewContentMode:(unint64_t)mode;
- (void)setBodyViewPadding:(double)padding;
- (void)setBodyViewThatFitsOverride:(id)override;
- (void)setForceShowSetupLaterButton:(BOOL)button;
- (void)setHeroView:(id)view;
- (void)setHeroViewContentMode:(unint64_t)mode;
- (void)setHeroViewPrefersSizeTransform:(BOOL)transform;
- (void)setHeroViewSizeThatFitsOverride:(id)override;
- (void)setHideTitleText:(BOOL)text;
- (void)setHorizontalMargin:(unint64_t)margin;
- (void)setImage:(id)image;
- (void)setImageStyle:(unint64_t)style;
- (void)setLogoImageViewTargetSize:(CGSize)size;
- (void)setPrivacyLink:(id)link;
- (void)setReverseBodyViewAndBodyButtonOrder:(BOOL)order;
- (void)setShowPrivacyView:(BOOL)view;
- (void)setShowSpinner:(BOOL)spinner;
- (void)setTitleAccessoriesEnabled:(BOOL)enabled;
- (void)setTitleAlignment:(int64_t)alignment;
- (void)setTitleFont:(id)font;
- (void)setTitleHyphenationFactor:(double)factor;
- (void)setTitleImage:(id)image;
- (void)setTitleLabelAttributedText;
- (void)setTitleLineBreakStrategy:(unint64_t)strategy;
- (void)setTitleText:(id)text;
- (void)setTitleTextColor:(id)color;
- (void)setTitleTextNumberOfLines:(int64_t)lines;
- (void)setTopBackgroundColor:(id)color;
- (void)setTopMargin:(double)margin;
- (void)showCheckmark:(BOOL)checkmark animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKExplanationView

- (void)pk_applyAppearance:(id)appearance
{
  appearanceCopy = appearance;
  backgroundColor = [appearanceCopy backgroundColor];
  [(PKExplanationView *)self setBackgroundColor:backgroundColor];

  tintColor = [appearanceCopy tintColor];
  [(PKExplanationView *)self setTintColor:tintColor];

  LODWORD(tintColor) = [appearanceCopy hasDarkAppearance];
  if (tintColor)
  {
    logoImageView = [(PKExplanationView *)self logoImageView];
    image = [logoImageView image];

    if (image)
    {
      image2 = [logoImageView image];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      v10 = [image2 _flatImageWithColor:whiteColor];
      v11 = [v10 imageWithRenderingMode:1];
      [logoImageView setImage:v11];
    }
  }
}

- (PKExplanationView)initWithContext:(int64_t)context delegate:(id)delegate
{
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = PKExplanationView;
  v7 = [(PKExplanationView *)&v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    v7->_context = context;
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v8->_showPrivacyView = 1;
    v8->_topMargin = 0.0;
    v8->_horizontalMargin = 0;
    v9 = PKOBKTextAlignment();
    v8->_bodyTextAlignment = v9;
    v8->_titleAlignment = v9;
    v8->_bodyDataDetectorTypes = 2;
    v8->_bodyButtonNumberOfLines = 1;
    PKSetupViewConstantsBodyViewPadding();
    v8->_bodyViewPadding = v10;
    v8->_topLogoPadding = 25.0;
    v11 = *(MEMORY[0x1E695F050] + 16);
    v8->_lastSeenValidBounds.origin = *MEMORY[0x1E695F050];
    v8->_lastSeenValidBounds.size = v11;
    v8->_imageIgnoresTopSafeArea = 0;
    v12 = PKOBKHeaderTitleTextColor();
    titleTextColor = v8->_titleTextColor;
    v8->_titleTextColor = v12;

    v15 = PKOBKBodyTextColor(v14);
    bodyTextColor = v8->_bodyTextColor;
    v8->_bodyTextColor = v15;

    [(PKExplanationView *)v8 _createSubviews];
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKExplanationView;
  [(PKExplanationView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v171.receiver = self;
  v171.super_class = PKExplanationView;
  [(PKExplanationView *)&v171 layoutSubviews];
  v3 = PKUIGetMinScreenWidthType();
  if ([(UIScrollView *)self->_scrollView isDragging])
  {
    if (CGRectIsNull(self->_lastSeenValidBounds))
    {
      [(PKExplanationView *)self bounds];
      x = v4;
      y = v6;
      width = v8;
      height = v10;
    }

    else
    {
      x = self->_lastSeenValidBounds.origin.x;
      y = self->_lastSeenValidBounds.origin.y;
      width = self->_lastSeenValidBounds.size.width;
      height = self->_lastSeenValidBounds.size.height;
    }
  }

  else
  {
    [(PKExplanationView *)self bounds];
    x = v12;
    y = v13;
    width = v14;
    height = v15;
    self->_lastSeenValidBounds.origin.x = v12;
    self->_lastSeenValidBounds.origin.y = v13;
    self->_lastSeenValidBounds.size.width = v14;
    self->_lastSeenValidBounds.size.height = v15;
  }

  [(PKExplanationView *)self safeAreaInsets];
  v17 = v16;
  v152 = v18;
  [(UIScrollView *)self->_scrollView frame];
  v181.origin.x = v19;
  v181.origin.y = v20;
  v181.size.width = v21;
  v181.size.height = v22;
  v172.origin.x = x;
  v172.origin.y = y;
  v172.size.width = width;
  v172.size.height = height;
  if (!CGRectEqualToRect(v172, v181))
  {
    [(UIScrollView *)self->_scrollView setFrame:x, y, width, height];
  }

  if (self->_maxImageHeight == 0.0)
  {
    self->_maxImageHeight = dbl_1BE114FE0[PKUIGetMinScreenWidthType() == 0];
  }

  [(PKExplanationView *)self _resolvedHorizontalMargin];
  v24 = width + v23 * -2.0;
  if (PKIsPad())
  {
    IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
    v25.n128_f64[0] = fmin(v24, 536.0);
    if (IsSetupAssistant)
    {
      v24 = v25.n128_f64[0];
    }
  }

  if (width >= 768.0)
  {
    readableContentGuide = [(PKExplanationView *)self readableContentGuide];
    [readableContentGuide layoutFrame];
    v24 = fmin(v24, v34);
  }

  v25.n128_f64[0] = fmax(v24, 0.0);
  v26.n128_f64[0] = height - self->_topMargin;
  v156 = x;
  rect = y;
  v27.n128_f64[0] = x;
  v28.n128_f64[0] = y;
  v29.n128_f64[0] = width;
  v30.n128_f64[0] = height;
  PKSizeAlignedInRect(0x200000001, v25, v26, v27, v28, v29, v30, v31);
  v154 = v36;
  v155 = v35;
  v153 = v37;
  v39 = v38;
  v167 = 0;
  v168 = &v167;
  v169 = 0x2020000000;
  v170 = 0;
  superview = [(UIImageView *)self->_imageView superview];

  if (superview)
  {
    v41 = self->_imageView;
    [(UIImageView *)v41 frame];
    UIRectCenteredXInRect();
    v48 = v45;
    v49 = v46;
    v50 = v47;
    if (self->_imageIgnoresTopSafeArea)
    {
      topMargin = -v17;
    }

    else
    {
      topMargin = self->_topMargin;
    }

    [(UIImageView *)v41 setFrame:v45, topMargin, v46, v47];
    v173.origin.x = v48;
    v173.origin.y = topMargin;
    v173.size.width = v49;
    v173.size.height = v50;
    v168[3] = CGRectGetMaxY(v173);
  }

  else
  {
    superview2 = [(UIView *)self->_heroView superview];

    if (superview2)
    {
      if (self->_imageIgnoresTopSafeArea)
      {
        v44 = -v17;
      }

      else
      {
        v44 = self->_topMargin;
      }

      v174.origin.x = __35__PKExplanationView_layoutSubviews__block_invoke(x, v44, width, height, v43, self->_heroView, self->_heroViewSizeThatFitsOverride, self->_heroViewContentMode, self->_heroViewPrefersSizeTransform);
      v168[3] = CGRectGetMaxY(v174);
    }
  }

  _shouldReverseLayoutDirection = [(PKExplanationView *)self _shouldReverseLayoutDirection];
  v53 = MEMORY[0x1E695F060];
  if (!self->_hideTitleText)
  {
    if ([(PKExplanationView *)self _showTitleLogoImageView])
    {
      v54 = self->_logoImageView;
      image = [(UIImageView *)v54 image];
      [image size];
      v57 = v56;

      [(UIImageView *)v54 frame];
      v59 = v58;
      v61 = v60;
      v62 = v53[1];
      v63 = self->_logoImageViewTargetSize.width == *v53;
      if (self->_logoImageViewTargetSize.height != v62)
      {
        v63 = 0;
      }

      if (v3)
      {
        v63 = 0;
      }

      v64 = 20.0;
      v65 = v57 > 20.0;
      if (!v63 || !v65)
      {
        v64 = self->_logoImageViewTargetSize.height;
      }

      v66 = 1.79769313e308;
      if (!v63 || !v65)
      {
        v66 = self->_logoImageViewTargetSize.width;
      }

      if (v66 != *v53 || v64 != v62)
      {
        PKSizeAspectFit();
        v59 = v67;
        v61 = v68;
      }

      v71 = PKContentAlignmentMake();
      v72.n128_u64[0] = v59;
      v73.n128_u64[0] = v61;
      v75.n128_f64[0] = v154;
      v74.n128_f64[0] = v155;
      v76.n128_u64[0] = v153;
      v77.n128_f64[0] = v39;
      PKSizeAlignedInRect(v71, v72, v73, v74, v76, v77, v75, v78);
      v80 = v79;
      [(UIImageView *)v54 setFrame:?];
      v81 = v80 + self->_topLogoPadding;
      p_topLogoBottomPadding = &self->_topLogoBottomPadding;
    }

    else
    {
      v54 = self->_titleLabel;
      v69 = fmax(width - v39, 0.0) * 0.5;
      [(UIImageView *)v54 setContentInsets:0.0, v69, 0.0, v69];
      [(UIImageView *)v54 sizeThatFits:width, 1.79769313e308];
      v81 = v70;
      p_topLogoBottomPadding = &self->_topLogoPadding;
      [(UIImageView *)v54 setFrame:v156, v168[3] + self->_topLogoPadding, width, v70];
    }

    v168[3] = v81 + *p_topLogoBottomPadding + v168[3];
  }

  superview3 = [(UIImageView *)self->_bodyImageView superview];

  if (superview3)
  {
    [(UIImageView *)self->_bodyImageView frame];
    UIRectCenteredXInRect();
    v87 = v84;
    v88 = v168[3] + 44.0;
    if (self->_bodyImage)
    {
      if (v86 >= self->_maxImageHeight)
      {
        maxImageHeight = self->_maxImageHeight;
      }

      else
      {
        maxImageHeight = v86;
      }

      if (v85 >= width)
      {
        v90 = width;
      }

      else
      {
        v90 = v85;
      }
    }

    else
    {
      maxImageHeight = 0.0;
      v90 = 0.0;
    }

    [(UIImageView *)self->_bodyImageView setFrame:v84, v88, v90, maxImageHeight];
    v175.origin.x = v87;
    v175.origin.y = v88;
    v175.size.width = v90;
    v175.size.height = maxImageHeight;
    v168[3] = CGRectGetMaxY(v175);
    v91 = 36.0;
  }

  else if (_UISolariumFeatureFlagEnabled())
  {
    v91 = 0.0;
  }

  else
  {
    v91 = 8.0;
  }

  if (_os_feature_enabled_impl() && (_UISolariumFeatureFlagEnabled() & 1) != 0)
  {
    v91 = 0.0;
  }

  v92 = self->_bodyTextView;
  [(UITextView *)v92 frame];
  [(UITextView *)v92 sizeThatFits:v39, 1.79769313e308];
  UIRectCenteredXInRect();
  v94 = v93;
  v96 = v95;
  v98 = v97;
  if (v91 + v168[3] == 0.0)
  {
    v99 = 20.0;
  }

  else
  {
    v99 = v91 + v168[3];
  }

  [(UITextView *)v92 setFrame:v93, v99];
  v176.origin.x = v94;
  v176.origin.y = v99;
  v176.size.width = v96;
  v176.size.height = v98;
  MaxY = CGRectGetMaxY(v176);
  v168[3] = MaxY;
  if (self->_attributedSecondaryBodyText)
  {
    [(UITextView *)self->_secondaryBodyTextView frame];
    [(UITextView *)self->_secondaryBodyTextView sizeThatFits:v39, 1.79769313e308];
    UIRectCenteredXInRect();
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v107 = v168[3] + 8.0;
    [(UITextView *)self->_secondaryBodyTextView setFrame:v101, v107];
    v177.origin.x = v102;
    v177.origin.y = v107;
    v177.size.width = v104;
    v177.size.height = v106;
    MaxY = CGRectGetMaxY(v177);
    v168[3] = MaxY;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__PKExplanationView_layoutSubviews__block_invoke_2;
  aBlock[3] = &unk_1E801B658;
  *&aBlock[6] = v155;
  aBlock[7] = v153;
  *&aBlock[8] = v39;
  *&aBlock[9] = v154;
  v166 = _shouldReverseLayoutDirection;
  *&aBlock[10] = v156;
  *&aBlock[11] = rect;
  *&aBlock[12] = width;
  *&aBlock[13] = height;
  aBlock[4] = self;
  aBlock[5] = &v167;
  v108 = _Block_copy(aBlock);
  v158[0] = MEMORY[0x1E69E9820];
  v158[1] = 3221225472;
  v158[2] = __35__PKExplanationView_layoutSubviews__block_invoke_3;
  v158[3] = &unk_1E801B680;
  v161 = v155;
  v162 = v153;
  v163 = v39;
  v164 = v154;
  v158[4] = self;
  v159 = &__block_literal_global_134;
  v160 = &v167;
  v109 = _Block_copy(v158);
  v110 = v109;
  v150 = v108;
  if (self->_reverseBodyViewAndBodyButtonOrder)
  {
    v109[2](v109);
    v111 = v108;
  }

  else
  {
    v108[2](v108);
    v111 = v110;
  }

  (v111[2])();
  v112 = width;
  if (width >= 768.0)
  {
    readableContentGuide2 = [(PKExplanationView *)self readableContentGuide];
    [readableContentGuide2 layoutFrame];
    v112 = v114;
  }

  view = [(OBPrivacyLinkController *)self->_privacyLink view];
  v116 = view;
  if (view && self->_showPrivacyView)
  {
    v118 = self->_cachedPrivacyViewSize.width;
    v117 = self->_cachedPrivacyViewSize.height;
    if (v118 == *v53 && v117 == v53[1])
    {
      [view setFrame:{0.0, 0.0, v39, 0.0}];
      [v116 setNeedsLayout];
      [v116 layoutIfNeeded];
      LODWORD(v119) = 1148846080;
      LODWORD(v120) = 1112014848;
      [v116 systemLayoutSizeFittingSize:v39 withHorizontalFittingPriority:v154 verticalFittingPriority:{v119, v120}];
      v118 = v121;
      v117 = v122;
      self->_cachedPrivacyViewSize.width = v121;
      self->_cachedPrivacyViewSize.height = v122;
    }
  }

  else
  {
    v118 = *v53;
    v117 = v53[1];
  }

  if (self->_showPrivacyView)
  {
    [(PKPaymentSetupDockView *)self->_dockView sizeThatFitsWithoutPrivacyLink:v112, 1.79769313e308];
    v124 = 0.0;
    if (self->_blurringView)
    {
      v124 = v152;
    }

    if (height - (v117 + 11.0 + v123 + v124) >= MaxY)
    {
      superview4 = [v116 superview];
      dockView = self->_dockView;

      if (superview4 != dockView)
      {
        [v116 removeFromSuperview];
      }

      privacyLink = [(PKPaymentSetupDockView *)self->_dockView privacyLink];
      privacyLink = self->_privacyLink;

      if (privacyLink != privacyLink)
      {
        [(PKPaymentSetupDockView *)self->_dockView setPrivacyLink:self->_privacyLink];
      }

      v128 = v168[3];
    }

    else
    {
      privacyLink2 = [(PKPaymentSetupDockView *)self->_dockView privacyLink];

      if (privacyLink2)
      {
        [(PKPaymentSetupDockView *)self->_dockView setPrivacyLink:0];
      }

      superview5 = [v116 superview];

      if (!superview5)
      {
        [(UIScrollView *)self->_scrollView addSubview:v116];
      }

      v127 = v168[3] + 16.0;
      [v116 setFrame:{v155, v127, v118, v117}];
      v178.origin.x = v155;
      v178.origin.y = v127;
      v178.size.width = v118;
      v178.size.height = v117;
      v128 = CGRectGetMaxY(v178);
    }
  }

  else
  {
    v128 = v168[3];
  }

  [(PKPaymentSetupDockView *)self->_dockView sizeThatFits:v112, 1.79769313e308];
  v135 = v134;
  if (self->_blurringView)
  {
    v136 = v133;
    v179.origin.x = v156;
    v179.origin.y = rect;
    v179.size.width = width;
    v179.size.height = height;
    [(_PKVisibilityBackdropView *)self->_blurringView setFrame:0.0, CGRectGetMaxY(v179) - (v152 + v135), width, v152 + v135];
    [(_PKVisibilityBackdropView *)self->_blurringView layoutIfNeeded];
    v137.n128_u64[0] = 0.5;
    v138.n128_f64[0] = (width - v136) * 0.5;
    PKFloatRoundToPixel(v138, v137);
    [(PKPaymentSetupDockView *)self->_dockView setFrame:?];
  }

  else
  {
    v180.origin.x = v156;
    v180.origin.y = rect;
    v180.size.width = width;
    v180.size.height = height;
    [(PKPaymentSetupDockView *)self->_dockView setFrame:0.0, CGRectGetMaxY(v180) - v135, width, v135];
  }

  [(UIScrollView *)self->_scrollView setContentSize:width, v128];
  [(UIScrollView *)self->_scrollView contentInset];
  v140 = v139;
  v142 = v141;
  v144 = v143;
  [(UIScrollView *)self->_scrollView setContentInset:?];
  [(UIScrollView *)self->_scrollView setScrollIndicatorInsets:v140, v142, v135, v144];
  topBackgroundView = self->_topBackgroundView;
  if (topBackgroundView)
  {
    [(UIScrollView *)self->_scrollView contentOffset];
    v146 = 0.0;
    if (self->_topMargin >= v147)
    {
      [(UIScrollView *)self->_scrollView contentOffset];
      v146 = self->_topMargin - v148;
    }

    [(UIView *)topBackgroundView setFrame:v156, rect, width, v146];
  }

  [(PKExplanationView *)self _calculateBlur];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained explanationViewDidUpdateLayout:self];
  }

  _Block_object_dispose(&v167, 8);
}

double __35__PKExplanationView_layoutSubviews__block_invoke(double a1, double a2, double a3, double a4, uint64_t a5, void *a6, void *a7, uint64_t a8, int a9)
{
  v16 = a6;
  v17 = a7;
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17, v16, a3, a4);
  }

  else
  {
    [v16 sizeThatFits:{a3, a4}];
  }

  v21 = v19;
  v22 = v20;
  if (a8 > 2)
  {
    if (a8 == 3)
    {
      PKSizeAspectFit();
      goto LABEL_14;
    }

    if (a8 == 4)
    {
      PKSizeAspectFitToCover();
      goto LABEL_14;
    }

LABEL_11:
    v25 = v20;
    v26 = v19;
    goto LABEL_15;
  }

  if (a8 == 1)
  {
    PKSizeScaleAspectFit();
    goto LABEL_14;
  }

  if (a8 != 2)
  {
    goto LABEL_11;
  }

  PKSizeAspectFill();
LABEL_14:
  v26 = v23;
  v25 = v24;
LABEL_15:
  if (a9)
  {
    v27 = v22;
  }

  else
  {
    v27 = v25;
  }

  if (a9)
  {
    v28 = v21;
  }

  else
  {
    v28 = v26;
  }

  [v16 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v28, v27}];
  if (a9)
  {
    memset(&v54, 0, sizeof(v54));
    CATransform3DMakeScale(&v54, v26 / v21, v25 / v22, 1.0);
    v53 = v54;
    v29 = &v53;
  }

  else
  {
    v30 = *(MEMORY[0x1E69792E8] + 80);
    *&v54.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v54.m33 = v30;
    v31 = *(MEMORY[0x1E69792E8] + 112);
    *&v54.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v54.m43 = v31;
    v32 = *(MEMORY[0x1E69792E8] + 16);
    *&v54.m11 = *MEMORY[0x1E69792E8];
    *&v54.m13 = v32;
    v33 = *(MEMORY[0x1E69792E8] + 48);
    *&v54.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v54.m23 = v33;
    v29 = &v54;
  }

  [v16 setTransform3D:{v29, *&v53.m11, *&v53.m13, *&v53.m21, *&v53.m23, *&v53.m31, *&v53.m33, *&v53.m41, *&v53.m43, *&v54.m11, *&v54.m12, *&v54.m13, *&v54.m14, *&v54.m21, *&v54.m22, *&v54.m23, *&v54.m24, *&v54.m31, *&v54.m32, *&v54.m33, *&v54.m34, *&v54.m41, *&v54.m42, *&v54.m43, *&v54.m44}];
  v34.n128_f64[0] = v26;
  v35.n128_f64[0] = v25;
  v36.n128_f64[0] = a1;
  v37.n128_f64[0] = a2;
  v38.n128_f64[0] = a3;
  v39.n128_f64[0] = a4;
  PKSizeAlignedInRect(1, v34, v35, v36, v37, v38, v39, v40);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = [v16 layer];
  [v49 anchorPoint];
  [v16 setCenter:{v42 + v50 * v46, v44 + v51 * v48}];

  return v42;
}

void __35__PKExplanationView_layoutSubviews__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 552);
  if (v2)
  {
    [v2 sizeThatFits:{*(a1 + 64), 1.79769313e308}];
    v4 = v3;
    v6 = fmin(*(a1 + 64), v5);
    if (_os_feature_enabled_impl() && _UISolariumFeatureFlagEnabled())
    {
      v7 = PKContentAlignmentMake();
      v8.n128_u64[0] = *(a1 + 48);
      v9.n128_u64[0] = *(a1 + 56);
      v10.n128_u64[0] = *(a1 + 64);
      v11.n128_u64[0] = *(a1 + 72);
      v12.n128_f64[0] = v6;
      v13.n128_u64[0] = v4;
      PKSizeAlignedInRect(v7, v12, v13, v8, v9, v10, v11, v14);
    }

    else
    {
      UIRectCenteredXInRect();
    }

    v18 = v15;
    v19 = v16;
    v20 = v17;
    v21 = *(*(*(a1 + 40) + 8) + 24);
    PKSetupViewConstantsBodyButtonPadding();
    v23 = v21 + v22;
    [*(*(a1 + 32) + 552) pkui_setBoundsAndPositionFromFrame:{v18, v23, v19, v20}];
    v24.origin.x = v18;
    v24.origin.y = v23;
    v24.size.width = v19;
    v24.size.height = v20;
    *(*(*(a1 + 40) + 8) + 24) = CGRectGetMaxY(v24);
  }
}

void __35__PKExplanationView_layoutSubviews__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 784))
  {
    v3.origin.x = (*(*(a1 + 40) + 16))(*(a1 + 56), *(*(*(a1 + 48) + 8) + 24) + *(v1 + 808), *(a1 + 72), 1.79769313e308);
    *(*(*(a1 + 48) + 8) + 24) = CGRectGetMaxY(v3);
  }
}

- (void)setShowPrivacyView:(BOOL)view
{
  if (self->_showPrivacyView != view)
  {
    self->_showPrivacyView = view;
    privacyLink = self->_privacyLink;
    if (privacyLink)
    {
      view = [(OBPrivacyLinkController *)privacyLink view];
      v6 = view;
      if (!self->_showPrivacyView)
      {
        [view removeFromSuperview];
        [(PKPaymentSetupDockView *)self->_dockView setPrivacyLink:0];
      }
    }

    self->_cachedPrivacyViewSize = *MEMORY[0x1E695F060];

    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setPrivacyLink:(id)link
{
  linkCopy = link;
  if ((PKEqualObjects() & 1) == 0)
  {
    view = [(OBPrivacyLinkController *)self->_privacyLink view];
    [view removeFromSuperview];

    [(PKPaymentSetupDockView *)self->_dockView setPrivacyLink:0];
    objc_storeStrong(&self->_privacyLink, link);
    self->_cachedPrivacyViewSize = *MEMORY[0x1E695F060];
    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setHideTitleText:(BOOL)text
{
  if (self->_hideTitleText != text)
  {
    self->_hideTitleText = text;
    [(PKExplanationView *)self _updateTitleLabel];
  }
}

- (void)setForceShowSetupLaterButton:(BOOL)button
{
  if (self->_forceShowSetupLaterButton != button)
  {
    buttonCopy = button;
    self->_forceShowSetupLaterButton = button;
    dockView = [(PKExplanationView *)self dockView];
    footerView = [dockView footerView];

    if ((PKPaymentSetupContextIsSetupAssistant() & 1) != 0 || buttonCopy)
    {
      setUpLaterButton = [footerView setUpLaterButton];
      [setUpLaterButton addTarget:self action:sel__setupLater forControlEvents:0x2000];
    }

    else
    {
      [footerView setSetUpLaterButton:0];
    }
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v7 = imageCopy;
    superview = [(UIImageView *)self->_imageView superview];

    if (superview)
    {
      [(UIImageView *)self->_imageView removeFromSuperview];
    }

    objc_storeStrong(&self->_image, image);
    [(PKExplanationView *)self _updateImage];
    imageCopy = v7;
  }
}

- (void)setImageStyle:(unint64_t)style
{
  if (self->_imageStyle != style)
  {
    self->_imageStyle = style;
    [(PKExplanationView *)self _updateImage];
  }
}

- (void)setHeroView:(id)view
{
  viewCopy = view;
  heroView = self->_heroView;
  if (heroView != viewCopy)
  {
    v9 = viewCopy;
    superview = [(UIView *)heroView superview];

    if (superview)
    {
      [(UIView *)self->_heroView removeFromSuperview];
    }

    objc_storeStrong(&self->_heroView, view);
    superview2 = [(UIView *)self->_heroView superview];

    if (!superview2)
    {
      [(UIScrollView *)self->_scrollView addSubview:self->_heroView];
    }

    [(UIImageView *)self->_imageView removeFromSuperview];
    [(PKExplanationView *)self setNeedsLayout];
    viewCopy = v9;
  }
}

- (void)setHeroViewSizeThatFitsOverride:(id)override
{
  v4 = _Block_copy(override);
  heroViewSizeThatFitsOverride = self->_heroViewSizeThatFitsOverride;
  self->_heroViewSizeThatFitsOverride = v4;

  [(PKExplanationView *)self setNeedsLayout];
}

- (void)setHeroViewContentMode:(unint64_t)mode
{
  if (self->_heroViewContentMode != mode)
  {
    self->_heroViewContentMode = mode;
    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setHeroViewPrefersSizeTransform:(BOOL)transform
{
  if (self->_heroViewPrefersSizeTransform == !transform)
  {
    self->_heroViewPrefersSizeTransform = transform;
    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setTopBackgroundColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_topBackgroundColor, color);
    topBackgroundView = self->_topBackgroundView;
    if (colorCopy)
    {
      if (!topBackgroundView)
      {
        v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v7 = self->_topBackgroundView;
        self->_topBackgroundView = v6;

        [(PKExplanationView *)self insertSubview:self->_topBackgroundView belowSubview:self->_scrollView];
        topBackgroundView = self->_topBackgroundView;
      }

      [(UIView *)topBackgroundView setBackgroundColor:?];
      [(PKExplanationView *)self setNeedsLayout];
    }

    else
    {
      [(UIView *)topBackgroundView removeFromSuperview];
      v8 = self->_topBackgroundView;
      self->_topBackgroundView = 0;
    }

    [(PKExplanationView *)self _configureScrollViewBackgroundColor];
  }
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToString:self->_titleText] & 1) == 0)
  {
    objc_storeStrong(&self->_titleText, text);
    [(PKExplanationView *)self _updateTitleLabel];
  }
}

- (void)setTitleFont:(id)font
{
  fontCopy = font;
  if (self->_titleFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_titleFont, font);
    [(PKExplanationView *)self setTitleLabelAttributedText];
    [(PKExplanationView *)self setNeedsLayout];
    fontCopy = v6;
  }
}

- (void)setTitleTextColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_titleTextColor, color);
    [(PKExplanationView *)self setTitleLabelAttributedText];
  }
}

- (void)setTitleTextNumberOfLines:(int64_t)lines
{
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(PKTrailingAccessoryLabel *)titleLabel setMaximumNumberOfLines:lines];

    [(PKExplanationView *)self _updateTitleLabel];
  }
}

- (void)setTitleLineBreakStrategy:(unint64_t)strategy
{
  if (self->_titleLineBreakStrategy != strategy)
  {
    self->_titleLineBreakStrategy = strategy;
    [(PKExplanationView *)self _updateTitleLabel];
  }
}

- (void)setShowSpinner:(BOOL)spinner
{
  if (self->_showSpinner == !spinner)
  {
    self->_showSpinner = spinner;
    activityIndicator = self->_activityIndicator;
    if (spinner)
    {
      [(UIActivityIndicatorView *)activityIndicator setHidden:0];
      v5 = self->_activityIndicator;

      [(UIActivityIndicatorView *)v5 startAnimating];
    }

    else
    {

      [(UIActivityIndicatorView *)activityIndicator stopAnimating];
    }
  }
}

- (void)showCheckmark:(BOOL)checkmark animated:(BOOL)animated
{
  if (self->_showCheckmark == !checkmark)
  {
    self->_showCheckmark = checkmark;
    [PKCheckmarkView showCheckmark:"showCheckmark:animated:" animated:?];
  }
}

- (void)setBodyImage:(id)image
{
  imageCopy = image;
  if (self->_bodyImage != imageCopy)
  {
    v9 = imageCopy;
    superview = [(UIImageView *)self->_bodyImageView superview];

    if (superview)
    {
      [(UIImageView *)self->_imageView removeFromSuperview];
    }

    objc_storeStrong(&self->_bodyImage, image);
    [(UIImageView *)self->_bodyImageView setImage:self->_bodyImage];
    [(UIImageView *)self->_bodyImageView sizeToFit];
    bodyImageView = self->_bodyImageView;
    if (self->_bodyImage)
    {
      superview2 = [(UIImageView *)bodyImageView superview];

      if (!superview2)
      {
        [(UIScrollView *)self->_scrollView addSubview:self->_bodyImageView];
      }

      bodyImageView = self->_heroView;
    }

    [(UIImageView *)bodyImageView removeFromSuperview];
    [(PKExplanationView *)self setNeedsLayout];
    imageCopy = v9;
  }
}

- (void)setBodyTextAlignment:(int64_t)alignment
{
  if (self->_bodyTextAlignment != alignment)
  {
    self->_bodyTextAlignment = alignment;
    [(UITextView *)self->_bodyTextView setTextAlignment:?];

    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setTitleAlignment:(int64_t)alignment
{
  if (self->_titleAlignment != alignment)
  {
    self->_titleAlignment = alignment;
    [(PKExplanationView *)self setTitleLabelAttributedText];

    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setBodyText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToString:self->_bodyText] & 1) == 0)
  {
    objc_storeStrong(&self->_bodyText, text);
    attributedBodyText = self->_attributedBodyText;
    self->_attributedBodyText = 0;

    bodyText = self->_bodyText;
    bodyTextView = self->_bodyTextView;
    if (bodyText)
    {
      if (!bodyTextView)
      {
        _createBodyTextView = [(PKExplanationView *)self _createBodyTextView];
        v9 = self->_bodyTextView;
        self->_bodyTextView = _createBodyTextView;

        [(UIScrollView *)self->_scrollView addSubview:self->_bodyTextView];
        bodyTextView = self->_bodyTextView;
        bodyText = self->_bodyText;
      }

      [(UITextView *)bodyTextView setText:bodyText];
    }

    else
    {
      [(UITextView *)bodyTextView removeFromSuperview];
      v10 = self->_bodyTextView;
      self->_bodyTextView = 0;
    }

    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setBodyTextColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_bodyTextColor, color);
    [(UITextView *)self->_bodyTextView setTextColor:self->_bodyTextColor];
  }
}

- (void)setAttributedSecondaryBodyText:(id)text
{
  textCopy = text;
  if (![(NSAttributedString *)self->_attributedSecondaryBodyText isEqualToAttributedString:?])
  {
    objc_storeStrong(&self->_attributedSecondaryBodyText, text);
    attributedSecondaryBodyText = self->_attributedSecondaryBodyText;
    secondaryBodyTextView = self->_secondaryBodyTextView;
    if (attributedSecondaryBodyText)
    {
      if (!secondaryBodyTextView)
      {
        _createBodyTextView = [(PKExplanationView *)self _createBodyTextView];
        v8 = self->_secondaryBodyTextView;
        self->_secondaryBodyTextView = _createBodyTextView;

        [(UIScrollView *)self->_scrollView addSubview:self->_secondaryBodyTextView];
        secondaryBodyTextView = self->_secondaryBodyTextView;
        attributedSecondaryBodyText = self->_attributedSecondaryBodyText;
      }

      [(UITextView *)secondaryBodyTextView setAttributedText:attributedSecondaryBodyText];
    }

    else
    {
      [(UITextView *)secondaryBodyTextView removeFromSuperview];
      v9 = self->_secondaryBodyTextView;
      self->_secondaryBodyTextView = 0;
    }

    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setAttributedBodyText:(id)text
{
  textCopy = text;
  v4 = [textCopy isEqualToAttributedString:self->_attributedBodyText];
  v5 = textCopy;
  if ((v4 & 1) == 0)
  {
    v6 = [textCopy copy];
    attributedBodyText = self->_attributedBodyText;
    self->_attributedBodyText = v6;

    bodyText = self->_bodyText;
    self->_bodyText = 0;

    v9 = self->_attributedBodyText;
    bodyTextView = self->_bodyTextView;
    if (v9)
    {
      if (!bodyTextView)
      {
        _createBodyTextView = [(PKExplanationView *)self _createBodyTextView];
        v12 = self->_bodyTextView;
        self->_bodyTextView = _createBodyTextView;

        [(UIScrollView *)self->_scrollView addSubview:self->_bodyTextView];
        bodyTextView = self->_bodyTextView;
        v9 = self->_attributedBodyText;
      }

      v13 = [(UITextView *)bodyTextView setAttributedText:v9];
      v14 = self->_bodyTextView;
      v15 = PKOBKHeaderSubtitleFont(v13);
      [(UITextView *)v14 setFont:v15];

      [(UITextView *)self->_bodyTextView setTextAlignment:self->_bodyTextAlignment];
    }

    else
    {
      [(UITextView *)bodyTextView removeFromSuperview];
      v16 = self->_bodyTextView;
      self->_bodyTextView = 0;
    }

    [(PKExplanationView *)self setNeedsLayout];
    v5 = textCopy;
  }
}

- (void)setBodyView:(id)view
{
  viewCopy = view;
  bodyView = self->_bodyView;
  if (bodyView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)bodyView removeFromSuperview];
    objc_storeStrong(&self->_bodyView, view);
    if (self->_bodyView)
    {
      [(UIScrollView *)self->_scrollView addSubview:?];
    }

    [(PKExplanationView *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)setBodyButtonText:(id)text
{
  textCopy = text;
  configuration = [(UIButton *)self->_bodyButton configuration];
  attributedTitle = [configuration attributedTitle];
  string = [attributedTitle string];
  v14 = textCopy;
  v9 = string;
  v10 = v9;
  if (v9 == v14)
  {

    goto LABEL_14;
  }

  if (!v14 || !v9)
  {

LABEL_8:
    objc_storeStrong(&self->_bodyButtonText, text);
    bodyButton = self->_bodyButton;
    if (v14)
    {
      if (bodyButton)
      {
        [(UIButton *)bodyButton pkui_updateConfigurationWithTitle:?];
      }

      else
      {
        [(PKExplanationView *)self _createBodyButton];
      }

      [(UIButton *)self->_bodyButton sizeToFit];
    }

    else
    {
      [(UIButton *)bodyButton removeFromSuperview];
      v13 = self->_bodyButton;
      self->_bodyButton = 0;
    }

    goto LABEL_14;
  }

  v11 = [v14 isEqualToString:v9];

  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
}

- (void)setBodyButtonNumberOfLines:(int64_t)lines
{
  if (self->_bodyButtonNumberOfLines != lines)
  {
    self->_bodyButtonNumberOfLines = lines;
    bodyButton = self->_bodyButton;
    if (bodyButton)
    {
      titleLabel = [(UIButton *)bodyButton titleLabel];
      [titleLabel setNumberOfLines:self->_bodyButtonNumberOfLines];

      [(PKExplanationView *)self setNeedsLayout];
    }
  }
}

- (void)setBodyButtonUsesLearnMoreStyle:(BOOL)style
{
  if (self->_bodyButtonUsesLearnMoreStyle != style)
  {
    self->_bodyButtonUsesLearnMoreStyle = style;
    [(UIButton *)self->_bodyButton removeFromSuperview];
    bodyButton = self->_bodyButton;
    self->_bodyButton = 0;

    [(PKExplanationView *)self _createBodyButton];

    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setHorizontalMargin:(unint64_t)margin
{
  if (self->_horizontalMargin != margin)
  {
    self->_horizontalMargin = margin;
    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setTopMargin:(double)margin
{
  if (self->_topMargin != margin)
  {
    self->_topMargin = margin;
    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setTitleHyphenationFactor:(double)factor
{
  if (self->_titleHyphenationFactor != factor)
  {
    self->_titleHyphenationFactor = factor;
    [(PKExplanationView *)self setTitleLabelAttributedText];
  }
}

- (void)setTitleImage:(id)image
{
  imageCopy = image;
  if (self->_titleImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_titleImage, image);
    [(UIImageView *)self->_logoImageView setImage:self->_titleImage];
    [(UIImageView *)self->_logoImageView sizeToFit];
    [(PKExplanationView *)self setNeedsLayout];
    imageCopy = v6;
  }
}

- (void)setTitleAccessoriesEnabled:(BOOL)enabled
{
  if (self->_titleAccessoriesEnabled == !enabled)
  {
    self->_titleAccessoriesEnabled = enabled;
    titleLabel = self->_titleLabel;
    if (enabled)
    {
      checkmarkView = self->_checkmarkView;
      [(PKCheckmarkView *)checkmarkView intrinsicContentSize];
      [(PKTrailingAccessoryLabel *)titleLabel registerAccessoryWithView:checkmarkView withSize:@"checkmark" for:?];
      v7 = self->_titleLabel;
      activityIndicator = self->_activityIndicator;
      [(UIActivityIndicatorView *)activityIndicator intrinsicContentSize];
      [(PKTrailingAccessoryLabel *)v7 registerAccessoryWithView:activityIndicator withSize:@"activityIndicator" for:?];
    }

    else
    {
      [(PKTrailingAccessoryLabel *)self->_titleLabel unregisterAccessories];
    }

    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setLogoImageViewTargetSize:(CGSize)size
{
  if (self->_logoImageViewTargetSize.width != size.width || self->_logoImageViewTargetSize.height != size.height)
  {
    self->_logoImageViewTargetSize = size;
    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setBodyDataDetectorTypes:(unint64_t)types
{
  if (self->_bodyDataDetectorTypes != types)
  {
    self->_bodyDataDetectorTypes = types;
    [(UITextView *)self->_bodyTextView setDataDetectorTypes:?];
    [(UITextView *)self->_secondaryBodyTextView setDataDetectorTypes:self->_bodyDataDetectorTypes];

    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setBodyViewPadding:(double)padding
{
  if (self->_bodyViewPadding != padding)
  {
    self->_bodyViewPadding = padding;
    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setBodyViewThatFitsOverride:(id)override
{
  v4 = _Block_copy(override);
  bodyViewThatFitsOverride = self->_bodyViewThatFitsOverride;
  self->_bodyViewThatFitsOverride = v4;

  [(PKExplanationView *)self setNeedsLayout];
}

- (void)setBodyViewContentMode:(unint64_t)mode
{
  if (self->_bodyViewContentMode != mode)
  {
    self->_bodyViewContentMode = mode;
    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)setReverseBodyViewAndBodyButtonOrder:(BOOL)order
{
  if (self->_reverseBodyViewAndBodyButtonOrder != order)
  {
    self->_reverseBodyViewAndBodyButtonOrder = order;
    [(PKExplanationView *)self setNeedsLayout];
  }
}

- (void)_continue
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained explanationViewDidSelectContinue:self];
  }
}

- (void)_setupLater
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained explanationViewDidSelectSetupLater:self];
  }
}

- (void)_bodyButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained explanationViewDidSelectBodyButton:self];
  }
}

- (void)_calculateBlur
{
  scrollView = self->_scrollView;
  [(_PKVisibilityBackdropView *)self->_blurringView bounds];
  [(UIScrollView *)scrollView convertRect:self->_blurringView fromView:?];
  v5 = v4;
  [(UIScrollView *)self->_scrollView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(UIScrollView *)self->_scrollView contentSize];
  v18.size.height = fmin(v13, v14 - v9);
  v18.origin.x = v7;
  v18.origin.y = v9;
  v18.size.width = v11;
  v15 = fmin(fmax(CGRectGetMaxY(v18) - v5, 0.0), 30.0) / 30.0;
  blurringView = self->_blurringView;

  [(_PKVisibilityBackdropView *)blurringView pkui_setVisibility:0 animated:v15];
}

- (void)setTitleLabelAttributedText
{
  v14[3] = *MEMORY[0x1E69E9840];
  if (self->_titleText)
  {
    titleFont = self->_titleFont;
    if (titleFont)
    {
      v4 = titleFont;
    }

    else
    {
      v4 = PKOBKHeaderTitleFont(self);
    }

    v6 = v4;
    v7 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v7 setAlignment:self->_titleAlignment];
    [v7 setLineBreakMode:0];
    [v7 setLineBreakStrategy:self->_titleLineBreakStrategy];
    titleHyphenationFactor = self->_titleHyphenationFactor;
    *&titleHyphenationFactor = titleHyphenationFactor;
    [v7 setHyphenationFactor:titleHyphenationFactor];
    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    titleText = self->_titleText;
    v11 = *MEMORY[0x1E69DB648];
    v13[0] = *MEMORY[0x1E69DB688];
    v13[1] = v11;
    v14[0] = v7;
    v14[1] = v6;
    v13[2] = *MEMORY[0x1E69DB650];
    v14[2] = self->_titleTextColor;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v5 = [v9 initWithString:titleText attributes:v12];
  }

  else
  {
    v5 = 0;
  }

  [(PKTrailingAccessoryLabel *)self->_titleLabel setAttributedText:v5];
}

- (void)_createSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v3;

  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(PKExplanationView *)self _configureScrollViewBackgroundColor];
  v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  imageView = self->_imageView;
  self->_imageView = v5;

  [(UIImageView *)self->_imageView setContentMode:1];
  [(UIImageView *)self->_imageView setClipsToBounds:1];
  v7 = objc_alloc_init(PKTrailingAccessoryLabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v7;

  [(PKExplanationView *)self setTitleLabelAttributedText];
  v9 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v9;

  [(UIActivityIndicatorView *)self->_activityIndicator setHidesWhenStopped:1];
  [(UIActivityIndicatorView *)self->_activityIndicator sizeToFit];
  [(UIActivityIndicatorView *)self->_activityIndicator setHidden:1];
  v11 = objc_alloc_init(PKCheckmarkView);
  checkmarkView = self->_checkmarkView;
  self->_checkmarkView = v11;

  v13 = PKUIImageNamed(@"Payment_SetupLogo");
  titleImage = self->_titleImage;
  self->_titleImage = v13;

  v15 = [(UIImage *)self->_titleImage imageWithRenderingMode:2];
  v16 = self->_titleImage;
  self->_titleImage = v15;

  v17 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:self->_titleImage];
  logoImageView = self->_logoImageView;
  self->_logoImageView = v17;

  v19 = self->_logoImageView;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UIImageView *)v19 setTintColor:labelColor];

  v21 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  bodyImageView = self->_bodyImageView;
  self->_bodyImageView = v21;

  [(UIImageView *)self->_bodyImageView setContentMode:1];
  v23 = [PKPaymentSetupDockView alloc];
  v24 = *MEMORY[0x1E695F058];
  v25 = *(MEMORY[0x1E695F058] + 8);
  v26 = *(MEMORY[0x1E695F058] + 16);
  v27 = *(MEMORY[0x1E695F058] + 24);
  v28 = [(PKPaymentSetupDockView *)v23 initWithFrame:self->_context context:*MEMORY[0x1E695F058], v25, v26, v27];
  dockView = self->_dockView;
  self->_dockView = v28;

  [(PKPaymentSetupDockView *)self->_dockView setPrivacyLink:0];
  if (PKPaymentSetupContextIsSetupAssistant())
  {
    footerView = [(PKPaymentSetupDockView *)self->_dockView footerView];
    setUpLaterButton = [footerView setUpLaterButton];
    [setUpLaterButton addTarget:self action:sel__setupLater forControlEvents:0x2000];
  }

  primaryButton = [(PKPaymentSetupDockView *)self->_dockView primaryButton];
  v33 = PKLocalizedPaymentString(&cfstr_Continue.isa);
  [primaryButton setTitle:v33 forState:0];

  primaryButton2 = [(PKPaymentSetupDockView *)self->_dockView primaryButton];
  [primaryButton2 addTarget:self action:sel__continue forControlEvents:0x2000];

  if (_UISolariumFeatureFlagEnabled())
  {
    contentView = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:self->_scrollView edge:4 style:0];
    [(PKPaymentSetupDockView *)self->_dockView addInteraction:contentView];
  }

  else
  {
    v36 = [[_PKVisibilityBackdropView alloc] initWithFrame:-2 privateStyle:v24, v25, v26, v27];
    blurringView = self->_blurringView;
    self->_blurringView = v36;

    [(_PKVisibilityBackdropView *)self->_blurringView setDelegate:self];
    [(_PKVisibilityBackdropView *)self->_blurringView setUserInteractionEnabled:1];
    [(_PKVisibilityBackdropView *)self->_blurringView pkui_setVisibility:0 animated:self->_backdropWeight];
    contentView = [(_UIBackdropView *)self->_blurringView contentView];
    [contentView addSubview:self->_dockView];
  }

  [(PKExplanationView *)self addSubview:self->_scrollView];
  if (self->_blurringView || self->_dockView)
  {
    [(PKExplanationView *)self addSubview:?];
  }

  [(UIScrollView *)self->_scrollView addSubview:self->_imageView];
  if ([(PKExplanationView *)self _showTitleLogoImageView])
  {
    p_logoImageView = &self->_logoImageView;
  }

  else
  {
    p_logoImageView = &self->_titleLabel;
  }

  [(UIScrollView *)self->_scrollView addSubview:*p_logoImageView];

  [(PKExplanationView *)self setTitleAccessoriesEnabled:1];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = PKExplanationView;
  [(PKExplanationView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(PKExplanationView *)self _updateIconBorderColor];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PKExplanationView;
  [(PKExplanationView *)&v4 traitCollectionDidChange:change];
  self->_cachedPrivacyViewSize = *MEMORY[0x1E695F060];
  [(PKExplanationView *)self setNeedsLayout];
}

- (void)_updateTitleLabel
{
  if (self->_hideTitleText)
  {
    [(UIImageView *)self->_logoImageView removeFromSuperview];
LABEL_6:
    [(PKTrailingAccessoryLabel *)self->_titleLabel removeFromSuperview];
    goto LABEL_10;
  }

  if ([(PKExplanationView *)self _showTitleLogoImageView])
  {
    superview = [(UIImageView *)self->_logoImageView superview];

    if (!superview)
    {
      [(UIScrollView *)self->_scrollView addSubview:self->_logoImageView];
    }

    goto LABEL_6;
  }

  superview2 = [(PKTrailingAccessoryLabel *)self->_titleLabel superview];

  if (!superview2)
  {
    [(UIScrollView *)self->_scrollView addSubview:self->_titleLabel];
  }

  [(UIImageView *)self->_logoImageView removeFromSuperview];
  [(PKExplanationView *)self setTitleLabelAttributedText];
LABEL_10:

  [(PKExplanationView *)self setNeedsLayout];
}

- (BOOL)_isBuddyiPad
{
  traitCollection = [(PKExplanationView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  result = PKPaymentSetupContextIsSetupAssistant();
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  return result;
}

- (id)_createBodyTextView
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DD168] pkui_plainInteractiveTextViewWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setDataDetectorTypes:self->_bodyDataDetectorTypes];
  [v3 setDelegate:self];
  v4 = *MEMORY[0x1E69DDCE0];
  v5 = *(MEMORY[0x1E69DDCE0] + 8);
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  v7 = *(MEMORY[0x1E69DDCE0] + 24);
  [v3 setTextContainerInset:{*MEMORY[0x1E69DDCE0], v5, v6, v7}];
  [v3 setEditable:0];
  [v3 setSelectable:1];
  [v3 setScrollingEnabled:0];
  [v3 _setInteractiveTextSelectionDisabled:1];
  [v3 setTextColor:self->_bodyTextColor];
  [v3 setContentInset:{v4, v5, v6, v7}];
  [v3 setContentInsetAdjustmentBehavior:2];
  textContainer = [v3 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  v14 = *MEMORY[0x1E69DB650];
  if (PKPaymentSetupContextIsBridge())
  {
    BPSBridgeTintColor();
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }
  v9 = ;
  v15[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [v3 setLinkTextAttributes:v10];

  v12 = PKOBKBodyFont(v11);
  [v3 setFont:v12];

  [v3 setTextAlignment:self->_bodyTextAlignment];
  [v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];

  return v3;
}

- (void)_createBodyButton
{
  if (self->_bodyButtonText)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E69DC628];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __38__PKExplanationView__createBodyButton__block_invoke;
    v13 = &unk_1E8010A60;
    objc_copyWeak(&v14, &location);
    v4 = [v3 actionWithHandler:&v10];
    if (self->_bodyButtonUsesLearnMoreStyle)
    {
      v5 = PKOBKLearnMoreButton(@"info.circle.fill", self->_bodyButtonText, v4);
      bodyButton = self->_bodyButton;
      self->_bodyButton = v5;
    }

    else
    {
      bodyButton = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
      v7 = [MEMORY[0x1E69DC740] pkui_plainConfigurationWithTitle:self->_bodyButtonText font:bodyButton lineBreakMode:4 textAlignment:{PKOBKTextAlignment(), v10, v11, v12, v13}];
      [v7 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
      v8 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v7 primaryAction:v4];
      v9 = self->_bodyButton;
      self->_bodyButton = v8;

      [(UIButton *)self->_bodyButton setConfigurationUpdateHandler:&__block_literal_global_121];
    }

    [(UIButton *)self->_bodyButton setAccessibilityIdentifier:*MEMORY[0x1E69B9568]];
    [(UIScrollView *)self->_scrollView addSubview:self->_bodyButton];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __38__PKExplanationView__createBodyButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _bodyButtonTapped];
}

void __38__PKExplanationView__createBodyButton__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setExclusiveTouch:1];
  v3 = [v2 titleLabel];

  [v3 setNumberOfLines:2];
}

- (double)_resolvedHorizontalMargin
{
  horizontalMargin = self->_horizontalMargin;
  if (horizontalMargin != 1 && (horizontalMargin || [(UIView *)self pkui_userInterfaceIdiomSupportsLargeLayouts]&& !_UISolariumFeatureFlagEnabled()))
  {
    return 44.0;
  }

  return PKSetupViewConstantsViewMargin();
}

- (void)_updateImage
{
  p_imageView = &self->_imageView;
  [(UIImageView *)self->_imageView setImage:self->_image];
  if (self->_image)
  {
    imageStyle = self->_imageStyle;
    if (imageStyle == 1)
    {
      [*p_imageView setFrame:{0.0, 0.0, 80.0, 80.0}];
      [*p_imageView setClipsToBounds:1];
      [*p_imageView _setContinuousCornerRadius:14.0];
      layer = [*p_imageView layer];
      [layer setBorderWidth:0.5];

      [(PKExplanationView *)self _updateIconBorderColor];
    }

    else if (!imageStyle)
    {
      [*p_imageView sizeToFit];
      [*p_imageView setClipsToBounds:0];
      [*p_imageView _setContinuousCornerRadius:0.0];
      layer2 = [*p_imageView layer];
      [layer2 setBorderColor:0];
      [layer2 setBorderWidth:0.0];
    }

    superview = [*p_imageView superview];

    if (!superview)
    {
      [(UIScrollView *)self->_scrollView addSubview:*p_imageView];
    }

    p_imageView = &self->_heroView;
  }

  [*p_imageView removeFromSuperview];

  [(PKExplanationView *)self setNeedsLayout];
}

- (void)_updateIconBorderColor
{
  if (self->_imageStyle == 1)
  {
    v6[7] = v2;
    v6[8] = v3;
    traitCollection = [(PKExplanationView *)self traitCollection];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__PKExplanationView__updateIconBorderColor__block_invoke;
    v6[3] = &unk_1E8010970;
    v6[4] = self;
    PKUIPerformWithEffectiveTraitCollection(traitCollection, v6);
  }
}

void __43__PKExplanationView__updateIconBorderColor__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] labelColor];
  v5 = [v2 colorWithAlphaComponent:0.13];

  v3 = [*(*(a1 + 32) + 416) layer];
  v4 = v5;
  [v3 setBorderColor:{objc_msgSend(v5, "CGColor")}];
}

- (void)_configureScrollViewBackgroundColor
{
  scrollView = self->_scrollView;
  if (self->_topBackgroundColor)
  {
    v3 = self->_scrollView;

    [(UIScrollView *)v3 setBackgroundColor:0];
  }

  else
  {
    v4 = PKProvisioningBackgroundColor();
    [(UIScrollView *)scrollView setBackgroundColor:v4];
  }
}

- (int64_t)visibilityBackdropView:(id)view preferredStyleForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (PKPaymentSetupForceBridgeAppearance() & 1) != 0 || (PKPaymentSetupContextIsBridge())
  {
    v5 = 2030;
  }

  else if ([collectionCopy userInterfaceStyle] == 2)
  {
    v5 = 2030;
  }

  else
  {
    v5 = 2010;
  }

  return v5;
}

- (PKExplanationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)logoImageViewTargetSize
{
  width = self->_logoImageViewTargetSize.width;
  height = self->_logoImageViewTargetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end