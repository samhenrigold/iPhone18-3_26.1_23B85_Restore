@interface SCNTransformConstraint
+ (SCNTransformConstraint)orientationConstraintInWorldSpace:(BOOL)world withBlock:(void *)block;
+ (SCNTransformConstraint)positionConstraintInWorldSpace:(BOOL)world withBlock:(void *)block;
+ (SCNTransformConstraint)transformConstraintInWorldSpace:(BOOL)world withBlock:(void *)block;
- (SCNTransformConstraint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initOrientationInWorldSpace:(BOOL)space withBlock:(id)block;
- (id)initPositionInWorld:(BOOL)world withBlock:(id)block;
- (id)initTransformInWorld:(BOOL)world withBlock:(id)block;
@end

@implementation SCNTransformConstraint

- (id)initTransformInWorld:(BOOL)world withBlock:(id)block
{
  v10.receiver = self;
  v10.super_class = SCNTransformConstraint;
  v6 = [(SCNConstraint *)&v10 init];
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__SCNTransformConstraint_initTransformInWorld_withBlock___block_invoke;
    v8[3] = &unk_278301AD8;
    worldCopy = world;
    v8[4] = block;
    v6->super._constraintRef = C3DConstraintCreateProcedural(v8, @"transform");
  }

  return v6;
}

void *__57__SCNTransformConstraint_initTransformInWorld_withBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  memset(&v24, 0, sizeof(v24));
  if (*(a1 + 40) == 1)
  {
    WorldMatrix = C3DNodeGetWorldMatrix(a3, a2);
  }

  else
  {
    memset(&v23, 0, sizeof(v23));
    C3DNodeGetMatrix(a3, a2, &v23);
    WorldMatrix = &v23;
  }

  [SCNNode nodeWithNodeRef:a3, C3DMatrix4x4ToSCNMatrix4(WorldMatrix, &v24).n128_f64[0]];
  memset(&v23, 0, sizeof(v23));
  v10 = *(*(a1 + 32) + 16);
  a = v24;
  v10(&v23);
  a = v24;
  v21 = v23;
  result = SCNMatrix4EqualToMatrix4(&a, &v21);
  if ((result & 1) == 0)
  {
    memset(&a, 0, sizeof(a));
    C3DMatrix4x4FromSCNMatrix4(&a, &v23);
    if (*(a1 + 40) == 1)
    {
      Parent = C3DNodeGetParent(a3, v12);
      if (Parent)
      {
        memset(&v21, 0, sizeof(v21));
        v14 = C3DNodeGetWorldMatrix(Parent, v12);
        C3DMatrix4x4Invert(v14, &v21);
        C3DMatrix4x4Mult(&a, &v21, &a);
      }
    }

    TargetAddress = C3DModelTargetGetTargetAddress(a4, v12);
    v17 = TargetAddress;
    if (a5 != 1.0)
    {
      C3DMatrix4x4Interpolate(TargetAddress, &a, &a, a5);
    }

    Target = C3DModelTargetGetTarget(a4, v16);
    v20 = C3DSizeOfBaseType(11, v19);
    return C3DSetValue(Target, v17, &a, v20, *(a4 + 34), *(a4 + 35));
  }

  return result;
}

- (id)initPositionInWorld:(BOOL)world withBlock:(id)block
{
  v10.receiver = self;
  v10.super_class = SCNTransformConstraint;
  v6 = [(SCNConstraint *)&v10 init];
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__SCNTransformConstraint_initPositionInWorld_withBlock___block_invoke;
    v8[3] = &unk_278301AD8;
    worldCopy = world;
    v8[4] = block;
    v6->super._constraintRef = C3DConstraintCreateProcedural(v8, @"translation");
  }

  return v6;
}

void *__56__SCNTransformConstraint_initPositionInWorld_withBlock___block_invoke(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, float a5)
{
  if (*(a1 + 40) == 1)
  {
    WorldMatrix = C3DNodeGetWorldMatrix(a3, a2);
    *(v33.columns[0].i64 + 4) = 0;
    v33.columns[0].i32[0] = 0;
    C3DMatrix4x4GetTranslation(WorldMatrix, &v33);
    v9 = v33.columns[0];
  }

  else
  {
    *v9.i64 = C3DNodeGetPosition(a3);
  }

  b = v9.i64[0];
  v10 = v9.f32[2];
  [SCNNode nodeWithNodeRef:a3];
  *v11.i64 = (*(*(a1 + 32) + 16))();
  v29 = v11;
  v26 = v12;
  v27 = v13;
  *&v35.x = b;
  v35.z = v10;
  result = SCNVector3EqualToVector3(*v11.f32, v35);
  if ((result & 1) == 0)
  {
    v16 = v29;
    v16.i32[1] = v26;
    v16.i32[2] = v27;
    v34 = v16;
    v30 = v16;
    if (*(a1 + 40) == 1)
    {
      Parent = C3DNodeGetParent(a3, v15);
      if (Parent)
      {
        memset(&v33, 0, sizeof(v33));
        v18 = C3DNodeGetWorldMatrix(Parent, v15);
        C3DMatrix4x4Invert(v18, &v33);
        v32[0] = v33.columns[0];
        v32[1] = v33.columns[1];
        v32[2] = v33.columns[2];
        v32[3] = v33.columns[3];
        *v19.i64 = C3DVector3MultMatrix4x4(v32, v30);
        v30 = v19;
        v34 = v19;
      }
    }

    if (a5 != 1.0)
    {
      *v20.i64 = C3DNodeGetPosition(a3);
      v34 = vmlaq_n_f32(v20, vsubq_f32(v30, v20), a5);
    }

    Target = C3DModelTargetGetTarget(a4, v15);
    TargetAddress = C3DModelTargetGetTargetAddress(a4, v22);
    v25 = C3DSizeOfBaseType(9, v24);
    return C3DSetValue(Target, TargetAddress, &v34, v25, *(a4 + 34), *(a4 + 35));
  }

  return result;
}

- (id)initOrientationInWorldSpace:(BOOL)space withBlock:(id)block
{
  v10.receiver = self;
  v10.super_class = SCNTransformConstraint;
  v6 = [(SCNConstraint *)&v10 init];
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__SCNTransformConstraint_initOrientationInWorldSpace_withBlock___block_invoke;
    v8[3] = &unk_278301AD8;
    spaceCopy = space;
    v8[4] = block;
    v6->super._constraintRef = C3DConstraintCreateProcedural(v8, @"quaternion");
  }

  return v6;
}

void *__64__SCNTransformConstraint_initOrientationInWorldSpace_withBlock___block_invoke(uint64_t a1, float a2, uint64_t a3, float32x4_t *a4, uint64_t a5)
{
  if (*(a1 + 40) == 1)
  {
    v59.columns[0] = 0uLL;
    C3DNodeGetWorldOrientation(a4, &v59);
    v8 = v59.columns[0];
  }

  else
  {
    C3DNodeGetQuaternion(a4, a3);
  }

  ba = v8;
  [SCNNode nodeWithNodeRef:a4];
  *&v9.x = (*(*(a1 + 32) + 16))();
  v52 = v9;
  v47 = v10;
  v48 = v11;
  v49 = v12;
  result = SCNVector4EqualToVector4(v9, ba);
  if ((result & 1) == 0)
  {
    v15 = v52;
    v15.y = v47;
    v15.z = v48;
    v16 = v15;
    v16.i32[3] = v49;
    b = v16;
    v60 = v16;
    if (*(a1 + 40) == 1)
    {
      v53 = v15;
      Parent = C3DNodeGetParent(a4, v14);
      if (Parent)
      {
        memset(&v59, 0, sizeof(v59));
        WorldMatrix = C3DNodeGetWorldMatrix(Parent, v14);
        C3DMatrix4x4Invert(WorldMatrix, &v59);
        v58[0] = v59.columns[0];
        v58[1] = v59.columns[1];
        v58[2] = v59.columns[2];
        v58[3] = v59.columns[3];
        *v19.i64 = C3DMatrix4x4GetRotation(v58);
        v20 = v19;
        v20.i32[3] = v19.i32[0];
        v21 = v53;
        v22 = vzip1q_s32(v21, v21);
        v22.i32[0] = v53.i32[2];
        v23 = vuzp1q_s32(v21, v21);
        v23.i32[0] = v53.i32[1];
        v60 = vmlsq_f32(vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v20, vextq_s8(vdupq_laneq_s32(b, 3), b, 4uLL)), xmmword_21C27FD00), b, v19, 3), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL), v22)), v23, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
        b = v60;
      }
    }

    TargetAddress = C3DModelTargetGetTargetAddress(a5, v14);
    v27 = TargetAddress;
    v28 = a2;
    if (a2 != 1.0)
    {
      _Q6 = *TargetAddress;
      _Q0 = vmulq_f32(*TargetAddress, b);
      _S1 = b.z;
      __asm { FMLA            S0, S1, V6.S[2] }

      _Q2.i32[0] = LODWORD(b.w);
      v35 = -(_Q0.f32[0] + (COERCE_FLOAT(HIDWORD(*TargetAddress)) * b.w));
      __asm { FMLA            S0, S2, V6.S[3] }

      _Q2.i64[0] = 0;
      v37 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(_Q2, _Q0), 0), vnegq_f32(b), b);
      if (_Q0.f32[0] < 0.0)
      {
        _Q0.f32[0] = v35;
      }

      if (1.0 - _Q0.f32[0] <= 0.00100000005)
      {
        v43 = 1.0 - a2;
      }

      else
      {
        v54 = v37;
        bb = *TargetAddress;
        v38 = acosf(_Q0.f32[0]);
        v39 = sinf(v38);
        v40 = sinf((1.0 - a2) * v38);
        v41 = v38 * a2;
        v51 = v40 / v39;
        v42 = sinf(v41);
        v43 = v51;
        v37 = v54;
        _Q6 = bb;
        v28 = v42 / v39;
      }

      v60 = vmlaq_n_f32(vmulq_n_f32(v37, v28), _Q6, v43);
    }

    Target = C3DModelTargetGetTarget(a5, v25);
    v46 = C3DSizeOfBaseType(10, v45);
    return C3DSetValue(Target, v27, &v60, v46, *(a5 + 34), *(a5 + 35));
  }

  return result;
}

+ (SCNTransformConstraint)transformConstraintInWorldSpace:(BOOL)world withBlock:(void *)block
{
  v4 = [[SCNTransformConstraint alloc] initTransformInWorld:world withBlock:block];

  return v4;
}

+ (SCNTransformConstraint)positionConstraintInWorldSpace:(BOOL)world withBlock:(void *)block
{
  v4 = [[SCNTransformConstraint alloc] initPositionInWorld:world withBlock:block];

  return v4;
}

+ (SCNTransformConstraint)orientationConstraintInWorldSpace:(BOOL)world withBlock:(void *)block
{
  v4 = [[SCNTransformConstraint alloc] initOrientationInWorldSpace:world withBlock:block];

  return v4;
}

- (SCNTransformConstraint)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SCNTransformConstraint;
  v4 = [(SCNConstraint *)&v6 init];
  if (v4)
  {
    v4->super._constraintRef = C3DConstraintCreateProcedural(&__block_literal_global_131, @"transform");
    [(SCNConstraint *)v4 finalizeDecodeConstraint:coder];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  Copy = C3DConstraintProceduralCreateCopy(self->super._constraintRef, v5);
  [v4 setConstraintRef:Copy];
  CFRelease(Copy);
  [(SCNConstraint *)self copyTo:v4];
  return v4;
}

@end