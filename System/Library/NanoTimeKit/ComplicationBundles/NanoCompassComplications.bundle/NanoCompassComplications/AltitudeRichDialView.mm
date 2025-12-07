@interface AltitudeRichDialView
- (UIView)bottomView;
- (UIView)topView;
- (id)_newBottomView;
- (id)_newTopView;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)monochromeAccentViews;
- (id)monochromeOtherViews;
- (void)layoutSubviews;
@end

@implementation AltitudeRichDialView

- (id)initFullColorImageViewWithDevice:(id)device
{
  v14.receiver = self;
  v14.super_class = AltitudeRichDialView;
  v3 = [(AltitudeRichDialView *)&v14 init];
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_topView(v3, v4, v5);
    objc_msgSend_addSubview_(v6, v8, v7);

    v11 = objc_msgSend_bottomView(v6, v9, v10);
    objc_msgSend_addSubview_(v6, v12, v11);
  }

  return v6;
}

- (UIView)topView
{
  topView = self->_topView;
  if (!topView)
  {
    v5 = objc_msgSend__newTopView(self, a2, v2);
    v6 = self->_topView;
    self->_topView = v5;

    topView = self->_topView;
  }

  return topView;
}

- (UIView)bottomView
{
  bottomView = self->_bottomView;
  if (!bottomView)
  {
    v5 = objc_msgSend__newBottomView(self, a2, v2);
    v6 = self->_bottomView;
    self->_bottomView = v5;

    bottomView = self->_bottomView;
  }

  return bottomView;
}

- (id)monochromeAccentViews
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_topView;
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);

  return v2;
}

- (id)monochromeOtherViews
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_bottomView;
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);

  return v2;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = AltitudeRichDialView;
  [(AltitudeRichDialView *)&v13 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4);
  UIRectGetCenter();
  v6 = v5;
  v8 = v7;
  objc_msgSend_setCenter_(self->_topView, v9, v10);
  objc_msgSend_setCenter_(self->_bottomView, v11, v12, v6, v8);
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