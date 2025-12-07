@interface VFXCamera
+ (id)camera;
+ (id)cameraWithCameraRef:(__CFXCamera *)ref;
+ (id)cameraWithMDLCamera:(id)camera;
+ (id)presentationCameraWithCameraRef:(__CFXCamera *)ref;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)automaticallyAdjustsZRange;
- (BOOL)rawFloat2ForKey:(id)key value:;
- (BOOL)usesOrthographicProjection;
- (BOOL)wantsHDR;
- (CGAffineTransform)postProjectionTransform;
- (NSArray)animationKeys;
- (NSString)description;
- (NSString)name;
- (VFXCamera)init;
- (VFXCamera)initWithCameraRef:(__CFXCamera *)ref;
- (VFXCamera)initWithCoder:(id)coder;
- (VFXCameraEffectBloom)bloom;
- (VFXCameraEffectColorFringe)colorFringe;
- (VFXCameraEffectColorGrading)colorGrading;
- (VFXCameraEffectDepthOfField)depthOfField;
- (VFXCameraEffectExposure)exposure;
- (VFXCameraEffectGrain)grain;
- (VFXCameraEffectMotionBlur)motionBlur;
- (VFXCameraEffectToneMapping)toneMapping;
- (VFXCameraEffectVignetting)vignetting;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXWorld)worldRef;
- (__n128)projectionTransformWithViewportSize:(float64_t)size;
- (double)filmOffset;
- (float)fieldOfView;
- (float)focalLength;
- (float)focusDistance;
- (float)orthographicScale;
- (float)sensorHeight;
- (float)zFar;
- (float)zNear;
- (id)_valueForSimdVectorKeyPath:(id)path;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)chromaticTransform;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugQuickLookData;
- (id)debugQuickLookObject;
- (id)doughnutBokeh;
- (id)identifier;
- (id)initPresentationCameraWithCameraRef:(__CFXCamera *)ref;
- (id)lensBlur;
- (id)presentationCamera;
- (id)projectionTransformValue;
- (id)valueForKey:(id)key;
- (id)valueForKeyPath:(id)path;
- (int64_t)fillMode;
- (uint64_t)setProjectionTransform:(__n128)transform;
- (unint64_t)categoryBitMask;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyBindingsFrom:(id)from;
- (void)_customEncodingOfVFXCamera:(id)camera;
- (void)_didDecodeVFXCamera:(id)camera;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_syncObjCAnimations;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
- (void)_updateFieldOfView;
- (void)_updateFocalLength;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
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
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)duration;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration;
- (void)removeWorldReference:(id)reference;
- (void)setAutomaticallyAdjustsZRange:(BOOL)range;
- (void)setBloom:(id)bloom;
- (void)setCategoryBitMask:(unint64_t)mask;
- (void)setChromaticTransform:(id)transform;
- (void)setColorFringe:(id)fringe;
- (void)setColorGrading:(id)grading;
- (void)setDepthOfField:(id)field;
- (void)setDoughnutBokeh:(id)bokeh;
- (void)setExposure:(id)exposure;
- (void)setFieldOfView:(float)view;
- (void)setFillMode:(int64_t)mode;
- (void)setFilmOffset:(VFXCamera *)self;
- (void)setFocalLength:(float)length;
- (void)setFocusDistance:(float)distance;
- (void)setGrain:(id)grain;
- (void)setIdentifier:(id)identifier;
- (void)setLensBlur:(id)blur;
- (void)setMotionBlur:(id)blur;
- (void)setName:(id)name;
- (void)setOrthographicScale:(float)scale;
- (void)setPostProjectionTransform:(CGAffineTransform *)transform;
- (void)setPostProjectionTransformScale:(VFXCamera *)self;
- (void)setPostProjectionTransformTranslation:(VFXCamera *)self;
- (void)setProjectionDirection:(int64_t)direction;
- (void)setProjectionTransformValue:(id)value;
- (void)setSensorHeight:(float)height;
- (void)setToneMapping:(id)mapping;
- (void)setUsesOrthographicProjection:(BOOL)projection;
- (void)setValue:(id)value forKey:(id)key;
- (void)setVignetting:(id)vignetting;
- (void)setWantsHDR:(BOOL)r;
- (void)setWorld:(id)world;
- (void)setZFar:(float)far;
- (void)setZNear:(float)near;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation VFXCamera

- (VFXCamera)init
{
  v10.receiver = self;
  v10.super_class = VFXCamera;
  v2 = [(VFXCamera *)&v10 init];
  v4 = v2;
  if (v2)
  {
    v8 = sub_1AF15C19C(v2, v3);
    v4->_camera = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v4, v6, v7, v8);
  }

  return v4;
}

- (VFXCamera)initWithCameraRef:(__CFXCamera *)ref
{
  v11.receiver = self;
  v11.super_class = VFXCamera;
  v4 = [(VFXCamera *)&v11 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_camera = v5;
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

- (id)initPresentationCameraWithCameraRef:(__CFXCamera *)ref
{
  v7.receiver = self;
  v7.super_class = VFXCamera;
  v4 = [(VFXCamera *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 28) |= 1u;
    v4->_camera = CFRetain(ref);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (id)cameraWithCameraRef:(__CFXCamera *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v8 = objc_msgSend_initWithCameraRef_(v6, v7, ref);

    return v8;
  }

  return result;
}

+ (id)camera
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)dealloc
{
  camera = self->_camera;
  if (camera)
  {
    if ((*(self + 28) & 1) == 0)
    {
      sub_1AF16CDFC(self->_camera, 0);
      camera = self->_camera;
    }

    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, a2, camera);
  }

  v4.receiver = self;
  v4.super_class = VFXCamera;
  [(VFXCamera *)&v4 dealloc];
}

- (NSString)description
{
  v4 = objc_msgSend_name(self, a2, v2);
  v7 = objc_msgSend_length(v4, v5, v6);
  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v13 = v10;
  if (!v7)
  {
    return objc_msgSend_stringWithFormat_(v8, v11, @"<%@: %p>", v10, self);
  }

  v16 = objc_msgSend_name(self, v11, v12);
  return objc_msgSend_stringWithFormat_(v8, v14, @"<%@: %p '%@'>", v13, self, v16);
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
      v9[2] = sub_1AF2A16BC;
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

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, a2, block);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D46C0, v6, &v13, v17, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(&unk_1F25D46C0);
        }

        v12 = objc_msgSend_valueForKey_(self, v8, *(*(&v13 + 1) + 8 * v11));
        if (v12)
        {
          (*(block + 2))(block, v12, 0, 0);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D46C0, v8, &v13, v17, 16);
    }

    while (v9);
  }
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
  p_world = &self->_world;
  if (!reference || self->_world == reference)
  {
    worldReferenceCounter = self->_worldReferenceCounter;
    if (worldReferenceCounter)
    {
      v6 = worldReferenceCounter - 1;
      self->_worldReferenceCounter = v6;
      if (!v6)
      {

        objc_msgSend_setWorld_(self, a2, 0);
      }
    }

    else
    {
      v7 = sub_1AF0D5194(self, a2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF4930(self, p_world, v7);
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
      v9[2] = sub_1AF2A1B90;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2A1BF0;
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
    v16[2] = sub_1AF2A1EF8;
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
      sub_1AFDF4BA4(self, v15);
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
      sub_1AFDF4C1C(self, v15);
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
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v14, self, v20, MEMORY[0x1E69E9820], 3221225472, sub_1AF2A227C, &unk_1E7A7E1D0, self, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6]);
  }

  else
  {
    v17 = v16;
    v18 = objc_msgSend_timingFunction(VFXTransaction, v14, v15);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v19, self, v21, v20[0], v20[1], v20[2], v20[3], v20[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF2A226C, &unk_1E7A7E2E8, self, v18, *&v17);
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
    v17[2] = sub_1AF2A236C;
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
      v17[2] = sub_1AF2A2508;
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
    v21[2] = sub_1AF2A2928;
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
  v8[2] = sub_1AF2A2A6C;
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
  v4[2] = sub_1AF2A2B38;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v4 = objc_msgSend__vfxBindings(from, a2, from);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF2A2BE4;
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
    v9[2] = sub_1AF2A2D1C;
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
  v4[2] = sub_1AF2A2E58;
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

- (void)_updateModelFromPresentation
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  self->_sensorSize = sub_1AF15DCD8(self->_camera, v5);
  *&self->_filmOffset[4] = sub_1AF15DA84(self->_camera, v7);
  *&self->_postProjectionTransformTranslation[4] = sub_1AF15DB20(self->_camera, v8);
  *&self->_postProjectionTransformScale[4] = sub_1AF15DBBC(self->_camera, v9);
  v11 = sub_1AF15E428(self->_camera, v10);
  self->_orthographicScale = sub_1AF15E598(v11, v12);
  v14 = sub_1AF15E428(self->_camera, v13);
  self->_zFar = sub_1AF15E550(v14, v15);
  v17 = sub_1AF15E428(self->_camera, v16);
  self->_zNear = sub_1AF15E508(v17, v18);
  self->_focalLength = sub_1AF15D76C(self->_camera, v19);
  *&self->_categoryBitMask = sub_1AF15D9E8(self->_camera, v20);
  LOBYTE(self[1].super.isa) = sub_1AF15D690(self->_camera, v21);
  *(self + 28) = (16 * (sub_1AF15D938(self->_camera, v22) & 7)) | *(self + 28) & 0x8F;
  self->_fieldOfView = sub_1AF15D850(self->_camera, v23);
  v25 = sub_1AF15E428(self->_camera, v24);
  if (sub_1AF15E5E0(v25, v26))
  {
    v29 = 4;
  }

  else
  {
    v29 = 0;
  }

  *(self + 28) = *(self + 28) & 0xFB | v29;
  objc_msgSend__updateFocalLength(self, v27, v28);
  objc_msgSend__updateEntityModelFromPresentation(self, v30, v31);
  if (v6)
  {

    sub_1AF1CEA9C(v6, v32);
  }
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2A319C;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (id)presentationCamera
{
  if ((*(self + 28) & 1) == 0)
  {
    return MEMORY[0x1EEE66B58](VFXCamera, sel_presentationCameraWithCameraRef_, *(self + 1));
  }

  return self;
}

+ (id)presentationCameraWithCameraRef:(__CFXCamera *)ref
{
  v4 = [VFXCamera alloc];
  inited = objc_msgSend_initPresentationCameraWithCameraRef_(v4, v5, ref);

  return inited;
}

- (BOOL)automaticallyAdjustsZRange
{
  v3 = *(self + 28);
  if (v3)
  {
    v6 = objc_msgSend_worldRef(self, a2, v2);
    if (v6)
    {
      v8 = v6;
      sub_1AF1CEA20(v6, v7);
      v10 = sub_1AF15D454(self->_camera, v9);
      sub_1AF1CEA9C(v8, v11);
      LOBYTE(v4) = v10;
    }

    else
    {
      camera = self->_camera;

      LOBYTE(v4) = sub_1AF15D454(camera, v7);
    }
  }

  else
  {
    return (v3 >> 3) & 1;
  }

  return v4;
}

- (void)setAutomaticallyAdjustsZRange:(BOOL)range
{
  v3 = *(self + 28);
  if ((v3 & 1) != 0 || ((((v3 & 8) == 0) ^ range) & 1) == 0)
  {
    if (range)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    *(self + 28) = v3 & 0xF7 | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2A347C;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    rangeCopy = range;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (unint64_t)categoryBitMask
{
  if ((*(self + 28) & 1) == 0)
  {
    return *self->_anon_90;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF15D50C(self->_camera, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    camera = self->_camera;

    return sub_1AF15D50C(camera, v6);
  }
}

- (void)setCategoryBitMask:(unint64_t)mask
{
  if ((*(self + 28) & 1) != 0 || *self->_anon_90 != mask)
  {
    v5[6] = v3;
    v5[7] = v4;
    *self->_anon_90 = mask;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2A35A4;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mask;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
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
    v9 = sub_1AF15D5A8(self->_camera, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    camera = self->_camera;

    return sub_1AF15D5A8(camera, v6);
  }
}

- (void)setOrthographicScale:(float)scale
{
  v5 = *(self + 28);
  *(self + 28) = v5 & 0xFD;
  if ((v5 & 1) != 0 || self->_orthographicScale != scale)
  {
    v8 = v3;
    v9 = v4;
    self->_orthographicScale = scale;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2A36E0;
    v6[3] = &unk_1E7A7E270;
    v6[4] = self;
    *&v7 = scale;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"orthographicScale", v6);
  }
}

- (BOOL)usesOrthographicProjection
{
  v3 = *(self + 28);
  if (v3)
  {
    v6 = objc_msgSend_worldRef(self, a2, v2);
    if (v6)
    {
      v8 = v6;
      sub_1AF1CEA20(v6, v7);
      v10 = sub_1AF15D5F0(self->_camera, v9);
      sub_1AF1CEA9C(v8, v11);
      LOBYTE(v4) = v10;
    }

    else
    {
      camera = self->_camera;

      LOBYTE(v4) = sub_1AF15D5F0(camera, v7);
    }
  }

  else
  {
    return (v3 >> 2) & 1;
  }

  return v4;
}

- (void)setUsesOrthographicProjection:(BOOL)projection
{
  v3 = *(self + 28);
  *(self + 28) = v3 & 0xFD;
  if ((v3 & 1) != 0 || ((((v3 & 4) == 0) ^ projection) & 1) == 0)
  {
    if (projection)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(self + 28) = v3 & 0xF9 | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2A3828;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    projectionCopy = projection;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (BOOL)wantsHDR
{
  if ((*(self + 28) & 1) == 0)
  {
    return self[1].super.isa;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF15D690(self->_camera, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    camera = self->_camera;

    return sub_1AF15D690(camera, v6);
  }
}

- (void)setWantsHDR:(BOOL)r
{
  if ((*(self + 28) & 1) != 0 || LOBYTE(self[1].super.isa) != r)
  {
    v7 = v3;
    v8 = v4;
    LOBYTE(self[1].super.isa) = r;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2A3954;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    rCopy = r;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
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
    v9 = sub_1AF15D6DC(self->_camera, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    camera = self->_camera;

    return sub_1AF15D6DC(camera, v6);
  }
}

- (void)setZFar:(float)far
{
  v5 = *(self + 28);
  *(self + 28) = v5 & 0xFD;
  farCopy = far;
  if ((v5 & 1) != 0 || self->_zFar != farCopy)
  {
    v9 = v3;
    v10 = v4;
    self->_zFar = farCopy;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF2A3AA0;
    v7[3] = &unk_1E7A7E270;
    v7[4] = self;
    *&v8 = far;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"zFar", v7);
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
    v9 = sub_1AF15D724(self->_camera, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    camera = self->_camera;

    return sub_1AF15D724(camera, v6);
  }
}

- (void)setZNear:(float)near
{
  nearCopy = near;
  v14 = *MEMORY[0x1E69E9840];
  v5 = *(self + 28);
  *(self + 28) = v5 & 0xFD;
  v6 = v5 & 4;
  if (near == 0.0 && v6 == 0)
  {
    v8 = sub_1AF0D5194(self, a2);
    nearCopy = 0.0001;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1AF0CE000, v8, OS_LOG_TYPE_DEFAULT, "Warning: %@: zNear of 0 is not allowed", buf, 0xCu);
    }
  }

  v9 = nearCopy;
  if ((*(self + 28) & 1) != 0 || self->_zNear != v9)
  {
    self->_zNear = v9;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF2A3C90;
    v10[3] = &unk_1E7A7E270;
    v10[4] = self;
    v11 = nearCopy;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"zNear", v10);
  }
}

- (double)filmOffset
{
  if ((*(self + 28) & 1) == 0)
  {
    return *(self + 104);
  }

  v5 = objc_msgSend_worldRef(self, a2, a3);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF15DA84(*(self + 8), v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    v11 = *(self + 8);

    return sub_1AF15DA84(v11, v6);
  }
}

- (void)setFilmOffset:(VFXCamera *)self
{
  if ((*(self + 28) & 1) != 0 || (v5 = vmvn_s8(vceq_f32(*&self->_filmOffset[4], v4)), (vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0))
  {
    v6[6] = v2;
    v6[7] = v3;
    *&self->_filmOffset[4] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2A3DDC;
    v6[3] = &unk_1E7A7E248;
    v6[4] = self;
    v6[5] = v4;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"filmOffset", v6);
  }
}

- (CGAffineTransform)postProjectionTransform
{
  selfCopy = self;
  v6 = MEMORY[0x1E695EFD0];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v7;
  *&retstr->tx = *(v6 + 32);
  if (BYTE4(self->d))
  {
    v10 = objc_msgSend_worldRef(self, a3, v3);
    v12 = v10;
    if (v10)
    {
      sub_1AF1CEA20(v10, v11);
    }

    v16 = sub_1AF15DB20(*&selfCopy->b, v11);
    v15 = sub_1AF15DBBC(*&selfCopy->b, v13);
    retstr->ty = *(&v16 + 1);
    retstr->a = *&v15;
    *&retstr->d = vcvtq_f64_f32(vext_s8(*&v15, *&v16, 4uLL));
    if (v12)
    {

      return sub_1AF1CEA9C(v12, v14);
    }
  }

  else
  {
    c = self[2].c;
    d = self[2].d;
    retstr->ty = *(&c + 1);
    retstr->a = *&d;
    *&retstr->d = vcvtq_f64_f32(vext_s8(*&d, *&c, 4uLL));
  }

  return self;
}

- (void)setPostProjectionTransform:(CGAffineTransform *)transform
{
  v4.f64[0] = transform->a;
  v4.f64[1] = transform->d;
  v5 = vcvt_f32_f64(*&transform->tx);
  v6 = *(self + 28);
  if ((v6 & 1) != 0 || (v7 = vmvn_s8(vceq_f32(*&self->_postProjectionTransformTranslation[4], v5)), (vpmax_u32(v7, v7).u32[0] & 0x80000000) != 0))
  {
    *&self->_postProjectionTransformTranslation[4] = v5;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1AF2A4040;
    v12[3] = &unk_1E7A7E248;
    v12[4] = self;
    v12[5] = v5;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"postProjectionTransformTranslation", v12, *&v4);
    v4 = v10;
    v6 = *(self + 28);
  }

  v8 = vcvt_f32_f64(v4);
  if ((v6 & 1) != 0 || (v9 = vmvn_s8(vceq_f32(*&self->_postProjectionTransformScale[4], v8)), (vpmax_u32(v9, v9).u32[0] & 0x80000000) != 0))
  {
    *&self->_postProjectionTransformScale[4] = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF2A4054;
    v11[3] = &unk_1E7A7E248;
    v11[4] = self;
    v11[5] = v8;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"postProjectionTransformScale", v11);
  }
}

- (void)setPostProjectionTransformTranslation:(VFXCamera *)self
{
  if ((*(self + 28) & 1) != 0 || (v5 = vmvn_s8(vceq_f32(*&self->_postProjectionTransformTranslation[4], v4)), (vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0))
  {
    v6[6] = v2;
    v6[7] = v3;
    *&self->_postProjectionTransformTranslation[4] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2A4118;
    v6[3] = &unk_1E7A7E248;
    v6[4] = self;
    v6[5] = v4;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"postProjectionTransformTranslation", v6);
  }
}

- (void)setPostProjectionTransformScale:(VFXCamera *)self
{
  if ((*(self + 28) & 1) != 0 || (v5 = vmvn_s8(vceq_f32(*&self->_postProjectionTransformScale[4], v4)), (vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0))
  {
    v6[6] = v2;
    v6[7] = v3;
    *&self->_postProjectionTransformScale[4] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2A41DC;
    v6[3] = &unk_1E7A7E248;
    v6[4] = self;
    v6[5] = v4;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"postProjectionTransformScale", v6);
  }
}

- (void)_updateFieldOfView
{
  focalLength = self->_focalLength;
  if (focalLength <= 0.0)
  {
    v5 = 3.14159274;
  }

  else
  {
    v4 = atan(self->_sensorSize * 0.5 / focalLength);
    *&v4 = v4 + v4;
    v5 = *&v4;
  }

  v6 = v5 / 3.14159265 * 180.0;
  self->_fieldOfView = v6;
}

- (void)_updateFocalLength
{
  v3 = self->_fieldOfView / 180.0 * 3.14159265;
  v4 = self->_sensorSize * 0.5;
  v5 = v4 / tanf(v3 * 0.5);
  self->_focalLength = v5;
}

- (float)fieldOfView
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_fieldOfView;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF15D850(self->_camera, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    camera = self->_camera;

    return sub_1AF15D850(camera, v6);
  }
}

- (void)setFieldOfView:(float)view
{
  v6 = *(self + 28);
  *(self + 28) = v6 & 0xFD;
  if ((v6 & 1) != 0 || self->_fieldOfView != view)
  {
    self->_fieldOfView = view;
    objc_msgSend__updateFocalLength(self, a2, v3);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF2A44A8;
    v8[3] = &unk_1E7A7E270;
    v8[4] = self;
    viewCopy = view;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v7, self, @"fieldOfView", v8);
  }
}

- (float)sensorHeight
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_sensorSize;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF15DCD8(self->_camera, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    camera = self->_camera;

    return sub_1AF15DCD8(camera, v6);
  }
}

- (void)setSensorHeight:(float)height
{
  v6 = *(self + 28);
  *(self + 28) = v6 & 0xFD;
  if ((v6 & 1) != 0 || self->_sensorSize != height)
  {
    self->_sensorSize = height;
    objc_msgSend__updateFocalLength(self, a2, v3);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF2A4608;
    v8[3] = &unk_1E7A7E270;
    v8[4] = self;
    heightCopy = height;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v7, self, @"sensorHeight", v8);
  }
}

- (float)focalLength
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_focalLength;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF15D76C(self->_camera, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    camera = self->_camera;

    return sub_1AF15D76C(camera, v6);
  }
}

- (void)setFocalLength:(float)length
{
  v6 = *(self + 28);
  *(self + 28) = v6 & 0xFD;
  if ((v6 & 1) != 0 || self->_focalLength != length)
  {
    self->_focalLength = length;
    objc_msgSend__updateFieldOfView(self, a2, v3);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF2A4768;
    v8[3] = &unk_1E7A7E270;
    v8[4] = self;
    lengthCopy = length;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v7, self, @"focalLength", v8);
  }
}

- (float)focusDistance
{
  if ((*(self + 28) & 1) == 0)
  {
    return *&self->_categoryBitMask;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  if (v5)
  {
    v7 = v5;
    sub_1AF1CEA20(v5, v6);
    v9 = sub_1AF15D9E8(self->_camera, v8);
    sub_1AF1CEA9C(v7, v10);
    return v9;
  }

  else
  {
    camera = self->_camera;

    return sub_1AF15D9E8(camera, v6);
  }
}

- (void)setFocusDistance:(float)distance
{
  if ((*(self + 28) & 1) != 0 || *&self->_categoryBitMask != distance)
  {
    v7 = v3;
    v8 = v4;
    *&self->_categoryBitMask = distance;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2A48A4;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = distance;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"focusDistance", v5);
  }
}

- (int64_t)fillMode
{
  v3 = *(self + 28);
  if ((v3 & 1) == 0)
  {
    return (v3 >> 4) & 7;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2);
  if (!v6)
  {
    return sub_1AF15D938(self->_camera, v7);
  }

  v8 = v6;
  sub_1AF1CEA20(v6, v7);
  v4 = sub_1AF15D938(self->_camera, v9);
  sub_1AF1CEA9C(v8, v10);
  return v4;
}

- (void)setFillMode:(int64_t)mode
{
  v5 = *(self + 28);
  if ((v5 & 1) != 0 || ((v5 >> 4) & 7) != mode)
  {
    v6[6] = v3;
    v6[7] = v4;
    *(self + 28) = v5 & 0x8F | (16 * (mode & 7));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2A49C4;
    v6[3] = &unk_1E7A7E248;
    v6[4] = self;
    v6[5] = mode;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (void)setProjectionDirection:(int64_t)direction
{
  if (direction == 1)
  {
    objc_msgSend_setFillMode_(self, a2, 3);
  }

  else
  {
    objc_msgSend_setFillMode_(self, a2, 2);
  }
}

- (uint64_t)setProjectionTransform:(__n128)transform
{
  v7 = self[1].n128_u8[12];
  self[1].n128_u8[12] = v7 | 2;
  if ((v7 & 2) == 0 || (v10 = transform, v11 = a4, v12 = a5, v9 = a2, result = VFXMatrix4EqualToMatrix4(a2, transform, a4, a5, self[9], self[10], self[11], self[12]), a2 = v9, transform = v10, a4 = v11, a5 = v12, (result & 1) == 0))
  {
    self[9] = a2;
    self[10] = transform;
    self[11] = a4;
    self[12] = a5;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1AF2A4AE8;
    v13[3] = &unk_1E7A7E578;
    selfCopy = self;
    v14 = a2;
    transformCopy = transform;
    v16 = a4;
    v17 = a5;
    return objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v5, self, @"projectionTransform", v13, *&v9, *&v10, *&v11, *&v12);
  }

  return result;
}

- (__n128)projectionTransformWithViewportSize:(float64_t)size
{
  v6 = *(self + 28);
  if (v6)
  {
    v20 = a2.f64[0];
    v10 = objc_msgSend_worldRef(self, v3, v4);
    v12 = v10;
    if (v10)
    {
      sub_1AF1CEA20(v10, v11);
    }

    v13.f64[0] = v20;
    v13.f64[1] = size;
    v22 = vcvt_hight_f32_f64(0, v13);
    v14 = sub_1AF15E428(*(self + 8), v11);
    v15 = sub_1AF15E62C(v14, &v22);
    v17 = &VFXMatrix4Identity;
    if (v15)
    {
      v17 = v15;
    }

    result = *v17;
    if (v12)
    {
      v19 = *v17;
      sub_1AF1CEA9C(v12, v16);
      return v19;
    }
  }

  else if ((v6 & 2) != 0)
  {
    return *(self + 144);
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v22.i8[0] = (v6 >> 1) & 0x38 | ((v6 & 4) != 0);
    *&v22.i32[1] = vcvt_f32_f64(*(self + 72));
    v7 = *(self + 88);
    DWORD2(v24) = *(self + 64);
    HIDWORD(v24) = v7;
    v8 = *(self + 112);
    *&v23 = *(self + 104);
    *(&v23 + 1) = v8;
    *&v24 = *(self + 120);
    a2.f64[1] = size;
    v21 = vcvt_hight_f32_f64(0, a2);
    return *sub_1AF15E62C(&v22, &v21);
  }

  return result;
}

- (VFXCameraEffectMotionBlur)motionBlur
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_grain;
  }

  result = sub_1AF15C3C4(self->_camera, a2);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectMotionBlur, sel_presentationCameraEffectWithCameraEffectRef_, result);
  }

  return result;
}

- (void)setMotionBlur:(id)blur
{
  if (self->_grain != blur)
  {
    v11[10] = v3;
    v11[11] = v4;
    if ((*(self + 28) & 1) == 0)
    {
      v8 = objc_msgSend_world(self, a2, blur);
      if (v8)
      {
        objc_msgSend_removeWorldReference_(self->_grain, v7, v8);
      }

      blurCopy = blur;
      self->_grain = blurCopy;
      if (v8)
      {
        objc_msgSend_addWorldReference_(blurCopy, v10, v8);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2A4D74;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = blur;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (VFXCameraEffectDepthOfField)depthOfField
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_motionBlur;
  }

  result = sub_1AF15C2CC(self->_camera, a2);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectDepthOfField, sel_presentationCameraEffectWithCameraEffectRef_, result);
  }

  return result;
}

- (void)setDepthOfField:(id)field
{
  if (self->_motionBlur != field)
  {
    v11[10] = v3;
    v11[11] = v4;
    if ((*(self + 28) & 1) == 0)
    {
      v8 = objc_msgSend_world(self, a2, field);
      if (v8)
      {
        objc_msgSend_removeWorldReference_(self->_motionBlur, v7, v8);
      }

      fieldCopy = field;
      self->_motionBlur = fieldCopy;
      if (v8)
      {
        objc_msgSend_addWorldReference_(fieldCopy, v10, v8);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2A4EE4;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = field;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (VFXCameraEffectGrain)grain
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_exposure;
  }

  result = sub_1AF15C4BC(self->_camera, a2);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectGrain, sel_presentationCameraEffectWithCameraEffectRef_, result);
  }

  return result;
}

- (void)setGrain:(id)grain
{
  if (self->_exposure != grain)
  {
    v11[10] = v3;
    v11[11] = v4;
    if ((*(self + 28) & 1) == 0)
    {
      v8 = objc_msgSend_world(self, a2, grain);
      if (v8)
      {
        objc_msgSend_removeWorldReference_(self->_exposure, v7, v8);
      }

      grainCopy = grain;
      self->_exposure = grainCopy;
      if (v8)
      {
        objc_msgSend_addWorldReference_(grainCopy, v10, v8);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2A5054;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = grain;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (VFXCameraEffectExposure)exposure
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_toneMapping;
  }

  result = sub_1AF15C5B4(self->_camera, a2);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectExposure, sel_presentationCameraEffectWithCameraEffectRef_, result);
  }

  return result;
}

- (void)setExposure:(id)exposure
{
  if (self->_toneMapping != exposure)
  {
    v11[10] = v3;
    v11[11] = v4;
    if ((*(self + 28) & 1) == 0)
    {
      v8 = objc_msgSend_world(self, a2, exposure);
      if (v8)
      {
        objc_msgSend_removeWorldReference_(self->_toneMapping, v7, v8);
      }

      exposureCopy = exposure;
      self->_toneMapping = exposureCopy;
      if (v8)
      {
        objc_msgSend_addWorldReference_(exposureCopy, v10, v8);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2A51C4;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = exposure;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (VFXCameraEffectToneMapping)toneMapping
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_bloom;
  }

  result = sub_1AF15C6AC(self->_camera, a2);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectToneMapping, sel_presentationCameraEffectWithCameraEffectRef_, result);
  }

  return result;
}

- (void)setToneMapping:(id)mapping
{
  if (self->_bloom != mapping)
  {
    v11[10] = v3;
    v11[11] = v4;
    if ((*(self + 28) & 1) == 0)
    {
      v8 = objc_msgSend_world(self, a2, mapping);
      if (v8)
      {
        objc_msgSend_removeWorldReference_(self->_bloom, v7, v8);
      }

      mappingCopy = mapping;
      self->_bloom = mappingCopy;
      if (v8)
      {
        objc_msgSend_addWorldReference_(mappingCopy, v10, v8);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2A5334;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = mapping;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (VFXCameraEffectBloom)bloom
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_colorGrading;
  }

  result = sub_1AF15C7A4(self->_camera, a2);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectBloom, sel_presentationCameraEffectWithCameraEffectRef_, result);
  }

  return result;
}

- (void)setBloom:(id)bloom
{
  if (self->_colorGrading != bloom)
  {
    v11[10] = v3;
    v11[11] = v4;
    if ((*(self + 28) & 1) == 0)
    {
      v8 = objc_msgSend_world(self, a2, bloom);
      if (v8)
      {
        objc_msgSend_removeWorldReference_(self->_colorGrading, v7, v8);
      }

      bloomCopy = bloom;
      self->_colorGrading = bloomCopy;
      if (v8)
      {
        objc_msgSend_addWorldReference_(bloomCopy, v10, v8);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2A54A4;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = bloom;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (VFXCameraEffectVignetting)vignetting
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_lensBlur;
  }

  result = sub_1AF15C89C(self->_camera, a2);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectVignetting, sel_presentationCameraEffectWithCameraEffectRef_, result);
  }

  return result;
}

- (void)setVignetting:(id)vignetting
{
  if (self->_lensBlur != vignetting)
  {
    v11[10] = v3;
    v11[11] = v4;
    if ((*(self + 28) & 1) == 0)
    {
      v8 = objc_msgSend_world(self, a2, vignetting);
      if (v8)
      {
        objc_msgSend_removeWorldReference_(self->_lensBlur, v7, v8);
      }

      vignettingCopy = vignetting;
      self->_lensBlur = vignettingCopy;
      if (v8)
      {
        objc_msgSend_addWorldReference_(vignettingCopy, v10, v8);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2A5614;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = vignetting;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (id)lensBlur
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_chromaticTransform;
  }

  result = sub_1AF15C994(self->_camera, a2);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectLensBlur, sel_presentationCameraEffectWithCameraEffectRef_, result);
  }

  return result;
}

- (void)setLensBlur:(id)blur
{
  if (self->_chromaticTransform != blur)
  {
    v11[10] = v3;
    v11[11] = v4;
    if ((*(self + 28) & 1) == 0)
    {
      v8 = objc_msgSend_world(self, a2, blur);
      if (v8)
      {
        objc_msgSend_removeWorldReference_(self->_chromaticTransform, v7, v8);
      }

      blurCopy = blur;
      self->_chromaticTransform = blurCopy;
      if (v8)
      {
        objc_msgSend_addWorldReference_(blurCopy, v10, v8);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2A5784;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = blur;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (VFXCameraEffectColorFringe)colorFringe
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_vignetting;
  }

  result = sub_1AF15CB84(self->_camera, a2);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectColorFringe, sel_presentationCameraEffectWithCameraEffectRef_, result);
  }

  return result;
}

- (void)setColorFringe:(id)fringe
{
  if (self->_vignetting != fringe)
  {
    v11[10] = v3;
    v11[11] = v4;
    if ((*(self + 28) & 1) == 0)
    {
      v8 = objc_msgSend_world(self, a2, fringe);
      if (v8)
      {
        objc_msgSend_removeWorldReference_(self->_vignetting, v7, v8);
      }

      fringeCopy = fringe;
      self->_vignetting = fringeCopy;
      if (v8)
      {
        objc_msgSend_addWorldReference_(fringeCopy, v10, v8);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2A58F4;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = fringe;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (VFXCameraEffectColorGrading)colorGrading
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_colorFringe;
  }

  result = sub_1AF15CA8C(self->_camera, a2);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectColorGrading, sel_presentationCameraEffectWithCameraEffectRef_, result);
  }

  return result;
}

- (void)setColorGrading:(id)grading
{
  if (self->_colorFringe != grading)
  {
    v11[10] = v3;
    v11[11] = v4;
    if ((*(self + 28) & 1) == 0)
    {
      v8 = objc_msgSend_world(self, a2, grading);
      if (v8)
      {
        objc_msgSend_removeWorldReference_(self->_colorFringe, v7, v8);
      }

      gradingCopy = grading;
      self->_colorFringe = gradingCopy;
      if (v8)
      {
        objc_msgSend_addWorldReference_(gradingCopy, v10, v8);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2A5A64;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = grading;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (id)chromaticTransform
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_doughnutBokeh;
  }

  result = sub_1AF15CC7C(self->_camera, a2);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectChromaticTransform, sel_presentationCameraEffectWithCameraEffectRef_, result);
  }

  return result;
}

- (void)setChromaticTransform:(id)transform
{
  if (self->_doughnutBokeh != transform)
  {
    v11[10] = v3;
    v11[11] = v4;
    if ((*(self + 28) & 1) == 0)
    {
      v8 = objc_msgSend_world(self, a2, transform);
      if (v8)
      {
        objc_msgSend_removeWorldReference_(self->_doughnutBokeh, v7, v8);
      }

      transformCopy = transform;
      self->_doughnutBokeh = transformCopy;
      if (v8)
      {
        objc_msgSend_addWorldReference_(transformCopy, v10, v8);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2A5BD4;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = transform;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (id)doughnutBokeh
{
  if ((*(self + 28) & 1) == 0)
  {
    return *&self->_wantsHDR;
  }

  result = sub_1AF15CD74(self->_camera, a2);
  if (result)
  {

    return MEMORY[0x1EEE66B58](VFXCameraEffectDoughnutBokeh, sel_presentationCameraEffectWithCameraEffectRef_, result);
  }

  return result;
}

- (void)setDoughnutBokeh:(id)bokeh
{
  if (*&self->_wantsHDR != bokeh)
  {
    v11[10] = v3;
    v11[11] = v4;
    if ((*(self + 28) & 1) == 0)
    {
      v8 = objc_msgSend_world(self, a2, bokeh);
      if (v8)
      {
        objc_msgSend_removeWorldReference_(*&self->_wantsHDR, v7, v8);
      }

      bokehCopy = bokeh;
      *&self->_wantsHDR = bokehCopy;
      if (v8)
      {
        objc_msgSend_addWorldReference_(bokehCopy, v10, v8);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2A5D44;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = bokeh;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (BOOL)rawFloat2ForKey:(id)key value:
{
  v4 = v3;
  isEqualToString = objc_msgSend_isEqualToString_(key, a2, @"filmOffset");
  if (isEqualToString)
  {
    objc_msgSend_filmOffset(self, v6, v7);
    *v4 = v9;
  }

  return isEqualToString;
}

- (id)_valueForSimdVectorKeyPath:(id)path
{
  v14 = 0;
  v15 = 0;
  sub_1AF3716AC(path, &v15, &v14);
  if (qword_1ED73B300 != -1)
  {
    sub_1AFDF4DA0();
  }

  if (!v14)
  {
    return 0;
  }

  if (!objc_msgSend_containsObject_(qword_1ED73B2F8, v4, v14))
  {
    return 0;
  }

  v13 = 0.0;
  if (!objc_msgSend_rawFloat2ForKey_value_(self, v5, v15, &v13))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(v14, v6, @"x"))
  {
    return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v7, v8, v13);
  }

  if (!objc_msgSend_isEqualToString_(v14, v7, @"y"))
  {
    return 0;
  }

  LODWORD(v12) = HIDWORD(v13);
  return objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v10, v11, v12);
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
    v6.super_class = VFXCamera;
    return [(VFXCamera *)&v6 valueForKeyPath:path];
  }

  return result;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"filmOffset"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_filmOffset(self, v5, v6);

    return MEMORY[0x1EEE66B58](v7, sel_valueWithVFXFloat2_, v8);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VFXCamera;
    return [(VFXCamera *)&v10 valueForKey:key];
  }
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"filmOffset"))
  {
    objc_msgSend_VFXFloat2Value(value, v7, v8);

    objc_msgSend_setFilmOffset_(self, v9, v10);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VFXCamera;
    [(VFXCamera *)&v11 setValue:value forKey:key];
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
  v88 = *MEMORY[0x1E69E9840];
  objc_msgSend_begin(VFXTransaction, a2, to);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1);
  v10 = objc_msgSend_name(self, v8, v9);
  objc_msgSend_setName_(to, v11, v10);
  v14 = objc_msgSend_name(self, v12, v13);
  objc_msgSend_setName_(to, v15, v14);
  objc_msgSend_focusDistance(self, v16, v17);
  objc_msgSend_setFocusDistance_(to, v18, v19);
  objc_msgSend_sensorHeight(self, v20, v21);
  objc_msgSend_setSensorHeight_(to, v22, v23);
  objc_msgSend_fieldOfView(self, v24, v25);
  objc_msgSend_setFieldOfView_(to, v26, v27);
  objc_msgSend_filmOffset(self, v28, v29);
  objc_msgSend_setFilmOffset_(to, v30, v31);
  if (self)
  {
    objc_msgSend_postProjectionTransform(self, v32, v33);
  }

  else
  {
    v85 = 0u;
    v86 = 0u;
    v84 = 0u;
  }

  v83[0] = v84;
  v83[1] = v85;
  v83[2] = v86;
  objc_msgSend_setPostProjectionTransform_(to, v32, v83);
  v36 = objc_msgSend_fillMode(self, v34, v35);
  objc_msgSend_setFillMode_(to, v37, v36);
  objc_msgSend_zNear(self, v38, v39);
  objc_msgSend_setZNear_(to, v40, v41);
  objc_msgSend_zFar(self, v42, v43);
  objc_msgSend_setZFar_(to, v44, v45);
  objc_msgSend_orthographicScale(self, v46, v47);
  objc_msgSend_setOrthographicScale_(to, v48, v49);
  v52 = objc_msgSend_automaticallyAdjustsZRange(self, v50, v51);
  objc_msgSend_setAutomaticallyAdjustsZRange_(to, v53, v52);
  v56 = objc_msgSend_usesOrthographicProjection(self, v54, v55);
  objc_msgSend_setUsesOrthographicProjection_(to, v57, v56);
  v60 = objc_msgSend_wantsHDR(self, v58, v59);
  objc_msgSend_setWantsHDR_(to, v61, v60);
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D46C0, v62, &v79, v87, 16);
  if (v63)
  {
    v66 = v63;
    v67 = *v80;
    do
    {
      for (i = 0; i != v66; ++i)
      {
        if (*v80 != v67)
        {
          objc_enumerationMutation(&unk_1F25D46C0);
        }

        v69 = *(*(&v79 + 1) + 8 * i);
        v70 = objc_msgSend_valueForKey_(self, v64, v69);
        if (v70)
        {
          v71 = sub_1AF2BED30(v70, context);
          objc_msgSend_setValue_forKey_(to, v72, v71, v69);
        }
      }

      v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D46C0, v64, &v79, v87, 16);
    }

    while (v66);
  }

  v73 = objc_msgSend_categoryBitMask(self, v64, v65);
  objc_msgSend_setCategoryBitMask_(to, v74, v73);
  objc_msgSend__copyAnimationsFrom_(to, v75, self);
  objc_msgSend__copyBindingsFrom_(to, v76, self);
  objc_msgSend_commitImmediate(VFXTransaction, v77, v78);
}

- (void)_customEncodingOfVFXCamera:(id)camera
{
  if ((*(self + 28) & 2) != 0)
  {
    sub_1AF371B50(camera, @"projectionTransform", *&self->_anon_90[8], *&self->_anon_90[24], *&self->_anon_90[40], *&self->_anon_90[56]);
  }
}

- (void)_didDecodeVFXCamera:(id)camera
{
  if (objc_msgSend_containsValueForKey_(camera, a2, @"projectionTransform"))
  {
    sub_1AF371C4C(camera, @"projectionTransform");

    MEMORY[0x1EEE66B58](self, sel_setProjectionTransform_, v5);
  }
}

- (void)encodeWithCoder:(id)coder
{
  v52 = *MEMORY[0x1E69E9840];
  if (*(self + 28))
  {
    objc_msgSend__updateModelFromPresentation(self, a2, coder);
  }

  objc_msgSend__customEncodingOfVFXCamera_(self, a2, coder);
  objc_msgSend_encodeInt_forKey_(coder, v5, (*(self + 28) >> 2) & 1, @"usesOrthographicProjection");
  objc_msgSend_encodeInt_forKey_(coder, v6, (*(self + 28) >> 3) & 1, @"automaticallyAdjustsZRange");
  objc_msgSend_encodeInt_forKey_(coder, v7, (*(self + 28) >> 4) & 7, @"fill");
  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(coder, v8, name, @"name");
  }

  *&v9 = self->_fieldOfView;
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"fov", v9);
  *&v11 = self->_sensorSize;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"sensorSize", v11);
  v14 = vmvn_s8(vceqz_f32(*&self->_filmOffset[4]));
  if ((vpmax_u32(v14, v14).u32[0] & 0x80000000) != 0)
  {
    objc_msgSend_encodeFloat_forKey_(coder, v13, @"filmOffsetX");
    LODWORD(v15) = *self->_postProjectionTransformTranslation;
    objc_msgSend_encodeFloat_forKey_(coder, v16, @"filmOffsetY", v15);
  }

  v17 = vmvn_s8(vceqz_f32(*&self->_postProjectionTransformTranslation[4]));
  if ((vpmax_u32(v17, v17).u32[0] & 0x80000000) != 0)
  {
    objc_msgSend_encodeFloat_forKey_(coder, v13, @"postProjectionTransformTranslationX");
    LODWORD(v18) = *self->_postProjectionTransformScale;
    objc_msgSend_encodeFloat_forKey_(coder, v19, @"postProjectionTransformTranslationY", v18);
  }

  v20 = *&self->_postProjectionTransformScale[4];
  __asm { FMOV            V1.2S, #1.0 }

  v26 = vmvn_s8(vceq_f32(*&v20, _D1));
  if ((vpmax_u32(v26, v26).u32[0] & 0x80000000) != 0)
  {
    objc_msgSend_encodeFloat_forKey_(coder, v13, @"postProjectionTransformScaleX");
    *&v27 = self->_focusDistance;
    objc_msgSend_encodeFloat_forKey_(coder, v28, @"postProjectionTransformScaleY", v27);
  }

  *&v20 = self->_orthographicScale;
  objc_msgSend_encodeFloat_forKey_(coder, v13, @"orthographicScale", v20);
  zNear = self->_zNear;
  *&zNear = zNear;
  objc_msgSend_encodeFloat_forKey_(coder, v30, @"zNear", zNear);
  zFar = self->_zFar;
  *&zFar = zFar;
  objc_msgSend_encodeFloat_forKey_(coder, v32, @"zFar", zFar);
  LODWORD(v33) = self->_categoryBitMask;
  objc_msgSend_encodeFloat_forKey_(coder, v34, @"focusDistance", v33);
  objc_msgSend_encodeBool_forKey_(coder, v35, LOBYTE(self[1].super.isa), @"HDR");
  objc_msgSend_encodeInteger_forKey_(coder, v36, *self->_anon_90, @"categoryBitMask");
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D46C0, v37, &v47, v51, 16);
  if (v38)
  {
    v41 = v38;
    v42 = *v48;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v48 != v42)
        {
          objc_enumerationMutation(&unk_1F25D46C0);
        }

        v44 = *(*(&v47 + 1) + 8 * i);
        v45 = objc_msgSend_valueForKey_(self, v39, v44);
        if (v45)
        {
          objc_msgSend_encodeObject_forKey_(coder, v39, v45, v44);
        }
      }

      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D46C0, v39, &v47, v51, 16);
    }

    while (v41);
  }

  sub_1AF372440(coder, self, v40);
  sub_1AF3728B4(coder, self, v46);
}

- (VFXCamera)initWithCoder:(id)coder
{
  v318 = *MEMORY[0x1E69E9840];
  v316.receiver = self;
  v316.super_class = VFXCamera;
  v6 = [(VFXCamera *)&v316 init];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    v9 = objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    v14 = sub_1AF15C19C(v9, v10);
    v6->_camera = v11;
    if (v11)
    {
      sub_1AF16CDFC(v11, v6);
    }

    objc_msgSend__updateModelFromPresentation(v6, v12, v13, v14);
    v16 = objc_msgSend_decodeIntForKey_(coder, v15, @"usesOrthographicProjection") != 0;
    objc_msgSend_setUsesOrthographicProjection_(v6, v17, v16);
    v19 = objc_msgSend_decodeIntForKey_(coder, v18, @"automaticallyAdjustsZRange") != 0;
    objc_msgSend_setAutomaticallyAdjustsZRange_(v6, v20, v19);
    if (objc_msgSend_containsValueForKey_(coder, v21, @"projectionDirection"))
    {
      v23 = objc_msgSend_decodeIntForKey_(coder, v22, @"projectionDirection");
      objc_msgSend_setProjectionDirection_(v6, v24, v23);
    }

    else
    {
      v25 = objc_msgSend_decodeIntForKey_(coder, v22, @"fill");
      objc_msgSend_setFillMode_(v6, v26, v25);
    }

    v27 = objc_opt_class();
    v29 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v28, v27, @"name");
    objc_msgSend_setName_(v6, v30, v29);
    objc_msgSend_decodeFloatForKey_(coder, v31, @"sensorSize");
    objc_msgSend_setSensorHeight_(v6, v32, v33);
    objc_msgSend_decodeFloatForKey_(coder, v34, @"fov");
    objc_msgSend_setFieldOfView_(v6, v35, v36);
    if (objc_msgSend_containsValueForKey_(coder, v37, @"filmOffsetX"))
    {
      objc_msgSend_decodeFloatForKey_(coder, v38, @"filmOffsetX");
      v308 = v39;
      objc_msgSend_decodeFloatForKey_(coder, v40, @"filmOffsetY");
      objc_msgSend_setFilmOffset_(v6, v41, v42, COERCE_DOUBLE(__PAIR64__(v43, v308)));
    }

    else
    {
      *&v6->_filmOffset[4] = 0;
    }

    if (objc_msgSend_containsValueForKey_(coder, v38, @"postProjectionTransformTranslationX"))
    {
      objc_msgSend_decodeFloatForKey_(coder, v44, @"postProjectionTransformTranslationX");
      v309 = v45;
      objc_msgSend_decodeFloatForKey_(coder, v46, @"postProjectionTransformTranslationY");
      objc_msgSend_setPostProjectionTransformTranslation_(v6, v47, v48, COERCE_DOUBLE(__PAIR64__(v49, v309)));
    }

    else
    {
      *&v6->_postProjectionTransformTranslation[4] = 0;
    }

    if (objc_msgSend_containsValueForKey_(coder, v44, @"postProjectionTransformScaleX"))
    {
      objc_msgSend_decodeFloatForKey_(coder, v50, @"postProjectionTransformScaleX");
      v310 = v51;
      objc_msgSend_decodeFloatForKey_(coder, v52, @"postProjectionTransformScaleY");
      objc_msgSend_setPostProjectionTransformScale_(v6, v53, v54, COERCE_DOUBLE(__PAIR64__(v55, v310)));
    }

    else
    {
      __asm { FMOV            V0.2S, #1.0 }

      *&v6->_postProjectionTransformScale[4] = _D0;
    }

    objc_msgSend_decodeFloatForKey_(coder, v50, @"orthographicScale");
    objc_msgSend_setOrthographicScale_(v6, v61, v62);
    objc_msgSend_decodeFloatForKey_(coder, v63, @"zNear");
    objc_msgSend_setZNear_(v6, v64, v65);
    objc_msgSend_decodeFloatForKey_(coder, v66, @"zFar");
    objc_msgSend_setZFar_(v6, v67, v68);
    objc_msgSend_decodeFloatForKey_(coder, v69, @"focusDistance");
    objc_msgSend_setFocusDistance_(v6, v70, v71);
    v73 = objc_msgSend_decodeIntegerForKey_(coder, v72, @"categoryBitMask");
    objc_msgSend_setCategoryBitMask_(v6, v74, v73);
    v76 = objc_msgSend_containsValueForKey_(coder, v75, @"HDR");
    v78 = objc_msgSend_decodeBoolForKey_(coder, v77, @"HDR");
    objc_msgSend_setWantsHDR_(v6, v79, v78);
    if (v76)
    {
      v314 = 0u;
      v315 = 0u;
      v312 = 0u;
      v313 = 0u;
      v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D46C0, v80, &v312, v317, 16);
      if (v81)
      {
        v82 = v81;
        v83 = *v313;
        do
        {
          for (i = 0; i != v82; ++i)
          {
            if (*v313 != v83)
            {
              objc_enumerationMutation(&unk_1F25D46C0);
            }

            v85 = *(*(&v312 + 1) + 8 * i);
            if (objc_msgSend_containsValueForKey_(coder, v80, v85))
            {
              v86 = objc_opt_class();
              v88 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v87, v86, v85);
              objc_msgSend_setValue_forKey_(v6, v89, v88, v85);
            }
          }

          v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F25D46C0, v80, &v312, v317, 16);
        }

        while (v82);
      }
    }

    if (objc_msgSend_containsValueForKey_(coder, v80, @"wantsHDR"))
    {
      v91 = objc_msgSend_decodeBoolForKey_(coder, v90, @"wantsHDR");
      objc_msgSend_setWantsHDR_(v6, v92, v91);
      objc_msgSend_decodeFloatForKey_(coder, v93, @"dofIntensity");
      if (v96 > 0.0)
      {
        v97 = objc_msgSend_depthOfField(VFXCameraEffectDepthOfField, v94, v95);
        objc_msgSend_setDepthOfField_(v6, v98, v97);
        objc_msgSend_decodeFloatForKey_(coder, v99, @"fStop");
        v101 = v100;
        v104 = objc_msgSend_depthOfField(v6, v102, v103);
        LODWORD(v105) = v101;
        objc_msgSend_setFStop_(v104, v106, v107, v105);
      }

      objc_msgSend_decodeFloatForKey_(coder, v94, @"exposureOffset");
      if (v110 != 0.0)
      {
        v111 = v110;
        v112 = objc_msgSend_exposure(VFXCameraEffectExposure, v108, v109);
        objc_msgSend_setExposure_(v6, v113, v112);
        v116 = objc_msgSend_exposure(v6, v114, v115);
        *&v117 = v111;
        objc_msgSend_setOffset_(v116, v118, v119, v117);
      }

      if (objc_msgSend_containsValueForKey_(coder, v108, @"toneMappingMode"))
      {
        v122 = objc_msgSend_decodeIntegerForKey_(coder, v120, @"toneMappingMode");
        if (v122)
        {
          v123 = objc_msgSend_toneMapping(VFXCameraEffectToneMapping, v120, v121);
          objc_msgSend_setToneMapping_(v6, v124, v123);
          v127 = objc_msgSend_toneMapping(v6, v125, v126);
          objc_msgSend_setMode_(v127, v128, v122 - 1);
          objc_msgSend_decodeFloatForKey_(coder, v129, @"toneMappingToeStrength");
          v131 = v130;
          v134 = objc_msgSend_toneMapping(v6, v132, v133);
          LODWORD(v135) = v131;
          objc_msgSend_setToeStrength_(v134, v136, v137, v135);
          objc_msgSend_decodeFloatForKey_(coder, v138, @"toneMappingToeLength");
          v140 = v139;
          v143 = objc_msgSend_toneMapping(v6, v141, v142);
          LODWORD(v144) = v140;
          objc_msgSend_setToeLength_(v143, v145, v146, v144);
          objc_msgSend_decodeFloatForKey_(coder, v147, @"toneMappingShoulderStrength");
          v149 = v148;
          v152 = objc_msgSend_toneMapping(v6, v150, v151);
          LODWORD(v153) = v149;
          objc_msgSend_setShoulderStrength_(v152, v154, v155, v153);
          objc_msgSend_decodeFloatForKey_(coder, v156, @"toneMappingShoulderLength");
          v158 = v157;
          v161 = objc_msgSend_toneMapping(v6, v159, v160);
          LODWORD(v162) = v158;
          objc_msgSend_setShoulderLength_(v161, v163, v164, v162);
          objc_msgSend_decodeFloatForKey_(coder, v165, @"toneMappingShoulderAngle");
          v167 = v166;
          v170 = objc_msgSend_toneMapping(v6, v168, v169);
          LODWORD(v171) = v167;
          objc_msgSend_setShoulderAngle_(v170, v172, v173, v171);
          objc_msgSend_decodeFloatForKey_(coder, v174, @"toneMappingGamma");
          v176 = v175;
          v179 = objc_msgSend_toneMapping(v6, v177, v178);
          LODWORD(v180) = v176;
          objc_msgSend_setGamma_(v179, v181, v182, v180);
        }
      }

      objc_msgSend_decodeFloatForKey_(coder, v120, @"bloomIntensity");
      if (v184 > 0.0)
      {
        v185 = v184;
        v186 = objc_msgSend_bloom(VFXCameraEffectBloom, v90, v183);
        objc_msgSend_setBloom_(v6, v187, v186);
        v190 = objc_msgSend_bloom(v6, v188, v189);
        *&v191 = v185;
        objc_msgSend_setIntensity_(v190, v192, v193, v191);
        objc_msgSend_decodeFloatForKey_(coder, v194, @"bloomThreshold");
        v196 = v195;
        v199 = objc_msgSend_bloom(v6, v197, v198);
        LODWORD(v200) = v196;
        objc_msgSend_setThreshold_(v199, v201, v202, v200);
        if (objc_msgSend_containsValueForKey_(coder, v203, @"bloomThresholdSmoothness"))
        {
          objc_msgSend_decodeFloatForKey_(coder, v204, @"bloomThresholdSmoothness");
          v206 = v205;
          v209 = objc_msgSend_bloom(v6, v207, v208);
          LODWORD(v210) = v206;
          objc_msgSend_setThresholdSmoothness_(v209, v211, v212, v210);
        }

        if (objc_msgSend_containsValueForKey_(coder, v204, @"bloomUseHighQuality"))
        {
          v214 = objc_msgSend_decodeBoolForKey_(coder, v213, @"bloomUseHighQuality");
          v217 = objc_msgSend_bloom(v6, v215, v216);
          objc_msgSend_setUseHighQuality_(v217, v218, v214);
          v311 = sub_1AF371BC4(coder, @"bloomColorFilter");
          v221 = objc_msgSend_bloom(v6, v219, v220);
          objc_msgSend_setColorFilter_(v221, v222, v223, v311);
          objc_msgSend_decodeFloatForKey_(coder, v224, @"bloomContrast");
          v226 = v225;
          v229 = objc_msgSend_bloom(v6, v227, v228);
          LODWORD(v230) = v226;
          objc_msgSend_setContrast_(v229, v231, v232, v230);
          objc_msgSend_decodeFloatForKey_(coder, v233, @"bloomSaturation");
          v235 = v234;
          v238 = objc_msgSend_bloom(v6, v236, v237);
          LODWORD(v239) = v235;
          objc_msgSend_setSaturation_(v238, v240, v241, v239);
        }

        v242 = objc_msgSend_decodeIntegerForKey_(coder, v213, @"bloomIteration");
        v245 = objc_msgSend_bloom(v6, v243, v244);
        objc_msgSend_setIterationCount_(v245, v246, v242);
      }
    }

    if (objc_msgSend_containsValueForKey_(coder, v90, @"vignettingIntensity"))
    {
      objc_msgSend_decodeFloatForKey_(coder, v247, @"vignettingIntensity");
      if (v249 > 0.0)
      {
        v250 = v249;
        v251 = objc_msgSend_vignetting(VFXCameraEffectVignetting, v247, v248);
        objc_msgSend_setVignetting_(v6, v252, v251);
        v255 = objc_msgSend_vignetting(v6, v253, v254);
        *&v256 = v250;
        objc_msgSend_setIntensity_(v255, v257, v258, v256);
        if (objc_msgSend_containsValueForKey_(coder, v259, @"vignettingAnamorphic"))
        {
          objc_msgSend_decodeFloatForKey_(coder, v247, @"vignettingAnamorphic");
          v261 = v260;
          v264 = objc_msgSend_vignetting(v6, v262, v263);
          LODWORD(v265) = v261;
          objc_msgSend_setAnamorphic_(v264, v266, v267, v265);
          objc_msgSend_decodeFloatForKey_(coder, v268, @"vignettingSoftness");
          v270 = v269;
          v273 = objc_msgSend_vignetting(v6, v271, v272);
          LODWORD(v274) = v270;
          objc_msgSend_setSoftness_(v273, v275, v276, v274);
          objc_msgSend_decodeFloatForKey_(coder, v277, @"vignettingRadius");
          v279 = v278;
          v282 = objc_msgSend_vignetting(v6, v280, v281);
          LODWORD(v283) = v279;
          objc_msgSend_setRadius_(v282, v284, v285, v283);
        }
      }
    }

    if (objc_msgSend_containsValueForKey_(coder, v247, @"lensBlurRadius"))
    {
      objc_msgSend_decodeFloatForKey_(coder, v286, @"lensBlurRadius");
      if (v289 > 0.0)
      {
        v290 = v289;
        v291 = objc_msgSend_lensBlur(VFXCameraEffectLensBlur, v287, v288);
        objc_msgSend_setLensBlur_(v6, v292, v291);
        v295 = objc_msgSend_lensBlur(v6, v293, v294);
        *&v296 = v290;
        objc_msgSend_setRadius_(v295, v297, v298, v296);
        v300 = objc_msgSend_decodeIntegerForKey_(coder, v299, @"lensBlurFilterQuality");
        v303 = objc_msgSend_lensBlur(v6, v301, v302);
        objc_msgSend_setFilterQuality_(v303, v304, v300);
      }
    }

    v6->_animationsLock._os_unfair_lock_opaque = 0;
    sub_1AF37249C(coder, v6);
    sub_1AF372B94(coder, v6);
    objc_msgSend__didDecodeVFXCamera_(v6, v305, coder);
    objc_msgSend_setImmediateMode_(VFXTransaction, v306, v7);
  }

  return v6;
}

- (id)projectionTransformValue
{
  v110[16] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, a2, v2);
  v110[0] = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v7 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v8, v9);
  LODWORD(v10) = HIDWORD(v10);
  v110[1] = objc_msgSend_numberWithFloat_(v7, v11, v12, v10);
  v13 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v14, v15);
  LODWORD(v17) = v16;
  v110[2] = objc_msgSend_numberWithFloat_(v13, v18, v19, v17);
  v20 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v21, v22);
  LODWORD(v24) = v23;
  v110[3] = objc_msgSend_numberWithFloat_(v20, v25, v26, v24);
  v27 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v28, v29);
  v110[4] = objc_msgSend_numberWithFloat_(v27, v30, v31, v32);
  v33 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v34, v35);
  LODWORD(v37) = v36;
  v110[5] = objc_msgSend_numberWithFloat_(v33, v38, v39, v37);
  v40 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v41, v42);
  LODWORD(v44) = v43;
  v110[6] = objc_msgSend_numberWithFloat_(v40, v45, v46, v44);
  v47 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v48, v49);
  LODWORD(v51) = v50;
  v110[7] = objc_msgSend_numberWithFloat_(v47, v52, v53, v51);
  v54 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v55, v56);
  v110[8] = objc_msgSend_numberWithFloat_(v54, v57, v58, v59);
  v60 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v61, v62);
  LODWORD(v64) = v63;
  v110[9] = objc_msgSend_numberWithFloat_(v60, v65, v66, v64);
  v67 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v68, v69);
  LODWORD(v71) = v70;
  v110[10] = objc_msgSend_numberWithFloat_(v67, v72, v73, v71);
  v74 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v75, v76);
  LODWORD(v78) = v77;
  v110[11] = objc_msgSend_numberWithFloat_(v74, v79, v80, v78);
  v81 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v82, v83);
  v110[12] = objc_msgSend_numberWithFloat_(v81, v84, v85, v86);
  v87 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v88, v89);
  LODWORD(v91) = v90;
  v110[13] = objc_msgSend_numberWithFloat_(v87, v92, v93, v91);
  v94 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v95, v96);
  LODWORD(v98) = v97;
  v110[14] = objc_msgSend_numberWithFloat_(v94, v99, v100, v98);
  v101 = MEMORY[0x1E696AD98];
  objc_msgSend_projectionTransform(self, v102, v103);
  LODWORD(v105) = v104;
  v110[15] = objc_msgSend_numberWithFloat_(v101, v106, v107, v105);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v108, v110, 16);
}

- (void)setProjectionTransformValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v9 = objc_msgSend_objectAtIndexedSubscript_(value, v8, 1);
  objc_msgSend_floatValue(v9, v10, v11);
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v12, 2);
  objc_msgSend_floatValue(v13, v14, v15);
  v17 = objc_msgSend_objectAtIndexedSubscript_(value, v16, 3);
  objc_msgSend_floatValue(v17, v18, v19);
  v21 = objc_msgSend_objectAtIndexedSubscript_(value, v20, 4);
  objc_msgSend_floatValue(v21, v22, v23);
  v25 = objc_msgSend_objectAtIndexedSubscript_(value, v24, 5);
  objc_msgSend_floatValue(v25, v26, v27);
  v29 = objc_msgSend_objectAtIndexedSubscript_(value, v28, 6);
  objc_msgSend_floatValue(v29, v30, v31);
  v33 = objc_msgSend_objectAtIndexedSubscript_(value, v32, 7);
  objc_msgSend_floatValue(v33, v34, v35);
  v37 = objc_msgSend_objectAtIndexedSubscript_(value, v36, 8);
  objc_msgSend_floatValue(v37, v38, v39);
  v41 = objc_msgSend_objectAtIndexedSubscript_(value, v40, 9);
  objc_msgSend_floatValue(v41, v42, v43);
  v45 = objc_msgSend_objectAtIndexedSubscript_(value, v44, 10);
  objc_msgSend_floatValue(v45, v46, v47);
  v49 = objc_msgSend_objectAtIndexedSubscript_(value, v48, 11);
  objc_msgSend_floatValue(v49, v50, v51);
  v53 = objc_msgSend_objectAtIndexedSubscript_(value, v52, 12);
  objc_msgSend_floatValue(v53, v54, v55);
  v57 = objc_msgSend_objectAtIndexedSubscript_(value, v56, 13);
  objc_msgSend_floatValue(v57, v58, v59);
  v61 = objc_msgSend_objectAtIndexedSubscript_(value, v60, 14);
  objc_msgSend_floatValue(v61, v62, v63);
  v65 = objc_msgSend_objectAtIndexedSubscript_(value, v64, 15);
  objc_msgSend_floatValue(v65, v66, v67);

  MEMORY[0x1EEE66B58](self, sel_setProjectionTransform_, v68);
}

+ (id)cameraWithMDLCamera:(id)camera
{
  v4 = objc_msgSend_camera(self, a2, camera);
  objc_msgSend_focalLength(camera, v5, v6);
  objc_msgSend_setFocalLength_(v4, v7, v8);
  objc_msgSend_sensorVerticalAperture(camera, v9, v10);
  objc_msgSend_setSensorHeight_(v4, v11, v12);
  objc_msgSend_focusDistance(camera, v13, v14);
  objc_msgSend_setFocusDistance_(v4, v15, v16);
  v19 = objc_msgSend_depthOfField(VFXCameraEffectDepthOfField, v17, v18);
  objc_msgSend_setDepthOfField_(v4, v20, v19);
  v23 = objc_msgSend_depthOfField(v4, v21, v22);
  objc_msgSend_setEnabled_(v23, v24, 0);
  objc_msgSend_fStop(camera, v25, v26);
  v28 = v27;
  v31 = objc_msgSend_depthOfField(v4, v29, v30);
  LODWORD(v32) = v28;
  objc_msgSend_setFStop_(v31, v33, v34, v32);
  objc_msgSend_nearVisibilityDistance(camera, v35, v36);
  objc_msgSend_setZNear_(v4, v37, v38);
  objc_msgSend_farVisibilityDistance(camera, v39, v40);
  objc_msgSend_setZFar_(v4, v41, v42);
  v45 = objc_msgSend_projection(camera, v43, v44) == 1;
  objc_msgSend_setUsesOrthographicProjection_(v4, v46, v45);
  if (objc_msgSend_focalLengthAnimation(camera, v47, v48))
  {
    objc_msgSend_focalLengthAnimation(camera, v49, v50);
    v51 = objc_opt_class();
    v52 = objc_opt_class();
    if (objc_msgSend_isSubclassOfClass_(v51, v53, v52))
    {
      v54 = objc_msgSend_focalLengthAnimation(camera, v49, v50);
      v57 = objc_msgSend_values(v54, v55, v56);
      v60 = objc_msgSend_count(v57, v58, v59);
      v62 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v61, v60);
      objc_msgSend_sensorVerticalAperture(camera, v63, v64);
      if (v60)
      {
        v68 = v67;
        for (i = 0; i != v60; ++i)
        {
          v70 = objc_msgSend_objectAtIndex_(v57, v65, i);
          objc_msgSend_floatValue(v70, v71, v72);
          *&v74 = (atanf(v68 / (v73 + v73)) * 360.0) / 3.1416;
          v77 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v75, v76, v74);
          objc_msgSend_addObject_(v62, v78, v77);
        }
      }

      v79 = objc_msgSend_animation(MEMORY[0x1E6979390], v65, v66);
      objc_msgSend_setKeyPath_(v79, v80, @"fieldOfView");
      objc_msgSend_setValues_(v79, v81, v62);
      v84 = objc_msgSend_keyTimes(v54, v82, v83);
      objc_msgSend_setKeyTimes_(v79, v85, v84);
      objc_msgSend_duration(v54, v86, v87);
      objc_msgSend_setDuration_(v79, v88, v89);
      objc_msgSend_setRemovedOnCompletion_(v79, v90, 0);
      objc_msgSend_addAnimation_forKey_(v4, v91, v79, 0);
    }
  }

  if (objc_msgSend_focalDistanceAnimation(camera, v49, v50))
  {
    v94 = objc_msgSend_focalDistanceAnimation(camera, v92, v93);
    objc_msgSend_addAnimation_forKey_(v4, v95, v94, @"focalDistance");
  }

  if (objc_msgSend_fStopAnimation(camera, v92, v93))
  {
    v98 = objc_msgSend_fStopAnimation(camera, v96, v97);
    objc_msgSend_addAnimation_forKey_(v4, v99, v98, @"fstop");
  }

  return v4;
}

- (id)debugQuickLookObject
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  if (!v4)
  {
    return 0;
  }

  v6 = objc_msgSend_worldWithWorldRef_(VFXWorld, v5, v4);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = sub_1AF3B4C3C;
  v20 = sub_1AF3B4C4C;
  v21 = 0;
  v9 = objc_msgSend_rootNode(v6, v7, v8);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1AF3B4C58;
  v15[3] = &unk_1E7A7EDE8;
  v15[4] = self;
  v15[5] = &v16;
  objc_msgSend_enumerateChildNodesUsingBlock_(v9, v10, v15);
  v12 = v17[5];
  if (!v12)
  {
    _Block_object_dispose(&v16, 8);
    return 0;
  }

  v13 = objc_msgSend_debugQuickLookObjectWithPointOfView_(v6, v11, v12);
  _Block_object_dispose(&v16, 8);
  return v13;
}

- (id)debugQuickLookData
{
  v3 = objc_msgSend_debugQuickLookObject(self, a2, v2);

  return UIImagePNGRepresentation(v3);
}

@end