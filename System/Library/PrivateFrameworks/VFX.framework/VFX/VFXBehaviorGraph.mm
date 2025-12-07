@interface VFXBehaviorGraph
+ (VFXBehaviorGraph)behaviorGraphWithEntityHandle:(id)handle;
+ (VFXBehaviorGraph)behaviorGraphWithEntityObject:(id)object;
+ (id)presentationBehaviorGraphWithEntityHandle:(id)handle;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (NSArray)animationKeys;
- (NSString)description;
- (VFXBehaviorGraph)init;
- (VFXBehaviorGraph)initWithCoder:(id)coder;
- (VFXBehaviorGraph)initWithCoreEntityHandle:(id)handle;
- (VFXBehaviorGraph)initWithTag:(id)tag;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXWorld)worldRef;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)entityManager;
- (id)identifier;
- (id)initPresentationBehaviorGraphWithCoreEntityHandle:(id)handle;
- (id)name;
- (id)presentationObject;
- (id)unsafeParameterHandleForKey:(id)key;
- (id)valueForKeyPath:(id)path;
- (id)valueForUndefinedKey:(id)key;
- (int64_t)entity;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyBindingsFrom:(id)from;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_syncObjCAnimations;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
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
- (void)resolveTag:(id)tag remap:(id)remap;
- (void)setIdentifier:(id)identifier;
- (void)setName:(id)name;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)setWorld:(id)world;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation VFXBehaviorGraph

- (VFXBehaviorGraph)init
{
  v3.receiver = self;
  v3.super_class = VFXBehaviorGraph;
  result = [(VFXBehaviorGraph *)&v3 init];
  if (result)
  {
    result->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (VFXBehaviorGraph)initWithCoreEntityHandle:(id)handle
{
  v8.receiver = self;
  v8.super_class = VFXBehaviorGraph;
  v4 = [(VFXBehaviorGraph *)&v8 init];
  if (v4)
  {
    v4->_coreHandle = handle;
    v4->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v4, v5, v6);
  }

  return v4;
}

- (VFXBehaviorGraph)initWithTag:(id)tag
{
  v8.receiver = self;
  v8.super_class = VFXBehaviorGraph;
  v4 = [(VFXBehaviorGraph *)&v8 init];
  if (v4)
  {
    v5 = [VFXCoreEntityHandle alloc];
    v4->_coreHandle = objc_msgSend_initWithTag_(v5, v6, tag);
    v4->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (id)initPresentationBehaviorGraphWithCoreEntityHandle:(id)handle
{
  v7.receiver = self;
  v7.super_class = VFXBehaviorGraph;
  v4 = [(VFXBehaviorGraph *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 24) |= 1u;
    v4->_coreHandle = handle;
    v5->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (VFXBehaviorGraph)behaviorGraphWithEntityObject:(id)object
{
  v4 = [self alloc];
  v6 = objc_msgSend_handleWithEntityObject_(VFXCoreEntityHandle, v5, object);
  v8 = objc_msgSend_initWithCoreEntityHandle_(v4, v7, v6);

  return v8;
}

+ (VFXBehaviorGraph)behaviorGraphWithEntityHandle:(id)handle
{
  v4 = [self alloc];
  v6 = objc_msgSend_initWithCoreEntityHandle_(v4, v5, handle);

  return v6;
}

+ (id)presentationBehaviorGraphWithEntityHandle:(id)handle
{
  v4 = [self alloc];
  inited = objc_msgSend_initPresentationBehaviorGraphWithCoreEntityHandle_(v4, v5, handle);

  return inited;
}

- (void)resolveTag:(id)tag remap:(id)remap
{
  objc_msgSend_resolveTag_remap_(self->_coreHandle, a2, tag, remap);

  objc_msgSend__updateModelFromPresentation(self, v5, v6);
}

- (id)presentationObject
{
  selfCopy = self;
  if ((*(self + 24) & 1) == 0)
  {
    Weak = objc_loadWeak(self + 9);
    if (Weak)
    {
      v6 = objc_msgSend_presentationObject(Weak, v4, v5);

      return objc_msgSend_behaviorGraph(v6, v7, v8);
    }

    else
    {
      v9 = [VFXBehaviorGraph alloc];
      inited = objc_msgSend_initPresentationBehaviorGraphWithCoreEntityHandle_(v9, v10, selfCopy[1]);

      return inited;
    }
  }

  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXBehaviorGraph;
  [(VFXBehaviorGraph *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p>", v5, self);
}

- (void)_updateModelFromPresentation
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_bindings(self->_coreHandle, a2, v2);
  if (objc_msgSend_count(v4, v5, v6))
  {
    if (!self->_valueForKey)
    {
      self->_valueForKey = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v23, v27, 16);
    if (v8)
    {
      v11 = v8;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v4);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          coreHandle = self->_coreHandle;
          v16 = objc_msgSend_bindingName(v14, v9, v10);
          v18 = objc_msgSend_bindingValueForKey_(coreHandle, v17, v16);
          if (v18)
          {
            v19 = v18;
            valueForKey = self->_valueForKey;
            v21 = objc_msgSend_bindingName(v14, v9, v10);
            objc_msgSend_setValue_forKey_(valueForKey, v22, v19, v21);
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v9, &v23, v27, 16);
      }

      while (v11);
    }
  }
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF29E8E8;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (int64_t)entity
{
  v3 = *(self + 24);
  v4 = objc_msgSend_entityObject(self->_coreHandle, a2, v2);
  if (v3)
  {
    v4 = objc_msgSend_presentationProperties(v4, v5, v6);
  }

  return objc_msgSend_objectID(v4, v5, v6);
}

- (id)entityManager
{
  v3 = *(self + 24);
  v4 = objc_msgSend_entityObject(self->_coreHandle, a2, v2);
  if (v3)
  {
    v4 = objc_msgSend_presentationProperties(v4, v5, v6);
  }

  return objc_msgSend_opaqueEntityManager(v4, v5, v6);
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
      v9[2] = sub_1AF29EB6C;
      v9[3] = &unk_1E7A7E220;
      v9[4] = self;
      v9[5] = name;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
    }
  }
}

- (id)name
{
  if ((*(self + 24) & 1) == 0)
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
  coreHandle = self->_coreHandle;
  if (coreHandle)
  {
    (*(block + 2))(block, coreHandle, 0, 0);
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, coreHandle, block);
}

- (void)addWorldReference:(id)reference
{
  if (self->_world != reference)
  {
    objc_msgSend_setWorld_(self, a2, reference);
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
      v9[2] = sub_1AF29EEA0;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF29EF00;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 24) & 1) == 0)
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

    if ((*(self + 24) & 1) == 0)
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
    v16[2] = sub_1AF29F214;
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
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v14, self, v20, MEMORY[0x1E69E9820], 3221225472, sub_1AF29F598, &unk_1E7A7E1D0, self, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6]);
  }

  else
  {
    v17 = v16;
    v18 = objc_msgSend_timingFunction(VFXTransaction, v14, v15);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v19, self, v21, v20[0], v20[1], v20[2], v20[3], v20[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF29F588, &unk_1E7A7E2E8, self, v18, *&v17);
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
    v17[2] = sub_1AF29F688;
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
      v17[2] = sub_1AF29F824;
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
    v21[2] = sub_1AF29FC44;
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
  v8[2] = sub_1AF29FD88;
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
  v4[2] = sub_1AF29FE54;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v4 = objc_msgSend__vfxBindings(from, a2, from);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF29FF00;
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
    v9[2] = sub_1AF2A0038;
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
  v4[2] = sub_1AF2A0174;
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

- (id)valueForKeyPath:(id)path
{
  if (!path)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  sub_1AF3716AC(path, &v11, &v10);
  if (v10)
  {
    v6 = objc_msgSend_valueForKey_(self, v5, v11);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return objc_msgSend_VFX_valueForKey_(v6, v7, v10);
    }
  }

  v9.receiver = self;
  v9.super_class = VFXBehaviorGraph;
  return [(VFXBehaviorGraph *)&v9 valueForKeyPath:path];
}

- (id)valueForUndefinedKey:(id)key
{
  if ((*(self + 24) & 1) != 0 || (v5 = objc_msgSend_valueForKey_(self->_valueForKey, a2, key)) == 0)
  {
    v6 = objc_msgSend_worldRef(self, a2, key);
    v8 = v6;
    if (v6)
    {
      sub_1AF1CEA20(v6, v7);
    }

    coreHandle = self->_coreHandle;
    if (*(self + 24))
    {
      v10 = objc_msgSend_bindingPresentationValueForKey_(coreHandle, v7, key);
    }

    else
    {
      v10 = objc_msgSend_bindingValueForKey_(coreHandle, v7, key);
    }

    v5 = v10;
    if (!v10)
    {
      v5 = objc_msgSend_valueForKeyPath_(self->_coreHandle, v11, key);
    }

    if (v8)
    {
      sub_1AF1CEA9C(v8, v11);
    }
  }

  return v5;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  if (objc_msgSend_setBindingValue_forKey_(self->_coreHandle, a2, value))
  {
    valueForKey = self->_valueForKey;
    if (!valueForKey)
    {
      valueForKey = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_valueForKey = valueForKey;
    }

    objc_msgSend_setValue_forKey_(valueForKey, v7, value, key);
  }

  else
  {
    coreHandle = self->_coreHandle;

    objc_msgSend_setValue_forKeyPath_(coreHandle, v7, value, key);
  }
}

- (id)unsafeParameterHandleForKey:(id)key
{
  v3 = *(self + 24);
  coreHandle = self->_coreHandle;
  if (v3)
  {
    return objc_msgSend_presentationBindingForKey_(coreHandle, a2, key);
  }

  else
  {
    return MEMORY[0x1EEE66B58](coreHandle, sel_bindingForKey_, key);
  }
}

- (void)copyTo:(id)to withContext:(id)context
{
  objc_msgSend_begin(VFXTransaction, a2, to);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1);
  *(to + 1) = sub_1AF2BED30(self->_coreHandle, context);
  objc_msgSend__updateModelFromPresentation(to, v8, v9);
  objc_msgSend__copyAnimationsFrom_(to, v10, self);
  objc_msgSend__copyBindingsFrom_(to, v11, self);

  *(to + 5) = objc_msgSend_mutableCopy(self->_valueForKey, v12, v13);

  objc_msgSend_commitImmediate(VFXTransaction, v14, v15);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  if (*(self + 24))
  {
    objc_msgSend__updateModelFromPresentation(self, a2, coder);
  }

  objc_msgSend_encodeObject_forKey_(coder, a2, self->_coreHandle, @"coreHandle");
  sub_1AF372440(coder, self, v5);

  sub_1AF3728B4(coder, self, v6);
}

- (VFXBehaviorGraph)initWithCoder:(id)coder
{
  v22.receiver = self;
  v22.super_class = VFXBehaviorGraph;
  v6 = [(VFXBehaviorGraph *)&v22 init];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    if (objc_msgSend_containsValueForKey_(coder, v9, @"rootIdentifier"))
    {
      v10 = objc_opt_class();
      v12 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"rootIdentifier");
      v13 = [VFXCoreEntityHandle alloc];
      v15 = objc_msgSend_initWithTag_(v13, v14, v12);
    }

    else
    {
      v18 = objc_opt_class();
      v15 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v19, v18, @"coreHandle");
    }

    v6->_coreHandle = v15;
    objc_msgSend__updateModelFromPresentation(v6, v16, v17);
    v6->_animationsLock._os_unfair_lock_opaque = 0;
    sub_1AF37249C(coder, v6);
    sub_1AF372B94(coder, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v20, v7);
  }

  return v6;
}

@end