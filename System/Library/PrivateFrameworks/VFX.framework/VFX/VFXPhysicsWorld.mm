@interface VFXPhysicsWorld
- (BOOL)_isDefault;
- (BOOL)_needsRedraw;
- (BOOL)parseSpecialKey:(id)key withPath:(id)path intoDestination:(id *)destination;
- (NSArray)physicsJoints;
- (VFXPhysicsWorld)initWithCoder:(id)coder;
- (VFXPhysicsWorld)initWithWorld:(id)world;
- (btVehicleRaycaster)_defaultVehicleRayCaster;
- (id)_physicsContact;
- (id)_rayTestWithSegmentFromPoint:(btVector3)point toPoint:(btVector3)toPoint options:(id)options;
- (id)contactTestBetweenBody:(id)body andBody:(id)andBody options:(id)options;
- (id)contactTestWithBody:(id)body options:(id)options;
- (id)gravityValue;
- (id)rayTestWithSegmentFrom:(id)from to:(id)to options:(id)options;
- (id)rayTestWithSegmentFromPoint:(VFXPhysicsWorld *)self toPoint:(SEL)point options:(id)options;
- (id)valueForUndefinedKey:(id)key;
- (void)_allowGhostObjects;
- (void)_createDynamicWorldIfNeeded;
- (void)_drawDebugInAuthoringEnvironment:(void *)environment;
- (void)_preTick:(double)tick;
- (void)_registerPhysicsJoints;
- (void)_reset;
- (void)_step:(double)_step;
- (void)activatePhysicsJoint:(id)joint;
- (void)addPhysicsBody:(id)body nodeRef:(__CFXNode *)ref colGroup:(unint64_t)group colMask:(unint64_t)mask colTest:(unint64_t)test;
- (void)addPhysicsJoint:(id)joint;
- (void)commonInit;
- (void)convexSweepTestWithShape:(int8x16_t)shape fromTransform:(__n128)transform toTransform:(__n128)toTransform options:(int8x16_t)options;
- (void)copyTo:(id)to withContext:(id)context;
- (void)deactivatePhysicsJoint:(id)joint;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateBodiesUsingBlock:(id)block;
- (void)removePhysicsBody:(id)body handle:(void *)handle;
- (void)removePhysicsJoint:(id)joint;
- (void)setContactDelegate:(id)delegate;
- (void)setGravity:(VFXPhysicsWorld *)self;
- (void)setGravityValue:(id)value;
- (void)setScale:(float)scale;
- (void)setTimeStep:(double)step;
- (void)setUseFixedTimeStep:(BOOL)step;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)updateCollisionPairs;
- (void)wakeUpAllBodies;
- (void)worldWillDie;
@end

@implementation VFXPhysicsWorld

- (id)gravityValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_gravity(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_gravity(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_gravity(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setGravityValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v21 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v20 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);

  objc_msgSend_setGravity_(self, v18, v19, COERCE_DOUBLE(__PAIR64__(v20, v21)));
}

- (id)rayTestWithSegmentFrom:(id)from to:(id)to options:(id)options
{
  v9 = objc_msgSend_objectAtIndexedSubscript_(from, a2, 0);
  objc_msgSend_floatValue(v9, v10, v11);
  v13 = objc_msgSend_objectAtIndexedSubscript_(from, v12, 1);
  objc_msgSend_floatValue(v13, v14, v15);
  v17 = objc_msgSend_objectAtIndexedSubscript_(from, v16, 2);
  objc_msgSend_floatValue(v17, v18, v19);
  v21 = objc_msgSend_objectAtIndexedSubscript_(to, v20, 0);
  objc_msgSend_floatValue(v21, v22, v23);
  v25 = objc_msgSend_objectAtIndexedSubscript_(to, v24, 1);
  objc_msgSend_floatValue(v25, v26, v27);
  v29 = objc_msgSend_objectAtIndexedSubscript_(to, v28, 2);
  objc_msgSend_floatValue(v29, v30, v31);

  return MEMORY[0x1EEE66B58](self, sel_rayTestWithSegmentFromPoint_toPoint_options_, options);
}

- (void)_preTick:(double)tick
{
  self->_elapsedTime = self->_elapsedTime + tick;
  v5 = objc_msgSend_world(self, a2, v3);
  v8 = objc_msgSend_worldRef(v5, v6, v7);
  if (v8)
  {
    v10 = v8;
    if (sub_1AF1CEF88(v8, v9))
    {
      sub_1AF369018(&v40, self->_btWorld + 320);
      v13 = sub_1AF1CF878(v10, v11);
      if (v13)
      {
        if (SHIDWORD(v40) >= 1)
        {
          v17 = 0;
          v18 = 8 * HIDWORD(v40);
          do
          {
            v19 = *(v41 + v17);
            v20 = *(v19 + 200);
            if (v20)
            {
              v21 = *(v20 + 8);
            }

            else
            {
              v21 = 0xFFFFFFFFLL;
            }

            LODWORD(v15) = *(v19 + 532);
            elapsedTime = self->_elapsedTime;
            *&elapsedTime = elapsedTime;
            *&v14 = 1.0 / *(v19 + 384);
            LODWORD(v16) = 1.0;
            objc_msgSend_evaluateForceFieldsAtPosition_velocity_mass_charge_time_dt_categoryMask_(v13, v12, v21, *(v19 + 64), *(v19 + 352), v14, v15, elapsedTime, v16);
            v23.i32[3] = 0;
            *(v19 + 464) = vaddq_f32(*(v19 + 464), vmulq_f32(v23, *(v19 + 400)));
            v17 += 8;
          }

          while (v18 != v17);
        }
      }

      else
      {
        v32 = sub_1AF0D5194(0, v12);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDFAA8C(v32, v33, v34, v35, v36, v37, v38, v39);
        }
      }

      if (v41)
      {
        if (v42 == 1)
        {
          sub_1AFDA72A0(v41);
        }
      }
    }
  }

  else
  {
    v24 = sub_1AF0D5194(0, v9);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFAAC4(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }
}

- (void)_createDynamicWorldIfNeeded
{
  if (!self->_btWorld)
  {
    os_unfair_lock_lock(&self->_lock);
    if (!self->_btWorld)
    {
      v3 = 0;
      v4 = 0;
      v5 = xmmword_1AFE47CE0;
      operator new();
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (id)_physicsContact
{
  result = self->_contact;
  if (!result)
  {
    result = objc_alloc_init(VFXPhysicsContact);
    self->_contact = result;
  }

  return result;
}

- (void)commonInit
{
  if (qword_1ED737C08 != -1)
  {
    sub_1AFDFAAFC();
  }

  self->_lock._os_unfair_lock_opaque = 0;
  self->_registeredBodies = objc_alloc_init(MEMORY[0x1E695DFA8]);
}

- (VFXPhysicsWorld)initWithWorld:(id)world
{
  v14.receiver = self;
  v14.super_class = VFXPhysicsWorld;
  v4 = [(VFXPhysicsWorld *)&v14 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_commonInit(v4, v5, v6);
    *v7->_gravity = xmmword_1AFE47CF0;
    __asm { FMOV            V0.2S, #1.0 }

    *&v7->_speed = _D0;
    v7->_useFixedTimeStep = 0;
    v7->_timeStep = 0.0166666667;
    v7->_vfxWorld = world;
  }

  return v7;
}

- (void)dealloc
{
  v32 = *MEMORY[0x1E69E9840];
  physicsJoints = self->_physicsJoints;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_1AF362D84;
  v30[3] = &unk_1E7A796D8;
  v30[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(physicsJoints, a2, v30);
  if (self->_btWorld)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    registeredBodies = self->_registeredBodies;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(registeredBodies, v4, &v26, v31, 16);
    if (v6)
    {
      v9 = v6;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(registeredBodies);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = objc_msgSend__handle(v12, v7, v8);
          if (v13)
          {
            (*(*self->_btWorld + 184))(self->_btWorld, v13);
          }

          objc_msgSend_flagAsActive_(v12, v14, 0);
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(registeredBodies, v7, &v26, v31, 16);
      }

      while (v9);
    }
  }

  vehicleRayCaster = self->_vehicleRayCaster;
  if (vehicleRayCaster)
  {
    (*(vehicleRayCaster->var0 + 1))(vehicleRayCaster);
  }

  debugDrawer = self->_debugDrawer;
  if (debugDrawer)
  {
    (*(debugDrawer->var0 + 1))(debugDrawer);
  }

  btWorld = self->_btWorld;
  if (btWorld)
  {
    v18 = btWorld[5];
    v19 = v18[1311];
    v20 = btWorld[12];
    v21 = (*(*btWorld + 200))(btWorld);
    if (self->_ghostPairCallback)
    {
      v22 = (*(*v20 + 72))(v20);
      (*(*v22 + 120))(v22, 0);
      ghostPairCallback = self->_ghostPairCallback;
      if (ghostPairCallback)
      {
        (*(ghostPairCallback->var0 + 1))(ghostPairCallback);
      }

      self->_ghostPairCallback = 0;
    }

    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    (*(*v18 + 8))(v18);
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v24 = self->_btWorld;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }
  }

  objc_storeWeak(&self->_contactDelegate, 0);
  v25.receiver = self;
  v25.super_class = VFXPhysicsWorld;
  [(VFXPhysicsWorld *)&v25 dealloc];
}

- (void)worldWillDie
{
  self->_vfxWorld = 0;
  btWorld = self->_btWorld;
  if (btWorld)
  {
    v3 = btWorld[3];
    if (v3)
    {
      if (*(btWorld + 32) == 1)
      {
        sub_1AFDA72A0(v3);
      }
    }

    *(btWorld + 32) = 1;
    btWorld[3] = 0;
    *(btWorld + 3) = 0;
    *(btWorld + 4) = 0;
  }
}

- (BOOL)_isDefault
{
  v3 = VFXVector3EqualToVector3(*self->_gravity, xmmword_1AFE47CF0);
  if (v3)
  {
    LOBYTE(v3) = self->_speed == 1.0 && self->_scale == 1.0 && !self->_useFixedTimeStep && self->_timeStep == 0.0166666667 && objc_msgSend_count(self->_physicsJoints, v4, v5) == 0;
  }

  return v3;
}

- (void)wakeUpAllBodies
{
  btWorld = self->_btWorld;
  if (btWorld)
  {
    sub_1AFDA4890(btWorld);
  }
}

- (void)setGravity:(VFXPhysicsWorld *)self
{
  *self->_gravity = v2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF362EE8;
  v3[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v4 = v2;
  objc_msgSend__postCommandWithBlock_(self, a2, v3);
}

- (void)setScale:(float)scale
{
  if (self->_scale != scale)
  {
    self->_scale = scale;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF363078;
    v9[3] = &unk_1E7A7E270;
    v9[4] = self;
    scaleCopy = scale;
    objc_msgSend__postCommandWithBlock_(self, a2, v9);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF363090;
    v7[3] = &unk_1E7A7F8D8;
    scaleCopy2 = scale;
    objc_msgSend_enumerateBodiesUsingBlock_(self, v5, v7);
    debugDrawer = self->_debugDrawer;
    if (debugDrawer)
    {
      debugDrawer->var2 = 1.0 / self->_scale;
    }
  }
}

- (void)setTimeStep:(double)step
{
  v4 = fmin(step, 0.0666666701);
  if (v4 >= 0.00416666688)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0.00416666688;
  }

  self->_timeStep = v5;
  v6 = objc_msgSend_clock(self->_vfxWorld, a2, v3);

  objc_msgSend_setTimeStep_(v6, v7, v8, v5);
}

- (void)setUseFixedTimeStep:(BOOL)step
{
  stepCopy = step;
  self->_useFixedTimeStep = step;
  v4 = objc_msgSend_clock(self->_vfxWorld, a2, step);

  objc_msgSend_setUseFixedTimeStep_(v4, v5, stepCopy);
}

- (void)setContactDelegate:(id)delegate
{
  if (objc_loadWeak(&self->_contactDelegate) != delegate)
  {
    objc_storeWeak(&self->_contactDelegate, delegate);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF3631F4;
  v6[3] = &unk_1E7A7E220;
  v6[4] = self;
  v6[5] = delegate;
  objc_msgSend__postCommandWithBlock_(self, v5, v6);
}

- (void)addPhysicsJoint:(id)joint
{
  v5 = objc_msgSend_physicsWorld(joint, a2, joint);
  if (v5 != self)
  {
    objc_msgSend_removePhysicsJoint_(v5, v6, joint);
    os_unfair_lock_lock(&self->_lock);
    physicsJoints = self->_physicsJoints;
    if (!physicsJoints)
    {
      physicsJoints = objc_alloc_init(MEMORY[0x1E695DF70]);
      self->_physicsJoints = physicsJoints;
    }

    objc_msgSend_addObject_(physicsJoints, v7, joint);
    os_unfair_lock_unlock(&self->_lock);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF3632DC;
    v10[3] = &unk_1E7A7E220;
    v10[4] = self;
    v10[5] = joint;
    objc_msgSend__postCommandWithBlock_(self, v9, v10);
  }
}

- (void)activatePhysicsJoint:(id)joint
{
  if ((objc_msgSend_isActive(joint, a2, joint) & 1) == 0)
  {
    objc_msgSend__addToPhysicsWorld_(joint, v5, self);
    v8 = objc_msgSend_bodyA(joint, v6, v7);
    objc_msgSend__activate(v8, v9, v10);
    v13 = objc_msgSend_bodyB(joint, v11, v12);

    objc_msgSend__activate(v13, v14, v15);
  }
}

- (void)deactivatePhysicsJoint:(id)joint
{
  if (objc_msgSend_isActive(joint, a2, joint))
  {
    objc_msgSend__willRemoveFromPhysicsWorld_(joint, v5, self);
    v8 = objc_msgSend_bodyA(joint, v6, v7);
    objc_msgSend__activate(v8, v9, v10);
    v13 = objc_msgSend_bodyB(joint, v11, v12);

    objc_msgSend__activate(v13, v14, v15);
  }
}

- (void)removePhysicsJoint:(id)joint
{
  os_unfair_lock_lock(&self->_lock);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF36345C;
  v7[3] = &unk_1E7A7E220;
  v7[4] = self;
  v7[5] = joint;
  objc_msgSend__postCommandWithBlock_(self, v5, v7);
  objc_msgSend_removeObject_(self->_physicsJoints, v6, joint);
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)parseSpecialKey:(id)key withPath:(id)path intoDestination:(id *)destination
{
  v8 = objc_msgSend_rangeOfString_(key, a2, @"[", path);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v11 = v8;
  v12 = v8 + 1;
  if (v8 + 1 >= objc_msgSend_length(key, v9, v10))
  {
    return 0;
  }

  v14 = objc_msgSend_substringToIndex_(key, v13, v11);
  v16 = objc_msgSend_substringFromIndex_(key, v15, v12);
  v18 = objc_msgSend_rangeOfString_(v16, v17, @"]");
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v20 = objc_msgSend_substringToIndex_(v16, v19, v18);
  v23 = objc_msgSend_intValue(v20, v21, v22);
  v25 = objc_msgSend_valueForKey_(self, v24, v14);
  if (objc_msgSend_count(v25, v26, v27) <= v23)
  {
    return 0;
  }

  *destination = objc_msgSend_objectAtIndex_(v25, v28, v23);
  return 1;
}

- (id)valueForUndefinedKey:(id)key
{
  v13 = 0;
  if (objc_msgSend_parseSpecialKey_withPath_intoDestination_(self, a2, key, key, &v13))
  {
    return v13;
  }

  if (objc_msgSend_isEqual_(key, v5, @"gravity"))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_gravity(self, v7, v8);
    return objc_msgSend_valueWithVFXFloat3_(v9, v10, v11);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = VFXPhysicsWorld;
    return [(VFXPhysicsWorld *)&v12 valueForUndefinedKey:key];
  }
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  if (objc_msgSend_isEqual_(key, a2, @"gravity"))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8);

    objc_msgSend_setGravity_(self, v9, v10);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VFXPhysicsWorld;
    [(VFXPhysicsWorld *)&v11 setValue:value forUndefinedKey:key];
  }
}

- (NSArray)physicsJoints
{
  if (self->_physicsJoints)
  {
    return &self->_physicsJoints->super;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)rayTestWithSegmentFromPoint:(VFXPhysicsWorld *)self toPoint:(SEL)point options:(id)options
{
  HIDWORD(v3) = 0;
  HIDWORD(v4) = 0;
  v6 = v4;
  v7 = v3;
  result = objc_msgSend__rayTestWithSegmentFromPoint_toPoint_options_(self, point, &v7, &v6, options);
  if (!result)
  {
    return MEMORY[0x1E695E0F0];
  }

  return result;
}

- (id)_rayTestWithSegmentFromPoint:(btVector3)point toPoint:(btVector3)toPoint options:(id)options
{
  v7 = v6;
  v8 = v5;
  v11 = objc_msgSend_world(self, a2, options, *point.var0.var0, *&point.var0.var0[1], *&point.var0.var0[2], *&point.var0.var0[3], *toPoint.var0.var0, *&toPoint.var0.var0[1], *&toPoint.var0.var0[2], *&toPoint.var0.var0[3]);
  v14 = objc_msgSend_worldRef(v11, v12, v13);
  if (!v14 || !self->_btWorld)
  {
    return 0;
  }

  v15 = v14;
  v16 = sub_1AF368664(v40, options, v8);
  v18 = objc_msgSend_objectForKey_(v7, v17, @"backfaceCulling", v16);
  if (!v18 || objc_msgSend_BOOLValue(v18, v19, v20))
  {
    v41 |= 1u;
  }

  v21 = objc_msgSend_objectForKey_(v7, v19, @"results");
  if (objc_msgSend_isEqualToString_(v21, v22, @"all"))
  {
    v24 = 2;
  }

  else
  {
    v24 = objc_msgSend_isEqualToString_(v21, v23, @"closest") ^ 1;
  }

  v42 = v24;
  v25 = objc_msgSend_objectForKey_(v7, v23, @"collisionBitMask");
  if (v25)
  {
    v28 = objc_msgSend_unsignedIntegerValue(v25, v26, v27);
  }

  else
  {
    v28 = -1;
  }

  v40[4] = v28;
  sub_1AF1CEA20(v15, v26);
  (*(*self->_btWorld + 64))(self->_btWorld, options, v8, v40);
  sub_1AF1CEA9C(v15, v29);
  if (v42 == 2)
  {
    v31 = v45;
    v32 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v30, v45);
    if (v31 >= 1)
    {
      for (i = 0; i != v31; ++i)
      {
        v35 = sub_1AF3636D4(*(v46 + 8 * i), (v54 + 16 * i), (v50 + 16 * i));
        if (v35)
        {
          objc_msgSend_addObject_(v32, v34, v35);
        }
      }
    }
  }

  else
  {
    v37 = sub_1AF3636D4(v40[2], &v44, &v43);
    if (!v37)
    {
      v32 = 0;
      v38 = 0;
      goto LABEL_22;
    }

    v32 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v36, v37);
  }

  v38 = 1;
LABEL_22:
  v40[0] = &unk_1F24EC768;
  if (v58 && v59 == 1)
  {
    sub_1AFDA72A0(v58);
  }

  v59 = 1;
  v58 = 0;
  v56 = 0;
  v57 = 0;
  if (v54 && v55 == 1)
  {
    sub_1AFDA72A0(v54);
  }

  v55 = 1;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  if (v50 && v51 == 1)
  {
    sub_1AFDA72A0(v50);
  }

  v51 = 1;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  if (v46 && v47 == 1)
  {
    sub_1AFDA72A0(v46);
  }

  if ((v38 & 1) == 0)
  {
    return 0;
  }

  return v32;
}

- (id)contactTestBetweenBody:(id)body andBody:(id)andBody options:(id)options
{
  v9 = objc_msgSend_world(self, a2, body);
  v12 = objc_msgSend_worldRef(v9, v10, v11);
  if (v12)
  {
    btWorld = self->_btWorld;
    if (btWorld)
    {
      v15 = v12;
      v16 = objc_msgSend_objectForKey_(options, v13, @"collisionBitMask");
      if (v16)
      {
        v19 = objc_msgSend_unsignedIntegerValue(v16, v17, v18);
      }

      else
      {
        v19 = -1;
      }

      v28 = &unk_1F24EC798;
      v29 = xmmword_1AFE47B90;
      v30 = xmmword_1AFE21110;
      v31 = v19;
      v32 = 0;
      sub_1AF1CEA20(v15, v17);
      v22 = objc_msgSend__handle(body, v20, v21);
      v25 = objc_msgSend__handle(andBody, v23, v24);
      if (v22 && v25)
      {
        sub_1AFD75F88(self->_btWorld, v22, v25, &v28);
      }

      sub_1AF1CEA9C(v15, v26);
      btWorld = v32;
    }
  }

  else
  {
    btWorld = 0;
  }

  if (btWorld)
  {
    return btWorld;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)contactTestWithBody:(id)body options:(id)options
{
  v7 = objc_msgSend_world(self, a2, body);
  v10 = objc_msgSend_worldRef(v7, v8, v9);
  if (v10)
  {
    btWorld = self->_btWorld;
    if (btWorld)
    {
      v13 = v10;
      v14 = objc_msgSend_objectForKey_(options, v11, @"collisionBitMask");
      if (v14)
      {
        v17 = objc_msgSend_unsignedIntegerValue(v14, v15, v16);
      }

      else
      {
        v17 = -1;
      }

      v23 = &unk_1F24EC798;
      v24 = xmmword_1AFE47B90;
      v25 = xmmword_1AFE21110;
      v26 = v17;
      v27 = 0;
      sub_1AF1CEA20(v13, v15);
      v20 = objc_msgSend__handle(body, v18, v19);
      if (v20)
      {
        sub_1AFD75EC0(self->_btWorld, v20, &v23);
      }

      sub_1AF1CEA9C(v13, v21);
      btWorld = v27;
    }
  }

  else
  {
    btWorld = 0;
  }

  if (btWorld)
  {
    return btWorld;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)convexSweepTestWithShape:(int8x16_t)shape fromTransform:(__n128)transform toTransform:(__n128)toTransform options:(int8x16_t)options
{
  v87 = *MEMORY[0x1E69E9840];
  v15 = objc_msgSend_world(self, a10, a11);
  v18 = objc_msgSend_worldRef(v15, v16, v17);
  if (!v18)
  {
    return MEMORY[0x1E695E0F0];
  }

  v20 = MEMORY[0x1E695E0F0];
  if (self[1])
  {
    v21 = v18;
    v22 = objc_msgSend_objectForKey_(a12, v19, @"ccdPenetration");
    if (v22)
    {
      objc_msgSend_floatValue(v22, v23, v24);
      v26 = v25;
    }

    else
    {
      v26 = 0.0;
    }

    v27 = objc_msgSend_objectForKey_(a12, v23, @"collisionBitMask");
    if (v27)
    {
      v30 = objc_msgSend_unsignedIntegerValue(v27, v28, v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = objc_msgSend_objectForKey_(a12, v28, @"results");
    if (objc_msgSend_isEqualToString_(v31, v32, @"all"))
    {
      v34 = 2;
    }

    else
    {
      v34 = objc_msgSend_isEqualToString_(v31, v33, @"closest") ^ 1;
    }

    sub_1AF1CEA20(v21, v33);
    v36 = objc_msgSend__shapeHandle_(a11, v35, 0);
    v39 = objc_msgSend_btShape(v36, v37, v38);
    if (v39)
    {
      if (*(v39 + 8) > 19)
      {
        v42 = sub_1AF0D5194(v39, v39);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDFAB10(v42, v40, v43, v44, v45, v46, v47, v48);
        }
      }

      else
      {
        *v67.i8 = vzip1_s32(*a2.i8, *shape.i8);
        v67.i64[1] = transform.n128_u32[0];
        v68 = vzip2_s32(*a2.i8, *shape.i8);
        v69 = transform.n128_u32[1];
        v70 = 0;
        v71 = vzip1_s32(*&vextq_s8(a2, a2, 8uLL), *&vextq_s8(shape, shape, 8uLL));
        v72 = transform.n128_u32[2];
        v73 = 0;
        *&v74 = toTransform.n128_u64[0];
        *(&v74 + 1) = toTransform.n128_u32[2];
        *v59.f32 = vzip1_s32(*options.i8, *a7.i8);
        v59.i64[1] = a8.n128_u32[0];
        v60 = vzip2_s32(*options.i8, *a7.i8);
        v61 = a8.n128_u32[1];
        v62 = 0;
        v63 = vzip1_s32(*&vextq_s8(options, options, 8uLL), *&vextq_s8(a7, a7, 8uLL));
        v64 = a8.n128_u32[2];
        v65 = 0;
        *&v66 = a9.n128_u64[0];
        *(&v66 + 1) = a9.n128_u32[2];
        v76 = 1.0;
        v77 = 1;
        v78 = v30;
        v79 = 0;
        v80 = v74;
        v81 = v66;
        v83 = 0;
        v86 = 0;
        v75 = &unk_1F24EC7C8;
        v82 = v34;
        sub_1AFD75D50(self[1], v39, &v67, &v59, &v75, v26);
        if (v76 < 1.0)
        {
          if (v34 == 2)
          {
            v41 = v86;
            goto LABEL_21;
          }

          v50 = sub_1AF363F94(v83, 0, &v85, &v84, 0.0, v76);
          if (v50)
          {
            v41 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v40, v50);
LABEL_21:
            sub_1AF1CEA9C(v21, v40);
            if (v41)
            {
              return v41;
            }

            return v20;
          }
        }
      }
    }

    v41 = 0;
    goto LABEL_21;
  }

  return v20;
}

- (void)updateCollisionPairs
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF3640E4;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend__postCommandWithBlock_(self, a2, v2);
}

- (BOOL)_needsRedraw
{
  if (self->_speed == 0.0)
  {
    LOBYTE(btWorld) = 0;
  }

  else
  {
    btWorld = self->_btWorld;
    if (btWorld)
    {
      LOBYTE(btWorld) = btWorld[448];
    }
  }

  return btWorld & 1;
}

- (void)enumerateBodiesUsingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  registeredBodies = self->_registeredBodies;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(registeredBodies, v6, &v12, v17, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(registeredBodies);
      }

      (*(block + 2))(block, *(*(&v12 + 1) + 8 * v10), &v16);
      if (v16)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(registeredBodies, v11, &v12, v17, 16);
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_reset
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  registeredBodies = self->_registeredBodies;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(registeredBodies, v4, &v18, v22, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(registeredBodies);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        objc_msgSend_clearAllForces(v11, v6, v7);
        objc_msgSend_resetTransform(v11, v12, v13);
        objc_msgSend_setVelocity_(v11, v14, v15, 0.0);
        objc_msgSend_setAngularVelocity_(v11, v16, v17, 0.0);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(registeredBodies, v6, &v18, v22, 16);
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_step:(double)_step
{
  btWorld = self->_btWorld;
  if (btWorld)
  {
    timeStep = self->_timeStep;
    speed = self->_speed;
    _step = speed * _step;
    *&_step = _step;
    v7 = vcvtps_s32_f32(speed * ((1.0 / timeStep) / 15.0));
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = btWorld[5];
    if (!self->_firstSimulationDone)
    {
      self->_firstSimulationDone = 1;
      if (timeStep >= *&_step)
      {
        *&_step = timeStep;
      }
    }

    (*(*btWorld + 104))(btWorld, v8, *&_step);
    if (objc_loadWeak(&self->_contactDelegate))
    {

      sub_1AF364630(v9, v10, v11);
    }
  }
}

- (btVehicleRaycaster)_defaultVehicleRayCaster
{
  result = self->_vehicleRayCaster;
  if (!result)
  {
    objc_msgSend__createDynamicWorldIfNeeded(self, a2, v2);
    operator new();
  }

  return result;
}

- (void)_allowGhostObjects
{
  if (!self->_ghostPairCallback)
  {
    objc_msgSend__createDynamicWorldIfNeeded(self, a2, v2);
    operator new();
  }
}

- (void)_drawDebugInAuthoringEnvironment:(void *)environment
{
  if (self->_btWorld)
  {
    debugDrawer = self->_debugDrawer;
    if (debugDrawer)
    {
      debugDrawer->var3 = environment;
      (*(*self->_btWorld + 32))(self->_btWorld, self->_debugDrawer);
      (*(*self->_btWorld + 48))(self->_btWorld);
      (*(*self->_btWorld + 32))(self->_btWorld, 0);
      self->_debugDrawer->var3 = 0;
    }
  }
}

- (void)addPhysicsBody:(id)body nodeRef:(__CFXNode *)ref colGroup:(unint64_t)group colMask:(unint64_t)mask colTest:(unint64_t)test
{
  v13 = objc_msgSend__handle(self, a2, body);
  if (v13)
  {
    v16 = v13;
    objc_msgSend_centerOfMassOffset(body, v14, v15);
    v23 = v17;
    v20 = objc_msgSend__handle(body, v18, v19);
    sub_1AF3643E4(v16, v20, ref, group, mask, test, v23);
  }

  os_unfair_lock_lock(&self->_lock);
  objc_msgSend_addObject_(self->_registeredBodies, v21, body);
  objc_msgSend_flagAsActive_(body, v22, 1);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removePhysicsBody:(id)body handle:(void *)handle
{
  v24 = *MEMORY[0x1E69E9840];
  btWorld = self->_btWorld;
  if (btWorld)
  {
    (*(*btWorld + 184))(btWorld, handle);
  }

  os_unfair_lock_lock(&self->_lock);
  objc_msgSend_removeObject_(self->_registeredBodies, v7, body);
  objc_msgSend_flagAsActive_(body, v8, 0);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  physicsJoints = self->_physicsJoints;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(physicsJoints, v10, &v19, v23, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(physicsJoints);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        if (objc_msgSend_bodyA(v17, v12, v13) == body || objc_msgSend_bodyB(v17, v12, v18) == body)
        {
          objc_msgSend_deactivatePhysicsJoint_(self, v12, v17);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(physicsJoints, v12, &v19, v23, 16);
    }

    while (v14);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)copyTo:(id)to withContext:(id)context
{
  objc_msgSend_gravity(self, a2, to, context);
  objc_msgSend_setGravity_(to, v6, v7);
  objc_msgSend_speed(self, v8, v9);
  objc_msgSend_setSpeed_(to, v10, v11);
  v14 = objc_msgSend_useFixedTimeStep(self, v12, v13);
  objc_msgSend_setUseFixedTimeStep_(to, v15, v14);
  objc_msgSend_timeStep(self, v16, v17);

  objc_msgSend_setTimeStep_(to, v18, v19);
}

- (void)encodeWithCoder:(id)coder
{
  vfxWorld = self->_vfxWorld;
  if (vfxWorld)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, vfxWorld, @"world");
  }

  physicsJoints = self->_physicsJoints;
  if (physicsJoints)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, physicsJoints, @"joints");
  }

  sub_1AF371A8C(coder, @"gravity", *self->_gravity);
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"speed", self->_speed);
  objc_msgSend_encodeDouble_forKey_(coder, v8, @"scale", self->_scale);
  objc_msgSend_encodeBool_forKey_(coder, v9, self->_useFixedTimeStep, @"useFixedTimeStep");
  timeStep = self->_timeStep;

  objc_msgSend_encodeDouble_forKey_(coder, v10, @"timeStep", timeStep);
}

- (VFXPhysicsWorld)initWithCoder:(id)coder
{
  v36.receiver = self;
  v36.super_class = VFXPhysicsWorld;
  v6 = [(VFXPhysicsWorld *)&v36 init];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend_commonInit(v6, v9, v10);
    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"world");
    objc_msgSend_setWorld_(v6, v14, v13);
    v15 = sub_1AF371BC4(coder, @"gravity");
    objc_msgSend_setGravity_(v6, v16, v17, v15);
    objc_msgSend_decodeDoubleForKey_(coder, v18, @"speed");
    *&v19 = v19;
    objc_msgSend_setSpeed_(v6, v20, v21, v19);
    objc_msgSend_decodeDoubleForKey_(coder, v22, @"scale");
    *&v23 = v23;
    objc_msgSend_setScale_(v6, v24, v25, v23);
    v27 = objc_msgSend_decodeBoolForKey_(coder, v26, @"useFixedTimeStep");
    objc_msgSend_setUseFixedTimeStep_(v6, v28, v27);
    objc_msgSend_decodeDoubleForKey_(coder, v29, @"timeStep");
    objc_msgSend_setTimeStep_(v6, v30, v31);
    v32 = objc_opt_class();
    v6->_tempLoadedJoints = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v33, v32, @"joints");
    objc_msgSend_setImmediateMode_(VFXTransaction, v34, v7);
  }

  return v6;
}

- (void)_registerPhysicsJoints
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  tempLoadedJoints = self->_tempLoadedJoints;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(tempLoadedJoints, a2, &v9, v13, 16);
  if (v4)
  {
    v6 = v4;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(tempLoadedJoints);
        }

        objc_msgSend_addPhysicsJoint_(self, v5, *(*(&v9 + 1) + 8 * i));
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(tempLoadedJoints, v5, &v9, v13, 16);
    }

    while (v6);
  }

  self->_tempLoadedJoints = 0;
}

@end