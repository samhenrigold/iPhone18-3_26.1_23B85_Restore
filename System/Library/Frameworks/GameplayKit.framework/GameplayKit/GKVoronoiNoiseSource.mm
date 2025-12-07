@interface GKVoronoiNoiseSource
+ (GKVoronoiNoiseSource)voronoiNoiseWithFrequency:(double)frequency displacement:(double)displacement distanceEnabled:(BOOL)distanceEnabled seed:(int32_t)seed;
- (GKVoronoiNoiseSource)initWithFrequency:(double)frequency displacement:(double)displacement distanceEnabled:(BOOL)distanceEnabled seed:(int32_t)seed;
- (double)valueAt:(GKVoronoiNoiseSource *)self;
- (id)cloneModule;
@end

@implementation GKVoronoiNoiseSource

+ (GKVoronoiNoiseSource)voronoiNoiseWithFrequency:(double)frequency displacement:(double)displacement distanceEnabled:(BOOL)distanceEnabled seed:(int32_t)seed
{
  v6 = [objc_alloc(objc_opt_class()) initWithFrequency:distanceEnabled displacement:*&seed distanceEnabled:frequency seed:displacement];

  return v6;
}

- (GKVoronoiNoiseSource)initWithFrequency:(double)frequency displacement:(double)displacement distanceEnabled:(BOOL)distanceEnabled seed:(int32_t)seed
{
  v6 = *&seed;
  v7 = distanceEnabled;
  v13.receiver = self;
  v13.super_class = GKVoronoiNoiseSource;
  v10 = [(GKVoronoiNoiseSource *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(GKVoronoiNoiseSource *)v10 setFrequency:frequency];
    [(GKVoronoiNoiseSource *)v11 setDisplacement:displacement];
    [(GKVoronoiNoiseSource *)v11 setDistanceEnabled:v7];
    [(GKVoronoiNoiseSource *)v11 setSeed:v6];
  }

  return v11;
}

- (double)valueAt:(GKVoronoiNoiseSource *)self
{
  *v3.f32 = vcvt_f32_f64(*v2);
  v5 = v2[1].f64[0];
  v3.f32[2] = v5;
  v19 = v3;
  [(GKVoronoiNoiseSource *)self frequency];
  v7 = v6;
  [(GKVoronoiNoiseSource *)self displacement];
  v9 = v8;
  isDistanceEnabled = [(GKVoronoiNoiseSource *)self isDistanceEnabled];
  seed = [(GKVoronoiNoiseSource *)self seed];
  v12.f32[0] = v7;
  return __voronoiNoise(isDistanceEnabled, seed, v19, v12, v9, v13, v14, v15, v16, v17);
}

- (id)cloneModule
{
  [(GKVoronoiNoiseSource *)self frequency];
  v4 = v3;
  [(GKVoronoiNoiseSource *)self displacement];
  v6 = v5;
  isDistanceEnabled = [(GKVoronoiNoiseSource *)self isDistanceEnabled];
  seed = [(GKVoronoiNoiseSource *)self seed];

  return [GKVoronoiNoiseSource voronoiNoiseWithFrequency:isDistanceEnabled displacement:seed distanceEnabled:v4 seed:v6];
}

@end