@interface SCNShape
+ (SCNShape)shapeWithPath:(UIBezierPath *)path extrusionDepth:(CGFloat)extrusionDepth;
- ($DB7092C30E680F051A254E3F9658D24C)params;
- (BOOL)getBoundingBoxMin:(SCNVector3 *)min max:(SCNVector3 *)max;
- (BOOL)getBoundingSphereCenter:(SCNVector3 *)center radius:(double *)radius;
- (CGFloat)chamferRadius;
- (CGFloat)extrusionDepth;
- (SCNChamferMode)chamferMode;
- (SCNShape)init;
- (SCNShape)initWithCoder:(id)coder;
- (UIBezierPath)chamferProfile;
- (UIBezierPath)path;
- (double)discretizedStraightLineMaxLength;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initPresentationShapeGeometryWithShapeGeometryRef:(__C3DShapeGeometry *)ref;
- (id)presentationGeometry;
- (int64_t)primitiveType;
- (void)_customDecodingOfSCNShape:(id)shape;
- (void)_customEncodingOfSCNShape:(id)shape;
- (void)_syncObjCModel:(__C3DShapeGeometry *)model;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setChamferMode:(SCNChamferMode)chamferMode;
- (void)setChamferProfile:(UIBezierPath *)chamferProfile;
- (void)setChamferRadius:(CGFloat)chamferRadius;
- (void)setDiscretizedStraightLineMaxLength:(double)length;
- (void)setExtrusionDepth:(CGFloat)extrusionDepth;
- (void)setPath:(UIBezierPath *)path;
- (void)setPrimitiveType:(int64_t)type;
@end

@implementation SCNShape

- (void)_syncObjCModel:(__C3DShapeGeometry *)model
{
  self->_primitiveType = C3DShapeGeometryGetPrimitiveType(model, a2);
  ChamferRadius = C3DShapeGeometryGetChamferRadius(model, v5);
  self->_chamferRadius = ChamferRadius;
  ExtrusionDepth = C3DShapeGeometryGetExtrusionDepth(model, v7);
  self->_extrusionDepth = ExtrusionDepth;
  self->_chamferProfile = C3DShapeGeometryGetObjCChamferProfile(model);
  DiscretizedStraightLineMaxLength = C3DShapeGeometryGetDiscretizedStraightLineMaxLength(model, v9);
  self->_discretizedStraightLineMaxLength = DiscretizedStraightLineMaxLength;
  self->_path = C3DFloorGetReflectionCategoryBitMask(model);
  self->_chamferMode = C3DShapeGeometryGetChamferMode(model, v11);
}

- (SCNShape)init
{
  v3 = C3DShapeGeometryCreate(self, a2);
  v8.receiver = self;
  v8.super_class = SCNShape;
  v4 = [(SCNGeometry *)&v8 initWithGeometryRef:v3];
  v5 = v4;
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = SCNShape;
    [(SCNGeometry *)&v7 _syncObjCModel];
    [(SCNShape *)v5 _syncObjCModel:[(SCNGeometry *)v5 geometryRef]];
  }

  CFRelease(v3);
  return v5;
}

- (id)initPresentationShapeGeometryWithShapeGeometryRef:(__C3DShapeGeometry *)ref
{
  v4.receiver = self;
  v4.super_class = SCNShape;
  return [(SCNGeometry *)&v4 initPresentationGeometryWithGeometryRef:ref];
}

- (id)presentationGeometry
{
  v2 = [[SCNShape alloc] initPresentationShapeGeometryWithShapeGeometryRef:[(SCNGeometry *)self geometryRef]];

  return v2;
}

+ (SCNShape)shapeWithPath:(UIBezierPath *)path extrusionDepth:(CGFloat)extrusionDepth
{
  v6 = objc_alloc_init(self);
  [(SCNShape *)v6 setExtrusionDepth:extrusionDepth];
  [(SCNShape *)v6 setPath:path];
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  geometryDescription = [(SCNGeometry *)self geometryDescription];
  path = [(SCNShape *)self path];
  [(SCNShape *)self extrusionDepth];
  return [v3 stringWithFormat:@"<%@ | path=%@ extrusionDepth=%.3f> ", geometryDescription, path, v6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  path = [(SCNShape *)self path];
  [(SCNShape *)self extrusionDepth];
  v6 = [SCNShape shapeWithPath:path extrusionDepth:?];
  [(SCNShape *)v6 setChamferMode:[(SCNShape *)self chamferMode]];
  [(SCNShape *)self chamferRadius];
  [(SCNShape *)v6 setChamferRadius:?];
  [(SCNShape *)v6 setChamferProfile:[(SCNShape *)self chamferProfile]];
  [(SCNGeometry *)v6 _setupObjCModelFrom:self];

  return v6;
}

- (SCNChamferMode)chamferMode
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_chamferMode;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v4);
  }

  geometryRef = [(SCNGeometry *)self geometryRef];
  ChamferMode = C3DShapeGeometryGetChamferMode(geometryRef, v7);
  if (v5)
  {
    C3DSceneUnlock(v5, v8);
  }

  return ChamferMode;
}

- (void)setChamferMode:(SCNChamferMode)chamferMode
{
  isPresentationInstance = [(SCNGeometry *)self isPresentationInstance];
  if (isPresentationInstance)
  {
    v7 = scn_default_log(isPresentationInstance, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNShape setChamferMode:];
    }
  }

  else if (self->_chamferMode != chamferMode)
  {
    self->_chamferMode = chamferMode;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __27__SCNShape_setChamferMode___block_invoke;
    v9[3] = &unk_2782FB7D0;
    v9[4] = self;
    v9[5] = chamferMode;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v9];
  }
}

void __27__SCNShape_setChamferMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DShapeGeometrySetChamferMode(v2, v3);
}

- (CGFloat)chamferRadius
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_chamferRadius;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v4);
  }

  geometryRef = [(SCNGeometry *)self geometryRef];
  ChamferRadius = C3DShapeGeometryGetChamferRadius(geometryRef, v7);
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
      [SCNShape setChamferRadius:];
    }
  }

  else if (self->_chamferRadius != chamferRadius)
  {
    v8 = chamferRadius;
    self->_chamferRadius = v8;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __29__SCNShape_setChamferRadius___block_invoke;
    v10[3] = &unk_2782FB7D0;
    v10[4] = self;
    *&v10[5] = chamferRadius;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"chamferRadius" applyBlock:v10];
  }
}

void __29__SCNShape_setChamferRadius___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v4 = *(a1 + 40);

  C3DShapeGeometrySetChamferRadius(v2, v3, v4);
}

- (double)discretizedStraightLineMaxLength
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_discretizedStraightLineMaxLength;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v4);
  }

  geometryRef = [(SCNGeometry *)self geometryRef];
  DiscretizedStraightLineMaxLength = C3DShapeGeometryGetDiscretizedStraightLineMaxLength(geometryRef, v7);
  if (v5)
  {
    C3DSceneUnlock(v5, v8);
  }

  return DiscretizedStraightLineMaxLength;
}

- (void)setDiscretizedStraightLineMaxLength:(double)length
{
  isPresentationInstance = [(SCNGeometry *)self isPresentationInstance];
  if (isPresentationInstance)
  {
    v7 = scn_default_log(isPresentationInstance, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNShape setDiscretizedStraightLineMaxLength:];
    }
  }

  else if (self->_discretizedStraightLineMaxLength != length)
  {
    lengthCopy = length;
    self->_discretizedStraightLineMaxLength = lengthCopy;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__SCNShape_setDiscretizedStraightLineMaxLength___block_invoke;
    v10[3] = &unk_2782FB7D0;
    v10[4] = self;
    *&v10[5] = length;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v10];
  }
}

void __48__SCNShape_setDiscretizedStraightLineMaxLength___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v4 = *(a1 + 40);

  C3DShapeGeometrySetDiscretizedStraightLineMaxLength(v2, v3, v4);
}

- (CGFloat)extrusionDepth
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_extrusionDepth;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v4);
  }

  geometryRef = [(SCNGeometry *)self geometryRef];
  ExtrusionDepth = C3DShapeGeometryGetExtrusionDepth(geometryRef, v7);
  if (v5)
  {
    C3DSceneUnlock(v5, v8);
  }

  return ExtrusionDepth;
}

- (void)setExtrusionDepth:(CGFloat)extrusionDepth
{
  isPresentationInstance = [(SCNGeometry *)self isPresentationInstance];
  if (isPresentationInstance)
  {
    v7 = scn_default_log(isPresentationInstance, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNShape setExtrusionDepth:];
    }
  }

  else if (self->_extrusionDepth != extrusionDepth)
  {
    v8 = extrusionDepth;
    self->_extrusionDepth = v8;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __30__SCNShape_setExtrusionDepth___block_invoke;
    v10[3] = &unk_2782FB7D0;
    v10[4] = self;
    *&v10[5] = extrusionDepth;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"extrusionDepth" applyBlock:v10];
  }
}

void __30__SCNShape_setExtrusionDepth___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v4 = *(a1 + 40);

  C3DShapeGeometrySetExtrusionDepth(v2, v3, v4);
}

- (int64_t)primitiveType
{
  if (![(SCNGeometry *)self isPresentationInstance])
  {
    return self->_primitiveType;
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v4);
  }

  geometryRef = [(SCNGeometry *)self geometryRef];
  PrimitiveType = C3DShapeGeometryGetPrimitiveType(geometryRef, v7);
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
      [SCNShape setPrimitiveType:];
    }
  }

  else if (self->_primitiveType != type)
  {
    self->_primitiveType = type;
    sceneRef = [(SCNGeometry *)self sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __29__SCNShape_setPrimitiveType___block_invoke;
    v9[3] = &unk_2782FB7D0;
    v9[4] = self;
    v9[5] = type;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v9];
  }
}

void __29__SCNShape_setPrimitiveType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(a1 + 40);

  C3DShapeGeometrySetPrimitiveType(v2, v3);
}

- (UIBezierPath)path
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    sceneRef = [(SCNGeometry *)self sceneRef];
    v5 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef, v4);
    }

    ReflectionCategoryBitMask = C3DFloorGetReflectionCategoryBitMask([(SCNGeometry *)self geometryRef]);
    if (v5)
    {
      C3DSceneUnlock(v5, v6);
    }
  }

  else
  {
    ReflectionCategoryBitMask = self->_path;
  }

  v8 = [ReflectionCategoryBitMask copy];

  return v8;
}

- (void)setPath:(UIBezierPath *)path
{
  self->_path = [(UIBezierPath *)path copy];
  sceneRef = [(SCNGeometry *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __20__SCNShape_setPath___block_invoke;
  v6[3] = &unk_2782FB820;
  v6[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

void __20__SCNShape_setPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(*(a1 + 32) + 208);

  C3DShapeGeometrySetObjCPath(v2, v3);
}

- (UIBezierPath)chamferProfile
{
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    sceneRef = [(SCNGeometry *)self sceneRef];
    v5 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef, v4);
    }

    ObjCChamferProfile = C3DShapeGeometryGetObjCChamferProfile([(SCNGeometry *)self geometryRef]);
    if (v5)
    {
      C3DSceneUnlock(v5, v6);
    }
  }

  else
  {
    ObjCChamferProfile = self->_chamferProfile;
  }

  v8 = [ObjCChamferProfile copy];

  return v8;
}

- (void)setChamferProfile:(UIBezierPath *)chamferProfile
{
  self->_chamferProfile = [(UIBezierPath *)chamferProfile copy];
  sceneRef = [(SCNGeometry *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__SCNShape_setChamferProfile___block_invoke;
  v6[3] = &unk_2782FB820;
  v6[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

void __30__SCNShape_setChamferProfile___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometryRef];
  v3 = *(*(a1 + 32) + 184);

  C3DShapeGeometrySetObjCChamferProfile(v2, v3);
}

- ($DB7092C30E680F051A254E3F9658D24C)params
{
  retstr->var6 = 0;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  result = [(SCNGeometry *)self isPresentationInstance];
  if (result)
  {
    geometryRef = [(SCNGeometry *)self geometryRef];

    C3DShapeGeometryGetC3DKitParameters(geometryRef, retstr, v7);
  }

  else
  {
    extrusionDepth = self->_extrusionDepth;
    retstr->var0 = self->_primitiveType;
    chamferRadius = self->_chamferRadius;
    chamferMode = self->_chamferMode;
    retstr->var1 = extrusionDepth;
    retstr->var2 = chamferRadius;
    retstr->var3 = chamferMode;
    path = self->_path;
    chamferProfile = self->_chamferProfile;
    retstr->var4 = self->_discretizedStraightLineMaxLength;
    retstr->var5 = path;
    retstr->var6 = chamferProfile;
  }

  return result;
}

- (BOOL)getBoundingBoxMin:(SCNVector3 *)min max:(SCNVector3 *)max
{
  sceneRef = [(SCNGeometry *)self sceneRef];
  v9 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v8);
  }

  DWORD2(v19) = 0;
  *&v19 = 0;
  DWORD2(v18) = 0;
  *&v18 = 0;
  geometryRef = [(SCNGeometry *)self geometryRef];
  if (self)
  {
    objc_msgSend_params(self);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
  }

  BoundingBox = C3DShapeGeometryGetBoundingBox(geometryRef, &v19, &v18, v16);
  if (BoundingBox)
  {
    if (min)
    {
      v13 = *(&v19 + 2);
      *&min->x = v19;
      min->z = v13;
    }

    if (max)
    {
      v14 = *(&v18 + 2);
      *&max->x = v18;
      max->z = v14;
    }
  }

  if (v9)
  {
    C3DSceneUnlock(v9, v11);
  }

  return BoundingBox;
}

- (BOOL)getBoundingSphereCenter:(SCNVector3 *)center radius:(double *)radius
{
  sceneRef = [(SCNGeometry *)self sceneRef];
  v9 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v8);
  }

  v17 = 0uLL;
  geometryRef = [(SCNGeometry *)self geometryRef];
  if (self)
  {
    objc_msgSend_params(self);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
  }

  BoundingSphere = C3DShapeGeometryGetBoundingSphere(geometryRef, &v17, v15);
  if (BoundingSphere)
  {
    if (center)
    {
      v13 = *(&v17 + 2);
      *&center->x = v17;
      center->z = v13;
    }

    if (radius)
    {
      *radius = *(&v17 + 3);
    }
  }

  if (v9)
  {
    C3DSceneUnlock(v9, v11);
  }

  return BoundingSphere;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNShape;
  [(SCNGeometry *)&v3 dealloc];
}

- (void)_customDecodingOfSCNShape:(id)shape
{
  [(SCNShape *)self setChamferProfile:SCNDecodeBezierPathForKey(shape, @"chamferProfile")];
  v5 = SCNDecodeBezierPathForKey(shape, @"path");

  [(SCNShape *)self setPath:v5];
}

- (void)_customEncodingOfSCNShape:(id)shape
{
  SCNEncodeBezierPathForKey(shape, self->_chamferProfile, @"chamferProfile");
  path = self->_path;

  SCNEncodeBezierPathForKey(shape, path, @"path");
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = SCNShape;
  [(SCNGeometry *)&v8 encodeWithCoder:?];
  if ([(SCNGeometry *)self isPresentationInstance])
  {
    [(SCNShape *)self _syncObjCModel:[(SCNGeometry *)self geometryRef]];
  }

  [(SCNShape *)self _customEncodingOfSCNShape:coder];
  *&v5 = self->_chamferRadius;
  [coder encodeFloat:@"chamferRadius" forKey:v5];
  *&v6 = self->_extrusionDepth;
  [coder encodeFloat:@"extrusionDepth" forKey:v6];
  *&v7 = self->_discretizedStraightLineMaxLength;
  [coder encodeFloat:@"discretizedStraightLineMaxLength" forKey:v7];
  [coder encodeInteger:self->_primitiveType forKey:@"primitiveType"];
  [coder encodeInteger:self->_chamferMode forKey:@"chamferMode"];
}

- (SCNShape)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = SCNShape;
  v4 = [(SCNGeometry *)&v10 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [(SCNShape *)v4 _customDecodingOfSCNShape:coder];
    [coder decodeFloatForKey:@"chamferRadius"];
    [(SCNShape *)v4 setChamferRadius:v6];
    [coder decodeFloatForKey:@"extrusionDepth"];
    [(SCNShape *)v4 setExtrusionDepth:v7];
    [coder decodeFloatForKey:@"discretizedStraightLineMaxLength"];
    [(SCNShape *)v4 setDiscretizedStraightLineMaxLength:v8];
    -[SCNShape setPrimitiveType:](v4, "setPrimitiveType:", [coder decodeIntegerForKey:@"primitiveType"]);
    -[SCNShape setChamferMode:](v4, "setChamferMode:", [coder decodeIntegerForKey:@"chamferMode"]);
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (void)setChamferMode:.cold.1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, v6);
}

- (void)setChamferRadius:.cold.1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, v6);
}

- (void)setDiscretizedStraightLineMaxLength:.cold.1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_12(&dword_21BEF7000, v0, v1, "Error: can't set a property (%s::%d) on the presentation instance %@ - ignoring", v2, v3, v4, v5, v6);
}

- (void)setExtrusionDepth:.cold.1()
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

@end