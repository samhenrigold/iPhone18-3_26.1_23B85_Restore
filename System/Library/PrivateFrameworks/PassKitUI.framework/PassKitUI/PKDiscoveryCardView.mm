@interface PKDiscoveryCardView
+ (BOOL)usesMediumCards;
+ (CGSize)compressedSize;
+ (CGSize)expandedSize;
+ (CGSize)miniCompressedSize;
+ (double)compressedHeight;
+ (double)compressedWidth;
+ (double)expandedHeight;
+ (double)expandedWidth;
+ (unint64_t)_effectiveScreenType;
+ (unint64_t)_effectiveScreenWidthType;
+ (void)setPreviewConfiguration:(id *)configuration;
- (CGSize)_miniCardImageSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDiscoveryCardView)initWithArticleLayout:(id)layout cardSizeType:(int64_t)type;
- (PKDiscoveryCardView)initWithArticleLayout:(id)layout cardTemplateInformation:(id)information callToActionTappedOverride:(id)override isWelcomeCard:(BOOL)card;
- (PKDiscoveryCardViewDelegate)delegate;
- (UIEdgeInsets)_currentContentInsets;
- (UIEdgeInsets)safeAreaOverrideInsets;
- (double)_yOffsetToHeadingLabel;
- (id)_dismissButtonColorWithTraitCollection:(id)collection;
- (id)_headingLabelFont;
- (id)_headingLabelTextColor;
- (id)_titleLabelFont;
- (id)_titleLabelTextColor;
- (int64_t)_foregroundContentMode;
- (unint64_t)_titleLabelNumberOfLines;
- (void)_dismissButtonPressed;
- (void)_updateForDisplayType;
- (void)layoutSubviews;
- (void)loadAndUploadImageData;
- (void)setCallToActionTappedOverride:(id)override;
- (void)setCardSize:(int64_t)size;
- (void)setDelegate:(id)delegate;
- (void)setDismissAction:(id)action;
- (void)setDisplayType:(int64_t)type;
- (void)tapGestureRecognized:(id)recognized;
@end

@implementation PKDiscoveryCardView

+ (double)expandedWidth
{
  _effectiveScreenType = [self _effectiveScreenType];
  v3 = (&unk_1BE116410 + 8 * _effectiveScreenType);
  if (_effectiveScreenType >= 0x14)
  {
    v3 = MEMORY[0x1E695F060];
  }

  return *v3;
}

+ (double)expandedHeight
{
  usesMediumCards = [self usesMediumCards];
  _effectiveScreenWidthType = [self _effectiveScreenWidthType];
  if (_effectiveScreenWidthType <= 0xE)
  {
    if (((1 << _effectiveScreenWidthType) & 0x7E00) != 0)
    {
LABEL_5:
      v5 = usesMediumCards == 0;
      result = 549.0;
      v7 = 559.0;
      goto LABEL_7;
    }

    if (((1 << _effectiveScreenWidthType) & 0x1E) != 0)
    {
      v5 = usesMediumCards == 0;
      result = 492.0;
      v7 = 510.0;
      goto LABEL_7;
    }

    if (((1 << _effectiveScreenWidthType) & 0x1E0) != 0)
    {
      goto LABEL_5;
    }
  }

  result = 0.0;
  if (_effectiveScreenWidthType)
  {
    return result;
  }

  v5 = usesMediumCards == 0;
  result = 422.0;
  v7 = 416.0;
LABEL_7:
  if (!v5)
  {
    return v7;
  }

  return result;
}

+ (CGSize)expandedSize
{
  [self expandedWidth];
  v4 = v3;
  [self expandedHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

+ (double)compressedWidth
{
  _effectiveScreenWidthType = [self _effectiveScreenWidthType];
  do
  {
    v3 = _effectiveScreenWidthType;
    _effectiveScreenWidthType = 5;
  }

  while (v3 > 8);
  return dbl_1BE1164B0[v3];
}

+ (double)compressedHeight
{
  usesMediumCards = [self usesMediumCards];
  _effectiveScreenWidthType = [self _effectiveScreenWidthType];
  result = 0.0;
  if (_effectiveScreenWidthType <= 4)
  {
    if ((_effectiveScreenWidthType - 2) >= 3)
    {
      if (_effectiveScreenWidthType)
      {
        if (_effectiveScreenWidthType != 1)
        {
          return result;
        }

        v6 = usesMediumCards == 0;
        result = 412.0;
        v7 = 285.0;
      }

      else
      {
        v6 = usesMediumCards == 0;
        result = 354.0;
        v7 = 243.0;
      }
    }

    else
    {
      v6 = usesMediumCards == 0;
      result = 430.0;
      v7 = 300.0;
    }

    goto LABEL_15;
  }

  if ((_effectiveScreenWidthType - 9) < 6)
  {
    v6 = usesMediumCards == 0;
    result = 460.0;
LABEL_11:
    v7 = 330.0;
    goto LABEL_15;
  }

  if ((_effectiveScreenWidthType - 6) < 3)
  {
    v6 = usesMediumCards == 0;
    result = 477.0;
    goto LABEL_11;
  }

  if (_effectiveScreenWidthType != 5)
  {
    return result;
  }

  v6 = usesMediumCards == 0;
  result = 460.0;
  v7 = 315.0;
LABEL_15:
  if (!v6)
  {
    return v7;
  }

  return result;
}

+ (CGSize)compressedSize
{
  [self compressedWidth];
  v4 = v3;
  [self compressedHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

+ (CGSize)miniCompressedSize
{
  [self compressedWidth];
  v3 = 120.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (void)setPreviewConfiguration:(id *)configuration
{
  v3 = *&configuration->var0;
  qword_1EBDAAB58 = configuration->var3;
  previewConfiguration = v3;
}

+ (BOOL)usesMediumCards
{
  if (previewConfiguration)
  {
    return BYTE1(previewConfiguration);
  }

  else
  {
    return MEMORY[0x1EEE247D8](self, a2);
  }
}

+ (unint64_t)_effectiveScreenType
{
  if (previewConfiguration)
  {
    return qword_1EBDAAB58;
  }

  else
  {
    return PKUIGetMinScreenType();
  }
}

+ (unint64_t)_effectiveScreenWidthType
{
  if (previewConfiguration)
  {
    return *(&previewConfiguration + 1);
  }

  else
  {
    return PKUIGetMinScreenWidthType();
  }
}

- (PKDiscoveryCardView)initWithArticleLayout:(id)layout cardSizeType:(int64_t)type
{
  layoutCopy = layout;
  v7 = [[PKDiscoveryCardViewTemplateInformation alloc] initWithCardSize:type displayType:0];
  v8 = [(PKDiscoveryCardView *)self initWithArticleLayout:layoutCopy cardTemplateInformation:v7 callToActionTappedOverride:0 isWelcomeCard:0];

  return v8;
}

- (PKDiscoveryCardView)initWithArticleLayout:(id)layout cardTemplateInformation:(id)information callToActionTappedOverride:(id)override isWelcomeCard:(BOOL)card
{
  v96[3] = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  informationCopy = information;
  overrideCopy = override;
  v95.receiver = self;
  v95.super_class = PKDiscoveryCardView;
  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  v15 = [(PKDiscoveryCardView *)&v95 initWithFrame:*MEMORY[0x1E695F058], v12, v13, v14];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_48;
  }

  objc_storeStrong(&v15->_articleLayout, layout);
  v16->_priority = [(PKDiscoveryArticleLayout *)v16->_articleLayout priority];
  v16->_isWelcomeCard = card;
  obj = [layoutCopy mediumCard];
  v17 = +[PKDiscoveryCardView usesMediumCards];
  card = obj;
  if (obj)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  if (!v19)
  {
    card = [layoutCopy card];
  }

  objc_storeStrong(&v16->_card, card);
  if (!v19)
  {
  }

  miniCard = [layoutCopy miniCard];
  miniCard = v16->_miniCard;
  v16->_miniCard = miniCard;

  backgroundMedia = [(PKMiniDiscoveryCard *)v16->_miniCard backgroundMedia];
  miniCardMedia = v16->_miniCardMedia;
  v16->_miniCardMedia = backgroundMedia;

  v16->_largeCardTemplate = [(PKDiscoveryCard *)v16->_card largeCardTemplateType];
  v16->_miniCardTemplate = [(PKMiniDiscoveryCard *)v16->_miniCard miniCardTemplateType];
  v24 = [informationCopy copy];
  cardTemplateInformation = v16->_cardTemplateInformation;
  v16->_cardTemplateInformation = v24;

  _isLargeFormat = [(PKDiscoveryCardView *)v16 _isLargeFormat];
  _isMaskedDisplay = [(PKDiscoveryCardView *)v16 _isMaskedDisplay];
  v28 = +[PKDiscoveryCardView _effectiveScreenType];
  backgroundMedia2 = [(PKDiscoveryCard *)v16->_card backgroundMedia];
  backgroundMediaExpanded = [(PKDiscoveryCard *)v16->_card backgroundMediaExpanded];
  backgroundMediaCropped = [(PKDiscoveryCard *)v16->_card backgroundMediaCropped];
  if (!_isMaskedDisplay)
  {
    v31 = backgroundMediaExpanded;
LABEL_15:
    if (v31)
    {
      v30 = v31;
    }

    else
    {
      v30 = backgroundMedia2;
    }

    goto LABEL_18;
  }

  v29 = 0xFFEE0u >> v28;
  if (v28 >= 0x14)
  {
    LOBYTE(v29) = *(MEMORY[0x1E695F060] + 8) > 812.0;
  }

  v30 = backgroundMedia2;
  if ((v29 & 1) == 0)
  {
    v31 = backgroundMediaCropped;
    goto LABEL_15;
  }

LABEL_18:
  objc_storeStrong(&v16->_largeCardMedia, v30);
  v32 = MEMORY[0x1E69DC888];
  backgroundColor = [(PKDiscoveryCard *)v16->_card backgroundColor];
  v85 = [v32 pkui_colorWithPKColor:backgroundColor];

  v34 = MEMORY[0x1E69DC888];
  backgroundColor2 = [(PKMiniDiscoveryCard *)v16->_miniCard backgroundColor];
  v84 = [v34 pkui_colorWithPKColor:backgroundColor2];

  if (v84)
  {
    v36 = _isLargeFormat;
  }

  else
  {
    v36 = 1;
  }

  if (v36)
  {
    v37 = v85;
  }

  else
  {
    v37 = v84;
  }

  objc_storeStrong(&v16->_backgroundColor, v37);
  layer = [(PKDiscoveryCardView *)v16 layer];
  [layer setCornerCurve:*MEMORY[0x1E69796E8]];
  [layer setMasksToBounds:1];
  v38 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v11, v12, v13, v14}];
  miniCardBackgroundColorView = v16->_miniCardBackgroundColorView;
  v16->_miniCardBackgroundColorView = v38;

  [(UIView *)v16->_miniCardBackgroundColorView setContentMode:2];
  [(UIView *)v16->_miniCardBackgroundColorView setBackgroundColor:v16->_backgroundColor];
  [(PKDiscoveryCardView *)v16 addSubview:v16->_miniCardBackgroundColorView];
  if (_isLargeFormat)
  {
    title = [(PKDiscoveryCard *)v16->_card title];
    heading = [(PKDiscoveryCard *)v16->_card heading];
    [(UIView *)v16->_miniCardBackgroundColorView setHidden:1];
  }

  else
  {
    title2 = [(PKMiniDiscoveryCard *)v16->_miniCard title];
    heading2 = [(PKMiniDiscoveryCard *)v16->_miniCard heading];
    if ([title2 length])
    {
      title3 = title2;
    }

    else
    {
      title3 = [(PKDiscoveryCard *)v16->_card title];
    }

    title = title3;
    if ([heading2 length])
    {
      heading3 = heading2;
    }

    else
    {
      heading3 = [(PKDiscoveryCard *)v16->_card heading];
    }

    heading = heading3;
  }

  v46 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v11, v12, v13, v14}];
  backgroundImageView = v16->_backgroundImageView;
  v16->_backgroundImageView = v46;

  [(UIImageView *)v16->_backgroundImageView setContentMode:2];
  [(UIImageView *)v16->_backgroundImageView setBackgroundColor:v16->_backgroundColor];
  [(PKDiscoveryCardView *)v16 addSubview:v16->_backgroundImageView];
  v48 = !_isMaskedDisplay;
  if (v48 | _isLargeFormat)
  {
    v49 = +[PKDiscoveryCardView usesMediumCards];
    if (!heading)
    {
      goto LABEL_39;
    }

LABEL_37:
    if ([heading length] != 0 && !v49)
    {
      v50 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v11, v12, v13, v14}];
      headingLabel = v16->_headingLabel;
      v16->_headingLabel = v50;

      [(UILabel *)v16->_headingLabel setText:heading];
      v52 = v16->_headingLabel;
      _headingLabelFont = [(PKDiscoveryCardView *)v16 _headingLabelFont];
      [(UILabel *)v52 setFont:_headingLabelFont];

      v54 = v16->_headingLabel;
      _headingLabelTextColor = [(PKDiscoveryCardView *)v16 _headingLabelTextColor];
      [(UILabel *)v54 setTextColor:_headingLabelTextColor];

      [(UILabel *)v16->_headingLabel setNumberOfLines:1];
      [(UILabel *)v16->_headingLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9840]];
      [(PKDiscoveryCardView *)v16 addSubview:v16->_headingLabel];
    }

    goto LABEL_39;
  }

  v49 = 0;
  if (heading)
  {
    goto LABEL_37;
  }

LABEL_39:
  if (title != 0 && !v49)
  {
    v56 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v11, v12, v13, v14}];
    titleLabel = v16->_titleLabel;
    v16->_titleLabel = v56;

    [(UILabel *)v16->_titleLabel setText:title];
    v58 = v16->_titleLabel;
    _titleLabelFont = [(PKDiscoveryCardView *)v16 _titleLabelFont];
    [(UILabel *)v58 setFont:_titleLabelFont];

    v60 = v16->_titleLabel;
    _titleLabelTextColor = [(PKDiscoveryCardView *)v16 _titleLabelTextColor];
    [(UILabel *)v60 setTextColor:_titleLabelTextColor];

    [(UILabel *)v16->_titleLabel setNumberOfLines:[(PKDiscoveryCardView *)v16 _titleLabelNumberOfLines]];
    [(UILabel *)v16->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [(PKDiscoveryCardView *)v16 addSubview:v16->_titleLabel];
  }

  callToAction = [(PKDiscoveryCard *)v16->_card callToAction];

  if (callToAction)
  {
    v63 = [PKDiscoveryCallToActionFooterView alloc];
    callToAction2 = [(PKDiscoveryCard *)v16->_card callToAction];
    itemIdentifier = [(PKDiscoveryArticleLayout *)v16->_articleLayout itemIdentifier];
    v66 = [(PKDiscoveryCallToActionFooterView *)v63 initWithCallToAction:callToAction2 displayType:v48 itemIdentifier:itemIdentifier];
    ctaFooterView = v16->_ctaFooterView;
    v16->_ctaFooterView = v66;

    [(PKDiscoveryCardView *)v16 addSubview:v16->_ctaFooterView];
    if ((_isLargeFormat & 1) == 0)
    {
      [(PKDiscoveryCallToActionFooterView *)v16->_ctaFooterView setHidden:1];
    }
  }

  objc_initWeak(&location, v16);
  v68 = MEMORY[0x1E69DC628];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __110__PKDiscoveryCardView_initWithArticleLayout_cardTemplateInformation_callToActionTappedOverride_isWelcomeCard___block_invoke;
  v92[3] = &unk_1E8010A60;
  objc_copyWeak(&v93, &location);
  v69 = [v68 actionWithHandler:v92];
  if ([(PKDiscoveryCardView *)v16 _foregroundContentMode]== 1)
  {
    v70 = 2;
  }

  else
  {
    v70 = 1;
  }

  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v72 = PKDiscoveryCardViewDismissImage();
  [plainButtonConfiguration setImage:v72];

  v73 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:v69];
  dismissButton = v16->_dismissButton;
  v16->_dismissButton = v73;

  traitOverrides = [(UIButton *)v16->_dismissButton traitOverrides];
  [traitOverrides setUserInterfaceStyle:v70];

  [(UIButton *)v16->_dismissButton setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
  [(PKDiscoveryCardView *)v16 addSubview:v16->_dismissButton];
  v76 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v16 action:sel_tapGestureRecognized_];
  tapRecognizer = v16->_tapRecognizer;
  v16->_tapRecognizer = v76;

  [(PKDiscoveryCardView *)v16 addGestureRecognizer:v16->_tapRecognizer];
  [(PKDiscoveryCardView *)v16 _updateForDisplayType];
  v96[0] = objc_opt_class();
  v96[1] = objc_opt_class();
  v96[2] = objc_opt_class();
  v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:3];
  v79 = [(PKDiscoveryCardView *)v16 registerForTraitChanges:v78 withHandler:&__block_literal_global_201];

  [(PKDiscoveryCardView *)v16 setAccessibilityIgnoresInvertColors:1];
  objc_destroyWeak(&v93);
  objc_destroyWeak(&location);

LABEL_48:
  return v16;
}

void __110__PKDiscoveryCardView_initWithArticleLayout_cardTemplateInformation_callToActionTappedOverride_isWelcomeCard___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissButtonPressed];
}

void __110__PKDiscoveryCardView_initWithArticleLayout_cardTemplateInformation_callToActionTappedOverride_isWelcomeCard___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2[58];
  v6 = a2;
  v3 = [v6 _headingLabelFont];
  [v2 setFont:v3];

  [v6[59] setNumberOfLines:{objc_msgSend(v6, "_titleLabelNumberOfLines")}];
  v4 = v6[59];
  v5 = [v6 _titleLabelFont];
  [v4 setFont:v5];

  [v6 setNeedsLayout];
}

- (void)setDisplayType:(int64_t)type
{
  if ([(PKDiscoveryCardViewTemplateInformation *)self->_cardTemplateInformation displayType]!= type)
  {
    v5 = [[PKDiscoveryCardViewTemplateInformation alloc] initWithCardSize:[(PKDiscoveryCardViewTemplateInformation *)self->_cardTemplateInformation cardSize] displayType:type];
    cardTemplateInformation = self->_cardTemplateInformation;
    self->_cardTemplateInformation = v5;

    [(PKDiscoveryCardView *)self _updateForDisplayType];

    [(PKDiscoveryCardView *)self setNeedsLayout];
  }
}

- (void)setCardSize:(int64_t)size
{
  if ([(PKDiscoveryCardViewTemplateInformation *)self->_cardTemplateInformation cardSize]!= size)
  {
    v5 = [[PKDiscoveryCardViewTemplateInformation alloc] initWithCardSize:size displayType:[(PKDiscoveryCardViewTemplateInformation *)self->_cardTemplateInformation displayType]];
    cardTemplateInformation = self->_cardTemplateInformation;
    self->_cardTemplateInformation = v5;

    [(PKDiscoveryCardView *)self _updateForDisplayType];

    [(PKDiscoveryCardView *)self setNeedsLayout];
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  [(PKDiscoveryCallToActionFooterView *)self->_ctaFooterView setDelegate:delegateCopy];
}

- (void)setCallToActionTappedOverride:(id)override
{
  overrideCopy = override;
  v4 = _Block_copy(overrideCopy);
  callToActionTappedOverride = self->_callToActionTappedOverride;
  self->_callToActionTappedOverride = v4;

  ctaFooterView = self->_ctaFooterView;
  if (ctaFooterView)
  {
    [(PKDiscoveryCallToActionFooterView *)ctaFooterView setCallToActionTappedOverride:overrideCopy];
  }
}

- (void)layoutSubviews
{
  v297[1] = *MEMORY[0x1E69E9840];
  [(PKDiscoveryCardView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKDiscoveryCardView *)self _currentContentInsets];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v273 = v11;
  v274 = v15;
  v16 = v8 - (v11 + v15);
  v285 = v10 - (v13 + v17);
  _isLargeFormat = [(PKDiscoveryCardView *)self _isLargeFormat];
  _isMaskedDisplay = [(PKDiscoveryCardView *)self _isMaskedDisplay];
  isWritingDirectionRTL = [(PKDiscoveryArticleLayout *)self->_articleLayout isWritingDirectionRTL];
  if (isWritingDirectionRTL)
  {
    _shouldReverseLayoutDirection = isWritingDirectionRTL == 1;
  }

  else
  {
    _shouldReverseLayoutDirection = [(PKDiscoveryCardView *)self _shouldReverseLayoutDirection];
  }

  v279 = _shouldReverseLayoutDirection;
  if (_shouldReverseLayoutDirection)
  {
    v22 = 0;
  }

  else
  {
    v22 = 2;
  }

  v281 = v22;
  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = v12;
  remainder.origin.y = v14;
  remainder.size.width = v16;
  remainder.size.height = v285;
  if (!self->_headingLabel && self->_miniCardTemplate == 2 && !_isLargeFormat)
  {
    v23 = objc_alloc(MEMORY[0x1E69DCC10]);
    v24 = [v23 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    headingLabel = self->_headingLabel;
    self->_headingLabel = v24;

    v26 = self->_headingLabel;
    _headingLabelFont = [(PKDiscoveryCardView *)self _headingLabelFont];
    [(UILabel *)v26 setFont:_headingLabelFont];

    v28 = self->_headingLabel;
    text = [(UILabel *)self->_titleLabel text];
    [(UILabel *)v28 setText:text];

    v30 = self->_headingLabel;
    _headingLabelTextColor = [(PKDiscoveryCardView *)self _headingLabelTextColor];
    [(UILabel *)v30 setTextColor:_headingLabelTextColor];

    [(UILabel *)self->_headingLabel setNumberOfLines:1];
    [(PKDiscoveryCardView *)self addSubview:self->_headingLabel];
  }

  v275 = v16;
  v276 = v14;
  v277 = v12;
  text2 = [(UILabel *)self->_titleLabel text];
  text3 = [(UILabel *)self->_headingLabel text];
  v34 = [text2 isEqual:text3];

  [(UILabel *)self->_titleLabel setHidden:v34];
  v35 = _isLargeFormat || !_isMaskedDisplay;
  ctaFooterView = self->_ctaFooterView;
  v282 = v10;
  v283 = v8;
  *rect = v4;
  v284 = v6;
  if (v35)
  {
    [(PKDiscoveryCallToActionFooterView *)ctaFooterView setHidden:0];
    [(UIView *)self->_miniCardBackgroundColorView setHidden:1];
    +[PKDiscoveryCardView expandedWidth];
    v38 = (v37 - v8) * 0.5;
    +[PKDiscoveryCardView expandedHeight];
    v40 = (v39 - v10) * 0.5;
    v41.n128_f64[0] = v4 - v38;
    PKFloatRoundToPixel(v41, v42);
    v43 = v8;
    v45 = v44;
    v46.n128_f64[0] = v6 - v40;
    PKFloatRoundToPixel(v46, v47);
    v48 = v4;
    v50 = v49;
    +[PKDiscoveryCardView expandedWidth];
    v52 = v51;
    +[PKDiscoveryCardView expandedHeight];
    v54 = v53;
    goto LABEL_19;
  }

  [(PKDiscoveryCallToActionFooterView *)ctaFooterView setHidden:1];
  [(UIView *)self->_miniCardBackgroundColorView setHidden:0];
  [(PKDiscoveryCardView *)self _miniCardImageSize];
  v55 = v6;
  v57 = v56;
  v59 = v58;
  +[PKDiscoveryCardView compressedWidth];
  v61.n128_u64[0] = 0.5;
  v62.n128_f64[0] = v4 - (v60 - v8) * 0.5;
  PKFloatRoundToPixel(v62, v61);
  v271 = v63;
  v64.n128_f64[0] = v55 - (120.0 - v10) * 0.5;
  PKFloatRoundToPixel(v64, v65);
  v67 = v66;
  miniCardTemplate = self->_miniCardTemplate;
  if (miniCardTemplate == 2 || miniCardTemplate == 1)
  {
    v73 = PKContentAlignmentMake();
    v75.n128_u64[0] = v57;
    v76.n128_u64[0] = v59;
    v77.n128_f64[0] = v4;
    v78.n128_f64[0] = v284;
    v79.n128_f64[0] = v8;
    v80.n128_f64[0] = v10;
    goto LABEL_17;
  }

  v54 = 0.0;
  v52 = 0.0;
  v50 = 0.0;
  v45 = 0.0;
  if (!miniCardTemplate)
  {
    *&v298.origin.x = rect[0];
    v298.size.width = v283;
    v298.origin.y = v284;
    v298.size.height = v10;
    v299 = CGRectInset(v298, 16.0, 0.0);
    x = v299.origin.x;
    y = v299.origin.y;
    width = v299.size.width;
    height = v299.size.height;
    v73 = PKContentAlignmentMake();
    v75.n128_u64[0] = v57;
    v76.n128_u64[0] = v59;
    v77.n128_f64[0] = x;
    v78.n128_f64[0] = y;
    v79.n128_f64[0] = width;
    v80.n128_f64[0] = height;
    v10 = v282;
LABEL_17:
    PKSizeAlignedInRect(v73, v75, v76, v77, v78, v79, v80, v74);
    v45 = v81;
    v50 = v82;
    v52 = v83;
    v54 = v84;
  }

  miniCardBackgroundColorView = self->_miniCardBackgroundColorView;
  +[PKDiscoveryCardView compressedWidth];
  [(UIView *)miniCardBackgroundColorView setFrame:v271, v67, v86, 120.0];
  [(UIView *)self->_miniCardBackgroundColorView setClipsToBounds:1];
  v43 = v283;
  v6 = v284;
  v48 = *rect;
LABEL_19:
  v272 = v52;
  [(UIImageView *)self->_backgroundImageView setFrame:v45, v50, v52, v54];
  [(UIImageView *)self->_backgroundImageView setClipsToBounds:1];
  [(UIButton *)self->_dismissButton sizeToFit];
  v300.origin.x = v48;
  v300.origin.y = v6;
  v300.size.width = v43;
  v300.size.height = v10;
  v301 = CGRectInset(v300, 16.0, 16.0);
  v87 = v301.origin.x;
  v88 = v301.origin.y;
  v89.n128_u64[0] = *&v301.size.width;
  v90 = v301.size.height;
  v301.origin.x = 30.0;
  v301.origin.y = 30.0;
  v301.size.width = v87;
  v301.size.height = v88;
  v91.n128_u64[0] = v89.n128_u64[0];
  v92.n128_f64[0] = v90;
  PKSizeAlignedInRect(v281, v301.origin, *&v301.origin.y, v301.size, *&v301.size.height, v91, v92, v89);
  [(UIButton *)self->_dismissButton setFrame:?];
  +[PKDiscoveryCardView compressedWidth];
  v93.n128_u64[0] = 3.0;
  v95.n128_f64[0] = v94 / 3.0 + v94 / 3.0;
  PKFloatRoundToPixel(v95, v93);
  if (v35)
  {
    +[PKDiscoveryCardView compressedWidth];
  }

  v97 = v96 - v273 - v274;
  v98 = v97 + -42.0;
  v99 = self->_headingLabel;
  if (v99)
  {
    [(UILabel *)v99 sizeThatFits:v97 + -42.0, v10];
    v102 = v101;
  }

  else
  {
    v100 = *MEMORY[0x1E695F060];
    v102 = *(MEMORY[0x1E695F060] + 8);
  }

  if (v100 <= v98)
  {
    *&v103 = v100;
  }

  else
  {
    *&v103 = v98;
  }

  [(PKDiscoveryCardView *)self _yOffsetToHeadingLabel];
  v105 = v104;
  v302.origin.x = v277;
  v302.origin.y = v276;
  v302.size.width = v275;
  v302.size.height = v285;
  CGRectDivide(v302, &slice, &remainder, v105, CGRectMinYEdge);
  CGRectDivide(remainder, &slice, &remainder, *&v102, CGRectMinYEdge);
  v106 = PKContentAlignmentMake();
  v107.n128_u64[0] = *&slice.origin.x;
  v108.n128_u64[0] = *&slice.origin.y;
  v109.n128_u64[0] = *&slice.size.width;
  v110.n128_u64[0] = *&slice.size.height;
  v111.n128_u64[0] = v103;
  v112.n128_u64[0] = v102;
  PKSizeAlignedInRect(v106, v111, v112, v107, v108, v109, v110, v113);
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel sizeThatFits:v98, remainder.size.height];
    v125 = v124;
  }

  else
  {
    v123 = *MEMORY[0x1E695F060];
    v125 = *(MEMORY[0x1E695F060] + 8);
  }

  if (v123 <= v98)
  {
    v98 = v123;
  }

  if (self->_headingLabel)
  {
    CGRectDivide(remainder, &slice, &remainder, 4.0, CGRectMinYEdge);
  }

  CGRectDivide(remainder, &slice, &remainder, v125, CGRectMinYEdge);
  v126 = PKContentAlignmentMake();
  v127.n128_u64[0] = *&slice.origin.x;
  v128.n128_u64[0] = *&slice.origin.y;
  v129.n128_u64[0] = *&slice.size.width;
  v130.n128_u64[0] = *&slice.size.height;
  v131.n128_f64[0] = v98;
  v132.n128_f64[0] = v125;
  PKSizeAlignedInRect(v126, v131, v132, v127, v128, v129, v130, v133);
  v135 = v134;
  v286 = v136;
  v278 = v137;
  v139 = v138;
  text4 = [(UILabel *)self->_titleLabel text];
  v141 = [text4 length];

  if (v279)
  {
    v142 = 2;
  }

  else
  {
    v142 = 0;
  }

  [(UILabel *)self->_headingLabel setTextAlignment:v142];
  if (!v35)
  {
    v145 = self->_miniCardTemplate;
    if (v145 == 2)
    {
      [(UILabel *)self->_titleLabel setHidden:1];
      [(UILabel *)self->_headingLabel setTextAlignment:1];
      [(PKDiscoveryCardView *)self _miniCardImageSize];
      v192 = 120.0 - v191 - *&v102;
      v193.n128_u64[0] = 0.5;
      v194.n128_f64[0] = v192 * 0.5;
      PKFloatRoundToPixel(v194, v193);
      v196 = v195;
      *&v306.origin.x = rect[0];
      v306.size.width = v283;
      v306.origin.y = v284;
      v306.size.height = v282;
      v307 = CGRectInset(v306, 0.0, v196);
      v197 = v307.origin.x;
      v198 = v135;
      v199 = v307.origin.y;
      v200 = v307.size.width;
      v201 = v307.size.height;
      v183 = PKContentAlignmentMake();
      v185.n128_u64[0] = v103;
      v186.n128_u64[0] = v102;
      v187.n128_f64[0] = v197;
      v188.n128_f64[0] = v199;
      v135 = v198;
      v189.n128_f64[0] = v200;
      v190.n128_f64[0] = v201;
    }

    else
    {
      if (v145 != 1)
      {
        if (v145)
        {
          goto LABEL_56;
        }

        v280 = v135;
        v144.n128_u64[0] = -10.0;
        v143.n128_f64[0] = v283 - v272 + -32.0 + -30.0 + -12.0 + -10.0;
        PKFloatRoundToPixel(v143, v144);
        v147 = v146;
        if (v141)
        {
          v148 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
          [v148 setMaximumNumberOfLines:3];
          text5 = [(UILabel *)self->_titleLabel text];
          v287 = *MEMORY[0x1E69DB648];
          v296 = *MEMORY[0x1E69DB648];
          _titleLabelFont = [(PKDiscoveryCardView *)self _titleLabelFont];
          v297[0] = _titleLabelFont;
          v151 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v297 forKeys:&v296 count:1];
          [text5 boundingRectWithSize:1 options:v151 attributes:v148 context:{*&v147, 3.40282347e38}];
          v153 = v152;

          v154 = v284;
          if (v153 <= 62.0 - *&v102)
          {
            v222 = rect[0];
            v224 = v282;
            v223 = v283;
            v310 = CGRectInset(*(&v154 - 1), 56.0, 29.0);
            v158 = v310.origin.x;
            v159 = v310.origin.y;
            v160 = v310.size.width;
            v161 = v310.size.height;
            [v148 setMaximumNumberOfLines:2];
            text6 = [(UILabel *)self->_titleLabel text];
            v294 = v287;
            _titleLabelFont2 = [(PKDiscoveryCardView *)self _titleLabelFont];
            v295 = _titleLabelFont2;
            v227 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v295 forKeys:&v294 count:1];
            [text6 boundingRectWithSize:1 options:v227 attributes:v148 context:{*&v147, 3.40282347e38}];
            v153 = v228;

            [v148 setMaximumNumberOfLines:1];
            text7 = [(UILabel *)self->_titleLabel text];
            v292 = v287;
            _titleLabelFont3 = [(PKDiscoveryCardView *)self _titleLabelFont];
            v293 = _titleLabelFont3;
            v231 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v293 forKeys:&v292 count:1];
            [text7 boundingRectWithSize:1 options:v231 attributes:v148 context:{*&v147, 3.40282347e38}];
            v233 = v232;

            v162 = self->_titleLabel;
            if (v153 <= v233)
            {
              [(UILabel *)v162 setNumberOfLines:1];
              v153 = v233;
              goto LABEL_55;
            }

            v163 = 2;
          }

          else
          {
            v155 = rect[0];
            v157 = v282;
            v156 = v283;
            v303 = CGRectInset(*(&v154 - 1), 56.0, 19.0);
            v158 = v303.origin.x;
            v159 = v303.origin.y;
            v160 = v303.size.width;
            v161 = v303.size.height;
            v162 = self->_titleLabel;
            v163 = 3;
          }

          [(UILabel *)v162 setNumberOfLines:v163];
LABEL_55:
          memset(&v289, 0, sizeof(v289));
          memset(&rect[1], 0, 32);
          v311.origin.x = v158;
          v311.origin.y = v159;
          v311.size.width = v160;
          v311.size.height = v161;
          CGRectDivide(v311, &rect[1], &v289, v153 + (v161 - v153 - *&v102) * 0.5, CGRectMaxYEdge);
          v234 = PKContentAlignmentMake();
          v235.n128_u64[0] = *&v289.origin.x;
          v236.n128_u64[0] = *&v289.origin.y;
          v237.n128_u64[0] = *&v289.size.width;
          v238.n128_u64[0] = *&v289.size.height;
          v239.n128_u64[0] = v147;
          v240.n128_u64[0] = v102;
          PKSizeAlignedInRect(v234, v239, v240, v235, v236, v237, v238, v241);
          v115 = v242;
          v117 = v243;
          v119 = v244;
          v121 = v245;
          v246 = PKContentAlignmentMake();
          v247.n128_u64[0] = rect[1];
          v248.n128_u64[0] = rect[2];
          v249.n128_u64[0] = rect[3];
          v250.n128_u64[0] = rect[4];
          v251.n128_u64[0] = v147;
          v252.n128_f64[0] = v153;
          PKSizeAlignedInRect(v246, v251, v252, v247, v248, v249, v250, v253);
          v135 = v254;
          v286 = v255;
          v278 = v256;
          v139 = v257;

          goto LABEL_56;
        }

        *&v308.origin.x = rect[0];
        v308.origin.y = v284;
        v308.size.width = v283;
        v308.size.height = v282;
        v309 = CGRectInset(v308, 56.0, 29.0);
        v214 = v309.origin.x;
        v215 = v309.origin.y;
        v216 = v309.size.width;
        v217 = v309.size.height;
        v206 = PKContentAlignmentMake();
        v208.n128_u64[0] = v147;
        v209.n128_u64[0] = v102;
        v210.n128_f64[0] = v214;
        v211.n128_f64[0] = v215;
        v212.n128_f64[0] = v216;
        v213.n128_f64[0] = v217;
LABEL_50:
        PKSizeAlignedInRect(v206, v208, v209, v210, v211, v212, v213, v207);
        v115 = v218;
        v117 = v219;
        v119 = v220;
        v121 = v221;
        v135 = v280;
        goto LABEL_56;
      }

      v280 = v135;
      v144.n128_u64[0] = -12.0;
      v143.n128_f64[0] = v283 - v272 + -16.0 + -12.0;
      PKFloatRoundToPixel(v143, v144);
      v165 = v164;
      *&v304.origin.x = rect[0];
      v304.origin.y = v284;
      v304.size.width = v283;
      v304.size.height = v282;
      v305 = CGRectInset(v304, 16.0, 29.0);
      v166 = v305.origin.x;
      v167 = v305.origin.y;
      v168 = v305.size.width;
      v169 = v305.size.height;
      if (!v141)
      {
        v206 = PKContentAlignmentMake();
        v208.n128_u64[0] = v165;
        v209.n128_u64[0] = v102;
        v210.n128_f64[0] = v166;
        v211.n128_f64[0] = v167;
        v212.n128_f64[0] = v168;
        v213.n128_f64[0] = v169;
        goto LABEL_50;
      }

      v170 = PKContentAlignmentMake();
      v171.n128_u64[0] = v165;
      v172.n128_f64[0] = 62.0 - *&v102;
      v173.n128_f64[0] = v166;
      v174.n128_f64[0] = v167;
      v175.n128_f64[0] = v168;
      v176.n128_f64[0] = v169;
      PKSizeAlignedInRect(v170, v171, v172, v173, v174, v175, v176, v177);
      v179 = v178;
      v286 = v180;
      v278 = v181;
      v139 = v182;
      v183 = PKContentAlignmentMake();
      v185.n128_u64[0] = v165;
      v186.n128_u64[0] = v102;
      v187.n128_f64[0] = v166;
      v188.n128_f64[0] = v167;
      v189.n128_f64[0] = v168;
      v190.n128_f64[0] = v169;
      v135 = v179;
    }

    PKSizeAlignedInRect(v183, v185, v186, v187, v188, v189, v190, v184);
    v115 = v202;
    v117 = v203;
    v119 = v204;
    v121 = v205;
  }

LABEL_56:
  [(UILabel *)self->_headingLabel setFrame:v115, v117, v119, v121];
  if (v141)
  {
    [(UILabel *)self->_titleLabel setTextAlignment:v142];
    [(UILabel *)self->_titleLabel setFrame:v135, v286, v278, v139];
  }

  callToAction = [(PKDiscoveryCard *)self->_card callToAction];

  if (callToAction)
  {
    [(PKDiscoveryCallToActionFooterView *)self->_ctaFooterView sizeThatFits:v283, v282];
    v260 = v259;
    v262 = v261;
    v263 = PKContentAlignmentMake();
    v264.n128_u64[0] = v260;
    v265.n128_u64[0] = v262;
    v266.n128_u64[0] = rect[0];
    v267.n128_f64[0] = v284;
    v268.n128_f64[0] = v283;
    v269.n128_f64[0] = v282;
    PKSizeAlignedInRect(v263, v264, v265, v266, v267, v268, v269, v270);
    [(PKDiscoveryCallToActionFooterView *)self->_ctaFooterView setFrame:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if ([(PKDiscoveryCardView *)self _isMaskedDisplay:fits.width])
  {
    if ([(PKDiscoveryCardView *)self _isLargeFormat])
    {

      +[PKDiscoveryCardView compressedSize];
    }

    else
    {

      +[PKDiscoveryCardView miniCompressedSize];
    }
  }

  else
  {

    +[PKDiscoveryCardView expandedSize];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setDismissAction:(id)action
{
  if (self->_dismissAction != action)
  {
    v4 = _Block_copy(action);
    dismissAction = self->_dismissAction;
    self->_dismissAction = v4;

    [(PKDiscoveryCardView *)self _updateForDisplayType];

    [(PKDiscoveryCardView *)self setNeedsLayout];
  }
}

- (id)_headingLabelFont
{
  if ([(PKDiscoveryCardView *)self _isLargeFormat]|| ![(PKDiscoveryCardView *)self _isMaskedDisplay])
  {
    v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC58], *MEMORY[0x1E69DB978]);
  }

  else
  {
    v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC40], 2, 0);
  }

  return v3;
}

- (id)_titleLabelFont
{
  if ([(PKDiscoveryCardView *)self _isLargeFormat]|| ![(PKDiscoveryCardView *)self _isMaskedDisplay])
  {
    v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC58], *MEMORY[0x1E69DB958]);
  }

  else
  {
    v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC40], 0x8000, 0);
  }

  return v3;
}

- (unint64_t)_titleLabelNumberOfLines
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (![(PKDiscoveryCardView *)self _isMaskedDisplay])
  {
    return 0;
  }

  if (![(PKDiscoveryCardView *)self _isLargeFormat])
  {
    return 3;
  }

  traitCollection = [(PKDiscoveryCardView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (self->_isWelcomeCard && !UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v17 = 3;
  }

  else
  {
    _titleLabelFont = [(PKDiscoveryCardView *)self _titleLabelFont];
    text = [(UILabel *)self->_titleLabel text];
    [(PKDiscoveryCardView *)self _currentContentInsets];
    v8 = v7;
    v10 = v9;
    +[PKDiscoveryCardView compressedWidth];
    v12 = v11 - v8 - v10 + -30.0 + 12.0;
    v13 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
    [v13 setMaximumNumberOfLines:2];
    titleLabel = self->_titleLabel;
    if (titleLabel)
    {
      [(UILabel *)titleLabel sizeThatFits:v12, 1.79769313e308];
      v16 = v15;
    }

    else
    {
      v16 = *(MEMORY[0x1E695F060] + 8);
    }

    v18 = *MEMORY[0x1E69DB648];
    v28 = *MEMORY[0x1E69DB648];
    v29[0] = _titleLabelFont;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    [text boundingRectWithSize:1 options:v19 attributes:v13 context:{v12, 1.79769313e308}];
    v21 = v20;

    if (v21 >= v16 || (v17 = 1, [v13 setMaximumNumberOfLines:1], v26 = v18, v27 = _titleLabelFont, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v27, &v26, 1), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(text, "boundingRectWithSize:options:attributes:context:", 1, v22, v13, v12, 1.79769313e308), v24 = v23, v22, v21 > v24))
    {
      v17 = 2;
    }
  }

  return v17;
}

- (void)_dismissButtonPressed
{
  [(UIButton *)self->_dismissButton setEnabled:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v5 = objc_opt_respondsToSelector();
    v4 = v7;
    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 discoveryCardViewRemoveTapped:self];

      v4 = v7;
    }
  }
}

- (void)tapGestureRecognized:(id)recognized
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v6 = objc_opt_respondsToSelector();
    v5 = v7;
    if (v6)
    {
      [v7 discoveryCardViewTapped:self];
      v5 = v7;
    }
  }
}

- (UIEdgeInsets)_currentContentInsets
{
  if ([(PKDiscoveryCardView *)self _isMaskedDisplay])
  {
    v3 = 20.0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 20.0;
  }

  else
  {
    superview = [(PKDiscoveryCardView *)self superview];
    if (superview)
    {
      superview2 = [(PKDiscoveryCardView *)self superview];
      [superview2 safeAreaInsets];
      top = v9;
      left = v11;
      bottom = v13;
      right = v15;
    }

    else
    {
      [(PKDiscoveryCardView *)self safeAreaInsets];
      top = v17;
      left = v18;
      bottom = v19;
      right = v20;
    }

    if (self->_hasSafeAreaInsetOverride)
    {
      top = self->_safeAreaOverrideInsets.top;
      left = self->_safeAreaOverrideInsets.left;
      bottom = self->_safeAreaOverrideInsets.bottom;
      right = self->_safeAreaOverrideInsets.right;
    }

    v4 = fmax(top, 45.0);
    v3 = fmax(left, 20.0);
    v5 = fmax(bottom, 0.0);
    v6 = fmax(right, 20.0);
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v3;
  result.top = v4;
  return result;
}

- (double)_yOffsetToHeadingLabel
{
  _isMaskedDisplay = [(PKDiscoveryCardView *)self _isMaskedDisplay];
  result = 0.0;
  if (_isMaskedDisplay)
  {
    return 20.0;
  }

  return result;
}

- (void)loadAndUploadImageData
{
  _isMaskedDisplay = [(PKDiscoveryCardView *)self _isMaskedDisplay];
  if ([(PKDiscoveryCardView *)self _isLargeFormat]|| !_isMaskedDisplay)
  {
    v5 = self->_largeCardMedia;
    v7 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    p_miniCardMedia = &self->_miniCardMedia;
    if (![(PKDiscoveryMedia *)self->_miniCardMedia type])
    {
      p_miniCardMedia = &self->_largeCardMedia;
    }

    v5 = *p_miniCardMedia;
    [(PKDiscoveryCardView *)self _miniCardImageSize];
    v7 = v6;
    v9 = v8;
  }

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__PKDiscoveryCardView_loadAndUploadImageData__block_invoke;
  v10[3] = &unk_1E80203C0;
  objc_copyWeak(&v11, &location);
  PKFetchImageForDiscoveryMedia(v5, v7, v9, 0, v10);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __45__PKDiscoveryCardView_loadAndUploadImageData__block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PKDiscoveryCardView_loadAndUploadImageData__block_invoke_2;
  block[3] = &unk_1E8018A78;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a3;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __45__PKDiscoveryCardView_loadAndUploadImageData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 48) == 1)
    {
      [WeakRetained[55] setImage:*(a1 + 32)];
    }

    else
    {
      v4 = MEMORY[0x1E69DD250];
      v5 = WeakRetained[55];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __45__PKDiscoveryCardView_loadAndUploadImageData__block_invoke_3;
      v6[3] = &unk_1E8010A10;
      v6[4] = WeakRetained;
      v7 = *(a1 + 32);
      [v4 transitionWithView:v5 duration:5242880 options:v6 animations:0 completion:0.300000012];
    }
  }
}

- (CGSize)_miniCardImageSize
{
  miniCardTemplate = self->_miniCardTemplate;
  if (miniCardTemplate == 2)
  {
    v4 = 343.0;
    v6 = 0x4053000000000000;
LABEL_10:
    v3 = *&v6;
    goto LABEL_11;
  }

  if (miniCardTemplate == 1)
  {
    +[PKDiscoveryCardView compressedWidth];
    if (v5 <= 335.0)
    {
      v4 = 132.0;
    }

    else
    {
      v4 = 152.0;
    }

    v6 = 0x405E000000000000;
    goto LABEL_10;
  }

  v3 = 0.0;
  v4 = 0.0;
  if (!miniCardTemplate)
  {
    v3 = 88.0;
    v4 = 88.0;
  }

LABEL_11:
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)_updateForDisplayType
{
  _isLargeFormat = [(PKDiscoveryCardView *)self _isLargeFormat];
  _isMaskedDisplay = [(PKDiscoveryCardView *)self _isMaskedDisplay];
  v5 = _isMaskedDisplay;
  if (_isLargeFormat)
  {
    titleLabel = self->_titleLabel;
    title = [(PKDiscoveryCard *)self->_card title];
    [(UILabel *)titleLabel setText:title];

    v8 = self->_titleLabel;
    _titleLabelFont = [(PKDiscoveryCardView *)self _titleLabelFont];
    [(UILabel *)v8 setFont:_titleLabelFont];

    v10 = self->_titleLabel;
    _titleLabelTextColor = [(PKDiscoveryCardView *)self _titleLabelTextColor];
    [(UILabel *)v10 setTextColor:_titleLabelTextColor];

    [(UILabel *)self->_titleLabel setNumberOfLines:[(PKDiscoveryCardView *)self _titleLabelNumberOfLines]];
    headingLabel = self->_headingLabel;
    heading = [(PKDiscoveryCard *)self->_card heading];
    [(UILabel *)headingLabel setText:heading];

    v14 = self->_headingLabel;
    _headingLabelFont = [(PKDiscoveryCardView *)self _headingLabelFont];
    [(UILabel *)v14 setFont:_headingLabelFont];

    v16 = self->_headingLabel;
    _headingLabelTextColor = [(PKDiscoveryCardView *)self _headingLabelTextColor];
    [(UILabel *)v16 setTextColor:_headingLabelTextColor];

    [(PKDiscoveryCallToActionFooterView *)self->_ctaFooterView setHidden:0];
    v18 = MEMORY[0x1E69DC888];
    backgroundColor = [(PKDiscoveryCard *)self->_card backgroundColor];
    v20 = [v18 pkui_colorWithPKColor:backgroundColor];
    p_backgroundColor = &self->_backgroundColor;
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = v20;
  }

  else
  {
    backgroundColor2 = &OBJC_IVAR___PKDiscoveryCardView__miniCard;
    v49 = _isMaskedDisplay;
    if (_isMaskedDisplay)
    {
      title2 = [(PKMiniDiscoveryCard *)self->_miniCard title];
      heading2 = [(PKMiniDiscoveryCard *)self->_miniCard heading];
      v26 = self->_titleLabel;
      if ([title2 length])
      {
        [(UILabel *)v26 setText:title2];
      }

      else
      {
        title3 = [(PKDiscoveryCard *)self->_card title];
        [(UILabel *)v26 setText:title3];

        backgroundColor2 = &OBJC_IVAR___PKDiscoveryCardView__miniCard;
      }

      v31 = self->_headingLabel;
      if ([heading2 length])
      {
        [(UILabel *)v31 setText:heading2];
      }

      else
      {
        heading3 = [(PKDiscoveryCard *)self->_card heading];
        [(UILabel *)v31 setText:heading3];

        backgroundColor2 = &OBJC_IVAR___PKDiscoveryCardView__miniCard;
      }
    }

    else
    {
      v27 = self->_titleLabel;
      title4 = [(PKDiscoveryCard *)self->_card title];
      [(UILabel *)v27 setText:title4];

      v29 = self->_headingLabel;
      title2 = [(PKDiscoveryCard *)self->_card heading];
      [(UILabel *)v29 setText:title2];
    }

    v33 = self->_titleLabel;
    _titleLabelFont2 = [(PKDiscoveryCardView *)self _titleLabelFont];
    [(UILabel *)v33 setFont:_titleLabelFont2];

    v35 = self->_titleLabel;
    _titleLabelTextColor2 = [(PKDiscoveryCardView *)self _titleLabelTextColor];
    [(UILabel *)v35 setTextColor:_titleLabelTextColor2];

    [(UILabel *)self->_titleLabel setNumberOfLines:[(PKDiscoveryCardView *)self _titleLabelNumberOfLines]];
    v37 = self->_headingLabel;
    _headingLabelFont2 = [(PKDiscoveryCardView *)self _headingLabelFont];
    [(UILabel *)v37 setFont:_headingLabelFont2];

    v39 = self->_headingLabel;
    _headingLabelTextColor2 = [(PKDiscoveryCardView *)self _headingLabelTextColor];
    [(UILabel *)v39 setTextColor:_headingLabelTextColor2];

    [(PKDiscoveryCallToActionFooterView *)self->_ctaFooterView setHidden:1];
    v41 = MEMORY[0x1E69DC888];
    backgroundColor = [(PKMiniDiscoveryCard *)self->_miniCard backgroundColor];
    backgroundColor = [v41 pkui_colorWithPKColor:backgroundColor];
    v42 = backgroundColor;
    if (!backgroundColor)
    {
      v43 = MEMORY[0x1E69DC888];
      backgroundColor2 = [(PKDiscoveryCard *)self->_card backgroundColor];
      v42 = [v43 pkui_colorWithPKColor:backgroundColor2];
    }

    p_backgroundColor = &self->_backgroundColor;
    objc_storeStrong(&self->_backgroundColor, v42);
    if (!backgroundColor)
    {
    }

    v5 = v49;
  }

  [(UIImageView *)self->_backgroundImageView setBackgroundColor:*p_backgroundColor];
  [(UIView *)self->_miniCardBackgroundColorView setBackgroundColor:*p_backgroundColor];
  [(UIView *)self->_miniCardBackgroundColorView setHidden:_isLargeFormat];
  [(PKDiscoveryCardView *)self loadAndUploadImageData];
  [(PKDiscoveryCardView *)self setNeedsLayout];
  ctaFooterView = self->_ctaFooterView;
  if (v5)
  {
    [(PKDiscoveryCallToActionFooterView *)ctaFooterView setDisplayType:0];
    if (_UISolariumFeatureFlagEnabled())
    {
      [(UIView *)self pkui_setMaskType:3];
      if (!_isLargeFormat && !self->_miniCardTemplate)
      {
        [(UIImageView *)self->_backgroundImageView pkui_setMaskType:3];
      }
    }

    else
    {
      [(PKDiscoveryCardView *)self _setContinuousCornerRadius:14.0];
      if (!_isLargeFormat && !self->_miniCardTemplate)
      {
        [(UIImageView *)self->_backgroundImageView _setContinuousCornerRadius:14.0];
      }
    }

    dismissButton = self->_dismissButton;
    v46 = self->_dismissAction == 0;
  }

  else
  {
    [(PKDiscoveryCallToActionFooterView *)ctaFooterView setDisplayType:1];
    [(UIView *)self pkui_setMaskType:0];
    [(UIImageView *)self->_backgroundImageView pkui_setMaskType:0];
    [(PKDiscoveryCardView *)self setBackgroundColor:self->_backgroundColor];
    dismissButton = self->_dismissButton;
    v46 = 1;
  }

  [(UIButton *)dismissButton setHidden:v46];
  v47 = self->_titleLabel;
  _titleLabelNumberOfLines = [(PKDiscoveryCardView *)self _titleLabelNumberOfLines];

  [(UILabel *)v47 setNumberOfLines:_titleLabelNumberOfLines];
}

- (int64_t)_foregroundContentMode
{
  if ([(PKDiscoveryCardView *)self _isLargeFormat]|| (result = [(PKMiniDiscoveryCard *)self->_miniCard foregroundContentMode]) == 0)
  {
    card = self->_card;

    return [(PKDiscoveryCard *)card foregroundContentMode];
  }

  return result;
}

- (id)_dismissButtonColorWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  userInterfaceStyle = [collectionCopy userInterfaceStyle];
  if (!userInterfaceStyle || userInterfaceStyle == 2)
  {
    systemDarkGrayColor = [MEMORY[0x1E69DC888] systemDarkGrayColor];
    goto LABEL_6;
  }

  if (userInterfaceStyle == 1)
  {
    systemDarkGrayColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
LABEL_6:
    v7 = systemDarkGrayColor;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:
  _foregroundContentMode = [(PKDiscoveryCardView *)self _foregroundContentMode];
  if (_foregroundContentMode == 3)
  {
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    if (_foregroundContentMode != 1)
    {
      goto LABEL_17;
    }

    userInterfaceStyle2 = [collectionCopy userInterfaceStyle];
    if (!userInterfaceStyle2 || userInterfaceStyle2 == 2)
    {
      systemGrayColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    }

    else
    {
      if (userInterfaceStyle2 != 1)
      {
        goto LABEL_17;
      }

      systemGrayColor = [MEMORY[0x1E69DC888] systemLightGrayColor];
    }
  }

  v11 = systemGrayColor;

  v7 = v11;
LABEL_17:

  return v7;
}

- (id)_titleLabelTextColor
{
  systemBlackColor = [MEMORY[0x1E69DC888] systemBlackColor];
  _foregroundContentMode = [(PKDiscoveryCardView *)self _foregroundContentMode];
  if (_foregroundContentMode == 3)
  {
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    if (_foregroundContentMode != 1)
    {
      goto LABEL_6;
    }

    systemGrayColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  v6 = systemGrayColor;

  systemBlackColor = v6;
LABEL_6:

  return systemBlackColor;
}

- (id)_headingLabelTextColor
{
  _foregroundContentMode = [(PKDiscoveryCardView *)self _foregroundContentMode];
  systemDarkGrayColor = [MEMORY[0x1E69DC888] systemDarkGrayColor];
  v4 = [systemDarkGrayColor colorWithAlphaComponent:0.5];

  if (_foregroundContentMode == 1)
  {
    systemLightGrayColor = [MEMORY[0x1E69DC888] systemLightGrayColor];
    v6 = [systemLightGrayColor colorWithAlphaComponent:0.5];

    v4 = v6;
  }

  return v4;
}

- (PKDiscoveryCardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)safeAreaOverrideInsets
{
  top = self->_safeAreaOverrideInsets.top;
  left = self->_safeAreaOverrideInsets.left;
  bottom = self->_safeAreaOverrideInsets.bottom;
  right = self->_safeAreaOverrideInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end