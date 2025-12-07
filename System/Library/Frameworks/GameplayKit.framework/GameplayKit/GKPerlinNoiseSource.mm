@interface GKPerlinNoiseSource
+ (GKPerlinNoiseSource)perlinNoiseSourceWithFrequency:(double)frequency octaveCount:(NSInteger)octaveCount persistence:(double)persistence lacunarity:(double)lacunarity seed:(int32_t)seed;
- (GKPerlinNoiseSource)initWithFrequency:(double)frequency octaveCount:(NSInteger)octaveCount persistence:(double)persistence lacunarity:(double)lacunarity seed:(int32_t)seed;
- (double)valueAt:(GKPerlinNoiseSource *)self;
- (id)cloneModule;
@end

@implementation GKPerlinNoiseSource

+ (GKPerlinNoiseSource)perlinNoiseSourceWithFrequency:(double)frequency octaveCount:(NSInteger)octaveCount persistence:(double)persistence lacunarity:(double)lacunarity seed:(int32_t)seed
{
  v7 = [objc_alloc(objc_opt_class()) initWithFrequency:octaveCount octaveCount:*&seed persistence:frequency lacunarity:persistence seed:lacunarity];

  return v7;
}

- (GKPerlinNoiseSource)initWithFrequency:(double)frequency octaveCount:(NSInteger)octaveCount persistence:(double)persistence lacunarity:(double)lacunarity seed:(int32_t)seed
{
  v7 = *&seed;
  v15.receiver = self;
  v15.super_class = GKPerlinNoiseSource;
  v12 = [(GKPerlinNoiseSource *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(GKCoherentNoiseSource *)v12 setFrequency:frequency];
    [(GKCoherentNoiseSource *)v13 setOctaveCount:octaveCount];
    [(GKPerlinNoiseSource *)v13 setPersistence:persistence];
    [(GKCoherentNoiseSource *)v13 setLacunarity:lacunarity];
    [(GKCoherentNoiseSource *)v13 setSeed:v7];
  }

  return v13;
}

- (double)valueAt:(GKPerlinNoiseSource *)self
{
  v13 = *v2;
  v15 = v2[1];
  [(GKCoherentNoiseSource *)self frequency];
  v12 = v4;
  if ([(GKCoherentNoiseSource *)self octaveCount]< 1)
  {
    return 0.0;
  }

  v5 = 0;
  v14 = vmulq_n_f64(v13, v12);
  v16 = vmulq_n_f64(v15, v12);
  v6 = 0.0;
  v7 = 1.0;
  do
  {
    seed = [(GKCoherentNoiseSource *)self seed];
    v17[0] = v14;
    v17[1] = v16;
    v6 = v6 + getGradientCoherentNoise(v17, v5 + seed) * v7;
    [(GKCoherentNoiseSource *)self lacunarity];
    v14 = vmulq_n_f64(v14, v9);
    v16 = vmulq_n_f64(v16, v9);
    [(GKPerlinNoiseSource *)self persistence];
    v7 = v10 * v7;
    ++v5;
  }

  while ([(GKCoherentNoiseSource *)self octaveCount]> v5);
  return v6;
}

- (id)cloneModule
{
  [(GKCoherentNoiseSource *)self frequency];
  v4 = v3;
  octaveCount = [(GKCoherentNoiseSource *)self octaveCount];
  [(GKPerlinNoiseSource *)self persistence];
  v7 = v6;
  [(GKCoherentNoiseSource *)self lacunarity];
  v9 = v8;
  seed = [(GKCoherentNoiseSource *)self seed];

  return [GKPerlinNoiseSource perlinNoiseSourceWithFrequency:octaveCount octaveCount:seed persistence:v4 lacunarity:v7 seed:v9];
}

@end