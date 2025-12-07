@interface CompassRichDialView
- (UIView)needleAODView;
- (UIView)needleView;
- (UIView)ticksView;
- (id)_newNeedleAODView;
- (id)_newNeedleView;
- (id)_newTicksView;
- (id)initFullColorImageViewWithDevice:(id)device;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
@end

@implementation CompassRichDialView

- (id)initFullColorImageViewWithDevice:(id)device
{
  v18.receiver = self;
  v18.super_class = CompassRichDialView;
  v3 = [(NanoCompassBaseRichView *)&v18 initFullColorImageViewWithDevice:device];
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_ticksView(v3, v4, v5);
    objc_msgSend_addSubview_(v6, v8, v7);

    v11 = objc_msgSend_needleView(v6, v9, v10);
    objc_msgSend_addSubview_(v6, v12, v11);

    v15 = objc_msgSend_needleAODView(v6, v13, v14);
    objc_msgSend_addSubview_(v6, v16, v15);
  }

  return v6;
}

- (UIView)ticksView
{
  ticksView = self->_ticksView;
  if (!ticksView)
  {
    v5 = objc_msgSend__newTicksView(self, a2, v2);
    v6 = self->_ticksView;
    self->_ticksView = v5;

    ticksView = self->_ticksView;
  }

  return ticksView;
}

- (UIView)needleView
{
  needleView = self->_needleView;
  if (!needleView)
  {
    v5 = objc_msgSend__newNeedleView(self, a2, v2);
    v6 = self->_needleView;
    self->_needleView = v5;

    needleView = self->_needleView;
  }

  return needleView;
}

- (UIView)needleAODView
{
  needleAODView = self->_needleAODView;
  if (!needleAODView)
  {
    v5 = objc_msgSend__newNeedleAODView(self, a2, v2);
    v6 = self->_needleAODView;
    self->_needleAODView = v5;

    needleAODView = self->_needleAODView;
  }

  return needleAODView;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  v8 = objc_msgSend_metadata(providerCopy, v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"heading");

  v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v11, v12);
  isEqual = objc_msgSend_isEqual_(v10, v14, v13);

  if (isEqual)
  {

    v10 = 0;
  }

  objc_msgSend_heading(v10, v16, v17);
  CGAffineTransformMakeRotation(&v43, v18 * -3.14159265 / 180.0);
  needleView = self->_needleView;
  v42 = v43;
  objc_msgSend_setTransform_(needleView, v20, &v42);
  v23 = objc_msgSend_metadata(providerCopy, v21, v22);
  v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, @"alwayson");
  v28 = objc_msgSend_BOOLValue(v25, v26, v27);

  objc_msgSend_setHidden_(self->_needleAODView, v29, v28 ^ 1u);
  v32 = objc_msgSend_metadata(providerCopy, v30, v31);

  v34 = objc_msgSend_objectForKeyedSubscript_(v32, v33, @"nodata");
  v37 = objc_msgSend_BOOLValue(v34, v35, v36);

  if (v10)
  {
    v40 = objc_msgSend_isAccurate(v10, v38, v39) ^ 1 | v37 | v28;
    objc_msgSend_setHidden_(self->_needleView, v41, v40 & 1);
  }

  else
  {
    objc_msgSend_setHidden_(self->_needleView, v38, 1);
  }
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CompassRichDialView;
  [(CompassRichDialView *)&v15 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4);
  UIRectGetCenter();
  v6 = v5;
  v8 = v7;
  objc_msgSend_setCenter_(self->_ticksView, v9, v10);
  objc_msgSend_setCenter_(self->_needleView, v11, v12, v6, v8);
  objc_msgSend_setCenter_(self->_needleAODView, v13, v14, v6, v8);
}

- (id)_newTicksView
{
  v2 = objc_opt_class();
  sub_23BD2921C(v2);
  return 0;
}

- (id)_newNeedleView
{
  v2 = objc_opt_class();
  sub_23BD2921C(v2);
  return 0;
}

- (id)_newNeedleAODView
{
  v2 = objc_opt_class();
  sub_23BD2921C(v2);
  return 0;
}

@end