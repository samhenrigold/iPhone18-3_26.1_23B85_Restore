@interface AVTPhysicsController
- (AVTPhysicsController)init;
- (AVTPhysicsControllerDelegate)delegate;
- (__n128)offsetFromRestingPositionForNode:(void *)node inCoordinateSpaceOfNode:(void *)ofNode;
- (id)physicsState;
- (void)_setupPhysicsChain:(id)chain physicsRigs:(id)rigs;
- (void)addToPhysicsWorld:(id)world;
- (void)applyForcesWithMultiplier:(double)multiplier;
- (void)downforcesDidChange;
- (void)installPhysics;
- (void)physicsState;
- (void)removeFromPhysicsWorld:(id)world;
- (void)resetToPhysicsState:(id)state assumeRestStateIfNil:(BOOL)nil;
- (void)setupPhysics;
- (void)setupPhysicsIfNeeded;
- (void)updateAtTime:(double)time forceMultiplier:(double)multiplier;
@end

@implementation AVTPhysicsController

- (AVTPhysicsController)init
{
  v3.receiver = self;
  v3.super_class = AVTPhysicsController;
  result = [(AVTPhysicsController *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)applyForcesWithMultiplier:(double)multiplier
{
  if (!self->_hasPhysicsStateOverride)
  {
    if (!self->_setupDone)
    {
      v4 = avt_default_log(self);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [(AVTPhysicsController *)v4 applyForcesWithMultiplier:v5, v6, v7, v8, v9, v10, v11];
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_physicsWorld);
    [WeakRetained scale];
    v35 = v13;

    v14 = self->_physicsRigs;
    v15 = [NSArray countByEnumeratingWithState:v14 objects:"countByEnumeratingWithState:objects:count:" count:?];
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0];
      v34 = vdupq_lane_s32(v35, 0);
      __asm { FMOV            V0.4S, #5.0 }

      v32 = vdupq_n_s32(0x42440000u);
      v33 = xmmword_1BB4F0590;
      do
      {
        v23 = 0;
        do
        {
          if (MEMORY[0] != v17)
          {
            objc_enumerationMutation(v14);
          }

          v24 = *(8 * v23);
          if (v24)
          {
            v25 = *(v24 + 16);
          }

          else
          {
            v25 = 0;
          }

          presentationNode = [v25 presentationNode];
          if (v24)
          {
            v27 = *(v24 + 24);
          }

          else
          {
            v27 = 0;
          }

          presentationNode2 = [v27 presentationNode];
          if (v24)
          {
            v29 = *(v24 + 32);
          }

          else
          {
            v29 = 0;
          }

          v30 = v29;
          [presentationNode convertPosition:? toNode:?];
          [presentationNode2 convertVector:? toNode:?];
          if (!v24 || *(v24 + 48) >= 0.0)
          {
            [presentationNode2 convertVector:? toNode:?];
          }

          [v30 applyForce:? impulse:?];

          v23 = (v23 + 1);
        }

        while (v16 != v23);
        v31 = [NSArray countByEnumeratingWithState:v14 objects:"countByEnumeratingWithState:objects:count:" count:?];
        v16 = v31;
      }

      while (v31);
    }
  }
}

- (void)updateAtTime:(double)time forceMultiplier:(double)multiplier
{
  if (!self->_hasPhysicsStateOverride)
  {
    if (self->_physicsBehaviorsAreInstalledInPhysicsWorld)
    {
      [(AVTPhysicsController *)self applyForcesWithMultiplier:?];
    }

    else
    {
      self->_physicsBehaviorsAreInstalledInPhysicsWorld = 1;
      [(AVTPhysicsController *)self installPhysics];
    }
  }
}

- (__n128)offsetFromRestingPositionForNode:(void *)node inCoordinateSpaceOfNode:(void *)ofNode
{
  nodeCopy = node;
  ofNodeCopy = ofNode;
  v28 = 0u;
  v8 = *(self + 16);
  v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0];
    while (2)
    {
      v12 = 0;
      do
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(8 * v12);
        if (v13)
        {
          v14 = *(v13 + 16);
        }

        else
        {
          v14 = 0;
        }

        if (v14 == nodeCopy)
        {
          if (*(self + 37))
          {
            if (v13)
            {
              v16 = *(v13 + 24);
            }

            else
            {
              v16 = 0;
            }

            [v16 convertPosition:? toNode:?];
            v29 = v17;

            [nodeCopy convertPosition:? toNode:?];
            v28 = vsubq_f32(v18, v29);
          }

          else
          {
            presentationNode = [ofNodeCopy presentationNode];
            if (v13)
            {
              v20 = *(v13 + 24);
            }

            else
            {
              v20 = 0;
            }

            v21 = v20;
            presentationNode2 = [v21 presentationNode];
            [presentationNode2 convertPosition:? toNode:?];
            v30 = v23;

            presentationNode3 = [nodeCopy presentationNode];
            [presentationNode3 convertPosition:? toNode:?];
            v27 = v25;

            v28 = vsubq_f32(v27, v30);
          }

          goto LABEL_21;
        }

        v12 = (v12 + 1);
      }

      while (v10 != v12);
      v15 = [v8 countByEnumeratingWithState:? objects:? count:?];
      v10 = v15;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  return v28;
}

- (void)installPhysics
{
  [(AVTPhysicsController *)self setupPhysicsIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_physicsWorld);
  v4 = MEMORY[0x1E69DF378];
  v6 = MEMORY[0x1E69E9820];
  selfCopy = self;
  v8 = WeakRetained;
  v5 = WeakRetained;
  [v4 enqueueCommandForObject:v6 immediateTransactionBlock:{3221225472, __38__AVTPhysicsController_installPhysics__block_invoke, &unk_1E7F47E78, selfCopy}];
}

void *__38__AVTPhysicsController_installPhysics__block_invoke(uint64_t a1)
{
  *&v12[37] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:0 objects:? count:?];
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0];
    do
    {
      v6 = 0;
      do
      {
        if (MEMORY[0] != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(8 * v6);
        if (!v7 || !*(v7 + 40))
        {
          v8 = avt_default_log(v3);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            __38__AVTPhysicsController_installPhysics__block_invoke_cold_1(buf, v12, v8);
          }
        }

        v3 = [*(a1 + 40) addPhysicsJoint:?];
        v6 = (v6 + 1);
      }

      while (v4 != v6);
      v3 = [v2 countByEnumeratingWithState:? objects:? count:?];
      v4 = v3;
    }

    while (v3);
  }

  [*(a1 + 40) setSpeed:?];
  v9 = 60;
  do
  {
    [*(a1 + 32) applyForcesWithMultiplier:?];
    [*(a1 + 40) _step:?];
    --v9;
  }

  while (v9);
  return [*(a1 + 40) setSpeed:?];
}

- (void)setupPhysicsIfNeeded
{
  if (!self->_setupDone)
  {
    os_unfair_lock_lock(&self->_lock);
    if (!self->_setupDone)
    {
      [(AVTPhysicsController *)self setupPhysics];
      self->_setupDone = 1;
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)setupPhysics
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "avatarNode";
}

void __36__AVTPhysicsController_setupPhysics__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 name];
  v4 = [v3 hasSuffix:?];

  if (v4)
  {
    v5 = [v8 parentNode];
    v6 = [v5 name];
    v7 = [v6 hasSuffix:?];

    if ((v7 & 1) == 0)
    {
      [*(a1 + 32) _setupPhysicsChain:? physicsRigs:?];
    }
  }
}

void __44__AVTPhysicsController__setupCollisionNode___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v2 = [v7 model];

  if (v2)
  {
    v3 = [MEMORY[0x1E69DF340] kinematicBody];
    [v7 setPhysicsBody:?];

    v4 = [v7 physicsBody];
    [v4 setRestitution:?];

    v5 = [v7 physicsBody];
    [v5 setFriction:?];

    v6 = [v7 physicsBody];
    [v6 setCategoryBitMask:?];

    [v7 setOpacity:?];
  }
}

- (void)_setupPhysicsChain:(id)chain physicsRigs:(id)rigs
{
  chainCopy = chain;
  rigsCopy = rigs;
  if (chainCopy)
  {
    v7 = [MEMORY[0x1E69DF338] sphereWithRadius:?];
    [v7 setSegmentCount:?];
    kinematicBody = [MEMORY[0x1E69DF340] kinematicBody];
    [kinematicBody setAffectedByGravity:?];
    [kinematicBody setDamping:?];
    [kinematicBody setAngularDamping:?];
    [chainCopy setPhysicsBody:?];
    v9 = [MEMORY[0x1E69DF350] shapeWithModel:?];
    [kinematicBody setPhysicsShape:?];
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__1;
    v15[4] = __Block_byref_object_dispose__1;
    v16 = chainCopy;
    v10 = MEMORY[0x1E69E9820];
    v11 = v16;
    v12 = v9;
    v13 = kinematicBody;
    v14 = rigsCopy;
    [v11 enumerateChildNodesUsingBlock:{v10, 3221225472, __55__AVTPhysicsController__setupPhysicsChain_physicsRigs___block_invoke, &unk_1E7F47EC8}];

    _Block_object_dispose(v15, 8);
  }
}

- (void)downforcesDidChange
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_delegate";
}

- (id)physicsState
{
  if (!self->_physicsRigs)
  {
    v3 = avt_default_log(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(AVTPhysicsController *)v3 physicsState:v4];
    }
  }

  v33 = _AVTPoseRoundingBehaviour(self);
  v11 = objc_alloc(MEMORY[0x1E695DF90]);
  [(NSArray *)self->_physicsRigs count];
  v32 = [v11 initWithCapacity:?];
  v12 = self->_physicsRigs;
  v13 = [NSArray countByEnumeratingWithState:v12 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v13)
  {
    v14 = v13;
    v15 = MEMORY[0];
    do
    {
      v16 = 0;
      do
      {
        if (MEMORY[0] != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(8 * v16);
        if (v17)
        {
          v18 = *(v17 + 16);
          v19 = *(v17 + 24);
        }

        else
        {
          v18 = 0;
          v19 = 0;
        }

        v20 = v19;
        if (self->_physicsBehaviorsAreInstalledInPhysicsWorld)
        {
          presentationNode = [v18 presentationNode];

          presentationNode2 = [v20 presentationNode];

          v20 = presentationNode2;
          v18 = presentationNode;
        }

        name = [v18 name];
        [v20 convertPosition:? fromNode:?];
        if (v17)
        {
          v25 = *(v17 + 64);
        }

        else
        {
          v25 = 0uLL;
        }

        v26 = vsubq_f32(v24, v25);
        v27 = vmulq_f32(v26, v26);
        if ((v27.f32[2] + vaddv_f32(*v27.f32)) >= 0.1)
        {
          v34 = [MEMORY[0x1E695DEC8] avt_arrayWithFloat3:? roundingBehavior:?];
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
          [v32 setObject:? forKeyedSubscript:?];
        }

        v16 = (v16 + 1);
      }

      while (v14 != v16);
      v29 = [NSArray countByEnumeratingWithState:v12 objects:"countByEnumeratingWithState:objects:count:" count:?];
      v14 = v29;
    }

    while (v29);
  }

  v30 = [[AVTAvatarPhysicsState alloc] initWithDictionaryRepresentation:?];

  return v30;
}

- (void)resetToPhysicsState:(id)state assumeRestStateIfNil:(BOOL)nil
{
  nilCopy = nil;
  v32 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  [(AVTPhysicsController *)self setupPhysicsIfNeeded];
  if (stateCopy || nilCopy)
  {
    self->_hasPhysicsStateOverride = 1;
    v23 = stateCopy;
    dictionaryRepresentation = [stateCopy dictionaryRepresentation];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = self->_physicsRigs;
    v8 = [NSArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        v11 = 0;
        do
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v27 + 1) + 8 * v11);
          if (v12)
          {
            v13 = *(v12 + 16);
            v14 = *(v12 + 24);
          }

          else
          {
            v13 = 0;
            v14 = 0;
          }

          v15 = v14;
          parentNode = [v13 parentNode];
          name = [v13 name];
          v18 = [(NSArray *)dictionaryRepresentation objectForKeyedSubscript:?];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 objectForKeyedSubscript:?];
            [v20 avt_float3];
          }

          [v15 convertPosition:? toNode:?];
          [v13 setPosition:?];
          physicsBody = [v13 physicsBody];
          [physicsBody setResting:?];

          v11 = (v11 + 1);
        }

        while (v9 != v11);
        v22 = [NSArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
        v9 = v22;
      }

      while (v22);
    }

    stateCopy = v23;
  }

  else
  {
    self->_hasPhysicsStateOverride = 0;
    memset(v26, 0, sizeof(v26));
    dictionaryRepresentation = self->_physicsRigs;
    v7 = [NSArray countByEnumeratingWithState:dictionaryRepresentation objects:"countByEnumeratingWithState:objects:count:" count:?];
    if (v7)
    {
      [(AVTPhysicsController *)v26 resetToPhysicsState:dictionaryRepresentation assumeRestStateIfNil:v7, v31];
    }
  }
}

- (void)addToPhysicsWorld:(id)world
{
  worldCopy = world;
  WeakRetained = objc_loadWeakRetained(&self->_physicsWorld);

  if (WeakRetained)
  {
    v7 = avt_default_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(AVTPhysicsController *)v7 addToPhysicsWorld:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  objc_storeWeak(&self->_physicsWorld, worldCopy);
}

- (void)removeFromPhysicsWorld:(id)world
{
  worldCopy = world;
  WeakRetained = objc_loadWeakRetained(&self->_physicsWorld);

  if (WeakRetained != worldCopy)
  {
    v7 = avt_default_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(AVTPhysicsController *)v7 removeFromPhysicsWorld:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  if (self->_physicsBehaviorsAreInstalledInPhysicsWorld)
  {
    self->_physicsBehaviorsAreInstalledInPhysicsWorld = 0;
    v15 = self->_physicsRigs;
    v16 = [NSArray countByEnumeratingWithState:v15 objects:"countByEnumeratingWithState:objects:count:" count:0];
    if (v16)
    {
      v17 = v16;
      v18 = MEMORY[0];
      do
      {
        v19 = 0;
        do
        {
          if (MEMORY[0] != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(8 * v19);
          if (v20)
          {
            [worldCopy removePhysicsJoint:?];
            v21 = *(v20 + 16);
          }

          else
          {
            [AVTPhysicsController removeFromPhysicsWorld:worldCopy];
            v21 = 0;
          }

          [v21 setPhysicsBody:?];
          v19 = (v19 + 1);
        }

        while (v17 != v19);
        v22 = [NSArray countByEnumeratingWithState:v15 objects:"countByEnumeratingWithState:objects:count:" count:?];
        v17 = v22;
      }

      while (v22);
    }
  }

  objc_storeWeak(&self->_physicsWorld, 0);
}

- (AVTPhysicsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __55__AVTPhysicsController__setupPhysicsChain_physicsRigs___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v38 = objc_alloc_init(AVTPhysicsRig);
  [(AVTPhysicsRig *)v38 setRig:v5];
  [(AVTPhysicsRig *)v38 setChainRoot:?];
  v6 = [MEMORY[0x1E69DF340] dynamicBody];
  [v6 setPhysicsShape:?];
  [v6 setCategoryBitMask:?];
  [v6 setCollisionBitMask:?];
  [v6 setAffectedByGravity:?];
  [v6 setDamping:?];
  [v6 setAngularDamping:?];
  [v5 setPhysicsBody:?];
  [(AVTPhysicsRig *)v38 setPhysicsBody:v6];
  [v5 convertPosition:? toNode:?];
  v36 = v7;
  OUTLINED_FUNCTION_1_0();
  [v5 convertPosition:? toNode:?];
  v37 = v8;
  if (v38)
  {
    *v38->_restPosition_chainRoot = v36;
    [*(a1 + 32) convertVector:? fromNode:?];
    *v38->_restGravityVector_chainRoot = v9;
  }

  else
  {
    [*(a1 + 32) convertVector:? fromNode:?];
  }

  v10 = [v5 name];
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 40));
    v3 = [v5 name];
    [WeakRetained physicsController:? downforceForNodeNamed:?];
  }

  else
  {
    v11 = -1.0;
  }

  if (v38)
  {
    v38->_downForceFactor = v11;
  }

  if (v10)
  {
  }

  v12 = vmulq_f32(v37, v37);
  v13 = v12.f32[2] + vaddv_f32(*v12.f32);
  if (v38)
  {
    v38->_coneConstraintLength = sqrtf(v13);
    v38->_coneConstraintSinusAngularLimit = 0.30902;
  }

  v14 = v13;
  v15 = vrsqrte_f32(LODWORD(v13));
  v16 = vmul_f32(v15, vrsqrts_f32(LODWORD(v14), vmul_f32(v15, v15)));
  v17 = vmulq_n_f32(v37, vmul_f32(v16, vrsqrts_f32(LODWORD(v14), vmul_f32(v16, v16))).f32[0]);
  v18 = vabsq_f32(v17);
  if (v18.f32[0] >= v18.f32[1])
  {
    if (v18.f32[1] < v18.f32[2])
    {
      v19.i32[1] = 0;
      v19.f32[0] = -v17.f32[2];
      v19.i64[1] = v17.u32[0];
      goto LABEL_18;
    }
  }

  else if (v18.f32[0] < v18.f32[2])
  {
    v19.i32[0] = 0;
    v19.f32[1] = -v17.f32[2];
    v19.i64[1] = v17.u32[1];
    goto LABEL_18;
  }

  v19.i64[1] = 0;
  v19.f32[0] = -v17.f32[1];
  v19.i32[1] = v17.i32[0];
LABEL_18:
  if (v38)
  {
    v20 = vmulq_f32(v19, v19);
    *&v21 = v20.f32[2] + vaddv_f32(*v20.f32);
    *v20.f32 = vrsqrte_f32(v21);
    *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32)));
    v22 = vmulq_n_f32(v19, vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32))).f32[0]);
    v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), vnegq_f32(v17)), v22, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
    *v38->_anon_60 = v17;
    *&v38->_anon_60[16] = v22;
    *&v38->_anon_60[32] = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
  }

  OUTLINED_FUNCTION_1_0();
  [v5 convertTransform:? fromNode:?];
  if (v38)
  {
    *&v38[1].super.isa = v24;
    *&v38[1]._rig = v25;
    *&v38[1]._physicsBody = v26;
    *&v38[1]._downForceFactor = v27;
  }

  OUTLINED_FUNCTION_1_0();
  v29 = *(v28 + 40);
  v30 = *(a1 + 32);
  v31 = MEMORY[0x1E69DF348];
  if (v29 == v30)
  {
    v32 = *(a1 + 56);
  }

  else
  {
    v32 = [v29 physicsBody];
  }

  v33 = [v31 jointWithBodyA:? frameA:? bodyB:? frameB:?];
  if (v29 != v30)
  {
  }

  [v33 setMaximumAngularLimit1:?];
  [v33 setMaximumAngularLimit2:?];
  [v33 setMaximumTwistAngle:?];
  [(AVTPhysicsRig *)v38 setPhysicsBehavior:v33];
  [*(a1 + 64) addObject:?];
  OUTLINED_FUNCTION_1_0();
  v35 = *(v34 + 40);
  *(v34 + 40) = v5;
}

- (void)applyForcesWithMultiplier:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_setupDone";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Internal consistency error, at this point we should have a initialized the physcis controller", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __38__AVTPhysicsController_installPhysics__block_invoke_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "physicsRig.physicsBehavior";
}

- (void)physicsState
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_physicsRigs";
}

- (void)resetToPhysicsState:(void *)a3 assumeRestStateIfNil:(uint64_t)a4 .cold.1(uint64_t a1, id obj, void *a3, uint64_t a4)
{
  v7 = **(a1 + 16);
  do
  {
    v8 = 0;
    do
    {
      if (**(a1 + 16) != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(a1 + 8) + 8 * v8);
      if (v9)
      {
        v10 = *(v9 + 16);
      }

      else
      {
        v10 = 0;
      }

      v11 = [v10 physicsBody];
      [v11 setResting:?];

      v8 = v8 + 1;
    }

    while (a3 != v8);
    result = [obj countByEnumeratingWithState:? objects:? count:?];
    a3 = result;
  }

  while (result);
  return result;
}

- (void)addToPhysicsWorld:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_physicsWorld == nil";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. An avatar should not be shared across renderers", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)removeFromPhysicsWorld:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_physicsWorld == physicsWorld";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. An avatar should not be shared across renderers", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end