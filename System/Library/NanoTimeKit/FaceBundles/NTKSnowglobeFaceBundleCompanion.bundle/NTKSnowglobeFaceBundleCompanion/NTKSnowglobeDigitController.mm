@interface NTKSnowglobeDigitController
- (NTKSnowglobeDigitController)initWithDigit:(unint64_t)digit scene:(id)scene queue:(id)queue group:(id)group configureNode:(id)node;
- (SCNVector3)_effectiveOrigin;
- (SCNVector3)exitOrigin;
- (SCNVector3)origin;
- (double)_legMomentOfInertiaForNode:(void *)node body:(float32x4_t *)body;
- (void)_applyLegSpring:(id)spring;
- (void)_applyMotionAcceleration;
- (void)_queue_applyAcceleration;
- (void)_queue_applyLinearSpring;
- (void)_queue_applyRandAcceleration;
- (void)_queue_applyRotationSprings;
- (void)_queue_applyVelocity;
- (void)_queue_didAddToWorld;
- (void)_queue_setGrainIntensity:(float)intensity withCommit:(BOOL)commit;
- (void)_setupWithNode:(id)node configureNode:(id)configureNode;
- (void)applyTapAtLocalPosition:(SCNVector3)position;
- (void)dealloc;
- (void)destroy;
- (void)didCollide;
- (void)resetToOrigin;
- (void)setNode:(id)node;
- (void)setPausePhysics:(BOOL)physics;
- (void)updateAtTime:(double)time;
@end

@implementation NTKSnowglobeDigitController

- (NTKSnowglobeDigitController)initWithDigit:(unint64_t)digit scene:(id)scene queue:(id)queue group:(id)group configureNode:(id)node
{
  v35 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  queueCopy = queue;
  groupCopy = group;
  nodeCopy = node;
  v30.receiver = self;
  v30.super_class = NTKSnowglobeDigitController;
  v17 = [(NTKSnowglobeDigitController *)&v30 init];
  if (v17)
  {
    dispatch_assert_queue_V2(queueCopy);
    objc_storeStrong(&v17->_scene, scene);
    v18 = objc_opt_new();
    physicsBehaviors = v17->_physicsBehaviors;
    v17->_physicsBehaviors = v18;

    v17->_random = (arc4random() / 0x3E8);
    v17->_random1 = arc4random() / 4294967300.0;
    v17->_random2 = arc4random() / 4294967300.0;
    v17->_random3 = arc4random() / 4294967300.0;
    v17->_random4 = arc4random() / 4294967300.0;
    *&v17->_anon_70[16] = 0u;
    *&v17->_anon_70[48] = 0u;
    v17->_accumulatedKick = 0.0;
    v17->_digit = digit;
    v20 = [NTKSnowglobeDigitProfile profileForCharacter:digit];
    profile = v17->_profile;
    v17->_profile = v20;

    v17->_destroyed = 0;
    objc_storeStrong(&v17->_renderQueue, queue);
    objc_storeStrong(&v17->_loadGroup, group);
    if (v17->_loadGroup)
    {
      v22 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        digit = v17->_digit;
        *buf = 134218242;
        digitCopy = digit;
        v33 = 2112;
        v34 = v17;
        _os_log_impl(&dword_23C07F000, v22, OS_LOG_TYPE_DEFAULT, "Snowglobe enter group loading digit %lu for %@", buf, 0x16u);
      }

      dispatch_group_enter(v17->_loadGroup);
    }

    v24 = +[NTKSnowglobeAssetLibrary sharedInstance];
    renderQueue = v17->_renderQueue;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_23C083490;
    v27[3] = &unk_278BAC618;
    v28 = v17;
    v29 = nodeCopy;
    [v24 digitNodeForNumber:digit queue:renderQueue withCompletion:v27];
  }

  return v17;
}

- (void)_setupWithNode:(id)node configureNode:(id)configureNode
{
  v16 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  configureNodeCopy = configureNode;
  dispatch_assert_queue_V2(self->_renderQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_destroyed)
  {
    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = selfCopy;
      _os_log_impl(&dword_23C07F000, v9, OS_LOG_TYPE_DEFAULT, "Snowglobe early bail loading %@", &v14, 0xCu);
    }

    configureNodeCopy[2](configureNodeCopy, selfCopy, 0);
    objc_sync_exit(selfCopy);
LABEL_13:

    goto LABEL_14;
  }

  objc_sync_exit(selfCopy);

  [(NTKSnowglobeDigitController *)selfCopy setNode:nodeCopy];
  if (configureNodeCopy)
  {
    (configureNodeCopy)[2](configureNodeCopy, selfCopy, nodeCopy);
  }

  rootNode = [(SCNScene *)selfCopy->_scene rootNode];
  [rootNode addChildNode:nodeCopy];

  [(NTKSnowglobeDigitController *)selfCopy _queue_didAddToWorld];
  v11 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = selfCopy;
    _os_log_impl(&dword_23C07F000, v11, OS_LOG_TYPE_DEFAULT, "Snowglobe loaded digit for %@", &v14, 0xCu);
  }

  if (selfCopy->_loadGroup)
  {
    v12 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = selfCopy;
      _os_log_impl(&dword_23C07F000, v12, OS_LOG_TYPE_DEFAULT, "Snowglobe leaving group for %@", &v14, 0xCu);
    }

    dispatch_group_leave(selfCopy->_loadGroup);
    loadGroup = selfCopy->_loadGroup;
    selfCopy->_loadGroup = 0;
    selfCopy = loadGroup;
    goto LABEL_13;
  }

LABEL_14:
}

- (void)destroy
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_destroyed)
  {
    objc_sync_exit(obj);
  }

  else
  {
    obj->_destroyed = 1;
    objc_sync_exit(obj);

    v2 = obj->_scene;
    v3 = obj->_node;
    v4 = obj->_physicsBehaviors;
    v5 = obj->_loadGroup;
    node = obj->_node;
    obj->_node = 0;

    loadGroup = obj->_loadGroup;
    obj->_loadGroup = 0;

    if (v5)
    {
      v8 = [(NTKSnowglobeDigitController *)obj description];
    }

    else
    {
      v8 = 0;
    }

    renderQueue = obj->_renderQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23C083928;
    block[3] = &unk_278BAC640;
    v17 = v3;
    v18 = v4;
    v19 = v2;
    v20 = v5;
    v21 = v8;
    v10 = v8;
    v11 = v5;
    v12 = v2;
    v13 = v4;
    v14 = v3;
    dispatch_async(renderQueue, block);
  }
}

- (void)dealloc
{
  [(NTKSnowglobeDigitController *)self destroy];
  v3.receiver = self;
  v3.super_class = NTKSnowglobeDigitController;
  [(NTKSnowglobeDigitController *)&v3 dealloc];
}

- (void)setNode:(id)node
{
  nodeCopy = node;
  dispatch_assert_queue_V2(self->_renderQueue);
  node = self->_node;
  if (node != nodeCopy)
  {
    p_node = &self->_node;
    if (node)
    {
      [(SCNNode *)node position];
      [(SCNNode *)nodeCopy setPosition:?];
      [(SCNNode *)*p_node rotation];
      [(SCNNode *)nodeCopy setRotation:?];
      [(SCNNode *)*p_node removeFromParentNode];
    }

    objc_storeStrong(&self->_node, node);
    if (nodeCopy)
    {
      v7 = [(SCNNode *)nodeCopy childNodeWithName:@"LeftEye" recursively:1];
      v8 = [(SCNNode *)nodeCopy childNodeWithName:@"RightEye" recursively:1];
      v9 = [[NTKSnowglobeEyeController alloc] initWithLeftNode:v7 rightNode:v8 digitProfile:self->_profile];
      eyeController = self->_eyeController;
      self->_eyeController = v9;

      [(NTKSnowglobeEyeController *)self->_eyeController setAnimationEnabled:!self->_pausePhysics];
      v11 = [(SCNNode *)nodeCopy childNodesPassingTest:&unk_284ED8BE0];
      firstObject = [v11 firstObject];
      leg1 = self->_leg1;
      self->_leg1 = firstObject;

      v14 = [(SCNNode *)nodeCopy childNodesPassingTest:&unk_284ED8C00];
      firstObject2 = [v14 firstObject];
      leg2 = self->_leg2;
      self->_leg2 = firstObject2;

      [(SCNNode *)self->_leg1 setSimdEulerAngles:0.0];
      [(SCNNode *)self->_leg2 setSimdEulerAngles:0.0];
      [(SCNNode *)self->_leg1 position];
      v18 = v17;
      v20 = v19;
      [(SCNNode *)self->_leg2 position];
      v22 = v21;
      v24 = v23;
      LODWORD(v25) = v18;
      LODWORD(v26) = v20;
      [(SCNNode *)self->_leg1 setPosition:v25, v26, 0.0];
      LODWORD(v27) = v22;
      LODWORD(v28) = v24;
      [(SCNNode *)self->_leg2 setPosition:v27, v28, 0.0];
      *&self->_anon_c0[64] = xmmword_23C090620;
      *&self->_anon_110[64] = xmmword_23C090630;
      [(NTKSnowglobeDigitController *)self _queue_setGrainIntensity:0 withCommit:-0.000000381469873];
    }

    else
    {
      v29 = self->_leg1;
      self->_leg1 = 0;

      v7 = self->_leg2;
      self->_leg2 = 0;
    }
  }
}

- (void)_queue_didAddToWorld
{
  dispatch_assert_queue_V2(self->_renderQueue);
  v3 = MEMORY[0x277CDBAB8];
  physicsBody = [(SCNNode *)self->_leg1 physicsBody];
  physicsBody2 = [(SCNNode *)self->_node physicsBody];
  leg1 = self->_leg1;
  if (leg1)
  {
    objc_msgSend_transform(leg1);
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
  }

  v7 = *(MEMORY[0x277CDBBA8] + 16);
  v22 = *MEMORY[0x277CDBBA8];
  v16 = *(MEMORY[0x277CDBBA8] + 48);
  v18 = *(MEMORY[0x277CDBBA8] + 32);
  v23 = v7;
  v24 = v18;
  v25 = v16;
  v8 = [v3 jointWithBodyA:physicsBody frameA:&v22 bodyB:physicsBody2 frameB:{&v26, v16, v18, v7, v22}];

  [v8 setMaximumTwistAngle:1.57079633];
  [v8 setMaximumAngularLimit1:0.314159265];
  [v8 setMaximumAngularLimit2:0.0];
  physicsWorld = [(SCNScene *)self->_scene physicsWorld];
  [physicsWorld addBehavior:v8];

  v10 = MEMORY[0x277CDBAB8];
  physicsBody3 = [(SCNNode *)self->_leg2 physicsBody];
  physicsBody4 = [(SCNNode *)self->_node physicsBody];
  leg2 = self->_leg2;
  if (leg2)
  {
    objc_msgSend_transform(leg2);
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
  }

  v22 = v21;
  v23 = v20;
  v24 = v19;
  v25 = v17;
  v14 = [v10 jointWithBodyA:physicsBody3 frameA:&v22 bodyB:physicsBody4 frameB:&v26];

  [v14 setMaximumTwistAngle:1.57079633];
  [v14 setMaximumAngularLimit1:0.314159265];
  [v14 setMaximumAngularLimit2:0.0];
  physicsWorld2 = [(SCNScene *)self->_scene physicsWorld];
  [physicsWorld2 addBehavior:v14];

  [(NSMutableArray *)self->_physicsBehaviors addObject:v8];
  [(NSMutableArray *)self->_physicsBehaviors addObject:v14];
}

- (void)_queue_setGrainIntensity:(float)intensity withCommit:(BOOL)commit
{
  commitCopy = commit;
  dispatch_assert_queue_V2(self->_renderQueue);
  if (commitCopy)
  {
    [MEMORY[0x277CDBB18] begin];
  }

  node = self->_node;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23C0840DC;
  v8[3] = &unk_278BAC680;
  intensityCopy = intensity;
  [(SCNNode *)node enumerateHierarchyUsingBlock:v8];
  if (commitCopy)
  {
    [MEMORY[0x277CDBB18] commit];
  }
}

- (void)resetToOrigin
{
  dispatch_assert_queue_V2(self->_renderQueue);
  if (self->_tritium)
  {
    [(NTKSnowglobeDigitController *)self tritiumOrigin];
    [(SCNNode *)self->_node setSimdPosition:?];
    [(NTKSnowglobeDigitController *)self tritiumRotation];
    [(SCNNode *)self->_node setSimdOrientation:?];
    v3 = *MEMORY[0x277CDBC30];
    v4 = *(MEMORY[0x277CDBC30] + 4);
    v5 = *(MEMORY[0x277CDBC30] + 8);
    v6 = *(MEMORY[0x277CDBC30] + 12);
  }

  else
  {
    [(NTKSnowglobeDigitController *)self _effectiveOrigin];
    [(SCNNode *)self->_node setPosition:?];
    v3 = *MEMORY[0x277CDBC30];
    v4 = *(MEMORY[0x277CDBC30] + 4);
    v5 = *(MEMORY[0x277CDBC30] + 8);
    v6 = *(MEMORY[0x277CDBC30] + 12);
    LODWORD(v7) = *MEMORY[0x277CDBC30];
    LODWORD(v8) = v4;
    LODWORD(v9) = v5;
    LODWORD(v10) = v6;
    [(SCNNode *)self->_node setRotation:v7, v8, v9, v10];
  }

  v11 = *MEMORY[0x277CDBC28];
  v12 = *(MEMORY[0x277CDBC28] + 4);
  v13 = *(MEMORY[0x277CDBC28] + 8);
  physicsBody = [(SCNNode *)self->_node physicsBody];
  LODWORD(v15) = v11;
  LODWORD(v16) = v12;
  LODWORD(v17) = v13;
  [physicsBody setVelocity:{v15, v16, v17}];

  physicsBody2 = [(SCNNode *)self->_node physicsBody];
  LODWORD(v19) = v3;
  LODWORD(v20) = v4;
  LODWORD(v21) = v5;
  LODWORD(v22) = v6;
  [physicsBody2 setAngularVelocity:{v19, v20, v21, v22}];

  physicsBody3 = [(SCNNode *)self->_node physicsBody];
  [physicsBody3 resetTransform];

  physicsBody4 = [(SCNNode *)self->_leg1 physicsBody];
  [physicsBody4 resetTransform];

  physicsBody5 = [(SCNNode *)self->_leg2 physicsBody];
  [physicsBody5 resetTransform];
}

- (void)setPausePhysics:(BOOL)physics
{
  if (self->_pausePhysics != physics)
  {
    self->_pausePhysics = physics;
    [(NTKSnowglobeEyeController *)self->_eyeController setAnimationEnabled:!physics];
  }
}

- (void)updateAtTime:(double)time
{
  dispatch_assert_queue_V2(self->_renderQueue);
  node = self->_node;
  if (node)
  {
    presentationNode = [(SCNNode *)node presentationNode];

    if (presentationNode)
    {
      [(NTKSnowglobeEyeController *)self->_eyeController updateAtTime:time];
      if (!self->started)
      {
        self->started = 1;
        self->startTime = time;
      }

      physicsBody = [(SCNNode *)self->_node physicsBody];
      collisionBitMask = [physicsBody collisionBitMask];

      if (collisionBitMask != -1)
      {
        [(NTKSnowglobeDigitController *)self _effectiveOrigin];
        v10.i32[1] = v9;
        v10.i32[2] = v11;
        v53 = v10;
        presentationNode2 = [(SCNNode *)self->_node presentationNode];
        [presentationNode2 simdPosition];
        v54 = vsubq_f32(v53, v13);

        v14 = vmulq_f32(v54, v54);
        if ((v14.f32[2] + vaddv_f32(*v14.f32)) < 0.5)
        {
          physicsBody2 = [(SCNNode *)self->_node physicsBody];
          [physicsBody2 setCollisionBitMask:-1];

          physicsBody3 = [(SCNNode *)self->_node physicsBody];
          [physicsBody3 setContactTestBitMask:-1];
        }
      }

      if (!self->_pausePhysics)
      {
        physicsBody4 = [(SCNNode *)self->_node physicsBody];
        [physicsBody4 velocity];
        v51 = v19;
        v52 = v18;
        v55 = v20;

        v21 = v52;
        v21.i32[1] = v51;
        v21.i32[2] = v55;
        v22 = vmulq_f32(v21, v21);
        v23 = sqrtf(v22.f32[2] + vaddv_f32(*v22.f32));
        NTKSnowglobeTunableFloat();
        v25 = v24;
        [(NTKSnowglobeDigitProfile *)self->_profile kickMultiplier];
        v27 = v25 * v26;
        NTKSnowglobeTunableFloat();
        v29 = self->_accumulatedKick + (v27 + v28 * v23) * 0.0333333333;
        self->_accumulatedKick = v29;
        v30 = sin((self->_random1 * 2.0 + 1.0) * (v29 + v29)) * -3.14159265 / 3.0;
        *&v29 = sin((self->_random2 * 2.0 + 1.0) * (v29 * -2.0)) * -3.14159265 / 3.0;
        [(NTKSnowglobeDigitController *)self _applyLegSpring:self->_leg1];
        [(NTKSnowglobeDigitController *)self _applyLegSpring:self->_leg2];
        physicsBody5 = [(SCNNode *)self->_leg1 physicsBody];
        physicsBody6 = [(SCNNode *)self->_leg1 physicsBody];
        [physicsBody6 mass];
        v34 = v30 * 0.0333333333 * v33;
        *&v35 = v34;
        LODWORD(v34) = 1.0;
        [physicsBody5 applyTorque:1 impulse:{v34, 0.0, 0.0, v35}];

        physicsBody7 = [(SCNNode *)self->_leg2 physicsBody];
        physicsBody8 = [(SCNNode *)self->_leg2 physicsBody];
        [physicsBody8 mass];
        v39 = *&v29 * 0.0333333333 * v38;
        *&v40 = v39;
        LODWORD(v39) = 1.0;
        [physicsBody7 applyTorque:1 impulse:{v39, 0.0, 0.0, v40}];

        physicsBody9 = [(SCNNode *)self->_node physicsBody];
        [physicsBody9 velocity];
        DWORD1(v43) = v42;
        DWORD2(v43) = v44;
        *self->_anon_70 = v43;

        physicsBody10 = [(SCNNode *)self->_node physicsBody];
        [physicsBody10 angularVelocity];
        v47.i32[1] = v46;
        v47.i64[1] = __PAIR64__(v49, v48);
        NTKMakeEulerAnglesFromAxisAngle(v47);
        *&self->_anon_70[32] = v50;

        [(NTKSnowglobeDigitController *)self _queue_applyRandAcceleration];
        [(NTKSnowglobeDigitController *)self _queue_applyRotationSprings];
        [(NTKSnowglobeDigitController *)self _queue_applyLinearSpring];
        [(NTKSnowglobeDigitController *)self _applyMotionAcceleration];
        [(NTKSnowglobeDigitController *)self _queue_applyVelocity];
        [(NTKSnowglobeDigitController *)self _queue_applyAcceleration];
        *&self->_anon_70[16] = 0u;
        *&self->_anon_70[48] = 0u;
      }
    }
  }
}

- (void)_queue_applyAcceleration
{
  dispatch_assert_queue_V2(self->_renderQueue);
  v16 = vmulq_f32(*&self->_anon_70[16], vdupq_n_s32(0x3D088889u));
  physicsBody = [(SCNNode *)self->_node physicsBody];
  LODWORD(v5) = v16.i32[2];
  LODWORD(v4) = v16.i32[1];
  [physicsBody applyForce:1 impulse:{*v16.i64, v4, v5}];

  v6 = *&self->_anon_70[48];
  v7 = vmulq_f32(v6, v6);
  if ((v7.f32[2] + vaddv_f32(*v7.f32)) > 0.0)
  {
    v17 = NTKMakeAxisAngleFromEulerAngles(v6);
    v9 = v8 * 0.0333333333;
    v11 = v10;
    physicsBody2 = [(SCNNode *)self->_node physicsBody];
    LODWORD(v12) = HIDWORD(v17);
    LODWORD(v13) = v11;
    *&v14 = v9;
    [physicsBody2 applyTorque:1 impulse:{v17, v12, v13, v14}];
  }
}

- (void)_queue_applyVelocity
{
  dispatch_assert_queue_V2(self->_renderQueue);
  physicsBody = [(SCNNode *)self->_node physicsBody];
  [physicsBody velocity];
  DWORD1(v5) = v4;
  DWORD2(v5) = v6;
  *self->_anon_70 = v5;

  physicsBody2 = [(SCNNode *)self->_node physicsBody];
  [physicsBody2 angularVelocity];
  v8.i32[1] = v7;
  v8.i64[1] = __PAIR64__(v10, v9);
  NTKMakeEulerAnglesFromAxisAngle(v8);
  *&self->_anon_70[32] = v11;
}

- (void)_queue_applyRandAcceleration
{
  dispatch_assert_queue_V2(self->_renderQueue);
  v3 = arc4random() / 4294967300.0;
  v18 = v3;
  *&v4 = arc4random() / 4294967300.0;
  v5 = __PAIR64__(v4, LODWORD(v18));
  v6.i64[0] = 0x4000000040000000;
  v6.i64[1] = 0x4000000040000000;
  __asm { FMOV            V2.4S, #-1.0 }

  v12 = vmlaq_f32(_Q2, v6, v5);
  v13 = vaddq_f32(v12, v12);
  v13.i32[2] = 0;
  v19 = v13;
  [(NTKSnowglobeDigitProfile *)self->_profile randomMotionMultiplier];
  v15 = v14;
  NTKSnowglobeTunableFloat();
  *&v16 = v16 * v15;
  v17 = vmlaq_f32(vmulq_f32(vmulq_n_f32(v19, *&v16), vdupq_n_s32(0x3DCCCCCDu)), vdupq_n_s32(0x3F666666u), *self->_randAccel);
  *self->_randAccel = v17;
  *&self->_anon_70[16] = vaddq_f32(*&self->_anon_70[16], v17);
}

- (void)_queue_applyRotationSprings
{
  dispatch_assert_queue_V2(self->_renderQueue);
  presentationNode = [(SCNNode *)self->_node presentationNode];
  [presentationNode simdOrientation];
  v23 = v4;

  v5 = vmulq_f32(v23, xmmword_23C090640);
  v6 = vextq_s8(v5, v5, 8uLL);
  *v5.f32 = vadd_f32(*v5.f32, *v6.f32);
  v5.f32[0] = vaddv_f32(*v5.f32);
  v6.i64[0] = 0;
  v21 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v6, v5), 0), xmmword_23C090650, xmmword_23C090640);
  [(NTKSnowglobeDigitProfile *)self->_profile springMultiplier];
  v7 = vmulq_f32(v23, v23);
  *v7.i8 = vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL));
  v7.i32[0] = vadd_f32(*v7.i8, vdup_lane_s32(*v7.i8, 1)).u32[0];
  v8 = vrecpe_f32(v7.u32[0]);
  v9 = vmul_f32(v8, vrecps_f32(v7.u32[0], v8));
  v10 = vmulq_n_f32(vmulq_f32(v23, xmmword_23C090660), vmul_f32(v9, vrecps_f32(v7.u32[0], v9)).f32[0]);
  v11 = vnegq_f32(v10);
  v12 = vtrn2q_s32(v10, vtrn1q_s32(v10, v11));
  v13 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v10, v11, 8uLL), *v21.f32, 1), vextq_s8(v12, v12, 8uLL), v21.f32[0]);
  v14 = vrev64q_s32(v10);
  v14.i32[0] = v11.i32[1];
  v14.i32[3] = v11.i32[2];
  v16 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v10, v21, 3), v14, v21, 2), v13);
  v17 = (v15 + v15) * 0.0333333333;
  v24 = NTKMakeAxisAngleFromQuat(vmulq_n_f32(v16, v17), *v16.i64);
  physicsBody = [(SCNNode *)self->_node physicsBody];
  LODWORD(v19) = v24.n128_u32[2];
  LODWORD(v18) = v24.n128_u32[1];
  LODWORD(v20) = v24.n128_u32[3];
  [physicsBody applyTorque:1 impulse:{v24.n128_f64[0], v18, v19, v20}];
}

- (void)_queue_applyLinearSpring
{
  dispatch_assert_queue_V2(self->_renderQueue);
  [(NTKSnowglobeDigitController *)self _effectiveOrigin];
  v18 = v4;
  v19 = v3;
  v22 = v5;
  presentationNode = [(SCNNode *)self->_node presentationNode];
  [presentationNode simdPosition];
  v7 = v19;
  v7.i32[1] = v18;
  v7.i32[2] = v22;
  v23 = vsubq_f32(v8, v7);

  v9 = v23;
  v11 = vmulq_f32(v9, v9);
  v10 = v11.f32[2] + vaddv_f32(*v11.f32);
  v11.i64[0] = 0;
  if (v10 > 0.001)
  {
    v12 = LODWORD(v10);
    v13 = vrsqrte_f32(LODWORD(v10));
    v14 = vmul_f32(v13, vrsqrts_f32(v12, vmul_f32(v13, v13)));
    v20 = vmulq_f32(vmulq_n_f32(v23, vmul_f32(v14, vrsqrts_f32(v12, vmul_f32(v14, v14))).f32[0]), xmmword_23C090670);
    [(NTKSnowglobeDigitProfile *)self->_profile springMultiplier];
    v21 = vmulq_n_f32(v20, v15);
    NTKSnowglobeTunableFloat();
    v9 = v23;
    *&v16 = v16;
    v17 = vmulq_n_f32(v21, *&v16);
    v11 = vmulq_f32(v17, v17);
    v11.f32[0] = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
  }

  *&self->_anon_70[16] = vaddq_f32(*&self->_anon_70[16], vmlsq_lane_f32(vmulq_f32(*self->_anon_70, xmmword_23C090680), v9, *v11.f32, 0));
}

- (double)_legMomentOfInertiaForNode:(void *)node body:(float32x4_t *)body
{
  v11 = body[4];
  [node simdTransform];
  v8 = vaddq_f32(v7, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, v11.f32[0]), v5, *v11.f32, 1), v6, v11, 2));
  v9 = vmulq_f32(v8, v8);
  *v6.f32 = vmla_f32(vdup_laneq_s32(v9, 2), *v8.f32, *v8.f32);
  v8.f32[0] = v9.f32[1] + (v8.f32[0] * v8.f32[0]);
  *v9.f32 = vrev64_s32(*v6.f32);
  v9.i32[2] = v8.i32[0];
  *&result = vmulq_f32(v9, vdupq_n_s32(0x3E4CCCCDu)).u64[0];
  return result;
}

- (void)_applyLegSpring:(id)spring
{
  springCopy = spring;
  presentationNode = [springCopy presentationNode];
  [presentationNode simdOrientation];
  *v23 = v5;

  v6 = vmulq_f32(*v23, xmmword_23C090640);
  v7 = vextq_s8(v6, v6, 8uLL);
  *v6.f32 = vadd_f32(*v6.f32, *v7.f32);
  v6.f32[0] = vaddv_f32(*v6.f32);
  v7.i64[0] = 0;
  v8 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v7, v6), 0), xmmword_23C090650, xmmword_23C090640);
  v9 = vmulq_f32(*v23, *v23);
  *v9.i8 = vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
  v9.i32[0] = vadd_f32(*v9.i8, vdup_lane_s32(*v9.i8, 1)).u32[0];
  v10 = vrecpe_f32(v9.u32[0]);
  v11 = vmul_f32(v10, vrecps_f32(v9.u32[0], v10));
  v12 = vmulq_n_f32(vmulq_f32(*v23, xmmword_23C090660), vmul_f32(v11, vrecps_f32(v9.u32[0], v11)).f32[0]);
  v13 = vnegq_f32(v12);
  v14 = vtrn2q_s32(v12, vtrn1q_s32(v12, v13));
  v15 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v12, v13, 8uLL), *v8.f32, 1), vextq_s8(v14, v14, 8uLL), v8.f32[0]);
  v16 = vrev64q_s32(v12);
  v16.i32[0] = v13.i32[1];
  v16.i32[3] = v13.i32[2];
  v17 = vaddq_f32(v15, vmlaq_laneq_f32(vmulq_laneq_f32(v12, v8, 3), v16, v8, 2));
  v18 = vdupq_n_s32(0x3BF04C75u);
  v22 = NTKMakeAxisAngleFromQuat(vmulq_f32(v17, v18), *v18.i64);
  physicsBody = [springCopy physicsBody];

  LODWORD(v20) = v22.n128_u32[2];
  LODWORD(v19) = v22.n128_u32[1];
  LODWORD(v21) = v22.n128_u32[3];
  [physicsBody applyTorque:1 impulse:{v22.n128_f64[0], v19, v20, v21}];
}

- (SCNVector3)_effectiveOrigin
{
  v2 = 536;
  v3 = 540;
  if (self->_exiting)
  {
    v3 = 552;
  }

  v4 = 544;
  if (self->_exiting)
  {
    v4 = 556;
  }

  v5 = *(&self->super.isa + v4);
  v6 = *(&self->super.isa + v3);
  if (self->_exiting)
  {
    v2 = 548;
  }

  v7 = *(&self->super.isa + v2);
  result.z = v5;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)applyTapAtLocalPosition:(SCNVector3)position
{
  if (!self->_pausePhysics)
  {
    y = position.y;
    x = position.x;
    NTKSnowglobeTunableFloat();
    v6 = v5;
    NTKSnowglobeTunableFloat();
    v7 = v6;
    v8.i64[0] = 0;
    v8.i32[3] = 0;
    v8.f32[2] = -v7;
    *&v9 = -y;
    *(&v9 + 1) = x;
    *&self->_anon_70[16] = vaddq_f32(v8, *&self->_anon_70[16]);
    *&v10 = v10;
    *&self->_anon_70[48] = vaddq_f32(*&self->_anon_70[48], vmulq_n_f32(v9, *&v10));
  }
}

- (void)_applyMotionAcceleration
{
  if (!self->_pausePhysics)
  {
    v43 = +[NTKSnowglobeMotionManager sharedInstance];
    [v43 userAcceleration];
    v37 = v5;
    v40 = v4;
    v7 = v6;
    [v43 rotationRate];
    v9 = v8;
    NTKSnowglobeTunableFloat();
    *&v10 = *&v10;
    v36 = v10;
    NTKSnowglobeTunableFloat();
    *&v11 = v11;
    v12.f64[0] = v40;
    v12.f64[1] = v37;
    *&v12.f64[0] = vcvt_f32_f64(v12);
    v13 = v7;
    *&v12.f64[1] = v13;
    v15 = vdupq_n_s32(0x3D088889u);
    v14 = vdivq_f32(v12, v15);
    v15.f32[0] = -*&v11;
    *v18.f32 = vmul_n_f32(*v14.f32, *&v36);
    v16 = vdup_lane_s32(*&v11, 0);
    *v18.f32 = vbsl_s8(vcgt_f32(v16, *v18.f32), *v18.f32, v16);
    v17 = vdup_lane_s32(*v15.f32, 0);
    *v18.f32 = vbsl_s8(vcgt_f32(v17, *v18.f32), v17, *v18.f32);
    v19 = vmuls_lane_f32(*&v36, v14, 2);
    if (v19 < *&v11)
    {
      *&v11 = v19;
    }

    if (*&v11 < v15.f32[0])
    {
      *&v11 = v15.f32[0];
    }

    v18.i32[2] = LODWORD(v11);
    v41 = v18;
    [(NTKSnowglobeDigitProfile *)self->_profile accelerometerFactor];
    v21 = vmulq_n_f32(v41, v20);
    node = self->_node;
    if (node)
    {
      v42 = v21;
      presentationNode = [(SCNNode *)node presentationNode];
      [presentationNode simdPosition];
      v38 = v24;

      v25 = v38;
      v25.i32[2] = 0;
      v39 = v25;
      NTKSnowglobeTunableFloat();
      v27 = v26;
      NTKSnowglobeTunableFloat();
      v29 = v28;
      v30 = v9 * v27;
      if (v30 >= v29)
      {
        v30 = v29;
      }

      v31 = -v29;
      if (v30 >= v31)
      {
        v32 = v30;
        v31 = v32;
      }

      LODWORD(v33) = 0;
      v34.i64[0] = 0;
      v34.i64[1] = LODWORD(v31);
      v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), vnegq_f32(v39)), v34, vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL));
      v21 = vaddq_f32(v42, vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL));
      *(&v33 + 1) = -v31;
      *&self->_anon_70[48] = v33;
    }

    *&self->_anon_70[16] = vaddq_f32(v21, *&self->_anon_70[16]);
  }
}

- (void)didCollide
{
  [(NTKSnowglobeEyeController *)self->_eyeController transitionToState:2 withDuration:0.1];
  WeakRetained = objc_loadWeakRetained(&self->_collisionAngerTimer);
  [WeakRetained invalidate];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23C0851F4;
  v6[3] = &unk_278BAC6A8;
  v6[4] = self;
  v4 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:0 repeats:v6 block:2.0];
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop addTimer:v4 forMode:*MEMORY[0x277CBE738]];

  objc_storeWeak(&self->_collisionAngerTimer, v4);
}

- (SCNVector3)origin
{
  x = self->_origin.x;
  y = self->_origin.y;
  z = self->_origin.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (SCNVector3)exitOrigin
{
  x = self->_exitOrigin.x;
  y = self->_exitOrigin.y;
  z = self->_exitOrigin.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

@end