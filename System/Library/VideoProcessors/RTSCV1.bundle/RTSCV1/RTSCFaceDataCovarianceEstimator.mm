@interface RTSCFaceDataCovarianceEstimator
- (RTSCFaceDataCovarianceEstimator)initWithTimeConstant:(float)constant initialCovariance:;
- (void)dealloc;
- (void)reset;
- (void)updateCovarianceWithFaceBox:(double)box atTime:;
@end

@implementation RTSCFaceDataCovarianceEstimator

- (RTSCFaceDataCovarianceEstimator)initWithTimeConstant:(float)constant initialCovariance:
{
  v12 = v3;
  v13.receiver = self;
  v13.super_class = RTSCFaceDataCovarianceEstimator;
  v5 = [(RTSCFaceDataCovarianceEstimator *)&v13 init];
  v6 = v5;
  if (v5)
  {
    *v5->_initialCovariance = v12;
    v7 = [RTSCAutocovarianceDynamicsAnalyzer4DOF alloc];
    *&v8 = constant;
    v9 = [(RTSCAutocovarianceDynamicsAnalyzer4DOF *)v7 initWithTimeConstant:v8 initialCovariance:*v6->_initialCovariance];
    faceDynamicsAnalyzer = v6->_faceDynamicsAnalyzer;
    v6->_faceDynamicsAnalyzer = v9;

    v6->_noiseAveragingTimescale = constant * 10.0;
    v6->_accelerationAveragingTimescale = constant;
    *v6->_anon_30 = xmmword_11C50;
    *&v6->_anon_30[16] = xmmword_11C60;
    *&v6->_anon_30[32] = xmmword_11C70;
    *&v6->_anon_30[48] = xmmword_11C80;
    *v6->_anon_70 = xmmword_11C90;
    *&v6->_anon_70[16] = xmmword_11CA0;
    *&v6->_anon_70[32] = xmmword_11CB0;
    *&v6->_anon_70[48] = xmmword_11CC0;
    [(RTSCFaceDataCovarianceEstimator *)v6 reset];
  }

  return v6;
}

- (void)reset
{
  [(RTSCAutocovarianceDynamicsAnalyzer4DOF *)self->_faceDynamicsAnalyzer reset];
  *&v3 = 0;
  DWORD2(v3) = 0;
  v4 = *self->_initialCovariance;
  LODWORD(v5) = 0;
  HIDWORD(v5) = 0;
  *(&v5 + 4) = HIDWORD(*self->_initialCovariance);
  *&v6 = 0;
  *(&v6 + 1) = *&self->_initialCovariance[8];
  HIDWORD(v3) = HIDWORD(*self->_initialCovariance);
  *self->_anon_c0 = v4;
  *&self->_anon_c0[16] = v5;
  *&self->_anon_c0[32] = v6;
  *&self->_anon_c0[48] = v3;
  *&self[1].super.isa = v4;
  *&self[1]._noiseAveragingTimescale = v5;
  *self[1]._initialCovariance = v6;
  *self[1]._anon_30 = v3;
  self->_prevTime = -INFINITY;
}

- (void)dealloc
{
  faceDynamicsAnalyzer = self->_faceDynamicsAnalyzer;
  self->_faceDynamicsAnalyzer = 0;

  v4.receiver = self;
  v4.super_class = RTSCFaceDataCovarianceEstimator;
  [(RTSCFaceDataCovarianceEstimator *)&v4 dealloc];
}

- (void)updateCovarianceWithFaceBox:(double)box atTime:
{
  v4 = v3;
  v32 = *&box;
  [RTSCAutocovarianceDynamicsAnalyzer4DOF updateWithData:"updateWithData:atTime:" atTime:?];
  prevTime = self->_prevTime;
  if (prevTime <= 0.0)
  {
    LODWORD(v22) = 0;
    *(&v22 + 1) = (vmuls_lane_f32(v32.f32[2], v32, 3) * 0.0001) + 0.0;
    v23.i64[0] = 0;
    v23.i32[2] = 0;
    v24.i64[0] = 0;
    v24.i32[3] = 0;
    v24.f32[2] = *(&v22 + 1);
    v23.f32[3] = *(&v22 + 1);
    v25 = vaddq_f32(v22, *&self->_anon_c0[16]);
    v26 = vaddq_f32(v24, *&self->_anon_c0[32]);
    v27 = vaddq_f32(v23, *&self->_anon_c0[48]);
    *self->_anon_c0 = vaddq_f32(HIDWORD(v22), *self->_anon_c0);
    *&self->_anon_c0[16] = v25;
    *&self->_anon_c0[32] = v26;
    *&self->_anon_c0[48] = v27;
    v28 = vaddq_f32(HIDWORD(v22), *&self[1].super.isa);
    v29 = vaddq_f32(v22, *&self[1]._noiseAveragingTimescale);
    v30 = vaddq_f32(v24, *self[1]._initialCovariance);
    v31 = vaddq_f32(v23, *self[1]._anon_30);
    *&self[1].super.isa = v28;
    *&self[1]._noiseAveragingTimescale = v29;
    *self[1]._initialCovariance = v30;
    *self[1]._anon_30 = v31;
  }

  else
  {
    v7 = v4 - prevTime;
    v33 = self->_noiseAveragingTimescale / (self->_noiseAveragingTimescale + v7);
    [(RTSCAutocovarianceDynamicsAnalyzer4DOF *)self->_faceDynamicsAnalyzer residualCovariance];
    v12 = vaddq_f32(vmulq_n_f32(vaddq_f32(*self->_anon_30, v8), 1.0 - v33), vmulq_n_f32(*self->_anon_c0, v33));
    v13 = vaddq_f32(vmulq_n_f32(vaddq_f32(v9, *&self->_anon_30[16]), 1.0 - v33), vmulq_n_f32(*&self->_anon_c0[16], v33));
    v14 = vaddq_f32(vmulq_n_f32(vaddq_f32(v10, *&self->_anon_30[32]), 1.0 - v33), vmulq_n_f32(*&self->_anon_c0[32], v33));
    v15 = vaddq_f32(vmulq_n_f32(vaddq_f32(v11, *&self->_anon_30[48]), 1.0 - v33), vmulq_n_f32(*&self->_anon_c0[48], v33));
    *self->_anon_c0 = v12;
    *&self->_anon_c0[16] = v13;
    *&self->_anon_c0[32] = v14;
    *&self->_anon_c0[48] = v15;
    v12.f32[0] = self->_accelerationAveragingTimescale / (self->_accelerationAveragingTimescale + v7);
    v34 = *v12.f32;
    [(RTSCAutocovarianceDynamicsAnalyzer4DOF *)self->_faceDynamicsAnalyzer estimatedAcceleration];
    v17 = &self[1];
    v18 = vdupq_lane_s32(v34, 0);
    v19 = -4;
    do
    {
      v35 = v16;
      v20 = vmlaq_n_f32(v17[-9], v16, *(&v35 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v19 + 4) & 3))));
      *v17 = vmlaq_f32(v20, vsubq_f32(*v17, v20), v18);
      ++v17;
    }

    while (!__CFADD__(v19++, 1));
  }

  self->_prevTime = v4;
}

@end