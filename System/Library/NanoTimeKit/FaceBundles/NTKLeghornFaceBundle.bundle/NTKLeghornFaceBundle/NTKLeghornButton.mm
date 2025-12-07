@interface NTKLeghornButton
- (NTKLeghornButton)initWithSymbol:(id)symbol device:(id)device;
- (void)_setSymbolColor:(id)color enabled:(BOOL)enabled;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setSymbolColor:(id)color;
- (void)setSymbolName:(id)name;
@end

@implementation NTKLeghornButton

- (NTKLeghornButton)initWithSymbol:(id)symbol device:(id)device
{
  symbolCopy = symbol;
  deviceCopy = device;
  v29.receiver = self;
  v29.super_class = NTKLeghornButton;
  v8 = [(NTKLeghornButton *)&v29 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    v9->_assetGenerationSize = *MEMORY[0x277CBF3A8];
    device = v9->_device;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_23BED2200;
    v30[3] = &unk_278BA1288;
    v30[4] = 9;
    v11 = sub_23BED2200(v30, device);
    objc_msgSend_setBounds_(v9, v12, v13, 0.0, 0.0, v11, v11);
    v14 = objc_alloc(MEMORY[0x277D755E8]);
    objc_msgSend_bounds(v9, v15, v16);
    v19 = objc_msgSend_initWithFrame_(v14, v17, v18);
    symbolIcon = v9->_symbolIcon;
    v9->_symbolIcon = v19;

    objc_msgSend_addSubview_(v9, v21, v9->_symbolIcon);
    objc_msgSend_bringSubviewToFront_(v9, v22, v9->_symbolIcon);
    objc_msgSend_setSymbolName_(v9, v23, symbolCopy);
    v26 = objc_msgSend_prominentGlassButtonConfiguration(MEMORY[0x277D75230], v24, v25);
    objc_msgSend_setConfiguration_(v9, v27, v26);
  }

  return v9;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = NTKLeghornButton;
  [(NTKLeghornButton *)&v14 layoutSubviews];
  objc_msgSend_size(self->_symbolImage, v3, v4);
  objc_msgSend_setFrame_(self->_symbolIcon, v5, v6, 0.0, 0.0, v7, v8);
  v11 = objc_msgSend_bounds(self, v9, v10);
  MEMORY[0x23EEC0EA0](v11);
  objc_msgSend_setCenter_(self->_symbolIcon, v12, v13);
}

- (void)setSymbolName:(id)name
{
  nameCopy = name;
  if ((NTKEqualStrings() & 1) == 0)
  {
    objc_storeStrong(&self->_symbolName, name);
    device = self->_device;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_23BED2200;
    v16[3] = &unk_278BA1288;
    v16[4] = 9;
    sub_23BED2200(v16, device);
    v9 = objc_msgSend_configurationWithPointSize_weight_scale_(MEMORY[0x277D755D0], v7, 5, 1, v8);
    v11 = objc_msgSend_systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v10, self->_symbolName, v9);
    v13 = objc_msgSend_imageWithRenderingMode_(v11, v12, 2);
    symbolImage = self->_symbolImage;
    self->_symbolImage = v13;

    objc_msgSend_setImage_(self->_symbolIcon, v15, self->_symbolImage);
  }
}

- (void)_setSymbolColor:(id)color enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  colorCopy = color;
  v7 = colorCopy;
  if (enabledCopy)
  {
    v8 = colorCopy;
  }

  else
  {
    v8 = NTKColorByPremultiplyingAlpha();
  }

  v9 = v8;
  symbolColor = self->_symbolColor;
  self->_symbolColor = v7;
  v12 = v7;

  objc_msgSend_setTintColor_(self->_symbolIcon, v11, v9);
}

- (void)setSymbolColor:(id)color
{
  colorCopy = color;
  isEnabled = objc_msgSend_isEnabled(self, v4, v5);
  objc_msgSend__setSymbolColor_enabled_(self, v7, colorCopy, isEnabled);
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9.receiver = self;
  v9.super_class = NTKLeghornButton;
  [(NTKLeghornButton *)&v9 setEnabled:?];
  v7 = objc_msgSend_symbolColor(self, v5, v6);
  objc_msgSend__setSymbolColor_enabled_(self, v8, v7, enabledCopy);
}

@end