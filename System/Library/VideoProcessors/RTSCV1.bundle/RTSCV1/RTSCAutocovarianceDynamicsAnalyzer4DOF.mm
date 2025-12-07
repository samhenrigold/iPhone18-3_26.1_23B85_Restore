@interface RTSCAutocovarianceDynamicsAnalyzer4DOF
- (RTSCAutocovarianceDynamicsAnalyzer4DOF)initWithTimeConstant:(float)constant initialCovariance:;
- (void)_applyTimeOffset:(float)offset;
- (void)_initializeCovariances;
- (void)reset;
- (void)updateWithData:(double)data atTime:;
@end

@implementation RTSCAutocovarianceDynamicsAnalyzer4DOF

- (RTSCAutocovarianceDynamicsAnalyzer4DOF)initWithTimeConstant:(float)constant initialCovariance:
{
  v9 = v3;
  v10.receiver = self;
  v10.super_class = RTSCAutocovarianceDynamicsAnalyzer4DOF;
  v5 = [(RTSCAutocovarianceDynamicsAnalyzer4DOF *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_timeConstant = constant;
    *&v5->_initialCovariance[4] = v9;
    [(RTSCAutocovarianceDynamicsAnalyzer4DOF *)v5 reset];
    v7 = v6;
  }

  else
  {
    [RTSCAutocovarianceDynamicsAnalyzer4DOF initWithTimeConstant:initialCovariance:];
  }

  return v6;
}

- (void)reset
{
  LOBYTE(self->_prevTime) = 0;
  *&v2 = 0;
  DWORD2(v2) = 0;
  *&self->_estimatedVelocity[8] = 0u;
  *&self->_estimatedAcceleration[8] = 0u;
  LODWORD(v3) = 0;
  HIDWORD(v3) = 0;
  *(&v3 + 4) = HIDWORD(*&self->_initialCovariance[4]);
  *&v4 = 0;
  *(&v4 + 1) = *&self->_initialCovariance[12];
  HIDWORD(v2) = HIDWORD(*&self->_initialCovariance[4]);
  *&self[1]._timeConstant = *&self->_initialCovariance[4];
  *&self[1]._initialCovariance[12] = v3;
  *self[1]._prevData = v4;
  *self[1]._dataResidual = v2;
}

- (void)_initializeCovariances
{
  *&self->_dataResidual[8] = 0u;
  v2 = *&self->_initialCovariance[4];
  LODWORD(v3) = 0;
  HIDWORD(v3) = 0;
  *(&v3 + 4) = HIDWORD(*&self->_initialCovariance[4]);
  *&v4 = 0;
  *(&v4 + 1) = *&self->_initialCovariance[12];
  *&self->_meanDataResidual[8] = 0u;
  *&v5 = 0;
  DWORD2(v5) = 0;
  HIDWORD(v5) = HIDWORD(v2);
  *&self->_anon_a0[8] = v2;
  *&self->_anon_a0[24] = v3;
  *&self->_anon_a0[40] = v4;
  *&self->_anon_a0[56] = v5;
  *&v2 = self->_timeConstant;
  LODWORD(v4) = v2;
  *(&v4 + 1) = (*&v2 / -30.0) + ((*&v2 * -2.0) * *&v2);
  *self->_anon_58 = v4;
  *&v4 = *&v2 * *&v2;
  LODWORD(v5) = v2;
  *(&v5 + 1) = *(&v4 + 1) + ((*&v2 * -2.0) * *&v2);
  *self->_anon_78 = v5;
  *(&v2 + 1) = *(&v5 + 1) + ((*&v2 * -2.0) * *&v2);
  v6.f32[1] = *(&v2 + 1);
  v6.f32[0] = *(&v5 + 1);
  *&v2 = vmul_f32(*&v2, v6);
  *&self->_anon_e0[8] = vzip1_s32(*&v4, *&v2);
  *self->_estimatedVelocity = v2;
  *&self->_anon_80[8] = 0u;
  *&self->_anon_80[24] = 0u;
}

- (void)_applyTimeOffset:(float)offset
{
  *_D0.i32 = (self->_timeConstant + self->_timeConstant) * offset;
  v4 = vdupq_lane_s32(_D0, 0).u64[0];
  *&self->_anon_80[24] = vmlaq_n_f32(*&self->_anon_80[24], *&self->_meanDataResidual[8], *_D0.i32);
  _D2 = *self->_anon_78;
  v6 = *self->_estimatedVelocity;
  *&self->_anon_e0[12] = *&self->_anon_e0[12] + (_D2.f32[0] * *_D0.i32);
  _S5 = 2.0;
  v8 = *_D0.i32 + _D2.f32[1];
  v9 = *_D0.i32 + *&self->_anon_58[4];
  __asm { FMLA            S0, S5, V2.S[1] }

  _D2.i32[1] = _D0.i32[0];
  *self->_estimatedVelocity = vmla_f32(v6, _D2, v4);
  *&self->_anon_78[4] = v8;
  *&self->_anon_58[4] = v9;
}

- (void)updateWithData:(double)data atTime:
{
  v4 = v3;
  v43 = *&data;
  if (LOBYTE(self->_prevTime) == 1)
  {
    v6 = *self->_prevData;
  }

  else
  {
    [(RTSCAutocovarianceDynamicsAnalyzer4DOF *)self _initializeCovariances];
    *self->_prevData = v4;
    v7 = v43.i64[1];
    *&self->_prevData[8] = v43;
    LOBYTE(self->_prevTime) = 1;
    v6 = v4;
  }

  *&v8 = v4 - v6;
  *&v8 = v4 - v6;
  v41 = v8;
  *&v8 = -*&v8;
  [(RTSCAutocovarianceDynamicsAnalyzer4DOF *)self _applyTimeOffset:*&v8, v41];
  v9.f32[0] = v42;
  *v10.i32 = self->_timeConstant / (self->_timeConstant + v42);
  v11 = vdupq_lane_s32(v10, 0).u64[0];
  v12 = vmulq_n_f32(vaddq_f32(*&self->_dataResidual[8], vsubq_f32(v43, *&self->_prevData[8])), *v10.i32);
  *&self->_dataResidual[8] = v12;
  v9.f32[1] = -(v9.f32[0] * v9.f32[0]);
  v13 = vmul_f32(v11, vadd_f32(v9, *self->_anon_58));
  *self->_anon_58 = v13;
  v14 = vmulq_n_f32(v12, v13.f32[0]);
  v15 = vmulq_lane_f32(v12, v13, 1);
  v16 = vmulq_n_f32(v12, v12.f32[0]);
  v17 = vmulq_lane_f32(v12, *v12.f32, 1);
  v18 = vmulq_laneq_f32(v12, v12, 2);
  v19 = vmulq_laneq_f32(v12, v12, 3);
  *&self->_meanDataResidual[8] = vmlaq_n_f32(v12, vsubq_f32(*&self->_meanDataResidual[8], v12), *v10.i32);
  v20 = vmul_n_f32(v13, v13.f32[0]);
  v21 = vmul_lane_f32(v13, v13, 1);
  *self->_anon_78 = vmla_f32(v13, vsub_f32(*self->_anon_78, v13), v11);
  *v12.f32 = vmul_f32(v11, *&self->_anon_e0[8]);
  v22 = vmul_f32(v11, *self->_estimatedVelocity);
  *v23.i32 = 1.0 - *v10.i32;
  v24 = vdupq_lane_s32(v23, 0).u64[0];
  v25 = vmul_f32(v24, v21);
  v26 = vadd_f32(vmul_f32(v24, v20), *v12.f32);
  *v12.f32 = vadd_f32(v25, v22);
  *&self->_anon_e0[8] = v26;
  *self->_estimatedVelocity = v12.i64[0];
  v27 = vaddq_f32(vmulq_n_f32(v15, 1.0 - *v10.i32), vmulq_n_f32(*&self->_anon_80[24], *v10.i32));
  *&self->_anon_80[8] = vaddq_f32(vmulq_n_f32(v14, 1.0 - *v10.i32), vmulq_n_f32(*&self->_anon_80[8], *v10.i32));
  *&self->_anon_80[24] = v27;
  v28 = vmulq_n_f32(*&self->_anon_a0[8], *v10.i32);
  v29 = vmulq_n_f32(*&self->_anon_a0[24], *v10.i32);
  v30 = vmulq_n_f32(*&self->_anon_a0[40], *v10.i32);
  v31 = vmulq_n_f32(*&self->_anon_a0[56], *v10.i32);
  *&self->_anon_a0[8] = vaddq_f32(vmulq_n_f32(v16, *v23.i32), v28);
  *&self->_anon_a0[24] = vaddq_f32(vmulq_n_f32(v17, *v23.i32), v29);
  *&self->_anon_a0[40] = vaddq_f32(vmulq_n_f32(v18, *v23.i32), v30);
  *&self->_anon_a0[56] = vaddq_f32(vmulq_n_f32(v19, *v23.i32), v31);
  v32 = __invert_f2(*(&v12 - 8));
  v33 = 0;
  v34 = *&self->_anon_80[8];
  v35 = *&self->_anon_80[24];
  v36 = vmlaq_lane_f32(vmulq_n_f32(v34, v32.columns[0].f32[0]), v35, v32.columns[0], 1);
  v37 = vmlaq_lane_f32(vmulq_n_f32(v34, v32.columns[1].f32[0]), v35, v32.columns[1], 1);
  *&self->_estimatedVelocity[8] = v36;
  *&self->_estimatedAcceleration[8] = vaddq_f32(v37, v37);
  v44[0] = vzip1q_s32(v36, v37);
  v44[1] = vzip2q_s32(v36, v37);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  do
  {
    *(&v45 + v33) = vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*(v44 + v33))), v35, *(v44 + 8 * v33), 1);
    ++v33;
  }

  while (v33 != 4);
  v38 = vsubq_f32(*&self->_anon_a0[24], v46);
  v39 = vsubq_f32(*&self->_anon_a0[40], v47);
  v40 = vsubq_f32(*&self->_anon_a0[56], v48);
  *&self[1]._timeConstant = vsubq_f32(*&self->_anon_a0[8], v45);
  *&self[1]._initialCovariance[12] = v38;
  *self[1]._prevData = v39;
  *self[1]._dataResidual = v40;
  *&self->_prevData[8] = v43;
  *self->_prevData = v4;
}

@end