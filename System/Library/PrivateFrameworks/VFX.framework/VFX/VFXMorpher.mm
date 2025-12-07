@interface VFXMorpher
+ (Class)VFXUID_classForElementOfArray:(id)array;
+ (id)morpher;
+ (id)morpherWithMorphRef:(__CFXMorph *)ref;
+ (id)presentationMorpherWithMorpherRef:(__CFXMorpher *)ref;
+ (id)weightIndexStringForIndex:(int64_t)index;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (NSArray)animationKeys;
- (NSArray)targets;
- (NSArray)weights;
- (VFXMorpher)init;
- (VFXMorpher)initWithCoder:(id)coder;
- (VFXMorpher)initWithMorphRef:(__CFXMorph *)ref;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXWorld)worldRef;
- (float)_presentationWeightForTargetAtIndex:(unint64_t)index token:(const void *)token;
- (float)weightForTargetAtIndex:(unint64_t)index;
- (float)weightForTargetNamed:(id)named;
- (float)weightIncrementalThreshold;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)correctiveDriverIndicesForCorrectiveAtIndex:(unint64_t)index;
- (id)correctives;
- (id)identifier;
- (id)inBetweenTargetsForCorrectiveAtIndex:(unint64_t)index;
- (id)inBetweenTargetsForTargetAtIndex:(unint64_t)index;
- (id)inBetweenWeightsForCorrectiveAtIndex:(unint64_t)index;
- (id)inBetweenWeightsForTargetAtIndex:(unint64_t)index;
- (id)initPresentationMorpherWithMorphRef:(__CFXMorph *)ref;
- (id)name;
- (id)presentationMorpher;
- (id)targetsAndInBetween;
- (id)valueForUndefinedKey:(id)key;
- (int64_t)_weightIndexForTargetNamed:(id)named;
- (int64_t)calculationMode;
- (unint64_t)correctiveDriverCountForCorrectiveAtIndex:(unint64_t)index;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyBindingsFrom:(id)from;
- (void)_customDecodingOfVFXMorpher:(id)morpher;
- (void)_customEncodingOfVFXMorpher:(id)morpher;
- (void)_didDecodeVFXMorpher:(id)morpher;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_syncObjCAnimations;
- (void)_updateCorrectivesAndInBetween:(id)between;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)_updateTargetsAndInBetween:(id)between;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)addWorldReference:(id)reference;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)clearCorrectives;
- (void)clearInBetweens;
- (void)convertToAdditiveWithBaseGeometry:(id)geometry;
- (void)convertToSparseWithBaseGeometry:(id)geometry;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAnimationReferencesUsingBlock:(id)block;
- (void)makeUniqueID;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)duration;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration;
- (void)removeWorldReference:(id)reference;
- (void)setCalculationMode:(int64_t)mode;
- (void)setIdentifier:(id)identifier;
- (void)setName:(id)name;
- (void)setTargets:(id)targets;
- (void)setTargetsAndInBetweens:(id)betweens inBetweenCounts:(id)counts inBetweenWeights:(id)weights correctives:(id)correctives driverCounts:(id)driverCounts driverIndices:(id)indices inBetweenCounts:(id)betweenCounts inBetweenWeights:(id)self0;
- (void)setUnifiesNormals:(BOOL)normals;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)setWeight:(float)weight forTargetAtIndex:(unint64_t)index;
- (void)setWeight:(float)weight forTargetNamed:(id)named;
- (void)setWeightIncrementalThreshold:(float)threshold;
- (void)setWeights:(id)weights;
- (void)setWorld:(id)world;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation VFXMorpher

- (VFXMorpher)init
{
  v9.receiver = self;
  v9.super_class = VFXMorpher;
  v2 = [(VFXMorpher *)&v9 init];
  v4 = v2;
  if (v2)
  {
    v5 = sub_1AF1B43A4(v2, v3);
    v4->_morpher = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v4, v6, v7);
  }

  return v4;
}

- (VFXMorpher)initWithMorphRef:(__CFXMorph *)ref
{
  v11.receiver = self;
  v11.super_class = VFXMorpher;
  v4 = [(VFXMorpher *)&v11 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_morpher = v5;
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

- (id)initPresentationMorpherWithMorphRef:(__CFXMorph *)ref
{
  v7.receiver = self;
  v7.super_class = VFXMorpher;
  v4 = [(VFXMorpher *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 28) |= 1u;
    v4->_morpher = CFRetain(ref);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (id)morpherWithMorphRef:(__CFXMorph *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v8 = objc_msgSend_initWithMorphRef_(v6, v7, ref);

    return v8;
  }

  return result;
}

+ (id)morpher
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)clearInBetweens
{
  self->_mainTargetsAndInBetweens = 0;
  self->_inBetweenCounts = 0;
  self->_inBetweenInfluenceWeights = 0;
}

- (void)clearCorrectives
{
  self->_correctiveInBetweenInfluenceWeights = 0;
  *&self->_correctivesAndInBetweens = 0u;
  *&self->_correctiveDriverIndices = 0u;
}

- (void)dealloc
{
  morpher = self->_morpher;
  if (morpher)
  {
    if ((*(self + 28) & 1) == 0)
    {
      sub_1AF16CDFC(self->_morpher, 0);
      morpher = self->_morpher;
    }

    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, a2, morpher);
  }

  objc_msgSend_clearInBetweens(self, a2, morpher);
  objc_msgSend_clearCorrectives(self, v4, v5);

  free(self->_weights);
  v6.receiver = self;
  v6.super_class = VFXMorpher;
  [(VFXMorpher *)&v6 dealloc];
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
      v9[2] = sub_1AF2F9F98;
      v9[3] = &unk_1E7A7E220;
      v9[4] = self;
      v9[5] = name;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
    }
  }
}

- (id)name
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
        sub_1AFDF4558(v19, v20, v21, v22, v23, v24, v25, v26);
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
    v16[2] = sub_1AF2FA3E0;
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
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v14, self, v20, MEMORY[0x1E69E9820], 3221225472, sub_1AF2FA764, &unk_1E7A7E1D0, self, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6]);
  }

  else
  {
    v17 = v16;
    v18 = objc_msgSend_timingFunction(VFXTransaction, v14, v15);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v19, self, v21, v20[0], v20[1], v20[2], v20[3], v20[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF2FA754, &unk_1E7A7E2E8, self, v18, *&v17);
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
    v17[2] = sub_1AF2FA854;
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
        sub_1AFDF46B0(v14, v13, v15, v16, v17, v18, v19, v20);
      }
    }

    v21 = sub_1AF16D614(v11, v13);
    if (v21)
    {
      v22 = v21;
      os_unfair_lock_lock(&self->_animationsLock);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_1AF2FA9F0;
      v23[3] = &unk_1E7A7E338;
      v23[4] = self;
      sub_1AF375240(v22, v23);
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
    v21[2] = sub_1AF2FAE10;
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
  v8[2] = sub_1AF2FAF54;
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
  v4[2] = sub_1AF2FB020;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v4 = objc_msgSend__vfxBindings(from, a2, from);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF2FB0CC;
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
    v9[2] = sub_1AF2FB204;
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
  v4[2] = sub_1AF2FB340;
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

  morpher = self->_morpher;
  if (!morpher)
  {
    goto LABEL_32;
  }

  self->_unifyNormal = sub_1AF1B5264(self->_morpher) ^ 1;
  self->_useSparseTargets = sub_1AF1B58F8(morpher, v8);
  v9 = sub_1AF1B4CD4(morpher);
  if (v9)
  {
    v10 = v9;

    objc_msgSend_clearInBetweens(self, v11, v12);
    objc_msgSend_clearCorrectives(self, v13, v14);
    self->_mainTargets = sub_1AF2FB880(v10);
    Count = CFArrayGetCount(v10);
    v16 = Count < 1;
    if (Count >= 1)
    {
      v17 = Count;
      self->_weightCount = Count;
      v18 = 0;
      self->_weights = malloc_type_realloc(self->_weights, 4 * Count, 0x100004052888210uLL);
      do
      {
        self->_weights[v18] = sub_1AF1B4E7C(morpher, v18);
        ++v18;
      }

      while (v17 != v18);
    }

    CFRelease(v10);
  }

  else
  {
    v16 = 1;
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v74 = 0u;
  sub_1AF1B4434(morpher, &v74);
  v19 = DWORD1(v74);
  if (DWORD1(v74))
  {
    v20 = (v74 + DWORD1(v74));
    v21 = sub_1AF15B294(morpher);
    self->_mainTargetsAndInBetweens = sub_1AF2FBA68(v21, 0, v20);
    v22 = objc_alloc(MEMORY[0x1E695DF70]);
    self->_inBetweenCounts = objc_msgSend_initWithCapacity_(v22, v23, v74);
    if (v74)
    {
      v25 = 0;
      do
      {
        inBetweenCounts = self->_inBetweenCounts;
        v27 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v24, *(*(&v74 + 1) + 4 * v25));
        objc_msgSend_addObject_(inBetweenCounts, v28, v27);
        ++v25;
      }

      while (v25 < v74);
    }

    v29 = objc_alloc(MEMORY[0x1E695DF70]);
    self->_inBetweenInfluenceWeights = objc_msgSend_initWithCapacity_(v29, v30, DWORD1(v74));
    v19 = DWORD1(v74);
    if (DWORD1(v74))
    {
      v34 = 0;
      do
      {
        LODWORD(v33) = *(v75 + 4 * v34);
        inBetweenInfluenceWeights = self->_inBetweenInfluenceWeights;
        v36 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v31, v32, v33);
        objc_msgSend_addObject_(inBetweenInfluenceWeights, v37, v36);
        ++v34;
        v19 = DWORD1(v74);
      }

      while (v34 < DWORD1(v74));
    }
  }

  if (DWORD2(v75))
  {
    v38 = (v19 + v74);
    v39 = (DWORD2(v77) + DWORD2(v75));
    v40 = sub_1AF15B294(morpher);
    self->_correctivesAndInBetweens = sub_1AF2FBA68(v40, v38, v39);
    v41 = objc_alloc(MEMORY[0x1E695DF70]);
    self->_correctiveDriverCounts = objc_msgSend_initWithCapacity_(v41, v42, DWORD2(v75));
    if (DWORD2(v75))
    {
      v44 = 0;
      do
      {
        correctiveDriverCounts = self->_correctiveDriverCounts;
        v46 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v43, *(v76 + 4 * v44));
        objc_msgSend_addObject_(correctiveDriverCounts, v47, v46);
        ++v44;
      }

      while (v44 < DWORD2(v75));
    }

    v48 = objc_alloc(MEMORY[0x1E695DF70]);
    self->_correctiveDriverIndices = objc_msgSend_initWithCapacity_(v48, v49, DWORD2(v76));
    if (DWORD2(v76))
    {
      v51 = 0;
      do
      {
        correctiveDriverIndices = self->_correctiveDriverIndices;
        v53 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v50, *(v77 + 4 * v51));
        objc_msgSend_addObject_(correctiveDriverIndices, v54, v53);
        ++v51;
      }

      while (v51 < DWORD2(v76));
    }

    if (DWORD2(v77))
    {
      v55 = objc_alloc(MEMORY[0x1E695DF70]);
      self->_correctiveInBetweenCounts = objc_msgSend_initWithCapacity_(v55, v56, DWORD2(v75));
      if (DWORD2(v75))
      {
        v58 = 0;
        do
        {
          correctiveInBetweenCounts = self->_correctiveInBetweenCounts;
          v60 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v57, *(v78 + 4 * v58));
          objc_msgSend_addObject_(correctiveInBetweenCounts, v61, v60);
          ++v58;
        }

        while (v58 < DWORD2(v75));
      }

      v62 = objc_alloc(MEMORY[0x1E695DF70]);
      self->_correctiveInBetweenInfluenceWeights = objc_msgSend_initWithCapacity_(v62, v63, DWORD2(v77));
      if (DWORD2(v77))
      {
        v67 = 0;
        do
        {
          LODWORD(v66) = *(*(&v78 + 1) + 4 * v67);
          correctiveInBetweenInfluenceWeights = self->_correctiveInBetweenInfluenceWeights;
          v69 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v64, v65, v66);
          objc_msgSend_addObject_(correctiveInBetweenInfluenceWeights, v70, v69);
          ++v67;
        }

        while (v67 < DWORD2(v77));
      }
    }
  }

  self->_calculationMode = sub_1AF1B4CCC(morpher) == 1;
  if (v16)
  {
LABEL_32:
    free(self->_weights);
    self->_weightCount = 0;
  }

  objc_msgSend__updateEntityModelFromPresentation(self, v71, v72);
  if (v6)
  {
    sub_1AF1CEA9C(v6, v73);
  }
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2FBC98;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (id)presentationMorpher
{
  selfCopy = self;
  if ((*(self + 28) & 1) == 0)
  {
    v3 = [VFXMorpher alloc];
    inited = objc_msgSend_initPresentationMorpherWithMorphRef_(v3, v4, selfCopy[1]);

    return inited;
  }

  return self;
}

+ (id)presentationMorpherWithMorpherRef:(__CFXMorpher *)ref
{
  v3 = sub_1AF15B294(ref);
  v4 = [VFXMorpher alloc];
  inited = objc_msgSend_initPresentationMorpherWithMorphRef_(v4, v5, v3);

  return inited;
}

- (void)setTargets:(id)targets
{
  objc_msgSend_clearInBetweens(self, a2, targets);
  objc_msgSend_clearCorrectives(self, v5, v6);

  self->_mainTargets = objc_msgSend_copy(targets, v7, v8);
  self->_mainTargetNamesToIndexes = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF2FBE10;
  v10[3] = &unk_1E7A7E220;
  v10[4] = self;
  v10[5] = targets;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
}

- (NSArray)targets
{
  if ((*(self + 28) & 1) == 0)
  {
    if (objc_msgSend_count(self->_mainTargets, a2, v2))
    {
      return self->_mainTargets;
    }

    else
    {
      return MEMORY[0x1E695E0F0];
    }
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  v7 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  morpher = self->_morpher;
  if (!morpher || (v9 = sub_1AF1B4CD4(morpher)) == 0)
  {
    v11 = 0;
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = v9;
  v11 = sub_1AF2FB880(v9);
  CFRelease(v10);
  if (v7)
  {
LABEL_11:
    sub_1AF1CEA9C(v7, v6);
  }

LABEL_12:
  result = v11;
  if (!result)
  {
    return MEMORY[0x1E695E0F0];
  }

  return result;
}

- (NSArray)weights
{
  if (*(self + 28))
  {
    v16 = objc_msgSend_worldRef(self, a2, v2);
    v18 = v16;
    if (v16)
    {
      sub_1AF1CEA20(v16, v17);
    }

    morpher = self->_morpher;
    if (morpher)
    {
      v20 = sub_1AF1B4DEC(self->_morpher, v17);
      v22 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v21, v20);
      if (v20 >= 1)
      {
        for (i = 0; i != v20; ++i)
        {
          *&v24 = sub_1AF1B4E7C(morpher, i);
          v27 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v25, v26, v24);
          objc_msgSend_addObject_(v22, v28, v27);
        }
      }

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v22 = 0;
      if (!v18)
      {
LABEL_17:
        if (v22)
        {
          return v22;
        }

        else
        {
          return MEMORY[0x1E695E0F0];
        }
      }
    }

    sub_1AF1CEA9C(v18, v17);
    goto LABEL_17;
  }

  v4 = objc_msgSend_count(self->_mainTargets, a2, v2);
  v8 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v5, self->_weightCount);
  weightCount = self->_weightCount;
  if (weightCount)
  {
    for (j = 0; j < weightCount; ++j)
    {
      *&v9 = self->_weights[j];
      v12 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v6, v7, v9);
      objc_msgSend_addObject_(v8, v13, v12);
      weightCount = self->_weightCount;
    }
  }

  v14 = v4 > weightCount;
  v15 = v4 - weightCount;
  if (v14)
  {
    do
    {
      objc_msgSend_addObject_(v8, v6, &unk_1F25D4798);
      --v15;
    }

    while (v15);
  }

  return v8;
}

- (void)setWeights:(id)weights
{
  v5 = objc_msgSend_count(weights, a2, weights);
  self->_weightCount = v5;
  weights = self->_weights;
  if (v5)
  {
    self->_weights = malloc_type_realloc(weights, 4 * v5, 0x100004052888210uLL);
    if (self->_weightCount)
    {
      v8 = 0;
      do
      {
        v9 = objc_msgSend_objectAtIndexedSubscript_(weights, v7, v8);
        objc_msgSend_floatValue(v9, v10, v11);
        weightCount = self->_weightCount;
        self->_weights[v8++] = v13;
      }

      while (v8 < weightCount);
    }
  }

  else
  {
    free(weights);
    self->_weights = 0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1AF2FC2C8;
  v14[3] = &unk_1E7A7E220;
  v14[4] = self;
  v14[5] = weights;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v14);
}

- (int64_t)_weightIndexForTargetNamed:(id)named
{
  v37 = *MEMORY[0x1E69E9840];
  mainTargetNamesToIndexes = self->_mainTargetNamesToIndexes;
  if (!mainTargetNamesToIndexes)
  {
    namedCopy = named;
    v5 = objc_msgSend_targets(self, a2, named);
    v6 = MEMORY[0x1E695DF90];
    v9 = objc_msgSend_count(v5, v7, v8);
    v11 = objc_msgSend_dictionaryWithCapacity_(v6, v10, v9);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v32, v36, 16);
    if (v13)
    {
      v16 = v13;
      v17 = 0;
      v18 = *v33;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v5);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          if (objc_msgSend_name(v20, v14, v15))
          {
            v21 = v17 + 1;
            v22 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v14, v17);
            v25 = objc_msgSend_name(v20, v23, v24);
            objc_msgSend_setObject_forKeyedSubscript_(v11, v26, v22, v25);
            v17 = v21;
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v14, &v32, v36, 16);
      }

      while (v16);
    }

    mainTargetNamesToIndexes = objc_msgSend_copy(v11, v14, v15);
    self->_mainTargetNamesToIndexes = mainTargetNamesToIndexes;
    named = namedCopy;
  }

  v27 = objc_msgSend_objectForKeyedSubscript_(mainTargetNamesToIndexes, a2, named);
  if (v27)
  {
    return objc_msgSend_integerValue(v27, v28, v29);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setWeight:(float)weight forTargetNamed:(id)named
{
  v6 = objc_msgSend__weightIndexForTargetNamed_(self, a2, named);
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *&v8 = weight;

    objc_msgSend_setWeight_forTargetAtIndex_(self, v7, v6, v8);
  }
}

- (float)weightForTargetNamed:(id)named
{
  v4 = objc_msgSend__weightIndexForTargetNamed_(self, a2, named);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0.0;
  }

  objc_msgSend_weightForTargetAtIndex_(self, v5, v4);
  return result;
}

+ (id)weightIndexStringForIndex:(int64_t)index
{
  if (qword_1EB658CA8 != -1)
  {
    sub_1AFDF7178();
  }

  if (index > 127)
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"weights[%d]", index);
  }

  else
  {
    return qword_1EB6588A8[index];
  }
}

- (void)setWeight:(float)weight forTargetAtIndex:(unint64_t)index
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(self + 28))
  {
    v13 = objc_msgSend_morphRef(self, a2, index);
    if (v13)
    {

      sub_1AF1B4F44(v13, index, weight);
    }
  }

  else
  {
    v7 = objc_msgSend_count(self->_mainTargets, a2, index);
    if (v7 <= index)
    {
      v14 = v7;
      v15 = sub_1AF0D5194(v7, v8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        selfCopy = self;
        v20 = 1024;
        indexCopy = index;
        v22 = 1024;
        v23 = v14;
        _os_log_error_impl(&dword_1AF0CE000, v15, OS_LOG_TYPE_ERROR, "Error: %@ setWeight:forTargetAtIndex:%d - index out of bounds (%d)", buf, 0x18u);
      }
    }

    else
    {
      if (self->_weightCount <= index)
      {
        v9 = malloc_type_realloc(self->_weights, 4 * (index + 1), 0x100004052888210uLL);
        self->_weights = v9;
        bzero(&v9[self->_weightCount], 4 * (index + 1 - self->_weightCount));
        self->_weightCount = index + 1;
      }

      weights = self->_weights;
      if (weights[index] != weight)
      {
        weights[index] = weight;
        v11 = objc_msgSend_weightIndexStringForIndex_(VFXMorpher, v8, index);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = sub_1AF2FC884;
        v16[3] = &unk_1E7A7EB88;
        v16[4] = self;
        v16[5] = index;
        weightCopy = weight;
        objc_msgSend_postCommandWithObject_key_subscriptIndex_derivedKeyPath_applyBlock_(VFXTransaction, v12, self, @"weights", index, v11, v16);
      }
    }
  }
}

- (float)weightForTargetAtIndex:(unint64_t)index
{
  if (*(self + 28))
  {
    v6 = objc_msgSend_worldRef(self, a2, index);
    v8 = v6;
    if (v6)
    {
      sub_1AF1CEA20(v6, v7);
    }

    morpher = self->_morpher;
    if (morpher)
    {
      v5 = sub_1AF1B4E7C(morpher, index);
      if (!v8)
      {
        return v5;
      }
    }

    else
    {
      v5 = 0.0;
      if (!v8)
      {
        return v5;
      }
    }

    sub_1AF1CEA9C(v8, v7);
    return v5;
  }

  v5 = 0.0;
  if (self->_weightCount > index)
  {
    return self->_weights[index];
  }

  return v5;
}

- (float)_presentationWeightForTargetAtIndex:(unint64_t)index token:(const void *)token
{
  v35 = *MEMORY[0x1E69E9840];
  morpher = self->_morpher;
  v8 = sub_1AF1C3FAC(morpher, a2);
  if (*token != v8)
  {
    v10 = v8;
    v11 = sub_1AF0D5194(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AF16CDEC(morpher);
      v14 = objc_opt_class();
      v15 = sub_1AF16CDEC(morpher);
      v16 = sub_1AF16CDEC(v10);
      v17 = sub_1AF16CDEC(*token);
      v18 = *token;
      v19 = 136316930;
      v20 = "token->worldRef == worldRef";
      v21 = 2112;
      v22 = v14;
      v23 = 2048;
      v24 = v15;
      v25 = 2048;
      v26 = morpher;
      v27 = 2048;
      v28 = v16;
      v29 = 2048;
      v30 = v10;
      v31 = 2048;
      v32 = v17;
      v33 = 2048;
      v34 = v18;
      _os_log_fault_impl(&dword_1AF0CE000, v11, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Presentation instance query on <%@ %p> (ref: %p) targets the wrong world %p (ref: %p) – has token for %p (%p)", &v19, 0x52u);
    }
  }

  v12 = self->_morpher;
  if (v12)
  {
    return sub_1AF1B4E7C(v12, index);
  }

  else
  {
    return 0.0;
  }
}

- (id)targetsAndInBetween
{
  result = self->_mainTargetsAndInBetweens;
  if (!result)
  {
    return self->_mainTargets;
  }

  return result;
}

- (id)correctives
{
  v30 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_count(self->_correctivesAndInBetweens, a2, v2))
  {
    return 0;
  }

  if (!objc_msgSend_count(self->_correctiveInBetweenCounts, v4, v5))
  {
    return self->_correctivesAndInBetweens;
  }

  v8 = MEMORY[0x1E695DF70];
  v9 = objc_msgSend_count(self->_correctiveDriverCounts, v6, v7);
  v11 = objc_msgSend_arrayWithCapacity_(v8, v10, v9);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  correctiveInBetweenCounts = self->_correctiveInBetweenCounts;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(correctiveInBetweenCounts, v13, &v25, v29, 16);
  if (v14)
  {
    v17 = v14;
    v18 = 0;
    v19 = *v26;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(correctiveInBetweenCounts);
        }

        v18 += objc_msgSend_unsignedIntegerValue(*(*(&v25 + 1) + 8 * i), v15, v16);
        v22 = objc_msgSend_objectAtIndexedSubscript_(self->_correctivesAndInBetweens, v21, v18 - 1);
        objc_msgSend_addObject_(v11, v23, v22);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(correctiveInBetweenCounts, v15, &v25, v29, 16);
    }

    while (v17);
  }

  return v11;
}

- (void)_updateTargetsAndInBetween:(id)between
{
  mainTargetsAndInBetweens = self->_mainTargetsAndInBetweens;
  if (!mainTargetsAndInBetweens)
  {
    mainTargetsAndInBetweens = self->_mainTargets;
  }

  v6 = objc_msgSend_count(mainTargetsAndInBetweens, a2, between);
  v9 = objc_msgSend_count(between, v7, v8);
  if (v6 != v9)
  {
    v11 = sub_1AF0D5194(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF718C(v11, v10, v12, v13, v14, v15, v16, v17);
    }
  }

  objc_msgSend_setTargetsAndInBetweens_inBetweenCounts_inBetweenWeights_correctives_driverCounts_driverIndices_inBetweenCounts_inBetweenWeights_(self, v10, between, self->_inBetweenCounts, self->_inBetweenInfluenceWeights, self->_correctivesAndInBetweens, self->_correctiveDriverCounts, self->_correctiveDriverIndices, self->_correctiveInBetweenCounts, self->_correctiveInBetweenInfluenceWeights);
}

- (void)_updateCorrectivesAndInBetween:(id)between
{
  v5 = objc_msgSend_count(self->_correctivesAndInBetweens, a2, between);
  v8 = objc_msgSend_count(between, v6, v7);
  if (v5 != v8)
  {
    v10 = sub_1AF0D5194(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF7204(v10, v9, v11, v12, v13, v14, v15, v16);
    }
  }

  mainTargetsAndInBetweens = self->_mainTargetsAndInBetweens;
  if (!mainTargetsAndInBetweens)
  {
    mainTargetsAndInBetweens = self->_mainTargets;
  }

  objc_msgSend_setTargetsAndInBetweens_inBetweenCounts_inBetweenWeights_correctives_driverCounts_driverIndices_inBetweenCounts_inBetweenWeights_(self, v9, mainTargetsAndInBetweens, self->_inBetweenCounts, self->_inBetweenInfluenceWeights, between, self->_correctiveDriverCounts, self->_correctiveDriverIndices, self->_correctiveInBetweenCounts, self->_correctiveInBetweenInfluenceWeights);
}

- (id)inBetweenTargetsForTargetAtIndex:(unint64_t)index
{
  if (!objc_msgSend_count(self->_inBetweenCounts, a2, index))
  {
    return 0;
  }

  v6 = objc_msgSend_objectAtIndexedSubscript_(self->_inBetweenCounts, v5, index);
  v9 = objc_msgSend_unsignedIntegerValue(v6, v7, v8);
  v11 = v9 - 1;
  if (v9 == 1)
  {
    return 0;
  }

  v12 = 0;
  if (index)
  {
    v13 = 0;
    do
    {
      v14 = objc_msgSend_objectAtIndexedSubscript_(self->_inBetweenCounts, v10, v13);
      v12 += objc_msgSend_unsignedIntegerValue(v14, v15, v16);
      ++v13;
    }

    while (index != v13);
  }

  mainTargetsAndInBetweens = self->_mainTargetsAndInBetweens;

  return objc_msgSend_subarrayWithRange_(mainTargetsAndInBetweens, v10, v12, v11);
}

- (id)inBetweenWeightsForTargetAtIndex:(unint64_t)index
{
  if (!objc_msgSend_count(self->_inBetweenCounts, a2, index))
  {
    return 0;
  }

  v6 = objc_msgSend_objectAtIndexedSubscript_(self->_inBetweenCounts, v5, index);
  v9 = objc_msgSend_unsignedIntegerValue(v6, v7, v8);
  v11 = v9 - 1;
  if (v9 == 1)
  {
    return 0;
  }

  v12 = 0;
  if (index)
  {
    v13 = 0;
    do
    {
      v14 = objc_msgSend_objectAtIndexedSubscript_(self->_inBetweenCounts, v10, v13);
      v12 = v12 + objc_msgSend_unsignedIntegerValue(v14, v15, v16) - 1;
      ++v13;
    }

    while (index != v13);
  }

  inBetweenInfluenceWeights = self->_inBetweenInfluenceWeights;

  return objc_msgSend_subarrayWithRange_(inBetweenInfluenceWeights, v10, v12, v11);
}

- (unint64_t)correctiveDriverCountForCorrectiveAtIndex:(unint64_t)index
{
  if (!objc_msgSend_count(self->_correctiveDriverCounts, a2, index))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = objc_msgSend_objectAtIndexedSubscript_(self->_correctiveDriverCounts, v5, index);

  return objc_msgSend_unsignedIntegerValue(v6, v7, v8);
}

- (id)correctiveDriverIndicesForCorrectiveAtIndex:(unint64_t)index
{
  if (!objc_msgSend_count(self->_correctiveDriverCounts, a2, index))
  {
    return 0;
  }

  v6 = objc_msgSend_objectAtIndexedSubscript_(self->_correctiveDriverCounts, v5, index);
  v9 = objc_msgSend_unsignedIntegerValue(v6, v7, v8);
  if (!objc_msgSend_count(self->_correctiveDriverIndices, v10, v11))
  {
    return 0;
  }

  v13 = 0;
  if (index)
  {
    v14 = 0;
    do
    {
      v15 = objc_msgSend_objectAtIndexedSubscript_(self->_correctiveDriverCounts, v12, v14);
      v13 += objc_msgSend_unsignedIntegerValue(v15, v16, v17);
      ++v14;
    }

    while (index != v14);
  }

  correctiveDriverIndices = self->_correctiveDriverIndices;

  return objc_msgSend_subarrayWithRange_(correctiveDriverIndices, v12, v13, v9);
}

- (id)inBetweenTargetsForCorrectiveAtIndex:(unint64_t)index
{
  if (!objc_msgSend_count(self->_correctiveInBetweenCounts, a2, index))
  {
    return 0;
  }

  v6 = objc_msgSend_objectAtIndexedSubscript_(self->_correctiveInBetweenCounts, v5, index);
  v9 = objc_msgSend_unsignedIntegerValue(v6, v7, v8);
  v11 = v9 - 1;
  if (v9 == 1)
  {
    return 0;
  }

  v12 = 0;
  if (index)
  {
    v13 = 0;
    do
    {
      v14 = objc_msgSend_objectAtIndexedSubscript_(self->_correctiveInBetweenCounts, v10, v13);
      v12 += objc_msgSend_unsignedIntegerValue(v14, v15, v16);
      ++v13;
    }

    while (index != v13);
  }

  correctivesAndInBetweens = self->_correctivesAndInBetweens;

  return objc_msgSend_subarrayWithRange_(correctivesAndInBetweens, v10, v12, v11);
}

- (id)inBetweenWeightsForCorrectiveAtIndex:(unint64_t)index
{
  if (!objc_msgSend_count(self->_correctiveInBetweenCounts, a2, index))
  {
    return 0;
  }

  v6 = objc_msgSend_objectAtIndexedSubscript_(self->_correctiveInBetweenCounts, v5, index);
  v9 = objc_msgSend_unsignedIntegerValue(v6, v7, v8);
  v11 = v9 - 1;
  if (v9 == 1)
  {
    return 0;
  }

  v12 = 0;
  if (index)
  {
    v13 = 0;
    do
    {
      v14 = objc_msgSend_objectAtIndexedSubscript_(self->_correctiveInBetweenCounts, v10, v13);
      v12 = v12 + objc_msgSend_unsignedIntegerValue(v14, v15, v16) - 1;
      ++v13;
    }

    while (index != v13);
  }

  correctiveInBetweenInfluenceWeights = self->_correctiveInBetweenInfluenceWeights;

  return objc_msgSend_subarrayWithRange_(correctiveInBetweenInfluenceWeights, v10, v12, v11);
}

- (void)setTargetsAndInBetweens:(id)betweens inBetweenCounts:(id)counts inBetweenWeights:(id)weights correctives:(id)correctives driverCounts:(id)driverCounts driverIndices:(id)indices inBetweenCounts:(id)betweenCounts inBetweenWeights:(id)self0
{
  betweenCountsCopy = betweenCounts;
  v113 = *MEMORY[0x1E69E9840];
  countsCopy = counts;
  betweensCopy = betweens;
  correctivesCopy = correctives;
  weightsCopy = weights;
  v18 = objc_msgSend_count(counts, a2, betweens);
  v21 = objc_msgSend_count(correctives, v19, v20);
  v28 = v21;
  if (v21)
  {
    indicesCopy2 = indices;
    v96 = v21 != 0;
    v29 = objc_msgSend_count(betweenCountsCopy, v22, v23) != 0;
    if (!v18)
    {
      goto LABEL_3;
    }

    goto LABEL_29;
  }

  if (v18)
  {
    indicesCopy2 = indices;
    v96 = v21 != 0;
    v29 = 0;
LABEL_29:
    v64 = sub_1AFDF6ADC(self, betweens, counts, weights, v24, v25, v26, v27);
    if (v64)
    {
      v92 = v28;
      driverCountsCopy = driverCounts;
      sub_1AFDF6CFC(self, &betweensCopy, &countsCopy, &weightsCopy);
      v93 = v29;
      if (v29)
      {
        sub_1AFDF6CFC(self, &correctivesCopy, &betweenCounts, &betweenWeights);
      }

      v67 = objc_alloc(MEMORY[0x1E695DF70]);
      v68 = countsCopy;
      v71 = objc_msgSend_count(countsCopy, v69, v70);
      v73 = objc_msgSend_initWithCapacity_(v67, v72, v71);
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v74, &v102, v112, 16);
      v31 = betweensCopy;
      if (v75)
      {
        v78 = v75;
        v79 = 0;
        v80 = *v103;
        do
        {
          for (i = 0; i != v78; ++i)
          {
            if (*v103 != v80)
            {
              objc_enumerationMutation(v68);
            }

            v79 += objc_msgSend_unsignedIntegerValue(*(*(&v102 + 1) + 8 * i), v76, v77);
            v84 = objc_msgSend_count(v31, v82, v83);
            if (v79 - 1 >= v84)
            {
              v86 = sub_1AF0D5194(v84, v85);
              if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
              {
                sub_1AFDF727C(buf, &v111, v86);
              }
            }

            v87 = objc_msgSend_objectAtIndexedSubscript_(v31, v85, v79 - 1);
            objc_msgSend_addObject_(v73, v88, v87);
          }

          v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v76, &v102, v112, 16);
        }

        while (v78);
      }

      self->_mainTargets = v73;
      mainTargetsAndInBetweens = self->_mainTargetsAndInBetweens;
      if (mainTargetsAndInBetweens != v31)
      {

        self->_mainTargetsAndInBetweens = objc_msgSend_copy(v31, v90, v91);
      }

      v95 = 1;
      driverCounts = driverCountsCopy;
      LOBYTE(v29) = v93;
      v28 = v92;
      goto LABEL_7;
    }

    v66 = sub_1AF0D5194(v64, v65);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AF0CE000, v66, OS_LOG_TYPE_ERROR, "Error: invalid in-between buffer, ignoring in-betweens", buf, 2u);
      if (!v29)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }

LABEL_3:
    if (!v29)
    {
LABEL_4:
      mainTargets = self->_mainTargets;
      v31 = betweensCopy;
      if (mainTargets != betweensCopy)
      {

        self->_mainTargets = objc_msgSend_copy(v31, v32, v33);
      }

      v95 = 0;
      self->_mainTargetsAndInBetweens = 0;
LABEL_7:

      self->_mainTargetNamesToIndexes = 0;
      free(self->_weights);
      self->_weightCount = 0;
      self->_weights = 0;
      inBetweenInfluenceWeights = self->_inBetweenInfluenceWeights;
      v36 = weightsCopy;
      if (inBetweenInfluenceWeights != weightsCopy)
      {

        self->_inBetweenInfluenceWeights = objc_msgSend_copy(v36, v37, v38);
      }

      inBetweenCounts = self->_inBetweenCounts;
      v40 = countsCopy;
      if (inBetweenCounts != countsCopy)
      {

        self->_inBetweenCounts = objc_msgSend_copy(v40, v41, v42);
      }

      correctivesAndInBetweens = self->_correctivesAndInBetweens;
      v44 = correctivesCopy;
      if (correctivesAndInBetweens != correctivesCopy)
      {

        self->_correctivesAndInBetweens = objc_msgSend_copy(v44, v45, v46);
      }

      correctiveDriverCounts = self->_correctiveDriverCounts;
      if (correctiveDriverCounts != driverCounts)
      {

        self->_correctiveDriverCounts = objc_msgSend_copy(driverCounts, v48, v49);
      }

      correctiveDriverIndices = self->_correctiveDriverIndices;
      if (correctiveDriverIndices != indicesCopy2)
      {

        self->_correctiveDriverIndices = objc_msgSend_copy(indicesCopy2, v51, v52);
      }

      driverCountsCopy2 = driverCounts;
      correctiveInBetweenCounts = self->_correctiveInBetweenCounts;
      betweenCountsCopy2 = betweenCounts;
      if (correctiveInBetweenCounts != betweenCounts)
      {

        self->_correctiveInBetweenCounts = objc_msgSend_copy(betweenCountsCopy2, v56, v57);
      }

      correctiveInBetweenInfluenceWeights = self->_correctiveInBetweenInfluenceWeights;
      betweenWeightsCopy = betweenWeights;
      if (correctiveInBetweenInfluenceWeights != betweenWeights)
      {

        self->_correctiveInBetweenInfluenceWeights = objc_msgSend_copy(betweenWeightsCopy, v60, v61);
      }

      if (v28)
      {
        v31 = objc_msgSend_arrayByAddingObjectsFromArray_(v31, v34, v44);
      }

      v62 = sub_1AF2FBE8C(v31);
      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = sub_1AF2FD708;
      v98[3] = &unk_1E7A7EBB0;
      v99 = v95;
      v98[4] = v40;
      v98[5] = v36;
      v100 = v96;
      v98[6] = betweensCopy;
      v98[7] = driverCountsCopy2;
      v101 = v29;
      v98[8] = indicesCopy2;
      v98[9] = betweenCountsCopy2;
      v98[10] = betweenWeightsCopy;
      v98[11] = self;
      v98[12] = v62;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v63, self, v98);

      return;
    }

LABEL_32:
    sub_1AFDF6CFC(self, &correctivesCopy, &betweenCounts, &betweenWeights);
    goto LABEL_4;
  }

  objc_msgSend_setTargets_(self, v22, betweens);
}

- (void)setCalculationMode:(int64_t)mode
{
  if (self->_calculationMode != mode)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_calculationMode = mode;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2FDB64;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = mode;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)calculationMode
{
  if (*(self + 28))
  {
    v5 = objc_msgSend_worldRef(self, a2, v2);
    v7 = v5;
    if (v5)
    {
      sub_1AF1CEA20(v5, v6);
    }

    morpher = self->_morpher;
    if (morpher)
    {
      v4 = sub_1AF1B4CCC(morpher) == 1;
      if (!v7)
      {
        return v4;
      }
    }

    else
    {
      v4 = 0;
      if (!v7)
      {
        return v4;
      }
    }

    sub_1AF1CEA9C(v7, v6);
    return v4;
  }

  return self->_calculationMode;
}

- (void)setUnifiesNormals:(BOOL)normals
{
  if (self->_unifyNormal != normals)
  {
    v7 = v3;
    v8 = v4;
    self->_unifyNormal = normals;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2FDCCC;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    normalsCopy = normals;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (float)weightIncrementalThreshold
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  if (v4)
  {
    v6 = v4;
    sub_1AF1CEA20(v4, v5);
    v8 = sub_1AF1B5C38(self->_morpher, v7);
    sub_1AF1CEA9C(v6, v9);
    return v8;
  }

  else
  {
    morpher = self->_morpher;

    return sub_1AF1B5C38(morpher, v5);
  }
}

- (void)setWeightIncrementalThreshold:(float)threshold
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2FDE3C;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  *&v4 = threshold;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)convertToAdditiveWithBaseGeometry:(id)geometry
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2FDEF4;
  v3[3] = &unk_1E7A7E220;
  v3[4] = self;
  v3[5] = geometry;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)convertToSparseWithBaseGeometry:(id)geometry
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2FE048;
  v3[3] = &unk_1E7A7E220;
  v3[4] = self;
  v3[5] = geometry;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
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
      v9[2] = sub_1AF2FE294;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2FE2F4;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_begin(VFXTransaction, v5, v6);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1);
  v4[169] = self->_useSparseTargets;
  if (self->_inBetweenCounts || self->_correctiveDriverCounts)
  {
    mainTargetsAndInBetweens = self->_mainTargetsAndInBetweens;
    if (!mainTargetsAndInBetweens)
    {
      mainTargetsAndInBetweens = self->_mainTargets;
    }

    objc_msgSend_setTargetsAndInBetweens_inBetweenCounts_inBetweenWeights_correctives_driverCounts_driverIndices_inBetweenCounts_inBetweenWeights_(v4, v8, mainTargetsAndInBetweens, self->_correctiveInBetweenCounts, self->_correctiveInBetweenInfluenceWeights);
  }

  else
  {
    v30 = objc_msgSend_targets(self, v8, v9);
    objc_msgSend_setTargets_(v4, v31, v30);
  }

  if (self->_weightCount)
  {
    v13 = 0;
    do
    {
      objc_msgSend_weightForTargetAtIndex_(self, v11, v13);
      objc_msgSend_setWeight_forTargetAtIndex_(v4, v14, v13++);
    }

    while (v13 < self->_weightCount);
  }

  v15 = objc_msgSend_calculationMode(self, v11, v12);
  objc_msgSend_setCalculationMode_(v4, v16, v15);
  v19 = objc_msgSend_name(self, v17, v18);
  objc_msgSend_setName_(v4, v20, v19);
  v23 = objc_msgSend_unifiesNormals(self, v21, v22);
  objc_msgSend_setUnifiesNormals_(v4, v24, v23);
  objc_msgSend__copyAnimationsFrom_(v4, v25, self);
  objc_msgSend__copyBindingsFrom_(v4, v26, self);
  objc_msgSend_commitImmediate(VFXTransaction, v27, v28);
  return v4;
}

- (void)_customDecodingOfVFXMorpher:(id)morpher
{
  v4 = sub_1AF1B43A4(self, a2);
  self->_morpher = v4;
  if (v4)
  {

    sub_1AF16CDFC(v4, self);
  }
}

- (id)valueForUndefinedKey:(id)key
{
  if (objc_msgSend_rangeOfString_(key, a2, @"weights[") || (v7 = v5, objc_msgSend_length(key, v5, v6) < 2) || (v9 = objc_msgSend_substringFromIndex_(key, v8, v7), v11 = objc_msgSend_rangeOfString_(v9, v10, @"]"), v11 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v26.receiver = self;
    v26.super_class = VFXMorpher;
    return [(VFXMorpher *)&v26 valueForUndefinedKey:key];
  }

  else
  {
    v14 = objc_msgSend_substringToIndex_(v9, v12, v11);
    if (objc_msgSend_length(v14, v15, v16) >= 3 && objc_msgSend_characterAtIndex_(v14, v17, 0) == 34)
    {
      v19 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v14, v17, @"", &stru_1F2575650);
      objc_msgSend_weightForTargetNamed_(self, v20, v19);
    }

    else
    {
      v23 = objc_msgSend_integerValue(v14, v17, v18);
      objc_msgSend_weightForTargetAtIndex_(self, v24, v23);
    }

    v25 = MEMORY[0x1E696AD98];

    return objc_msgSend_numberWithFloat_(v25, v21, v22);
  }
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  if (objc_msgSend_rangeOfString_(key, a2, @"weights[") || (v9 = v7, objc_msgSend_length(key, v7, v8) < 2) || (v11 = objc_msgSend_substringFromIndex_(key, v10, v9), v13 = objc_msgSend_rangeOfString_(v11, v12, @"]"), v13 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v27.receiver = self;
    v27.super_class = VFXMorpher;
    [(VFXMorpher *)&v27 setValue:value forUndefinedKey:key];
  }

  else
  {
    v15 = objc_msgSend_substringToIndex_(v11, v14, v13);
    if (objc_msgSend_length(v15, v16, v17) >= 3 && objc_msgSend_characterAtIndex_(v15, v18, 0) == 34)
    {
      v20 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v15, v18, @"", &stru_1F2575650);
      objc_msgSend_floatValue(value, v21, v22);

      MEMORY[0x1EEE66B58](self, sel_setWeight_forTargetNamed_, v20);
    }

    else
    {
      v23 = objc_msgSend_integerValue(v15, v18, v19);
      objc_msgSend_floatValue(value, v24, v25);

      objc_msgSend_setWeight_forTargetAtIndex_(self, v26, v23);
    }
  }
}

- (void)_customEncodingOfVFXMorpher:(id)morpher
{
  v4 = sub_1AF1B4C94(self->_morpher);
  if (v4)
  {
    v6 = sub_1AF16CCC0(v4, v5);
    if (v6)
    {

      objc_msgSend_encodeObject_forKey_(morpher, v7, v6, @"weightID");
    }
  }
}

- (void)_didDecodeVFXMorpher:(id)morpher
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(morpher, v6, v5, @"weightID");
  if (v7)
  {
    v8 = v7;
    v9 = sub_1AF1B4C94(self->_morpher);
    if (v9)
    {

      sub_1AF16CD6C(v9, v8);
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  if (*(self + 28))
  {
    objc_msgSend__updateModelFromPresentation(self, a2, coder);
  }

  objc_msgSend__customEncodingOfVFXMorpher_(self, a2, coder);
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->_calculationMode, @"calculationMode");
  objc_msgSend_encodeBool_forKey_(coder, v6, self->_useSparseTargets, @"useSparseTargets");
  if (self->_weightCount)
  {
    v9 = objc_msgSend_weights(self, v7, v8);
    objc_msgSend_encodeObject_forKey_(coder, v10, v9, @"weights");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = objc_msgSend_skipMorphTargets(coder, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  if (objc_msgSend_count(self->_inBetweenCounts, v11, v12) && objc_msgSend_count(self->_inBetweenInfluenceWeights, v14, v15))
  {
    if ((v13 & 1) == 0)
    {
      objc_msgSend_encodeObject_forKey_(coder, v14, self->_mainTargetsAndInBetweens, @"targetMeshes");
    }

    objc_msgSend_encodeObject_forKey_(coder, v14, self->_inBetweenCounts, @"inBetweenCounts");
    objc_msgSend_encodeObject_forKey_(coder, v16, self->_inBetweenInfluenceWeights, @"inBetweenInfluenceWeights");
  }

  else if ((v13 & 1) == 0)
  {
    objc_msgSend_encodeObject_forKey_(coder, v14, self->_mainTargets, @"targetMeshes");
  }

  if (objc_msgSend_count(self->_correctiveDriverCounts, v14, v15) && objc_msgSend_count(self->_correctiveDriverIndices, v17, v18))
  {
    if ((v13 & 1) == 0)
    {
      objc_msgSend_encodeObject_forKey_(coder, v17, self->_correctivesAndInBetweens, @"correctiveMeshes");
    }

    objc_msgSend_encodeObject_forKey_(coder, v17, self->_correctiveDriverCounts, @"correctiveDriverCounts");
    objc_msgSend_encodeObject_forKey_(coder, v19, self->_correctiveDriverIndices, @"correctiveDriverIndices");
    if (objc_msgSend_count(self->_correctiveInBetweenCounts, v20, v21) && objc_msgSend_count(self->_correctiveInBetweenInfluenceWeights, v17, v22))
    {
      objc_msgSend_encodeObject_forKey_(coder, v17, self->_correctiveInBetweenCounts, @"correctiveInBetweenCounts");
      objc_msgSend_encodeObject_forKey_(coder, v23, self->_correctiveInBetweenInfluenceWeights, @"correctiveInBetweenInfluenceWeights");
    }
  }

  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(coder, v17, name, @"name");
  }

  objc_msgSend_encodeBool_forKey_(coder, v17, !self->_unifyNormal, @"shouldMorphNormals");
  sub_1AF372440(coder, self, v25);

  sub_1AF3728B4(coder, self, v26);
}

- (VFXMorpher)initWithCoder:(id)coder
{
  v115 = *MEMORY[0x1E69E9840];
  v113.receiver = self;
  v113.super_class = VFXMorpher;
  v6 = [(VFXMorpher *)&v113 init];
  if (!v6)
  {
    return v6;
  }

  v7 = 0x1E7A77000uLL;
  v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
  objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1);
  objc_msgSend__customDecodingOfVFXMorpher_(v6, v10, coder);
  v6->_useSparseTargets = objc_msgSend_decodeBoolForKey_(coder, v11, @"useSparseTargets");
  v13 = objc_msgSend_decodeIntegerForKey_(coder, v12, @"calculationMode");
  objc_msgSend_setCalculationMode_(v6, v14, v13);
  v15 = objc_opt_class();
  v17 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v16, v15, @"inBetweenCounts");
  v18 = objc_opt_class();
  v20 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v19, v18, @"inBetweenInfluenceWeights");
  if (v17 | v20)
  {
    v32 = v20;
    goto LABEL_16;
  }

  v105 = v8;
  v21 = objc_opt_class();
  v17 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v22, v21, @"channelTargetCounts");
  v23 = objc_opt_class();
  v25 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v24, v23, @"channelTargetWeights");
  if (!objc_msgSend_count(v17, v26, v27) || !objc_msgSend_count(v25, v28, v29))
  {
    v32 = 0;
    v17 = 0;
    goto LABEL_15;
  }

  v32 = objc_msgSend_array(MEMORY[0x1E695DF70], v30, v31);
  if (!objc_msgSend_count(v17, v33, v34))
  {
LABEL_15:
    v8 = v105;
    goto LABEL_16;
  }

  v36 = 0;
  v37 = 0;
  do
  {
    v38 = objc_msgSend_objectAtIndexedSubscript_(v17, v35, v37);
    v41 = objc_msgSend_unsignedIntegerValue(v38, v39, v40);
    v44 = v41 - 1;
    if (v41 != 1)
    {
      v45 = v44 + v36;
      do
      {
        v46 = objc_msgSend_objectAtIndexedSubscript_(v25, v42, v36);
        objc_msgSend_addObject_(v32, v47, v46);
        ++v36;
        --v44;
      }

      while (v44);
      v36 = v45;
    }

    ++v36;
    ++v37;
  }

  while (v37 < objc_msgSend_count(v17, v42, v43));
  v7 = 0x1E7A77000;
  v8 = v105;
LABEL_16:
  v48 = objc_opt_class();
  v108 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v49, v48, @"correctiveDriverCounts");
  v50 = objc_opt_class();
  objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v51, v50, @"correctiveDriverIndices");
  v52 = objc_opt_class();
  v54 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v53, v52, @"correctiveInBetweenCounts");
  v55 = objc_opt_class();
  v107 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v56, v55, @"correctiveInBetweenInfluenceWeights");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v59 = objc_msgSend_allTargetsFromAnimCodec(coder, v57, v58)) == 0)
  {
    v76 = objc_msgSend_containsValueForKey_(coder, v57, @"targets");
    if (v76)
    {
      v78 = objc_opt_class();
      v80 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v79, v78, @"targets");
      v61 = objc_msgSend_VFX_compactMapObjectsUsingBlock_(v80, v81, &unk_1F24EC118);
      v82 = objc_opt_class();
      v84 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v83, v82, @"correctives");
      v86 = objc_msgSend_VFX_compactMapObjectsUsingBlock_(v84, v85, &unk_1F24EC138);
    }

    else
    {
      v87 = sub_1AF2C11F4(v76, v77);
      v61 = objc_msgSend_vfx_decodeArrayOfObjectsOfClasses_forKey_(coder, v88, v87, @"targetMeshes");
      v86 = objc_msgSend_vfx_decodeArrayOfObjectsOfClasses_forKey_(coder, v89, v87, @"correctiveMeshes");
    }

    v75 = v86;
    goto LABEL_36;
  }

  v61 = v59;
  if (objc_msgSend_count(v54, v57, v60))
  {
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v62, &v109, v114, 16);
    if (!v64)
    {
      v75 = 0;
      goto LABEL_36;
    }

    v67 = v64;
    v106 = v8;
    v68 = 0;
    v69 = *v110;
    do
    {
      for (i = 0; i != v67; ++i)
      {
        if (*v110 != v69)
        {
          objc_enumerationMutation(v54);
        }

        v68 += objc_msgSend_unsignedIntegerValue(*(*(&v109 + 1) + 8 * i), v65, v66);
      }

      v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v65, &v109, v114, 16);
    }

    while (v67);
    if (v68)
    {
      goto LABEL_27;
    }

LABEL_33:
    v75 = 0;
    goto LABEL_34;
  }

  v106 = v8;
  v68 = objc_msgSend_count(v108, v62, v63);
  if (!v68)
  {
    goto LABEL_33;
  }

LABEL_27:
  v71 = objc_msgSend_count(v61, v65, v66) - v68;
  v73 = objc_msgSend_subarrayWithRange_(v61, v72, 0, v71);
  v75 = objc_msgSend_subarrayWithRange_(v61, v74, v71, v68);
  v61 = v73;
LABEL_34:
  v7 = 0x1E7A77000;
  v8 = v106;
LABEL_36:
  if (v17 | v75)
  {
    objc_msgSend_setTargetsAndInBetweens_inBetweenCounts_inBetweenWeights_correctives_driverCounts_driverIndices_inBetweenCounts_inBetweenWeights_(v6, v65, v61, v17, v32, v54, v107);
  }

  else
  {
    objc_msgSend_setTargets_(v6, v65, v61);
  }

  v90 = objc_opt_class();
  v92 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v91, v90, @"weights");
  objc_msgSend_setWeights_(v6, v93, v92);
  v94 = objc_opt_class();
  v96 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v95, v94, @"name");
  objc_msgSend_setName_(v6, v97, v96);
  if (objc_msgSend_containsValueForKey_(coder, v98, @"shouldMorphNormals"))
  {
    v100 = objc_msgSend_decodeBoolForKey_(coder, v99, @"shouldMorphNormals");
    objc_msgSend_setUnifiesNormals_(v6, v101, v100 ^ 1u);
  }

  v6->_animationsLock._os_unfair_lock_opaque = 0;
  sub_1AF37249C(coder, v6);
  sub_1AF372B94(coder, v6);
  objc_msgSend__didDecodeVFXMorpher_(v6, v102, coder);
  objc_msgSend_setImmediateMode_(*(v7 + 3192), v103, v8);
  return v6;
}

+ (Class)VFXUID_classForElementOfArray:(id)array
{
  if ((objc_msgSend_isEqualToString_(array, a2, @"weights") & 1) == 0 && (objc_msgSend_isEqualToString_(array, v4, @"channelTargetWeights") & 1) == 0 && !objc_msgSend_isEqualToString_(array, v5, @"channelTargetCounts"))
  {
    return 0;
  }

  return objc_opt_class();
}

@end