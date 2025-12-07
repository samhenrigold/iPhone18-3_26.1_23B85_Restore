@interface ARCoachingArc
- (id)initWithRadius:(double)radius mat:(double)mat;
@end

@implementation ARCoachingArc

- (id)initWithRadius:(double)radius mat:(double)mat
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = -1;
  do
  {
    v9 = (v8 / 3.0) * 3.14159265 * 0.5;
    v10 = vmulq_n_f32(*&__sincosf_stret(v9), a2);
    *&v18[v7] = v10;
    ++v8;
    v7 += 16;
  }

  while (v7 != 96);
  v17.receiver = self;
  v17.super_class = ARCoachingArc;
  v10.i32[0] = *"333?";
  return [(ARCoachingSpline *)&v17 initWithPoints:v18 numPoints:6 relativeThickness:0 pattern:*v10.i64 mat:radius, mat, a5, a6];
}

@end