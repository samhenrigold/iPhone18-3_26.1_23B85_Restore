@interface LevelBaseRichCircularComplicationView
- (double)_maxBubbleDeflection;
- (id)_curvedLabelViewForLocStringKey:(id)key font:(id)font textColor:(id)color centerAngle:(double)angle;
- (id)_fixedBubbleImageName;
- (id)_floatingBubbleImageName;
- (id)_newFixedBubbleView;
- (id)_newFixedOverlayView;
- (id)_newFloatingBubbleView;
- (id)_overlayImageName;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)monochromeAccentViews;
- (id)monochromeOtherViews;
- (id)ticksView;
- (int64_t)_supportedFamily;
- (void)_createDialLabels;
- (void)_hideDialLabels:(BOOL)labels;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
@end

@implementation LevelBaseRichCircularComplicationView

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v28.receiver = self;
  v28.super_class = LevelBaseRichCircularComplicationView;
  v6 = [(LevelRichComplicationView *)&v28 initFullColorImageViewWithDevice:deviceCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 59, device);
    v10 = objc_msgSend_ticksView(v7, v8, v9);
    objc_msgSend_addSubview_(v7, v11, v10);

    v14 = objc_msgSend_ticksView(v7, v12, v13);
    objc_msgSend_sendSubviewToBack_(v7, v15, v14);

    v16 = objc_alloc(MEMORY[0x277D75D18]);
    v19 = objc_msgSend_ticksView(v7, v17, v18);
    objc_msgSend_frame(v19, v20, v21);
    v24 = objc_msgSend_initWithFrame_(v16, v22, v23);
    v25 = v7[61];
    v7[61] = v24;

    objc_msgSend_addSubview_(v7, v26, v7[61]);
  }

  return v7;
}

- (id)_curvedLabelViewForLocStringKey:(id)key font:(id)font textColor:(id)color centerAngle:(double)angle
{
  v37[1] = *MEMORY[0x277D85DE8];
  device = self->_device;
  colorCopy = color;
  fontCopy = font;
  keyCopy = key;
  v16 = objc_msgSend__supportedFamily(self, v14, v15);
  v17 = sub_23BD47AEC(device, v16);
  v18 = objc_alloc_init(MEMORY[0x277CFA770]);
  objc_msgSend_setTextColor_(v18, v19, colorCopy);

  v20 = objc_alloc(MEMORY[0x277CCA898]);
  v21 = NanoCompassLocalizedString(keyCopy);

  v36 = *MEMORY[0x277D740A8];
  v37[0] = fontCopy;
  v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v37, &v36, 1);

  v25 = objc_msgSend_initWithString_attributes_(v20, v24, v21, v23);
  objc_msgSend_setAttributedText_(v18, v26, v25);

  objc_msgSend_setAttributedTextProvidesColor_(v18, v27, 1);
  objc_msgSend_setCircleRadius_(v18, v28, v29, v17);
  objc_msgSend_setInterior_(v18, v30, 0);
  objc_msgSend_setCenterAngle_(v18, v31, v32, angle);
  objc_msgSend_sizeToFit(v18, v33, v34);

  return v18;
}

- (void)_hideDialLabels:(BOOL)labels
{
  v28 = *MEMORY[0x277D85DE8];
  curvedLabelViews = self->_curvedLabelViews;
  if (labels)
  {
    if (!curvedLabelViews)
    {
      return;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = curvedLabelViews;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v22, v27, 16);
    if (v6)
    {
      v8 = v6;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v4);
          }

          objc_msgSend_setHidden_(*(*(&v22 + 1) + 8 * i), v7, 1);
        }

        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v22, v27, 16);
      }

      while (v8);
    }
  }

  else
  {
    if (!curvedLabelViews)
    {
      objc_msgSend__createDialLabels(self, a2, labels);
      curvedLabelViews = self->_curvedLabelViews;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = curvedLabelViews;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v12, &v18, v26, 16);
    if (v13)
    {
      v15 = v13;
      v16 = *v19;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v4);
          }

          objc_msgSend_setHidden_(*(*(&v18 + 1) + 8 * j), v14, 0, v18);
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v14, &v18, v26, 16);
      }

      while (v15);
    }
  }
}

- (void)_createDialLabels
{
  v73 = *MEMORY[0x277D85DE8];
  device = self->_device;
  v5 = objc_msgSend__supportedFamily(self, a2, v2);
  sub_23BD47AEC(device, v5);
  v7 = v6;
  v9 = v8;
  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v12 = objc_msgSend_initWithCapacity_(v10, v11, 8);
  v13 = NanoCompassLocalizedString(@"NW");
  v16 = objc_msgSend_length(v13, v14, v15);
  v17 = MEMORY[0x277D74420];
  v18 = MEMORY[0x277CBB6C0];
  v19 = 0x277D75000;
  if (v16 <= 2)
  {
    v20 = NanoCompassLocalizedString(@"NE");
    if (objc_msgSend_length(v20, v21, v22) <= 2)
    {
      v23 = NanoCompassLocalizedString(@"SW");
      if (objc_msgSend_length(v23, v24, v25) <= 2)
      {
        v26 = NanoCompassLocalizedString(@"SE");
        v29 = objc_msgSend_length(v26, v27, v28);

        v19 = 0x277D75000uLL;
        if (v29 > 2)
        {
          goto LABEL_9;
        }

        v13 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], v30, *v18, v7, *v17);
        v20 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v31, v32, 1.0, 0.600000024);
        v34 = objc_msgSend__curvedLabelViewForLocStringKey_font_textColor_centerAngle_(self, v33, @"NW", v13, v20, 0.785398163);
        objc_msgSend_addObject_(v12, v35, v34);

        v37 = objc_msgSend__curvedLabelViewForLocStringKey_font_textColor_centerAngle_(self, v36, @"NE", v13, v20, -0.785398163);
        objc_msgSend_addObject_(v12, v38, v37);

        v40 = objc_msgSend__curvedLabelViewForLocStringKey_font_textColor_centerAngle_(self, v39, @"SW", v13, v20, 2.35619449);
        objc_msgSend_addObject_(v12, v41, v40);

        v23 = objc_msgSend__curvedLabelViewForLocStringKey_font_textColor_centerAngle_(self, v42, @"SE", v13, v20, -2.35619449);
        objc_msgSend_addObject_(v12, v43, v23);
      }
    }
  }

LABEL_9:
  v44 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], v30, *v18, v9, *v17);
  v47 = objc_msgSend_whiteColor(*(v19 + 840), v45, v46);
  v49 = objc_msgSend__curvedLabelViewForLocStringKey_font_textColor_centerAngle_(self, v48, @"N", v44, v47, 0.0);
  objc_msgSend_addObject_(v12, v50, v49);

  v52 = objc_msgSend__curvedLabelViewForLocStringKey_font_textColor_centerAngle_(self, v51, @"S", v44, v47, 3.14159265);
  objc_msgSend_addObject_(v12, v53, v52);

  v55 = objc_msgSend__curvedLabelViewForLocStringKey_font_textColor_centerAngle_(self, v54, @"E", v44, v47, -1.57079633);
  objc_msgSend_addObject_(v12, v56, v55);

  v58 = objc_msgSend__curvedLabelViewForLocStringKey_font_textColor_centerAngle_(self, v57, @"W", v44, v47, 1.57079633);
  objc_msgSend_addObject_(v12, v59, v58);

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v60 = v12;
  v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v68, v72, 16);
  if (v62)
  {
    v64 = v62;
    v65 = *v69;
    do
    {
      v66 = 0;
      do
      {
        if (*v69 != v65)
        {
          objc_enumerationMutation(v60);
        }

        objc_msgSend_addSubview_(self->_curvedLabelsContainerView, v63, *(*(&v68 + 1) + 8 * v66++), v68);
      }

      while (v64 != v66);
      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v63, &v68, v72, 16);
    }

    while (v64);
  }

  curvedLabelViews = self->_curvedLabelViews;
  self->_curvedLabelViews = v60;
}

- (id)ticksView
{
  ticksView = self->_ticksView;
  if (!ticksView)
  {
    device = self->_device;
    v6 = objc_msgSend__supportedFamily(self, a2, v2);
    v8 = objc_msgSend_richCircularLevelSubdialForDevice_andComplicationFamily_(AnalogDialView, v7, device, v6);
    v9 = self->_ticksView;
    self->_ticksView = v8;

    ticksView = self->_ticksView;
  }

  return ticksView;
}

- (id)_newFixedOverlayView
{
  v4 = objc_msgSend__overlayImageName(self, a2, v2);
  v5 = NanoCompassComplicationImageNamed(v4);

  v6 = objc_alloc(MEMORY[0x277D755E8]);
  v8 = objc_msgSend_initWithImage_(v6, v7, v5);
  overlayCrossView = self->_overlayCrossView;
  self->_overlayCrossView = v8;

  v10 = self->_overlayCrossView;
  return v10;
}

- (id)_newFixedBubbleView
{
  v4 = objc_msgSend__fixedBubbleImageName(self, a2, v2);
  v5 = NanoCompassComplicationImageNamed(v4);

  v6 = objc_alloc(MEMORY[0x277D755E8]);
  v8 = objc_msgSend_initWithImage_(v6, v7, v5);
  fixedBubbleView = self->_fixedBubbleView;
  self->_fixedBubbleView = v8;

  v10 = self->_fixedBubbleView;
  return v10;
}

- (id)_newFloatingBubbleView
{
  v4 = objc_msgSend__floatingBubbleImageName(self, a2, v2);
  v5 = NanoCompassComplicationImageNamed(v4);

  v6 = objc_alloc(MEMORY[0x277D755E8]);
  v8 = objc_msgSend_initWithImage_(v6, v7, v5);
  floatingBubbleView = self->_floatingBubbleView;
  self->_floatingBubbleView = v8;

  v10 = self->_floatingBubbleView;
  return v10;
}

- (double)_maxBubbleDeflection
{
  device = self->_device;
  v4 = objc_msgSend__supportedFamily(self, a2, v2);
  sub_23BD47AEC(device, v4);
  return v5;
}

- (id)monochromeAccentViews
{
  v5[3] = *MEMORY[0x277D85DE8];
  fixedBubbleView = self->_fixedBubbleView;
  v5[0] = self->_ticksView;
  v5[1] = fixedBubbleView;
  v5[2] = self->_floatingBubbleView;
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, 3);

  return v3;
}

- (id)monochromeOtherViews
{
  v5[2] = *MEMORY[0x277D85DE8];
  overlayCrossView = self->_overlayCrossView;
  v5[0] = self->_curvedLabelsContainerView;
  v5[1] = overlayCrossView;
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, 2);

  return v3;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  v50.receiver = self;
  v50.super_class = LevelBaseRichCircularComplicationView;
  [(LevelRichComplicationView *)&v50 configureWithImageProvider:providerCopy reason:reason];
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
    isAccurate = objc_msgSend_isAccurate(v11, v25, v26);
    v30 = objc_msgSend_metadata(providerCopy, v28, v29);
    v32 = objc_msgSend_objectForKeyedSubscript_(v30, v31, @"alwayson");
    v35 = objc_msgSend_BOOLValue(v32, v33, v34);

    v36 = v24 & isAccurate | isAccurate ^ 1;
    objc_msgSend__hideDialLabels_(self, v37, (v36 | v35) & 1);
    if ((v36 & 1) == 0)
    {
      objc_msgSend_heading(v11, v38, v39);
      v43 = -v42;
      if (self->_cachedHeading != v43)
      {
        self->_cachedHeading = v43;
        objc_msgSend_setNeedsLayout(self, v40, v41);
      }
    }
  }

  else
  {
    v44 = objc_msgSend_metadata(providerCopy, v25, v26);
    v46 = objc_msgSend_objectForKeyedSubscript_(v44, v45, @"alwayson");
    objc_msgSend_BOOLValue(v46, v47, v48);

    objc_msgSend__hideDialLabels_(self, v49, 1);
  }
}

- (void)layoutSubviews
{
  v47 = *MEMORY[0x277D85DE8];
  v45.receiver = self;
  v45.super_class = LevelBaseRichCircularComplicationView;
  [(LevelRichComplicationView *)&v45 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4);
  v6 = v5;
  UIRectGetCenter();
  v8 = v7;
  v10 = v9;
  objc_msgSend_setCenter_(self->_ticksView, v11, v12);
  objc_msgSend_setCenter_(self->_curvedLabelsContainerView, v13, v14, v8, v10);
  v15 = self->_cachedHeading * 3.14159265;
  memset(&v44, 0, sizeof(v44));
  CGAffineTransformMakeRotation(&v44, v15 / 180.0);
  v43 = v44;
  objc_msgSend_setTransform_(self->_ticksView, v16, &v43);
  v43 = v44;
  objc_msgSend_setTransform_(self->_curvedLabelsContainerView, v17, &v43);
  if (self->_curvedLabelViews)
  {
    objc_msgSend_bounds(self->_curvedLabelsContainerView, v18, v19);
    v21 = v20;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v22 = self->_curvedLabelViews;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v39, v46, 16);
    if (v24)
    {
      v27 = v24;
      v28 = (v21 - v6) * 0.5;
      v29 = *v40;
      do
      {
        v30 = 0;
        do
        {
          if (*v40 != v29)
          {
            objc_enumerationMutation(v22);
          }

          v31 = *(*(&v39 + 1) + 8 * v30);
          *&v43.a = 0uLL;
          objc_msgSend_frame(v31, v25, v26, v39);
          v33 = v32;
          v35 = v34;
          objc_msgSend_getTextCenter_startAngle_endAngle_(v31, v36, &v43, 0, 0);
          objc_msgSend_setFrame_(v31, v37, v38, v28 + v8 - v43.a, v28 + v10 - v43.b, v33, v35);
          ++v30;
        }

        while (v27 != v30);
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v39, v46, 16);
      }

      while (v27);
    }
  }
}

- (int64_t)_supportedFamily
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  return 10;
}

- (id)_overlayImageName
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  return 0;
}

- (id)_fixedBubbleImageName
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  return 0;
}

- (id)_floatingBubbleImageName
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  return 0;
}

@end