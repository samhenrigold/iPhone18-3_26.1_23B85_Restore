@interface ABPKRetargeting
- (ABPKRetargeting)init;
- (id)_retargetSkeleton:(id)skeleton;
- (id)processData:(id)data;
- (void)dealloc;
@end

@implementation ABPKRetargeting

- (ABPKRetargeting)init
{
  v3 = __ABPKLogSharedInstance(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ABPKRetargeting: Initializing ", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = ABPKRetargeting;
  v4 = [(ABPKRetargeting *)&v8 init];
  if (v4)
  {
    v5 = objc_opt_new();
    skeletonIdentifier = v4->_skeletonIdentifier;
    v4->_skeletonIdentifier = v5;

    v4->_coreIKSolver = CoreIKCreateAltruisticSolverInstance();
  }

  return v4;
}

- (void)dealloc
{
  MEMORY[0x23EF24F70](self->_coreIKSolver, a2);
  v3.receiver = self;
  v3.super_class = ABPKRetargeting;
  [(ABPKRetargeting *)&v3 dealloc];
}

- (id)processData:(id)data
{
  v3 = [(ABPKRetargeting *)self _retargetSkeleton:data];

  return v3;
}

- (id)_retargetSkeleton:(id)skeleton
{
  v71 = *MEMORY[0x277D85DE8];
  skeletonCopy = skeleton;
  v5 = __ABPKLogSharedInstance(skeletonCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_DEBUG, " ABPKRetargeting: Retargeting skeleton ", buf, 2u);
  }

  SourceBufferSize = CoreIKSolverGetSourceBufferSize();
  TargetBufferSize = CoreIKSolverGetTargetBufferSize();
  joints = MEMORY[0x28223BE20](TargetBufferSize);
  if (SourceBufferSize)
  {
    v9 = 0;
    v10 = &v63[-4 * SourceBufferSize + 2];
    __asm { FMOV            V0.4S, #10.0 }

    v67 = _Q0;
    v68 = xmmword_23EE28170;
    do
    {
      joints = [skeletonCopy joints];
      v16 = v68;
      *(v10 - 1) = vdivq_f32(*(joints + 16 * v9), v67);
      *v10 = v16;
      ++v9;
      v10 += 2;
    }

    while (SourceBufferSize != v9);
  }

  v17 = __ABPKLogSharedInstance(joints);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v17, OS_LOG_TYPE_DEBUG, " \t Run CoreIK solver ", buf, 2u);
  }

  v19 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v20 = CoreIKSolveModelSpaceSource();
  v21 = v20;
  v22 = MEMORY[0x28223BE20](v20);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v63[-2 * v24];
  if (v23)
  {
    v26 = __ABPKLogSharedInstance(v23);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v70 = v21;
      _os_log_impl(&dword_23EDDC000, v26, OS_LOG_TYPE_ERROR, " Could not solve skeleton: %i ", buf, 8u);
    }

    v27 = 0;
  }

  else
  {
    v28 = __ABPKLogSharedInstance(v23);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v28, OS_LOG_TYPE_DEBUG, " \t Create result type ", buf, 2u);
    }

    v63[1] = v63;
    if (TargetBufferSize)
    {
      v32 = v25 + 1;
      v33 = &v63[-4 * TargetBufferSize + 2];
      v34 = v33;
      v35 = &v63[-8 * TargetBufferSize + 4];
      v64 = xmmword_23EE28180;
      v65 = vdupq_n_s32(0x3C23D70Au);
      v36 = TargetBufferSize;
      do
      {
        v37 = v29;
        _Q4 = *v33;
        LODWORD(_S5) = HIDWORD(v33->i64[0]);
        _S6 = _Q4.i32[2];
        __asm { FMLS            S0, S6, V4.S[2] }

        _S16 = HIDWORD(*v33);
        __asm { FMLA            S0, S16, V4.S[3] }

        v44 = vmuls_lane_f32(_Q4.f32[2], _Q4, 3);
        v45 = vmuls_lane_f32(_S5, *v33, 3);
        *(&_Q0 + 1) = (v44 + (COERCE_FLOAT(*v33) * _S5)) + (v44 + (COERCE_FLOAT(*v33) * _S5));
        *(&_Q0 + 2) = -(v45 - (_Q4.f32[0] * _Q4.f32[2])) - (v45 - (_Q4.f32[0] * _Q4.f32[2]));
        v46 = -(v44 - (COERCE_FLOAT(*v33) * _S5));
        v47.f32[0] = v46 + v46;
        __asm
        {
          FMLA            S7, S5, V4.S[1]
          FMLA            S7, S16, V4.S[3]
          FMLA            S17, S6, V4.S[1]
        }

        v47.f32[1] = _S7 - (_Q4.f32[0] * _Q4.f32[0]);
        v47.i64[1] = __PAIR64__(v31, _S17 + _S17);
        *&v51 = (v45 + (_Q4.f32[2] * _Q4.f32[0])) + (v45 + (_Q4.f32[2] * _Q4.f32[0]));
        __asm
        {
          FMLA            S7, S6, V4.S[1]
          FMLA            S16, S6, V4.S[2]
          FMLS            S6, S5, V4.S[1]
        }

        *(&v51 + 1) = _S7 + _S7;
        *(&v51 + 1) = __PAIR64__(v30, _S6);
        HIDWORD(_Q0) = v37;
        v67 = v47;
        v68 = _Q0;
        v66 = v51;
        simdMatrix4x4FromRotationAndTranslation();
        *(v35 - 2) = v55;
        *(v35 - 1) = v56;
        v30 = HIDWORD(v66);
        v57 = vmulq_f32(v34[-1], v65);
        *v32 = *v34;
        v32[1] = v57;
        v32[-1] = v64;
        v32 += 3;
        *v35 = v58;
        v35[1] = v59;
        v35 += 4;
        v33 += 2;
        v34 += 2;
        --v36;
        v31 = v67.i32[3];
        v29 = HIDWORD(v68);
      }

      while (v36);
    }

    v60 = [ABPKResultRetargeting alloc];
    LODWORD(v61) = 981668463;
    v26 = [skeletonCopy createResultScaledByFactor:v61];
    v27 = [(ABPKResultRetargeting *)v60 initWithModelJointTransforms:&v63[-8 * TargetBufferSize] localJointTransformsSRT:v25 numberOfTransforms:TargetBufferSize liftedSkeletonData:v26 identifier:self->_skeletonIdentifier];
  }

  return v27;
}

@end