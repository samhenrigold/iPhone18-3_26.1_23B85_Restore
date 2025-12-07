@interface AltitudeRichCenterLabelDialView
- (id)_newBottomView;
- (id)_newTopView;
- (id)initFullColorImageViewWithDevice:(id)device withLayoutConstants:(LayoutConstants *)constants;
- (id)monochromeOtherViews;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutLabelInCenterWithTopAndBottomAssets;
@end

@implementation AltitudeRichCenterLabelDialView

- (id)initFullColorImageViewWithDevice:(id)device withLayoutConstants:(LayoutConstants *)constants
{
  deviceCopy = device;
  v25.receiver = self;
  v25.super_class = AltitudeRichCenterLabelDialView;
  v8 = [(AltitudeRichDialView *)&v25 initFullColorImageViewWithDevice:deviceCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 56, device);
    v11 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], v10, constants->var2, constants->var0, constants->var1);
    v14 = objc_msgSend_CLKFontWithLocalizedLowerCaseSmallCaps(v11, v12, v13);

    v15 = objc_opt_new();
    v16 = v9[57];
    v9[57] = v15;

    v19 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v17, v18);
    objc_msgSend_setTextColor_(v9[57], v20, v19);

    objc_msgSend_setFont_(v9[57], v21, v14);
    objc_msgSend_setTextAlignment_(v9[57], v22, 1);
    v9[58] = *&constants->var4;
    objc_msgSend_addSubview_(v9, v23, v9[57]);
  }

  return v9;
}

- (id)monochromeOtherViews
{
  v7.receiver = self;
  v7.super_class = AltitudeRichCenterLabelDialView;
  monochromeOtherViews = [(AltitudeRichDialView *)&v7 monochromeOtherViews];
  v5 = objc_msgSend_arrayByAddingObject_(monochromeOtherViews, v4, self->_altitudeLabel);

  return v5;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  v40.receiver = self;
  v40.super_class = AltitudeRichCenterLabelDialView;
  [(NanoCompassBaseRichView *)&v40 configureWithImageProvider:providerCopy reason:reason];
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

  altitudeLabel = self->_altitudeLabel;
  if (v24)
  {
    objc_msgSend_setHidden_(altitudeLabel, v25, 1);
  }

  else
  {
    objc_msgSend_setHidden_(altitudeLabel, v25, 0);
    if (v11)
    {
      v29 = MEMORY[0x277CCABB0];
      objc_msgSend_altitude(v11, v27, v28);
      v32 = objc_msgSend_numberWithDouble_(v29, v30, v31);
    }

    else
    {
      v32 = 0;
    }

    v33 = objc_msgSend_displayTilde(v11, v27, v28);
    v35 = NanoCompassValueAndUnit(v32, 0, v33, 0);
    if (v11)
    {
    }

    objc_msgSend_setText_(self->_altitudeLabel, v34, v35);
    objc_msgSend_sizeToFit(self->_altitudeLabel, v36, v37);
    objc_msgSend_setNeedsLayout(self, v38, v39);
  }
}

- (void)layoutLabelInCenterWithTopAndBottomAssets
{
  objc_msgSend_bounds(self, a2, v2);
  objc_msgSend_frame(self->_altitudeLabel, v4, v5);
  CLKRectCenteredIntegralRectForDevice();
  objc_msgSend_setFrame_(self->_altitudeLabel, v6, v7);
  altitudeLabelHeight = self->_altitudeLabelHeight;
  objc_msgSend_screenScale(self->_device, v9, v10);
  v54 = altitudeLabelHeight / v11;
  v14 = objc_msgSend_topView(self, v12, v13);
  objc_msgSend_frame(v14, v15, v16);
  v18 = v17;
  v20 = v19;
  v51 = v21;
  v23 = v22;

  v26 = objc_msgSend_bottomView(self, v24, v25);
  objc_msgSend_frame(v26, v27, v28);
  v30 = v29;
  rect = v31;
  v33 = v32;
  v52 = v32;
  v53 = v34;
  v35 = v34;

  v57.origin.x = v18;
  v57.origin.y = v20;
  v57.size.width = v51;
  v57.size.height = v23;
  CGRectGetHeight(v57);
  v58.origin.x = v30;
  v58.origin.y = rect;
  v58.size.width = v33;
  v58.size.height = v35;
  CGRectGetHeight(v58);
  v59.origin.x = v18;
  v59.origin.y = v20;
  v59.size.width = v51;
  v59.size.height = v23;
  CGRectGetWidth(v59);
  CLKRectCenteredIntegralRectForDevice();
  v37 = v36;
  v39 = v38;
  v42 = objc_msgSend_topView(self, v40, v41);
  objc_msgSend_setFrame_(v42, v43, v44, v37, v39, v51, v23);

  v60.origin.x = v37;
  v60.origin.y = v39;
  v60.size.width = v51;
  v60.size.height = v23;
  v45 = v54 + CGRectGetMaxY(v60);
  v55 = objc_msgSend_bottomView(self, v46, v47);
  objc_msgSend_setFrame_(v55, v48, v49, v37, v45, v52, v53);
}

- (id)_newTopView
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)_newBottomView
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end