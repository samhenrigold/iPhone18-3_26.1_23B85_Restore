@interface PRXButton
+ (PRXButton)buttonWithProximityType:(int64_t)type usesLegacyStyling:(BOOL)styling usingCustomColors:(id)colors;
+ (id)defaultPRXButtonConfigurationForTinting:(BOOL)tinting traitCollection:(id)collection;
- (CGSize)intrinsicContentSize;
- (double)_minimumIntrinsicHeight;
- (void)setActive:(BOOL)active;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)toggleActive;
@end

@implementation PRXButton

+ (PRXButton)buttonWithProximityType:(int64_t)type usesLegacyStyling:(BOOL)styling usingCustomColors:(id)colors
{
  stylingCopy = styling;
  colorsCopy = colors;
  if (stylingCopy)
  {
    v9 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76838]];
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] colorWithRed:0.831373 green:0.827451 blue:0.854902 alpha:1.0];
    v11 = secondarySystemBackgroundColor;
  }

  else
  {
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    v11 = secondarySystemBackgroundColor;
    v9 = 0;
  }

  v12 = 0;
  if (type > 2)
  {
    if (type <= 4)
    {
      if (type != 3)
      {
LABEL_11:
        if (_UISolariumEnabled())
        {
          v68.receiver = self;
          v68.super_class = &OBJC_METACLASS___PRXButton;
          v12 = objc_msgSendSuper2(&v68, sel_buttonWithType_, 0);
          layer = [v12 layer];
          [layer setCornerRadius:30.0 * 0.5];

          quaternarySystemFillColor = [MEMORY[0x277D75348] quaternarySystemFillColor];
          [v12 setBackgroundColor:quaternarySystemFillColor];

          labelColor = [MEMORY[0x277D75348] labelColor];
          [v12 setTintColor:labelColor];

          defaultMetrics = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D769D0] scale:2];
          v17 = [MEMORY[0x277D755D0] configurationWithWeight:6];
          [defaultMetrics configurationByApplyingConfiguration:v17];
          v18 = v59 = v11;
          if (type == 2)
          {
            v19 = @"xmark";
          }

          else
          {
            v19 = @"info";
          }

          [MEMORY[0x277D755B8] systemImageNamed:v19];
          v58 = stylingCopy;
          v20 = v9;
          v22 = v21 = colorsCopy;
          [v12 setPreferredSymbolConfiguration:v18 forImageInState:0];
          labelColor2 = [MEMORY[0x277D75348] labelColor];
          v24 = [v22 imageWithTintColor:labelColor2];
          [v12 setImage:v24 forState:0];

          colorsCopy = v21;
          v9 = v20;
          stylingCopy = v58;

          v11 = v59;
        }

        else
        {
          v67.receiver = self;
          v67.super_class = &OBJC_METACLASS___PRXButton;
          v12 = objc_msgSendSuper2(&v67, sel_buttonWithType_, 7);
          v39 = [MEMORY[0x277D755B8] kitImageNamed:@"UICloseButtonBackgroundCompact"];
          tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
          v41 = [v39 imageWithTintColor:tertiarySystemFillColor];
          [v12 setBackgroundImage:v41 forState:0];

          defaultMetrics = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:1 scale:15.0];
          [v12 setPreferredSymbolConfiguration:defaultMetrics forImageInState:0];
        }

LABEL_38:

        if (!v12)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      v61.receiver = self;
      v61.super_class = &OBJC_METACLASS___PRXButton;
      v12 = objc_msgSendSuper2(&v61, sel_buttonWithType_, 1);
      secondarySystemBackgroundColor2 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
      [v12 setTintColor:secondarySystemBackgroundColor2];

      defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
      v25 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:*MEMORY[0x277D74410]];
      v26 = [defaultMetrics scaledFontForFont:v25];
LABEL_22:
      v34 = v26;
      titleLabel = [v12 titleLabel];
      [titleLabel setFont:v34];

      goto LABEL_38;
    }

    if (type != 5)
    {
      if (type != 6)
      {
        goto LABEL_40;
      }

      v64.receiver = self;
      v64.super_class = &OBJC_METACLASS___PRXButton;
      v12 = objc_msgSendSuper2(&v64, sel_buttonWithType_, 1);
      defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
      v25 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74410]];
      v26 = [defaultMetrics scaledFontForFont:v25 compatibleWithTraitCollection:v9];
      goto LABEL_22;
    }

    if (!colorsCopy)
    {
      v36 = PRXDefaultLog(secondarySystemBackgroundColor);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260F65000, v36, OS_LOG_TYPE_DEFAULT, "[WARN] customColor must be set if using PRXButtonTypeProminentCustom", buf, 2u);
      }
    }

    v62.receiver = self;
    v62.super_class = &OBJC_METACLASS___PRXButton;
    v12 = objc_msgSendSuper2(&v62, sel_buttonWithType_, 1);
    if (_UISolariumEnabled())
    {
      defaultMetrics = [objc_opt_class() defaultPRXButtonConfigurationForTinting:1 traitCollection:v9];
      backgroundColor = [colorsCopy backgroundColor];
      [defaultMetrics setBaseBackgroundColor:backgroundColor];

      textColor = [colorsCopy textColor];
      [defaultMetrics setBaseForegroundColor:textColor];

LABEL_32:
      [v12 setConfiguration:defaultMetrics];
      goto LABEL_38;
    }

    backgroundColor2 = [colorsCopy backgroundColor];
    [v12 setBackgroundColor:backgroundColor2];

    [v12 setCustomColors:colorsCopy];
    [v12 _setContinuousCornerRadius:12.0];
    [v12 setContentEdgeInsets:{0.0, 12.0, 0.0, 12.0}];
    defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
    v44 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74410]];
    v45 = [defaultMetrics2 scaledFontForFont:v44 compatibleWithTraitCollection:v9];
    titleLabel2 = [v12 titleLabel];
    [titleLabel2 setFont:v45];

    textColor2 = [colorsCopy textColor];
    [v12 setTitleColor:textColor2 forState:0];

    v48 = MEMORY[0x277D75348];
    goto LABEL_37;
  }

  if (type)
  {
    if (type != 1)
    {
      if (type != 2)
      {
        goto LABEL_40;
      }

      goto LABEL_11;
    }

    v65.receiver = self;
    v65.super_class = &OBJC_METACLASS___PRXButton;
    v12 = objc_msgSendSuper2(&v65, sel_buttonWithType_, 0);
    if (_UISolariumEnabled())
    {
      defaultMetrics = [objc_opt_class() defaultPRXButtonConfigurationForTinting:1 traitCollection:v9];
      goto LABEL_32;
    }

    [v12 setBackgroundColor:v11];
    [v12 _setContinuousCornerRadius:12.0];
    [v12 setContentEdgeInsets:{0.0, 12.0, 0.0, 12.0}];
    defaultMetrics3 = [MEMORY[0x277D75520] defaultMetrics];
    v50 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74410]];
    v51 = [defaultMetrics3 scaledFontForFont:v50 compatibleWithTraitCollection:v9];
    titleLabel3 = [v12 titleLabel];
    [titleLabel3 setFont:v51];

    labelColor3 = [MEMORY[0x277D75348] labelColor];
    [v12 setTitleColor:labelColor3 forState:0];

    v48 = MEMORY[0x277D75348];
LABEL_37:
    defaultMetrics = [v48 secondaryLabelColor];
    [v12 setTitleColor:defaultMetrics forState:2];
    goto LABEL_38;
  }

  v60 = v11;
  v66.receiver = self;
  v66.super_class = &OBJC_METACLASS___PRXButton;
  v12 = objc_msgSendSuper2(&v66, sel_buttonWithType_, 1);
  defaultMetrics4 = [MEMORY[0x277D75520] defaultMetrics];
  v28 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74410]];
  v29 = [defaultMetrics4 scaledFontForFont:v28 compatibleWithTraitCollection:v9];
  titleLabel4 = [v12 titleLabel];
  [titleLabel4 setFont:v29];

  if (_UISolariumEnabled())
  {
    defaultMetrics = [objc_opt_class() defaultPRXButtonConfigurationForTinting:0 traitCollection:v9];
    systemGray6Color = [MEMORY[0x277D75348] systemGray6Color];
    [defaultMetrics setBaseBackgroundColor:systemGray6Color];

    labelColor4 = [MEMORY[0x277D75348] labelColor];
    [defaultMetrics setBaseForegroundColor:labelColor4];

    [v12 setConfiguration:defaultMetrics];
    v11 = v60;
    goto LABEL_38;
  }

  v11 = v60;
  if (v12)
  {
LABEL_39:
    v12[94] = type;
  }

LABEL_40:
  titleLabel5 = [v12 titleLabel];
  [titleLabel5 setAdjustsFontSizeToFitWidth:1];

  titleLabel6 = [v12 titleLabel];
  [titleLabel6 setAdjustsFontForContentSizeCategory:!stylingCopy];

  LODWORD(v56) = 1148846080;
  [v12 setContentHuggingPriority:1 forAxis:v56];
  [v12 setMaximumContentSizeCategory:*MEMORY[0x277D76840]];

  return v12;
}

+ (id)defaultPRXButtonConfigurationForTinting:(BOOL)tinting traitCollection:(id)collection
{
  collectionCopy = collection;
  if (tinting)
  {
    [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
  }

  else
  {
    [MEMORY[0x277D75230] _glassButtonConfiguration];
  }
  v6 = ;
  [v6 setCornerStyle:4];
  [v6 setContentInsets:{10.0, 20.0, 10.0, 20.0}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__PRXButton_defaultPRXButtonConfigurationForTinting_traitCollection___block_invoke;
  v9[3] = &unk_279ACC228;
  v10 = collectionCopy;
  v7 = collectionCopy;
  [v6 setTitleTextAttributesTransformer:v9];

  return v6;
}

id __69__PRXButton_defaultPRXButtonConfigurationForTinting_traitCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:*(a1 + 32)];
  v6 = [v5 fontDescriptorWithSymbolicTraits:2];

  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];
  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277D740A8]];

  v8 = *MEMORY[0x277D74118];
  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277D74118]];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277D74240]);
  }

  v11 = v10;

  [v11 setAlignment:1];
  [v4 setObject:v11 forKeyedSubscript:v8];

  return v4;
}

- (double)_minimumIntrinsicHeight
{
  proximityButtonType = self->_proximityButtonType;
  if (proximityButtonType > 5)
  {
    return 0.0;
  }

  if (((1 << proximityButtonType) & 0x23) != 0)
  {
    return 50.0;
  }

  if (((1 << proximityButtonType) & 0x14) != 0)
  {
    return 30.0;
  }

  else
  {
    return 0.0;
  }
}

- (CGSize)intrinsicContentSize
{
  v14.receiver = self;
  v14.super_class = PRXButton;
  [(PRXButton *)&v14 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [(PRXButton *)self _minimumIntrinsicHeight];
  v8 = v7;
  proximityButtonType = self->_proximityButtonType;
  if (proximityButtonType == 4 || proximityButtonType == 2)
  {
    [(PRXButton *)self _minimumIntrinsicHeight];
    v4 = v11;
  }

  if (v6 >= v8)
  {
    v12 = v6;
  }

  else
  {
    v12 = v8;
  }

  v13 = v4;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = PRXButton;
  [(PRXButton *)&v6 setHighlighted:?];
  if ((self->_proximityButtonType | 4) == 5)
  {
    v5 = 1.0;
    if (highlightedCopy)
    {
      v5 = 0.5;
    }

    [(PRXButton *)self setAlpha:v5];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = PRXButton;
  [(PRXButton *)&v5 setEnabled:enabled];
  if ([(PRXButton *)self proximityButtonType]== 5)
  {
    if ([(PRXButton *)self isEnabled])
    {
      [(PRXActionCustomColors *)self->_customColors backgroundColor];
    }

    else
    {
      [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    }
    v4 = ;
    [(PRXButton *)self setBackgroundColor:v4];
  }
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  if ([(PRXButton *)self proximityButtonType]== 4)
  {
    self->_active = activeCopy;
    if (activeCopy)
    {
      systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
      [(PRXButton *)self setBackgroundColor:systemBlueColor];

      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
      [(PRXButton *)self setBackgroundColor:secondarySystemBackgroundColor];

      [MEMORY[0x277D75348] secondaryLabelColor];
    }
    v7 = ;
    [(PRXButton *)self setTintColor:v7];
  }
}

- (void)toggleActive
{
  v3 = [(PRXButton *)self isActive]^ 1;

  [(PRXButton *)self setActive:v3];
}

@end