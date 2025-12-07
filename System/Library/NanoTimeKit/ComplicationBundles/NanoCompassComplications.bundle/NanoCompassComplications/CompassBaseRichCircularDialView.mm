@interface CompassBaseRichCircularDialView
- (id)_gossamer_newNeedleView;
- (id)_needleNorthImageName;
- (id)_needleShadowImageName;
- (id)_needleSouthImageName;
- (id)_newNeedleAODView;
- (id)_newNeedleView;
- (id)_newTicksView;
- (id)_pregossamer_newNeedleView;
- (id)_ticksImageName;
- (id)directionRedactionLabel;
- (id)headingRedactionLabel;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)monochromeAccentViews;
- (id)monochromeOtherViews;
- (int64_t)_supportedFamily;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
@end

@implementation CompassBaseRichCircularDialView

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v36.receiver = self;
  v36.super_class = CompassBaseRichCircularDialView;
  v6 = [(CompassRichDialView *)&v36 initFullColorImageViewWithDevice:deviceCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 57, device);
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v8 = v7[57];
    v11 = objc_msgSend__supportedFamily(v7, v9, v10);
    sub_23BD3D108(v8, v11, &v33);
    v12 = v34;
    v14 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], v13, v34, v33);
    v15 = objc_opt_new();
    v16 = v7[58];
    v7[58] = v15;

    v18 = NanoCompassAppTintColor(v17);
    objc_msgSend_setTextColor_(v7[58], v19, v18);

    objc_msgSend_setFont_(v7[58], v20, v14);
    objc_msgSend_setTextAlignment_(v7[58], v21, 1);
    objc_msgSend_addSubview_(v7, v22, v7[58]);
    v23 = objc_opt_new();
    v24 = v7[59];
    v7[59] = v23;

    v27 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v25, v26);
    objc_msgSend_setTextColor_(v7[59], v28, v27);

    objc_msgSend_setFont_(v7[59], v29, v14);
    objc_msgSend_setTextAlignment_(v7[59], v30, 1);
    objc_msgSend_addSubview_(v7, v31, v7[59]);
  }

  return v7;
}

- (id)_newTicksView
{
  v4 = objc_msgSend__ticksImageName(self, a2, v2);
  v5 = NanoCompassComplicationImageNamed(v4);

  v6 = objc_alloc(MEMORY[0x277D755E8]);
  v8 = objc_msgSend_initWithImage_(v6, v7, v5);
  ticks = self->_ticks;
  self->_ticks = v8;

  v10 = self->_ticks;
  return v10;
}

- (id)_newNeedleView
{
  if (objc_msgSend_supportsGossamer(self, a2, v2))
  {
    objc_msgSend__gossamer_newNeedleView(self, v4, v5);
  }

  else
  {
    objc_msgSend__pregossamer_newNeedleView(self, v4, v5);
  }

  return objc_claimAutoreleasedReturnValue();
}

- (id)_newNeedleAODView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  objc_msgSend_bounds(self, v4, v5);

  return objc_msgSend_initWithFrame_(v3, v6, v7);
}

- (id)_gossamer_newNeedleView
{
  v4 = objc_msgSend__needleNorthImageName(self, a2, v2);
  v5 = NanoCompassComplicationImageNamed(v4);

  v7 = NanoCompassAppTintColor(v6);
  v9 = objc_msgSend_imageWithTintColor_(v5, v8, v7);

  v10 = objc_alloc(MEMORY[0x277D755E8]);
  v12 = objc_msgSend_initWithImage_(v10, v11, v9);
  north = self->_north;
  self->_north = v12;

  v16 = objc_msgSend__ticksImageName(self, v14, v15);
  v17 = NanoCompassComplicationImageNamed(v16);

  objc_msgSend_size(v17, v18, v19);
  v21 = v20;
  v23 = v22;
  v24 = *MEMORY[0x277CBF348];
  v25 = *(MEMORY[0x277CBF348] + 8);
  v26 = objc_alloc(MEMORY[0x277D75D18]);
  v29 = objc_msgSend_initWithFrame_(v26, v27, v28, v24, v25, v21, v23);
  objc_msgSend_addSubview_(v29, v30, self->_north);

  return v29;
}

- (id)_pregossamer_newNeedleView
{
  v4 = objc_msgSend__needleNorthImageName(self, a2, v2);
  v5 = NanoCompassComplicationImageNamed(v4);

  v6 = objc_alloc(MEMORY[0x277D755E8]);
  v8 = objc_msgSend_initWithImage_(v6, v7, v5);
  north = self->_north;
  self->_north = v8;

  v12 = objc_msgSend__needleSouthImageName(self, v10, v11);
  v13 = NanoCompassComplicationImageNamed(v12);

  v14 = objc_alloc(MEMORY[0x277D755E8]);
  v16 = objc_msgSend_initWithImage_(v14, v15, v13);
  south = self->_south;
  self->_south = v16;

  v20 = objc_msgSend__needleShadowImageName(self, v18, v19);
  v21 = NanoCompassComplicationImageNamed(v20);

  v22 = objc_alloc(MEMORY[0x277D755E8]);
  v24 = objc_msgSend_initWithImage_(v22, v23, v21);
  objc_msgSend_bounds(v24, v25, v26);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = objc_alloc(MEMORY[0x277D75D18]);
  v38 = objc_msgSend_initWithFrame_(v35, v36, v37, v28, v30, v32, v34);
  objc_msgSend_addSubview_(v38, v39, v24);
  objc_msgSend_addSubview_(v38, v40, self->_south);
  objc_msgSend_addSubview_(v38, v41, self->_north);

  return v38;
}

- (id)monochromeAccentViews
{
  v5[2] = *MEMORY[0x277D85DE8];
  headingLabel = self->_headingLabel;
  v5[0] = self->_north;
  v5[1] = headingLabel;
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, 2);

  return v3;
}

- (id)monochromeOtherViews
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_supportsGossamer(self, a2, v2))
  {
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v8, 2, v7, self->_ticks, self->_directionLabel);
  }

  else
  {
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, &v7, 1, self->_south, v8[0], v8[1]);
  }
  v5 = ;

  return v5;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  v42.receiver = self;
  v42.super_class = CompassBaseRichCircularDialView;
  [(CompassRichDialView *)&v42 configureWithImageProvider:providerCopy reason:reason];
  v9 = objc_msgSend_metadata(providerCopy, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"heading");

  v14 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);
  isEqual = objc_msgSend_isEqual_(v11, v15, v14);

  if (isEqual)
  {

    v11 = 0;
  }

  v19 = objc_msgSend_metadata(providerCopy, v17, v18);
  v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, @"nodata");
  v24 = objc_msgSend_BOOLValue(v21, v22, v23);

  if (v11)
  {
    v27 = v24 == 0;
  }

  else
  {
    v27 = 0;
  }

  if (v27)
  {
    v32 = NanoCompassFormattedHeading(v11, 0, 0);
    objc_msgSend_setText_(self->_headingLabel, v33, v32);

    NanoCompassFormattedHeadingDirection(v11);
  }

  else
  {
    v28 = objc_msgSend_headingRedactionLabel(self, v25, v26);
    objc_msgSend_setText_(self->_headingLabel, v29, v28);

    objc_msgSend_directionRedactionLabel(self, v30, v31);
  }
  v34 = ;
  objc_msgSend_setText_(self->_directionLabel, v35, v34);

  objc_msgSend_sizeToFit(self->_headingLabel, v36, v37);
  objc_msgSend_sizeToFit(self->_directionLabel, v38, v39);
  objc_msgSend_setNeedsLayout(self, v40, v41);
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = CompassBaseRichCircularDialView;
  [(CompassRichDialView *)&v24 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  device = self->_device;
  v8 = objc_msgSend__supportedFamily(self, v6, v7, 0, 0);
  sub_23BD3D108(device, v8, &v21);
  objc_msgSend_frame(self->_headingLabel, v9, v10);
  objc_msgSend__lastLineBaseline(self->_headingLabel, v11, v12);
  CLKRectCenteredXInRectForDevice();
  objc_msgSend_setFrame_(self->_headingLabel, v13, v14);
  objc_msgSend_frame(self->_directionLabel, v15, v16);
  objc_msgSend__lastLineBaseline(self->_directionLabel, v17, v18);
  CLKRectCenteredXInRectForDevice();
  objc_msgSend_setFrame_(self->_directionLabel, v19, v20);
}

- (id)headingRedactionLabel
{
  if (qword_27E1C50C0 != -1)
  {
    sub_23BD660CC();
  }

  v3 = qword_27E1C50B8;

  return v3;
}

- (id)directionRedactionLabel
{
  if (qword_27E1C50D0 != -1)
  {
    sub_23BD660E0();
  }

  v3 = qword_27E1C50C8;

  return v3;
}

- (int64_t)_supportedFamily
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  return 10;
}

- (id)_ticksImageName
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  return 0;
}

- (id)_needleNorthImageName
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  return 0;
}

- (id)_needleSouthImageName
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  return 0;
}

- (id)_needleShadowImageName
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  return 0;
}

@end