@interface PKPassPosterEventTicketFaceView
- (BOOL)flushFormattedFieldValues;
- (id)fetchRelevantBuckets;
- (void)_updateBodyLabelColorsForRelevancyActive:(BOOL)active;
- (void)createBodyContentViews;
- (void)createHeaderContentViews;
- (void)layoutSubviews;
- (void)setRelevancyActive:(BOOL)active;
@end

@implementation PKPassPosterEventTicketFaceView

- (id)fetchRelevantBuckets
{
  v9[4] = *MEMORY[0x1E69E9840];
  pass = [(PKPassFaceView *)self pass];
  v3 = [PKEventTicketFaceBucketsFactory headerFieldsForPass:pass];
  v4 = [PKEventTicketFaceBucketsFactory primaryFieldsForPass:pass];
  v5 = [PKEventTicketFaceBucketsFactory secondaryFieldsForPass:pass];
  v6 = [PKEventTicketFaceBucketsFactory auxiliaryFieldsForPass:pass];
  v9[0] = v3;
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  return v7;
}

- (BOOL)flushFormattedFieldValues
{
  pass = [(PKPassFaceView *)self pass];
  v4 = [PKEventTicketFaceBucketsFactory headerFieldsForPass:pass];

  firstObject = [v4 firstObject];
  label = [firstObject label];
  value = [firstObject value];
  buckets = [(PKPassFaceView *)self buckets];
  firstObject2 = [buckets firstObject];
  v9FirstObject = [firstObject2 firstObject];

  label2 = [v9FirstObject label];
  v12 = label;
  v13 = v12;
  if (label2 == v12)
  {

    goto LABEL_7;
  }

  if (v12 && label2)
  {
    v14 = [label2 isEqualToString:v12];

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_10;
  }

LABEL_9:
  [v9FirstObject setLabel:v13];
  v15 = 1;
LABEL_10:
  value2 = [v9FirstObject value];
  v17 = value;
  v18 = v17;
  if (value2 == v17)
  {
  }

  else
  {
    if (v17 && value2)
    {
      v19 = [value2 isEqualToString:v17];

      if (v19)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    [v9FirstObject setUnformattedValue:v18];
    v15 = 1;
  }

LABEL_18:

  return v15;
}

- (void)createHeaderContentViews
{
  v94[2] = *MEMORY[0x1E69E9840];
  v90.receiver = self;
  v90.super_class = PKPassPosterEventTicketFaceView;
  [(PKPassFrontFaceView *)&v90 createHeaderContentViews];
  style = [(PKPassFaceView *)self style];
  pass = [(PKPassFaceView *)self pass];
  colorProfile = [(PKPassFaceView *)self colorProfile];
  v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
  v85 = colorProfile;
  if (([colorProfile supportsAutomaticForegroundVibrancy] & 1) != 0 || objc_msgSend(colorProfile, "supportsAutomaticLabelVibrancy"))
  {
    v7 = MEMORY[0x1E69DC888];
    frontFaceImageAverageColor = [pass frontFaceImageAverageColor];
    v9 = [v7 pkui_colorWithPKColor:frontFaceImageAverageColor];

    [v9 CGColor];
    PKColorGetLightness();
    v11 = 2;
    if (v10 < 0.5)
    {
      v11 = 3;
    }

    if (v10 >= 0.85)
    {
      v11 = 1;
    }

    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __59__PKPassPosterEventTicketFaceView_createHeaderContentViews__block_invoke;
    v89[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
    v89[4] = v11;
    v12 = [v6 traitCollectionByModifyingTraits:v89];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v84 = [labelColor resolvedColorWithTraitCollection:v12];

    v6 = v12;
  }

  else
  {
    v84 = 0;
  }

  v88 = v6;
  self->_usingSportsLabel = 0;
  v86 = *MEMORY[0x1E695F050];
  v87 = *(MEMORY[0x1E695F050] + 16);
  self->_cachedLogoLabelRect.origin = *MEMORY[0x1E695F050];
  self->_cachedLogoLabelRect.size = v87;
  logoText = [pass logoText];
  PKPassFaceLogoRect();
  if (!CGRectIsEmpty(v95) && (style - 11) >= 0xFFFFFFFFFFFFFFFELL)
  {
    eventType = [pass eventType];
    v16 = [pass stringForSemanticKey:*MEMORY[0x1E69BBE38]];
    v17 = [pass stringForSemanticKey:*MEMORY[0x1E69BBD48]];
    if (eventType == 3 && (v18 = v16) != 0 && (v19 = v18, v20 = [v18 length], v19, v20) && (v21 = v17) != 0 && (v22 = v21, v23 = objc_msgSend(v21, "length"), v22, v23))
    {
      v82 = v22;
      v83 = logoText;
      self->_usingSportsLabel = 1;
      v24 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      logoLabel = self->_logoLabel;
      self->_logoLabel = v24;

      v26 = self->_logoLabel;
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(UILabel *)v26 setBackgroundColor:clearColor];

      [(UILabel *)self->_logoLabel setLineBreakMode:4];
      [(UILabel *)self->_logoLabel setNumberOfLines:1];
      [(UILabel *)self->_logoLabel setTextAlignment:0];
      if ([colorProfile supportsAutomaticForegroundVibrancy])
      {
        foregroundColor = v84;
      }

      else
      {
        foregroundColor = [colorProfile foregroundColor];
      }

      v40 = foregroundColor;
      v78 = objc_alloc_init(MEMORY[0x1E696AD40]);
      v61 = PKFontForDefaultDesign(v88, *MEMORY[0x1E69DDCF8], 32770, 0, *MEMORY[0x1E69DB958]);
      v76 = *MEMORY[0x1E69DB650];
      v62 = *MEMORY[0x1E69DB650];
      v93[0] = *MEMORY[0x1E69DB648];
      v77 = v93[0];
      v93[1] = v62;
      v94[0] = v61;
      v94[1] = v40;
      v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:2];
      v81 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v19 attributes:v80];
      [v78 appendAttributedString:v81];
      v63 = PKFontForDefaultDesign(v88, *MEMORY[0x1E69DDD10], 32770, 0, *MEMORY[0x1E69DB980]);
      v91[0] = *MEMORY[0x1E69DB610];
      v64 = MEMORY[0x1E696AD98];
      [v61 capHeight];
      v66 = v65;
      v79 = v63;
      [v63 xHeight];
      v68.n128_u64[0] = 0.5;
      v69.n128_f64[0] = (v66 - v67) * 0.5;
      PKFloatRoundToPixel(v69, v68);
      v70 = [v64 numberWithDouble:?];
      v92[0] = v70;
      v92[1] = v63;
      v91[1] = v77;
      v91[2] = v76;
      v92[2] = v40;
      v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:3];

      v72 = objc_alloc(MEMORY[0x1E696AAB0]);
      v73 = PKLocalizedTicketingString(&cfstr_LabelLogoVersu.isa);
      v74 = [v72 initWithString:v73 attributes:v71];

      [v78 appendAttributedString:v74];
      v75 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v82 attributes:v80];
      [v78 appendAttributedString:v75];
      [(UILabel *)self->_logoLabel setAttributedText:v78];
      [(PKPassFrontFaceView *)self insertContentView:self->_logoLabel ofType:0];

      logoText = v83;
    }

    else
    {
      v29 = logoText;
      if (!v29)
      {
        goto LABEL_25;
      }

      v30 = v29;
      v31 = [v29 length];

      if (!v31)
      {
        goto LABEL_25;
      }

      v32 = logoText;
      v33 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v34 = self->_logoLabel;
      self->_logoLabel = v33;

      v35 = self->_logoLabel;
      clearColor2 = [MEMORY[0x1E69DC888] clearColor];
      [(UILabel *)v35 setBackgroundColor:clearColor2];

      [(UILabel *)self->_logoLabel setLineBreakMode:4];
      [(UILabel *)self->_logoLabel setNumberOfLines:2];
      [(UILabel *)self->_logoLabel setTextAlignment:0];
      v37 = self->_logoLabel;
      v38 = PKFontForDefaultDesign(v88, *MEMORY[0x1E69DDD80], 32770, 0, *MEMORY[0x1E69DB958]);
      [(UILabel *)v37 setFont:v38];

      if ([colorProfile supportsAutomaticForegroundVibrancy])
      {
        foregroundColor2 = v84;
      }

      else
      {
        foregroundColor2 = [colorProfile foregroundColor];
      }

      v40 = foregroundColor2;
      [(UILabel *)self->_logoLabel setTextColor:foregroundColor2];
      [(UILabel *)self->_logoLabel setText:v30];
      [(PKPassFrontFaceView *)self insertContentView:self->_logoLabel ofType:0];
      logoText = v32;
    }

LABEL_25:
  }

  v41 = logoText;
  buckets = [(PKPassFaceView *)self buckets];
  firstObject = [buckets firstObject];
  v43FirstObject = [firstObject firstObject];

  if (!v43FirstObject)
  {
    __break(1u);
  }

  self->_cachedDateLabelFrame.origin = v86;
  self->_cachedDateLabelFrame.size = v87;
  label = [v43FirstObject label];
  value = [v43FirstObject value];
  if (value)
  {
    v47 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    dateLabel = self->_dateLabel;
    self->_dateLabel = v47;

    [(UILabel *)self->_dateLabel setNumberOfLines:1];
    [(UILabel *)self->_dateLabel setLineBreakMode:4];
    [(UILabel *)self->_dateLabel setTextAlignment:2];
    v49 = MEMORY[0x1E69DDCF8];
    if (label)
    {
      v49 = MEMORY[0x1E69DDD80];
    }

    v50 = *v49;
    v51 = self->_dateLabel;
    v52 = PKFontForDefaultDesign(v88, v50, 32770, 0, *MEMORY[0x1E69DB958]);
    [(UILabel *)v51 setFont:v52];

    if ([v85 supportsAutomaticForegroundVibrancy])
    {
      foregroundColor3 = v84;
    }

    else
    {
      foregroundColor3 = [v85 foregroundColor];
    }

    v54 = foregroundColor3;
    [(UILabel *)self->_dateLabel setTextColor:foregroundColor3];
    [(UILabel *)self->_dateLabel setText:value];
    [(PKPassFrontFaceView *)self insertContentView:self->_dateLabel ofType:0];
  }

  self->_cachedTimeLabelFrame.origin = v86;
  self->_cachedTimeLabelFrame.size = v87;
  if (label)
  {
    v55 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    timeLabel = self->_timeLabel;
    self->_timeLabel = v55;

    [(UILabel *)self->_timeLabel setNumberOfLines:1];
    [(UILabel *)self->_timeLabel setLineBreakMode:4];
    [(UILabel *)self->_timeLabel setTextAlignment:2];
    v57 = self->_timeLabel;
    v58 = _PKFontForDesign(v88, *MEMORY[0x1E69DB8D0], *MEMORY[0x1E69DDD80], 0x8000, 32, 0);
    [(UILabel *)v57 setFont:v58];

    if ([v85 supportsAutomaticLabelVibrancy])
    {
      labelColor2 = v84;
    }

    else
    {
      labelColor2 = [v85 labelColor];
    }

    v60 = labelColor2;
    [(UILabel *)self->_timeLabel setTextColor:labelColor2];
    [(UILabel *)self->_timeLabel setText:label];
    [(PKPassFrontFaceView *)self insertContentView:self->_timeLabel ofType:0];
  }
}

uint64_t __59__PKPassPosterEventTicketFaceView_createHeaderContentViews__block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [a2 setUserInterfaceStyle:v2];
}

- (void)createBodyContentViews
{
  v130.receiver = self;
  v130.super_class = PKPassPosterEventTicketFaceView;
  [(PKPassFrontFaceView *)&v130 createBodyContentViews];
  pass = [(PKPassFaceView *)self pass];
  seatingInformation = [pass seatingInformation];
  firstSeat = [seatingInformation firstSeat];
  v5 = MEMORY[0x1E69DC888];
  v113 = firstSeat;
  sectionColor = [firstSeat sectionColor];
  v7 = [v5 pkui_colorWithPKColor:sectionColor];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    sectionColorView = self->_sectionColorView;
    self->_sectionColorView = v8;

    [(UIView *)self->_sectionColorView setClipsToBounds:1];
    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    sectionColorMaskView = self->_sectionColorMaskView;
    self->_sectionColorMaskView = v10;

    [(UIView *)self->_sectionColorMaskView setBackgroundColor:v7];
    [(UIView *)self->_sectionColorView addSubview:self->_sectionColorMaskView];
    v12 = objc_alloc_init(MEMORY[0x1E6979398]);
    layer = [(UIView *)self->_sectionColorMaskView layer];
    [layer setMask:v12];

    layer2 = [(UIView *)self->_sectionColorMaskView layer];
    [layer2 setMasksToBounds:1];

    if ([(PKPassFrontFaceView *)self isRelevancyActive])
    {
      [(PKPassFrontFaceView *)self insertContentView:self->_sectionColorView ofType:2];
    }
  }

  secondaryLogoImage = [pass secondaryLogoImage];
  v117 = v7;
  if (secondaryLogoImage)
  {
    v16 = secondaryLogoImage;
    v17 = [MEMORY[0x1E69B8950] constraintsWithMaxSize:{135.0, 12.0}];
    [v16 scale];
    [v17 setOutputScale:?];
    v18 = [v16 resizedImageWithConstraints:v17];

    [v18 size];
    self->_secondaryLogoSize.width = v19;
    self->_secondaryLogoSize.height = v20;
    v21 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v112 = v18;
    v22 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v18];
    v23 = [v21 initWithImage:v22];
    secondaryLogoImageView = self->_secondaryLogoImageView;
    self->_secondaryLogoImageView = v23;

    [(UIImageView *)self->_secondaryLogoImageView setContentMode:1];
    [(PKPassFrontFaceView *)self insertContentView:self->_secondaryLogoImageView ofType:2];
  }

  else
  {
    v112 = 0;
  }

  v25 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
  v122 = *MEMORY[0x1E69DB8D0];
  v116 = *MEMORY[0x1E69DDD28];
  v26 = _PKFontForDesign(v25, *MEMORY[0x1E69DB8D0], *MEMORY[0x1E69DDD28], 0, 0, 0);
  colorProfile = [(PKPassFaceView *)self colorProfile];
  if ([colorProfile supportsAutomaticForegroundVibrancy])
  {
    supportsAutomaticLabelVibrancy = 1;
  }

  else
  {
    supportsAutomaticLabelVibrancy = [colorProfile supportsAutomaticLabelVibrancy];
  }

  v29 = objc_alloc_init(MEMORY[0x1E69DD250]);
  layer3 = [v29 layer];
  v31 = supportsAutomaticLabelVibrancy ^ 1u;
  [layer3 setAllowsGroupBlending:v31];

  v124 = v29;
  [(PKPassFrontFaceView *)self insertContentView:v29 ofType:2];
  v120 = v26;
  if (v31)
  {
    v121 = 0;
    v125 = 0;
    v123 = 0;
    v49 = 0;
  }

  else
  {
    footerBackgroundColor = [colorProfile footerBackgroundColor];
    v33 = MEMORY[0x1E69DC888];
    frontFaceImageAverageColor = [pass frontFaceImageAverageColor];
    v35 = [v33 pkui_colorWithPKColor:frontFaceImageAverageColor];

    isRelevancyActive = [(PKPassFrontFaceView *)self isRelevancyActive];
    if (footerBackgroundColor)
    {
      v37 = footerBackgroundColor;
    }

    else
    {
      v37 = v35;
    }

    if (v117 != 0 && isRelevancyActive)
    {
      v38 = v117;
    }

    else
    {
      v38 = v37;
    }

    [v38 CGColor];
    PKColorGetLightness();
    v40 = 2;
    if (v39 < 0.5)
    {
      v40 = 3;
    }

    if (v39 >= 0.85)
    {
      v41 = 1;
    }

    else
    {
      v41 = v40;
    }

    v129[0] = MEMORY[0x1E69E9820];
    v129[1] = 3221225472;
    v129[2] = __57__PKPassPosterEventTicketFaceView_createBodyContentViews__block_invoke;
    v129[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
    v129[4] = v41;
    v42 = v25;
    v43 = pass;
    if (v39 < 0.85)
    {
      v44 = MEMORY[0x1E6979CF8];
    }

    else
    {
      v44 = MEMORY[0x1E6979CE8];
    }

    v45 = [v42 traitCollectionByModifyingTraits:v129];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v123 = [labelColor resolvedColorWithTraitCollection:v45];

    v47 = *v44;
    pass = v43;
    v125 = v47;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v121 = [secondaryLabelColor resolvedColorWithTraitCollection:v45];

    v49 = v41 == 2;
    v25 = v45;
  }

  [(PKPassFaceView *)self style];
  PKPassFrontFaceContentSize();
  PKEventTicketV2PassScaleFactor();
  v51 = v50;
  buckets = [(PKPassFaceView *)self buckets];
  if ([buckets count] != 4)
  {
    __break(1u);
    return;
  }

  v53 = [buckets objectAtIndex:1];
  firstObject = [v53 firstObject];

  v118 = [buckets objectAtIndex:2];
  v55 = [v118 count];
  v56 = [buckets objectAtIndex:3];
  firstObject2 = [v56 firstObject];

  v126 = *(MEMORY[0x1E695F050] + 16);
  v127 = *MEMORY[0x1E695F050];
  self->_cachedPrimaryFieldFrame.origin = *MEMORY[0x1E695F050];
  self->_cachedPrimaryFieldFrame.size = v126;
  v57 = MEMORY[0x1E69DDD58];
  v119 = firstObject;
  v115 = buckets;
  if (firstObject)
  {
    v58 = *MEMORY[0x1E69DDD58];
    v59 = PKFontForDefaultDesign(v25, v58, 2, 0, *MEMORY[0x1E69DB958]);
    v60 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryFieldLabel = self->_primaryFieldLabel;
    self->_primaryFieldLabel = v60;

    [(UILabel *)self->_primaryFieldLabel setNumberOfLines:2];
    [(UILabel *)self->_primaryFieldLabel setLineBreakMode:4];
    [(UILabel *)self->_primaryFieldLabel setFont:v59];
    [(UILabel *)self->_primaryFieldLabel setTextAlignment:0];
    v109 = v25;
    if (v55)
    {
      if ([colorProfile supportsAutomaticLabelVibrancy])
      {
        v62 = v123;
        if (v49)
        {
          v63 = 0;
        }

        else
        {
          v62 = v121;
          v63 = v125;
        }

        v64 = v62;
        v65 = v63;
        goto LABEL_41;
      }

      labelColor2 = [colorProfile labelColor];
    }

    else if ([colorProfile supportsAutomaticForegroundVibrancy])
    {
      labelColor2 = v123;
    }

    else
    {
      labelColor2 = [colorProfile foregroundColor];
    }

    v64 = labelColor2;
    v65 = 0;
LABEL_41:
    [(UILabel *)self->_primaryFieldLabel setTextColor:v64, v109, pass, v112];
    layer4 = [(UILabel *)self->_primaryFieldLabel layer];
    [layer4 setCompositingFilter:v65];

    v68 = self->_primaryFieldLabel;
    value = [v119 value];
    [(UILabel *)v68 setText:value];

    [v124 addSubview:self->_primaryFieldLabel];
    v25 = v110;
    pass = v111;
    v57 = MEMORY[0x1E69DDD58];
  }

  self->_cachedSecondaryBucketFrame.origin = v127;
  self->_cachedSecondaryBucketFrame.size = v126;
  if (v55)
  {
    v70 = *v57;
    v71 = _PKFontForDesign(v25, v122, v70, 0, 32, 0);
    v72 = [v71 fontWithSize:round(v51 * 36.0)];

    v75 = 26.0;
    if (v55 == 2)
    {
      v73.n128_f64[0] = v51 * 42.0;
      PKFloatRoundToPixel(v73, v74);
      v75 = v76;
    }

    v77 = [[PKDynamicPassBucketView alloc] initWithBucket:v118];
    secondaryBucketView = self->_secondaryBucketView;
    self->_secondaryBucketView = v77;

    [(PKDynamicPassBucketView *)self->_secondaryBucketView setLayoutDirection:1];
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setDistribution:v55 > 2];
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setSizingRule:0];
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setSpacing:v75];
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setVerticalPadding:0.0];
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setMinResizeScale:0.6];
    v79 = pass;
    if ([colorProfile supportsAutomaticLabelVibrancy])
    {
      labelColor3 = v121;
    }

    else
    {
      labelColor3 = [colorProfile labelColor];
    }

    v81 = labelColor3;
    v82 = v25;
    supportsAutomaticLabelVibrancy2 = [colorProfile supportsAutomaticLabelVibrancy];
    v84 = v125;
    if (!supportsAutomaticLabelVibrancy2)
    {
      v84 = 0;
    }

    v85 = v84;
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setLabelFont:v120];
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setLabelTextColor:v81];
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setLabelBlendMode:v85];
    if ([colorProfile supportsAutomaticForegroundVibrancy])
    {
      foregroundColor = v123;
    }

    else
    {
      foregroundColor = [colorProfile foregroundColor];
    }

    v87 = foregroundColor;
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setValueFont:v72];
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setValueTextColor:v87];
    [(PKPassFrontFaceView *)self insertContentView:self->_secondaryBucketView ofType:2];

    v25 = v82;
    pass = v79;
    buckets = v115;
  }

  self->_cachedSecnamLabelFrame.origin = v127;
  self->_cachedSecnamLabelFrame.size = v126;
  label = [firstObject2 label];
  if (label)
  {
    v89 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secnamLabel = self->_secnamLabel;
    self->_secnamLabel = v89;

    [(UILabel *)self->_secnamLabel setNumberOfLines:1];
    [(UILabel *)self->_secnamLabel setLineBreakMode:4];
    [(UILabel *)self->_secnamLabel setTextAlignment:0];
    v91 = self->_secnamLabel;
    v92 = _PKFontForDesign(v25, v122, v116, 0x8000, 32, 0);
    [(UILabel *)v91 setFont:v92];

    if ([colorProfile supportsAutomaticLabelVibrancy])
    {
      labelColor4 = v121;
    }

    else
    {
      labelColor4 = [colorProfile labelColor];
    }

    v94 = labelColor4;
    supportsAutomaticLabelVibrancy3 = [colorProfile supportsAutomaticLabelVibrancy];
    v96 = v125;
    if (!supportsAutomaticLabelVibrancy3)
    {
      v96 = 0;
    }

    v97 = self->_secnamLabel;
    v98 = v96;
    [(UILabel *)v97 setTextColor:v94];
    layer5 = [(UILabel *)self->_secnamLabel layer];
    [layer5 setCompositingFilter:v98];

    [(UILabel *)self->_secnamLabel setText:label];
    v100 = self->_secnamLabel;

    [v124 addSubview:v100];
  }

  self->_cachedVenueLabelFrame.origin = v127;
  self->_cachedVenueLabelFrame.size = v126;
  value2 = [firstObject2 value];
  if (value2)
  {
    v102 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    venueLabel = self->_venueLabel;
    self->_venueLabel = v102;

    if (label)
    {
      v104 = 1;
    }

    else
    {
      v104 = 2;
    }

    [(UILabel *)self->_venueLabel setNumberOfLines:v104];
    [(UILabel *)self->_venueLabel setLineBreakMode:4 * (label != 0)];
    [(UILabel *)self->_venueLabel setTextAlignment:0];
    v105 = self->_venueLabel;
    v106 = _PKFontForDesign(v25, v122, v116, 0, 32, 0);
    [(UILabel *)v105 setFont:v106];

    if ([colorProfile supportsAutomaticForegroundVibrancy])
    {
      foregroundColor2 = v123;
    }

    else
    {
      foregroundColor2 = [colorProfile foregroundColor];
    }

    v108 = foregroundColor2;
    [(UILabel *)self->_venueLabel setTextColor:foregroundColor2];
    [(UILabel *)self->_venueLabel setText:value2];
    [(PKPassFrontFaceView *)self insertContentView:self->_venueLabel ofType:2];
  }
}

uint64_t __57__PKPassPosterEventTicketFaceView_createBodyContentViews__block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [a2 setUserInterfaceStyle:v2];
}

- (void)_updateBodyLabelColorsForRelevancyActive:(BOOL)active
{
  pass = [(PKPassFaceView *)self pass];
  colorProfile = [(PKPassFaceView *)self colorProfile];
  if (([colorProfile supportsAutomaticForegroundVibrancy] & 1) == 0 && !objc_msgSend(colorProfile, "supportsAutomaticLabelVibrancy"))
  {
    goto LABEL_39;
  }

  seatingInformation = [pass seatingInformation];
  firstSeat = [seatingInformation firstSeat];
  v8 = MEMORY[0x1E69DC888];
  v45 = firstSeat;
  sectionColor = [firstSeat sectionColor];
  v10 = [v8 pkui_colorWithPKColor:sectionColor];

  footerBackgroundColor = [colorProfile footerBackgroundColor];
  v12 = MEMORY[0x1E69DC888];
  frontFaceImageAverageColor = [pass frontFaceImageAverageColor];
  v14 = [v12 pkui_colorWithPKColor:frontFaceImageAverageColor];

  v44 = v14;
  if (footerBackgroundColor)
  {
    v15 = footerBackgroundColor;
  }

  else
  {
    v15 = v14;
  }

  if (active && v10 != 0)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  [v16 CGColor];
  PKColorGetLightness();
  v18 = v17;
  if (v17 >= 0.85)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  if (v17 >= 0.85)
  {
    v20 = MEMORY[0x1E6979CE8];
  }

  else
  {
    v20 = MEMORY[0x1E6979CF8];
  }

  v21 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v19];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v23 = [labelColor resolvedColorWithTraitCollection:v21];

  v24 = *v20;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v26 = [secondaryLabelColor resolvedColorWithTraitCollection:v21];

  if (self->_primaryFieldLabel)
  {
    v42 = footerBackgroundColor;
    v43 = v24;
    v27 = v26;
    v28 = v23;
    buckets = [(PKPassFaceView *)self buckets];
    v30 = [buckets objectAtIndex:2];
    v31 = [v30 count];

    if (v31)
    {
      v23 = v28;
      v26 = v27;
      if ([colorProfile supportsAutomaticLabelVibrancy])
      {
        v32 = v18 >= 0.5;
        v33 = v18 < 0.85;
        v34 = !v33 || !v32;
        if (!v33 || !v32)
        {
          v23 = v27;
        }

        v35 = v43;
        if (!v34)
        {
          v35 = 0;
        }

        primaryFieldLabel = self->_primaryFieldLabel;
        v41 = seatingInformation;
        v37 = v35;
        v38 = primaryFieldLabel;
        v26 = v27;
        [(UILabel *)v38 setTextColor:v23];
        layer = [(UILabel *)self->_primaryFieldLabel layer];
        [layer setCompositingFilter:v37];

        seatingInformation = v41;
        goto LABEL_25;
      }
    }

    else
    {
      v23 = v28;
      v26 = v27;
      if ([colorProfile supportsAutomaticForegroundVibrancy])
      {
        [(UILabel *)self->_primaryFieldLabel setTextColor:v28];
        layer = [(UILabel *)self->_primaryFieldLabel layer];
        [layer setCompositingFilter:0];
LABEL_25:

        v23 = v28;
      }
    }

    footerBackgroundColor = v42;
    v24 = v43;
  }

  if (self->_secondaryBucketView)
  {
    if ([colorProfile supportsAutomaticLabelVibrancy])
    {
      [(PKDynamicPassBucketView *)self->_secondaryBucketView setLabelTextColor:v26];
      [(PKDynamicPassBucketView *)self->_secondaryBucketView setLabelBlendMode:v24];
    }

    if ([colorProfile supportsAutomaticForegroundVibrancy])
    {
      [(PKDynamicPassBucketView *)self->_secondaryBucketView setValueTextColor:v23];
    }
  }

  if (self->_secnamLabel && [colorProfile supportsAutomaticLabelVibrancy])
  {
    [(UILabel *)self->_secnamLabel setTextColor:v26];
    layer2 = [(UILabel *)self->_secnamLabel layer];
    [layer2 setCompositingFilter:v24];
  }

  if (self->_venueLabel && [colorProfile supportsAutomaticForegroundVibrancy])
  {
    [(UILabel *)self->_venueLabel setTextColor:v23];
  }

LABEL_39:
}

- (void)layoutSubviews
{
  v262.receiver = self;
  v262.super_class = PKPassPosterEventTicketFaceView;
  [(PKPassFrontFaceView *)&v262 layoutSubviews];
  [(PKPassFaceView *)self style];
  v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
  PKPassFrontFaceContentSize();
  v5 = v4;
  v260 = v6.n128_f64[0];
  v7.n128_f64[0] = (v4 + -54.0 + -28.0) * 0.5;
  PKFloatRoundToPixel(v7, v6);
  v9 = v8;
  v252 = v5 + -28.0;
  v10.n128_f64[0] = (v5 + -28.0) * 0.5;
  PKFloatRoundToPixel(v10, v11);
  v253 = v12;
  PKPassFaceLogoRect();
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v258 = v5;
  if (self->_logoLabel && !CGRectIsNull(*&v13))
  {
    p_cachedLogoLabelRect = &self->_cachedLogoLabelRect;
    if (CGRectIsNull(self->_cachedLogoLabelRect))
    {
      rect = v9;
      if (self->_usingSportsLabel)
      {
        v19 = v253;
      }

      else
      {
        v19 = v9;
      }

      pass = [(PKPassFaceView *)self pass];
      [pass logoRect];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v263.origin.x = v24;
      v263.origin.y = v26;
      v263.size.width = v28;
      v263.size.height = v30;
      if (CGRectIsNull(v263))
      {
        v264.origin.x = v17;
        v264.origin.y = v18;
        v264.size.width = v19;
        v264.size.height = v20;
        MinX = CGRectGetMinX(v264);
      }

      else
      {
        v265.origin.x = v24;
        v265.origin.y = v26;
        v265.size.width = v28;
        v265.size.height = v30;
        MinX = CGRectGetMaxX(v265) + 8.0;
      }

      v266.origin.x = v17;
      v266.origin.y = v18;
      v266.size.width = v19;
      v266.size.height = v20;
      v32 = CGRectGetMaxX(v266) - MinX;
      font = [(UILabel *)self->_logoLabel font];
      [font _bodyLeading];
      v35.n128_u64[0] = v34;
      v36.n128_f64[0] = v32;
      PKSizeCeilToPixel(v36, v35, v37);
      v40 = v39;
      if (!self->_usingSportsLabel)
      {
        [(UILabel *)self->_logoLabel sizeThatFits:v38, 1.79769313e308];
        if (v41 <= v40)
        {
          v42 = PKFontForDefaultDesign(v3, *MEMORY[0x1E69DDCF8], 32770, 0, *MEMORY[0x1E69DB958]);
          [(UILabel *)self->_logoLabel setFont:v42];
          [(UILabel *)self->_logoLabel sizeThatFits:1.79769313e308, v40];
        }
      }

      UIRectCenteredYInRect();
      p_cachedLogoLabelRect->origin.x = v43;
      self->_cachedLogoLabelRect.origin.y = v44;
      self->_cachedLogoLabelRect.size.width = v45;
      self->_cachedLogoLabelRect.size.height = v46;

      v9 = rect;
      v5 = v258;
    }

    [(UILabel *)self->_logoLabel setFrame:p_cachedLogoLabelRect->origin.x, self->_cachedLogoLabelRect.origin.y, self->_cachedLogoLabelRect.size.width, self->_cachedLogoLabelRect.size.height];
  }

  if (self->_dateLabel)
  {
    v47 = v5;
    p_cachedDateLabelFrame = &self->_cachedDateLabelFrame;
    if (CGRectIsNull(self->_cachedDateLabelFrame))
    {
      v49 = v9;
      [(UILabel *)self->_dateLabel sizeThatFits:v9, 1.79769313e308];
      width = v50;
      height = v52;
      v267.origin.x = v17;
      v267.origin.y = v18;
      v267.size.width = v19;
      v267.size.height = v20;
      MinY = CGRectGetMinY(v267);
      if (!self->_timeLabel)
      {
        v55.n128_u64[0] = 0.5;
        v54.n128_f64[0] = (v20 - height) * 0.5;
        PKFloatRoundToPixel(v54, v55);
        MinY = MinY + v57;
      }

      x = v47 + -14.0 - width;
      p_cachedDateLabelFrame->origin.x = x;
      self->_cachedDateLabelFrame.origin.y = MinY;
      self->_cachedDateLabelFrame.size.width = width;
      self->_cachedDateLabelFrame.size.height = height;
    }

    else
    {
      v49 = v9;
      x = p_cachedDateLabelFrame->origin.x;
      MinY = self->_cachedDateLabelFrame.origin.y;
      width = self->_cachedDateLabelFrame.size.width;
      height = self->_cachedDateLabelFrame.size.height;
    }

    [(UILabel *)self->_dateLabel setFrame:x, MinY, width, height];
    v5 = v47;
    v9 = v49;
  }

  if (self->_timeLabel)
  {
    p_cachedTimeLabelFrame = &self->_cachedTimeLabelFrame;
    if (CGRectIsNull(self->_cachedTimeLabelFrame))
    {
      [(UILabel *)self->_timeLabel sizeThatFits:v9, 1.79769313e308];
      v61 = v60;
      v63 = v62;
      v64 = v5 + -14.0 - v60;
      MaxY = CGRectGetMaxY(self->_cachedDateLabelFrame);
      p_cachedTimeLabelFrame->origin.x = v64;
      self->_cachedTimeLabelFrame.origin.y = MaxY;
      self->_cachedTimeLabelFrame.size.width = v61;
      self->_cachedTimeLabelFrame.size.height = v63;
    }

    else
    {
      v64 = p_cachedTimeLabelFrame->origin.x;
      MaxY = self->_cachedTimeLabelFrame.origin.y;
      v61 = self->_cachedTimeLabelFrame.size.width;
      v63 = self->_cachedTimeLabelFrame.size.height;
    }

    [(UILabel *)self->_timeLabel setFrame:v64, MaxY, v61, v63];
  }

  backgroundView = [(PKPassFaceView *)self backgroundView];
  [backgroundView bounds];
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;

  if (self->_sectionColorView)
  {
    PKPassFacePartialBlurRect();
    [(UIView *)self->_sectionColorView setFrame:0.0, v260 - CGRectGetHeight(v268), v5];
    contentView = [(PKPassFaceView *)self contentView];
    [contentView sendSubviewToBack:self->_sectionColorView];

    [(PKPassPosterEventTicketFaceView *)self convertRect:self->_sectionColorView toView:v68, v70, v72, v74];
    [(UIView *)self->_sectionColorMaskView setFrame:?];
    layer = [(UIView *)self->_sectionColorMaskView layer];
    mask = [layer mask];

    [mask setFrame:{v68, v70, v72, v74}];
    backgroundView2 = [(PKPassFaceView *)self backgroundView];
    image = [backgroundView2 image];

    [mask setContents:{objc_msgSend(image, "CGImage")}];
  }

  secondaryLogoImageView = self->_secondaryLogoImageView;
  if (secondaryLogoImageView)
  {
    [(UIImageView *)secondaryLogoImageView setFrame:v5 - self->_secondaryLogoSize.width + -14.0, v260 - self->_secondaryLogoSize.height + -14.0];
  }

  PKPassFacePartialBlurRect();
  v81 = v269.origin.x;
  y = v269.origin.y;
  v83 = v269.size.width;
  v84 = v269.size.height;
  v254 = CGRectGetMinY(v269);
  v270.origin.x = v81;
  v270.origin.y = y;
  v270.size.width = v83;
  v270.size.height = v84;
  v255 = CGRectGetHeight(v270);
  PKEventTicketV2PassScaleFactor();
  v85.n128_u64[0] = 0x4054000000000000;
  v87.n128_f64[0] = v86 * 80.0;
  PKFloatRoundToPixel(v87, v85);
  v89 = v88;
  v90 = *MEMORY[0x1E695F050];
  v91 = *(MEMORY[0x1E695F050] + 8);
  v93 = *(MEMORY[0x1E695F050] + 16);
  v92 = *(MEMORY[0x1E695F050] + 24);
  v94 = v92;
  recta = v93;
  v95 = v91;
  v96 = *MEMORY[0x1E695F050];
  if (self->_venueLabel)
  {
    p_cachedVenueLabelFrame = &self->_cachedVenueLabelFrame;
    if (CGRectIsNull(self->_cachedVenueLabelFrame))
    {
      v250 = v89;
      v247 = v90;
      font2 = [(UILabel *)self->_secnamLabel font];
      font3 = [(UILabel *)self->_venueLabel font];
      v100 = font3;
      v101 = self->_secondaryLogoSize.width;
      if (self->_secnamLabel)
      {
        v248 = v91;
        if (v101 <= 0.0)
        {
          v102 = v252;
        }

        else
        {
          v102 = v252 - (v101 + 14.0);
        }

        [(UILabel *)self->_venueLabel sizeThatFits:v102, 1.79769313e308];
        v104 = v103;
        v106 = v105;
        [font2 _bodyLeading];
        v108.n128_u64[0] = v107;
        v109.n128_f64[0] = v102;
        PKSizeCeilToPixel(v109, v108, v110);
        v112 = v111;
        v114 = v113;
        [(UILabel *)self->_secnamLabel sizeThatFits:1.79769313e308];
        v117 = v116;
        if (v115 > v112 || v255 < 120.0)
        {
          v119 = *MEMORY[0x1E69DB8D0];
          v120 = *MEMORY[0x1E69DDD10];
          v121 = _PKFontForDesign(v3, *MEMORY[0x1E69DB8D0], *MEMORY[0x1E69DDD10], 0x8000, 32, 0);

          v122 = _PKFontForDesign(v3, v119, v120, 0, 32, 0);
          [(UILabel *)self->_secnamLabel setFont:v121];
          [(UILabel *)self->_venueLabel setFont:v122];
          [(UILabel *)self->_venueLabel sizeThatFits:1.79769313e308, v114];
          v104 = v123;
          v106 = v124;
          [(UILabel *)self->_secnamLabel sizeThatFits:1.79769313e308, v114];
          v117 = v125;
          v100 = v122;
          font2 = v121;
        }

        if (v104 >= v102)
        {
          v126 = v102;
        }

        else
        {
          v126 = v104;
        }

        if (v115 >= v102)
        {
          v127 = v102;
        }

        else
        {
          v127 = v115;
        }

        v91 = v248;
      }

      else
      {
        v127 = *MEMORY[0x1E695F060];
        v117 = *(MEMORY[0x1E695F060] + 8);
        v128 = v252 - v101 + -14.0;
        if (v253 < v128)
        {
          v128 = v253;
        }

        if (v101 <= 0.0)
        {
          v129 = v253;
        }

        else
        {
          v129 = v128;
        }

        venueLabel = self->_venueLabel;
        [font3 _bodyLeading];
        PKFloatCeilToPixel(v131, v132);
        [(UILabel *)venueLabel sizeThatFits:1.79769313e308, v133];
        if (v134 <= v129)
        {
          v126 = v134;
          v106 = v135;
        }

        else
        {
          v136 = _PKFontForDesign(v3, *MEMORY[0x1E69DB8D0], *MEMORY[0x1E69DDD10], 0, 32, 0);

          [(UILabel *)self->_venueLabel setFont:v136];
          [(UILabel *)self->_venueLabel sizeThatFits:v129, 1.79769313e308];
          v126 = v137;
          v106 = v138;
          v100 = v136;
        }
      }

      [v100 descender];
      PKFloatCeilToPixel(v139, v140);
      v142 = v260 - v106 + -14.0 - v141;
      p_cachedVenueLabelFrame->origin.x = 14.0;
      self->_cachedVenueLabelFrame.origin.y = v142;
      self->_cachedVenueLabelFrame.size.width = v126;
      self->_cachedVenueLabelFrame.size.height = v106;
      if (self->_secnamLabel)
      {
        v143 = 14.0;
        v144 = v126;
        v145 = v106;
        v146 = CGRectGetMinY(*(&v142 - 1));
        self->_cachedSecnamLabelFrame.origin.x = 14.0;
        self->_cachedSecnamLabelFrame.origin.y = v146 - v117 + -2.0;
        self->_cachedSecnamLabelFrame.size.width = v127;
        self->_cachedSecnamLabelFrame.size.height = v117;
      }

      v90 = v247;
      v89 = v250;
    }

    v96 = p_cachedVenueLabelFrame->origin.x;
    v95 = self->_cachedVenueLabelFrame.origin.y;
    v93 = self->_cachedVenueLabelFrame.size.width;
    v94 = self->_cachedVenueLabelFrame.size.height;
    [(UILabel *)self->_venueLabel setFrame:p_cachedVenueLabelFrame->origin.x, v95, v93, v94];
    secnamLabel = self->_secnamLabel;
    if (secnamLabel)
    {
      v96 = self->_cachedSecnamLabelFrame.origin.x;
      v95 = self->_cachedSecnamLabelFrame.origin.y;
      v93 = self->_cachedSecnamLabelFrame.size.width;
      v94 = self->_cachedSecnamLabelFrame.size.height;
      [(UILabel *)secnamLabel setFrame:v96, v95, v93, v94];
    }
  }

  v261 = v93;
  if (self->_secondaryBucketView)
  {
    p_cachedSecondaryBucketFrame = &self->_cachedSecondaryBucketFrame;
    if (CGRectIsNull(self->_cachedSecondaryBucketFrame))
    {
      v251 = v89;
      if (self->_primaryFieldLabel)
      {
        bucket = [(PKDynamicPassBucketView *)self->_secondaryBucketView bucket];
        v150 = [bucket count];

        v151 = v89 + 24.0;
        if (v150 <= 1)
        {
          v151 = v253;
        }

        v152 = v252 - v151;
      }

      else
      {
        v152 = v252;
      }

      [(PKDynamicPassBucketView *)self->_secondaryBucketView fittedSizeFor:v152, 1.79769313e308];
      v154 = v153;
      v156 = v155;
      labelFont = [(PKDynamicPassBucketView *)self->_secondaryBucketView labelFont];
      resizedValueFont = [(PKDynamicPassBucketView *)self->_secondaryBucketView resizedValueFont];
      v159 = resizedValueFont;
      if (resizedValueFont)
      {
        valueFont = resizedValueFont;
      }

      else
      {
        valueFont = [(PKDynamicPassBucketView *)self->_secondaryBucketView valueFont];
      }

      v161 = valueFont;

      v271.origin.x = v96;
      v271.origin.y = v95;
      v271.size.width = v93;
      v271.size.height = v94;
      v162 = v255;
      if (!CGRectIsNull(v271))
      {
        v272.origin.x = v96;
        v272.origin.y = v95;
        v272.size.width = v93;
        v272.size.height = v94;
        v162 = CGRectGetMinY(v272) - v254;
      }

      [labelFont ascender];
      v164 = v163;
      [labelFont capHeight];
      v166.n128_f64[0] = v164 - v165;
      PKFloatFloorToPixel(v166, v167);
      v169 = v168;
      [v161 descender];
      PKFloatFloorToPixel(v170, v171);
      v173.n128_f64[0] = v254;
      v174.n128_f64[0] = v254 + (v162 - (v156 + v172 - v169)) * 0.5 - v169;
      PKFloatRoundToPixel(v174, v173);
      p_cachedSecondaryBucketFrame->origin.x = v258 + -14.0 - v154;
      self->_cachedSecondaryBucketFrame.origin.y = v175;
      self->_cachedSecondaryBucketFrame.size.width = v154;
      self->_cachedSecondaryBucketFrame.size.height = v156;

      v89 = v251;
    }

    v90 = p_cachedSecondaryBucketFrame->origin.x;
    v91 = self->_cachedSecondaryBucketFrame.origin.y;
    v92 = self->_cachedSecondaryBucketFrame.size.height;
    recta = self->_cachedSecondaryBucketFrame.size.width;
    [(PKDynamicPassBucketView *)self->_secondaryBucketView setFrame:p_cachedSecondaryBucketFrame->origin.x, v91];
  }

  if (self->_primaryFieldLabel)
  {
    p_cachedPrimaryFieldFrame = &self->_cachedPrimaryFieldFrame;
    if (CGRectIsNull(self->_cachedPrimaryFieldFrame))
    {
      bucket2 = [(PKDynamicPassBucketView *)self->_secondaryBucketView bucket];
      v178 = [bucket2 count];

      v249 = v91;
      if (self->_secondaryBucketView)
      {
        if (v178 <= 1)
        {
          v181 = v253;
        }

        else
        {
          v181 = v89;
        }
      }

      else
      {
        v180.n128_u64[0] = 3.0;
        v179.n128_f64[0] = v258 / 5.0 * 3.0;
        PKFloatRoundToPixel(v179, v180);
        v181 = v182;
      }

      PKEventTicketV2PassScaleFactor();
      v259 = v183;
      font4 = [(UILabel *)self->_primaryFieldLabel font];
      primaryFieldLabel = self->_primaryFieldLabel;
      [font4 _bodyLeading];
      PKFloatCeilToPixel(v186, v187);
      [(UILabel *)primaryFieldLabel sizeThatFits:1.79769313e308, v188];
      v190 = v189;
      v192 = v191;
      if (v189 > v181)
      {
        if (self->_secondaryBucketView && v178 >= 2)
        {
          v193 = PKFontForDefaultDesign(v3, *MEMORY[0x1E69DDD40], 2, 0, *MEMORY[0x1E69DB958]);
          [v193 pointSize];
          v195 = [v193 fontWithSize:round(v259 * v194 + v259 * v194) * 0.5];

          [(UILabel *)self->_primaryFieldLabel setFont:v195];
          v196 = self->_primaryFieldLabel;
          [v195 _bodyLeading];
          v198 = v197;

          v199.n128_u64[0] = v198;
          PKFloatCeilToPixel(v199, v200);
          [(UILabel *)v196 sizeThatFits:1.79769313e308, v201];
          v190 = v202;
          v192 = v203;

          font4 = v195;
        }

        if (v190 > v181)
        {
          v204 = *MEMORY[0x1E69DB958];
          if (v178 < 2)
          {
            v205 = PKFontForDefaultDesign(v3, *MEMORY[0x1E69DDDC0], 2, 0, v204);
            [v205 pointSize];
          }

          else
          {
            v205 = PKFontForDefaultDesign(v3, *MEMORY[0x1E69DDD80], 2, 0, v204);
            v206 = 13.5;
          }

          v207 = [v205 fontWithSize:round(v259 * v206 + v259 * v206) * 0.5];

          v208 = v207;
          [(UILabel *)self->_primaryFieldLabel setFont:v208];

          [(UILabel *)self->_primaryFieldLabel sizeThatFits:v181, 1.79769313e308];
          v190 = v209;
          v192 = v210;
          font4 = v208;
        }
      }

      secondaryBucketView = self->_secondaryBucketView;
      if (secondaryBucketView && v178 >= 2)
      {
        resizedValueFont2 = [(PKDynamicPassBucketView *)secondaryBucketView resizedValueFont];
        v213 = resizedValueFont2;
        if (resizedValueFont2)
        {
          valueFont2 = resizedValueFont2;
        }

        else
        {
          valueFont2 = [(PKDynamicPassBucketView *)self->_secondaryBucketView valueFont];
        }

        v229 = valueFont2;

        v275.origin.x = v90;
        v275.origin.y = v249;
        v275.size.width = recta;
        v275.size.height = v92;
        v230 = CGRectGetMaxY(v275) - v192;
        [v229 descender];
        PKFloatCeilToPixel(v231, v232);
        v234 = v230 + v233;
        [font4 descender];
        PKFloatCeilToPixel(v235, v236);
        v228 = v234 - v237;
        [font4 _bodyLeading];
        PKFloatCeilToPixel(v238, v239);
        if (v192 <= v240)
        {
          [v229 capHeight];
          v242 = v241;
          [font4 capHeight];
          v244.n128_u64[0] = 0.5;
          v245.n128_f64[0] = (v242 - v243) * 0.5;
          PKFloatRoundToPixel(v245, v244);
          v228 = v228 - v246;
        }
      }

      else
      {
        v273.origin.x = v96;
        v273.origin.y = v95;
        v273.size.width = v261;
        v273.size.height = v94;
        if (!CGRectIsNull(v273))
        {
          v274.origin.x = v96;
          v274.origin.y = v95;
          v274.size.width = v261;
          v274.size.height = v94;
          v255 = CGRectGetMinY(v274) - v254;
        }

        [font4 ascender];
        v216 = v215;
        [font4 capHeight];
        v218.n128_f64[0] = v216 - v217;
        PKFloatFloorToPixel(v218, v219);
        v221 = v220;
        [font4 descender];
        PKFloatFloorToPixel(v222, v223);
        v225.n128_f64[0] = v254;
        v226.n128_f64[0] = v254 + (v255 - (v192 + v224 - v221)) * 0.5 - v221;
        PKFloatRoundToPixel(v226, v225);
        v228 = v227;
      }

      p_cachedPrimaryFieldFrame->origin.x = 14.0;
      self->_cachedPrimaryFieldFrame.origin.y = v228;
      self->_cachedPrimaryFieldFrame.size.width = v190;
      self->_cachedPrimaryFieldFrame.size.height = v192;
    }

    [(UILabel *)self->_primaryFieldLabel setFrame:p_cachedPrimaryFieldFrame->origin.x, self->_cachedPrimaryFieldFrame.origin.y, self->_cachedPrimaryFieldFrame.size.width, self->_cachedPrimaryFieldFrame.size.height];
  }
}

- (void)setRelevancyActive:(BOOL)active
{
  activeCopy = active;
  isRelevancyActive = [(PKPassFrontFaceView *)self isRelevancyActive];
  v6.receiver = self;
  v6.super_class = PKPassPosterEventTicketFaceView;
  [(PKPassFrontFaceView *)&v6 setRelevancyActive:activeCopy];
  if (isRelevancyActive != activeCopy && self->_sectionColorView)
  {
    if (activeCopy)
    {
      [PKPassFrontFaceView insertContentView:"insertContentView:ofType:" ofType:?];
    }

    else
    {
      [PKPassFaceView removeContentView:"removeContentView:ofType:" ofType:?];
    }

    [(PKPassPosterEventTicketFaceView *)self _updateBodyLabelColorsForRelevancyActive:activeCopy];
  }
}

@end