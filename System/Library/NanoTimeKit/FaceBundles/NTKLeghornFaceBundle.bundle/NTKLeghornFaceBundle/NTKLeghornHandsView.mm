@interface NTKLeghornHandsView
- ($01BB1521EC52D44A8E7628F5261DCEC8)_handsViewLayoutConstantsForDevice:(id)device;
- (id)hourHandConfiguration;
- (id)initForDevice:(id)device;
- (id)minuteHandConfiguration;
- (void)_applyPalette;
- (void)setPalette:(id)palette;
@end

@implementation NTKLeghornHandsView

- (id)initForDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = NTKLeghornHandsView;
  return [(NTKAnalogHandsView *)&v4 initForDevice:device];
}

- (void)setPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);

  MEMORY[0x2821F9670](self, sel__applyPalette, v4);
}

- (void)_applyPalette
{
  v47 = objc_msgSend_palette(self, a2, v2);
  v6 = objc_msgSend_isNightModeF(v47, v4, v5);
  objc_msgSend_doubleValue(v6, v7, v8);
  v10 = v9;

  v13 = objc_msgSend_hourHandInlayColor(v47, v11, v12);
  v16 = objc_msgSend_hourHandStrokeColor(v47, v14, v15);
  v19 = objc_msgSend_minuteHandInlayColor(v47, v17, v18);
  v24 = objc_msgSend_minuteHandStrokeColor(v47, v20, v21);
  if (v10 == 0.0)
  {
    v25 = v19;
  }

  else
  {
    v25 = objc_msgSend_blackColor(MEMORY[0x277D75348], v22, v23);
  }

  v28 = v25;
  v29 = objc_msgSend_hourHandView(self, v26, v27);
  objc_msgSend_setInlayColor_(v29, v30, v13);

  v33 = objc_msgSend_hourHandView(self, v31, v32);
  objc_msgSend_setColor_(v33, v34, v16);

  v37 = objc_msgSend_minuteHandView(self, v35, v36);
  objc_msgSend_setInlayColor_(v37, v38, v19);

  v41 = objc_msgSend_minuteHandView(self, v39, v40);
  objc_msgSend_setColor_(v41, v42, v24);

  v45 = objc_msgSend_minuteHandView(self, v43, v44);
  objc_msgSend_setHandDotColor_(v45, v46, v28);
}

- (id)hourHandConfiguration
{
  v4 = objc_msgSend_device(self, a2, v2);
  objc_msgSend__handsViewLayoutConstantsForDevice_(self, v5, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x277CFA740];
  v15 = objc_msgSend_device(self, v13, v14);
  v17 = objc_msgSend_defaultHourConfigurationForDevice_(v12, v16, v15);

  objc_msgSend_setHandLength_(v17, v18, v19, v7);
  objc_msgSend_setHandWidth_(v17, v20, v21, v9);
  objc_msgSend_setInlayInsetRadius_(v17, v22, v23, v11);

  return v17;
}

- (id)minuteHandConfiguration
{
  v4 = objc_msgSend_device(self, a2, v2);
  objc_msgSend__handsViewLayoutConstantsForDevice_(self, v5, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x277CFA740];
  v15 = objc_msgSend_device(self, v13, v14);
  v17 = objc_msgSend_defaultMinuteConfigurationForDevice_(v12, v16, v15);

  objc_msgSend_setHandLength_(v17, v18, v19, v7);
  objc_msgSend_setHandWidth_(v17, v20, v21, v9);
  objc_msgSend_setInlayInsetRadius_(v17, v22, v23, v11);

  return v17;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)_handsViewLayoutConstantsForDevice:(id)device
{
  v3 = sub_23BED92A8(self, device);
  result.var3 = v6;
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

@end