@interface CalibrationBallView
- (CalibrationBallView)initWithFrame:(CGRect)frame ballRadius:(double)radius;
- (id)ballView;
- (void)layoutSubviews;
@end

@implementation CalibrationBallView

- (CalibrationBallView)initWithFrame:(CGRect)frame ballRadius:(double)radius
{
  v6.receiver = self;
  v6.super_class = CalibrationBallView;
  result = [(CalibrationBallView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_currentAngle = 0.0;
    result->_ballRadius = radius;
  }

  return result;
}

- (id)ballView
{
  ballView = self->_ballView;
  if (!ballView)
  {
    if (self->_ballRadius <= 0.0)
    {
      ballView = 0;
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x277D75D18]);
      v7 = objc_msgSend_initWithFrame_(v4, v5, v6, 0.0, 0.0, self->_ballRadius, self->_ballRadius);
      v8 = self->_ballView;
      self->_ballView = v7;

      v11 = objc_msgSend_redColor(MEMORY[0x277D75348], v9, v10);
      v12 = v11;
      v15 = objc_msgSend_CGColor(v12, v13, v14);
      v18 = objc_msgSend_layer(self->_ballView, v16, v17);
      objc_msgSend_setBackgroundColor_(v18, v19, v15);

      v22 = objc_msgSend_layer(self->_ballView, v20, v21);
      objc_msgSend_setMasksToBounds_(v22, v23, 1);

      v24 = self->_ballRadius * 0.5;
      v27 = objc_msgSend_layer(self->_ballView, v25, v26);
      objc_msgSend_setCornerRadius_(v27, v28, v29, v24);

      objc_msgSend_addSubview_(self, v30, self->_ballView);
      ballView = self->_ballView;
    }
  }

  return ballView;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = CalibrationBallView;
  [(CalibrationBallView *)&v16 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4);
  MidX = CGRectGetMidX(v17);
  objc_msgSend_bounds(self, v6, v7);
  MidY = CGRectGetMidY(v18);
  v11 = objc_msgSend_ballView(self, v9, v10);
  trackRadius = self->_trackRadius;
  v13 = __sincos_stret(self->_currentAngle);
  objc_msgSend_setCenter_(v11, v14, v15, MidX + trackRadius * v13.__cosval, MidY + trackRadius * v13.__sinval);
}

@end