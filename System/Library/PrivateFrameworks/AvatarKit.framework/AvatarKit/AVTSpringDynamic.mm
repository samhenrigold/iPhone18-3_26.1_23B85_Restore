@interface AVTSpringDynamic
+ (void)enumerateDynamicsInHierarchy:(void *)hierarchy forAvatar:(void *)avatar usingBlock:;
- (NSString)description;
- (void)evaluateAtTime:(double)time physicsController:(id)controller;
- (void)resetTarget;
@end

@implementation AVTSpringDynamic

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(VFXNode *)self->_dynamicNode name];
  v6 = [v3 stringWithFormat:v4, self, name];

  return v6;
}

+ (void)enumerateDynamicsInHierarchy:(void *)hierarchy forAvatar:(void *)avatar usingBlock:
{
  avatarCopy = avatar;
  hierarchyCopy = hierarchy;
  objc_opt_self();
  avatarNode = [hierarchyCopy avatarNode];
  specializationSettings = [hierarchyCopy specializationSettings];

  v9 = [specializationSettings objectForKeyedSubscript:?];
  v10 = [v9 objectForKeyedSubscript:?];
  v13 = MEMORY[0x1E69E9820];
  v14 = avatarNode;
  v15 = avatarCopy;
  v11 = avatarCopy;
  v12 = avatarNode;
  [v10 enumerateKeysAndObjectsUsingBlock:{v13, 3221225472, __70__AVTSpringDynamic_enumerateDynamicsInHierarchy_forAvatar_usingBlock___block_invoke, &unk_1E7F47E08}];
}

void __70__AVTSpringDynamic_enumerateDynamicsInHierarchy_forAvatar_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:?];
  if (v6)
  {
    v7 = [*(a1 + 32) childNodeWithName:? recursively:?];
    if (v7)
    {
      v8 = [v6 objectForKeyedSubscript:?];
      v9 = [*(a1 + 32) childNodeWithName:? recursively:?];
      if (v9)
      {
        v10 = [v6 objectForKeyedSubscript:?];
        v11 = [v6 objectForKeyedSubscript:?];
        if (v10)
        {
          [v10 floatValue];
          v13 = v12;
        }

        else
        {
          v13 = 0.5;
        }

        v39 = v11;
        if (v11)
        {
          [v11 floatValue];
          v16 = v15;
        }

        else
        {
          v16 = 0.5;
        }

        v17 = objc_opt_new();
        objc_storeStrong((v17 + 8), v7);
        v18 = [v7 presentationNode];
        v19 = *(v17 + 16);
        *(v17 + 16) = v18;

        v20 = [v7 parentNode];
        v21 = [v20 presentationNode];
        v22 = *(v17 + 24);
        *(v17 + 24) = v21;

        v23 = [v9 presentationNode];
        v24 = *(v17 + 32);
        *(v17 + 32) = v23;

        *(v17 + 160) = 1;
        v25 = [[AVTMassSpringDamperSystem alloc] initWithPerceptualDuration:v13 bounce:v16];
        v26 = *(v17 + 64);
        *(v17 + 64) = v25;

        v27 = [v6 objectForKeyedSubscript:?];
        if ([v27 count] == 3)
        {
          *(v17 + 40) = 1;
          [v27 objectAtIndexedSubscript:?];
          v28 = v38 = v9;
          [v28 floatValue];
          v36 = v29;
          [v27 objectAtIndexedSubscript:?];
          v30 = v37 = v10;
          [v30 floatValue];
          v35 = v31;
          v32 = [v27 objectAtIndexedSubscript:?];
          [v32 floatValue];
          v33 = v36;
          DWORD1(v33) = v35;
          DWORD2(v33) = v34;
          *(v17 + 48) = v33;

          v10 = v37;
          v9 = v38;
        }

        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v14 = avt_default_log(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = v8;
          _os_log_impl(&dword_1BB472000, v14, OS_LOG_TYPE_DEFAULT, "Failed to find spring target named '%@'", buf, 0xCu);
        }
      }
    }

    else
    {
      v8 = avt_default_log(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v5;
        _os_log_impl(&dword_1BB472000, v8, OS_LOG_TYPE_DEFAULT, "Failed to find spring node named '%@'", buf, 0xCu);
      }
    }
  }
}

- (void)evaluateAtTime:(double)time physicsController:(id)controller
{
  [(VFXNode *)self->_targetPresentationNode worldPosition];
  if (self->_shouldReset)
  {
    self->_shouldReset = 0;
    self->_beginTime = time;
    *self->_beginVelocity = 0u;
    *self->_beginWorldPosition = v6;
    *self->_endWorldPosition = v6;
  }

  else
  {
    v7 = *self->_endWorldPosition;
    v8 = vcgtq_f32(vabdq_f32(v7, v6), vdupq_n_s32(0x3A83126Fu));
    v8.i32[3] = v8.i32[2];
    if ((vmaxvq_u32(v8) & 0x80000000) != 0)
    {
      v20 = v6;
      [(AVTMassSpringDamperSystem *)self->_system float3VelocityAtTime:*self->_beginWorldPosition initialValue:*self->_beginVelocity initialVelocity:v7 targetValue:?];
      v11 = v12;
      v10 = *self->_lastWorldPosition;
      if (self->_hasMaxOffsets)
      {
        v18 = *self->_lastWorldPosition;
        v19 = v12;
        [VFXNode convertVector:"convertVector:fromNode:" fromNode:?];
        v14 = vdivq_f32(v13, *&self->_maxOffsets[7]);
        v15 = vmulq_f32(v14, v14);
        v16 = v15.f32[2] + vaddv_f32(*v15.f32);
        v10 = v18;
        v11 = v19;
        v7 = v20;
        if (v16 > 1.0)
        {
          [VFXNode convertVector:"convertVector:toNode:" toNode:?];
          v11 = v19;
          v7 = v20;
          v10 = vaddq_f32(v20, v17);
        }
      }

      else
      {
        v7 = v20;
      }

      lastEvaluationTime = self->_lastEvaluationTime;
      self->_beginTime = lastEvaluationTime;
      *self->_beginVelocity = v11;
      *self->_beginWorldPosition = v10;
      *self->_endWorldPosition = v7;
    }

    else
    {
      lastEvaluationTime = self->_beginTime;
      v11 = *self->_beginVelocity;
      v10 = *self->_beginWorldPosition;
    }

    *v6.i64 = [(AVTMassSpringDamperSystem *)self->_system float3ValueAtTime:v10 initialValue:v11 initialVelocity:v7 targetValue:?];
  }

  *self->_lastWorldPosition = v6;
  [VFXNode convertPosition:"convertPosition:fromNode:" fromNode:?];
  [(VFXNode *)self->_dynamicNode setPosition:?];
  self->_lastEvaluationTime = time;
}

- (void)resetTarget
{
  dynamicParentPresentationNode = self->_dynamicParentPresentationNode;
  [(VFXNode *)self->_targetPresentationNode worldPosition];
  [VFXNode convertPosition:"convertPosition:fromNode:" fromNode:?];
  dynamicNode = self->_dynamicNode;

  [(VFXNode *)dynamicNode setPosition:?];
}

@end