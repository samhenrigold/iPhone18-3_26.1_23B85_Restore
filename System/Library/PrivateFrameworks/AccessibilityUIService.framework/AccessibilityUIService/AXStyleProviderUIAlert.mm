@interface AXStyleProviderUIAlert
- (AXStyleProviderUIAlert)initWithType:(unint64_t)type text:(id)text subtitleText:(id)subtitleText iconImage:(id)image styleProvider:(id)provider userInfo:(id)info;
- (void)_appendParagraphWithText:(id)text withImage:(id)image withTextColor:(id)color font:(id)font textAlignment:(int64_t)alignment lineSpacing:(double)spacing paragraphSpacingBefore:(double)before toAttributedString:(id)self0;
- (void)_appendParagraphWithText:(id)text withTextColor:(id)color font:(id)font textAlignment:(int64_t)alignment lineSpacing:(double)spacing paragraphSpacingBefore:(double)before toAttributedString:(id)string;
- (void)_cancelDismissalWithPanGesture:(id)gesture;
- (void)_endDismissalWithPanGesture:(id)gesture;
- (void)_handlePanGestureRecognizer:(id)recognizer;
- (void)_handleTapGestureRecognizer:(id)recognizer;
- (void)_updateDismissalWithPanGesture:(id)gesture;
- (void)_updateViewForDismissalPercentage:(double)percentage;
- (void)addToContainerView:(id)view;
- (void)layoutSubviews;
@end

@implementation AXStyleProviderUIAlert

- (AXStyleProviderUIAlert)initWithType:(unint64_t)type text:(id)text subtitleText:(id)subtitleText iconImage:(id)image styleProvider:(id)provider userInfo:(id)info
{
  textCopy = text;
  subtitleTextCopy = subtitleText;
  imageCopy = image;
  providerCopy = provider;
  infoCopy = info;
  v199.receiver = self;
  v199.super_class = AXStyleProviderUIAlert;
  v18 = [(AXStyleProviderUIAlert *)&v199 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_143;
  }

  v188 = infoCopy;
  [(AXUIAlert *)v18 setUserInfo:infoCopy];
  v20 = [providerCopy alertBackgroundStyleForType:type];
  v21 = v20;
  v22 = 0;
  v197 = providerCopy;
  if (v20 > 3)
  {
    if (v20 > 5)
    {
      if (v20 != 6)
      {
        v23 = 0;
        if (v20 == 7)
        {
          v22 = objc_alloc_init(MEMORY[0x277D75D18]);
          v23 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
          [v23 _setContinuousCornerRadius:47.0];
          [v22 addSubview:v23];
          layer = [v22 layer];
          [layer setShadowRadius:25.0];

          layer2 = [v22 layer];
          LODWORD(v37) = 1036831949;
          [layer2 setShadowOpacity:v37];

          layer3 = [v22 layer];
          [layer3 setShadowOffset:{0.0, 15.0}];

          layer4 = [v22 layer];
          blackColor = [MEMORY[0x277D75348] blackColor];
          [layer4 setShadowColor:{objc_msgSend(blackColor, "CGColor")}];
        }

        goto LABEL_34;
      }

      v22 = objc_alloc_init(MEMORY[0x277D75D18]);
      v51 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2030];
      traitCollection = [(AXStyleProviderUIAlert *)v19 traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      v194 = imageCopy;
      if (userInterfaceStyle == 2)
      {
        v28 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2030];
      }

      else
      {
        v28 = v51;
      }

      v56 = 20.0;
    }

    else
    {
      if (v20 == 4)
      {
        if (_UISolariumEnabled())
        {
          v49 = objc_alloc_init(MEMORY[0x277D75D68]);
        }

        else
        {
          v54 = objc_alloc(MEMORY[0x277D75D68]);
          v55 = [MEMORY[0x277D75210] effectWithStyle:1200];
          v49 = [v54 initWithEffect:v55];
        }

        v50 = v49;
        goto LABEL_27;
      }

      v22 = objc_alloc_init(MEMORY[0x277D75D18]);
      v25 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
      traitCollection2 = [(AXStyleProviderUIAlert *)v19 traitCollection];
      userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

      v194 = imageCopy;
      if (userInterfaceStyle2 == 2)
      {
        v28 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2030];
      }

      else
      {
        v28 = v25;
      }

      v56 = 30.0;
      if (type == 3)
      {
        v56 = 10.0;
      }
    }

    [v28 _setContinuousCornerRadius:v56];
    layer5 = [v28 layer];
    [layer5 setShadowRadius:10.0];

    layer6 = [v28 layer];
    LODWORD(v59) = 1050253722;
    [layer6 setShadowOpacity:v59];

    layer7 = [v28 layer];
    [layer7 setShadowOffset:{0.0, 10.0}];

    layer8 = [v28 layer];
    blackColor2 = [MEMORY[0x277D75348] blackColor];
    [layer8 setShadowColor:{objc_msgSend(blackColor2, "CGColor")}];

    [v22 addSubview:v28];
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    v63 = MEMORY[0x277CCAAD0];
    v64 = _NSDictionaryOfVariableBindings(&cfstr_Backdropview.isa, v28, 0);
    v65 = [v63 constraintsWithVisualFormat:@"H:|-[backdropView]-|" options:0 metrics:0 views:v64];
    [v22 addConstraints:v65];

    v23 = v28;
    v66 = MEMORY[0x277CCAAD0];
    v67 = _NSDictionaryOfVariableBindings(&cfstr_Backdropview.isa, v28, 0);
    v68 = [v66 constraintsWithVisualFormat:@"V:|-[backdropView]-|" options:0 metrics:0 views:v67];
    [v22 addConstraints:v68];

    imageCopy = v194;
    goto LABEL_34;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v24 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2030];
      goto LABEL_22;
    }

    v22 = objc_alloc_init(MEMORY[0x277D75D18]);
    v23 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
    [v23 _setContinuousCornerRadius:10.0];
    [v22 addSubview:v23];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = MEMORY[0x277CCAAD0];
    v30 = _NSDictionaryOfVariableBindings(&cfstr_Backdropview.isa, v23, 0);
    v31 = [v29 constraintsWithVisualFormat:@"H:|-[backdropView]-|" options:0 metrics:0 views:v30];
    [v22 addConstraints:v31];

    v32 = MEMORY[0x277CCAAD0];
    providerCopy = v197;
    v33 = _NSDictionaryOfVariableBindings(&cfstr_Backdropview.isa, v23, 0);
    v34 = [v32 constraintsWithVisualFormat:@"V:|-[backdropView]-|" options:0 metrics:0 views:v33];
    [v22 addConstraints:v34];
  }

  else if (v20)
  {
    v23 = 0;
    if (v20 == 1)
    {
      v24 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2020];
LABEL_22:
      v50 = v24;
LABEL_27:
      v22 = v50;
      v23 = v50;
    }
  }

  else
  {
    v41 = [providerCopy alertBackgroundImageForType:type];
    [providerCopy alertBackgroundImageCapInsetsForType:type];
    v43.f64[0] = v42;
    v43.f64[1] = v44;
    v46.f64[0] = v45;
    v46.f64[1] = v47;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v43, *MEMORY[0x277D768C8]), vceqq_f64(v46, *(MEMORY[0x277D768C8] + 16))))) & 1) == 0)
    {
      v48 = [v41 resizableImageWithCapInsets:?];

      v41 = v48;
    }

    v22 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v41];

    v23 = 0;
  }

LABEL_34:
  [v23 _continuousCornerRadius];
  v70 = v69;
  if (objc_opt_respondsToSelector())
  {
    [providerCopy alertBackgroundCornerRadiusForType:type];
    v70 = v71;
    if (fabs(v71) >= 2.22044605e-16)
    {
      [v23 _setContinuousCornerRadius:v71];
    }
  }

  v191 = textCopy;
  if (_UISolariumEnabled())
  {
    [v23 ax_setWantsGlassAppearance:1];
    layer9 = [v23 layer];
    [layer9 setCornerRadius:v70];

    [(AXStyleProviderUIAlert *)v19 setGlassView:v23];
  }

  v187 = v23;
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v193 = v22;
  [(AXStyleProviderUIAlert *)v19 addSubview:v22];
  layer10 = [(AXStyleProviderUIAlert *)v19 layer];
  [layer10 setAllowsGroupOpacity:v21 == 0];

  v74 = objc_opt_new();
  [v74 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AXStyleProviderUIAlert *)v19 addSubview:v74];
  v75 = imageCopy == 0;
  v76 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:&stru_284FF7328 attributes:0];
  v192 = v76;
  if (type == 7)
  {
    v77 = [v197 alertTextColorForType:7];
    v78 = [v197 alertTextFontForType:7];
    [v197 alertTextLineHeightOffsetForType:7];
    [AXStyleProviderUIAlert _appendParagraphWithText:v19 withImage:"_appendParagraphWithText:withImage:withTextColor:font:textAlignment:lineSpacing:paragraphSpacingBefore:toAttributedString:" withTextColor:v191 font:imageCopy textAlignment:v77 lineSpacing:v78 paragraphSpacingBefore:1 toAttributedString:v76];

    v186 = 0;
    imageCopy = 0;
LABEL_44:
    v198 = type == 7;
    goto LABEL_45;
  }

  v79 = [v197 alertTextColorForType:type];
  v80 = [v197 alertTextFontForType:type];
  [v197 alertTextLineHeightOffsetForType:type];
  [AXStyleProviderUIAlert _appendParagraphWithText:v19 withTextColor:"_appendParagraphWithText:withTextColor:font:textAlignment:lineSpacing:paragraphSpacingBefore:toAttributedString:" font:v191 textAlignment:v79 lineSpacing:v80 paragraphSpacingBefore:imageCopy == 0 toAttributedString:v76];

  v186 = type == 8;
  v198 = 1;
  if (type != 6 && type != 8)
  {
    goto LABEL_44;
  }

LABEL_45:
  v195 = imageCopy;
  v81 = objc_opt_new();
  [v81 setTranslatesAutoresizingMaskIntoConstraints:0];
  v190 = v81;
  if (subtitleTextCopy)
  {
    v82 = v198 ^ 1;
    if (type == 3)
    {
      v82 = 0;
    }

    if (v82)
    {
      v83 = [v197 alertSubtitleTextColorForType:type];
      v89 = [v197 alertSubtitleTextFontForType:type];
      [v197 alertSubtitleTextLineHeightOffsetForType:type];
      v91 = v90;
      [v197 alertSubtitleTextVerticalSpacingHeightWithTextForType:type];
      [(AXStyleProviderUIAlert *)v19 _appendParagraphWithText:subtitleTextCopy withTextColor:v83 font:v89 textAlignment:v75 lineSpacing:v192 paragraphSpacingBefore:v91 toAttributedString:v92];
    }

    else
    {
      v83 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:&stru_284FF7328 attributes:0];
      v84 = [v197 alertSubtitleTextColorForType:type];
      v85 = [v197 alertSubtitleTextFontForType:type];
      [v197 alertSubtitleTextLineHeightOffsetForType:type];
      v87 = v86;
      [v197 alertSubtitleTextVerticalSpacingHeightWithTextForType:type];
      [(AXStyleProviderUIAlert *)v19 _appendParagraphWithText:subtitleTextCopy withTextColor:v84 font:v85 textAlignment:v75 lineSpacing:v83 paragraphSpacingBefore:v87 toAttributedString:v88];

      [v81 setNumberOfLines:2];
      [v81 setAttributedText:v83];
      [v81 setLineBreakMode:4];
    }
  }

  [v74 addSubview:v81];
  v93 = objc_opt_new();
  [v93 setNumberOfLines:0];
  [v93 setAttributedText:v192];
  [v93 setLineBreakMode:0];
  [v93 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (type == 3)
  {
    [v93 setNumberOfLines:1];
    if ((v198 & 1) == 0 && !_UISolariumEnabled())
    {
      v94 = objc_alloc(MEMORY[0x277D75D68]);
      v95 = MEMORY[0x277D75D00];
      v96 = [MEMORY[0x277D75210] effectWithStyle:5];
      v97 = [v95 effectForBlurEffect:v96];
      v98 = [v94 initWithEffect:v97];

LABEL_58:
      [v98 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v74 addSubview:v98];
      contentView = [v98 contentView];
      [contentView addSubview:v93];

      contentView2 = [v98 contentView];
      v101 = MEMORY[0x277CCAAD0];
      _NSDictionaryOfVariableBindings(&cfstr_Label.isa, v93, 0);
      v103 = v102 = v98;
      v104 = [v101 constraintsWithVisualFormat:@"H:|[label]|" options:0 metrics:0 views:v103];
      [contentView2 addConstraints:v104];

      v189 = v102;
      contentView3 = [v102 contentView];
      v106 = MEMORY[0x277CCAAD0];
      v107 = _NSDictionaryOfVariableBindings(&cfstr_Label.isa, v93, 0);
      v108 = [v106 constraintsWithVisualFormat:@"V:|[label]|" options:0 metrics:0 views:v107];
      [contentView3 addConstraints:v108];

      providerCopy = v197;
      v22 = v193;
      goto LABEL_60;
    }

LABEL_57:
    v98 = objc_alloc_init(MEMORY[0x277D75D68]);
    goto LABEL_58;
  }

  providerCopy = v197;
  if (v198)
  {
    goto LABEL_57;
  }

  [v74 addSubview:v93];
  v189 = 0;
LABEL_60:
  imageCopy = v195;
  infoCopy = v188;
  if (!v195)
  {
    if (type == 3)
    {
      v124 = 1;
    }

    else
    {
      v124 = v198;
    }

    if (v124)
    {
      goto LABEL_72;
    }

    [v93 ax_constrainLayoutAttribute:3 asGreaterThanOrEqualToValueOfView:v74];
    goto LABEL_82;
  }

  v109 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v195];
  [v109 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (type == 3)
  {
    v110 = 1;
  }

  else
  {
    v110 = v198;
  }

  if ((v110 & 1) == 0)
  {
    [v74 addSubview:v109];
    [v93 ax_constrainLayoutAttribute:3 asGreaterThanOrEqualToValueOfView:v74];
    if (v109)
    {
LABEL_83:
      [v93 ax_constrainLayoutAttribute:2 asEqualToValueOfView:v74];
      [v93 ax_constrainLayoutAttribute:4 asLessThanOrEqualToValueOfView:v74];
      LODWORD(v130) = 1144750080;
      [v93 ax_constrainLayoutAttribute:3 asEqualToValueOfView:v74 priority:v130];
      LODWORD(v131) = 1144750080;
      [v93 ax_constrainLayoutAttribute:4 asEqualToValueOfView:v74 priority:v131];
      if (!v109)
      {
        goto LABEL_114;
      }

      v132 = 0;
      goto LABEL_100;
    }

LABEL_82:
    [v93 ax_constrainLayoutAttribute:1 asEqualToValueOfView:v74];
    v109 = 0;
    goto LABEL_83;
  }

  layer11 = [v109 layer];
  [layer11 setCornerRadius:4.0];

  layer12 = [v109 layer];
  [layer12 setMasksToBounds:1];

  [v74 addSubview:v109];
  if (v109)
  {
    v113 = [MEMORY[0x277CCAAD0] constraintWithItem:v189 attribute:5 relatedBy:0 toItem:v109 attribute:6 multiplier:1.0 constant:10.0];
    [v74 addConstraint:v113];

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
    v116 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D767F8]);

    if (v116 == NSOrderedDescending)
    {
      [v93 setNumberOfLines:0];
      v117 = MEMORY[0x277CCAAD0];
      v118 = 1.0;
      v119 = 10.0;
      v120 = v189;
      v121 = 3;
      v122 = v74;
      v123 = 3;
    }

    else
    {
      v117 = MEMORY[0x277CCAAD0];
      v118 = 1.0;
      v119 = 0.0;
      v120 = v189;
      v121 = 10;
      v122 = v109;
      v123 = 10;
    }

    v133 = [v117 constraintWithItem:v120 attribute:v121 relatedBy:0 toItem:v122 attribute:v123 multiplier:v118 constant:v119];
    [v74 addConstraint:v133];

    v129 = [MEMORY[0x277CCAAD0] constraintWithItem:v189 attribute:6 relatedBy:0 toItem:v74 attribute:6 multiplier:1.0 constant:-5.0];
    goto LABEL_87;
  }

LABEL_72:
  if (v198)
  {
    v125 = 24.0;
  }

  else
  {
    v125 = 5.0;
  }

  if (v198)
  {
    v126 = 8.0;
  }

  else
  {
    v126 = 13.0;
  }

  v127 = [MEMORY[0x277CCAAD0] constraintWithItem:v189 attribute:5 relatedBy:0 toItem:v74 attribute:5 multiplier:1.0 constant:v125];
  [v74 addConstraint:v127];

  v128 = [MEMORY[0x277CCAAD0] constraintWithItem:v189 attribute:6 relatedBy:0 toItem:v74 attribute:6 multiplier:1.0 constant:-v125];
  [v74 addConstraint:v128];

  v129 = [MEMORY[0x277CCAAD0] constraintWithItem:v189 attribute:3 relatedBy:0 toItem:v74 attribute:3 multiplier:1.0 constant:v126];
  v109 = 0;
LABEL_87:
  [v74 addConstraint:v129];

  if (v190)
  {
    v134 = 0.0;
    if (v198)
    {
      v135 = 24.0;
    }

    else
    {
      v134 = 5.0;
      v135 = 15.0;
    }

    if (v198)
    {
      v136 = -8.0;
    }

    else
    {
      v136 = -10.0;
    }

    if (v198)
    {
      v137 = -24.0;
    }

    else
    {
      v137 = -12.0;
    }

    v138 = [MEMORY[0x277CCAAD0] constraintWithItem:v190 attribute:3 relatedBy:0 toItem:v189 attribute:4 multiplier:1.0 constant:v134];
    [v74 addConstraint:v138];

    v139 = [MEMORY[0x277CCAAD0] constraintWithItem:v190 attribute:4 relatedBy:0 toItem:v74 attribute:4 multiplier:1.0 constant:v136];
    [v74 addConstraint:v139];

    v140 = [MEMORY[0x277CCAAD0] constraintWithItem:v190 attribute:5 relatedBy:0 toItem:v74 attribute:5 multiplier:1.0 constant:v135];
    [v74 addConstraint:v140];

    v141 = [MEMORY[0x277CCAAD0] constraintWithItem:v190 attribute:6 relatedBy:0 toItem:v74 attribute:6 multiplier:1.0 constant:v137];
    [v74 addConstraint:v141];
  }

  imageCopy = v195;
  providerCopy = v197;
  infoCopy = v188;
  if (v109)
  {
    [v109 ax_constrainLayoutAttribute:3 asEqualToValueOfView:v74 withOffset:13.0];
    v132 = 1;
    [v109 ax_constrainLayoutAttribute:1 asEqualToValueOfView:v74 withOffset:13.0];
LABEL_100:
    if (type == 7)
    {
      [v109 ax_constrainLayoutAttribute:3 asEqualToValueOfView:v74 withOffset:13.0];
      [v109 ax_constrainLayoutAttribute:1 asEqualToValueOfView:v74 withOffset:18.0];
    }

    else
    {
      [providerCopy alertIconImageEdgeInsetsForType:type];
      v143 = v142;
      v145 = v144;
      v147 = v146;
      [v109 ax_constrainLayoutAttribute:1 asEqualToValueOfView:v74 withOffset:v148];
      [v109 ax_constrainLayoutAttribute:2 asEqualToLayoutAttribute:1 ofView:v93 withOffset:-v147];
      [v109 ax_constrainLayoutAttribute:3 asGreaterThanOrEqualToValueOfView:v74 withOffset:v143];
      [v109 ax_constrainLayoutAttribute:4 asLessThanOrEqualToValueOfView:v74 withOffset:-v145];
      [v109 ax_constrainLayoutAttribute:10 asEqualToValueOfView:v74 withOffset:(v143 - v145) * 0.5];
      LODWORD(v149) = 1132068864;
      [v109 ax_constrainLayoutAttribute:3 asEqualToValueOfView:v74 withOffset:v143 priority:v149];
      LODWORD(v150) = 1132068864;
      [v109 ax_constrainLayoutAttribute:4 asEqualToValueOfView:v74 withOffset:-v145 priority:v150];
    }

    [imageCopy size];
    v153 = v152;
    if (v132)
    {
      mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
      preferredContentSizeCategory2 = [mEMORY[0x277D75128]2 preferredContentSizeCategory];
      v156 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory2, *MEMORY[0x277D767F8]);

      if (v156 == NSOrderedDescending)
      {
        v157 = 40.0;
      }

      else
      {
        mEMORY[0x277D75128]3 = [MEMORY[0x277D75128] sharedApplication];
        preferredContentSizeCategory3 = [mEMORY[0x277D75128]3 preferredContentSizeCategory];
        v161 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory3, *MEMORY[0x277D76818]);

        v157 = 30.0;
        if (v161 != NSOrderedDescending)
        {
          mEMORY[0x277D75128]4 = [MEMORY[0x277D75128] sharedApplication];
          preferredContentSizeCategory4 = [mEMORY[0x277D75128]4 preferredContentSizeCategory];
          v164 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory4, *MEMORY[0x277D76828]);

          v157 = 20.0;
          if (v164 == NSOrderedDescending)
          {
            v157 = 25.0;
          }
        }
      }

      if (v157 < v153)
      {
        v153 = v157;
      }

      v158 = v153;
      imageCopy = v195;
      providerCopy = v197;
    }

    else
    {
      v158 = v151;
    }

    [v109 ax_constrainLayoutAttribute:7 asEqualToConstant:v153];
    [v109 ax_constrainLayoutAttribute:8 asEqualToConstant:v158];
  }

LABEL_114:
  [providerCopy alertBackgroundSizeForType:type];
  v167 = v165;
  v168 = v166;
  v169 = v165 > 0.0 && vabdd_f64(v165, *&AXUIAlertSizeMetricFitting) >= 2.22044605e-16 && vabdd_f64(v165, *&AXUIAlertSizeMetricFillingContainer) >= 2.22044605e-16;
  if (v166 > 0.0 && vabdd_f64(v166, *&AXUIAlertSizeMetricFitting) >= 2.22044605e-16)
  {
    v170 = vabdd_f64(v166, *&AXUIAlertSizeMetricFillingContainer) >= 2.22044605e-16;
    if (!v169)
    {
      goto LABEL_125;
    }
  }

  else
  {
    v170 = 0;
    if (!v169)
    {
LABEL_125:
      if (v170)
      {
        goto LABEL_126;
      }

      goto LABEL_133;
    }
  }

  if ([providerCopy alertShouldGrowInAxis:0 forType:type])
  {
    [v22 ax_constrainLayoutAttribute:7 asGreaterThanOrEqualToConstant:v167];
    goto LABEL_125;
  }

  [v22 ax_constrainLayoutAttribute:7 asEqualToConstant:v167];
  if (v170)
  {
LABEL_126:
    if ([providerCopy alertShouldGrowInAxis:1 forType:type])
    {
      [v22 ax_constrainLayoutAttribute:8 asGreaterThanOrEqualToConstant:v168];
    }

    else if (type != 3 && v198 != type)
    {
      [v22 ax_constrainLayoutAttribute:8 asEqualToConstant:v168];
    }
  }

LABEL_133:
  [providerCopy alertContentEdgeInsetsForType:type];
  v172 = v171;
  v174 = v173;
  v176 = v175;
  [v74 ax_constrainLayoutAttribute:1 asEqualToValueOfView:v19 withOffset:v177];
  [v74 ax_constrainLayoutAttribute:2 asEqualToValueOfView:v19 withOffset:-v176];
  if ((AXDeviceHasHomeButton() & 1) != 0 || !AXDeviceIsPhone())
  {
    [v74 ax_constrainLayoutAttribute:3 asEqualToValueOfView:v19 withOffset:v172];
  }

  else
  {
    topAnchor = [v74 topAnchor];
    safeAreaLayoutGuide = [(AXStyleProviderUIAlert *)v19 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v181 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v181 setActive:1];

    imageCopy = v195;
    providerCopy = v197;
  }

  [v74 ax_constrainLayoutAttribute:4 asEqualToValueOfView:v19 withOffset:-v174];
  [v22 ax_constrainLayoutAttribute:9 asEqualToValueOfView:v19];
  [v22 ax_constrainLayoutAttribute:7 asEqualToValueOfView:v19];
  if (v198)
  {
    [v22 ax_constrainLayoutAttribute:8 asEqualToValueOfView:v19 withOffset:10.0];
    v182 = 3.0;
    if (v186)
    {
      v182 = -3.0;
    }

    [v22 ax_constrainLayoutAttribute:4 asEqualToValueOfView:v19 withOffset:v182];
  }

  else
  {
    [v22 ax_constrainLayoutAttribute:8 asEqualToValueOfView:v19];
    [v22 ax_constrainLayoutAttribute:10 asEqualToValueOfView:v19];
  }

  [(AXStyleProviderUIAlert *)v19 setAlertType:type];
  [(AXStyleProviderUIAlert *)v19 setStyleProvider:providerCopy];
  v183 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v19 action:sel__handleTapGestureRecognizer_];
  [v74 addGestureRecognizer:v183];
  v184 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v19 action:sel__handlePanGestureRecognizer_];
  [v184 setMaximumNumberOfTouches:1];
  [v74 addGestureRecognizer:v184];

  textCopy = v191;
LABEL_143:

  return v19;
}

- (void)_handleTapGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  [recognizerCopy locationInView:self];
  if (-[AXStyleProviderUIAlert pointInside:withEvent:](self, "pointInside:withEvent:", 0) && (!recognizerCopy || [recognizerCopy state] == 3))
  {
    context = [(AXUIAlert *)self context];
    service = [context service];
    if ([service conformsToProtocol:&unk_2850141E0])
    {
      context2 = [(AXUIAlert *)self context];
      service2 = [context2 service];
    }

    else
    {
      service2 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      context3 = [(AXUIAlert *)self context];
      identifier = [context3 identifier];
      userInfo = [(AXUIAlert *)self userInfo];
      [service2 alertWithIdentifierWasActivated:identifier userInfo:userInfo];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_12:

        goto LABEL_13;
      }

      context3 = [(AXUIAlert *)self context];
      identifier = [context3 identifier];
      [service2 alertWithIdentifierWasActivated:identifier];
    }

    goto LABEL_12;
  }

LABEL_13:

  MEMORY[0x2821F96F8]();
}

- (void)_handlePanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  state = [recognizerCopy state];
  if (state <= 2)
  {
    if (state == 1)
    {
      [recognizerCopy locationInView:self];
      self->_dismissalGestureYOffset = v7;
      [(AXStyleProviderUIAlert *)self frame];
      self->_backgroundViewDismissalOrigin.x = v8;
      self->_backgroundViewDismissalOrigin.y = v9;
    }

    else
    {
      v5 = state == 2;
      v6 = recognizerCopy;
      if (!v5)
      {
        goto LABEL_13;
      }
    }

    [(AXStyleProviderUIAlert *)self _updateDismissalWithPanGesture:recognizerCopy];
LABEL_12:
    v6 = recognizerCopy;
    goto LABEL_13;
  }

  if (state == 3)
  {
    [(AXStyleProviderUIAlert *)self _endDismissalWithPanGesture:recognizerCopy];
    goto LABEL_12;
  }

  v5 = state == 4;
  v6 = recognizerCopy;
  if (v5)
  {
    [(AXStyleProviderUIAlert *)self _cancelDismissalWithPanGesture:recognizerCopy];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_updateDismissalWithPanGesture:(id)gesture
{
  [gesture translationInView:self];
  v5 = v4;
  [(AXStyleProviderUIAlert *)self frame];
  [(AXStyleProviderUIAlert *)self setFrame:?];
  [(AXStyleProviderUIAlert *)self frame];
  v6 = -v5 / CGRectGetHeight(v8);

  [(AXStyleProviderUIAlert *)self _updateViewForDismissalPercentage:v6];
}

- (void)_updateViewForDismissalPercentage:(double)percentage
{
  if (percentage <= 0.0)
  {
    [(AXStyleProviderUIAlert *)self frame];
    x = self->_backgroundViewDismissalOrigin.x;
    y = self->_backgroundViewDismissalOrigin.y;

    [(AXStyleProviderUIAlert *)self setFrame:x, y];
  }

  else if (percentage > 0.3)
  {

    [(AXStyleProviderUIAlert *)self _endDismissalWithPanGesture:0];
  }
}

- (void)_endDismissalWithPanGesture:(id)gesture
{
  gestureCopy = gesture;
  [gestureCopy translationInView:self];
  v6 = v5;
  [gestureCopy velocityInView:self];
  v8 = v7;

  [(AXStyleProviderUIAlert *)self frame];
  Height = CGRectGetHeight(v24);
  if (v8 > 800.0 || (Height = -v6 / Height, Height > 0.3))
  {
    context = [(AXUIAlert *)self context];
    service = [context service];
    if ([service conformsToProtocol:&unk_2850141E0])
    {
      context2 = [(AXUIAlert *)self context];
      service2 = [context2 service];
    }

    else
    {
      service2 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      context3 = [(AXUIAlert *)self context];
      identifier = [context3 identifier];
      [service2 alertWithIdentifierDidDisappear:identifier];
    }

    v15 = +[AXUIDisplayManager sharedDisplayManager];
    context4 = [(AXUIAlert *)self context];
    identifier2 = [context4 identifier];
    context5 = [(AXUIAlert *)self context];
    service3 = [context5 service];
    [v15 hideAlertWithIdentifier:identifier2 forService:service3];
  }

  else
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __54__AXStyleProviderUIAlert__endDismissalWithPanGesture___block_invoke;
    v22[3] = &unk_278BF3050;
    v22[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v22 animations:0.2];
  }
}

- (void)_cancelDismissalWithPanGesture:(id)gesture
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__AXStyleProviderUIAlert__cancelDismissalWithPanGesture___block_invoke;
  v3[3] = &unk_278BF3050;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.2];
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = AXStyleProviderUIAlert;
  [(AXStyleProviderUIAlert *)&v30 layoutSubviews];
  if (_UISolariumEnabled())
  {
    glassView = [(AXStyleProviderUIAlert *)self glassView];
    superview = [glassView superview];
    [superview layoutIfNeeded];

    if ([(AXStyleProviderUIAlert *)self alertType]== 2 || [(AXStyleProviderUIAlert *)self alertType]== 4)
    {
      window = [(AXStyleProviderUIAlert *)self window];
      screen = [window screen];
      traitCollection = [screen traitCollection];
      [traitCollection displayCornerRadius];
      v9 = v8;

      glassView2 = [(AXStyleProviderUIAlert *)self glassView];
      layer = [glassView2 layer];
      memset(v25, 0, sizeof(v25));
      v26 = v9;
      v27 = v9;
      v28 = v9;
      v29 = v9;
      [layer setCornerRadii:v25];
    }

    else
    {
      alertType = [(AXStyleProviderUIAlert *)self alertType];
      glassView3 = [(AXStyleProviderUIAlert *)self glassView];
      v14 = glassView3;
      if (alertType)
      {
        [glassView3 _continuousCornerRadius];
        v16 = v15;
        glassView4 = [(AXStyleProviderUIAlert *)self glassView];
        [glassView4 frame];
        v19 = v18 * 0.5;
        glassView5 = [(AXStyleProviderUIAlert *)self glassView];
        [glassView5 frame];
        v22 = fmin(v16, fmin(v19, v21 * 0.5));
      }

      else
      {
        [glassView3 frame];
        AXCornerRadiusForBackgroundWithSize();
        v22 = v23;
      }

      glassView6 = [(AXStyleProviderUIAlert *)self glassView];
      [glassView6 _setContinuousCornerRadius:v22];

      glassView2 = [(AXStyleProviderUIAlert *)self glassView];
      layer = [glassView2 layer];
      [layer setCornerRadius:v22];
    }
  }
}

- (void)addToContainerView:(id)view
{
  viewCopy = view;
  [(AXStyleProviderUIAlert *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  [viewCopy addSubview:self];
  styleProvider = [(AXStyleProviderUIAlert *)self styleProvider];
  alertType = [(AXStyleProviderUIAlert *)self alertType];
  [styleProvider alertEdgeInsetsForType:alertType];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [styleProvider alertPositionForType:alertType];
  [styleProvider alertBackgroundSizeForType:alertType];
  v16 = vabdd_f64(v15, *&AXUIAlertSizeMetricFillingContainer);
  v18 = vabdd_f64(v17, *&AXUIAlertSizeMetricFillingContainer);
  v19 = v14 - 1;
  if ((v14 - 1) > 7)
  {
    v21 = -1;
    v20 = 1;
    v22 = 1;
    v23 = -1;
  }

  else
  {
    v20 = qword_23DBF3E30[v19];
    v21 = qword_23DBF3E70[v19];
    v22 = qword_23DBF3EB0[v19];
    v23 = qword_23DBF3EF0[v19];
  }

  if (v16 >= 2.22044605e-16)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  if (v16 >= 2.22044605e-16)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  if (v18 >= 2.22044605e-16)
  {
    v26 = v20;
  }

  else
  {
    v26 = 0;
  }

  if (v18 >= 2.22044605e-16)
  {
    v27 = v21;
  }

  else
  {
    v27 = 0;
  }

  [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:3 relatedBy:v26 toItem:viewCopy attribute:3 multiplier:1.0 constant:v7];
  [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:4 relatedBy:v27 toItem:viewCopy attribute:4 multiplier:1.0 constant:-v11];
  [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:1 relatedBy:v24 toItem:viewCopy attribute:1 multiplier:1.0 constant:v9];
  [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:2 relatedBy:v25 toItem:viewCopy attribute:2 multiplier:1.0 constant:-v13];
  if (v24)
  {
    v28 = v25 == 0;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:9 asEqualToValueOfView:viewCopy];
  }

  if (v26)
  {
    v29 = v27 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:10 asEqualToValueOfView:viewCopy];
  }

  if (v16 < 2.22044605e-16)
  {
    [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:7 asEqualToValueOfView:viewCopy withOffset:-(v9 + v13)];
  }

  if (v18 < 2.22044605e-16)
  {
    [(AXStyleProviderUIAlert *)self ax_constrainLayoutAttribute:8 asEqualToValueOfView:viewCopy withOffset:-(v7 + v11)];
  }
}

- (void)_appendParagraphWithText:(id)text withTextColor:(id)color font:(id)font textAlignment:(int64_t)alignment lineSpacing:(double)spacing paragraphSpacingBefore:(double)before toAttributedString:(id)string
{
  v40[1] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  stringCopy = string;
  fontCopy = font;
  textCopy = text;
  v19 = [stringCopy length];
  v20 = MEMORY[0x277D74118];
  if (v19)
  {
    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
    v22 = [defaultParagraphStyle mutableCopy];

    v23 = MEMORY[0x277D74300];
    [MEMORY[0x277D74300] labelFontSize];
    v24 = [v23 systemFontOfSize:?];
    [v24 lineHeight];
    [v22 setParagraphSpacingBefore:before - v25];

    v39 = *v20;
    v40[0] = v22;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v27 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n\n" attributes:v26];
    [stringCopy appendAttributedString:v27];
  }

  defaultParagraphStyle2 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v29 = [defaultParagraphStyle2 mutableCopy];

  [v29 setAlignment:alignment];
  if (fabs(spacing) >= 2.22044605e-16)
  {
    [v29 setLineSpacing:spacing];
  }

  v30 = colorCopy;
  v31 = v30;
  if (!v30)
  {
    v32 = v20;
    traitCollection = [(AXStyleProviderUIAlert *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    v31 = ;
    v20 = v32;
  }

  v35 = objc_alloc(MEMORY[0x277CBEAC0]);
  v36 = [v35 initWithObjectsAndKeys:{v29, *v20, fontCopy, *MEMORY[0x277D740A8], v31, *MEMORY[0x277D740C0], 0}];

  v37 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy attributes:v36];
  [stringCopy appendAttributedString:v37];
}

- (void)_appendParagraphWithText:(id)text withImage:(id)image withTextColor:(id)color font:(id)font textAlignment:(int64_t)alignment lineSpacing:(double)spacing paragraphSpacingBefore:(double)before toAttributedString:(id)self0
{
  colorCopy = color;
  v18 = MEMORY[0x277D74248];
  stringCopy = string;
  fontCopy = font;
  imageCopy = image;
  textCopy = text;
  defaultParagraphStyle = [v18 defaultParagraphStyle];
  v24 = [defaultParagraphStyle mutableCopy];

  [v24 setAlignment:alignment];
  if (fabs(spacing) >= 2.22044605e-16)
  {
    [v24 setLineSpacing:spacing];
  }

  v25 = colorCopy;
  v34 = v25;
  if (!v25)
  {
    traitCollection = [(AXStyleProviderUIAlert *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    v25 = ;
  }

  v28 = objc_alloc(MEMORY[0x277CBEAC0]);
  v29 = [v28 initWithObjectsAndKeys:{v24, *MEMORY[0x277D74118], fontCopy, *MEMORY[0x277D740A8], v25, *MEMORY[0x277D740C0], 0}];

  v30 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy attributes:v29];
  v31 = objc_alloc_init(MEMORY[0x277D74270]);
  [v31 setImage:imageCopy];

  v32 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v31 attributes:v29];
  [stringCopy appendAttributedString:v32];

  v33 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"  "];
  [stringCopy appendAttributedString:v33];

  [stringCopy appendAttributedString:v30];
}

@end