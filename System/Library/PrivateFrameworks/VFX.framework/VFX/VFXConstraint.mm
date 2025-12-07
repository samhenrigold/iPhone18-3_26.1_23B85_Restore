@interface VFXConstraint
+ (id)presentationConstraintWithConstraintRef:(__CFXConstraint *)ref;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)isEnabled;
- (BOOL)isIncremental;
- (NSArray)animationKeys;
- (VFXConstraint)init;
- (VFXConstraint)initWithCoder:(id)coder;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXWorld)worldRef;
- (float)influenceFactor;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initPresentationConstraintWithConstraintRef:(__CFXConstraint *)ref;
- (id)presentationConstraint;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyBindingsFrom:(id)from;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_syncObjCAnimations;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)addWorldReference:(id)reference;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)commonInit;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)didInitConstraintRef;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAnimationReferencesUsingBlock:(id)block;
- (void)finalizeDecodeConstraint:(id)constraint;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)duration;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration;
- (void)removeWorldReference:(id)reference;
- (void)setConstraintRef:(__CFXConstraint *)ref;
- (void)setEnabled:(BOOL)enabled;
- (void)setIncremental:(BOOL)incremental;
- (void)setInfluenceFactor:(float)factor;
- (void)setName:(id)name;
- (void)setWorld:(id)world;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation VFXConstraint

- (void)commonInit
{
  *&self->_enabled = 257;
  self->_influenceFactor = 1.0;
  self->_animationsLock._os_unfair_lock_opaque = 0;
}

- (VFXConstraint)init
{
  v7.receiver = self;
  v7.super_class = VFXConstraint;
  v2 = [(VFXConstraint *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_commonInit(v2, v3, v4);
  }

  return v5;
}

- (void)didInitConstraintRef
{
  constraintRef = self->_constraintRef;
  if (constraintRef)
  {
    sub_1AF16CDFC(constraintRef, self);
  }
}

- (void)dealloc
{
  if ((*(self + 40) & 1) == 0)
  {
    constraintRef = self->_constraintRef;
    if (constraintRef)
    {
      sub_1AF16CDFC(constraintRef, 0);
    }
  }

  v4 = self->_constraintRef;
  if (v4)
  {
    CFRelease(v4);
    self->_constraintRef = 0;
  }

  v5.receiver = self;
  v5.super_class = VFXConstraint;
  [(VFXConstraint *)&v5 dealloc];
}

- (id)initPresentationConstraintWithConstraintRef:(__CFXConstraint *)ref
{
  v7.receiver = self;
  v7.super_class = VFXConstraint;
  v4 = [(VFXConstraint *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 40) |= 1u;
    v4->_constraintRef = CFRetain(ref);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)_updateModelFromPresentation
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  self->_enabled = sub_1AF14F350(self->_constraintRef);
  self->_incremental = sub_1AF14F360(self->_constraintRef);
  self->_influenceFactor = sub_1AF14F370(self->_constraintRef);
  if (v6)
  {

    sub_1AF1CEA9C(v6, v7);
  }
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2B76E8;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)copyTo:(id)to
{
  isEnabled = objc_msgSend_isEnabled(self, a2, to);
  objc_msgSend_setEnabled_(to, v6, isEnabled);
  objc_msgSend_influenceFactor(self, v7, v8);
  objc_msgSend_setInfluenceFactor_(to, v9, v10);
  isIncremental = objc_msgSend_isIncremental(self, v11, v12);

  objc_msgSend_setIncremental_(to, v13, isIncremental);
}

- (void)setName:(id)name
{
  constraintRef = self->_constraintRef;
  v4 = objc_msgSend_copy(name, a2, name);

  sub_1AF14F2BC(constraintRef, v4);
}

- (void)setConstraintRef:(__CFXConstraint *)ref
{
  constraintRef = self->_constraintRef;
  if (constraintRef != ref)
  {
    if (constraintRef)
    {
      CFRelease(constraintRef);
      self->_constraintRef = 0;
    }

    if (ref)
    {
      v6 = CFRetain(ref);
    }

    else
    {
      v6 = 0;
    }

    self->_constraintRef = v6;
  }
}

- (BOOL)isEnabled
{
  if (!self->_presentationObject)
  {
    return self->_enabled;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  if (v4)
  {
    v6 = v4;
    sub_1AF1CEA20(v4, v5);
    v7 = sub_1AF14F350(self->_constraintRef);
    sub_1AF1CEA9C(v6, v8);
    return v7;
  }

  else
  {
    constraintRef = self->_constraintRef;

    return sub_1AF14F350(constraintRef);
  }
}

- (void)setEnabled:(BOOL)enabled
{
  self->_enabled = enabled;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2B7950;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  enabledCopy = enabled;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (BOOL)isIncremental
{
  if (!self->_presentationObject)
  {
    return self->_incremental;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  if (v4)
  {
    v6 = v4;
    sub_1AF1CEA20(v4, v5);
    v7 = sub_1AF14F360(self->_constraintRef);
    sub_1AF1CEA9C(v6, v8);
    return v7;
  }

  else
  {
    constraintRef = self->_constraintRef;

    return sub_1AF14F360(constraintRef);
  }
}

- (void)setIncremental:(BOOL)incremental
{
  self->_incremental = incremental;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2B7A64;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  incrementalCopy = incremental;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (float)influenceFactor
{
  if (!self->_presentationObject)
  {
    return self->_influenceFactor;
  }

  v4 = objc_msgSend_worldRef(self, a2, v2);
  if (v4)
  {
    v6 = v4;
    sub_1AF1CEA20(v4, v5);
    v7 = sub_1AF14F370(self->_constraintRef);
    sub_1AF1CEA9C(v6, v8);
    return v7;
  }

  else
  {
    constraintRef = self->_constraintRef;

    return sub_1AF14F370(constraintRef);
  }
}

- (void)setInfluenceFactor:(float)factor
{
  if (self->_influenceFactor != factor)
  {
    v7 = v3;
    v8 = v4;
    self->_influenceFactor = factor;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2B7B98;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = factor;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"influenceFactor", v5);
  }
}

- (void)finalizeDecodeConstraint:(id)constraint
{
  v5 = objc_msgSend_decodeBoolForKey_(constraint, a2, @"enabled");
  objc_msgSend_setEnabled_(self, v6, v5);
  objc_msgSend_decodeDoubleForKey_(constraint, v7, @"influenceFactor");
  *&v8 = v8;
  objc_msgSend_setInfluenceFactor_(self, v9, v10, v8);
  if (objc_msgSend_containsValueForKey_(constraint, v11, @"incremental"))
  {
    v13 = objc_msgSend_decodeBoolForKey_(constraint, v12, @"incremental");
    objc_msgSend_setIncremental_(self, v14, v13);
  }

  self->_animationsLock._os_unfair_lock_opaque = 0;
  sub_1AF372B94(constraint, self);

  objc_msgSend_didInitConstraintRef(self, v15, v16);
}

- (VFXConstraint)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = VFXConstraint;
  v3 = [(VFXConstraint *)&v8 init];
  v6 = v3;
  if (v3)
  {
    objc_msgSend_commonInit(v3, v4, v5);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeBool_forKey_(coder, a2, self->_enabled, @"enabled");
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"influenceFactor", self->_influenceFactor);
  objc_msgSend_encodeBool_forKey_(coder, v6, self->_incremental, @"incremental");

  sub_1AF3728B4(coder, self, v7);
}

- (id)presentationConstraint
{
  selfCopy = self;
  if ((*(self + 40) & 1) == 0)
  {
    v3 = objc_opt_class();
    v5 = selfCopy[1];

    return objc_msgSend_presentationConstraintWithConstraintRef_(v3, v4, v5);
  }

  return self;
}

+ (id)presentationConstraintWithConstraintRef:(__CFXConstraint *)ref
{
  v4 = objc_alloc(objc_opt_class());
  inited = objc_msgSend_initPresentationConstraintWithConstraintRef_(v4, v5, ref);

  return inited;
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
      v9[2] = sub_1AF2B7FD4;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2B8034;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 40) & 1) == 0)
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

    if ((*(self + 40) & 1) == 0)
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
    v16[2] = sub_1AF2B8334;
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
      sub_1AFDF4E4C();
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
      sub_1AFDF4EC0();
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
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v14, self, v20, MEMORY[0x1E69E9820], 3221225472, sub_1AF2B86B8, &unk_1E7A7E1D0, self, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6]);
  }

  else
  {
    v17 = v16;
    v18 = objc_msgSend_timingFunction(VFXTransaction, v14, v15);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v19, self, v21, v20[0], v20[1], v20[2], v20[3], v20[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF2B86A8, &unk_1E7A7E2E8, self, v18, *&v17);
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
    v17[2] = sub_1AF2B87A8;
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
      v17[2] = sub_1AF2B8944;
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
    v21[2] = sub_1AF2B8D64;
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
  v8[2] = sub_1AF2B8EA8;
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
  v4[2] = sub_1AF2B8F74;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v4 = objc_msgSend__vfxBindings(from, a2, from);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF2B9020;
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
    v9[2] = sub_1AF2B9158;
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
  v4[2] = sub_1AF2B9294;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF4F9C();
  }

  return 0;
}

@end