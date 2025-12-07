@interface MTLSCircle
- (MTLSCircle)initWithStrokeWeight:(MTLSCircle *)self radius:(SEL)radius scale:(float)scale rotation:(float)rotation translation:(AxisAngle)translation;
- (id).cxx_construct;
@end

@implementation MTLSCircle

- (MTLSCircle)initWithStrokeWeight:(MTLSCircle *)self radius:(SEL)radius scale:(float)scale rotation:(float)rotation translation:(AxisAngle)translation
{
  v16 = *&translation.var0;
  v17 = v6;
  v7 = v5;
  v10 = self + 1;
  isa = self[1].super.super.isa;
  if (isa)
  {
    *&v10->super._strokeWeight = isa;
    operator delete(isa);
    v10->super.super.isa = 0;
    *&v10->super._strokeWeight = 0;
    v10->super._controlPointsVector.__begin_ = 0;
  }

  v12 = 0;
  v10->super.super.isa = 0;
  *&v10->super._strokeWeight = 0;
  v10->super._controlPointsVector.__begin_ = 0;
  do
  {
    v13 = (v12 / 9.0) * 3.14159265 + (v12 / 9.0) * 3.14159265;
    v20[0] = vmulq_n_f32(*&__sincosf_stret(v13), rotation);
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(v10, v20);
    ++v12;
  }

  while (v12 != 10);
  v14 = v7[1];
  v20[0] = *v7;
  v20[1] = v14;
  v19.receiver = self;
  v19.super_class = MTLSCircle;
  return [MTLSPath initWithPoints:sel_initWithPoints_count_strokeWeight_pattern_rotation_scale_translation_ count:COERCE_DOUBLE(__PAIR64__(DWORD1(v20[0]) strokeWeight:LODWORD(scale))) pattern:v16 rotation:v17 scale:? translation:?];
}

- (id).cxx_construct
{
  *(self + 18) = 0;
  *(self + 19) = 0;
  *(self + 17) = 0;
  return self;
}

@end