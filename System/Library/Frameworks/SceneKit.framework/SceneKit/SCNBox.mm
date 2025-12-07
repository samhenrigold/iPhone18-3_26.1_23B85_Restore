@interface SCNBox
+ (SCNBox)boxWithWidth:(CGFloat)width height:(CGFloat)height length:(CGFloat)length chamferRadius:(CGFloat)chamferRadius;
- (BOOL)getBoundingBoxMin:(SCNVector3 *)min max:(SCNVector3 *)max;
- (BOOL)getBoundingSphereCenter:(SCNVector3 *)center radius:(double *)radius;
- (CGFloat)chamferRadius;
- (CGFloat)height;
- (CGFloat)length;
- (CGFloat)width;
- (NSInteger)chamferSegmentCount;
- (NSInteger)heightSegmentCount;
- (NSInteger)lengthSegmentCount;
- (NSInteger)widthSegmentCount;
- (SCNBox)init;
- (SCNBox)initWithCoder:(id)coder;
- (SCNBox)initWithParametricGeometryRef:(__C3DParametricGeometry *)ref;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)ref;
- (id)presentationBox;
- (int64_t)primitiveType;
- (void)_setupObjCModelFrom:(id)from;
- (void)_syncObjCModel:(__C3DParametricGeometry *)model;
- (void)encodeWithCoder:(id)coder;
- (void)setChamferRadius:(CGFloat)chamferRadius;
- (void)setChamferSegmentCount:(NSInteger)chamferSegmentCount;
- (void)setHeight:(CGFloat)height;
- (void)setHeightSegmentCount:(NSInteger)heightSegmentCount;
- (void)setLength:(CGFloat)length;
- (void)setLengthSegmentCount:(NSInteger)lengthSegmentCount;
- (void)setPrimitiveType:(int64_t)type;
- (void)setWidth:(CGFloat)width;
- (void)setWidthSegmentCount:(NSInteger)widthSegmentCount;
@end

@implementation SCNBox

- (SCNBox)init
{
  v3 = C3DParametricGeometryCreate(0, kC3DBoxCallBacks);
  v8.receiver = self;
  v8.super_class = SCNBox;
  v4 = [(SCNGeometry *)&v8 initWithGeometryRef:v3];
  v5 = v4;
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = SCNBox;
    [(SCNGeometry *)&v7 _syncObjCModel];
    [(SCNBox *)v5 _syncObjCModel:[(SCNGeometry *)v5 geometryRef]];
  }

  CFRelease(v3);
  return v5;
}

- (SCNBox)initWithParametricGeometryRef:(__C3DParametricGeometry *)ref
{
  v7.receiver = self;
  v7.super_class = SCNBox;
  v3 = [(SCNGeometry *)&v7 initWithGeometryRef:ref];
  v4 = v3;
  if (v3)
  {
    v6.receiver = v3;
    v6.super_class = SCNBox;
    [(SCNGeometry *)&v6 _syncObjCModel];
    [(SCNBox *)v4 _syncObjCModel:[(SCNGeometry *)v4 geometryRef]];
  }

  return v4;
}

- (id)initPresentationParametricGeometryWithParametricGeometryRef:(__C3DParametricGeometry *)ref
{
  v4.receiver = self;
  v4.super_class = SCNBox;
  return [(SCNGeometry *)&v4 initPresentationGeometryWithGeometryRef:ref];
}

- (id)presentationBox
{
  v2 = [[SCNBox alloc] initPresentationParametricGeometryWithParametricGeometryRef:[(SCNGeometry *)self geometryRef]];

  return v2;
}

- (void)_syncObjCModel:(__C3DParametricGeometry *)model
{
  self->_boxwidth = C3DParametricGeometryGetFloatValue(model, 0);
  self->_boxheight = C3DParametricGeometryGetFloatValue(model, 1);
  self->_boxlength = C3DParametricGeometryGetFloatValue(model, 2);
  self->_boxchamferRadius = C3DParametricGeometryGetFloatValue(model, 3);
  self->_boxwidthSegmentCount = C3DParametricGeometryGetIntValue(model, 11);
  self->_boxheightSegmentCount = C3DParametricGeometryGetIntValue(model, 12);
  self->_boxlengthSegmentCount = C3DParametricGeometryGetIntValue(model, 13);
  self->_boxchamferSegmentCount = C3DParametricGeometryGetIntValue(model, 14);
  self->_boxprimitiveType = C3DParametricGeometryGetIntValue(model, 20);
}

- (CGFloat)chamferRadius
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_boxchamferRadius;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v4);
  }

  geometryRef = [(SCNGeometry *)self geometryRef];
  ChamferRadius = C3DParametricGeometryGetChamferRadius(geometryRef, v7);
  if (v5)
  {
    C3DSceneUnlock(v5, v8);
  }

  return ChamferRadius;
}

- (void)setChamferRadius:(CGFloat)chamferRadius
{
  isPresentationInstance = [(SCNGeometry *)self isPresentationInstance];
  if (isPresentationInstance)
  {
    v7 = scn_default_log(isPresentationInstance, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNBox setChamferRadius:];
    }
  }

  else if (self->_boxchamferRadius != chamferRadius)
  {
    self->_boxchamferRadius = chamferRadius;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __27__SCNBox_setChamferRadius___block_invoke;
    v9[3] = &unk_2782FB7D0;
    v9[4] = self;
    *&v9[5] = chamferRadius;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"chamferRadius" applyBlock:v9];
  }
}

void __27__SCNBox_setChamferRadius___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v4 = *(a1 + 40);

  C3DParametricGeometrySetChamferRadius(v2, v3, v4);
}

- (NSInteger)chamferSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_boxchamferSegmentCount;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v4);
  }

  geometryRef = [(SCNGeometry *)self geometryRef];
  ChamferSegmentCount = C3DParametricGeometryGetChamferSegmentCount(geometryRef, v7);
  if (v5)
  {
    C3DSceneUnlock(v5, v8);
  }

  return ChamferSegmentCount;
}

- (void)setChamferSegmentCount:(NSInteger)chamferSegmentCount
{
  isPresentationInstance = [(SCNGeometry *)self isPresentationInstance];
  if (isPresentationInstance)
  {
    v7 = scn_default_log(isPresentationInstance, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNBox setChamferSegmentCount:];
    }
  }

  else if (self->_boxchamferSegmentCount != chamferSegmentCount)
  {
    self->_boxchamferSegmentCount = chamferSegmentCount;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __33__SCNBox_setChamferSegmentCount___block_invoke;
    v9[3] = &unk_2782FB7D0;
    v9[4] = self;
    v9[5] = chamferSegmentCount;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"chamferSegmentCount" applyBlock:v9];
  }
}

void __33__SCNBox_setChamferSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetChamferSegmentCount(v2, v3);
}

- (CGFloat)height
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_boxheight;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v4);
  }

  geometryRef = [(SCNGeometry *)self geometryRef];
  Height = C3DParametricGeometryGetHeight(geometryRef, v7);
  if (v5)
  {
    C3DSceneUnlock(v5, v8);
  }

  return Height;
}

- (void)setHeight:(CGFloat)height
{
  isPresentationInstance = [(SCNGeometry *)self isPresentationInstance];
  if (isPresentationInstance)
  {
    v7 = scn_default_log(isPresentationInstance, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNBox setHeight:];
    }
  }

  else if (self->_boxheight != height)
  {
    self->_boxheight = height;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __20__SCNBox_setHeight___block_invoke;
    v9[3] = &unk_2782FB7D0;
    v9[4] = self;
    *&v9[5] = height;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"height" applyBlock:v9];
  }
}

void __20__SCNBox_setHeight___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v4 = *(a1 + 40);

  C3DParametricGeometrySetHeight(v2, v3, v4);
}

- (NSInteger)heightSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_boxheightSegmentCount;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v4);
  }

  geometryRef = [(SCNGeometry *)self geometryRef];
  HeightSegmentCount = C3DParametricGeometryGetHeightSegmentCount(geometryRef, v7);
  if (v5)
  {
    C3DSceneUnlock(v5, v8);
  }

  return HeightSegmentCount;
}

- (void)setHeightSegmentCount:(NSInteger)heightSegmentCount
{
  isPresentationInstance = [(SCNGeometry *)self isPresentationInstance];
  if (isPresentationInstance)
  {
    v7 = scn_default_log(isPresentationInstance, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNBox setHeightSegmentCount:];
    }
  }

  else if (self->_boxheightSegmentCount != heightSegmentCount)
  {
    self->_boxheightSegmentCount = heightSegmentCount;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __32__SCNBox_setHeightSegmentCount___block_invoke;
    v9[3] = &unk_2782FB7D0;
    v9[4] = self;
    v9[5] = heightSegmentCount;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"heightSegmentCount" applyBlock:v9];
  }
}

void __32__SCNBox_setHeightSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetHeightSegmentCount(v2, v3);
}

- (CGFloat)length
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_boxlength;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v4);
  }

  geometryRef = [(SCNGeometry *)self geometryRef];
  Length = C3DParametricGeometryGetLength(geometryRef, v7);
  if (v5)
  {
    C3DSceneUnlock(v5, v8);
  }

  return Length;
}

- (void)setLength:(CGFloat)length
{
  isPresentationInstance = [(SCNGeometry *)self isPresentationInstance];
  if (isPresentationInstance)
  {
    v7 = scn_default_log(isPresentationInstance, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNBox setLength:];
    }
  }

  else if (self->_boxlength != length)
  {
    self->_boxlength = length;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __20__SCNBox_setLength___block_invoke;
    v9[3] = &unk_2782FB7D0;
    v9[4] = self;
    *&v9[5] = length;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"length" applyBlock:v9];
  }
}

void __20__SCNBox_setLength___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v4 = *(a1 + 40);

  C3DParametricGeometrySetLength(v2, v3, v4);
}

- (NSInteger)lengthSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_boxlengthSegmentCount;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v4);
  }

  geometryRef = [(SCNGeometry *)self geometryRef];
  LengthSegmentCount = C3DParametricGeometryGetLengthSegmentCount(geometryRef, v7);
  if (v5)
  {
    C3DSceneUnlock(v5, v8);
  }

  return LengthSegmentCount;
}

- (void)setLengthSegmentCount:(NSInteger)lengthSegmentCount
{
  isPresentationInstance = [(SCNGeometry *)self isPresentationInstance];
  if (isPresentationInstance)
  {
    v7 = scn_default_log(isPresentationInstance, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNBox setLengthSegmentCount:];
    }
  }

  else if (self->_boxlengthSegmentCount != lengthSegmentCount)
  {
    self->_boxlengthSegmentCount = lengthSegmentCount;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __32__SCNBox_setLengthSegmentCount___block_invoke;
    v9[3] = &unk_2782FB7D0;
    v9[4] = self;
    v9[5] = lengthSegmentCount;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"lengthSegmentCount" applyBlock:v9];
  }
}

void __32__SCNBox_setLengthSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetLengthSegmentCount(v2, v3);
}

- (int64_t)primitiveType
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_boxprimitiveType;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v4);
  }

  geometryRef = [(SCNGeometry *)self geometryRef];
  PrimitiveType = C3DParametricGeometryGetPrimitiveType(geometryRef, v7);
  if (v5)
  {
    C3DSceneUnlock(v5, v8);
  }

  return PrimitiveType;
}

- (void)setPrimitiveType:(int64_t)type
{
  isPresentationInstance = [(SCNGeometry *)self isPresentationInstance];
  if (isPresentationInstance)
  {
    v7 = scn_default_log(isPresentationInstance, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNBox setPrimitiveType:];
    }
  }

  else if (self->_boxprimitiveType != type)
  {
    self->_boxprimitiveType = type;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __27__SCNBox_setPrimitiveType___block_invoke;
    v9[3] = &unk_2782FB7D0;
    v9[4] = self;
    v9[5] = type;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v9];
  }
}

void __27__SCNBox_setPrimitiveType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetPrimitiveType(v2, v3);
}

- (CGFloat)width
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_boxwidth;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v4);
  }

  geometryRef = [(SCNGeometry *)self geometryRef];
  Width = C3DParametricGeometryGetWidth(geometryRef, v7);
  if (v5)
  {
    C3DSceneUnlock(v5, v8);
  }

  return Width;
}

- (void)setWidth:(CGFloat)width
{
  isPresentationInstance = [(SCNGeometry *)self isPresentationInstance];
  if (isPresentationInstance)
  {
    v7 = scn_default_log(isPresentationInstance, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNBox setWidth:];
    }
  }

  else if (self->_boxwidth != width)
  {
    self->_boxwidth = width;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __19__SCNBox_setWidth___block_invoke;
    v9[3] = &unk_2782FB7D0;
    v9[4] = self;
    *&v9[5] = width;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"width" applyBlock:v9];
  }
}

void __19__SCNBox_setWidth___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v4 = *(a1 + 40);

  C3DParametricGeometrySetWidth(v2, v3, v4);
}

- (NSInteger)widthSegmentCount
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_boxwidthSegmentCount;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v4);
  }

  geometryRef = [(SCNGeometry *)self geometryRef];
  WidthSegmentCount = C3DParametricGeometryGetWidthSegmentCount(geometryRef, v7);
  if (v5)
  {
    C3DSceneUnlock(v5, v8);
  }

  return WidthSegmentCount;
}

- (void)setWidthSegmentCount:(NSInteger)widthSegmentCount
{
  isPresentationInstance = [(SCNGeometry *)self isPresentationInstance];
  if (isPresentationInstance)
  {
    v7 = scn_default_log(isPresentationInstance, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNBox setWidthSegmentCount:];
    }
  }

  else if (self->_boxwidthSegmentCount != widthSegmentCount)
  {
    self->_boxwidthSegmentCount = widthSegmentCount;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __31__SCNBox_setWidthSegmentCount___block_invoke;
    v9[3] = &unk_2782FB7D0;
    v9[4] = self;
    v9[5] = widthSegmentCount;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"widthSegmentCount" applyBlock:v9];
  }
}

void __31__SCNBox_setWidthSegmentCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DParametricGeometrySetWidthSegmentCount(v2, v3);
}

- (BOOL)getBoundingBoxMin:(SCNVector3 *)min max:(SCNVector3 *)max
{
  v28 = 0.0;
  v27 = 0;
  v26 = 0.0;
  v25 = 0;
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    sceneRef = [(SCNGeometry *)self sceneRef];
    v9 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef, v8);
    }

    if ([(SCNGeometry *)self geometryRef])
    {
      C3DBoxGetBoundingBox([(SCNGeometry *)self geometryRef], &v27, &v25);
      v12 = v11;
      if (!v9)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v12 = 0;
    if (v9)
    {
LABEL_11:
      C3DSceneUnlock(v9, v10);
    }
  }

  else
  {
    if ([(SCNGeometry *)self _hasFixedBoundingBoxExtrema])
    {
      v24.receiver = self;
      v24.super_class = SCNBox;
      return [(SCNGeometry *)&v24 getBoundingBoxMin:min max:max];
    }

    [(SCNBox *)self width];
    v14 = v13;
    [(SCNBox *)self height];
    v16 = v15;
    [(SCNBox *)self length];
    v18 = v17;
    v19.f64[0] = v14;
    C3DBoxGetBoundingBoxForBoxParameters(&v27, &v25, v19, v16, v18);
    v12 = v20;
  }

LABEL_12:
  if (min)
  {
    v21 = v28;
    *&min->x = v27;
    min->z = v21;
  }

  if (max)
  {
    v22 = v26;
    *&max->x = v25;
    max->z = v22;
  }

  return v12;
}

- (BOOL)getBoundingSphereCenter:(SCNVector3 *)center radius:(double *)radius
{
  v20 = 0uLL;
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    sceneRef = [(SCNGeometry *)self sceneRef];
    v9 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef, v8);
    }

    if ([(SCNGeometry *)self geometryRef]&& C3DBoxGetBoundingSphere([(SCNGeometry *)self geometryRef], &v20))
    {
      if (center)
      {
        v11 = *(&v20 + 2);
        *&center->x = v20;
        center->z = v11;
      }

      if (radius)
      {
        *radius = *(&v20 + 3);
      }

      v12 = 1;
      if (!v9)
      {
        return v12;
      }
    }

    else
    {
      v12 = 0;
      if (!v9)
      {
        return v12;
      }
    }

    C3DSceneUnlock(v9, v10);
    return v12;
  }

  [(SCNBox *)self width];
  v14 = v13;
  [(SCNBox *)self height];
  v16 = v15;
  [(SCNBox *)self length];
  if (!C3DBoxGetBoundingSphereForBoxParameters(&v20, v14, v16, v17))
  {
    return 0;
  }

  if (center)
  {
    v18 = *(&v20 + 2);
    *&center->x = v20;
    center->z = v18;
  }

  if (radius)
  {
    *radius = *(&v20 + 3);
  }

  return 1;
}

+ (SCNBox)boxWithWidth:(CGFloat)width height:(CGFloat)height length:(CGFloat)length chamferRadius:(CGFloat)chamferRadius
{
  v10 = objc_alloc_init(self);
  [v10 setWidth:width];
  [v10 setHeight:height];
  [v10 setLength:length];
  [v10 setChamferRadius:chamferRadius];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  geometryDescription = [(SCNGeometry *)self geometryDescription];
  [(SCNBox *)self width];
  v6 = v5;
  [(SCNBox *)self height];
  v8 = v7;
  [(SCNBox *)self length];
  v10 = v9;
  [(SCNBox *)self chamferRadius];
  return [v3 stringWithFormat:@"<%@ | width=%.3f height=%.3f length=%.3f chamferRadius=%.3f>", geometryDescription, v6, v8, v10, v11];
}

- (void)_setupObjCModelFrom:(id)from
{
  v5.receiver = self;
  v5.super_class = SCNBox;
  [(SCNGeometry *)&v5 _setupObjCModelFrom:?];
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  [from width];
  [(SCNBox *)self setWidth:?];
  [from height];
  [(SCNBox *)self setHeight:?];
  [from length];
  [(SCNBox *)self setLength:?];
  [from chamferRadius];
  [(SCNBox *)self setChamferRadius:?];
  -[SCNBox setWidthSegmentCount:](self, "setWidthSegmentCount:", [from widthSegmentCount]);
  -[SCNBox setHeightSegmentCount:](self, "setHeightSegmentCount:", [from heightSegmentCount]);
  -[SCNBox setLengthSegmentCount:](self, "setLengthSegmentCount:", [from lengthSegmentCount]);
  -[SCNBox setChamferSegmentCount:](self, "setChamferSegmentCount:", [from chamferSegmentCount]);
  -[SCNBox setPrimitiveType:](self, "setPrimitiveType:", [from primitiveType]);
  +[SCNTransaction commitImmediate];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 _setupObjCModelFrom:self];
  [(SCNGeometry *)self _copyAttributesTo:v4];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SCNBox;
  [(SCNGeometry *)&v5 encodeWithCoder:?];
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    [(SCNBox *)self _syncObjCModel:[(SCNGeometry *)self geometryRef]];
  }

  [coder encodeDouble:@"boxwidth" forKey:self->_boxwidth];
  [coder encodeDouble:@"boxheight" forKey:self->_boxheight];
  [coder encodeDouble:@"boxlength" forKey:self->_boxlength];
  [coder encodeDouble:@"boxchamferRadius" forKey:self->_boxchamferRadius];
  [coder encodeInteger:self->_boxwidthSegmentCount forKey:@"boxwidthSegmentCount"];
  [coder encodeInteger:self->_boxheightSegmentCount forKey:@"boxheightSegmentCount"];
  [coder encodeInteger:self->_boxlengthSegmentCount forKey:@"boxlengthSegmentCount"];
  [coder encodeInteger:self->_boxchamferSegmentCount forKey:@"boxchamferSegmentCount"];
  [coder encodeInteger:self->_boxprimitiveType forKey:@"boxprimitiveType"];
}

- (SCNBox)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SCNBox;
  v4 = [(SCNGeometry *)&v7 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [coder decodeDoubleForKey:@"boxwidth"];
    [(SCNBox *)v4 setWidth:?];
    [coder decodeDoubleForKey:@"boxheight"];
    [(SCNBox *)v4 setHeight:?];
    [coder decodeDoubleForKey:@"boxlength"];
    [(SCNBox *)v4 setLength:?];
    [coder decodeDoubleForKey:@"boxchamferRadius"];
    [(SCNBox *)v4 setChamferRadius:?];
    -[SCNBox setWidthSegmentCount:](v4, "setWidthSegmentCount:", [coder decodeIntegerForKey:@"boxwidthSegmentCount"]);
    -[SCNBox setHeightSegmentCount:](v4, "setHeightSegmentCount:", [coder decodeIntegerForKey:@"boxheightSegmentCount"]);
    -[SCNBox setLengthSegmentCount:](v4, "setLengthSegmentCount:", [coder decodeIntegerForKey:@"boxlengthSegmentCount"]);
    -[SCNBox setChamferSegmentCount:](v4, "setChamferSegmentCount:", [coder decodeIntegerForKey:@"boxchamferSegmentCount"]);
    -[SCNBox setPrimitiveType:](v4, "setPrimitiveType:", [coder decodeIntegerForKey:@"boxprimitiveType"]);
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (void)setChamferRadius:.cold.1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, v6);
}

- (void)setChamferSegmentCount:.cold.1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, v6);
}

- (void)setHeight:.cold.1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, v6);
}

- (void)setHeightSegmentCount:.cold.1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, v6);
}

- (void)setLength:.cold.1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, v6);
}

- (void)setLengthSegmentCount:.cold.1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, v6);
}

- (void)setPrimitiveType:.cold.1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, v6);
}

- (void)setWidth:.cold.1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, v6);
}

- (void)setWidthSegmentCount:.cold.1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, v6);
}

@end