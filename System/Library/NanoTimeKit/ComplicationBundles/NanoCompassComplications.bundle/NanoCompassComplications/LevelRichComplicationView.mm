@interface LevelRichComplicationView
- (UIView)fixedBubbleView;
- (UIView)fixedOverlayView;
- (UIView)floatingBubbleView;
- (double)_magnitudeLevelThreshold;
- (double)_maxBubbleDeflection;
- (id)_newFixedBubbleView;
- (id)_newFixedOverlayView;
- (id)_newFloatingBubbleView;
- (id)initFullColorImageViewWithDevice:(id)device;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
@end

@implementation LevelRichComplicationView

- (id)initFullColorImageViewWithDevice:(id)device
{
  v18.receiver = self;
  v18.super_class = LevelRichComplicationView;
  v3 = [(LevelRichComplicationView *)&v18 init];
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_floatingBubbleView(v3, v4, v5);
    objc_msgSend_addSubview_(v6, v8, v7);

    v11 = objc_msgSend_fixedBubbleView(v6, v9, v10);
    objc_msgSend_addSubview_(v6, v12, v11);

    v15 = objc_msgSend_fixedOverlayView(v6, v13, v14);
    objc_msgSend_addSubview_(v6, v16, v15);
  }

  return v6;
}

- (UIView)fixedOverlayView
{
  fixedOverlayView = self->_fixedOverlayView;
  if (!fixedOverlayView)
  {
    v5 = objc_msgSend__newFixedOverlayView(self, a2, v2);
    v6 = self->_fixedOverlayView;
    self->_fixedOverlayView = v5;

    fixedOverlayView = self->_fixedOverlayView;
  }

  return fixedOverlayView;
}

- (UIView)fixedBubbleView
{
  fixedBubbleView = self->_fixedBubbleView;
  if (!fixedBubbleView)
  {
    v5 = objc_msgSend__newFixedBubbleView(self, a2, v2);
    v6 = self->_fixedBubbleView;
    self->_fixedBubbleView = v5;

    fixedBubbleView = self->_fixedBubbleView;
  }

  return fixedBubbleView;
}

- (UIView)floatingBubbleView
{
  floatingBubbleView = self->_floatingBubbleView;
  if (!floatingBubbleView)
  {
    v5 = objc_msgSend__newFloatingBubbleView(self, a2, v2);
    v6 = self->_floatingBubbleView;
    self->_floatingBubbleView = v5;

    floatingBubbleView = self->_floatingBubbleView;
  }

  return floatingBubbleView;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  v7 = objc_msgSend_metadata(providerCopy, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"incline");

  v12 = objc_msgSend_null(MEMORY[0x277CBEB68], v10, v11);
  isEqual = objc_msgSend_isEqual_(v9, v13, v12);

  if (isEqual)
  {

    v9 = 0;
  }

  v17 = objc_msgSend_metadata(providerCopy, v15, v16);
  v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"nodata");
  v22 = objc_msgSend_BOOLValue(v19, v20, v21);

  if (!v9 || v22 & 1 | ((objc_msgSend_hasReading(v9, v23, v24) & 1) == 0))
  {
    objc_msgSend_setHidden_(self->_fixedBubbleView, v23, 1);
    objc_msgSend_setHidden_(self->_floatingBubbleView, v26, 1);
    goto LABEL_12;
  }

  if (objc_msgSend_orientation(v9, v23, v25) != 1)
  {
    v37 = 1;
    goto LABEL_10;
  }

  objc_msgSend_horizontalOffset(v9, v27, v28);
  v30 = v29;
  v32 = v31;
  v33 = sqrt(v31 * v31 + v30 * v30);
  objc_msgSend__maxBubbleDeflection(self, v34, v35);
  self->_floatingBubbleDeflection.dx = v30 * v36;
  self->_floatingBubbleDeflection.dy = v32 * v36;
  v37 = v33 < 0.100000001;
  if (v33 >= 0.100000001)
  {
LABEL_10:
    objc_msgSend_setHidden_(self->_fixedBubbleView, v27, 1);
    goto LABEL_11;
  }

  objc_msgSend_setHidden_(self->_fixedBubbleView, v27, 0);
LABEL_11:
  objc_msgSend_setHidden_(self->_floatingBubbleView, v38, v37);
  objc_msgSend_setNeedsLayout(self, v39, v40);
LABEL_12:
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = LevelRichComplicationView;
  [(LevelRichComplicationView *)&v15 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4);
  UIRectGetCenter();
  v6 = v5;
  v8 = v7;
  objc_msgSend_setCenter_(self->_fixedOverlayView, v9, v10);
  objc_msgSend_setCenter_(self->_fixedBubbleView, v11, v12, v6, v8);
  objc_msgSend_setCenter_(self->_floatingBubbleView, v13, v14, v6 + self->_floatingBubbleDeflection.dx, v8 + self->_floatingBubbleDeflection.dy);
}

- (id)_newFixedOverlayView
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  return 0;
}

- (id)_newFixedBubbleView
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  return 0;
}

- (id)_newFloatingBubbleView
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  return 0;
}

- (double)_maxBubbleDeflection
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  return 0.0;
}

- (double)_magnitudeLevelThreshold
{
  v2 = sub_23BD29238();
  sub_23BD2921C(v2);
  return 0.0;
}

@end