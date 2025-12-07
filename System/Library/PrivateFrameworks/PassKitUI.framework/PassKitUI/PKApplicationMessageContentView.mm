@interface PKApplicationMessageContentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)_layoutWithContext:(double)context bounds:(double)bounds;
- (double)_prepareViewForReuse:(int)reuse type:(double)type state:(double)state;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)initWithWidth:(void *)width;
- (void)_updateForTraitCollection:(uint64_t)collection;
- (void)_updateSubviewsAnimated:(uint64_t)animated;
- (void)dealloc;
- (void)layoutSubviews;
- (void)performBatchUpdates:(uint64_t)updates animated:;
- (void)setBlurRadius:(void *)radius animated:(double)animated withCompletion:;
- (void)setContent:(int)content animated:;
- (void)setLayoutMargins:(UIEdgeInsets)margins;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKApplicationMessageContentView

- (id)initWithWidth:(void *)width
{
  if (!width)
  {
    return 0;
  }

  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v46.receiver = width;
  v46.super_class = PKApplicationMessageContentView;
  v5 = objc_msgSendSuper2(&v46, sel_initWithFrame_, v3, v4, a2, 0.0);
  v6 = v5;
  if (v5)
  {
    [v5 pkui_setMaskType:3];
    secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [v6 setBackgroundColor:secondarySystemGroupedBackgroundColor];

    [v6 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
    [v6 setInsetsLayoutMarginsFromSafeArea:0];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = *(v6 + 544);
    *(v6 + 544) = v8;

    v10 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v11 = *(v6 + 472);
    *(v6 + 472) = v10;

    Label_0 = CreateLabel_0(1, 0);
    v13 = *(v6 + 488);
    *(v6 + 488) = Label_0;

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v15 = CreateLabel_0(3, secondaryLabelColor);
    v16 = *(v6 + 496);
    *(v6 + 496) = v15;

    v17 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v18 = *(v6 + 464);
    *(v6 + 464) = v17;

    [*(v6 + 464) addSubview:*(v6 + 472)];
    layer = [*(v6 + 464) layer];
    [layer setMasksToBounds:1];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];
    v20 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.21];
    [layer setBorderColor:{objc_msgSend(v20, "CGColor")}];

    [layer setBorderWidth:PKUIPixelLength()];
    v21 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v22 = *(v6 + 480);
    *(v6 + 480) = v21;

    [*(v6 + 480) setContentMode:4];
    v23 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:7 weight:9.0];
    v24 = *(v6 + 480);
    v25 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark" withConfiguration:v23];
    [v24 setImage:v25];

    v26 = *(v6 + 480);
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v26 setTintColor:whiteColor];

    v28 = *(v6 + 480);
    redColor = [MEMORY[0x1E69DC888] redColor];
    [v28 setBackgroundColor:redColor];

    [*(v6 + 480) setClipsToBounds:1];
    [*(v6 + 480) pkui_setCornerRadius:0 animated:6.0];
    [*(v6 + 464) setAlpha:0.0];
    [*(v6 + 480) setAlpha:0.0];
    [*(v6 + 488) setAlpha:0.0];
    [*(v6 + 496) setAlpha:0.0];
    v30 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v31 = *(v6 + 416);
    *(v6 + 416) = v30;

    [*(v6 + 416) setUserInteractionEnabled:0];
    [*(v6 + 416) setClipsToBounds:1];
    [*(v6 + 416) addSubview:*(v6 + 464)];
    [*(v6 + 416) addSubview:*(v6 + 480)];
    [*(v6 + 416) addSubview:*(v6 + 488)];
    [*(v6 + 416) addSubview:*(v6 + 496)];
    [v6 addSubview:*(v6 + 416)];
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration setPreferredSymbolConfigurationForImage:0];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [plainButtonConfiguration setBaseForegroundColor:tertiaryLabelColor];

    [plainButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    objc_initWeak(&location, v6);
    v34 = MEMORY[0x1E69DC628];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __49__PKApplicationMessageContentView_initWithWidth___block_invoke;
    v43[3] = &unk_1E8010A60;
    objc_copyWeak(&v44, &location);
    v35 = [v34 actionWithHandler:v43];
    v36 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:v35];
    v37 = *(v6 + 408);
    *(v6 + 408) = v36;

    v38 = *(v6 + 408);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __49__PKApplicationMessageContentView_initWithWidth___block_invoke_2;
    v41[3] = &unk_1E8013CE8;
    objc_copyWeak(&v42, &location);
    [v38 setConfigurationUpdateHandler:v41];
    [*(v6 + 408) setAlpha:0.0];
    [*(v6 + 408) _setTouchInsets:{-10.0, -10.0, -10.0, -10.0}];
    [*(v6 + 408) sizeToFit];
    [v6 addSubview:*(v6 + 408)];
    traitCollection = [v6 traitCollection];
    if (traitCollection)
    {
      [(PKApplicationMessageContentView *)v6 _updateForTraitCollection:traitCollection];
    }

    else
    {
      [(PKApplicationMessageContentView *)v6 _updateSubviewsAnimated:?];
    }

    objc_destroyWeak(&v42);
    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __49__PKApplicationMessageContentView_initWithWidth___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 77);
    [v2 applicationMessageContentViewDismissTapped:v3];

    WeakRetained = v3;
  }
}

void __49__PKApplicationMessageContentView_initWithWidth___block_invoke_2(uint64_t a1, void *a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DCAD8];
  v4 = *MEMORY[0x1E69DDDC8];
  v5 = a2;
  v6 = [v3 configurationWithTextStyle:v4 scale:3];
  v7 = MEMORY[0x1E69DCAD8];
  v8 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v18[0] = v8;
  v9 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
  v18[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v11 = [v7 configurationWithPaletteColors:v10];
  v12 = [v6 configurationByApplyingConfiguration:v11];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = [WeakRetained traitCollection];

  if (v14)
  {
    v15 = [v12 configurationWithTraitCollection:v14];

    v12 = v15;
  }

  v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill" withConfiguration:v12];

  v17 = [v5 configuration];
  [v17 setImage:v16];
  [v5 setConfiguration:v17];
}

- (void)_updateForTraitCollection:(uint64_t)collection
{
  v3 = a2;
  if (collection)
  {
    v4 = *MEMORY[0x1E69DDCF8];
    v5 = *MEMORY[0x1E69DB8C8];
    v13 = v3;
    v6 = _PKFontForDesign(v3, *MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDCF8], 4098, 0, 0);
    v7 = *(collection + 552);
    *(collection + 552) = v6;

    if (!*(collection + 560))
    {
      v8 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
      v9 = _PKFontForDesign(v8, v5, v4, 4098, 0, 0);
      v10 = *(collection + 560);
      *(collection + 560) = v9;
    }

    v11 = _PKFontForDesign(v13, v5, *MEMORY[0x1E69DDD80], 0x8000, 0, 0);
    v12 = *(collection + 568);
    *(collection + 568) = v11;

    [*(collection + 408) setNeedsUpdateConfiguration];
    [(PKApplicationMessageContentView *)collection _updateSubviewsAnimated:?];
    [collection setNeedsLayout];
    v3 = v13;
  }
}

- (void)_updateSubviewsAnimated:(uint64_t)animated
{
  if (!animated)
  {
    return;
  }

  if (*(animated + 576) == 1)
  {
    *(animated + 577) = 1;
    return;
  }

  if (a2)
  {
    PKUIViewLayoutIfNeeded(animated, 1, 0);
  }

  v3 = *(animated + 504);
  v4 = *(animated + 512);
  v5 = *(animated + 520);
  v6 = *(animated + 528);
  __asm { FMOV            V1.2D, #16.0 }

  *(animated + 504) = xmmword_1BE0B8C20;
  *(animated + 520) = _Q1;
  v12 = *(animated + 536);
  v13 = [PKApplicationMessageContentView_State alloc];
  v14 = *(animated + 608);
  v15 = *(animated + 560);
  v16 = *(animated + 552);
  v17 = *(animated + 568);
  v80 = *(animated + 601);
  v81 = *(animated + 600);
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v84 = v17;
  if (!v13 || (v89.receiver = v13, v89.super_class = PKApplicationMessageContentView_State, v21 = objc_msgSendSuper2(&v89, sel_init), (v13 = v21) == 0))
  {
    v26 = a2;
    v27 = v84;
    goto LABEL_21;
  }

  v82 = v20;
  v79 = v12;
  objc_storeStrong(&v21->_source, v14);
  objc_storeStrong(&v13->_titleFont, v16);
  objc_storeStrong(&v13->_bodyFont, v17);
  v83 = v19;
  if ([v18 type])
  {
    icon = 0;
    body = 0;
    parseEmphasisInBody = 0;
LABEL_10:
    title = &stru_1F3BD7330;
    goto LABEL_13;
  }

  contentTypeDefault = [v18 contentTypeDefault];
  icon = [contentTypeDefault icon];
  title = [contentTypeDefault title];
  body = [contentTypeDefault body];
  parseEmphasisInBody = [contentTypeDefault parseEmphasisInBody];

  if (!title)
  {
    goto LABEL_10;
  }

LABEL_13:
  image = [icon image];
  v92[0] = 0;
  objc_storeStrong(&v13->_icon, icon);
  v30 = [PKApplicationMessageIconHelpers tintColorWithDescriptor:image hasTintColor:v92];
  iconImageTintColor = v13->_iconImageTintColor;
  v13->_iconImageTintColor = v30;

  v32 = v92[0];
  v33 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
  v34 = [PKApplicationMessageIconHelpers imageWithDescriptor:image font:v83 hasTintColor:v32 traitCollection:v33 symbolScale:3];
  iconImage = v13->_iconImage;
  v13->_iconImage = v34;

  AtrributedString = CreateAtrributedString(title, v82);
  title = v13->_title;
  v13->_title = AtrributedString;

  if (parseEmphasisInBody && body)
  {
    v27 = v84;
    v38 = PKAttributedStringByParsingEmphasisInString(body, v84, 0);
  }

  else
  {
    v27 = v84;
    v38 = CreateAtrributedString(body, v84);
  }

  v26 = a2;
  body = v13->_body;
  v13->_body = v38;

  v40 = v13->_iconImage;
  v41 = v13->_title != 0;
  v42 = v13->_body != 0;
  _ZF = v40 == 0;
  v43 = v40 != 0;
  if (_ZF)
  {
    v44 = 0;
  }

  else
  {
    v44 = v80;
  }

  v13->_visibility.dismiss = v81;
  v13->_visibility.icon = v43;
  v13->_visibility.title = v41;
  v13->_visibility.body = v42;
  v13->_visibility.badge = v44;

  v12 = v79;
  v20 = v82;
  v19 = v83;
LABEL_21:

  v45 = *(animated + 536);
  *(animated + 536) = v13;

  if (v12)
  {
    v46 = v12[4] | (*(v12 + 20) << 32);
  }

  else
  {
    v46 = 0;
  }

  v47 = *(animated + 536);
  if (v47)
  {
    v48 = *(v47 + 20);
    v49 = *(v47 + 16) | (v48 << 32);
    v47 = *(v47 + 24);
    v50 = v48 & 1;
  }

  else
  {
    v50 = 0;
    v49 = 0;
  }

  v85 = v47;
  v51 = *(animated + 536);
  if (v51)
  {
    v51 = v51[7];
  }

  v52 = v51;
  v53 = *(animated + 536);
  if (v53)
  {
    v53 = v53[9];
  }

  v54 = v53;
  v55 = *(animated + 440);
  v89 = *(animated + 424);
  v90 = v55;
  v91 = *(animated + 456);
  *(animated + 432) = v3;
  *(animated + 440) = v4;
  *(animated + 448) = v5;
  *(animated + 456) = v6;
  if (v26)
  {
    v56 = 0.0;
    if ((v46 & 0x100) != 0 && (PKEqualObjects() & 1) == 0)
    {
      v56 = fmax([(PKApplicationMessageContentView *)animated _prepareViewForReuse:0 type:v3 state:v4, v5, v6], 0.0);
    }

    if (!(((v46 & 0x100000000) == 0) | v50 & 1))
    {
      v56 = fmax([(PKApplicationMessageContentView *)animated _prepareViewForReuse:0 type:v3 state:v4, v5, v6], v56);
    }

    if ((v46 & 0x10000) != 0 && (PKEqualObjects() & 1) == 0)
    {
      v56 = fmax([(PKApplicationMessageContentView *)animated _prepareViewForReuse:1 type:v3 state:v4, v5, v6], v56);
    }

    if ((v46 & 0x1000000) != 0 && (PKEqualObjects() & 1) == 0)
    {
      v56 = fmax([(PKApplicationMessageContentView *)animated _prepareViewForReuse:1 type:v3 state:v4, v5, v6], v56);
    }

    *(animated + 424) = fmax(*(animated + 424), v56 * 0.65);
  }

  v57 = *(animated + 536);
  if (v57)
  {
    v58 = *(v57 + 32);
  }

  else
  {
    v58 = 0;
  }

  [*(animated + 472) setImage:v58];
  v59 = *(animated + 536);
  if (v59)
  {
    v60 = *(v59 + 40);
  }

  else
  {
    v60 = 0;
  }

  [*(animated + 464) setTintColor:v60];
  if ([*(animated + 608) type])
  {
    goto LABEL_53;
  }

  v61 = v12;
  contentTypeDefault2 = [*(animated + 608) contentTypeDefault];
  icon2 = [contentTypeDefault2 icon];
  image2 = [icon2 image];
  type = [image2 type];

  if (!type)
  {
    [*(animated + 464) setBackgroundColor:0];
    goto LABEL_51;
  }

  v12 = v61;
  if (type == 1)
  {
    v66 = *(animated + 464);
    tertiarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
    [v66 setBackgroundColor:tertiarySystemGroupedBackgroundColor];

LABEL_51:
    v12 = v61;
  }

  [icon2 style];

  v26 = a2;
LABEL_53:
  v68 = *(animated + 488);
  if (v68)
  {
    [v68 setAttributedText:v52];
  }

  v69 = *(animated + 496);
  if (v69)
  {
    [v69 setAttributedText:v54];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKApplicationMessageContentView__updateSubviewsAnimated___block_invoke_2;
  aBlock[3] = &unk_1E8022B28;
  v88 = v26;
  aBlock[4] = animated;
  v70 = _Block_copy(aBlock);
  if (v26)
  {
    _shouldReverseLayoutDirection = [animated _shouldReverseLayoutDirection];
    [animated bounds];
    if (_shouldReverseLayoutDirection)
    {
      v77 = 0x200000101;
    }

    else
    {
      v77 = 0x200000001;
    }

    v71.n128_f64[0] = [(PKApplicationMessageContentView *)animated _layoutWithContext:v77 bounds:v73, v74, v75, v76];
  }

  v70[2](v70, *(animated + 408), v49 & 1, v71);
  (v70[2])(v70, *(animated + 488), (v49 >> 16) & 1);
  (v70[2])(v70, *(animated + 496), (v49 >> 24) & 1);
  (v70[2])(v70, *(animated + 464), (v49 >> 8) & 1);
  (v70[2])(v70, *(animated + 480), v50);
  [animated setNeedsLayout];
  PKUIViewLayoutIfNeeded(animated, 0, 0);
  v78 = v90;
  *(animated + 424) = v89;
  *(animated + 440) = v78;
  *(animated + 456) = v91;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKApplicationMessageContentView;
  [(PKApplicationMessageContentView *)&v2 dealloc];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = PKApplicationMessageContentView;
  [(PKApplicationMessageContentView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKApplicationMessageContentView *)self traitCollection];
  if (!changeCopy || ([changeCopy preferredContentSizeCategory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(traitCollection, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v6, v7), v7, v6, v8))
  {
    [(PKApplicationMessageContentView *)self _updateForTraitCollection:traitCollection];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  selfCopy = self;
  v12.receiver = self;
  v12.super_class = PKApplicationMessageContentView;
  v5 = [(PKApplicationMessageContentView *)&v12 hitTest:event withEvent:test.x, test.y];
  if (!v5 || (WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate)) == 0 || (v7 = WeakRetained, v8 = objc_loadWeakRetained(&selfCopy->_delegate), v9 = [v8 isApplicationMessageContentViewSwiped:selfCopy], v8, v7, (v9 & 1) == 0))
  {
    selfCopy = v5;
  }

  v10 = selfCopy;

  return selfCopy;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = PKApplicationMessageContentView;
  [(PKApplicationMessageContentView *)&v10 layoutSubviews];
  IsAnimated = PKCATrackedLayoutIsAnimated();
  _shouldReverseLayoutDirection = [(PKApplicationMessageContentView *)self _shouldReverseLayoutDirection];
  [(PKApplicationMessageContentView *)self bounds];
  v9 = 0x100000000;
  if (_shouldReverseLayoutDirection)
  {
    v9 = 0x100000100;
  }

  [(PKApplicationMessageContentView *)self _layoutWithContext:v5 bounds:v6, v7, v8];
}

- (double)_layoutWithContext:(double)context bounds:(double)bounds
{
  v193 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0.0;
  }

  v10 = a2 & 0xFFFFFFFF00000000;
  v11 = (a2 & 0xFFFFFFFF00000000) == 0x100000000;
  [*(self + 408) sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v13 = v12;
  v15 = v14;
  selfCopy = self;
  imageView = [*(self + 408) imageView];
  image = [imageView image];

  [image alignmentRectInsets];
  v19 = 15.0 - v18;
  v21 = 15.0 - v20;
  v23 = 15.0 - v22;
  v25 = 15.0 - v24;
  v26.n128_f64[0] = context + v21;
  v27.n128_f64[0] = bounds + v19;
  v28.n128_f64[0] = a5 - (v21 + v25);
  r2.origin.y = a6;
  v29.n128_f64[0] = a6 - (v19 + v23);
  v30.n128_u64[0] = v13;
  v31.n128_u64[0] = v15;
  PKSizeAlignedInRect(~(a2 >> 7) & 2, v30, v31, v26, v27, v28, v29, v32);
  v37 = v33;
  v38 = v34;
  v39 = v35;
  v40 = v36;
  if (v11)
  {
    [*(selfCopy + 408) setFrame:{v33, v34, v35, v36}];
  }

  v41 = *(selfCopy + 536);
  if (!v41 || (v42 = v40, v43 = v38, (*(v41 + 16) & 1) == 0))
  {
    v37 = *MEMORY[0x1E695F050];
    v43 = *(MEMORY[0x1E695F050] + 8);
    v39 = *(MEMORY[0x1E695F050] + 16);
    v42 = *(MEMORY[0x1E695F050] + 24);
  }

  r2.origin.x = v37;

  v44 = *(selfCopy + 504);
  v45 = *(selfCopy + 512);
  v47 = *(selfCopy + 520);
  v46 = *(selfCopy + 528);
  if (v10 == 0x100000000)
  {
    [selfCopy layoutMargins];
    v49 = fmax(v47, v48);
    v50 = context + v45;
    v51 = bounds + v44;
    v52 = a5 - (v45 + v46);
    v53 = r2.origin.y - (v44 + v49);
    [*(selfCopy + 416) pkui_setFrame:a2 & 1 animated:{v50, bounds + v44, v52, v53}];
  }

  else
  {
    v50 = context + v45;
    v52 = a5 - (v45 + v46);
    v54 = v44 + v47;
    v51 = bounds + v44;
    v53 = r2.origin.y - v54;
  }

  v194.origin.x = v50;
  v194.origin.y = v51;
  rect = v52;
  v194.size.width = v52;
  v194.size.height = v53;
  v200.origin.x = r2.origin.x;
  v200.origin.y = v43;
  v200.size.width = v39;
  v200.size.height = v42;
  v195 = CGRectIntersection(v194, v200);
  v196 = CGRectOffset(v195, -v50, -v51);
  width = v196.size.width;
  y = v196.origin.y;
  height = v196.size.height;
  v55 = HIDWORD(a2);
  if ((a2 >> 8))
  {
    v56 = 2;
  }

  else
  {
    v56 = 0x200000000;
  }

  v57 = *(selfCopy + 536);
  x = v196.origin.x;
  if (v57)
  {
    v58 = *(v57 + 16) | (*(v57 + 20) << 32);
  }

  else
  {
    v58 = 0;
  }

  v183 = 0;
  v184 = &v183;
  v185 = 0x2020000000;
  v186 = 0x4018000000000000;
  v178 = 0;
  v179 = &v178;
  v180 = 0x4010000000;
  v181 = &unk_1BE347799;
  v173 = 0;
  v174 = &v173;
  v175 = 0x4010000000;
  v176 = &unk_1BE347799;
  memset(&v177, 0, sizeof(v177));
  v182.origin = xmmword_1BE116C90;
  v197.size.width = v52;
  v182.size.width = v52;
  v182.size.height = v53;
  v197.origin.x = 0.0;
  v197.origin.y = 6.0;
  v197.size.height = v53;
  CGRectDivide(v197, &v177, &v182, 45.0, v56);
  v59 = *(selfCopy + 536);
  v147 = v51;
  if (!v59)
  {
    v61 = 0;
LABEL_24:
    PKSizeScaleAspectFit();
    v65 = v69;
    v67 = v70;
    objc_opt_self();
    v63 = v53;
    v68 = v65 * 0.206896552;
    goto LABEL_25;
  }

  v60 = *(v59 + 24);
  v61 = v60;
  if (!v60)
  {
    goto LABEL_24;
  }

  style = [v60 style];
  if (!style)
  {
    goto LABEL_24;
  }

  v63 = v53;
  if (style == 1)
  {
    PKPassFrontFaceContentSize();
    PKSizeScaleAspectFit();
    v65 = v64;
    v67 = v66;
    v68 = 4.0;
  }

  else
  {
    v65 = *MEMORY[0x1E695F060];
    v67 = *(MEMORY[0x1E695F060] + 8);
    v68 = 0.0;
  }

LABEL_25:
  v71 = PKContentAlignmentMake();
  v72.n128_u64[0] = *&v174[1].origin.x;
  v73.n128_u64[0] = *&v174[1].origin.y;
  v74.n128_u64[0] = *&v174[1].size.width;
  v75.n128_u64[0] = *&v174[1].size.height;
  v76.n128_f64[0] = v65;
  v77.n128_u64[0] = v67;
  PKSizeAlignedInRect(v71, v76, v77, v72, v73, v74, v75, v78);
  v162 = v80;
  r2.origin.x = v79;
  v161 = v81;
  r2.origin.y = v82;
  if (v55 != 1)
  {
    if ((v58 & 0x100) == 0)
    {
      goto LABEL_27;
    }

LABEL_29:
    v184[3] = fmax(r2.origin.y + 6.0, v184[3]);
    v83 = 1;
    goto LABEL_30;
  }

  [*(selfCopy + 464) pkui_setCornerRadius:a2 & BYTE1(v58) & 1 animated:v68];
  [*(selfCopy + 464) pkui_setFrame:a2 & BYTE1(v58) & 1 animated:{r2.origin.x, v162, v161, r2.origin.y}];
  [*(selfCopy + 464) frame];
  CGRectGetMaxX(v198);
  [*(selfCopy + 464) frame];
  CGRectGetMinY(v199);
  UIRectCenteredAboutPoint();
  [*(selfCopy + 480) pkui_setFrame:a2 & BYTE4(v58) & 1u animated:?];
  if ((v58 >> 8))
  {
    goto LABEL_29;
  }

LABEL_27:
  v83 = 0;
LABEL_30:

  CGRectDivide(v179[1], v174 + 1, v179 + 1, 13.0, v56);
  p_x = &v179->origin.x;
  v85 = v179[1].origin.x;
  v86 = v179[1].origin.y;
  v87 = v179[1].size.height;
  v148 = v179[1].size.width;
  if (v55 == 1)
  {
    [*(selfCopy + 464) bounds];
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    image2 = [*(selfCopy + 472) image];
    if (image2)
    {
      v97 = *(selfCopy + 536);
      if (v97)
      {
        v97 = v97[3];
      }

      v98 = v97;
      image3 = [v98 image];
      hasBackground = [image3 hasBackground];

      if (hasBackground)
      {
        objc_msgSend_pkui_alignmentSizeThatFills_(image2, v93, v95);
      }

      else
      {
        objc_msgSend_pkui_alignmentSizeThatFits_maximumScale_(image2, v93, v95, 1.0);
      }

      v101.n128_f64[0] = v190 + v89 + (v93 - v187) * 0.5;
      v102.n128_f64[0] = v189 + v91 + (v95 - v188) * 0.5;
      v103.n128_f64[0] = v187 - (v190 + v192);
      v105.n128_f64[0] = v189 + v191;
      v104.n128_f64[0] = v188 - (v189 + v191);
      PKRectRoundToPixel(v101, v102, v103, v104, v105);
      v89 = v106;
      v91 = v107;
      v93 = v108;
      v95 = v109;
    }

    [*(selfCopy + 472) pkui_setFrame:v83 & a2 animated:{v89, v91, v93, v95, *&v147}];

    p_x = &v179->origin.x;
  }

  if (v83)
  {
    v110 = v85;
  }

  else
  {
    v110 = 0.0;
  }

  v111 = 6.0;
  if (v83)
  {
    v111 = v86;
  }

  v159 = v111;
  v160 = v110;
  p_x[4] = v110;
  p_x[5] = v111;
  v112 = rect;
  if (v83)
  {
    v112 = v148;
    v113 = v87;
  }

  else
  {
    v113 = v63;
  }

  recta = v112;
  p_x[6] = v112;
  p_x[7] = v113;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PKApplicationMessageContentView__layoutContentViewWithContext_bounds_occludedBounds___block_invoke;
  aBlock[3] = &unk_1E8022B00;
  *&aBlock[8] = x;
  *&aBlock[9] = y;
  *&aBlock[10] = width;
  *&aBlock[11] = height;
  aBlock[12] = v56;
  v168 = v56;
  v169 = 0;
  v171 = HIDWORD(a2) == 2;
  v172 = HIDWORD(a2) == 1;
  v170 = a2;
  aBlock[4] = selfCopy;
  aBlock[5] = &v178;
  aBlock[6] = &v173;
  aBlock[7] = &v183;
  v153 = _Block_copy(aBlock);
  v153[2](v153, *(selfCopy + 488), (v58 >> 16) & 1);
  CGRectDivide(v179[1], v174 + 1, v179 + 1, 1.0, CGRectMinYEdge);
  v153[2](v153, *(selfCopy + 496), (v58 >> 24) & 1);
  if (v55 == 1)
  {
    v165 = 0u;
    v166 = 0u;
    r2.size = 0u;
    v164 = 0u;
    v114 = *(selfCopy + 544);
    v115 = [v114 countByEnumeratingWithState:&r2.size objects:&v187 count:16];
    if (v115)
    {
      v116 = *v164;
      v117 = *MEMORY[0x1E69BB7F8];
      v118 = MEMORY[0x1E69DDCE0];
      do
      {
        v119 = 0;
        do
        {
          if (*v164 != v116)
          {
            objc_enumerationMutation(v114);
          }

          v120 = *(*&r2.size.height + 8 * v119);
          if (v120)
          {
            v121 = *(v120 + 8);
            v122 = v118 + 1;
            v123 = v118 + 2;
            v124 = v118 + 3;
            v125 = (v120 + 24);
            if (v121)
            {
              v125 = v118;
            }

            else
            {
              v124 = (v120 + 48);
              v123 = (v120 + 40);
              v122 = (v120 + 32);
            }

            v126 = *v125;
            v127 = *v122;
            v128 = *v123;
            v129 = *v124;
            v120 = *(v120 + 16);
          }

          else
          {
            v121 = 0;
            v129 = 0.0;
            v128 = 0.0;
            v127 = 0.0;
            v126 = 0.0;
          }

          v130 = v120;
          [v130 frame];
          v138 = v133.n128_f64[0] - (v129 + v127);
          v139 = v134.n128_f64[0] - (v128 + v126);
          if (v121)
          {
            v140 = v126 + v132.n128_f64[0];
            if (v121 == 1)
            {
              v131.n128_f64[0] = v133.n128_f64[0] - (v129 + v127);
              v132.n128_f64[0] = v134.n128_f64[0] - (v128 + v126);
              v134.n128_f64[0] = v159;
              v133.n128_f64[0] = v160;
              v135.n128_f64[0] = recta;
              v136.n128_f64[0] = v113;
              PKSizeAlignedInRect(v56 & 2, v131, v132, v133, v134, v135, v136, v137);
            }

            else
            {
              v141 = v127 + v131.n128_f64[0];
            }
          }

          else
          {
            v131.n128_f64[0] = v133.n128_f64[0] - (v129 + v127);
            v132.n128_f64[0] = v134.n128_f64[0] - (v128 + v126);
            v134.n128_f64[0] = v162;
            v133.n128_u64[0] = *&r2.origin.x;
            v135.n128_f64[0] = v161;
            v136.n128_u64[0] = *&r2.origin.y;
            PKSizeAlignedInRect(v117, v131, v132, v133, v134, v135, v136, v137);
            v140 = v142;
            v138 = v143;
            v139 = v144;
          }

          [v130 pkui_setFrame:a2 & 1 animated:{v141 - v127, v140 - v126, v138 - (-v129 - v127), v139 - (-v128 - v126), *&v147}];

          ++v119;
        }

        while (v115 != v119);
        v145 = [v114 countByEnumeratingWithState:&r2.size objects:&v187 count:16];
        v115 = v145;
      }

      while (v145);
    }
  }

  _Block_object_dispose(&v173, 8);
  _Block_object_dispose(&v178, 8);
  _Block_object_dispose(&v183, 8);
  return a5;
}

- (void)setLayoutMargins:(UIEdgeInsets)margins
{
  v4.receiver = self;
  v4.super_class = PKApplicationMessageContentView;
  [(PKApplicationMessageContentView *)&v4 setLayoutMargins:margins.top, margins.left, margins.bottom, margins.right];
  [(PKApplicationMessageContentView *)self setNeedsLayout];
}

- (void)setBlurRadius:(void *)radius animated:(double)animated withCompletion:
{
  v19[1] = *MEMORY[0x1E69E9840];
  radiusCopy = radius;
  v8 = radiusCopy;
  if (!self)
  {
    goto LABEL_16;
  }

  if (*(self + 592) == animated)
  {
    if (radiusCopy)
    {
      (*(radiusCopy + 2))(radiusCopy, 1);
    }

    goto LABEL_16;
  }

  layer = [self layer];
  if (!*(self + 584))
  {
    v10 = objc_alloc(MEMORY[0x1E6979378]);
    v11 = [v10 initWithType:*MEMORY[0x1E6979928]];
    v12 = *(self + 584);
    *(self + 584) = v11;

    [*(self + 584) setName:@"blur"];
    v19[0] = *(self + 584);
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [layer setFilters:v13];

    if (!a2)
    {
      goto LABEL_12;
    }

LABEL_9:
    v14 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"filters.blur.inputRadius"];
    [v14 pkui_updateForAdditiveAnimationFromScalar:*(self + 592) toScalar:animated];
    if (v8)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __73__PKApplicationMessageContentView_setBlurRadius_animated_withCompletion___block_invoke;
      v17[3] = &unk_1E8010AD8;
      v18 = v8;
      [v14 pkui_setCompletionHandler:v17];
    }

    v15 = [layer pkui_addAdditiveAnimation:v14];

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_9;
  }

LABEL_12:
  *(self + 592) = animated;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:animated];
  [layer setValue:v16 forKeyPath:@"filters.blur.inputRadius"];

  if (v8 && (a2 & 1) == 0)
  {
    v8[2](v8, 1);
  }

LABEL_16:
}

void __87__PKApplicationMessageContentView__layoutContentViewWithContext_bounds_occludedBounds___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(*(a1 + 40) + 8);
  v52 = *(v6 + 32);
  v53 = *(v6 + 48);
  v51 = v5;
  [v5 pkui_sizeThatFits:{*(v6 + 48), 1.79769313e308}];
  v50 = v7;
  v9 = v8;
  v10 = *(*(a1 + 40) + 8);
  v55.origin.x = v10[1].origin.x;
  v55.origin.y = v10[1].origin.y;
  ++v10;
  v55.size.width = v10->size.width;
  v55.size.height = v10->size.height;
  v49 = v9;
  CGRectDivide(v55, (*(*(a1 + 48) + 8) + 32), v10, v9, CGRectMinYEdge);
  v11 = *(a1 + 100);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v56 = CGRectStandardize(*(*(*(a1 + 48) + 8) + 32));
  x = v56.origin.x;
  y = v56.origin.y;
  width = v56.size.width;
  height = v56.size.height;
  v58.origin.x = v12;
  v58.origin.y = v13;
  v58.size.width = v14;
  v58.size.height = v15;
  v57 = CGRectIntersection(v56, v58);
  v20 = v57.origin.x;
  v21 = v57.origin.y;
  v22 = v57.size.width;
  v23 = v57.size.height;
  if (CGRectIsNull(v57))
  {
    goto LABEL_2;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      width = fmax(v20 - x, 0.0);
    }

    else
    {
      if (v11 != 3)
      {
        goto LABEL_31;
      }

      height = fmax(v21 - y, 0.0);
    }
  }

  else
  {
    if (v11)
    {
      if (v11 == 1)
      {
        v33 = y + height;
        y = fmin(v21 + v23, y + height);
        height = v33 - y;
        goto LABEL_2;
      }

LABEL_31:
      __break(1u);
      return;
    }

    v48 = x + width;
    x = fmin(v20 + v22, x + width);
    width = v48 - x;
  }

LABEL_2:
  v31 = *(*(a1 + 48) + 8);
  v31[4] = x;
  v31[5] = y;
  v31[6] = width;
  v31[7] = height;
  v32 = *(*(a1 + 48) + 8);
  v28.n128_u64[0] = v32[6];
  v24.n128_f64[0] = v50;
  if (v28.n128_f64[0] >= v50)
  {
    v25.n128_f64[0] = v49;
  }

  else
  {
    [v51 pkui_sizeThatFits:{v28.n128_f64[0], 1.79769313e308}];
    v32 = *(*(a1 + 48) + 8);
    v28.n128_u64[0] = v32[6];
  }

  v26.n128_u64[0] = v32[4];
  v27.n128_u64[0] = v32[5];
  v29.n128_u64[0] = v32[7];
  PKSizeAlignedInRect(*(a1 + 104), v24, v25, v26, v27, v28, v29, v30);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  if (*(a1 + 120) == 1)
  {
    [v51 alpha];
    v43 = 0;
    v44 = v42 <= 0.0;
    if (*(a1 + 120) == 1 && v42 > 0.0)
    {
      [v51 frame];
      v44 = 0;
      v43 = v39 != v45;
      if (v41 != v46)
      {
        v43 = 1;
      }
    }
  }

  else
  {
    v43 = 0;
    v44 = 1;
  }

  if ((*(a1 + 121) & 1) == 0 && (v44 || (*(a1 + 120) & 1) == 0 || v43))
  {
    if (v43)
    {
      [(PKApplicationMessageContentView *)*(a1 + 32) _prepareViewForReuse:v51 type:1 state:*(*(a1 + 32) + 432), *(*(a1 + 32) + 440), *(*(a1 + 32) + 448), *(*(a1 + 32) + 456)];
    }

    if (a3)
    {
      goto LABEL_20;
    }

LABEL_22:
    v47 = *(*(a1 + 40) + 8);
    *(v47 + 32) = v52;
    *(v47 + 48) = v53;
    goto LABEL_23;
  }

  [v51 pkui_setFrame:(*(a1 + 112) & a3) animated:{v35, v37, v39, v41}];
  if (!a3)
  {
    goto LABEL_22;
  }

LABEL_20:
  *(*(*(a1 + 56) + 8) + 24) = fmax(v37 + v41, *(*(*(a1 + 56) + 8) + 24));
LABEL_23:
}

- (double)_prepareViewForReuse:(int)reuse type:(double)type state:(double)state
{
  v13 = a2;
  v14 = v13;
  if (self)
  {
    superview = [v13 superview];
    if (superview)
    {
      v16 = [v14 snapshotViewAfterScreenUpdates:0];
      if (v16)
      {
        [v14 frame];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        layer = [v14 layer];
        presentationLayer = [layer presentationLayer];
        v27 = presentationLayer;
        if (presentationLayer)
        {
          [presentationLayer anchorPoint];
          v29 = v28;
          v61 = v30;
          [v27 position];
          stateCopy = state;
          v32 = a7;
          v34 = v33;
          typeCopy = type;
          v35 = a6;
          v37 = v36;
          [v27 bounds];
          v22 = v38;
          v24 = v39;
          v18 = v34 - v29 * v38;
          a7 = v32;
          state = stateCopy;
          v20 = v37 - v61 * v39;
          a6 = v35;
          type = typeCopy;
        }

        [v16 setFrame:{v18, v20, v22, v24}];
        [superview addSubview:v16];
        layer2 = [v16 layer];
        [layer2 setAllowsGroupOpacity:{objc_msgSend(layer, "allowsGroupOpacity")}];
        compositingFilter = [layer compositingFilter];
        [layer2 setCompositingFilter:compositingFilter];

        v42 = [PKApplicationMessageContentView_SubviewSnapshot alloc];
        [v14 alignmentRectInsets];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v51 = v16;
        if (v42)
        {
          v69.receiver = v42;
          v69.super_class = PKApplicationMessageContentView_SubviewSnapshot;
          v52 = objc_msgSendSuper2(&v69, sel_init);
          v53 = v52;
          if (v52)
          {
            objc_storeStrong(v52 + 2, v16);
            v53[3] = v44;
            v53[4] = v46;
            v53[5] = v48;
            v53[6] = v50;
            *(v53 + 2) = reuse;
            *(v53 + 7) = type;
            *(v53 + 8) = state;
            *(v53 + 9) = a6;
            *(v53 + 10) = a7;
          }

          v54 = v53;
        }

        else
        {
          v54 = 0;
        }

        v55 = *(self + 544);
        [v55 addObject:v54];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __67__PKApplicationMessageContentView__prepareViewForReuse_type_state___block_invoke;
        v65[3] = &unk_1E8012798;
        v66 = v51;
        v67 = v55;
        v68 = v54;
        v56 = v54;
        v57 = v55;
        v69.receiver = 0;
        _PKViewSetAlphaAnimated(v66, v65, &v69, 0.0, 0.0);
        v58 = *&v69.receiver;
      }

      else
      {
        v58 = 0.0;
      }
    }

    else
    {
      v58 = 0.0;
    }

    v59 = MEMORY[0x1E69DD250];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __67__PKApplicationMessageContentView__prepareViewForReuse_type_state___block_invoke_2;
    v63[3] = &unk_1E8010970;
    v64 = v14;
    [v59 performWithoutAnimation:v63];
  }

  else
  {
    v58 = 0.0;
  }

  return v58;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  _shouldReverseLayoutDirection = [(PKApplicationMessageContentView *)self _shouldReverseLayoutDirection];
  v7 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  if (_shouldReverseLayoutDirection)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  height = [(PKApplicationMessageContentView *)self _layoutWithContext:v9 bounds:v7, v8, width, height];
  result.height = v11;
  result.width = height;
  return result;
}

- (void)performBatchUpdates:(uint64_t)updates animated:
{
  v5 = a2;
  if (self && v5)
  {
    v7 = v5;
    if (self[576] == 1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"PKApplicationMessageContentView recursive batch updates are not supported."];
      v5 = v7;
    }

    if (updates)
    {
      [self layoutIfNeeded];
      v5 = v7;
    }

    self[576] = 1;
    v5[2]();
    self[576] = 0;
    v6 = self[577];
    self[577] = 0;
    if (v6 == 1)
    {
      [(PKApplicationMessageContentView *)self _updateSubviewsAnimated:updates];
    }

    else
    {
      PKUIViewLayoutIfNeeded(self, updates, 0);
    }

    v5 = v7;
  }
}

void __59__PKApplicationMessageContentView__updateSubviewsAnimated___block_invoke_2(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a3;
  if (*(a1 + 40) == 1)
  {
    v6 = 0.0;
    if (a3)
    {
      v6 = *(*(a1 + 32) + 424);
    }

    v7[1] = v3;
    v7[2] = v4;
    _PKViewSetAlphaAnimated(a2, 0, v7, v5, v6);
  }

  else
  {

    [a2 pkui_setAlpha:0 animated:v5];
  }
}

uint64_t __67__PKApplicationMessageContentView__prepareViewForReuse_type_state___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 removeObjectIdenticalTo:v3];
}

void __67__PKApplicationMessageContentView__prepareViewForReuse_type_state___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 removeAllAnimations];
  [*(a1 + 32) setAlpha:0.0];
  [v2 clearHasBeenCommitted];
}

- (void)setContent:(int)content animated:
{
  v6 = a2;
  if (self && *(self + 608) != v6)
  {
    v7 = v6;
    if (content && (*(self + 576) & 1) == 0)
    {
      [self layoutIfNeeded];
    }

    objc_storeStrong((self + 608), a2);
    [(PKApplicationMessageContentView *)self _updateSubviewsAnimated:content];
    v6 = v7;
  }
}

@end