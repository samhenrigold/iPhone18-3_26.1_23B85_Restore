@interface NetTopoDeviceConnectionLayer
- (CGPath)newConnectionPathWithOffset:(double)offset;
- (CGPoint)downstreamConnectionPoint;
- (CGPoint)siblingMergePoint;
- (CGPoint)upstreamConnectionPoint;
- (CGRect)getUserInteractionBounds;
- (NSString)debugDescription;
- (NetTopoDeviceConnectionLayer)initWithUIStyle:(int)style andOwningView:(id)view;
- (id)describeOne:(id)one uiLayer:(id)layer indent:(unint64_t)indent;
- (unint64_t)connectionMedium;
- (void)addBottomWindingConnectionToPath:(CGPath *)path withOffset:(double)offset;
- (void)addCurvedArrowConnectionToPath:(CGPath *)path withOffset:(double)offset;
- (void)addSideWindingConnectionToPath:(CGPath *)path withOffset:(double)offset;
- (void)dealloc;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)initNetTopoDeviceConnectionLayerCommonWithStyle:(int)style andOwningView:(id)view;
- (void)layoutSublayers;
- (void)setDownstreamConnectionPoint:(CGPoint)point;
- (void)setNeedsDisplay;
- (void)setSelected:(BOOL)selected;
- (void)setSiblingMergePoint:(CGPoint)point;
- (void)setUpstreamConnectionPoint:(CGPoint)point;
@end

@implementation NetTopoDeviceConnectionLayer

- (void)initNetTopoDeviceConnectionLayerCommonWithStyle:(int)style andOwningView:(id)view
{
  if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
  {
    sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer initNetTopoDeviceConnectionLayerCommonWithStyle:andOwningView:]", 800, "%@\n", self);
  }

  self->super._selectable = 0;
  objc_msgSend_setOwningView_(self, a2, view, view);
  v6 = objc_alloc_init(MEMORY[0x277CD9F90]);
  self->_connectionLineLayer = v6;
  objc_msgSend_setDelegate_(v6, v7, self, v8);
  v11 = objc_msgSend_setLineCap_(self->_connectionLineLayer, v9, *MEMORY[0x277CDA780], v10);
  if (self->super._topoStyle)
  {
    if (sub_23EC132F8(v11, v12, v13, v14))
    {
      self->_lineColorEthernet = sub_23EBFD680(0.45, 0.45, 0.45, 1.0);
      v15 = 1.0;
      v16 = 0.45;
      v17 = 0.45;
      v18 = 0.45;
    }

    else
    {
      self->_lineColorEthernet = sub_23EBFD680(0.584313725, 0.607843137, 0.662745098, 1.0);
      v15 = 1.0;
      v16 = 0.584313725;
      v17 = 0.607843137;
      v18 = 0.662745098;
    }

    v19 = sub_23EBFD680(v16, v17, v18, v15);
    v20 = &OBJC_IVAR___NetTopoDeviceConnectionLayer__lineColorWiFi;
  }

  else
  {
    self->_lineColorActive = sub_23EBFD680(1.0, 1.0, 1.0, 0.8);
    v19 = sub_23EBFD680(1.0, 1.0, 1.0, 0.2);
    v20 = &OBJC_IVAR___NetTopoDeviceConnectionLayer__lineColorInactive;
  }

  *(&self->super.super.super.isa + *v20) = v19;
  self->_selectedLineColor = sub_23EBFD680(0.117647059, 0.137254902, 0.823529412, 1.0);
  self->_whiteColor = sub_23EBFD680(1.0, 1.0, 1.0, 0.75);
  self->_clearColor = sub_23EBFD718();
  objc_msgSend_setZPosition_(self, v21, v22, v23, 0.0);
  connectionLineLayer = self->_connectionLineLayer;

  objc_msgSend_addSublayer_(self, v24, connectionLineLayer, v25);
}

- (NetTopoDeviceConnectionLayer)initWithUIStyle:(int)style andOwningView:(id)view
{
  v5 = *&style;
  v10.receiver = self;
  v10.super_class = NetTopoDeviceConnectionLayer;
  v6 = [NetTopoObjectLayer initWithUIStyle:sel_initWithUIStyle_andOwningView_ andOwningView:?];
  v8 = v6;
  if (v6)
  {
    objc_msgSend_initNetTopoDeviceConnectionLayerCommonWithStyle_andOwningView_(v6, v7, v5, view);
  }

  return v8;
}

- (void)dealloc
{
  if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
  {
    sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer dealloc]", 800, "%@\n", self);
  }

  self->_connectionLineLayer = 0;
  topoStyle = self->super._topoStyle;
  v4 = topoStyle == 0;
  if (topoStyle)
  {
    v5 = &OBJC_IVAR___NetTopoDeviceConnectionLayer__lineColorWiFi;
  }

  else
  {
    v5 = &OBJC_IVAR___NetTopoDeviceConnectionLayer__lineColorActive;
  }

  if (v4)
  {
    v6 = &OBJC_IVAR___NetTopoDeviceConnectionLayer__lineColorInactive;
  }

  else
  {
    v6 = &OBJC_IVAR___NetTopoDeviceConnectionLayer__lineColorEthernet;
  }

  CGColorRelease(*(&self->super.super.super.isa + *v5));
  CGColorRelease(*(&self->super.super.super.isa + *v6));
  CGColorRelease(self->_selectedLineColor);
  self->_selectedLineColor = 0;
  CGColorRelease(self->_clearColor);
  self->_clearColor = 0;
  CGColorRelease(self->_whiteColor);
  self->_whiteColor = 0;
  v7.receiver = self;
  v7.super_class = NetTopoDeviceConnectionLayer;
  [(NetTopoObjectLayer *)&v7 dealloc];
}

- (CGRect)getUserInteractionBounds
{
  if (dword_27E383138 <= 800)
  {
    if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
    {
      objc_msgSend_bounds(self, a2, v2, v3);
      v6 = v5;
      objc_msgSend_bounds(self, v7, v8, v9);
      v11 = v10;
      objc_msgSend_bounds(self, v12, v13, v14);
      v16 = v15;
      objc_msgSend_bounds(self, v17, v18, v19);
      sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer getUserInteractionBounds]", 800, "bounds = (x = %.2f, y = %.2f, w = %.2f, h = %.2f)\n", v6, v11, v16, v20);
    }

    if (dword_27E383138 <= 800)
    {
      if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
      {
        objc_msgSend_frame(self, a2, v2, v3);
        v22 = v21;
        objc_msgSend_frame(self, v23, v24, v25);
        v27 = v26;
        objc_msgSend_frame(self, v28, v29, v30);
        v32 = v31;
        objc_msgSend_frame(self, v33, v34, v35);
        sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer getUserInteractionBounds]", 800, "frame = (x = %.2f, y = %.2f, w = %.2f, h = %.2f)\n", v22, v27, v32, v36);
      }

      if (dword_27E383138 <= 800)
      {
        if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
        {
          objc_msgSend_position(self, a2, v2, v3);
          v38 = v37;
          objc_msgSend_position(self, v39, v40, v41);
          sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer getUserInteractionBounds]", 800, "position = (x = %.2f, y = %.2f)\n", v38, v42);
        }

        if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
        {
          objc_msgSend_anchorPoint(self, a2, v2, v3);
          v44 = v43;
          objc_msgSend_anchorPoint(self, v45, v46, v47);
          sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer getUserInteractionBounds]", 800, "anchor = (x = %.2f, y = %.2f)\n", v44, v48);
        }
      }
    }
  }

  objc_msgSend_bounds(self, a2, v2, v3);
  result.size.height = v52;
  result.size.width = v51;
  result.origin.y = v50;
  result.origin.x = v49;
  return result;
}

- (void)setDownstreamConnectionPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  p_downstreamConnectionPoint = &self->_downstreamConnectionPoint;
  v9 = objc_msgSend_superlayer(self, a2, v3, v4);
  objc_msgSend_convertPoint_fromLayer_(self, v10, v9, v11, x, y);
  p_downstreamConnectionPoint->x = v12;
  p_downstreamConnectionPoint->y = v13;
  if (dword_27E383138 <= 800)
  {
    if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
    {
      sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer setDownstreamConnectionPoint:]", 800, "input point=(x = %.2f y = %.2f)\n", x, y);
    }

    if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
    {
      sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer setDownstreamConnectionPoint:]", 800, "converted point=(x = %.2f y = %.2f)\n", p_downstreamConnectionPoint->x, p_downstreamConnectionPoint->y);
    }
  }
}

- (CGPoint)downstreamConnectionPoint
{
  p_downstreamConnectionPoint = &self->_downstreamConnectionPoint;
  v7 = objc_msgSend_superlayer(self, a2, v2, v3);
  x = p_downstreamConnectionPoint->x;
  y = p_downstreamConnectionPoint->y;

  objc_msgSend_convertPoint_toLayer_(self, v6, v7, v8, x, y);
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)setUpstreamConnectionPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  p_upstreamConnectionPoint = &self->_upstreamConnectionPoint;
  v9 = objc_msgSend_superlayer(self, a2, v3, v4);
  objc_msgSend_convertPoint_fromLayer_(self, v10, v9, v11, x, y);
  p_upstreamConnectionPoint->x = v12;
  p_upstreamConnectionPoint->y = v13;
  if (dword_27E383138 <= 800)
  {
    if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
    {
      sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer setUpstreamConnectionPoint:]", 800, "input point=(x = %.2f y = %.2f)\n", x, y);
    }

    if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
    {
      sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer setUpstreamConnectionPoint:]", 800, "converted point=(x = %.2f y = %.2f)\n", p_upstreamConnectionPoint->x, p_upstreamConnectionPoint->y);
    }
  }
}

- (CGPoint)upstreamConnectionPoint
{
  p_upstreamConnectionPoint = &self->_upstreamConnectionPoint;
  v7 = objc_msgSend_superlayer(self, a2, v2, v3);
  x = p_upstreamConnectionPoint->x;
  y = p_upstreamConnectionPoint->y;

  objc_msgSend_convertPoint_toLayer_(self, v6, v7, v8, x, y);
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)siblingMergePoint
{
  p_siblingMergePoint = &self->_siblingMergePoint;
  v7 = objc_msgSend_superlayer(self, a2, v2, v3);
  x = p_siblingMergePoint->x;
  y = p_siblingMergePoint->y;

  objc_msgSend_convertPoint_toLayer_(self, v6, v7, v8, x, y);
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)setSiblingMergePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  p_siblingMergePoint = &self->_siblingMergePoint;
  v9 = objc_msgSend_superlayer(self, a2, v3, v4);
  objc_msgSend_convertPoint_fromLayer_(self, v10, v9, v11, x, y);
  p_siblingMergePoint->x = v12;
  p_siblingMergePoint->y = v13;
  if (dword_27E383138 <= 800)
  {
    if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
    {
      sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer setSiblingMergePoint:]", 800, "input point=(x = %.2f y = %.2f)\n", x, y);
    }

    if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
    {
      sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer setSiblingMergePoint:]", 800, "converted point=(x = %.2f y = %.2f)\n", p_siblingMergePoint->x, p_siblingMergePoint->y);
    }
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->super._selectable)
  {
    v16 = v4;
    v17 = v5;
    selectedCopy = selected;
    if (objc_msgSend_isSelected(self, a2, selected, v3) != selected)
    {
      v15.receiver = self;
      v15.super_class = NetTopoDeviceConnectionLayer;
      [(NetTopoObjectLayer *)&v15 setSelected:selectedCopy];
      objc_msgSend_setNeedsDisplay(self->_connectionLineLayer, v8, v9, v10);
      v14 = 100.0;
      if (!selectedCopy)
      {
        v14 = 0.0;
      }

      objc_msgSend_setZPosition_(self, v11, v12, v13, v14);
    }
  }
}

- (unint64_t)connectionMedium
{
  v5 = objc_msgSend_associatedNode(self, a2, v2, v3);
  if (v5)
  {
    return objc_msgSend_medium(v5, v6, v7, v8);
  }

  else
  {
    return self->_connectionMediumFallback;
  }
}

- (void)layoutSublayers
{
  objc_msgSend_bounds(self, a2, v2, v3);
  objc_msgSend_setFrame_(self->_connectionLineLayer, v5, v6, v7);
  connectionLineLayer = self->_connectionLineLayer;

  objc_msgSend_setNeedsDisplay(connectionLineLayer, v8, v9, v10);
}

- (void)addSideWindingConnectionToPath:(CGPath *)path withOffset:(double)offset
{
  if (objc_msgSend_upstreamDeviceSpatialRelationship(self, a2, path, v4) == 4)
  {
    v11 = objc_msgSend_connectionMedium(self, v8, v9, v10) == 1;
    v15 = 1.0;
    v16 = -1.0;
  }

  else
  {
    v11 = objc_msgSend_upstreamDeviceSpatialRelationship(self, v8, v9, v10) == 1;
    v15 = -1.0;
    v16 = 1.0;
  }

  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  if (objc_msgSend_upstreamConnectionSide(self, v12, v13, v14, v15) == 1)
  {
    v18 = -10.0;
  }

  else
  {
    v18 = 10.0;
  }

  CGPathMoveToPoint(path, 0, self->_upstreamConnectionPoint.x + v18, self->_upstreamConnectionPoint.y);
  if (offset != 0.0)
  {
    CGPathAddLineToPoint(path, 0, v18 + self->_upstreamConnectionPoint.x, self->_upstreamConnectionPoint.y + offset);
  }

  p_siblingMergePoint = &self->_siblingMergePoint;
  CGPathAddArcToPoint(path, 0, self->_siblingMergePoint.x - offset, self->_upstreamConnectionPoint.y + offset, self->_siblingMergePoint.x - offset, self->_upstreamConnectionPoint.y + 12.0 + offset, 12.0);
  CGPathAddArcToPoint(path, 0, p_siblingMergePoint->x - offset, self->_siblingMergePoint.y - offset, p_siblingMergePoint->x + v17 * 12.0 - offset, self->_siblingMergePoint.y - offset, 12.0);
  p_downstreamConnectionPoint = &self->_downstreamConnectionPoint;
  CGPathAddArcToPoint(path, 0, p_downstreamConnectionPoint->x - offset, p_siblingMergePoint->y - offset, p_downstreamConnectionPoint->x - offset, p_siblingMergePoint->y + 12.0 - offset, 12.0);
  CGPathAddLineToPoint(path, 0, p_downstreamConnectionPoint->x - offset, p_downstreamConnectionPoint->y + -10.0);
  if (offset != 0.0)
  {
    x = p_downstreamConnectionPoint->x;
    v22 = p_downstreamConnectionPoint->y + -10.0;

    CGPathAddLineToPoint(path, 0, x, v22);
  }
}

- (void)addBottomWindingConnectionToPath:(CGPath *)path withOffset:(double)offset
{
  v11 = 1.0;
  if (objc_msgSend_upstreamDeviceSpatialRelationship(self, a2, path, v4) == 3 || (v11 = -1.0, objc_msgSend_upstreamDeviceSpatialRelationship(self, v8, v9, v10) == 5))
  {
    if (dword_27E383138 <= 800)
    {
      if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
      {
        sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer addBottomWindingConnectionToPath:withOffset:]", 800, "_upstreamConnectionPoint = (x = %.2f y = %.2f)\n", self->_upstreamConnectionPoint.x, self->_upstreamConnectionPoint.y);
      }

      if (dword_27E383138 <= 800)
      {
        if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
        {
          sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer addBottomWindingConnectionToPath:withOffset:]", 800, "_downstreamConnectionPoint = (x = %.2f y = %.2f)\n", self->_downstreamConnectionPoint.x, self->_downstreamConnectionPoint.y);
        }

        if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
        {
          sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer addBottomWindingConnectionToPath:withOffset:]", 800, "_siblingMergePoint = (x = %.2f y = %.2f)\n", self->_siblingMergePoint.x, self->_siblingMergePoint.y);
        }
      }
    }

    CGPathMoveToPoint(path, 0, self->_upstreamConnectionPoint.x - offset, self->_upstreamConnectionPoint.y + 4.0);
    if (offset != 0.0)
    {
      CGPathAddLineToPoint(path, 0, self->_upstreamConnectionPoint.x - offset, self->_upstreamConnectionPoint.y);
    }

    p_siblingMergePoint = &self->_siblingMergePoint;
    CGPathAddArcToPoint(path, 0, self->_siblingMergePoint.x - offset, self->_siblingMergePoint.y - offset, self->_siblingMergePoint.x + v11 * 12.0 - offset, self->_siblingMergePoint.y - offset, 12.0);
    p_downstreamConnectionPoint = &self->_downstreamConnectionPoint;
    CGPathAddArcToPoint(path, 0, p_downstreamConnectionPoint->x - offset, p_siblingMergePoint->y - offset, p_downstreamConnectionPoint->x - offset, p_siblingMergePoint->y + 12.0 - offset, 12.0);
    CGPathAddLineToPoint(path, 0, p_downstreamConnectionPoint->x - offset, p_downstreamConnectionPoint->y);
    if (offset != 0.0)
    {
      x = p_downstreamConnectionPoint->x;
      y = p_downstreamConnectionPoint->y;

      CGPathAddLineToPoint(path, 0, x, y);
    }
  }

  else if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
  {

    sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer addBottomWindingConnectionToPath:withOffset:]", 800, "unsupported spatial relationship for this position\n");
  }
}

- (void)addCurvedArrowConnectionToPath:(CGPath *)path withOffset:(double)offset
{
  if (objc_msgSend_upstreamDeviceSpatialRelationship(self, a2, path, v4) == 1)
  {
    if (dword_27E383138 <= 800)
    {
      if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
      {
        sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer addCurvedArrowConnectionToPath:withOffset:]", 800, "_upstreamConnectionPoint = (x = %.2f y = %.2f)\n", self->_upstreamConnectionPoint.x, self->_upstreamConnectionPoint.y);
      }

      if (dword_27E383138 <= 800)
      {
        if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
        {
          sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer addCurvedArrowConnectionToPath:withOffset:]", 800, "_downstreamConnectionPoint = (x = %.2f y = %.2f)\n", self->_downstreamConnectionPoint.x, self->_downstreamConnectionPoint.y);
        }

        if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
        {
          sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer addCurvedArrowConnectionToPath:withOffset:]", 800, "offset = %.2f\n", offset);
        }
      }
    }

    y = self->_downstreamConnectionPoint.y;
    v9 = self->_downstreamConnectionPoint.x - offset;
    v10 = self->_upstreamConnectionPoint.x + offset + 3.0;
    v11 = self->_upstreamConnectionPoint.y + 1.0;
    CGPathMoveToPoint(path, 0, v9, y);
    CGPathAddCurveToPoint(path, 0, v9 + -25.0, y + -26.0, v10 + 25.0, v11 + -26.0, v10 + 3.0, v11 + -1.0);
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, v10, v11 + -1.0);
    CGPathAddLineToPoint(Mutable, 0, v10 + 15.0, v11 + -1.0);
    CGPathAddLineToPoint(Mutable, 0, v10 + 8.0, v11 + -13.6999998);
    CGPathCloseSubpath(Mutable);
    self->_arrowhead = Mutable;

    CGPathAddPath(path, 0, Mutable);
  }

  else if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
  {

    sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer addCurvedArrowConnectionToPath:withOffset:]", 800, "unsupported spatial relationship for this position\n");
  }
}

- (CGPath)newConnectionPathWithOffset:(double)offset
{
  if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
  {
    sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer newConnectionPathWithOffset:]", 800, "entered with offset %f\n", offset);
  }

  Mutable = CGPathCreateMutable();
  v9 = objc_msgSend_upstreamDeviceSpatialRelationship(self, v6, v7, v8);
  if (v9 > 3)
  {
    if (v9 == 4)
    {
      if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
      {
        sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer newConnectionPathWithOffset:]", 800, "kUpstreamDeviceAboveCenter\n");
      }

      v17 = objc_msgSend_connectionStyle(self, v10, v11, v12);
      if (v17 == 4)
      {
        goto LABEL_49;
      }

      if (v17 == 3)
      {
        goto LABEL_45;
      }

      if (v17 != 1)
      {
        goto LABEL_63;
      }

      if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
      {
        sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer newConnectionPathWithOffset:]", 800, "kConnectionStyleDirect\n");
      }

      CGPathMoveToPoint(Mutable, 0, self->_upstreamConnectionPoint.x, self->_upstreamConnectionPoint.y + 4.0);
      if (offset != 0.0)
      {
        CGPathAddLineToPoint(Mutable, 0, self->_upstreamConnectionPoint.x - offset, self->_upstreamConnectionPoint.y + 4.0);
      }

      p_downstreamConnectionPoint = &self->_downstreamConnectionPoint;
      CGPathAddLineToPoint(Mutable, 0, p_downstreamConnectionPoint->x - offset, p_downstreamConnectionPoint->y);
      if (offset == 0.0)
      {
        goto LABEL_63;
      }

      x = p_downstreamConnectionPoint->x;
      y = p_downstreamConnectionPoint->y;
LABEL_62:
      CGPathAddLineToPoint(Mutable, 0, x, y);
      goto LABEL_63;
    }

    if (v9 != 5)
    {
      goto LABEL_63;
    }

LABEL_16:
    objc_msgSend_addBottomWindingConnectionToPath_withOffset_(self, v10, Mutable, v12, offset);
    goto LABEL_63;
  }

  if ((v9 - 1) >= 2)
  {
    if (v9 != 3)
    {
      goto LABEL_63;
    }

    goto LABEL_16;
  }

  v13 = objc_msgSend_connectionStyle(self, v10, v11, v12);
  if (v13 <= 2)
  {
    if (v13 == 1)
    {
      if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
      {
        sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer newConnectionPathWithOffset:]", 800, "kConnectionStyleDirect\n");
      }

      CGPathMoveToPoint(Mutable, 0, self->_upstreamConnectionPoint.x + 10.0, self->_upstreamConnectionPoint.y);
      if (offset != 0.0)
      {
        CGPathAddLineToPoint(Mutable, 0, self->_upstreamConnectionPoint.x + 10.0, self->_upstreamConnectionPoint.y - offset);
      }

      v24 = &self->_downstreamConnectionPoint;
      CGPathAddLineToPoint(Mutable, 0, v24->x + -10.0, v24->y - offset);
      if (offset == 0.0)
      {
        goto LABEL_63;
      }

      y = v24->y;
      x = v24->x + -10.0;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_63;
      }

      if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
      {
        sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer newConnectionPathWithOffset:]", 800, "kConnectionStyleSingleBend\n");
      }

      if (objc_msgSend_upstreamDeviceSpatialRelationship(self, v14, v15, v16) == 1)
      {
        v21 = 1.0;
      }

      else
      {
        v21 = -1.0;
      }

      p_upstreamConnectionPoint = &self->_upstreamConnectionPoint;
      CGPathMoveToPoint(Mutable, 0, self->_upstreamConnectionPoint.x + v21 * 10.0, self->_upstreamConnectionPoint.y);
      if (offset != 0.0)
      {
        CGPathAddLineToPoint(Mutable, 0, p_upstreamConnectionPoint->x + v21 * 10.0, self->_upstreamConnectionPoint.y - offset);
      }

      v23 = &self->_downstreamConnectionPoint;
      CGPathAddArcToPoint(Mutable, 0, v23->x + offset * v21, p_upstreamConnectionPoint->y - offset, v23->x + offset * v21, v23->y + -10.0, 12.0);
      CGPathAddLineToPoint(Mutable, 0, v23->x + offset * v21, v23->y + -10.0);
      if (offset == 0.0)
      {
        goto LABEL_63;
      }

      x = v23->x;
      y = v23->y + -10.0;
    }

    goto LABEL_62;
  }

  if (v13 != 3)
  {
    if (v13 != 4)
    {
      if (v13 == 5)
      {
        objc_msgSend_addCurvedArrowConnectionToPath_withOffset_(self, v14, Mutable, v16, offset + 6.0);
      }

      goto LABEL_63;
    }

LABEL_49:
    if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
    {
      sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer newConnectionPathWithOffset:]", 800, "kConnectionStyleSideWinding\n");
    }

    objc_msgSend_addSideWindingConnectionToPath_withOffset_(self, v14, Mutable, v16, offset);
    goto LABEL_63;
  }

LABEL_45:
  if (dword_27E383138 > 800)
  {
    return Mutable;
  }

  if (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u))
  {
    sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer newConnectionPathWithOffset:]", 800, "kConnectionStyleBottomWinding - unsupported for this spatial relationship\n");
  }

LABEL_63:
  if (dword_27E383138 <= 800 && (dword_27E383138 != -1 || sub_23EB74AC8(&dword_27E383138, 0x320u)))
  {
    sub_23EB75374(&dword_27E383138, "[NetTopoDeviceConnectionLayer newConnectionPathWithOffset:]", 800, "done\n");
  }

  return Mutable;
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  v6 = objc_msgSend_newConnectionPathWithOffset_(self, a2, layer, context, 0.0);
  isGhosted = objc_msgSend_isGhosted(self, v7, v8, v9);
  topoStyle = self->super._topoStyle;
  connectionLineLayer = self->_connectionLineLayer;
  if ((isGhosted & 1) == 0)
  {
    if (topoStyle)
    {
      objc_msgSend_setLineDashPattern_(self->_connectionLineLayer, v11, 0, v12);
      goto LABEL_9;
    }

    v28 = 584;
LABEL_8:
    objc_msgSend_setStrokeColor_(self->_connectionLineLayer, v11, *(&self->super.super.super.isa + v28), v12);
    goto LABEL_9;
  }

  if (!topoStyle)
  {
    v28 = 592;
    goto LABEL_8;
  }

  v15 = MEMORY[0x277CBEA60];
  v16 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v11, 6, v12);
  v19 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v17, 6, v18);
  v22 = objc_msgSend_arrayWithObjects_(v15, v20, v16, v21, v19, 0);
  objc_msgSend_setLineDashPattern_(connectionLineLayer, v23, v22, v24);
LABEL_9:
  if (self->super._selectable && objc_msgSend_isSelected(self, v25, v26, v27))
  {
    objc_msgSend_setStrokeColor_(self->_connectionLineLayer, v25, self->_selectedLineColor, v27);
    v31 = 6.0;
    goto LABEL_18;
  }

  if (objc_msgSend_connectionMedium(self, v25, v26, v27) == 1 || objc_msgSend_connectionMedium(self, v32, v33, v34) == 3)
  {
    v36 = self->_connectionLineLayer;
    if (self->super._topoStyle)
    {
      objc_msgSend_setStrokeColor_(self->_connectionLineLayer, v32, self->_lineColorWiFi, v34);
    }

    else
    {
      v37 = MEMORY[0x277CBEA60];
      v38 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v32, 0, v34);
      v41 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v39, 10, v40);
      v44 = objc_msgSend_arrayWithObjects_(v37, v42, v38, v43, v41, 0);
      objc_msgSend_setLineDashPattern_(v36, v45, v44, v46);
    }

LABEL_17:
    v31 = 4.0;
    goto LABEL_18;
  }

  if (objc_msgSend_connectionMedium(self, v32, v35, v34) == 2 || (v31 = 4.0, !objc_msgSend_connectionMedium(self, v29, v65, v30)))
  {
    v66 = self->_connectionLineLayer;
    if (self->super._topoStyle)
    {
      objc_msgSend_setStrokeColor_(v66, v29, self->_lineColorEthernet, v30);
    }

    else
    {
      objc_msgSend_setLineDashPattern_(v66, v29, 0, v30);
    }

    goto LABEL_17;
  }

LABEL_18:
  objc_msgSend_setFillColor_(self->_connectionLineLayer, v29, self->_clearColor, v30);
  objc_msgSend_setLineWidth_(self->_connectionLineLayer, v47, v48, v49, v31);
  objc_msgSend_setLineJoin_(self->_connectionLineLayer, v50, *MEMORY[0x277CDA7A0], v51);
  objc_msgSend_setPath_(self->_connectionLineLayer, v52, v6, v53);
  if (self->_arrowhead)
  {
    CGContextSaveGState(context);
    if (self->super._topoStyle)
    {
      v54 = &OBJC_IVAR___NetTopoDeviceConnectionLayer__lineColorWiFi;
    }

    else
    {
      v54 = &OBJC_IVAR___NetTopoDeviceConnectionLayer__lineColorActive;
    }

    CGContextSetFillColorWithColor(context, *(&self->super.super.super.isa + *v54));
    CGContextAddPath(context, self->_arrowhead);
    CGContextFillPath(context);
    CGContextRestoreGState(context);
    objc_msgSend_setLineJoin_(self->_connectionLineLayer, v55, *MEMORY[0x277CDA798], v56);
    self->_arrowhead = 0;
  }

  CGPathRelease(v6);
  if (self->super._topoStyle == 1 && !sub_23EC132F8(v57, v58, v59, v60))
  {
    LODWORD(v64) = 1.0;
    objc_msgSend_setShadowOpacity_(self->_connectionLineLayer, v61, v62, v63, v64);
    objc_msgSend_setShadowOffset_(self->_connectionLineLayer, v67, v68, v69, 0.0, 1.0);
    objc_msgSend_setShadowRadius_(self->_connectionLineLayer, v70, v71, v72, 0.0);
    whiteColor = self->_whiteColor;
    v75 = self->_connectionLineLayer;

    MEMORY[0x2821F9670](v75, sel_setShadowColor_, whiteColor, v73);
  }
}

- (void)setNeedsDisplay
{
  v6.receiver = self;
  v6.super_class = NetTopoDeviceConnectionLayer;
  [(NetTopoDeviceConnectionLayer *)&v6 setNeedsDisplay];
  objc_msgSend_setNeedsDisplay(self->_connectionLineLayer, v3, v4, v5);
}

- (id)describeOne:(id)one uiLayer:(id)layer indent:(unint64_t)indent
{
  v8 = objc_opt_class();
  Name = class_getName(v8);
  v13 = objc_msgSend_retainCount(layer, v10, v11, v12);
  objc_msgSend_appendFormat_(one, v14, @"<%s: %p retains %d> ("), v15, Name, layer, v13;
  v19 = objc_msgSend_connectionMedium(self, v16, v17, v18);
  v22 = @"unknown medium";
  if (v19 == 2)
  {
    v22 = @"Ethernet";
  }

  if (v19 == 1)
  {
    objc_msgSend_appendString_(one, v20, @"WiFi", v21);
  }

  else
  {
    objc_msgSend_appendString_(one, v20, v22, v21);
  }

  objc_msgSend_appendString_(one, v23, @""), v24);
  return one;
}

- (NSString)debugDescription
{
  v4 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, &stru_285145FE8, v2);
  objc_msgSend_describeOne_uiLayer_indent_(self, v5, v4, self, 0);
  return v4;
}

@end