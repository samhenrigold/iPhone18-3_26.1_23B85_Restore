@interface ARCoachingCorner
- (id)initWithRadius:(float32_t)radius relativeThickness:(float32_t)thickness anchorA:(float32_t)a anchorB:(float32_t)b cornerEdge:(double)edge mat:(double)mat;
@end

@implementation ARCoachingCorner

- (id)initWithRadius:(float32_t)radius relativeThickness:(float32_t)thickness anchorA:(float32_t)a anchorB:(float32_t)b cornerEdge:(double)edge mat:(double)mat
{
  v16 = xmmword_23D3DC0C0;
  v17 = xmmword_23D3DC0C0;
  v17.f32[0] = thickness;
  v27 = *MEMORY[0x277D85DE8];
  v18 = xmmword_23D3DC0C0;
  v18.f32[0] = a;
  v26[0] = vmulq_n_f32(v17, a2);
  v26[1] = vmulq_n_f32(v18, a2);
  v16.f32[0] = b;
  v19 = xmmword_23D3DC450;
  v20 = xmmword_23D3DC450;
  v20.f32[1] = b;
  v26[2] = vmulq_n_f32(v16, a2);
  v26[3] = vmulq_n_f32(v20, a2);
  v21 = xmmword_23D3DC450;
  v21.f32[1] = a;
  v22 = vmulq_n_f32(v21, a2);
  v19.f32[1] = thickness;
  v23 = vmulq_n_f32(v19, a2);
  v26[4] = v22;
  v26[5] = v23;
  v25.receiver = self;
  v25.super_class = ARCoachingCorner;
  v23.f32[0] = radius;
  return [(ARCoachingSpline *)&v25 initWithPoints:v26 numPoints:6 relativeThickness:0 pattern:*v23.i64 mat:a10, a12, a14, a16];
}

@end