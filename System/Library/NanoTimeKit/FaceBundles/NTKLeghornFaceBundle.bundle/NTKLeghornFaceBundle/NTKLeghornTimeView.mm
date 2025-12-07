@interface NTKLeghornTimeView
+ (void)drawSnapshotInContext:(CGContext *)context timeStyle:(unint64_t)style colorPalette:(id)palette forDevice:(id)device;
- (CGRect)accessibilityFrame;
- (CGRect)contentBounds;
- (NTKLeghornTimeView)initWithFrame:(CGRect)frame forDevice:(id)device;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_getAnalogTimeView;
- (id)_getDigitalTimeView;
- (id)_timeViewForStyle:(unint64_t)style force:(BOOL)force;
- (void)_removeAnalogTimeView;
- (void)_removeDigitalTimeView;
- (void)_updateDigitalViewColors;
- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle;
- (void)setFrozen:(BOOL)frozen;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setPalette:(id)palette;
- (void)setTimeOffset:(double)offset;
- (void)setTimeStyle:(unint64_t)style;
@end

@implementation NTKLeghornTimeView

- (NTKLeghornTimeView)initWithFrame:(CGRect)frame forDevice:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = NTKLeghornTimeView;
  height = [(NTKLeghornTimeView *)&v19 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    objc_msgSend_setUserInteractionEnabled_(v12, v13, 0);
    v16 = objc_msgSend_layer(v12, v14, v15);
    objc_msgSend_setAllowsHitTesting_(v16, v17, 0);
  }

  return v12;
}

- (id)_getAnalogTimeView
{
  analogTimeView = self->_analogTimeView;
  if (!analogTimeView)
  {
    v4 = [NTKLeghornHandsView alloc];
    v6 = objc_msgSend_initForDevice_(v4, v5, self->_device);
    v7 = self->_analogTimeView;
    self->_analogTimeView = v6;

    objc_msgSend__updateAnalogViewColors(self, v8, v9);
    v10 = self->_analogTimeView;
    v11 = NTKIdealizedDate();
    objc_msgSend_setOverrideDate_duration_(v10, v12, v11, 0.0);

    objc_msgSend_addSubview_(self, v13, self->_analogTimeView);
    objc_msgSend_bounds(self, v14, v15);
    objc_msgSend_setFrame_(self->_analogTimeView, v16, v17);
    v20 = objc_msgSend_layer(self->_analogTimeView, v18, v19);
    objc_msgSend_setAllowsHitTesting_(v20, v21, 0);

    analogTimeView = self->_analogTimeView;
  }

  return analogTimeView;
}

- (void)_removeAnalogTimeView
{
  analogTimeView = self->_analogTimeView;
  if (analogTimeView)
  {
    objc_msgSend_removeFromSuperview(analogTimeView, a2, v2);
    v5 = self->_analogTimeView;
    self->_analogTimeView = 0;
  }
}

- (id)_getDigitalTimeView
{
  digitalTimeView = self->_digitalTimeView;
  if (!digitalTimeView)
  {
    v4 = [NTKFoghornTimeView alloc];
    objc_msgSend_bounds(self, v5, v6);
    v8 = objc_msgSend_initWithFrame_forDevice_layout_(v4, v7, self->_device, 6);
    v9 = self->_digitalTimeView;
    self->_digitalTimeView = v8;

    objc_msgSend_setFrozen_(self->_digitalTimeView, v10, 1);
    objc_msgSend__updateDigitalViewColors(self, v11, v12);
    v13 = self->_digitalTimeView;
    v14 = NTKIdealizedDate();
    objc_msgSend_setOverrideDate_duration_(v13, v15, v14, 0.0);

    objc_msgSend_addSubview_(self, v16, self->_digitalTimeView);
    v19 = objc_msgSend_layer(self->_digitalTimeView, v17, v18);
    objc_msgSend_setAllowsHitTesting_(v19, v20, 0);

    digitalTimeView = self->_digitalTimeView;
  }

  return digitalTimeView;
}

- (void)_removeDigitalTimeView
{
  digitalTimeView = self->_digitalTimeView;
  if (digitalTimeView)
  {
    objc_msgSend_removeFromSuperview(digitalTimeView, a2, v2);
    v5 = self->_digitalTimeView;
    self->_digitalTimeView = 0;
  }
}

- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle
{
  v9 = style == toStyle;
  v10 = style != toStyle && fraction < 1.0;
  v11 = !v9 && fraction > 0.0;
  v25 = objc_msgSend__timeViewForStyle_force_(self, a2, style, v10);
  v13 = objc_msgSend__timeViewForStyle_force_(self, v12, toStyle, v11);
  v16 = v13;
  if (style == toStyle)
  {
    if (fraction == 1.0)
    {
      v19 = &OBJC_IVAR___NTKLeghornTimeView__analogTimeView;
      if (style == 1)
      {
        v19 = &OBJC_IVAR___NTKLeghornTimeView__digitalTimeView;
      }

      v20 = *(&self->super.super.super.isa + *v19);

      objc_msgSend_setAlpha_(v16, v21, v22, 1.0);
      objc_msgSend_setAlpha_(v20, v23, v24, 0.0);
      v25 = v20;
    }
  }

  else
  {
    objc_msgSend_setAlpha_(v13, v14, v15, fraction);
    objc_msgSend_setAlpha_(v25, v17, v18, 1.0 - fraction);
  }
}

- (id)_timeViewForStyle:(unint64_t)style force:(BOOL)force
{
  if (style == 1)
  {
    if (force)
    {
      v4 = objc_msgSend__getAnalogTimeView(self, a2, 1);
      goto LABEL_11;
    }

    v5 = 456;
  }

  else
  {
    if (style)
    {
      v4 = 0;
      goto LABEL_11;
    }

    if (force)
    {
      v4 = objc_msgSend__getDigitalTimeView(self, a2, 0);
      goto LABEL_11;
    }

    v5 = 448;
  }

  v4 = *(&self->super.super.super.isa + v5);
LABEL_11:

  return v4;
}

- (void)setTimeStyle:(unint64_t)style
{
  p_analogTimeView = &self->_analogTimeView;
  if (!self->_analogTimeView && !self->_digitalTimeView || self->_timeStyle != style)
  {
    self->_timeStyle = style;
    if (style)
    {
      if (style != 1)
      {
        return;
      }

      objc_msgSend__removeDigitalTimeView(self, a2, 1);
      v7 = objc_msgSend__getAnalogTimeView(self, v5, v6);
    }

    else
    {
      objc_msgSend__removeAnalogTimeView(self, a2, 0);
      v12 = objc_msgSend__getDigitalTimeView(self, v10, v11);
      p_analogTimeView = &self->_digitalTimeView;
    }

    v13 = *p_analogTimeView;

    objc_msgSend_setAlpha_(v13, v8, v9, 1.0);
  }
}

- (void)setFrozen:(BOOL)frozen
{
  frozenCopy = frozen;
  objc_msgSend_setFrozen_(self->_digitalTimeView, a2, frozen);
  objc_msgSend_setFrozen_(self->_analogTimeView, v5, frozenCopy);
  self->_frozen = frozenCopy;
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  analogTimeView = self->_analogTimeView;
  dateCopy = date;
  objc_msgSend_setOverrideDate_duration_(analogTimeView, v7, dateCopy, duration);
  objc_msgSend_setOverrideDate_duration_(self->_digitalTimeView, v8, dateCopy, duration);
}

- (void)setTimeOffset:(double)offset
{
  objc_msgSend_setTimeOffset_(self->_analogTimeView, a2, v3);
  digitalTimeView = self->_digitalTimeView;

  objc_msgSend_setTimeOffset_(digitalTimeView, v6, v7, offset);
}

- (CGRect)contentBounds
{
  timeStyle = self->_timeStyle;
  if (timeStyle == 1)
  {
    goto LABEL_5;
  }

  if (timeStyle)
  {
    goto LABEL_7;
  }

  if (!self->_digitalTimeView)
  {
LABEL_5:
    analogTimeView = self->_analogTimeView;
    if (analogTimeView)
    {
      objc_msgSend_bounds(analogTimeView, a2, v2);
      goto LABEL_8;
    }

LABEL_7:
    v4 = *MEMORY[0x277CBF3A0];
    v5 = *(MEMORY[0x277CBF3A0] + 8);
    v6 = *(MEMORY[0x277CBF3A0] + 16);
    v7 = *(MEMORY[0x277CBF3A0] + 24);
    goto LABEL_8;
  }

  objc_msgSend_contentBounds(self->_digitalTimeView, a2, v2);
LABEL_8:
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)setPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);
  objc_msgSend__updateAnalogViewColors(self, v4, v5);

  objc_msgSend__updateDigitalViewColors(self, v6, v7);
}

- (void)_updateDigitalViewColors
{
  v4 = objc_msgSend_timeMinutesColor(self->_palette, a2, v2);
  objc_msgSend_setMinutesColor_(self->_digitalTimeView, v5, v4);

  v9 = objc_msgSend_timeSecondsColor(self->_palette, v6, v7);
  objc_msgSend_setSecondsColor_(self->_digitalTimeView, v8, v9);
}

+ (void)drawSnapshotInContext:(CGContext *)context timeStyle:(unint64_t)style colorPalette:(id)palette forDevice:(id)device
{
  deviceCopy = device;
  paletteCopy = palette;
  v11 = [NTKLeghornTimeView alloc];
  objc_msgSend_screenBounds(deviceCopy, v12, v13);
  v24 = objc_msgSend_initWithFrame_forDevice_(v11, v14, deviceCopy);

  objc_msgSend_setTimeStyle_(v24, v15, style);
  objc_msgSend_setPalette_(v24, v16, paletteCopy);

  objc_msgSend_setFrozen_(v24, v17, 1);
  v18 = NTKIdealizedDate();
  objc_msgSend_setOverrideDate_duration_(v24, v19, v18, 0.0);

  v22 = objc_msgSend_layer(v24, v20, v21);
  objc_msgSend_renderInContext_(v22, v23, context);
}

- (CGRect)accessibilityFrame
{
  timeStyle = self->_timeStyle;
  if (timeStyle == 1)
  {
    v4 = objc_msgSend_analogTimeView(self, a2, v2);
  }

  else
  {
    if (timeStyle)
    {
      v24.receiver = self;
      v24.super_class = NTKLeghornTimeView;
      [(NTKLeghornTimeView *)&v24 accessibilityFrame];
      v9 = v16;
      v11 = v17;
      v13 = v18;
      v15 = v19;
      goto LABEL_7;
    }

    v4 = objc_msgSend_digitalTimeView(self, a2, v2);
  }

  v7 = v4;
  objc_msgSend_accessibilityFrame(v4, v5, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

LABEL_7:
  v20 = v9;
  v21 = v11;
  v22 = v13;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  timeStyle = self->_timeStyle;
  if (timeStyle == 1)
  {
    v11 = objc_msgSend_analogTimeView(self, v7, v8);
  }

  else
  {
    if (timeStyle)
    {
      v14 = 0;
      goto LABEL_9;
    }

    v11 = objc_msgSend_digitalTimeView(self, v7, v8);
  }

  v14 = v11;
  if (v11)
  {
    objc_msgSend_accessibilityFrame(v11, v12, v13);
    v18.x = x;
    v18.y = y;
    if (CGRectContainsPoint(v19, v18))
    {
      selfCopy = self;
      goto LABEL_10;
    }
  }

LABEL_9:
  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

@end