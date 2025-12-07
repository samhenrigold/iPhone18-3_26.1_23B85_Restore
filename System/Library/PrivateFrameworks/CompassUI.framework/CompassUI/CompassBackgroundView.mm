@interface CompassBackgroundView
- (BOOL)setCrosshairOffset:(CGSize)offset;
- (CompassBackgroundView)initWithFrame:(CGRect)frame forCompass:(BOOL)compass;
- (id)_crosshairLayerWithBounds:(CGRect)bounds;
- (id)_crosshairPathInRect:(CGRect)rect;
- (id)bearingLayer;
- (id)bubbleLayer;
- (id)crosshairLayer;
- (id)currentHeadingLayer;
- (id)largeCompassTicLayers;
- (id)prototypeLargeTicLayer;
- (id)prototypeSmallTicLayer;
- (id)rotatingLayer;
- (id)smallCompassTicLayers;
- (id)staticLayer;
- (void)layoutSubviews;
- (void)setCompassHeading:(double)heading;
@end

@implementation CompassBackgroundView

- (void)layoutSubviews
{
  v124.receiver = self;
  v124.super_class = CompassBackgroundView;
  [(CompassBackgroundView *)&v124 layoutSubviews];
  p_compassCenter = &self->_compassCenter;
  objc_msgSend_bounds(self, v4, v5);
  v7 = v6 * 0.5;
  objc_msgSend_bounds(self, v8, v9);
  self->_compassCenter.x = v7;
  self->_compassCenter.y = v10 * 0.5;
  objc_msgSend_bounds(self, v11, v12);
  self->_ticLength = compassTicLength(v13);
  objc_msgSend_bounds(self, v14, v15);
  self->_bearingLength = bearingLength(v16);
  objc_msgSend_bounds(self, v17, v18);
  self->_currentHeadingLength = currentHeadingLength(v19);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v20, v21);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v22, 1);
  v25 = objc_msgSend_prototypeSmallTicLayer(self, v23, v24);
  v28 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v26, v27);
  v29 = v28;
  v32 = objc_msgSend_CGColor(v29, v30, v31);
  objc_msgSend_setBackgroundColor_(v25, v33, v32);

  v36 = objc_msgSend_prototypeLargeTicLayer(self, v34, v35);
  v39 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v37, v38);
  v40 = v39;
  v43 = objc_msgSend_CGColor(v40, v41, v42);
  objc_msgSend_setBackgroundColor_(v36, v44, v43);

  v47 = objc_msgSend_currentHeadingLayer(self, v45, v46);
  v50 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v48, v49);
  v51 = v50;
  v54 = objc_msgSend_CGColor(v51, v52, v53);
  objc_msgSend_setBackgroundColor_(v47, v55, v54);

  v58 = objc_msgSend_bearingLayer(self, v56, v57);
  v61 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v59, v60);
  v62 = v61;
  v65 = objc_msgSend_CGColor(v62, v63, v64);
  objc_msgSend_setBackgroundColor_(v58, v66, v65);

  v69 = objc_msgSend_smallCompassTicLayers(self, v67, v68);
  objc_msgSend_bounds(self, v70, v71);
  objc_msgSend_setFrame_(v69, v72, v73);

  v76 = objc_msgSend_prototypeSmallTicLayer(self, v74, v75);
  objc_msgSend_setPosition_(v76, v77, v78, self->_compassCenter.x, self->_compassCenter.y + self->_ticRadius);

  if (self->_shownInCompass)
  {
    v81 = objc_msgSend_largeCompassTicLayers(self, v79, v80);
    objc_msgSend_bounds(self, v82, v83);
    objc_msgSend_setFrame_(v81, v84, v85);

    v88 = objc_msgSend_prototypeLargeTicLayer(self, v86, v87);
    objc_msgSend_setPosition_(v88, v89, v90, p_compassCenter->x, self->_compassCenter.y + self->_ticRadius);

    v91 = self->_ticRadius + (self->_currentHeadingLength - self->_ticLength) * 0.5;
    v94 = objc_msgSend_currentHeadingLayer(self, v92, v93);
    objc_msgSend_setPosition_(v94, v95, v96, p_compassCenter->x, self->_compassCenter.y - v91);

    v99 = objc_msgSend_bubbleLayer(self, v97, v98);
    objc_msgSend_setPosition_(v99, v100, v101, vsubq_f64(*p_compassCenter, self->_currentOffset));

    v104 = objc_msgSend_crosshairLayer(self, v102, v103);
    objc_msgSend_setPosition_(v104, v105, v106, p_compassCenter->x, self->_compassCenter.y);
  }

  bearing = self->_bearing;
  if (bearing == 1.79769313e308)
  {
    objc_msgSend_setHidden_(self->_bearingLayer, v79, 1);
  }

  else
  {
    v108 = (bearing + 270.0) * 3.14159265 / 180.0;
    v109 = self->_ticRadius + (self->_bearingLength - self->_ticLength) * 0.5;
    x = p_compassCenter->x;
    v111 = __sincos_stret(v108);
    v112 = x + v109 * v111.__cosval;
    v113 = self->_compassCenter.y + v109 * v111.__sinval;
    v116 = objc_msgSend_bearingLayer(self, v114, v115);
    objc_msgSend_setPosition_(v116, v117, v118, v112, v113);
    CATransform3DMakeRotation(&v123, v108 + 1.57079633, 0.0, 0.0, 1.0);
    objc_msgSend_setTransform_(v116, v119, &v123);
    objc_msgSend_setHidden_(v116, v120, 0);
  }

  objc_msgSend_commit(MEMORY[0x277CD9FF0], v121, v122);
}

- (id)prototypeSmallTicLayer
{
  prototypeSmallTicLayer = self->_prototypeSmallTicLayer;
  if (!prototypeSmallTicLayer)
  {
    v5 = objc_msgSend_layer(MEMORY[0x277CD9ED0], a2, v2);
    v6 = self->_prototypeSmallTicLayer;
    self->_prototypeSmallTicLayer = v5;

    objc_msgSend_setAllowsEdgeAntialiasing_(self->_prototypeSmallTicLayer, v7, 1);
    objc_msgSend_setFrame_(self->_prototypeSmallTicLayer, v8, v9, 0.0, 0.0, 0.75, self->_ticLength);
    v12 = objc_msgSend_smallCompassTicLayers(self, v10, v11);
    objc_msgSend_addSublayer_(v12, v13, self->_prototypeSmallTicLayer);

    prototypeSmallTicLayer = self->_prototypeSmallTicLayer;
  }

  return prototypeSmallTicLayer;
}

- (id)smallCompassTicLayers
{
  smallCompassTicLayers = self->_smallCompassTicLayers;
  if (!smallCompassTicLayers)
  {
    v5 = objc_msgSend_layer(MEMORY[0x277CD9F48], a2, v2);
    v6 = self->_smallCompassTicLayers;
    self->_smallCompassTicLayers = v5;

    v7 = self->_smallCompassTicLayers;
    CATransform3DMakeRotation(&v15, 0.034906585, 0.0, 0.0, 1.0);
    objc_msgSend_setInstanceTransform_(v7, v8, &v15);
    objc_msgSend_setInstanceCount_(self->_smallCompassTicLayers, v9, 180);
    v12 = objc_msgSend_rotatingLayer(self, v10, v11);
    objc_msgSend_addSublayer_(v12, v13, self->_smallCompassTicLayers);

    smallCompassTicLayers = self->_smallCompassTicLayers;
  }

  return smallCompassTicLayers;
}

- (id)prototypeLargeTicLayer
{
  prototypeLargeTicLayer = self->_prototypeLargeTicLayer;
  if (!prototypeLargeTicLayer)
  {
    v5 = objc_msgSend_layer(MEMORY[0x277CD9ED0], a2, v2);
    v6 = self->_prototypeLargeTicLayer;
    self->_prototypeLargeTicLayer = v5;

    objc_msgSend_setAllowsEdgeAntialiasing_(self->_prototypeLargeTicLayer, v7, 1);
    objc_msgSend_setFrame_(self->_prototypeLargeTicLayer, v8, v9, 0.0, 0.0, 2.5, self->_ticLength);
    v12 = objc_msgSend_largeCompassTicLayers(self, v10, v11);
    objc_msgSend_addSublayer_(v12, v13, self->_prototypeLargeTicLayer);

    prototypeLargeTicLayer = self->_prototypeLargeTicLayer;
  }

  return prototypeLargeTicLayer;
}

- (id)rotatingLayer
{
  rotatingLayer = self->_rotatingLayer;
  if (!rotatingLayer)
  {
    v5 = objc_msgSend_layer(MEMORY[0x277CD9ED0], a2, v2);
    v6 = self->_rotatingLayer;
    self->_rotatingLayer = v5;

    v7 = self->_rotatingLayer;
    v10 = objc_msgSend_layer(self, v8, v9);
    objc_msgSend_frame(v10, v11, v12);
    objc_msgSend_setFrame_(v7, v13, v14);

    v15 = self->_rotatingLayer;
    v17 = objc_msgSend_filterWithType_(MEMORY[0x277CD9EA0], v16, *MEMORY[0x277CDA658]);
    objc_msgSend_setCompositingFilter_(v15, v18, v17);

    v21 = objc_msgSend_layer(self, v19, v20);
    objc_msgSend_addSublayer_(v21, v22, self->_rotatingLayer);

    rotatingLayer = self->_rotatingLayer;
  }

  return rotatingLayer;
}

- (id)largeCompassTicLayers
{
  largeCompassTicLayers = self->_largeCompassTicLayers;
  if (!largeCompassTicLayers)
  {
    v5 = objc_msgSend_layer(MEMORY[0x277CD9F48], a2, v2);
    v6 = self->_largeCompassTicLayers;
    self->_largeCompassTicLayers = v5;

    v7 = self->_largeCompassTicLayers;
    CATransform3DMakeRotation(&v15, 0.523598776, 0.0, 0.0, 1.0);
    objc_msgSend_setInstanceTransform_(v7, v8, &v15);
    objc_msgSend_setInstanceCount_(self->_largeCompassTicLayers, v9, 12);
    v12 = objc_msgSend_rotatingLayer(self, v10, v11);
    objc_msgSend_addSublayer_(v12, v13, self->_largeCompassTicLayers);

    largeCompassTicLayers = self->_largeCompassTicLayers;
  }

  return largeCompassTicLayers;
}

- (id)currentHeadingLayer
{
  currentHeadingLayer = self->_currentHeadingLayer;
  if (!currentHeadingLayer)
  {
    v5 = objc_msgSend_layer(MEMORY[0x277CD9ED0], a2, v2);
    v6 = self->_currentHeadingLayer;
    self->_currentHeadingLayer = v5;

    objc_msgSend_setAllowsEdgeAntialiasing_(self->_currentHeadingLayer, v7, 1);
    objc_msgSend_setFrame_(self->_currentHeadingLayer, v8, v9, 0.0, 0.0, 4.0, self->_currentHeadingLength);
    v12 = objc_msgSend_staticLayer(self, v10, v11);
    objc_msgSend_addSublayer_(v12, v13, self->_currentHeadingLayer);

    currentHeadingLayer = self->_currentHeadingLayer;
  }

  return currentHeadingLayer;
}

- (id)staticLayer
{
  staticLayer = self->_staticLayer;
  if (!staticLayer)
  {
    v5 = objc_msgSend_layer(MEMORY[0x277CD9ED0], a2, v2);
    v6 = self->_staticLayer;
    self->_staticLayer = v5;

    v7 = self->_staticLayer;
    v10 = objc_msgSend_layer(self, v8, v9);
    objc_msgSend_frame(v10, v11, v12);
    objc_msgSend_setFrame_(v7, v13, v14);

    v15 = self->_staticLayer;
    v17 = objc_msgSend_filterWithType_(MEMORY[0x277CD9EA0], v16, *MEMORY[0x277CDA658]);
    objc_msgSend_setCompositingFilter_(v15, v18, v17);

    v21 = objc_msgSend_layer(self, v19, v20);
    objc_msgSend_addSublayer_(v21, v22, self->_staticLayer);

    staticLayer = self->_staticLayer;
  }

  return staticLayer;
}

- (id)bearingLayer
{
  bearingLayer = self->_bearingLayer;
  if (!bearingLayer)
  {
    v5 = objc_msgSend_layer(MEMORY[0x277CD9ED0], a2, v2);
    v6 = self->_bearingLayer;
    self->_bearingLayer = v5;

    objc_msgSend_setAllowsEdgeAntialiasing_(self->_bearingLayer, v7, 1);
    objc_msgSend_setFrame_(self->_bearingLayer, v8, v9, 0.0, 0.0, 2.5, self->_bearingLength);
    v12 = objc_msgSend_rotatingLayer(self, v10, v11);
    objc_msgSend_addSublayer_(v12, v13, self->_bearingLayer);

    bearingLayer = self->_bearingLayer;
  }

  return bearingLayer;
}

- (id)bubbleLayer
{
  bubbleLayer = self->_bubbleLayer;
  if (!bubbleLayer)
  {
    objc_msgSend_bounds(self, a2, v2);
    v6 = bubbleDiameter(v5);
    objc_msgSend_bounds(self, v7, v8);
    v10 = bubbleDiameter(v9);
    v13 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v11, v12);
    v14 = self->_bubbleLayer;
    self->_bubbleLayer = v13;

    objc_msgSend_setFrame_(self->_bubbleLayer, v15, v16, 0.0, 0.0, v6, v10);
    v19 = objc_msgSend_layer(MEMORY[0x277CD9F90], v17, v18);
    objc_msgSend_setAllowsEdgeAntialiasing_(v19, v20, 1);
    objc_msgSend_setFrame_(v19, v21, v22, 0.0, 0.0, v6, v10);
    v25 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v23, v24, 1.0, 0.119999997);
    v26 = v25;
    v29 = objc_msgSend_CGColor(v26, v27, v28);
    objc_msgSend_setFillColor_(v19, v30, v29);

    v33 = objc_msgSend_bezierPathWithOvalInRect_(MEMORY[0x277D75208], v31, v32, 0.0, 0.0, v6, v10);
    v34 = v33;
    v37 = objc_msgSend_CGPath(v34, v35, v36);
    objc_msgSend_setPath_(v19, v38, v37);

    objc_msgSend_addSublayer_(self->_bubbleLayer, v39, v19);
    objc_msgSend_bounds(self, v40, v41);
    v43 = bubbleDiameter(v42) * 0.5;
    objc_msgSend_bounds(self, v44, v45);
    v47 = smallCrosshairWidth(v46);
    objc_msgSend_bounds(self, v48, v49);
    v51 = smallCrosshairWidth(v50);
    v54 = objc_msgSend__crosshairLayerWithBounds_(self, v52, v53, 0.0, 0.0, v47, v51);
    objc_msgSend_setPosition_(v54, v55, v56, v43, v43);
    objc_msgSend_addSublayer_(self->_bubbleLayer, v57, v54);
    v60 = objc_msgSend_staticLayer(self, v58, v59);
    objc_msgSend_addSublayer_(v60, v61, self->_bubbleLayer);

    bubbleLayer = self->_bubbleLayer;
  }

  return bubbleLayer;
}

- (id)crosshairLayer
{
  crosshairLayer = self->_crosshairLayer;
  if (!crosshairLayer)
  {
    objc_msgSend_bounds(self, a2, v2);
    v6 = crosshairWidth(v5);
    objc_msgSend_bounds(self, v7, v8);
    v10 = crosshairWidth(v9);
    v13 = objc_msgSend__crosshairLayerWithBounds_(self, v11, v12, 0.0, 0.0, v6, v10);
    v14 = self->_crosshairLayer;
    self->_crosshairLayer = v13;

    v17 = objc_msgSend_staticLayer(self, v15, v16);
    objc_msgSend_addSublayer_(v17, v18, self->_crosshairLayer);

    crosshairLayer = self->_crosshairLayer;
  }

  return crosshairLayer;
}

- (CompassBackgroundView)initWithFrame:(CGRect)frame forCompass:(BOOL)compass
{
  v6.receiver = self;
  v6.super_class = CompassBackgroundView;
  result = [(CompassBackgroundView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_shownInCompass = compass;
    result->_bearing = 1.79769313e308;
  }

  return result;
}

- (id)_crosshairLayerWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9 = objc_msgSend_layer(MEMORY[0x277CD9F90], a2, v3);
  objc_msgSend_setAllowsEdgeAntialiasing_(v9, v10, 1);
  objc_msgSend_setBounds_(v9, v11, v12, x, y, width, height);
  v15 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v13, v14);
  v16 = v15;
  v19 = objc_msgSend_CGColor(v16, v17, v18);
  objc_msgSend_setStrokeColor_(v9, v20, v19);

  v23 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v21, v22);
  objc_msgSend_scale(v23, v24, v25);
  objc_msgSend_setLineWidth_(v9, v27, v28, 1.0 / v26);

  v31 = objc_msgSend__crosshairPathInRect_(self, v29, v30, x, y, width, height);
  v32 = v31;
  v35 = objc_msgSend_CGPath(v32, v33, v34);
  objc_msgSend_setPath_(v9, v36, v35);

  return v9;
}

- (id)_crosshairPathInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = objc_alloc_init(MEMORY[0x277D75208]);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MinY = CGRectGetMinY(v27);
  objc_msgSend_moveToPoint_(v7, v10, v11, MidX, MinY);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v12 = CGRectGetMidX(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  MaxY = CGRectGetMaxY(v29);
  objc_msgSend_addLineToPoint_(v7, v14, v15, v12, MaxY);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MinX = CGRectGetMinX(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  MidY = CGRectGetMidY(v31);
  objc_msgSend_moveToPoint_(v7, v18, v19, MinX, MidY);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  MaxX = CGRectGetMaxX(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v21 = CGRectGetMidY(v33);
  objc_msgSend_addLineToPoint_(v7, v22, v23, MaxX, v21);

  return v7;
}

- (BOOL)setCrosshairOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  objc_msgSend_bounds(self, a2, v3);
  v8 = bubbleDiameter(v7);
  p_currentOffset = &self->_currentOffset;
  if (vabdd_f64(p_currentOffset->x, width * v8 / 5.0) < 0.5 && vabdd_f64(p_currentOffset->y, height * v8 / 5.0) < 0.5)
  {
    return 0;
  }

  CGPointRoundToPixel();
  p_currentOffset->x = v11;
  p_currentOffset->y = v12;
  return 1;
}

- (void)setCompassHeading:(double)heading
{
  v14.receiver = self;
  v14.super_class = CompassBackgroundView;
  [(CompassRotatingView *)&v14 setCompassHeading:heading];
  v6 = objc_msgSend_rotatingLayer(self, v4, v5);
  v7 = MEMORY[0x277CCABB0];
  objc_msgSend_angle(self, v8, v9);
  v12 = objc_msgSend_numberWithDouble_(v7, v10, v11);
  objc_msgSend_setValue_forKeyPath_(v6, v13, v12, @"transform.rotation.z");
}

@end