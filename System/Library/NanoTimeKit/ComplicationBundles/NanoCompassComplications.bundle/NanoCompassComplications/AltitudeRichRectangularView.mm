@interface AltitudeRichRectangularView
- (RectLayoutConstants)_layoutConstantsForDevice:(id)device;
- (id)_altitudeLabel;
- (id)_constraints;
- (id)_createVerticalStackViewWithLabels:(id)labels;
- (id)_headlineLabel;
- (id)contentFont;
- (id)headlineFont;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)monochromeAccentViews;
- (id)monochromeOtherViews;
- (id)redactionLabel;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
@end

@implementation AltitudeRichRectangularView

- (id)initFullColorImageViewWithDevice:(id)device
{
  v41[2] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v40.receiver = self;
  v40.super_class = AltitudeRichRectangularView;
  v5 = [(NanoCompassBaseRichView *)&v40 initFullColorImageViewWithDevice:deviceCopy];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setClipsToBounds_(v5, v6, 1);
    objc_msgSend__layoutConstantsForDevice_(v7, v8, deviceCopy);
    *(v7 + 58) = v9;
    *(v7 + 59) = v10;
    *(v7 + 60) = v11;
    v12 = objc_alloc_init(MEMORY[0x277D756D0]);
    v13 = *(v7 + 61);
    *(v7 + 61) = v12;

    objc_msgSend_addLayoutGuide_(v7, v14, *(v7 + 61));
    objc_msgSend_screenBounds(deviceCopy, v15, v16);
    v18 = v17 * 0.042;
    *(v7 + 57) = ceilf(v18);
    v21 = objc_msgSend__headlineLabel(v7, v19, v20);
    v22 = *(v7 + 55);
    *(v7 + 55) = v21;

    v25 = objc_msgSend__altitudeLabel(v7, v23, v24);
    v26 = *(v7 + 54);
    *(v7 + 54) = v25;

    v41[0] = *(v7 + 55);
    v41[1] = *(v7 + 54);
    v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v27, v41, 2);
    v30 = objc_msgSend__createVerticalStackViewWithLabels_(v7, v29, v28);
    v31 = *(v7 + 56);
    *(v7 + 56) = v30;

    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(*(v7 + 56), v32, 0);
    objc_msgSend_addSubview_(v7, v33, *(v7 + 56));
    v34 = MEMORY[0x277CCAAD0];
    v37 = objc_msgSend__constraints(v7, v35, v36);
    objc_msgSend_activateConstraints_(v34, v38, v37);
  }

  return v7;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  v37.receiver = self;
  v37.super_class = AltitudeRichRectangularView;
  [(NanoCompassBaseRichView *)&v37 configureWithImageProvider:providerCopy reason:reason];
  v9 = objc_msgSend_metadata(providerCopy, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"altitude");

  v14 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);
  isEqual = objc_msgSend_isEqual_(v11, v15, v14);

  if (isEqual)
  {

    v11 = 0;
  }

  v19 = objc_msgSend_metadata(providerCopy, v17, v18);
  v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, @"nodata");
  v24 = objc_msgSend_BOOLValue(v21, v22, v23);

  if (v24)
  {
    v27 = objc_msgSend_redactionLabel(self, v25, v26);
    objc_msgSend_setText_(self->_altitudeLabel, v28, v27);
  }

  else
  {
    if (v11)
    {
      v29 = MEMORY[0x277CCABB0];
      objc_msgSend_altitude(v11, v25, v26);
      v27 = objc_msgSend_numberWithDouble_(v29, v30, v31);
      v34 = objc_msgSend_displayTilde(v11, v32, v33);
    }

    else
    {
      v27 = 0;
      v34 = 0;
    }

    v35 = NanoCompassValueAndUnit(v27, 0, v34, 0);
    objc_msgSend_setText_(self->_altitudeLabel, v36, v35);
  }
}

- (id)monochromeAccentViews
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_headline;
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);

  return v2;
}

- (id)monochromeOtherViews
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_altitudeLabel;
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);

  return v2;
}

- (RectLayoutConstants)_layoutConstantsForDevice:(id)device
{
  sub_23BD465C0(self, device);
  v3 = *&qword_27E1C51E0;
  v4 = *&qword_27E1C51E8;
  v5 = *&qword_27E1C51F0;
  result.valueFontSize = v5;
  result.symbolSize = v4;
  result.headlineSize = v3;
  return result;
}

- (id)_altitudeLabel
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v4, v5);
  objc_msgSend_setTextColor_(v3, v7, v6);

  v10 = objc_msgSend_contentFont(self, v8, v9);
  objc_msgSend_setFont_(v3, v11, v10);

  return v3;
}

- (id)_headlineLabel
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_headlineFont(self, v4, v5);
  objc_msgSend_setFont_(v3, v7, v6);

  v9 = NanoCompassAppTintColor(v8);
  objc_msgSend_setTextColor_(v3, v10, v9);

  v11 = objc_alloc_init(MEMORY[0x277D74270]);
  v14 = objc_msgSend_configurationWithPointSize_(MEMORY[0x277D755D0], v12, v13, self->_layoutConstants.symbolSize);
  v16 = objc_msgSend_systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v15, @"mountain.2.fill", v14);
  v17 = NanoCompassAppTintColor(v16);
  v19 = objc_msgSend_imageWithTintColor_renderingMode_(v16, v18, v17, 1);
  objc_msgSend_setImage_(v11, v20, v19);

  v22 = objc_msgSend_attributedStringWithAttachment_(MEMORY[0x277CCA898], v21, v11);
  v23 = objc_alloc(MEMORY[0x277CCAB48]);
  v25 = objc_msgSend_initWithAttributedString_(v23, v24, v22);
  v26 = NanoCompassLocalizedString(@"ALTITUDE_ELEVATION_TEXT");
  v27 = objc_alloc(MEMORY[0x277CCA898]);
  v29 = objc_msgSend_initWithString_(v27, v28, v26);
  objc_msgSend_appendAttributedString_(v25, v30, v29);
  objc_msgSend_setAttributedText_(v3, v31, v25);

  return v3;
}

- (id)_createVerticalStackViewWithLabels:(id)labels
{
  v3 = MEMORY[0x277D75A68];
  labelsCopy = labels;
  v5 = [v3 alloc];
  v7 = objc_msgSend_initWithArrangedSubviews_(v5, v6, labelsCopy);

  objc_msgSend_setAlignment_(v7, v8, 1);
  objc_msgSend_setAxis_(v7, v9, 1);
  objc_msgSend_systemLayoutSizeFittingSize_(v7, v10, v11, *MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8));
  objc_msgSend_setFrame_(v7, v12, v13, 0.0, 0.0, v14, v15);

  return v7;
}

- (id)_constraints
{
  v53[6] = *MEMORY[0x277D85DE8];
  v52 = objc_msgSend_leadingAnchor(self->_layoutGuide, a2, v2);
  v51 = objc_msgSend_leadingAnchor(self, v4, v5);
  v50 = objc_msgSend_constraintEqualToAnchor_constant_(v52, v6, v51, self->_leadingMargin);
  v53[0] = v50;
  v49 = objc_msgSend_trailingAnchor(self->_layoutGuide, v7, v8);
  v48 = objc_msgSend_trailingAnchor(self, v9, v10);
  v47 = objc_msgSend_constraintEqualToAnchor_(v49, v11, v48);
  v53[1] = v47;
  v46 = objc_msgSend_topAnchor(self->_layoutGuide, v12, v13);
  v45 = objc_msgSend_topAnchor(self, v14, v15);
  v17 = objc_msgSend_constraintEqualToAnchor_(v46, v16, v45);
  v53[2] = v17;
  v20 = objc_msgSend_bottomAnchor(self->_layoutGuide, v18, v19);
  v23 = objc_msgSend_bottomAnchor(self, v21, v22);
  v25 = objc_msgSend_constraintEqualToAnchor_(v20, v24, v23);
  v53[3] = v25;
  v28 = objc_msgSend_centerYAnchor(self->_content, v26, v27);
  v31 = objc_msgSend_centerYAnchor(self->_layoutGuide, v29, v30);
  v33 = objc_msgSend_constraintEqualToAnchor_(v28, v32, v31);
  v53[4] = v33;
  v36 = objc_msgSend_leadingAnchor(self->_content, v34, v35);
  v39 = objc_msgSend_leadingAnchor(self->_layoutGuide, v37, v38);
  v41 = objc_msgSend_constraintEqualToAnchor_(v36, v40, v39);
  v53[5] = v41;
  v44 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v42, v53, 6);

  return v44;
}

- (id)headlineFont
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD4629C;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  if (qword_27E1C51B0 != -1)
  {
    dispatch_once(&qword_27E1C51B0, block);
  }

  return qword_27E1C51A0;
}

- (id)contentFont
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD463C0;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  if (qword_27E1C51C8 != -1)
  {
    dispatch_once(&qword_27E1C51C8, block);
  }

  return qword_27E1C51B8;
}

- (id)redactionLabel
{
  if (qword_27E1C51D8 != -1)
  {
    sub_23BD66C80();
  }

  v3 = qword_27E1C51D0;

  return v3;
}

@end