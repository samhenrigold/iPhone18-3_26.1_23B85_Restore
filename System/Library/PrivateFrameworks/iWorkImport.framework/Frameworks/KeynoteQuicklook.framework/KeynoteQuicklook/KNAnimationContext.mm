@interface KNAnimationContext
- (CATransform3D)slideProjectionMatrix;
- (CGRect)slideRect;
- (CGRect)unscaledSlideRect;
- (KNAnimationContext)init;
- (KNAnimationContext)initWithShowSize:(CGSize)size viewScale:(double)scale showLayer:(id)layer;
- (double)showScale;
- (void)dealloc;
- (void)updateGeometryToFitShowLayerAtViewScale:(double)scale;
@end

@implementation KNAnimationContext

- (KNAnimationContext)initWithShowSize:(CGSize)size viewScale:(double)scale showLayer:(id)layer
{
  layerCopy = layer;
  v17.receiver = self;
  v17.super_class = KNAnimationContext;
  v9 = [(KNAnimationContext *)&v17 init];
  if (v9)
  {
    TSURectWithSize();
    *(v9 + 11) = v10;
    *(v9 + 12) = v11;
    *(v9 + 13) = v12;
    *(v9 + 14) = v13;
    objc_storeStrong(v9 + 5, layer);
    *(v9 + 24) = xmmword_275E71130;
    [v9 updateGeometryToFitShowLayerAtViewScale:scale];
    v14 = objc_alloc_init(MEMORY[0x277D801F0]);
    v15 = *(v9 + 1);
    *(v9 + 1) = v14;
  }

  return v9;
}

- (KNAnimationContext)init
{
  v2 = MEMORY[0x277D81150];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationContext init]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationContext.m"];
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:41 isFatal:0 description:"Do not call method"];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[KNAnimationContext init]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = KNAnimationContext;
  [(KNAnimationContext *)&v2 dealloc];
}

- (double)showScale
{
  showLayer = [(KNAnimationContext *)self showLayer];
  if (!showLayer)
  {
    v3 = MEMORY[0x277D81150];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationContext showScale]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationContext.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:49 isFatal:0 description:{"invalid nil value for '%{public}s'", "showLayer"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v6 = [showLayer valueForKeyPath:@"transform.scale.x"];
  v7 = [showLayer valueForKeyPath:@"transform.scale.y"];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = MEMORY[0x277D81150];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationContext showScale]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationContext.m"];
    [v14 handleFailureInFunction:v15 file:v16 lineNumber:52 isFatal:0 description:{"invalid nil value for '%{public}s'", "xscale"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
    if (v8)
    {
      goto LABEL_5;
    }
  }

  v17 = MEMORY[0x277D81150];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationContext showScale]"];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationContext.m"];
  [v17 handleFailureInFunction:v18 file:v19 lineNumber:53 isFatal:0 description:{"invalid nil value for '%{public}s'", "yscale"}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
LABEL_5:
  [v6 tsu_CGFloatValue];
  v10 = v9;
  [v8 tsu_CGFloatValue];
  if (v10 >= v11)
  {
    v11 = v10;
  }

  v12 = fmin(v11, 1.0);

  return v12;
}

- (void)updateGeometryToFitShowLayerAtViewScale:(double)scale
{
  self->_viewScale = scale;
  [(CALayer *)self->_showLayer bounds];
  v5 = v4;
  self->_slideRect.origin.x = v6;
  self->_slideRect.origin.y = v7;
  self->_slideRect.size.width = v8;
  self->_slideRect.size.height = v4;
  [(KNAnimationContext *)self fieldOfViewInRadians];
  v10 = tan(v9 * 0.5);
  v11 = v5 / (v10 + v10);
  memset(&v20, 0, sizeof(v20));
  [(KNAnimationContext *)self fieldOfViewInRadians];
  TSDTransform3DMakeProjection();
  memset(&v19, 0, sizeof(v19));
  CATransform3DMakeTranslation(&v19, self->_slideRect.size.width * -0.5 - self->_slideRect.origin.x, self->_slideRect.size.height * -0.5 - self->_slideRect.origin.y, -v11);
  a = v19;
  v16 = v20;
  CATransform3DConcat(&v18, &a, &v16);
  v12 = *&v18.m33;
  *&self->_slideProjectionMatrix.m31 = *&v18.m31;
  *&self->_slideProjectionMatrix.m33 = v12;
  v13 = *&v18.m43;
  *&self->_slideProjectionMatrix.m41 = *&v18.m41;
  *&self->_slideProjectionMatrix.m43 = v13;
  v14 = *&v18.m13;
  *&self->_slideProjectionMatrix.m11 = *&v18.m11;
  *&self->_slideProjectionMatrix.m13 = v14;
  v15 = *&v18.m23;
  *&self->_slideProjectionMatrix.m21 = *&v18.m21;
  *&self->_slideProjectionMatrix.m23 = v15;
}

- (CATransform3D)slideProjectionMatrix
{
  v3 = *&self[1].m32;
  *&retstr->m31 = *&self[1].m24;
  *&retstr->m33 = v3;
  v4 = *&self[1].m42;
  *&retstr->m41 = *&self[1].m34;
  *&retstr->m43 = v4;
  v5 = *&self[1].m12;
  *&retstr->m11 = *&self->m44;
  *&retstr->m13 = v5;
  v6 = *&self[1].m22;
  *&retstr->m21 = *&self[1].m14;
  *&retstr->m23 = v6;
  return self;
}

- (CGRect)slideRect
{
  x = self->_slideRect.origin.x;
  y = self->_slideRect.origin.y;
  width = self->_slideRect.size.width;
  height = self->_slideRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)unscaledSlideRect
{
  x = self->_unscaledSlideRect.origin.x;
  y = self->_unscaledSlideRect.origin.y;
  width = self->_unscaledSlideRect.size.width;
  height = self->_unscaledSlideRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end