@interface LevelRichCornerComplicationView
- (double)_maxBubbleDeflection;
- (id)_newFixedBubbleView;
- (id)_newFixedOverlayView;
- (id)_newFloatingBubbleView;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)monochromeAccentViews;
- (id)monochromeOtherViews;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
@end

@implementation LevelRichCornerComplicationView

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v21.receiver = self;
  v21.super_class = LevelRichCornerComplicationView;
  v6 = [(LevelRichComplicationView *)&v21 initFullColorImageViewWithDevice:deviceCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 59, device);
    v8 = NanoCompassComplicationImageNamed(@"levelCorner-RingBorderBright");
    v9 = objc_alloc(MEMORY[0x277D755E8]);
    v11 = objc_msgSend_initWithImage_(v9, v10, v8);
    v12 = v7[61];
    v7[61] = v11;

    objc_msgSend_addSubview_(v7, v13, v7[61]);
    v14 = NanoCompassComplicationImageNamed(@"levelCorner-RingBorderMuted");
    v15 = objc_alloc(MEMORY[0x277D755E8]);
    v17 = objc_msgSend_initWithImage_(v15, v16, v14);
    v18 = v7[62];
    v7[62] = v17;

    objc_msgSend_addSubview_(v7, v19, v7[62]);
  }

  return v7;
}

- (id)_newFixedOverlayView
{
  v4 = objc_msgSend__overlayImageName(self, a2, v2);
  v5 = NanoCompassComplicationImageNamed(v4);

  v6 = objc_alloc(MEMORY[0x277D755E8]);
  v8 = objc_msgSend_initWithImage_(v6, v7, v5);
  overlayCross = self->_overlayCross;
  self->_overlayCross = v8;

  v10 = self->_overlayCross;
  return v10;
}

- (id)_newFixedBubbleView
{
  v4 = objc_msgSend__fixedBubbleImageName(self, a2, v2);
  v5 = NanoCompassComplicationImageNamed(v4);

  v6 = objc_alloc(MEMORY[0x277D755E8]);
  v8 = objc_msgSend_initWithImage_(v6, v7, v5);
  centeredBubbleView = self->_centeredBubbleView;
  self->_centeredBubbleView = v8;

  v10 = self->_centeredBubbleView;
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
  sub_23BD33320(v4, device);
  if (v4 != 8)
  {
    v5 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_23BD65900(v4, v5);
    }
  }

  return *&qword_27E1C4D90;
}

- (id)monochromeAccentViews
{
  v6[4] = *MEMORY[0x277D85DE8];
  floatingBubbleView = self->_floatingBubbleView;
  v6[0] = self->_centeredBubbleView;
  v6[1] = floatingBubbleView;
  mutedRingView = self->_mutedRingView;
  v6[2] = self->_brightRingView;
  v6[3] = mutedRingView;
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v6, 4);

  return v4;
}

- (id)monochromeOtherViews
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_overlayCross;
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);

  return v2;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  v28.receiver = self;
  v28.super_class = LevelRichCornerComplicationView;
  [(LevelRichComplicationView *)&v28 configureWithImageProvider:providerCopy reason:reason];
  v9 = objc_msgSend_metadata(providerCopy, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"incline");

  v14 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);
  isEqual = objc_msgSend_isEqual_(v11, v15, v14);

  if (isEqual)
  {

    v11 = 0;
  }

  v19 = objc_msgSend_metadata(providerCopy, v17, v18);
  v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, @"nodata");
  v24 = objc_msgSend_BOOLValue(v21, v22, v23);

  v25 = NanoCompassLevelComplicationConsideredLevel(v11, v24);
  objc_msgSend_setHidden_(self->_brightRingView, v26, v25);
  objc_msgSend_setHidden_(self->_mutedRingView, v27, v25 ^ 1);
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = LevelRichCornerComplicationView;
  [(LevelRichComplicationView *)&v11 layoutSubviews];
  objc_msgSend_center(self, v3, v4);
  objc_msgSend_setCenter_(self->_brightRingView, v5, v6);
  objc_msgSend_center(self, v7, v8);
  objc_msgSend_setCenter_(self->_mutedRingView, v9, v10);
}

@end