@interface VFXAnimationPlayer
+ (id)animationPlayerWithAnimation:(id)animation;
+ (id)animationPlayerWithAnimationPlayerRef:(__CFXAnimationPlayer *)ref;
+ (id)animationPlayerWithVFXAnimation:(id)animation;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (NSArray)animationKeys;
- (NSString)description;
- (VFXAnimationPlayer)initWithAnimationPlayerRef:(__CFXAnimationPlayer *)ref;
- (VFXAnimationPlayer)initWithCoder:(id)coder;
- (VFXAnimationPlayer)initWithVFXAnimation:(id)animation;
- (VFXWorld)world;
- (__CFXAnimationManager)animationManager;
- (__CFXWorld)worldRef;
- (id)_vfxAnimationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_copyAnimationsFrom:(id)from;
- (void)_copyBindingsFrom:(id)from;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_setAnimation:(id)animation;
- (void)_setSourceObject:(id)object forBinding:(id)binding;
- (void)_syncObjCAnimations;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)addWorldReference:(id)reference;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)commonInit;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAnimationReferencesUsingBlock:(id)block;
- (void)play;
- (void)prepareWithTarget:(id)target implicitDuration:(double)duration;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)duration;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(float)duration;
- (void)removeWorldReference:(id)reference;
- (void)setBlendFactor:(float)factor;
- (void)setPaused:(BOOL)paused;
- (void)setSpeed:(float)speed;
- (void)setTimeOrigin:(unint64_t)origin;
- (void)setTimeSource:(unint64_t)source;
- (void)setWorld:(id)world;
- (void)stop;
- (void)stopWithBlendOutDuration:(double)duration;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation VFXAnimationPlayer

- (void)commonInit
{
  __asm { FMOV            V0.2S, #1.0 }

  *&self->_weight = _D0;
  self->_paused = 0;
  self->_timeSource = 0;
  self->_timeOrigin = 0;
}

+ (id)animationPlayerWithAnimation:(id)animation
{
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithVFXAnimation_(v4, v5, animation);

  return v6;
}

- (VFXAnimationPlayer)initWithAnimationPlayerRef:(__CFXAnimationPlayer *)ref
{
  v17.receiver = self;
  v17.super_class = VFXAnimationPlayer;
  v4 = [(VFXAnimationPlayer *)&v17 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_playerRef = v5;
    v7 = sub_1AF11B17C(v5, v6);
    v4->_animation = objc_msgSend_animationWithCFXAnimation_(VFXAnimation, v8, v7);
    v4->_weight = sub_1AF11B4B8(ref, v9);
    v4->_speed = sub_1AF11B3D4(ref, v10);
    v4->_paused = sub_1AF11B5C0(ref, v11);
    v4->_timeSource = sub_1AF11B874(ref, v12);
    v4->_timeOrigin = sub_1AF11B950(ref, v13);
    v4->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__syncObjCAnimations(v4, v14, v15);
  }

  return v4;
}

+ (id)animationPlayerWithAnimationPlayerRef:(__CFXAnimationPlayer *)ref
{
  v4 = [self alloc];
  v6 = objc_msgSend_initWithAnimationPlayerRef_(v4, v5, ref);

  return v6;
}

- (VFXAnimationPlayer)initWithVFXAnimation:(id)animation
{
  v12.receiver = self;
  v12.super_class = VFXAnimationPlayer;
  v6 = [(VFXAnimationPlayer *)&v12 init];
  if (v6)
  {
    v7 = objc_msgSend_animationRef(animation, v4, v5);
    v6->_playerRef = sub_1AF11B050(v7, v8);
    v6->_animation = animation;
    v6->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend_commonInit(v6, v9, v10);
  }

  return v6;
}

+ (id)animationPlayerWithVFXAnimation:(id)animation
{
  v4 = [self alloc];
  v6 = objc_msgSend_initWithVFXAnimation_(v4, v5, animation);

  return v6;
}

- (void)dealloc
{
  playerRef = self->_playerRef;
  if (playerRef)
  {
    CFRelease(playerRef);
    self->_playerRef = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXAnimationPlayer;
  [(VFXAnimationPlayer *)&v4 dealloc];
}

- (void)_setAnimation:(id)animation
{
  animation = self->_animation;
  if (animation != animation)
  {

    self->_animation = animation;
    playerRef = self->_playerRef;
    if (playerRef)
    {
      CFRelease(playerRef);
      self->_playerRef = 0;
    }

    if (animation)
    {
      v9 = objc_msgSend_animationRef(animation, v6, v7);
      v11 = sub_1AF11B050(v9, v10);
      self->_playerRef = v11;
      sub_1AF11B41C(v11, v12, self->_weight);
      sub_1AF11B334(self->_playerRef, v13, self->_speed);
      v14 = self->_playerRef;
      paused = self->_paused;

      sub_1AF11B500(v14, paused);
    }
  }
}

- (void)prepareWithTarget:(id)target implicitDuration:(double)duration
{
  objc_msgSend_prepareWithTarget_implicitDuration_(self->_animation, a2, target, duration);
  playerRef = self->_playerRef;
  v8 = objc_msgSend_animationRef(self->_animation, v6, v7);

  sub_1AF11B0FC(playerRef, v8);
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_msgSend_begin(VFXTransaction, a2, zone);
  objc_msgSend_setImmediateMode_(VFXTransaction, v4, 1);
  v5 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_animation(self, v6, v7);
  v10 = objc_msgSend_initWithVFXAnimation_(v5, v9, v8);
  objc_msgSend_weight(self, v11, v12);
  objc_msgSend_setWeight_(v10, v13, v14);
  objc_msgSend_speed(self, v15, v16);
  objc_msgSend_setSpeed_(v10, v17, v18);
  v21 = objc_msgSend_paused(self, v19, v20);
  objc_msgSend_setPaused_(v10, v22, v21);
  v25 = objc_msgSend_usesAbsoluteTime(self, v23, v24);
  objc_msgSend_setUsesAbsoluteTime_(v10, v26, v25);
  objc_msgSend_commit(VFXTransaction, v27, v28);
  return v10;
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

    if ((*(self + 20) & 1) == 0)
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
    v16[2] = sub_1AF296FFC;
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
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v14, self, v20, MEMORY[0x1E69E9820], 3221225472, sub_1AF297380, &unk_1E7A7E1D0, self, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6]);
  }

  else
  {
    v17 = v16;
    v18 = objc_msgSend_timingFunction(VFXTransaction, v14, v15);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v19, self, v21, v20[0], v20[1], v20[2], v20[3], v20[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF297370, &unk_1E7A7E2E8, self, v18, *&v17);
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
    v17[2] = sub_1AF297470;
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
      v23[2] = sub_1AF29760C;
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
    v21[2] = sub_1AF297A2C;
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
  v8[2] = sub_1AF297B70;
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
  v4[2] = sub_1AF297C3C;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)from
{
  v4 = objc_msgSend__vfxBindings(from, a2, from);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF297CE8;
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
    v9[2] = sub_1AF297E20;
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
  v4[2] = sub_1AF297F5C;
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
      v9[2] = sub_1AF2982D8;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF298338;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 20) & 1) == 0)
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

- (void)setBlendFactor:(float)factor
{
  if (self->_weight != factor)
  {
    v7 = v3;
    v8 = v4;
    self->_weight = factor;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2984AC;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = factor;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"blendFactor", v5);
  }
}

- (void)setSpeed:(float)speed
{
  if (self->_speed != speed)
  {
    v7 = v3;
    v8 = v4;
    self->_speed = speed;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF298560;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = speed;
    objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"speed", v5);
  }
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    v7 = v3;
    v8 = v4;
    self->_paused = paused;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF298610;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    pausedCopy = paused;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)play
{
  self->_paused = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2986A0;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)stop
{
  self->_paused = 1;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF29872C;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)stopWithBlendOutDuration:(double)duration
{
  self->_paused = 1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2987BC;
  v3[3] = &unk_1E7A7E248;
  v3[4] = self;
  *&v3[5] = duration;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setTimeSource:(unint64_t)source
{
  if (self->_timeSource != source)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_timeSource = source;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF29886C;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = source;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)setTimeOrigin:(unint64_t)origin
{
  if (self->_timeOrigin != origin)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_timeOrigin = origin;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF298918;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = origin;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeDouble_forKey_(coder, a2, @"weight", self->_weight);
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"speed", self->_speed);
  objc_msgSend_encodeBool_forKey_(coder, v6, self->_paused, @"paused");
  objc_msgSend_encodeInteger_forKey_(coder, v7, self->_timeSource, @"timeSource");
  objc_msgSend_encodeInteger_forKey_(coder, v8, self->_timeOrigin, @"timeOrigin");
  objc_msgSend_encodeObject_forKey_(coder, v9, self->_animation, @"animation");

  sub_1AF3728B4(coder, self, v10);
}

- (VFXAnimationPlayer)initWithCoder:(id)coder
{
  v41.receiver = self;
  v41.super_class = VFXAnimationPlayer;
  v4 = [(VFXAnimationPlayer *)&v41 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_commonInit(v4, v5, v6);
    v10 = objc_msgSend_immediateMode(VFXTransaction, v8, v9);
    objc_msgSend_setImmediateMode_(VFXTransaction, v11, 1);
    v12 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v13, v12, @"animation");
    v7->_animation = v14;
    if (v14)
    {
      v7->_animationsLock._os_unfair_lock_opaque = 0;
      v17 = objc_msgSend_animationRef(v14, v15, v16);
      v7->_playerRef = sub_1AF11B050(v17, v18);
      objc_msgSend_decodeDoubleForKey_(coder, v19, @"weight");
      *&v20 = v20;
      objc_msgSend_setWeight_(v7, v21, v22, v20);
      objc_msgSend_decodeDoubleForKey_(coder, v23, @"speed");
      *&v24 = v24;
      objc_msgSend_setSpeed_(v7, v25, v26, v24);
      v28 = objc_msgSend_decodeBoolForKey_(coder, v27, @"paused");
      objc_msgSend_setPaused_(v7, v29, v28);
      if (objc_msgSend_containsValueForKey_(coder, v30, @"usesAbsoluteTime"))
      {
        objc_msgSend_setTimeSource_(v7, v31, 0);
        v34 = objc_msgSend_decodeBoolForKey_(coder, v32, @"usesAbsoluteTime");
      }

      else
      {
        v36 = objc_msgSend_decodeIntegerForKey_(coder, v31, @"timeSource");
        objc_msgSend_setTimeSource_(v7, v37, v36);
        v34 = objc_msgSend_decodeIntegerForKey_(coder, v38, @"timeOrigin");
      }

      objc_msgSend_setTimeOrigin_(v7, v33, v34);
      sub_1AF372B94(coder, v7);
      objc_msgSend_setImmediateMode_(VFXTransaction, v39, v10);
    }

    else
    {
      v35 = sub_1AF0D5194(0, v15);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF47EC();
      }

      return 0;
    }
  }

  return v7;
}

- (NSString)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_animation(self, a2, v2);
  return objc_msgSend_stringWithFormat_(v4, v6, @"<VFXAnimationPlayer(%p) animation=%@>", self, v5);
}

@end