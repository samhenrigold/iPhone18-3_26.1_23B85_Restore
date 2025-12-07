@interface MTLSCorner
- (MTLSCorner)initWithStrokeWeight:(MTLSCorner *)self radius:(SEL)radius outerAnchor:(float)anchor innerAnchor:(float)innerAnchor cornerEdge:(float)edge scale:(float)scale rotation:(float)rotation translation:(AxisAngle)translation;
- (id).cxx_construct;
@end

@implementation MTLSCorner

- (MTLSCorner)initWithStrokeWeight:(MTLSCorner *)self radius:(SEL)radius outerAnchor:(float)anchor innerAnchor:(float)innerAnchor cornerEdge:(float)edge scale:(float)scale rotation:(float)rotation translation:(AxisAngle)translation
{
  v29 = v9;
  v30 = *&translation.var0;
  v10 = v8;
  v31 = *&rotation;
  v32 = *&scale;
  v14 = self + 1;
  isa = self[1].super.super.isa;
  if (isa)
  {
    *&v14->super._strokeWeight = isa;
    operator delete(isa);
    v14->super.super.isa = 0;
    *&v14->super._strokeWeight = 0;
    v14->super._controlPointsVector.__begin_ = 0;
  }

  v14->super.super.isa = 0;
  *&v14->super._strokeWeight = 0;
  v14->super._controlPointsVector.__begin_ = 0;
  v16 = *(v10 + 16);
  v17 = v16 != 180.0 && v16 != 0.0;
  v18 = (&v34 | (4 * (v17 ^ 1)));
  v34 = v30;
  v19 = powf(*(&v34 | (4 * v17)), 1.5);
  v20 = powf(*v18, 1.5);
  v21.f32[0] = (1.0 / v19) * edge;
  v21.i32[1] = 1.0;
  v21.i32[2] = 0;
  v36[0] = vmulq_n_f32(v21, innerAnchor);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(v14, v36);
  v22 = v32;
  v22.i32[1] = 1.0;
  v22.i32[2] = 0;
  v36[0] = vmulq_n_f32(v22, innerAnchor);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(v14, v36);
  v23 = v31;
  v23.i32[1] = 1.0;
  v23.i32[2] = 0;
  v36[0] = vmulq_n_f32(v23, innerAnchor);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(v14, v36);
  v24.i64[0] = __PAIR64__(v31.u32[0], 1.0);
  v24.i32[2] = 0;
  v36[0] = vmulq_n_f32(v24, innerAnchor);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(v14, v36);
  v25.i64[0] = __PAIR64__(v32.u32[0], 1.0);
  v25.i32[2] = 0;
  v36[0] = vmulq_n_f32(v25, innerAnchor);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(v14, v36);
  v26.i32[0] = 1.0;
  v26.f32[1] = (1.0 / v20) * edge;
  v26.i32[2] = 0;
  v36[0] = vmulq_n_f32(v26, innerAnchor);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(v14, v36);
  v27 = *(v10 + 16);
  v36[0] = *v10;
  v36[1] = v27;
  v35.receiver = self;
  v35.super_class = MTLSCorner;
  return [MTLSPath initWithPoints:sel_initWithPoints_count_strokeWeight_pattern_rotation_scale_translation_ count:COERCE_DOUBLE(__PAIR64__(DWORD1(v36[0]) strokeWeight:LODWORD(anchor))) pattern:*&v30 rotation:v29 scale:? translation:?];
}

- (id).cxx_construct
{
  *(self + 18) = 0;
  *(self + 19) = 0;
  *(self + 17) = 0;
  return self;
}

@end