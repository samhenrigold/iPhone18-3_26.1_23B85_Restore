@interface VFXLight
+ (id)light;
+ (id)lightWithLightRef:(__CFXLight *)ref;
+ (id)lightWithMDLLight:(id)light;
+ (id)lightWithMDLLightProbe:(id)probe;
+ (id)presentationLightWithLightRef:(__CFXLight *)ref;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)automaticallyAdjustsShadowProjection;
- (BOOL)castsShadow;
- (BOOL)doubleSided;
- (BOOL)drawsArea;
- (BOOL)forcesBackFaceCasters;
- (BOOL)isBaked;
- (BOOL)parallaxCorrectionEnabled;
- (BOOL)rawFloat3ForKey:(id)key value:;
- (BOOL)sampleDistributedShadowMaps;
- (CGSize)shadowMapSize;
- (NSArray)animationKeys;
- (NSArray)areaPolygonVertices;
- (NSString)description;
- (NSString)name;
- (VFXLight)init;
- (VFXLight)initWithCoder:(id)coder;
- (VFXLight)initWithLightRef:(__CFXLight *)ref;
- (VFXMaterialProperty)gobo;
- (VFXMaterialProperty)probeEnvironment;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXWorld)worldRef;
- (double)areaExtents;
- (double)parallaxCenterOffset;
- (double)parallaxExtentsFactor;
- (double)probeExtents;
- (double)probeOffset;
- (float)_shadowCascadeDebugFactor;
- (float)attenuationDistance;
- (float)intensity;
- (float)maximumShadowDistance;
- (float)orthographicScale;
- (float)shadowBias;
- (float)shadowCascadeSplittingFactor;
- (float)shadowIntensity;
- (float)shadowRadius;
- (float)spotFalloffExponent;
- (float)spotInnerAngle;
- (float)spotOuterAngle;
- (float)temperature;
- (float)zFar;
- (float)zNear;
- (id)_valueForSimdVectorKeyPath:(id)path;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)color;
- (id)copyAnimationChannelForKeyPath:(id)path property:(id)property;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifier;
- (id)initPresentationLightWithLightRef:(__CFXLight *)ref;
- (id)presentationLight;
- (id)valueForKey:(id)key;
- (id)valueForKeyPath:(id)path;
- (int64_t)areaType;
- (int64_t)probeType;
- (int64_t)probeUpdateType;
- (int64_t)type;
- (unint64_t)categoryBitMask;
- (unint64_t)shadowCascadeCount;
- (unint64_t)shadowSampleCount;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyBindingsFrom:(id)from;
- (void)_customDecodingOfVFXLight:(id)light;
- (void)_customEncodingOfVFXLight:(id)light;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_resyncObjCModelOfPerTypeParametersWithOldType:(unsigned __int8)type;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_syncObjCAnimations;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)_updateProbeStamp;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)addWorldReference:(id)reference;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAnimationReferencesUsingBlock:(id)block;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)makeUniqueID;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)duration;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration;
- (void)removeWorldReference:(id)reference;
- (void)setAreaExtents:(VFXLight *)self;
- (void)setAreaPolygonVertices:(id)vertices;
- (void)setAreaType:(int64_t)type;
- (void)setAttenuationDistance:(float)distance;
- (void)setAutomaticallyAdjustsShadowProjection:(BOOL)projection;
- (void)setBaked:(BOOL)baked;
- (void)setCastsShadow:(BOOL)shadow;
- (void)setCategoryBitMask:(unint64_t)mask;
- (void)setColor:(id)color;
- (void)setDoubleSided:(BOOL)sided;
- (void)setDrawsArea:(BOOL)area;
- (void)setExtendedLinearSRGBColor:(VFXLight *)self;
- (void)setForcesBackFaceCasters:(BOOL)casters;
- (void)setIESProfile:(id)profile;
- (void)setIdentifier:(id)identifier;
- (void)setIntensity:(float)intensity;
- (void)setMaximumShadowDistance:(float)distance;
- (void)setName:(id)name;
- (void)setOrthographicScale:(float)scale;
- (void)setParallaxCenterOffset:(VFXLight *)self;
- (void)setParallaxCorrectionEnabled:(BOOL)enabled;
- (void)setParallaxExtentsFactor:(VFXLight *)self;
- (void)setProbeExtents:(VFXLight *)self;
- (void)setProbeOffset:(VFXLight *)self;
- (void)setProbeType:(int64_t)type;
- (void)setProbeUpdateType:(int64_t)type;
- (void)setSampleDistributedShadowMaps:(BOOL)maps;
- (void)setShadowBias:(float)bias;
- (void)setShadowCascadeCount:(unint64_t)count;
- (void)setShadowCascadeSplittingFactor:(float)factor;
- (void)setShadowIntensity:(float)intensity;
- (void)setShadowMapSize:(CGSize)size;
- (void)setShadowRadius:(float)radius;
- (void)setShadowSampleCount:(unint64_t)count;
- (void)setShouldBakeDirectLighting:(BOOL)lighting;
- (void)setShouldBakeIndirectLighting:(BOOL)lighting;
- (void)setSphericalHarmonicsCoefficients:(id)coefficients;
- (void)setSpotFalloffExponent:(float)exponent;
- (void)setSpotInnerAngle:(float)angle;
- (void)setSpotOuterAngle:(float)angle;
- (void)setTemperature:(float)temperature;
- (void)setType:(int64_t)type;
- (void)setValue:(id)value forKey:(id)key;
- (void)setWorld:(id)world;
- (void)setZFar:(float)far;
- (void)setZNear:(float)near;
- (void)set_shadowCascadeDebugFactor:(float)factor;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation VFXLight

- (VFXLight)init
{
  v9.receiver = self;
  v9.super_class = VFXLight;
  v2 = [(VFXLight *)&v9 init];
  v4 = v2;
  if (v2)
  {
    v5 = sub_1AF19B168(v2, v3);
    v4->_light = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v4, v6, v7);
  }

  return v4;
}

- (VFXLight)initWithLightRef:(__CFXLight *)ref
{
  v11.receiver = self;
  v11.super_class = VFXLight;
  v4 = [(VFXLight *)&v11 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_light = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v4, v6, v7);
    objc_msgSend__syncObjCAnimations(v4, v8, v9);
  }

  return v4;
}

- (id)initPresentationLightWithLightRef:(__CFXLight *)ref
{
  v7.receiver = self;
  v7.super_class = VFXLight;
  v4 = [(VFXLight *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 28) |= 1u;
    v4->_light = CFRetain(ref);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (id)light
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)lightWithLightRef:(__CFXLight *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v8 = objc_msgSend_initWithLightRef_(v6, v7, ref);

    return v8;
  }

  return result;
}

- (void)dealloc
{
  light = self->_light;
  if (light)
  {
    if ((*(self + 28) & 1) == 0)
    {
      sub_1AF16CDFC(self->_light, 0);
      light = self->_light;
    }

    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, a2, light);
  }

  objc_msgSend_parentWillDie_(self->_gobo, v4, self);
  objc_msgSend_parentWillDie_(self->_probeEnvironment, v5, self);

  v6.receiver = self;
  v6.super_class = VFXLight;
  [(VFXLight *)&v6 dealloc];
}

- (NSString)description
{
  v4 = objc_msgSend_name(self, a2, v2);
  v7 = objc_msgSend_length(v4, v5, v6);
  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v12 = NSStringFromClass(v9);
  if (v7)
  {
    v13 = objc_msgSend_name(self, v10, v11);
    v20 = objc_msgSend_type(self, v14, v15);
    return objc_msgSend_stringWithFormat_(v8, v16, @"<%@: %p '%@' | type=%d>", v12, self, v13, v20);
  }

  else
  {
    v19 = objc_msgSend_type(self, v10, v11);
    return objc_msgSend_stringWithFormat_(v8, v18, @"<%@: %p | type=%d>", v12, self, v19);
  }
}

- (void)setName:(id)name
{
  name = self->_name;
  if (name | name)
  {
    if ((objc_msgSend_isEqual_(name, a2, name) & 1) == 0)
    {

      self->_name = objc_msgSend_copy(name, v6, v7);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF2CC368;
      v9[3] = &unk_1E7A7E220;
      v9[4] = self;
      v9[5] = name;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
    }
  }
}

- (NSString)name
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_name;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  v8 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v9 = objc_msgSend___CFObject(self, v6, v7);
  v4 = sub_1AF16CBEC(v9, v10);
  if (v8)
  {
    sub_1AF1CEA9C(v8, v11);
  }

  return v4;
}

- (void)setIdentifier:(id)identifier
{
  v4 = objc_msgSend___CFObject(self, a2, identifier);

  sub_1AF16CD6C(v4, identifier);
}

- (id)identifier
{
  v3 = objc_msgSend___CFObject(self, a2, v2);

  return sub_1AF16CD08(v3, v4, v5);
}

- (void)_updateEntityModelFromPresentation
{
  v4 = objc_msgSend___CFObject(self, a2, v2);

  self->_name = sub_1AF16CBEC(v4, v5);
}

- (void)_updateEntityPresentationFromModel
{
  v4 = objc_msgSend___CFObject(self, a2, v2);
  name = self->_name;

  sub_1AF16CC34(v4, name);
}

- (void)makeUniqueID
{
  v3 = objc_msgSend___CFObject(self, a2, v2);
  v6 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v4, v5);
  v9 = objc_msgSend_UUIDString(v6, v7, v8);

  sub_1AF16CD6C(v3, v9);
}

- (void)_updateModelFromPresentation
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  self->_type = sub_1AF19CBB4(self->_light, v5);
  v8 = sub_1AF19BB78(self->_light, v7);

  self->_color = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v9, v8);
  self->_intensity = sub_1AF19C46C(self->_light, v10);
  self->_temperature = sub_1AF19CB10(self->_light, v11);
  self->_shadowIntensity = sub_1AF19BDC0(self->_light, v12);
  if (sub_1AF19B994(self->_light, v13))
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  *(self + 28) = *(self + 28) & 0xFD | v15;
  self->_shadowMapSize = vcvtq_f64_f32(COERCE_FLOAT32X2_T(sub_1AF19C6A4(self->_light, v14)));
  self->_shadowRadius = sub_1AF19BA38(self->_light, v16);
  self->_zNear = sub_1AF19CC98(self->_light, v17);
  self->_zFar = sub_1AF19CBFC(self->_light, v18);
  self->_shadowBias = sub_1AF19C608(self->_light, v19);
  self->_spotInnerAngle = sub_1AF19C1FC(self->_light, v20);
  self->_spotOuterAngle = sub_1AF19C9F0(self->_light, v21);
  self->_spotFalloffExponent = sub_1AF19BFD8(self->_light, v22);
  *(&self->_spotFalloffExponent + 1) = sub_1AF19C938(self->_light, v23);

  v24 = sub_1AF19B4EC(self->_light, 0);
  if (v24)
  {
    v26 = [VFXMaterialProperty alloc];
    v24 = objc_msgSend_initWithParent_propertyType_(v26, v27, self, 23);
  }

  self->_gobo = v24;
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  sub_1AF19D5A0(self->_light, v25, &v56);
  self->_areaType = v56;
  v28 = v56;
  *self->_areaExtents = vaddq_f32(v57, v57);
  v55[0] = v28;
  v55[1] = v57;
  v55[2] = v58;
  self->_areaPolygonVertices = sub_1AF2CC858(v55, v29);
  self->_drawsArea = sub_1AF19D3B0(self->_light, v30);
  self->_doubleSided = sub_1AF19D540(self->_light, v31);
  self->_categoryBitMask = sub_1AF19C3BC(self->_light, v32);
  self->_orthographicScale = sub_1AF19C56C(self->_light, v33);
  self->_shadowSampleCount = sub_1AF19C844(self->_light, v34);
  if (sub_1AF19E90C(self->_light, v35))
  {
    v36 = 32;
  }

  else
  {
    v36 = 0;
  }

  *(self + 28) = *(self + 28) & 0xDF | v36;
  self->_maximumShadowDistance = sub_1AF19EAD4(self->_light);
  self->_shadowCascadeCount = sub_1AF19BAD0(self->_light, v37);
  self->_shadowCascadeSplittingFactor = sub_1AF19EB30(self->_light, v38);
  if (sub_1AF19EDC4(self->_light, v39))
  {
    v40 = 64;
  }

  else
  {
    v40 = 0;
  }

  *(self + 28) = *(self + 28) & 0xBF | v40;
  if (sub_1AF19EE7C(self->_light))
  {
    v41 = 0x80;
  }

  else
  {
    v41 = 0;
  }

  *(self + 28) = v41 & 0x80 | *(self + 28) & 0x7F;

  v42 = sub_1AF19B558(self->_light, 0);
  if (v42)
  {
    v44 = [VFXMaterialProperty alloc];
    v42 = objc_msgSend_initWithParent_propertyType_(v44, v45, self, 26);
  }

  self->_probeEnvironment = v42;
  self->_probeType = sub_1AF19D968(self->_light, v43);
  self->_probeUpdateType = sub_1AF19DAD4(self->_light, v46);
  self->_parallaxCorrectionEnabled = sub_1AF19DB90(self->_light, v47);
  *&self->_probeExtents[7] = sub_1AF19DDEC(self->_light, v48);
  *&self->_probeOffset[7] = sub_1AF19DEB0(self->_light, v49);
  *&self->_parallaxExtentsFactor[7] = sub_1AF19DD18(self->_light, v50);
  *&self->_parallaxCenterOffset[7] = sub_1AF19DC58(self->_light, v51);
  objc_msgSend__updateEntityModelFromPresentation(self, v52, v53);
  if (v6)
  {
    sub_1AF1CEA9C(v6, v54);
  }
}

- (void)_updatePresentationFromModel
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF2CC98C;
  v7[3] = &unk_1E7A7E1D0;
  v7[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v7);
  objc_msgSend__updatePresentationFromModel(self->_probeEnvironment, v3, v4);
  objc_msgSend__updatePresentationFromModel(self->_gobo, v5, v6);
}

- (id)presentationLight
{
  if ((*(self + 28) & 1) == 0)
  {
    return MEMORY[0x1EEE66B58](VFXLight, sel_presentationLightWithLightRef_, *(self + 1));
  }

  return self;
}

+ (id)presentationLightWithLightRef:(__CFXLight *)ref
{
  v4 = [VFXLight alloc];
  inited = objc_msgSend_initPresentationLightWithLightRef_(v4, v5, ref);

  return inited;
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  gobo = self->_gobo;
  if (gobo)
  {
    (*(block + 2))(block, gobo, 0, 0);
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, gobo, block);
}

- (void)addWorldReference:(id)reference
{
  world = self->_world;
  if (world == reference)
  {
    v5 = self->_worldReferenceCounter + 1;
  }

  else
  {
    if (world)
    {
      self->_worldReferenceCounter = 0;
    }

    objc_msgSend_setWorld_(self, a2, reference);
    v5 = 1;
  }

  self->_worldReferenceCounter = v5;
}

- (void)removeWorldReference:(id)reference
{
  if (!reference || self->_world == reference)
  {
    worldReferenceCounter = self->_worldReferenceCounter;
    if (worldReferenceCounter)
    {
      v4 = worldReferenceCounter - 1;
      self->_worldReferenceCounter = v4;
      if (!v4)
      {

        objc_msgSend_setWorld_(self, a2, 0);
      }
    }

    else
    {
      v5 = sub_1AF0D5194(self, a2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF4764();
      }
    }
  }
}

- (void)setWorld:(id)world
{
  world = self->_world;
  if (world != world)
  {
    v9[9] = v3;
    v9[10] = v4;
    if (world)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF2CD088;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2CD0E8;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_world;
  }

  result = objc_msgSend_worldRef(self, a2, v2);
  if (result)
  {

    return sub_1AF16CDEC(&result->super.isa);
  }

  return result;
}

- (__CFXWorld)worldRef
{
  v3 = objc_msgSend___CFObject(self, a2, v2);

  return sub_1AF1C3FAC(v3, v4);
}

- (id)copyAnimationChannelForKeyPath:(id)path property:(id)property
{
  if (self->_gobo != property)
  {
    return 0;
  }

  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%@.%@", @"gobo", path);

  return sub_1AF291EF0(self, v7, v8);
}

- (__CFXAnimationManager)animationManager
{
  result = objc_msgSend_worldRef(self, a2, v2);
  if (result)
  {

    return sub_1AF1CF830(result, v4);
  }

  return result;
}

- (BOOL)__removeAnimation:(id)animation forKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_animationsLock);
  v8 = objc_msgSend_objectForKey_(self->_animations, v7, key);
  v12 = objc_msgSend_animation(v8, v9, v10) == animation;
  if (v12)
  {
    objc_msgSend_removeWorldReference_(v8, v11, self->_world);
    objc_msgSend_removeObjectForKey_(self->_animations, v13, key);
    v16 = objc_msgSend___CFObject(self, v14, v15);
    v17 = sub_1AF16D234(v16);
    if ((v17 & 1) == 0)
    {
      v19 = sub_1AF0D5194(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4B20(v19);
      }
    }

    sub_1AF16D870(v16, key, 1);
  }

  os_unfair_lock_unlock(&self->_animationsLock);
  return v12;
}

- (void)addAnimationPlayer:(id)player forKey:(id)key
{
  if (player)
  {
    keyCopy = key;
    if (!key)
    {
      v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, player);
      keyCopy = objc_msgSend_UUIDString(v7, v8, v9);
    }

    if ((*(self + 28) & 1) == 0)
    {
      os_unfair_lock_lock(&self->_animationsLock);
      objc_msgSend_addWorldReference_(player, v10, self->_world);
      animations = self->_animations;
      if (!animations)
      {
        animations = objc_alloc_init(VFXOrderedDictionary);
        self->_animations = animations;
      }

      objc_msgSend_setObject_forKey_(animations, v11, player, keyCopy);
      os_unfair_lock_unlock(&self->_animationsLock);
    }

    v13 = objc_msgSend_timingFunction(VFXTransaction, a2, player);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1AF2CD468;
    v16[3] = &unk_1E7A7E2C0;
    v16[4] = player;
    v16[5] = self;
    v16[6] = keyCopy;
    v16[7] = v13;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v14, self, v16);
  }

  else
  {
    v15 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF45D0();
    }
  }
}

- (void)addAnimation:(id)animation forKey:(id)key
{
  if (animation)
  {
    keyCopy = key;
    animationCopy = animation;
    if (!key)
    {
      v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, animation);
      keyCopy = objc_msgSend_UUIDString(v7, v8, v9);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animationCopy = objc_msgSend_animationWithCAAnimation_(VFXAnimation, v10, animationCopy);
    }

    v11 = objc_msgSend_animationPlayerWithVFXAnimation_(VFXAnimationPlayer, v10, animationCopy);
    objc_msgSend_addAnimationPlayer_forKey_(self, v12, v11, keyCopy);

    objc_msgSend_play(v11, v13, v14);
  }

  else
  {
    v15 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4640();
    }
  }
}

- (void)removeAllAnimations
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_animationsLock);
  world = self->_world;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  animations = self->_animations;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(animations, v5, &v22, v26, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(animations);
        }

        objc_msgSend_removeWorldReference_(*(*(&v22 + 1) + 8 * i), v7, world);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(animations, v7, &v22, v26, 16);
    }

    while (v9);
  }

  objc_msgSend_removeAllObjects(self->_animations, v7, v8);
  os_unfair_lock_unlock(&self->_animationsLock);
  objc_msgSend_duration(VFXTransaction, v12, v13);
  if (v16 <= 0.0)
  {
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v14, self, v20, MEMORY[0x1E69E9820], 3221225472, sub_1AF2CD7EC, &unk_1E7A7E1D0, self, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6]);
  }

  else
  {
    v17 = v16;
    v18 = objc_msgSend_timingFunction(VFXTransaction, v14, v15);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v19, self, v21, v20[0], v20[1], v20[2], v20[3], v20[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF2CD7DC, &unk_1E7A7E2E8, self, v18, *&v17);
  }
}

- (void)removeAnimationForKey:(id)key
{
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v7 = objc_msgSend_objectForKey_(animations, v5, key);
      objc_msgSend_removeWorldReference_(v7, v8, self->_world);
      objc_msgSend_removeObjectForKey_(self->_animations, v9, key);
    }

    os_unfair_lock_unlock(&self->_animationsLock);
    v12 = objc_msgSend_timingFunction(VFXTransaction, v10, v11);
    objc_msgSend_animationDuration(VFXTransaction, v13, v14);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1AF2CD8DC;
    v17[3] = &unk_1E7A7E310;
    v17[7] = v15;
    v17[4] = self;
    v17[5] = key;
    v17[6] = v12;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v16, self, v17);
  }
}

- (NSArray)animationKeys
{
  os_unfair_lock_lock(&self->_animationsLock);
  v5 = objc_msgSend_allKeys(self->_animations, v3, v4);
  os_unfair_lock_unlock(&self->_animationsLock);
  if (objc_msgSend_count(v5, v6, v7))
  {
    return v5;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)_syncObjCAnimations
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(VFXOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  v9 = objc_msgSend___CFObject(self, v7, v8);
  if (v9)
  {
    v11 = v9;
    v12 = sub_1AF16D234(v9);
    if ((v12 & 1) == 0)
    {
      v14 = sub_1AF0D5194(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4C94(v14);
      }
    }

    v15 = sub_1AF16D614(v11, v13);
    if (v15)
    {
      v16 = v15;
      os_unfair_lock_lock(&self->_animationsLock);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_1AF2CDA78;
      v17[3] = &unk_1E7A7E338;
      v17[4] = self;
      sub_1AF375240(v16, v17);
      os_unfair_lock_unlock(&self->_animationsLock);
    }
  }

  if (v6)
  {
    sub_1AF1CEA9C(v6, v10);
  }
}

- (id)_vfxAnimationForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v7 = objc_msgSend_objectForKey_(animations, v5, keyCopy);
      keyCopy = objc_msgSend_animation(v7, v8, v9);
    }

    else
    {
      keyCopy = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return keyCopy;
}

- (void)_copyAnimationsFrom:(id)from
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = objc_msgSend_animationKeys(from, a2, from, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_msgSend_animationPlayerForKey_(from, v8, v12);
        v16 = objc_msgSend_copy(v13, v14, v15);
        objc_msgSend_addAnimationPlayer_forKey_(self, v17, v16, v12);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v18, v22, 16);
    }

    while (v9);
  }
}

- (id)animationPlayerForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      keyCopy = objc_msgSend_objectForKey_(animations, v5, keyCopy);
    }

    else
    {
      keyCopy = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return keyCopy;
}

- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node
{
  nodeCopy = node;
  animationCopy = animation;
  v9 = objc_msgSend___CFObject(self, a2, animation);
  if (v9)
  {
    v12 = v9;
    v13 = objc_msgSend_animationManager(self, v10, v11);
    if (v13)
    {
      v14 = v13;
      v15 = CACurrentMediaTime();

      sub_1AF118EBC(v14, v12, key, animationCopy, nodeCopy, v15);
    }
  }
}

- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options
{
  if (self != object)
  {
    v21[15] = v6;
    v21[16] = v7;
    v13 = objc_alloc_init(CFXBinding);
    objc_msgSend_setSourceObject_(v13, v14, object);
    objc_msgSend_setKeyPathDst_(v13, v15, path);
    objc_msgSend_setKeyPathSrc_(v13, v16, keyPath);
    objc_msgSend_setOptions_(v13, v17, options);
    bindings = self->_bindings;
    if (!bindings)
    {
      bindings = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_bindings = bindings;
    }

    objc_msgSend_setValue_forKey_(bindings, v18, v13, path);

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1AF2CDE98;
    v21[3] = &unk_1E7A7E360;
    v21[4] = self;
    v21[5] = object;
    v21[6] = path;
    v21[7] = keyPath;
    v21[8] = options;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v20, self, v21);
  }
}

- (void)unbindAnimatablePath:(id)path
{
  objc_msgSend_removeObjectForKey_(self->_bindings, a2, path);
  if (!objc_msgSend_count(self->_bindings, v5, v6))
  {

    self->_bindings = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF2CDFDC;
  v8[3] = &unk_1E7A7E220;
  v8[4] = self;
  v8[5] = path;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF2CE0A8;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v4 = objc_msgSend__vfxBindings(from, a2, from);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF2CE154;
  v6[3] = &unk_1E7A7E388;
  v6[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v5, v6);
}

- (void)_setSourceObject:(id)object forBinding:(id)binding
{
  if (objc_msgSend_sourceObject(binding, a2, object) != object)
  {
    objc_msgSend_setSourceObject_(binding, v7, object);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2CE28C;
    v9[3] = &unk_1E7A7E3B0;
    v9[4] = self;
    v9[5] = binding;
    v9[6] = object;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
  }
}

- (void)enumerateAnimationReferencesUsingBlock:(id)block
{
  bindings = self->_bindings;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF2CE3C8;
  v4[3] = &unk_1E7A7E400;
  v4[4] = self;
  v4[5] = block;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(bindings, a2, v4);
}

- (void)removeAllAnimationsWithBlendOutDuration:(float)duration
{
  objc_msgSend_begin(VFXTransaction, a2, v3);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v6, v7, duration);
  objc_msgSend_removeAllAnimations(self, v8, v9);

  objc_msgSend_commit(VFXTransaction, v10, v11);
}

- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration
{
  objc_msgSend_begin(VFXTransaction, a2, key);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v7, v8, duration);
  objc_msgSend_removeAnimationForKey_(self, v9, key);

  objc_msgSend_commit(VFXTransaction, v10, v11);
}

- (BOOL)rawFloat3ForKey:(id)key value:
{
  v4 = v3;
  if (objc_msgSend_isEqualToString_(key, a2, @"areaExtents"))
  {
    objc_msgSend_areaExtents(self, v7, v8);
LABEL_11:
    *v4 = v9;
    LOBYTE(isEqualToString) = 1;
    return isEqualToString;
  }

  if (objc_msgSend_isEqualToString_(key, v7, @"probeExtents"))
  {
    objc_msgSend_probeExtents(self, v10, v11);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(key, v10, @"probeOffset"))
  {
    objc_msgSend_probeOffset(self, v12, v13);
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(key, v12, @"parallaxExtentsFactor"))
  {
    objc_msgSend_parallaxExtentsFactor(self, v14, v15);
    goto LABEL_11;
  }

  isEqualToString = objc_msgSend_isEqualToString_(key, v14, @"parallaxCenterOffset");
  if (isEqualToString)
  {
    objc_msgSend_parallaxCenterOffset(self, v17, v18);
    goto LABEL_11;
  }

  return isEqualToString;
}

- (id)_valueForSimdVectorKeyPath:(id)path
{
  v19 = 0;
  v20 = 0;
  sub_1AF3716AC(path, &v20, &v19);
  if (qword_1ED73B320 != -1)
  {
    sub_1AFDF5844();
  }

  if (!v19)
  {
    return 0;
  }

  if (!objc_msgSend_containsObject_(qword_1ED73B318, v4, v19))
  {
    return 0;
  }

  v18 = 0;
  v17 = 0;
  if (!objc_msgSend_rawFloat3ForKey_value_(self, v5, v20, &v17))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(v19, v6, @"x"))
  {
    LODWORD(v9) = v17;
    return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v7, v8, v9);
  }

  if (objc_msgSend_isEqualToString_(v19, v7, @"y"))
  {
    LODWORD(v13) = HIDWORD(v17);
    return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v11, v12, v13);
  }

  if (!objc_msgSend_isEqualToString_(v19, v11, @"z"))
  {
    return 0;
  }

  LODWORD(v16) = v18;
  return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v16);
}

- (id)valueForKeyPath:(id)path
{
  if (!path)
  {
    return 0;
  }

  result = objc_msgSend__valueForSimdVectorKeyPath_(self, a2, path);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = VFXLight;
    return [(VFXLight *)&v6 valueForKeyPath:path];
  }

  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (objc_msgSend_isEqual_(path, a2, @"color"))
  {

    objc_msgSend_setColor_(self, v11, object);
  }

  else if ((objc_msgSend_isEqual_(path, v11, @"image") & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = VFXLight;
    [(VFXLight *)&v12 observeValueForKeyPath:path ofObject:object change:change context:context];
  }
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"areaExtents"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_areaExtents(self, v5, v6);
  }

  else if (objc_msgSend_isEqualToString_(key, v5, @"probeExtents"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_probeExtents(self, v10, v11);
  }

  else if (objc_msgSend_isEqualToString_(key, v10, @"probeOffset"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_probeOffset(self, v12, v13);
  }

  else if (objc_msgSend_isEqualToString_(key, v12, @"parallaxCenterOffset"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_parallaxCenterOffset(self, v14, v15);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(key, v14, @"parallaxExtentsFactor"))
    {
      v19.receiver = self;
      v19.super_class = VFXLight;
      return [(VFXLight *)&v19 valueForKey:key];
    }

    v7 = MEMORY[0x1E696B098];
    objc_msgSend_parallaxExtentsFactor(self, v16, v17);
  }

  return objc_msgSend_valueWithVFXFloat3_(v7, v8, v9);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"areaExtents"))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8);

    objc_msgSend_setAreaExtents_(self, v9, v10);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"probeExtents"))
  {
    objc_msgSend_VFXFloat3Value(value, v11, v12);

    objc_msgSend_setProbeExtents_(self, v13, v14);
  }

  else if (objc_msgSend_isEqualToString_(key, v11, @"probeOffset"))
  {
    objc_msgSend_VFXFloat3Value(value, v15, v16);

    objc_msgSend_setProbeOffset_(self, v17, v18);
  }

  else if (objc_msgSend_isEqualToString_(key, v15, @"parallaxCenterOffset"))
  {
    objc_msgSend_VFXFloat3Value(value, v19, v20);

    objc_msgSend_setParallaxCenterOffset_(self, v21, v22);
  }

  else if (objc_msgSend_isEqualToString_(key, v19, @"parallaxExtentsFactor"))
  {
    objc_msgSend_VFXFloat3Value(value, v23, v24);

    objc_msgSend_setParallaxExtentsFactor_(self, v25, v26);
  }

  else
  {
    v27.receiver = self;
    v27.super_class = VFXLight;
    [(VFXLight *)&v27 setValue:value forKey:key];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

- (void)copyTo:(id)to withContext:(id)context
{
  objc_msgSend_begin(VFXTransaction, a2, to);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1);
  v10 = objc_msgSend_color(self, v8, v9);
  objc_msgSend_setColor_(to, v11, v10);
  v14 = objc_msgSend_name(self, v12, v13);
  objc_msgSend_setName_(to, v15, v14);
  v18 = objc_msgSend_type(self, v16, v17);
  objc_msgSend_setType_(to, v19, v18);
  objc_msgSend_temperature(self, v20, v21);
  objc_msgSend_setTemperature_(to, v22, v23);
  objc_msgSend_intensity(self, v24, v25);
  objc_msgSend_setIntensity_(to, v26, v27);
  objc_msgSend_shadowIntensity(self, v28, v29);
  objc_msgSend_setShadowIntensity_(to, v30, v31);
  objc_msgSend_shadowMapSize(self, v32, v33);
  objc_msgSend_setShadowMapSize_(to, v34, v35);
  objc_msgSend_shadowRadius(self, v36, v37);
  objc_msgSend_setShadowRadius_(to, v38, v39);
  v42 = objc_msgSend_castsShadow(self, v40, v41);
  objc_msgSend_setCastsShadow_(to, v43, v42);
  v46 = objc_msgSend_shadowSampleCount(self, v44, v45);
  objc_msgSend_setShadowSampleCount_(to, v47, v46);
  objc_msgSend_shadowBias(self, v48, v49);
  objc_msgSend_setShadowBias_(to, v50, v51);
  objc_msgSend_orthographicScale(self, v52, v53);
  objc_msgSend_setOrthographicScale_(to, v54, v55);
  objc_msgSend_zNear(self, v56, v57);
  objc_msgSend_setZNear_(to, v58, v59);
  objc_msgSend_zFar(self, v60, v61);
  objc_msgSend_setZFar_(to, v62, v63);
  v66 = objc_msgSend_categoryBitMask(self, v64, v65);
  objc_msgSend_setCategoryBitMask_(to, v67, v66);
  objc_msgSend_attenuationDistance(self, v68, v69);
  objc_msgSend_setAttenuationDistance_(to, v70, v71);
  objc_msgSend_spotInnerAngle(self, v72, v73);
  objc_msgSend_setSpotInnerAngle_(to, v74, v75);
  objc_msgSend_spotOuterAngle(self, v76, v77);
  objc_msgSend_setSpotOuterAngle_(to, v78, v79);
  objc_msgSend_maximumShadowDistance(self, v80, v81);
  objc_msgSend_setMaximumShadowDistance_(to, v82, v83);
  v86 = objc_msgSend_sampleDistributedShadowMaps(self, v84, v85);
  objc_msgSend_setSampleDistributedShadowMaps_(to, v87, v86);
  v90 = objc_msgSend_forcesBackFaceCasters(self, v88, v89);
  objc_msgSend_setForcesBackFaceCasters_(to, v91, v90);
  v94 = objc_msgSend_automaticallyAdjustsShadowProjection(self, v92, v93);
  objc_msgSend_setAutomaticallyAdjustsShadowProjection_(to, v95, v94);
  v98 = objc_msgSend_shadowCascadeCount(self, v96, v97);
  objc_msgSend_setShadowCascadeCount_(to, v99, v98);
  objc_msgSend_shadowCascadeSplittingFactor(self, v100, v101);
  objc_msgSend_setShadowCascadeSplittingFactor_(to, v102, v103);
  if (self->_gobo)
  {
    v106 = objc_msgSend_gobo(to, v104, v105);
    objc_msgSend_copyPropertiesFrom_copyContext_(v106, v107, self->_gobo, context);
  }

  v108 = objc_msgSend_IESProfile(self, v104, v105);
  objc_msgSend_setIESProfile_(to, v109, v108);
  v112 = objc_msgSend_areaType(self, v110, v111);
  objc_msgSend_setAreaType_(to, v113, v112);
  objc_msgSend_areaExtents(self, v114, v115);
  objc_msgSend_setAreaExtents_(to, v116, v117);
  v120 = objc_msgSend_areaPolygonVertices(self, v118, v119);
  objc_msgSend_setAreaPolygonVertices_(to, v121, v120);
  v124 = objc_msgSend_drawsArea(self, v122, v123);
  objc_msgSend_setDrawsArea_(to, v125, v124);
  v128 = objc_msgSend_doubleSided(self, v126, v127);
  objc_msgSend_setDoubleSided_(to, v129, v128);
  v132 = objc_msgSend_probeType(self, v130, v131);
  objc_msgSend_setProbeType_(to, v133, v132);
  updated = objc_msgSend_probeUpdateType(self, v134, v135);
  objc_msgSend_setProbeUpdateType_(to, v137, updated);
  objc_msgSend_probeExtents(self, v138, v139);
  objc_msgSend_setProbeExtents_(to, v140, v141);
  objc_msgSend_probeOffset(self, v142, v143);
  objc_msgSend_setProbeOffset_(to, v144, v145);
  v148 = objc_msgSend_parallaxCorrectionEnabled(self, v146, v147);
  objc_msgSend_setParallaxCorrectionEnabled_(to, v149, v148);
  v152 = objc_msgSend_sphericalHarmonicsCoefficients(self, v150, v151);
  objc_msgSend_setSphericalHarmonicsCoefficients_(to, v153, v152);
  if (self->_probeEnvironment)
  {
    v156 = objc_msgSend_probeEnvironment(to, v154, v155);
    objc_msgSend_copyPropertiesFrom_copyContext_(v156, v157, self->_probeEnvironment, context);
  }

  objc_msgSend__copyAnimationsFrom_(to, v154, self);
  objc_msgSend__copyBindingsFrom_(to, v158, self);

  objc_msgSend_commitImmediate(VFXTransaction, v159, v160);
}

- (void)setSphericalHarmonicsCoefficients:(id)coefficients
{
  sphericalHarmonics = self->_sphericalHarmonics;
  if (sphericalHarmonics != coefficients)
  {
    v11[8] = v3;
    v11[9] = v4;

    self->_sphericalHarmonics = objc_msgSend_copy(coefficients, v8, v9);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF2CEFAC;
    v11[3] = &unk_1E7A7E220;
    v11[4] = self;
    v11[5] = coefficients;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
  }
}

- (void)setShouldBakeDirectLighting:(BOOL)lighting
{
  if (lighting)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 28) = *(self + 28) & 0xF7 | v3;
}

- (void)setShouldBakeIndirectLighting:(BOOL)lighting
{
  if (lighting)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 28) = *(self + 28) & 0xEF | v3;
}

- (void)_updateProbeStamp
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2CF088;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (float)attenuationDistance
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_spotInnerAngle;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF19C1FC(self->_light, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    light = self->_light;

    return sub_1AF19C1FC(light, v6);
  }
}

- (void)setAttenuationDistance:(float)distance
{
  if (self->_spotInnerAngle != distance)
  {
    v7 = v3;
    v8 = v4;
    self->_spotInnerAngle = distance;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2CF1B4;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = distance;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"attenuationDistance", v5);
  }
}

- (BOOL)isBaked
{
  v3 = *(self + 28);
  if (v3)
  {
    v6 = objc_msgSend_worldRef(self, a2, v2);
    if (v6)
    {
      v8 = v6;
      sub_1AF1CEA20(v6, v7);
      v10 = sub_1AF19C244(self->_light, v9);
      sub_1AF1CEA9C(v8, v11);
      LOBYTE(v4) = v10;
    }

    else
    {
      light = self->_light;

      LOBYTE(v4) = sub_1AF19C244(light, v7);
    }
  }

  else
  {
    return (v3 >> 2) & 1;
  }

  return v4;
}

- (void)setBaked:(BOOL)baked
{
  v3 = *(self + 28);
  if (((((v3 & 4) == 0) ^ baked) & 1) == 0)
  {
    if (baked)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(self + 28) = v3 & 0xFB | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2CF2F0;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    bakedCopy = baked;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)castsShadow
{
  v3 = *(self + 28);
  if (v3)
  {
    v6 = objc_msgSend_worldRef(self, a2, v2);
    if (v6)
    {
      v8 = v6;
      sub_1AF1CEA20(v6, v7);
      v10 = sub_1AF19B994(self->_light, v9);
      sub_1AF1CEA9C(v8, v11);
      LOBYTE(v4) = v10;
    }

    else
    {
      light = self->_light;

      LOBYTE(v4) = sub_1AF19B994(light, v7);
    }
  }

  else
  {
    return (v3 >> 1) & 1;
  }

  return v4;
}

- (void)setCastsShadow:(BOOL)shadow
{
  v3 = *(self + 28);
  if (((((v3 & 2) == 0) ^ shadow) & 1) == 0)
  {
    if (shadow)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *(self + 28) = v3 & 0xFD | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2CF42C;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    shadowCopy = shadow;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (unint64_t)categoryBitMask
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_categoryBitMask;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF19C3BC(self->_light, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    light = self->_light;

    return sub_1AF19C3BC(light, v6);
  }
}

- (void)setCategoryBitMask:(unint64_t)mask
{
  if (self->_categoryBitMask != mask)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_categoryBitMask = mask;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2CF54C;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mask;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (id)color
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_color;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v8 = sub_1AF19BB78(self->_light, v6);
  v4 = sub_1AF371814(v8, v9);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v10);
  }

  return v4;
}

- (void)setColor:(id)color
{
  color = self->_color;
  if (color != color)
  {
    v9[8] = v3;
    v9[9] = v4;

    self->_color = color;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2CF66C;
    v9[3] = &unk_1E7A7E220;
    v9[4] = color;
    v9[5] = self;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v8, self, @"color", v9);
  }
}

- (void)setExtendedLinearSRGBColor:(VFXLight *)self
{
  v7[0] = 0;
  v7[1] = 0;
  sub_1AF163FFC(v7, *&v2, *(&v2 + 1), *(&v2 + 2), *(&v2 + 3));
  v5 = sub_1AF371814(v7, v4);
  objc_msgSend_setColor_(self, v6, v5);
}

- (float)intensity
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_intensity;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF19C46C(self->_light, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    light = self->_light;

    return sub_1AF19C46C(light, v6);
  }
}

- (void)setIntensity:(float)intensity
{
  if (self->_intensity != intensity)
  {
    v7 = v3;
    v8 = v4;
    self->_intensity = intensity;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2CF858;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = intensity;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"intensity", v5);
  }
}

- (float)orthographicScale
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_orthographicScale;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF19C56C(self->_light, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    light = self->_light;

    return sub_1AF19C56C(light, v6);
  }
}

- (void)setOrthographicScale:(float)scale
{
  if (self->_orthographicScale != scale)
  {
    v7 = v3;
    v8 = v4;
    self->_orthographicScale = scale;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2CF98C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = scale;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"orthographicScale", v5);
  }
}

- (float)shadowBias
{
  if (*(self + 28))
  {
    v5 = objc_msgSend_worldRef(self, a2, v2);
    if (v5)
    {
      v7 = v5;
      sub_1AF1CEA20(v5, v6);
      v4 = sub_1AF19C608(self->_light, v8);
      sub_1AF1CEA9C(v7, v9);
    }

    else
    {
      return sub_1AF19C608(self->_light, v6);
    }
  }

  else
  {
    return self->_shadowBias;
  }

  return v4;
}

- (void)setShadowBias:(float)bias
{
  if (self->_shadowBias != bias)
  {
    v7 = v3;
    v8 = v4;
    self->_shadowBias = bias;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2CFAB0;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = bias;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"shadowBias", v5);
  }
}

- (float)shadowIntensity
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_shadowIntensity;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF19BDC0(self->_light, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    light = self->_light;

    return sub_1AF19BDC0(light, v6);
  }
}

- (void)setShadowIntensity:(float)intensity
{
  if (self->_shadowIntensity != intensity)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_shadowIntensity = intensity;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2CFBE4;
    v5[3] = &unk_1E7A7E1D0;
    v5[4] = self;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"shadowIntensity", v5);
  }
}

- (CGSize)shadowMapSize
{
  if (*(self + 28))
  {
    v5 = objc_msgSend_worldRef(self, a2, v2);
    v7 = v5;
    if (v5)
    {
      sub_1AF1CEA20(v5, v6);
    }

    shadowMapSize = vcvtq_f64_f32(COERCE_FLOAT32X2_T(sub_1AF19C6A4(self->_light, v6)));
    if (v7)
    {
      v10 = shadowMapSize;
      sub_1AF1CEA9C(v7, v8);
      shadowMapSize = v10;
    }
  }

  else
  {
    shadowMapSize = self->_shadowMapSize;
  }

  height = shadowMapSize.height;
  result.width = shadowMapSize.width;
  result.height = height;
  return result;
}

- (void)setShadowMapSize:(CGSize)size
{
  v3 = vdup_n_s32(fmin(size.width, size.height) <= 0.0);
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  height = size.height;
  v6 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v4, 0x3FuLL)), vdupq_n_s64(0x4090000000000000uLL), size);
  v7 = vmovn_s64(vceqq_f64(v6, self->_shadowMapSize));
  if ((v7.i32[0] & v7.i32[1] & 1) == 0)
  {
    v8 = vadd_s32(vmovn_s64(vcvtq_u64_f64(v6)), -1);
    v9 = vorr_s8(vshr_n_u32(v8, 1uLL), v8);
    v10 = vorr_s8(vshr_n_u32(v9, 2uLL), v9);
    v11 = vorr_s8(vshr_n_u32(v10, 4uLL), v10);
    v12 = vorr_s8(vshr_n_u32(v11, 8uLL), v11);
    v13 = vadd_s32(vorr_s8(vshr_n_u32(v12, 0x10uLL), v12), 0x100000001);
    v14.i64[0] = v13.u32[0];
    v14.i64[1] = v13.u32[1];
    self->_shadowMapSize = vcvtq_f64_u64(v14);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1AF2CFD78;
    v15[3] = &unk_1E7A7E1D0;
    v15[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v15);
  }
}

- (float)shadowRadius
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_shadowRadius;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF19BA38(self->_light, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    light = self->_light;

    return sub_1AF19BA38(light, v6);
  }
}

- (void)setShadowRadius:(float)radius
{
  if (self->_shadowRadius != radius)
  {
    v7 = v3;
    v8 = v4;
    self->_shadowRadius = radius;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2CFEAC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = radius;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"shadowRadius", v5);
  }
}

- (unint64_t)shadowSampleCount
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_shadowSampleCount;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (!v5)
  {
    return sub_1AF19C844(self->_light, v6);
  }

  v7 = v5;
  sub_1AF1CEA20(v5, v6);
  v4 = sub_1AF19C844(self->_light, v8);
  sub_1AF1CEA9C(v7, v9);
  return v4;
}

- (void)setShadowSampleCount:(unint64_t)count
{
  countCopy = 31;
  if (count < 0x1F)
  {
    countCopy = count;
  }

  if (countCopy != self->_shadowSampleCount)
  {
    v6[6] = v3;
    v6[7] = v4;
    self->_shadowSampleCount = countCopy;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2CFFC8;
    v6[3] = &unk_1E7A7E248;
    v6[4] = self;
    v6[5] = countCopy;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (float)spotFalloffExponent
{
  if ((*(self + 28) & 1) == 0)
  {
    return *(&self->_spotFalloffExponent + 1);
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF19C938(self->_light, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    light = self->_light;

    return sub_1AF19C938(light, v6);
  }
}

- (void)setSpotFalloffExponent:(float)exponent
{
  if (*(&self->_spotFalloffExponent + 1) != exponent)
  {
    v7 = v3;
    v8 = v4;
    *(&self->_spotFalloffExponent + 1) = exponent;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D00FC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = exponent;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"spotFalloffExponent", v5);
  }
}

- (float)spotInnerAngle
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_spotOuterAngle;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF19C9F0(self->_light, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    light = self->_light;

    return sub_1AF19C9F0(light, v6);
  }
}

- (void)setSpotInnerAngle:(float)angle
{
  if (self->_spotOuterAngle != angle)
  {
    v7 = v3;
    v8 = v4;
    self->_spotOuterAngle = angle;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D0230;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = angle;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"spotInnerAngle", v5);
  }
}

- (float)spotOuterAngle
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_spotFalloffExponent;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF19BFD8(self->_light, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    light = self->_light;

    return sub_1AF19BFD8(light, v6);
  }
}

- (void)setSpotOuterAngle:(float)angle
{
  if (self->_spotFalloffExponent != angle)
  {
    v7 = v3;
    v8 = v4;
    self->_spotFalloffExponent = angle;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D0364;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = angle;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"spotOuterAngle", v5);
  }
}

- (float)temperature
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_temperature;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF19CB10(self->_light, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    light = self->_light;

    return sub_1AF19CB10(light, v6);
  }
}

- (void)setTemperature:(float)temperature
{
  if (self->_temperature != temperature)
  {
    v7 = v3;
    v8 = v4;
    self->_temperature = temperature;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D0498;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = temperature;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"temperature", v5);
  }
}

- (void)_resyncObjCModelOfPerTypeParametersWithOldType:(unsigned __int8)type
{
  self->_spotOuterAngle = 45.0;
  self->_spotFalloffExponent = 60.0;
  *(&self->_spotFalloffExponent + 1) = 0x40000000;
  self->_drawsArea = 1;
  self->_doubleSided = 0;
  *&v4 = 0x3F0000003F000000;
  *(&v4 + 1) = 0x3F0000003F000000;
  *self->_areaExtents = v4;
  self->_areaType = 1;
  self->_probeType = 0;
  self->_probeUpdateType = 0;
  self->_parallaxCorrectionEnabled = 0;
  *&self->_probeExtents[7] = xmmword_1AFE21B50;
  *&self->_probeOffset[7] = xmmword_1AFE21B40;
  *&self->_parallaxExtentsFactor[7] = xmmword_1AFE21B70;
  *&self->_parallaxCenterOffset[7] = xmmword_1AFE21B60;
  type = self->_type;
  intensity = self->_intensity;
  v7 = intensity / sub_1AF19AF30(type);
  self->_intensity = v7 * sub_1AF19AF30(type);

  self->_IESProfile = 0;
}

- (int64_t)type
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_type;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (!v5)
  {
    return sub_1AF19CBB4(self->_light, v6);
  }

  v7 = v5;
  sub_1AF1CEA20(v5, v6);
  v4 = sub_1AF19CBB4(self->_light, v8);
  sub_1AF1CEA9C(v7, v9);
  return v4;
}

- (void)setType:(int64_t)type
{
  type = self->_type;
  if (type != type)
  {
    v9[8] = v3;
    v9[9] = v4;
    self->_type = type;
    objc_msgSend__resyncObjCModelOfPerTypeParametersWithOldType_(self, a2, type);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2D06D8;
    v9[3] = &unk_1E7A7E248;
    v9[4] = self;
    v9[5] = type;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
  }
}

- (float)zFar
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_zFar;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF19CBFC(self->_light, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    light = self->_light;

    return sub_1AF19CBFC(light, v6);
  }
}

- (void)setZFar:(float)far
{
  if (self->_zFar != far)
  {
    v7 = v3;
    v8 = v4;
    self->_zFar = far;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D0888;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = far;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"zFar", v5);
  }
}

- (float)zNear
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_zNear;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF19CC98(self->_light, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    light = self->_light;

    return sub_1AF19CC98(light, v6);
  }
}

- (void)setZNear:(float)near
{
  if (self->_zNear != near)
  {
    v7 = v3;
    v8 = v4;
    self->_zNear = near;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D09C4;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = near;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"zNear", v5);
  }
}

- (unint64_t)shadowCascadeCount
{
  if (*(self + 28))
  {
    v5 = objc_msgSend_worldRef(self, a2, v2);
    if (v5)
    {
      v7 = v5;
      sub_1AF1CEA20(v5, v6);
      v4 = sub_1AF19BAD0(self->_light, v8);
      sub_1AF1CEA9C(v7, v9);
    }

    else
    {
      return sub_1AF19BAD0(self->_light, v6);
    }
  }

  else
  {
    return self->_shadowCascadeCount;
  }

  return v4;
}

- (void)setShadowCascadeCount:(unint64_t)count
{
  if (self->_shadowCascadeCount != count)
  {
    v8 = v3;
    v9 = v4;
    countCopy = count;
    if ((count & 0xFC) != 0)
    {
      countCopy = 4;
    }

    self->_shadowCascadeCount = countCopy;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2D0AE8;
    v6[3] = &unk_1E7A7E298;
    v6[4] = self;
    v7 = countCopy;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (BOOL)automaticallyAdjustsShadowProjection
{
  v3 = *(self + 28);
  if (v3)
  {
    v6 = objc_msgSend_worldRef(self, a2, v2);
    if (v6)
    {
      v8 = v6;
      sub_1AF1CEA20(v6, v7);
      v10 = sub_1AF19E90C(self->_light, v9);
      sub_1AF1CEA9C(v8, v11);
      LOBYTE(v4) = v10;
    }

    else
    {
      light = self->_light;

      LOBYTE(v4) = sub_1AF19E90C(light, v7);
    }
  }

  else
  {
    return (v3 >> 5) & 1;
  }

  return v4;
}

- (void)setAutomaticallyAdjustsShadowProjection:(BOOL)projection
{
  v3 = *(self + 28);
  if (((((v3 & 0x20) == 0) ^ projection) & 1) == 0)
  {
    if (projection)
    {
      v4 = 32;
    }

    else
    {
      v4 = 0;
    }

    *(self + 28) = v3 & 0xDF | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D0C24;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    projectionCopy = projection;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)maximumShadowDistance
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_maximumShadowDistance;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v8 = sub_1AF19EAD4(self->_light);
    sub_1AF1CEA9C(v7, v9);
    return v8;
  }

  else
  {
    light = self->_light;

    return sub_1AF19EAD4(light);
  }
}

- (void)setMaximumShadowDistance:(float)distance
{
  LOBYTE(v5) = self->_shadowCascadeCount;
  if (v5 != distance)
  {
    v8 = v3;
    v9 = v4;
    self->_maximumShadowDistance = distance;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2D0D5C;
    v6[3] = &unk_1E7A7E270;
    v6[4] = self;
    *&v7 = distance;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (BOOL)forcesBackFaceCasters
{
  v3 = *(self + 28);
  if (v3)
  {
    v6 = objc_msgSend_worldRef(self, a2, v2);
    if (v6)
    {
      v8 = v6;
      sub_1AF1CEA20(v6, v7);
      v10 = sub_1AF19EDC4(self->_light, v9);
      sub_1AF1CEA9C(v8, v11);
      LOBYTE(v4) = v10;
    }

    else
    {
      light = self->_light;

      LOBYTE(v4) = sub_1AF19EDC4(light, v7);
    }
  }

  else
  {
    return (v3 >> 6) & 1;
  }

  return v4;
}

- (void)setForcesBackFaceCasters:(BOOL)casters
{
  v3 = *(self + 28);
  if (((((v3 & 0x40) == 0) ^ casters) & 1) == 0)
  {
    if (casters)
    {
      v4 = 64;
    }

    else
    {
      v4 = 0;
    }

    *(self + 28) = v3 & 0xBF | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D0E98;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    castersCopy = casters;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)sampleDistributedShadowMaps
{
  v3 = *(self + 28);
  if (v3)
  {
    v6 = objc_msgSend_worldRef(self, a2, v2);
    if (v6)
    {
      v8 = v6;
      sub_1AF1CEA20(v6, v7);
      v9 = sub_1AF19EE7C(self->_light);
      sub_1AF1CEA9C(v8, v10);
      LOBYTE(v4) = v9;
    }

    else
    {
      light = self->_light;

      LOBYTE(v4) = sub_1AF19EE7C(light);
    }
  }

  else
  {
    return v3 >> 7;
  }

  return v4;
}

- (void)setSampleDistributedShadowMaps:(BOOL)maps
{
  v3 = *(self + 28);
  if ((((v3 >= 0) ^ maps) & 1) == 0)
  {
    if (maps)
    {
      v4 = 0x80;
    }

    else
    {
      v4 = 0;
    }

    *(self + 28) = v4 & 0x80 | v3 & 0x7F;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D0FD0;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    mapsCopy = maps;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)shadowCascadeSplittingFactor
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_shadowCascadeSplittingFactor;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF19EB30(self->_light, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    light = self->_light;

    return sub_1AF19EB30(light, v6);
  }
}

- (void)setShadowCascadeSplittingFactor:(float)factor
{
  if (self->_shadowCascadeSplittingFactor != factor)
  {
    v7 = v3;
    v8 = v4;
    self->_shadowCascadeSplittingFactor = factor;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D1104;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = factor;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)_shadowCascadeDebugFactor
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_cascadeDebugFactor;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF19EC18(self->_light, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    light = self->_light;

    return sub_1AF19EC18(light, v6);
  }
}

- (void)set_shadowCascadeDebugFactor:(float)factor
{
  if (self->_cascadeDebugFactor != factor)
  {
    v7 = v3;
    v8 = v4;
    self->_cascadeDebugFactor = factor;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D1240;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = factor;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, a2, self, @"shadowCascadeDebugFactor", v5);
  }
}

- (int64_t)probeType
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_probeType;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (!v5)
  {
    return sub_1AF19D968(self->_light, v6);
  }

  v7 = v5;
  sub_1AF1CEA20(v5, v6);
  v4 = sub_1AF19D968(self->_light, v8);
  sub_1AF1CEA9C(v7, v9);
  return v4;
}

- (void)setProbeType:(int64_t)type
{
  if (self->_probeType != type)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_probeType = type;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D1350;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = type;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)probeUpdateType
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_probeUpdateType;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (!v5)
  {
    return sub_1AF19DAD4(self->_light, v6);
  }

  v7 = v5;
  sub_1AF1CEA20(v5, v6);
  v4 = sub_1AF19DAD4(self->_light, v8);
  sub_1AF1CEA9C(v7, v9);
  return v4;
}

- (void)setProbeUpdateType:(int64_t)type
{
  if (self->_probeUpdateType != type)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_probeUpdateType = type;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D1460;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = type;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)parallaxCorrectionEnabled
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_parallaxCorrectionEnabled;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF19DB90(self->_light, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    light = self->_light;

    return sub_1AF19DB90(light, v6);
  }
}

- (void)setParallaxCorrectionEnabled:(BOOL)enabled
{
  if (self->_parallaxCorrectionEnabled != enabled)
  {
    v7 = v3;
    v8 = v4;
    self->_parallaxCorrectionEnabled = enabled;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D1584;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    enabledCopy = enabled;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (double)parallaxCenterOffset
{
  if (*(self + 28))
  {
    v5 = objc_msgSend_worldRef(self, a2, a3);
    if (v5)
    {
      v7 = v5;
      sub_1AF1CEA20(v5, v6);
      v11 = sub_1AF19DC58(*(self + 8), v8).n128_u64[0];
      sub_1AF1CEA9C(v7, v9);
      *&v4 = v11;
    }

    else
    {
      *&v4 = sub_1AF19DC58(*(self + 8), v6).n128_u64[0];
    }
  }

  else
  {
    v4 = *(self + 256);
  }

  return *&v4;
}

- (void)setParallaxCenterOffset:(VFXLight *)self
{
  v5 = vmvnq_s8(vceqq_f32(*&self->_parallaxCenterOffset[7], v4));
  v5.i32[3] = v5.i32[2];
  if ((vmaxvq_u32(v5) & 0x80000000) != 0)
  {
    v9 = v2;
    v10 = v3;
    *&self->_parallaxCenterOffset[7] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2D16AC;
    v6[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v7 = v4;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (double)parallaxExtentsFactor
{
  if (*(self + 28))
  {
    v5 = objc_msgSend_worldRef(self, a2, a3);
    if (v5)
    {
      v7 = v5;
      sub_1AF1CEA20(v5, v6);
      v11 = sub_1AF19DD18(*(self + 8), v8).n128_u64[0];
      sub_1AF1CEA9C(v7, v9);
      *&v4 = v11;
    }

    else
    {
      *&v4 = sub_1AF19DD18(*(self + 8), v6).n128_u64[0];
    }
  }

  else
  {
    v4 = *(self + 240);
  }

  return *&v4;
}

- (void)setParallaxExtentsFactor:(VFXLight *)self
{
  v5 = vmvnq_s8(vceqq_f32(*&self->_parallaxExtentsFactor[7], v4));
  v5.i32[3] = v5.i32[2];
  if ((vmaxvq_u32(v5) & 0x80000000) != 0)
  {
    v9 = v2;
    v10 = v3;
    *&self->_parallaxExtentsFactor[7] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2D17D4;
    v6[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v7 = v4;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (double)probeExtents
{
  if (*(self + 28))
  {
    v5 = objc_msgSend_worldRef(self, a2, a3);
    if (v5)
    {
      v7 = v5;
      sub_1AF1CEA20(v5, v6);
      v11 = sub_1AF19DDEC(*(self + 8), v8).n128_u64[0];
      sub_1AF1CEA9C(v7, v9);
      *&v4 = v11;
    }

    else
    {
      *&v4 = sub_1AF19DDEC(*(self + 8), v6).n128_u64[0];
    }
  }

  else
  {
    v4 = *(self + 208);
  }

  return *&v4;
}

- (void)setProbeExtents:(VFXLight *)self
{
  v5 = vmvnq_s8(vceqq_f32(*&self->_probeExtents[7], v4));
  v5.i32[3] = v5.i32[2];
  if ((vmaxvq_u32(v5) & 0x80000000) != 0)
  {
    v9 = v2;
    v10 = v3;
    *&self->_probeExtents[7] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2D18FC;
    v6[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v7 = v4;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (double)probeOffset
{
  if (*(self + 28))
  {
    v5 = objc_msgSend_worldRef(self, a2, a3);
    if (v5)
    {
      v7 = v5;
      sub_1AF1CEA20(v5, v6);
      v11 = sub_1AF19DEB0(*(self + 8), v8).n128_u64[0];
      sub_1AF1CEA9C(v7, v9);
      *&v4 = v11;
    }

    else
    {
      *&v4 = sub_1AF19DEB0(*(self + 8), v6).n128_u64[0];
    }
  }

  else
  {
    v4 = *(self + 224);
  }

  return *&v4;
}

- (void)setProbeOffset:(VFXLight *)self
{
  v5 = vmvnq_s8(vceqq_f32(*&self->_probeOffset[7], v4));
  v5.i32[3] = v5.i32[2];
  if ((vmaxvq_u32(v5) & 0x80000000) != 0)
  {
    v9 = v2;
    v10 = v3;
    *&self->_probeOffset[7] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2D1A24;
    v6[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v7 = v4;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (VFXMaterialProperty)probeEnvironment
{
  result = self->_probeEnvironment;
  if (!result)
  {
    v5 = [VFXMaterialProperty alloc];
    result = objc_msgSend_initWithParent_propertyType_(v5, v6, self, 26);
    self->_probeEnvironment = result;
  }

  if (*(self + 28))
  {

    return MEMORY[0x1EEE66B58](result, sel_presentationMaterialProperty, v2);
  }

  return result;
}

- (int64_t)areaType
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_areaType;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    sub_1AF19D5A0(self->_light, v8, v11);
    v4 = v11[0];
    sub_1AF1CEA9C(v7, v9);
  }

  else
  {
    sub_1AF19D5A0(self->_light, v6, v11);
    return v11[0];
  }

  return v4;
}

- (void)setAreaType:(int64_t)type
{
  if (self->_areaType != type)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_areaType = type;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2D1BAC;
    v5[3] = &unk_1E7A7E1D0;
    v5[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (double)areaExtents
{
  if (*(self + 28))
  {
    v5 = objc_msgSend_worldRef(self, a2, a3);
    if (v5)
    {
      v7 = v5;
      sub_1AF1CEA20(v5, v6);
      v12 = sub_1AF19D45C(*(self + 8), v8).n128_u64[0];
      sub_1AF1CEA9C(v7, v9);
      *&v4 = v12;
    }

    else
    {
      v10 = *(self + 8);

      *&v4 = sub_1AF19D45C(v10, v6).n128_u64[0];
    }
  }

  else
  {
    v4 = *(self + 336);
  }

  return *&v4;
}

- (void)setAreaExtents:(VFXLight *)self
{
  v3 = vceqq_f32(*self->_areaExtents, v2);
  v3.i32[3] = v3.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) == 0)
  {
    *self->_areaExtents = v2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF2D1D20;
    v4[3] = &unk_1E7A7E5C8;
    selfCopy = self;
    v5 = v2;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v4);
  }
}

- (BOOL)drawsArea
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_drawsArea;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF19D3B0(self->_light, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    light = self->_light;

    return sub_1AF19D3B0(light, v6);
  }
}

- (void)setDrawsArea:(BOOL)area
{
  if (objc_msgSend_drawsArea(self, a2, area) != area)
  {
    self->_drawsArea = area;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2D1E4C;
    v6[3] = &unk_1E7A7E298;
    v6[4] = self;
    areaCopy = area;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v5, self, v6);
  }
}

- (BOOL)doubleSided
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_doubleSided;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF19D540(self->_light, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    light = self->_light;

    return sub_1AF19D540(light, v6);
  }
}

- (void)setDoubleSided:(BOOL)sided
{
  if (objc_msgSend_doubleSided(self, a2, sided) != sided)
  {
    self->_doubleSided = sided;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2D1F78;
    v6[3] = &unk_1E7A7E298;
    v6[4] = self;
    sidedCopy = sided;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v5, self, v6);
  }
}

- (NSArray)areaPolygonVertices
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_areaPolygonVertices;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  sub_1AF19D5A0(self->_light, v6, &v12);
  v11[0] = v12;
  v11[1] = v13;
  v11[2] = v14;
  v4 = sub_1AF2CC858(v11, v8);
  if (v7)
  {
    sub_1AF1CEA9C(v7, v9);
  }

  return v4;
}

- (void)setAreaPolygonVertices:(id)vertices
{
  areaPolygonVertices = self->_areaPolygonVertices;
  if (areaPolygonVertices != vertices)
  {
    v11[7] = v3;
    v11[8] = v4;

    self->_areaPolygonVertices = objc_msgSend_copy(vertices, v8, v9);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF2D20C8;
    v11[3] = &unk_1E7A7E1D0;
    v11[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
  }
}

- (VFXMaterialProperty)gobo
{
  result = self->_gobo;
  if (!result)
  {
    v5 = [VFXMaterialProperty alloc];
    result = objc_msgSend_initWithParent_propertyType_(v5, v6, self, 23);
    self->_gobo = result;
  }

  if (*(self + 28))
  {

    return MEMORY[0x1EEE66B58](result, sel_presentationMaterialProperty, v2);
  }

  return result;
}

- (void)setIESProfile:(id)profile
{
  IESProfile = self->_IESProfile;
  if (IESProfile != profile)
  {
    v9[8] = v3;
    v9[9] = v4;

    self->_IESProfile = profile;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2D2200;
    v9[3] = &unk_1E7A7E220;
    v9[4] = self;
    v9[5] = profile;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
  }
}

- (void)_customEncodingOfVFXLight:(id)light
{
  objc_msgSend_attenuationDistance(self, a2, light);
  objc_msgSend_encodeFloat_forKey_(light, v5, @"attenuationDistance");
  objc_msgSend_spotInnerAngle(self, v6, v7);
  objc_msgSend_encodeFloat_forKey_(light, v8, @"spotInnerAngle");
  objc_msgSend_spotOuterAngle(self, v9, v10);
  objc_msgSend_encodeFloat_forKey_(light, v11, @"spotOuterAngle");
  objc_msgSend_encodeInteger_forKey_(light, v12, self->_categoryBitMask, @"lightCategoryBitMask");
  LODWORD(v13) = *(&self->_spotFalloffExponent + 1);
  objc_msgSend_encodeFloat_forKey_(light, v14, @"spotFallOffExponent", v13);
  if (self->_type == 4)
  {
    objc_msgSend_encodeInt_forKey_(light, v15, LODWORD(self->_probeType), @"probeType");
    objc_msgSend_encodeInt_forKey_(light, v16, LODWORD(self->_probeUpdateType), @"probeUpdateType");
    objc_msgSend_encodeBool_forKey_(light, v17, self->_parallaxCorrectionEnabled, @"parallaxCorrectionEnabled");
    LODWORD(v18) = *&self->_probeExtents[7];
    objc_msgSend_encodeFloat_forKey_(light, v19, @"probeExtentsX", v18);
    LODWORD(v20) = *&self->_probeExtents[11];
    objc_msgSend_encodeFloat_forKey_(light, v21, @"probeExtentsY", v20);
    LODWORD(v22) = *&self->_probeExtents[15];
    objc_msgSend_encodeFloat_forKey_(light, v23, @"probeExtentsZ", v22);
    if (COERCE_FLOAT(*&self->_probeOffset[7]) == 0.0)
    {
      LODWORD(v24) = HIDWORD(*&self->_probeOffset[7]);
    }

    else
    {
      objc_msgSend_encodeFloat_forKey_(light, v15, @"probeOffsetX");
      v24 = *&self->_probeOffset[11];
    }

    if (v24 != 0.0)
    {
      objc_msgSend_encodeFloat_forKey_(light, v15, @"probeOffsetY");
    }

    if (*&self->_probeOffset[15] != 0.0)
    {
      objc_msgSend_encodeFloat_forKey_(light, v15, @"probeOffsetZ");
    }

    if (COERCE_FLOAT(*&self->_parallaxCenterOffset[7]) == 0.0)
    {
      LODWORD(v25) = HIDWORD(*&self->_parallaxCenterOffset[7]);
    }

    else
    {
      objc_msgSend_encodeFloat_forKey_(light, v15, @"parallaxOffsetX");
      v25 = *&self->_parallaxCenterOffset[11];
    }

    if (v25 != 0.0)
    {
      objc_msgSend_encodeFloat_forKey_(light, v15, @"parallaxOffsetY");
    }

    if (*&self->_parallaxCenterOffset[15] != 0.0)
    {
      objc_msgSend_encodeFloat_forKey_(light, v15, @"parallaxOffsetZ");
    }

    if (COERCE_FLOAT(*&self->_parallaxExtentsFactor[7]) == 1.0)
    {
      LODWORD(v26) = HIDWORD(*&self->_parallaxExtentsFactor[7]);
    }

    else
    {
      objc_msgSend_encodeFloat_forKey_(light, v15, @"parallaxExtentsFactorX");
      v26 = *&self->_parallaxExtentsFactor[11];
    }

    if (v26 != 1.0)
    {
      objc_msgSend_encodeFloat_forKey_(light, v15, @"parallaxExtentsFactorY");
    }

    if (*&self->_parallaxExtentsFactor[15] != 1.0)
    {
      objc_msgSend_encodeFloat_forKey_(light, v15, @"parallaxExtentsFactorZ");
    }
  }

  maximumShadowDistance = self->_maximumShadowDistance;
  *&maximumShadowDistance = maximumShadowDistance;
  objc_msgSend_encodeFloat_forKey_(light, v15, @"maximumShadowDistance", maximumShadowDistance);
  objc_msgSend_encodeBool_forKey_(light, v28, (*(self + 28) >> 5) & 1, @"autoShadowProjection");
  objc_msgSend_encodeInt_forKey_(light, v29, self->_shadowCascadeCount, @"shadowCascadeCount");
  shadowCascadeSplittingFactor = self->_shadowCascadeSplittingFactor;
  *&shadowCascadeSplittingFactor = shadowCascadeSplittingFactor;
  objc_msgSend_encodeFloat_forKey_(light, v31, @"shadowCascadeSplittingFactor", shadowCascadeSplittingFactor);
  objc_msgSend_encodeBool_forKey_(light, v32, (*(self + 28) >> 6) & 1, @"forcesBackFaceCasters");
  objc_msgSend_encodeBool_forKey_(light, v33, *(self + 28) >> 7, @"sampleDistributedShadowMaps");

  objc_msgSend_encodeInt32_forKey_(light, v34, 1, @"version");
}

- (void)_customDecodingOfVFXLight:(id)light
{
  if (objc_msgSend_containsValueForKey_(light, a2, @"attenuationDistance"))
  {
    objc_msgSend_decodeFloatForKey_(light, v5, @"attenuationDistance");
    objc_msgSend_setAttenuationDistance_(self, v6, v7);
  }

  objc_msgSend_decodeFloatForKey_(light, v5, @"spotInnerAngle");
  objc_msgSend_setSpotInnerAngle_(self, v8, v9);
  objc_msgSend_decodeFloatForKey_(light, v10, @"spotOuterAngle");
  objc_msgSend_setSpotOuterAngle_(self, v11, v12);
  if (objc_msgSend_containsValueForKey_(light, v13, @"maximumShadowDistance"))
  {
    objc_msgSend_decodeFloatForKey_(light, v14, @"maximumShadowDistance");
    objc_msgSend_setMaximumShadowDistance_(self, v15, v16);
  }

  if (objc_msgSend_containsValueForKey_(light, v14, @"autoShadowProjection"))
  {
    v18 = objc_msgSend_decodeBoolForKey_(light, v17, @"autoShadowProjection");
    objc_msgSend_setAutomaticallyAdjustsShadowProjection_(self, v19, v18);
  }

  if (objc_msgSend_containsValueForKey_(light, v17, @"forcesBackFaceCasters"))
  {
    v21 = objc_msgSend_decodeBoolForKey_(light, v20, @"forcesBackFaceCasters");
    objc_msgSend_setForcesBackFaceCasters_(self, v22, v21);
  }

  if (objc_msgSend_containsValueForKey_(light, v20, @"sampleDistributedShadowMaps"))
  {
    v24 = objc_msgSend_decodeBoolForKey_(light, v23, @"sampleDistributedShadowMaps");
    objc_msgSend_setSampleDistributedShadowMaps_(self, v25, v24);
  }

  if (objc_msgSend_containsValueForKey_(light, v23, @"shadowCascadeCount"))
  {
    v27 = objc_msgSend_decodeIntForKey_(light, v26, @"shadowCascadeCount");
    objc_msgSend_setShadowCascadeCount_(self, v28, v27);
  }

  if (objc_msgSend_containsValueForKey_(light, v26, @"shadowCascadeSplittingFactor"))
  {
    objc_msgSend_decodeFloatForKey_(light, v29, @"shadowCascadeSplittingFactor");
    objc_msgSend_setShadowCascadeSplittingFactor_(self, v30, v31);
  }

  if (objc_msgSend_containsValueForKey_(light, v29, @"spotFallOffExponent"))
  {
    objc_msgSend_decodeFloatForKey_(light, v32, @"spotFallOffExponent");
    objc_msgSend_setSpotFalloffExponent_(self, v33, v34);
  }

  if (objc_msgSend_containsValueForKey_(light, v32, @"lightCategoryBitMask"))
  {
    v37 = objc_msgSend_decodeIntegerForKey_(light, v35, @"lightCategoryBitMask");

    objc_msgSend_setCategoryBitMask_(self, v36, v37);
  }
}

- (void)encodeWithCoder:(id)coder
{
  if (*(self + 28))
  {
    objc_msgSend__updateModelFromPresentation(self, a2, coder);
  }

  objc_msgSend__customEncodingOfVFXLight_(self, a2, coder);
  objc_msgSend_encodeInt_forKey_(coder, v5, (*(self + 28) >> 1) & 1, @"castsShadow");
  objc_msgSend_encodeInt_forKey_(coder, v6, (*(self + 28) >> 2) & 1, @"baked");
  objc_msgSend_encodeInt_forKey_(coder, v7, (*(self + 28) >> 3) & 1, @"shouldBakeDirectLighting");
  objc_msgSend_encodeInt_forKey_(coder, v8, (*(self + 28) >> 4) & 1, @"shouldBakeIndirectLighting");
  sphericalHarmonics = self->_sphericalHarmonics;
  if (sphericalHarmonics)
  {
    objc_msgSend_encodeObject_forKey_(coder, v9, sphericalHarmonics, @"sphericalHarmonics");
  }

  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(coder, v9, name, @"name");
  }

  type = self->_type;
  if (type)
  {
    objc_msgSend_encodeInt_forKey_(coder, v9, type, @"lightType");
  }

  color = self->_color;
  if (color)
  {
    sub_1AF37266C(coder, color, @"color");
    sub_1AF371924(coder, self->_color, @"vfxcolor");
  }

  *&v10 = self->_shadowIntensity;
  objc_msgSend_encodeFloat_forKey_(coder, color, @"shadowIntensity", v10);
  *&v15 = self->_shadowRadius;
  objc_msgSend_encodeFloat_forKey_(coder, v16, @"shadowRadius", v15);
  objc_msgSend_encodeDouble_forKey_(coder, v17, @"intensity", self->_intensity);
  objc_msgSend_encodeDouble_forKey_(coder, v18, @"temperature", self->_temperature);
  *&v19 = self->_orthographicScale;
  objc_msgSend_encodeFloat_forKey_(coder, v20, @"orthographicScale", v19);
  objc_msgSend_encodeInteger_forKey_(coder, v21, self->_shadowSampleCount, @"shadowSampleCount");
  v24 = objc_msgSend_valueWithCGSize_(MEMORY[0x1E696B098], v22, v23, self->_shadowMapSize.width, self->_shadowMapSize.height);
  objc_msgSend_encodeObject_forKey_(coder, v25, v24, @"shadowMapSize");
  zNear = self->_zNear;
  *&zNear = zNear;
  objc_msgSend_encodeFloat_forKey_(coder, v27, @"zNear", zNear);
  zFar = self->_zFar;
  *&zFar = zFar;
  objc_msgSend_encodeFloat_forKey_(coder, v29, @"zFar", zFar);
  objc_msgSend_encodeDouble_forKey_(coder, v30, @"shadowBias", self->_shadowBias);
  gobo = self->_gobo;
  if (gobo)
  {
    objc_msgSend_encodeObject_forKey_(coder, v31, gobo, @"gobo");
  }

  IESProfile = self->_IESProfile;
  if (IESProfile)
  {
    objc_msgSend_encodeObject_forKey_(coder, v31, IESProfile, @"IESProfile");
  }

  objc_msgSend_encodeInteger_forKey_(coder, v31, self->_areaType, @"areaType");
  LODWORD(v34) = *self->_areaExtents;
  objc_msgSend_encodeFloat_forKey_(coder, v35, @"areaExtentsX", v34);
  LODWORD(v36) = *&self->_areaExtents[4];
  objc_msgSend_encodeFloat_forKey_(coder, v37, @"areaExtentsY", v36);
  LODWORD(v38) = *&self->_areaExtents[8];
  objc_msgSend_encodeFloat_forKey_(coder, v39, @"areaExtentsZ", v38);
  objc_msgSend_encodeObject_forKey_(coder, v40, self->_areaPolygonVertices, @"areaPolygonVertices");
  objc_msgSend_encodeBool_forKey_(coder, v41, self->_drawsArea, @"drawsArea");
  objc_msgSend_encodeBool_forKey_(coder, v42, self->_doubleSided, @"doubleSided");
  probeEnvironment = self->_probeEnvironment;
  if (probeEnvironment)
  {
    objc_msgSend_encodeObject_forKey_(coder, v43, probeEnvironment, @"probeEnvironment");
  }

  sub_1AF372440(coder, self, probeEnvironment);

  sub_1AF3728B4(coder, self, v45);
}

- (VFXLight)initWithCoder:(id)coder
{
  v174.receiver = self;
  v174.super_class = VFXLight;
  v6 = [(VFXLight *)&v174 init];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    v9 = objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    v11 = sub_1AF19B168(v9, v10);
    v6->_light = v11;
    if (v11)
    {
      sub_1AF16CDFC(v11, v6);
    }

    objc_msgSend__updateModelFromPresentation(v6, v12, v13);
    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v15, v14, @"type");
    if (v16)
    {
      v19 = sub_1AF371824(v16, v17);
    }

    else
    {
      v19 = objc_msgSend_decodeIntForKey_(coder, v17, @"lightType");
    }

    objc_msgSend_setType_(v6, v18, v19);
    objc_msgSend__customDecodingOfVFXLight_(v6, v20, coder);
    v22 = objc_msgSend_decodeIntForKey_(coder, v21, @"castsShadow") != 0;
    objc_msgSend_setCastsShadow_(v6, v23, v22);
    v25 = objc_msgSend_decodeIntForKey_(coder, v24, @"baked") != 0;
    objc_msgSend_setBaked_(v6, v26, v25);
    v28 = objc_msgSend_decodeIntForKey_(coder, v27, @"shouldBakeDirectLighting") != 0;
    objc_msgSend_setShouldBakeDirectLighting_(v6, v29, v28);
    v31 = objc_msgSend_decodeIntForKey_(coder, v30, @"shouldBakeIndirectLighting") != 0;
    objc_msgSend_setShouldBakeIndirectLighting_(v6, v32, v31);
    v33 = objc_opt_class();
    v35 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v34, v33, @"sphericalHarmonics");
    objc_msgSend_set_sphericalHarmonics_(v6, v36, v35);
    v37 = objc_opt_class();
    v39 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v38, v37, @"name");
    objc_msgSend_setName_(v6, v40, v39);
    if (v6->_type == 4)
    {
      v42 = objc_msgSend_decodeIntForKey_(coder, v41, @"probeType");
      objc_msgSend_setProbeType_(v6, v43, v42);
      v45 = objc_msgSend_decodeIntForKey_(coder, v44, @"probeUpdateType");
      objc_msgSend_setProbeUpdateType_(v6, v46, v45);
      v48 = objc_msgSend_decodeBoolForKey_(coder, v47, @"parallaxCorrectionEnabled");
      objc_msgSend_setParallaxCorrectionEnabled_(v6, v49, v48);
      objc_msgSend_decodeFloatForKey_(coder, v50, @"probeExtentsX");
      v169 = v51;
      objc_msgSend_decodeFloatForKey_(coder, v52, @"probeExtentsY");
      v165 = v53;
      objc_msgSend_decodeFloatForKey_(coder, v54, @"probeExtentsZ");
      objc_msgSend_setProbeExtents_(v6, v55, v56, COERCE_DOUBLE(__PAIR64__(v165, v169)));
      objc_msgSend_decodeFloatForKey_(coder, v57, @"probeOffsetX");
      v170 = v58;
      objc_msgSend_decodeFloatForKey_(coder, v59, @"probeOffsetX");
      v166 = v60;
      objc_msgSend_decodeFloatForKey_(coder, v61, @"probeOffsetX");
      objc_msgSend_setProbeOffset_(v6, v62, v63, COERCE_DOUBLE(__PAIR64__(v166, v170)));
      objc_msgSend_decodeFloatForKey_(coder, v64, @"parallaxOffsetX");
      v171 = v65;
      objc_msgSend_decodeFloatForKey_(coder, v66, @"parallaxOffsetY");
      v167 = v67;
      objc_msgSend_decodeFloatForKey_(coder, v68, @"parallaxOffsetZ");
      objc_msgSend_setParallaxCenterOffset_(v6, v69, v70, COERCE_DOUBLE(__PAIR64__(v167, v171)));
      if (objc_msgSend_containsValueForKey_(coder, v71, @"parallaxExtentsFactorX"))
      {
        objc_msgSend_decodeFloatForKey_(coder, v72, @"parallaxExtentsFactorX");
        __asm { FMOV            V1.4S, #1.0 }

        LODWORD(_Q1) = v78;
        *&v172 = _Q1;
      }

      else
      {
        __asm { FMOV            V0.4S, #1.0 }

        *&v172 = _Q0;
      }

      if (objc_msgSend_containsValueForKey_(coder, v72, @"parallaxExtentsFactorY"))
      {
        objc_msgSend_decodeFloatForKey_(coder, v80, @"parallaxExtentsFactorY");
        *&v172 = __PAIR64__(v81, LODWORD(v172));
      }

      if (objc_msgSend_containsValueForKey_(coder, v80, @"parallaxExtentsFactorZ"))
      {
        objc_msgSend_decodeFloatForKey_(coder, v82, @"parallaxExtentsFactorZ");
      }

      objc_msgSend_setParallaxExtentsFactor_(v6, v82, v83, v172);
    }

    if (objc_msgSend_containsValueForKey_(coder, v41, @"vfxcolor"))
    {
      v84 = sub_1AF3719B4(coder, @"vfxcolor");
    }

    else
    {
      v86 = MEMORY[0x1E695DFD8];
      v87 = objc_opt_class();
      v89 = objc_msgSend_setWithObject_(v86, v88, v87);
      v84 = sub_1AF3726E8(coder, @"color", v89);
    }

    objc_msgSend_setColor_(v6, v85, v84);
    objc_msgSend_decodeFloatForKey_(coder, v90, @"shadowIntensity");
    objc_msgSend_setShadowIntensity_(v6, v91, v92);
    objc_msgSend_decodeFloatForKey_(coder, v93, @"shadowRadius");
    objc_msgSend_setShadowRadius_(v6, v94, v95);
    if (objc_msgSend_containsValueForKey_(coder, v96, @"intensity"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v97, @"intensity");
      *&v98 = v98;
      objc_msgSend_setIntensity_(v6, v99, v100, v98);
    }

    if (objc_msgSend_containsValueForKey_(coder, v97, @"temperature"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v101, @"temperature");
      *&v102 = v102;
      objc_msgSend_setTemperature_(v6, v103, v104, v102);
    }

    objc_msgSend_decodeFloatForKey_(coder, v101, @"orthographicScale");
    objc_msgSend_setOrthographicScale_(v6, v105, v106);
    v108 = objc_msgSend_decodeIntegerForKey_(coder, v107, @"shadowSampleCount");
    objc_msgSend_setShadowSampleCount_(v6, v109, v108);
    v110 = objc_opt_class();
    v112 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v111, v110, @"shadowMapSize");
    objc_msgSend_CGSizeValue(v112, v113, v114);
    objc_msgSend_setShadowMapSize_(v6, v115, v116);
    objc_msgSend_decodeFloatForKey_(coder, v117, @"zNear");
    objc_msgSend_setZNear_(v6, v118, v119);
    objc_msgSend_decodeFloatForKey_(coder, v120, @"zFar");
    objc_msgSend_setZFar_(v6, v121, v122);
    objc_msgSend_decodeDoubleForKey_(coder, v123, @"shadowBias");
    *&v124 = v124;
    objc_msgSend_setShadowBias_(v6, v125, v126, v124);
    v127 = objc_opt_class();
    v6->_gobo = objc_msgSend_decodeObjectOfClass_forKey_(coder, v128, v127, @"gobo");
    v129 = objc_opt_class();
    v6->_probeEnvironment = objc_msgSend_decodeObjectOfClass_forKey_(coder, v130, v129, @"probeEnvironment");
    if (objc_msgSend_containsValueForKey_(coder, v131, @"IESProfile"))
    {
      v133 = objc_opt_class();
      v135 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v134, v133, @"IESProfile");
      objc_msgSend_setIESProfile_(v6, v136, v135);
    }

    if (objc_msgSend_containsValueForKey_(coder, v132, @"areaType"))
    {
      v138 = objc_msgSend_decodeIntegerForKey_(coder, v137, @"areaType");
      objc_msgSend_setAreaType_(v6, v139, v138);
      objc_msgSend_decodeFloatForKey_(coder, v140, @"areaExtentsX");
      v173 = v141;
      objc_msgSend_decodeFloatForKey_(coder, v142, @"areaExtentsY");
      v168 = v143;
      objc_msgSend_decodeFloatForKey_(coder, v144, @"areaExtentsZ");
      objc_msgSend_setAreaExtents_(v6, v145, v146, COERCE_DOUBLE(__PAIR64__(v168, v173)));
      v147 = objc_opt_class();
      v149 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v148, v147, @"areaPolygonVertices");
      objc_msgSend_setAreaPolygonVertices_(v6, v150, v149);
      v152 = objc_msgSend_decodeBoolForKey_(coder, v151, @"drawsArea");
      objc_msgSend_setDrawsArea_(v6, v153, v152);
      v155 = objc_msgSend_decodeBoolForKey_(coder, v154, @"doubleSided");
      objc_msgSend_setDoubleSided_(v6, v156, v155);
    }

    else
    {
      objc_msgSend_setAreaType_(v6, v137, 4);
      __asm { FMOV            V0.4S, #1.0 }

      objc_msgSend_setAreaExtents_(v6, v158, v159, *&_Q0);
      objc_msgSend_setAreaPolygonVertices_(v6, v160, 0);
      objc_msgSend_setDrawsArea_(v6, v161, 1);
      objc_msgSend_setDoubleSided_(v6, v162, 0);
    }

    v6->_animationsLock._os_unfair_lock_opaque = 0;
    sub_1AF37249C(coder, v6);
    sub_1AF372B94(coder, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v163, v7);
  }

  return v6;
}

+ (id)lightWithMDLLight:(id)light
{
  v4 = objc_msgSend_light(self, a2, light);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = MEMORY[0x1E69DC888];
    v8 = objc_msgSend_color(light, v5, v6);
    v10 = objc_msgSend_colorWithCGColor_(v7, v9, v8);
    objc_msgSend_setColor_(v4, v11, v10);
    objc_msgSend_attenuationEndDistance(light, v12, v13);
    objc_msgSend_setAttenuationDistance_(v4, v14, v15);
    objc_msgSend_innerConeAngle(light, v16, v17);
    objc_msgSend_setSpotInnerAngle_(v4, v18, v19);
    objc_msgSend_outerConeAngle(light, v20, v21);
    objc_msgSend_setSpotOuterAngle_(v4, v22, v23);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x1E69DC888], v24, v25, 0.0, 0.0, 0.0, 1.0);
      objc_msgSend_setColor_(v4, v27, v26);
    }
  }

  v29 = objc_msgSend_lightType(light, v24, v25) - 1;
  if (v29 <= 3)
  {
    objc_msgSend_setType_(v4, v28, qword_1AFE47A68[v29]);
  }

  return v4;
}

+ (id)lightWithMDLLightProbe:(id)probe
{
  v3 = objc_msgSend_light(self, a2, probe);
  objc_msgSend_setType_(v3, v4, 4);
  return v3;
}

@end