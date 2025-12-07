@interface BKMousePointerDisplayRenderer
+ (BKMousePointerDisplayRendererRootLayerProperties)rootLayerPropertiesForDisplay:(SEL)display displayController:(id)controller;
- (BKMousePointerDisplayRenderer)initWithDisplayName:(id)name;
- (BKMousePointerDisplayRendererRootLayerProperties)rootLayerProperties;
- (BKMousePointerDisplayRendererTransformLayerProperties)transformLayerProperties;
- (CGPoint)pointerPosition;
- (void)_updateTransformLayerPosition;
- (void)setPointerLayer:(id)layer;
- (void)setPointerPosition:(CGPoint)position;
- (void)setRootLayerProperties:(BKMousePointerDisplayRendererRootLayerProperties *)properties;
- (void)setTransformLayerProperties:(BKMousePointerDisplayRendererTransformLayerProperties *)properties;
@end

@implementation BKMousePointerDisplayRenderer

- (BKMousePointerDisplayRendererTransformLayerProperties)transformLayerProperties
{
  v3 = *&self[1].affineTransform.tx;
  *&retstr->affineTransform.tx = *&self[1].affineTransform.c;
  retstr->bounds.origin = v3;
  retstr->bounds.size = self[1].bounds.origin;
  v4 = *&self[1].affineTransform.a;
  *&retstr->affineTransform.a = self->bounds.size;
  *&retstr->affineTransform.c = v4;
  return self;
}

- (BKMousePointerDisplayRendererRootLayerProperties)rootLayerProperties
{
  v3 = *&self[2].affineTransform.c;
  *&retstr->affineTransform.tx = *&self[2].affineTransform.a;
  retstr->bounds.origin = v3;
  retstr->bounds.size = *&self[2].affineTransform.tx;
  retstr->displayScale = self[2].bounds.origin.x;
  v4 = *&self[1].bounds.size.height;
  *&retstr->affineTransform.a = *&self[1].bounds.origin.y;
  *&retstr->affineTransform.c = v4;
  return self;
}

- (CGPoint)pointerPosition
{
  x = self->_pointerPosition.x;
  y = self->_pointerPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_updateTransformLayerPosition
{
  [(CALayer *)self->_rootLayer bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CALayer *)self->_rootLayer anchorPoint];
  transformLayer = self->_transformLayer;
  v13 = v4 + v12 * v8;
  v15 = v6 + v14 * v10;

  [(CALayer *)transformLayer setPosition:v13, v15];
}

- (void)setTransformLayerProperties:(BKMousePointerDisplayRendererTransformLayerProperties *)properties
{
  v5 = *&self->_transformLayerProperties.affineTransform.c;
  *&t1.a = *&self->_transformLayerProperties.affineTransform.a;
  *&t1.c = v5;
  *&t1.tx = *&self->_transformLayerProperties.affineTransform.tx;
  v6 = *&properties->affineTransform.c;
  *&v16.a = *&properties->affineTransform.a;
  *&v16.c = v6;
  *&v16.tx = *&properties->affineTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v16) || (BSRectEqualToRect() & 1) == 0)
  {
    v7 = *&properties->affineTransform.c;
    v8 = *&properties->affineTransform.tx;
    size = properties->bounds.size;
    self->_transformLayerProperties.bounds.origin = properties->bounds.origin;
    self->_transformLayerProperties.bounds.size = size;
    v10 = *&properties->affineTransform.a;
    *&self->_transformLayerProperties.affineTransform.c = v7;
    *&self->_transformLayerProperties.affineTransform.tx = v8;
    *&self->_transformLayerProperties.affineTransform.a = v10;
    *&v7 = self->_transformLayerProperties.bounds.origin.x;
    *&v8 = self->_transformLayerProperties.bounds.origin.y;
    *&v10 = self->_transformLayerProperties.bounds.size.width;
    size.width = self->_transformLayerProperties.bounds.size.height;
    if (!CGRectIsEmpty(*&v7) && !self->_transformLayer)
    {
      v11 = +[CALayer layer];
      transformLayer = self->_transformLayer;
      self->_transformLayer = v11;

      if (self->_pointerLayer)
      {
        [(CALayer *)self->_transformLayer addSublayer:?];
      }

      rootLayer = self->_rootLayer;
      if (rootLayer)
      {
        [(CALayer *)rootLayer addSublayer:self->_transformLayer];
      }
    }

    [(CALayer *)self->_transformLayer setBounds:self->_transformLayerProperties.bounds.origin.x, self->_transformLayerProperties.bounds.origin.y, self->_transformLayerProperties.bounds.size.width, self->_transformLayerProperties.bounds.size.height];
    v14 = self->_transformLayer;
    v15 = *&self->_transformLayerProperties.affineTransform.c;
    *&t1.a = *&self->_transformLayerProperties.affineTransform.a;
    *&t1.c = v15;
    *&t1.tx = *&self->_transformLayerProperties.affineTransform.tx;
    [(CALayer *)v14 setAffineTransform:&t1];
    [(BKMousePointerDisplayRenderer *)self _updateTransformLayerPosition];
  }
}

- (void)setRootLayerProperties:(BKMousePointerDisplayRendererRootLayerProperties *)properties
{
  v5 = *&self->_rootLayerProperties.affineTransform.c;
  *&t1.a = *&self->_rootLayerProperties.affineTransform.a;
  *&t1.c = v5;
  *&t1.tx = *&self->_rootLayerProperties.affineTransform.tx;
  v6 = *&properties->affineTransform.c;
  *&v31.a = *&properties->affineTransform.a;
  *&v31.c = v6;
  *&v31.tx = *&properties->affineTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v31) || !BSRectEqualToRect() || (BSFloatEqualToFloat() & 1) == 0)
  {
    if (BSFloatEqualToFloat())
    {
      v7 = 1;
    }

    else
    {
      v7 = BSFloatEqualToFloat();
    }

    v8 = *&properties->affineTransform.tx;
    origin = properties->bounds.origin;
    size = properties->bounds.size;
    self->_rootLayerProperties.displayScale = properties->displayScale;
    v11 = *&properties->affineTransform.c;
    *&self->_rootLayerProperties.affineTransform.a = *&properties->affineTransform.a;
    *&self->_rootLayerProperties.affineTransform.c = v11;
    self->_rootLayerProperties.bounds.origin = origin;
    self->_rootLayerProperties.bounds.size = size;
    *&self->_rootLayerProperties.affineTransform.tx = v8;
    if (BSFloatEqualToFloat())
    {
      v12 = 1;
    }

    else
    {
      v12 = BSFloatEqualToFloat();
    }

    if (v12 != v7)
    {
      [(CAContext *)self->_context setLayer:0];
      [(CAContext *)self->_context invalidate];
      context = self->_context;
      self->_context = 0;
    }

    if (!CGRectIsEmpty(self->_rootLayerProperties.bounds) && BSFloatGreaterThanFloat())
    {
      if (!self->_rootLayer)
      {
        v14 = +[CALayer layer];
        rootLayer = self->_rootLayer;
        self->_rootLayer = v14;
      }

      if (self->_transformLayer)
      {
        [(CALayer *)self->_rootLayer addSublayer:?];
      }

      v16 = self->_context;
      if (!v16)
      {
        v33[0] = kCAContextDisplayable;
        v33[1] = kCAContextDisplayName;
        displayName = self->_displayName;
        v34[0] = &__kCFBooleanTrue;
        v34[1] = displayName;
        v33[2] = kCAContextIgnoresHitTest;
        v33[3] = kCAContextSecure;
        v34[2] = &__kCFBooleanTrue;
        v34[3] = &__kCFBooleanTrue;
        v18 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:4];
        v19 = [CAContext remoteContextWithOptions:v18];
        v20 = self->_context;
        self->_context = v19;

        LODWORD(v21) = 1173553152;
        [(CAContext *)self->_context setLevel:v21];
        [(CAContext *)self->_context setSecure:1];

        v16 = self->_context;
      }

      [(CAContext *)v16 setLayer:self->_rootLayer];
    }

    v22 = self->_rootLayer;
    v23 = *&self->_rootLayerProperties.affineTransform.c;
    *&t1.a = *&self->_rootLayerProperties.affineTransform.a;
    *&t1.c = v23;
    *&t1.tx = *&self->_rootLayerProperties.affineTransform.tx;
    [(CALayer *)v22 setAffineTransform:&t1];
    [(CALayer *)self->_rootLayer setRasterizationScale:self->_rootLayerProperties.displayScale];
    [(CALayer *)self->_rootLayer setBounds:self->_rootLayerProperties.bounds.origin.x, self->_rootLayerProperties.bounds.origin.y, self->_rootLayerProperties.bounds.size.width, self->_rootLayerProperties.bounds.size.height];
    bounds = self->_rootLayerProperties.bounds;
    v24 = *&self->_rootLayerProperties.affineTransform.c;
    *&t1.a = *&self->_rootLayerProperties.affineTransform.a;
    *&t1.c = v24;
    *&t1.tx = *&self->_rootLayerProperties.affineTransform.tx;
    v36 = CGRectApplyAffineTransform(bounds, &t1);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
    v29 = self->_rootLayer;
    MidX = CGRectGetMidX(v36);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    [(CALayer *)v29 setPosition:MidX, CGRectGetMidY(v37)];
    [(BKMousePointerDisplayRenderer *)self _updateTransformLayerPosition];
  }
}

- (void)setPointerPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  if ((BSPointEqualToPoint() & 1) == 0)
  {
    self->_pointerPosition.x = x;
    self->_pointerPosition.y = y;
    pointerLayer = self->_pointerLayer;

    [(CALayer *)pointerLayer setPosition:x, y];
  }
}

- (void)setPointerLayer:(id)layer
{
  layerCopy = layer;
  p_pointerLayer = &self->_pointerLayer;
  pointerLayer = self->_pointerLayer;
  v10 = layerCopy;
  if (pointerLayer != layerCopy)
  {
    if (pointerLayer)
    {
      superlayer = [(CALayer *)pointerLayer superlayer];
      transformLayer = self->_transformLayer;

      if (superlayer == transformLayer)
      {
        [(CALayer *)*p_pointerLayer removeFromSuperlayer];
      }
    }

    objc_storeStrong(&self->_pointerLayer, layer);
    if (*p_pointerLayer)
    {
      [(CALayer *)self->_transformLayer addSublayer:?];
      [(CALayer *)self->_pointerLayer setPosition:self->_pointerPosition.x, self->_pointerPosition.y];
    }
  }
}

- (BKMousePointerDisplayRenderer)initWithDisplayName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = BKMousePointerDisplayRenderer;
  v5 = [(BKMousePointerDisplayRenderer *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    displayName = v5->_displayName;
    v5->_displayName = v6;
  }

  return v5;
}

+ (BKMousePointerDisplayRendererRootLayerProperties)rootLayerPropertiesForDisplay:(SEL)display displayController:(id)controller
{
  controllerCopy = controller;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    objc_msgSend_geometryForDisplay_(v8);
    v10 = 0.0;
    if (BSFloatLessThanOrEqualToFloat())
    {
      v10 = 1.0;
    }
  }

  else if (BSFloatLessThanOrEqualToFloat())
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  CGAffineTransformMakeScale(&retstr->affineTransform, v10, v10);
  retstr->bounds.origin.x = 0.0;
  retstr->bounds.origin.y = 0.0;
  retstr->bounds.size.width = 0.0 / v10;
  retstr->bounds.size.height = 0.0 / v10;
  retstr->displayScale = v10;

  return result;
}

@end