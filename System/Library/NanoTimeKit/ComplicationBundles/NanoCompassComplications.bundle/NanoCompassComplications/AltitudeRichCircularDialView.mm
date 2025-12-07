@interface AltitudeRichCircularDialView
- (CircularLayoutConstants)_layoutConstantsForDevice:(id)device;
- (id)_threeLineConstraints;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)monochromeAccentViews;
- (id)monochromeOtherViews;
- (id)unitFont;
- (id)valueFont;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
@end

@implementation AltitudeRichCircularDialView

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v66.receiver = self;
  v66.super_class = AltitudeRichCircularDialView;
  v5 = [(NanoCompassBaseRichView *)&v66 initFullColorImageViewWithDevice:deviceCopy];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setClipsToBounds_(v5, v6, 1);
    objc_msgSend__layoutConstantsForDevice_(v7, v8, deviceCopy);
    *(v7 + 58) = v9;
    *(v7 + 59) = v10;
    *(v7 + 60) = v11;
    *(v7 + 61) = v12;
    v13 = objc_alloc_init(MEMORY[0x277D756D0]);
    v14 = *(v7 + 54);
    *(v7 + 54) = v13;

    objc_msgSend_addLayoutGuide_(v7, v15, *(v7 + 54));
    v18 = objc_msgSend_configurationWithPointSize_(MEMORY[0x277D755D0], v16, v17, *(v7 + 59));
    v20 = objc_msgSend_systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v19, @"mountain.2.fill", v18);
    v21 = NanoCompassAppTintColor(v20);
    v23 = objc_msgSend_imageWithTintColor_renderingMode_(v20, v22, v21, 1);

    v24 = objc_alloc(MEMORY[0x277D755E8]);
    v26 = objc_msgSend_initWithImage_(v24, v25, v23);
    v27 = *(v7 + 55);
    *(v7 + 55) = v26;

    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(*(v7 + 55), v28, 0);
    objc_msgSend_setContentMode_(*(v7 + 55), v29, 1);
    objc_msgSend_addSubview_(v7, v30, *(v7 + 55));
    v31 = objc_opt_new();
    v32 = *(v7 + 56);
    *(v7 + 56) = v31;

    v35 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v33, v34);
    objc_msgSend_setTextColor_(*(v7 + 56), v36, v35);

    v39 = objc_msgSend_valueFont(v7, v37, v38);
    objc_msgSend_setFont_(*(v7 + 56), v40, v39);

    objc_msgSend_setTextAlignment_(*(v7 + 56), v41, 1);
    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(*(v7 + 56), v42, 0);
    objc_msgSend_addSubview_(v7, v43, *(v7 + 56));
    v44 = objc_opt_new();
    v45 = *(v7 + 57);
    *(v7 + 57) = v44;

    v48 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v46, v47);
    v51 = objc_msgSend_colorWithAlphaComponent_(v48, v49, v50, 0.6);
    objc_msgSend_setTextColor_(*(v7 + 57), v52, v51);

    v55 = objc_msgSend_unitFont(v7, v53, v54);
    objc_msgSend_setFont_(*(v7 + 57), v56, v55);

    objc_msgSend_setTextAlignment_(*(v7 + 57), v57, 1);
    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(*(v7 + 57), v58, 0);
    objc_msgSend_addSubview_(v7, v59, *(v7 + 57));
    v60 = MEMORY[0x277CCAAD0];
    v63 = objc_msgSend__threeLineConstraints(v7, v61, v62);
    objc_msgSend_activateConstraints_(v60, v64, v63);
  }

  return v7;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  v47.receiver = self;
  v47.super_class = AltitudeRichCircularDialView;
  [(NanoCompassBaseRichView *)&v47 configureWithImageProvider:providerCopy reason:reason];
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
    v27 = NanoCompassFormattedUncalibrated();
    objc_msgSend_setText_(self->_altitudeLabel, v28, v27);

    v32 = NanoCompassFormattedAltitudeUnits(v29, v30, v31);
    objc_msgSend_setText_(self->_unitLabel, v33, v32);
  }

  else
  {
    if (v11)
    {
      v34 = MEMORY[0x277CCABB0];
      objc_msgSend_altitude(v11, v25, v26);
      v32 = objc_msgSend_numberWithDouble_(v34, v35, v36);
      v39 = objc_msgSend_displayTilde(v11, v37, v38);
    }

    else
    {
      v32 = 0;
      v39 = 0;
    }

    v40 = NanoCompassValueWithFormat(v32, 0, v39);
    v42 = objc_msgSend_setText_(self->_altitudeLabel, v41, v40);
    v45 = NanoCompassFormattedAltitudeUnits(v42, v43, v44);
    objc_msgSend_setText_(self->_unitLabel, v46, v45);
  }
}

- (id)monochromeAccentViews
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_symbolView;
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);

  return v2;
}

- (id)monochromeOtherViews
{
  v5[2] = *MEMORY[0x277D85DE8];
  unitLabel = self->_unitLabel;
  v5[0] = self->_altitudeLabel;
  v5[1] = unitLabel;
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, 2);

  return v3;
}

- (CircularLayoutConstants)_layoutConstantsForDevice:(id)device
{
  sub_23BD2B1F4(self, device);
  v3 = *&qword_27E1C4AC8;
  v4 = *&qword_27E1C4AD0;
  v5 = *&qword_27E1C4AD8;
  v6 = *&qword_27E1C4AE0;
  result.valueFontSize = v6;
  result.unitFontSize = v5;
  result.symbolSize = v4;
  result.lineSpacing = v3;
  return result;
}

- (id)_threeLineConstraints
{
  v98[12] = *MEMORY[0x277D85DE8];
  v97 = objc_msgSend_leadingAnchor(self->_layoutGuide, a2, v2);
  v96 = objc_msgSend_leadingAnchor(self, v4, v5);
  v95 = objc_msgSend_constraintEqualToAnchor_(v97, v6, v96);
  v98[0] = v95;
  v94 = objc_msgSend_trailingAnchor(self->_layoutGuide, v7, v8);
  v93 = objc_msgSend_trailingAnchor(self, v9, v10);
  v92 = objc_msgSend_constraintEqualToAnchor_(v94, v11, v93);
  v98[1] = v92;
  v91 = objc_msgSend_topAnchor(self->_layoutGuide, v12, v13);
  v90 = objc_msgSend_topAnchor(self, v14, v15);
  p_layoutConstants = &self->_layoutConstants;
  v89 = objc_msgSend_constraintEqualToAnchor_constant_(v91, v17, v90, self->_layoutConstants.lineSpacing);
  v98[2] = v89;
  v88 = objc_msgSend_bottomAnchor(self->_layoutGuide, v18, v19);
  v87 = objc_msgSend_bottomAnchor(self, v20, v21);
  v86 = objc_msgSend_constraintEqualToAnchor_constant_(v88, v22, v87, -self->_layoutConstants.lineSpacing);
  v98[3] = v86;
  v85 = objc_msgSend_topAnchor(self->_symbolView, v23, v24);
  v84 = objc_msgSend_topAnchor(self->_layoutGuide, v25, v26);
  v83 = objc_msgSend_constraintEqualToAnchor_(v85, v27, v84);
  v98[4] = v83;
  v82 = objc_msgSend_centerXAnchor(self->_symbolView, v28, v29);
  v81 = objc_msgSend_centerXAnchor(self->_layoutGuide, v30, v31);
  v80 = objc_msgSend_constraintEqualToAnchor_(v82, v32, v81);
  v98[5] = v80;
  v79 = objc_msgSend_heightAnchor(self->_symbolView, v33, v34);
  v78 = objc_msgSend_constraintEqualToConstant_(v79, v35, v36, self->_layoutConstants.symbolSize);
  v98[6] = v78;
  v77 = objc_msgSend_centerXAnchor(self->_altitudeLabel, v37, v38);
  v76 = objc_msgSend_centerXAnchor(self->_layoutGuide, v39, v40);
  v75 = objc_msgSend_constraintEqualToAnchor_(v77, v41, v76);
  v98[7] = v75;
  v74 = objc_msgSend_centerYAnchor(self->_altitudeLabel, v42, v43);
  v73 = objc_msgSend_centerYAnchor(self->_layoutGuide, v44, v45);
  v47 = objc_msgSend_constraintEqualToAnchor_(v74, v46, v73);
  v98[8] = v47;
  v50 = objc_msgSend_bottomAnchor(self->_unitLabel, v48, v49);
  v53 = objc_msgSend_bottomAnchor(self->_layoutGuide, v51, v52);
  v55 = objc_msgSend_constraintEqualToAnchor_(v50, v54, v53);
  v98[9] = v55;
  v58 = objc_msgSend_centerXAnchor(self->_unitLabel, v56, v57);
  v61 = objc_msgSend_centerXAnchor(self->_layoutGuide, v59, v60);
  v63 = objc_msgSend_constraintEqualToAnchor_(v58, v62, v61);
  v98[10] = v63;
  v66 = objc_msgSend_heightAnchor(self->_unitLabel, v64, v65);
  v69 = objc_msgSend_constraintEqualToConstant_(v66, v67, v68, p_layoutConstants->unitFontSize);
  v98[11] = v69;
  v71 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v70, v98, 12);

  return v71;
}

- (id)valueFont
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD2AFE0;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  if (qword_27E1C4AA8 != -1)
  {
    dispatch_once(&qword_27E1C4AA8, block);
  }

  return qword_27E1C4AA0;
}

- (id)unitFont
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD2B0E4;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  if (qword_27E1C4AC0 != -1)
  {
    dispatch_once(&qword_27E1C4AC0, block);
  }

  return qword_27E1C4AB0;
}

@end