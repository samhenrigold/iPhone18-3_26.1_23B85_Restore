@interface NTKPrideBetweenLinearQuad
- ($8EF4127CF77ECA3DDB612FCF233DC3A8)noiseConfiguration;
- (BOOL)preSemaphoreComputeForTime:(double)time;
- (NTKPrideBetweenLinearQuad)initWithDevice:(id)device useXRsRGB:(BOOL)b;
- (float)computeAmplitudeForControlPoint:(int)point inSpline:(int)spline atTime:(double)time;
- (id)getNTKPrideSplineDefinitionFiller;
- (id)noiseSamplePositionForControlPoint:(uint64_t)point inSpline:(uint64_t)spline;
- (id)renderPipelineManager;
- (int)splineDrawOrder:(int)order;
- (void)_generateSplineColors;
- (void)_generateSplinePositions;
- (void)_initializePerSplineData;
- (void)applyTransitionFromBandedToFabricWithFraction:(double)fraction;
- (void)dealloc;
@end

@implementation NTKPrideBetweenLinearQuad

- (NTKPrideBetweenLinearQuad)initWithDevice:(id)device useXRsRGB:(BOOL)b
{
  bCopy = b;
  deviceCopy = device;
  v7 = sub_1001C(deviceCopy, deviceCopy);
  v8 = [NTKPrideTouchCrownHandler alloc];
  LODWORD(v9) = 1.0;
  LODWORD(v10) = 1.5;
  v11 = [(NTKPrideTouchCrownHandler *)v8 initWithNumSplines:v7 strumWidth:0 strumSpeed:2 isCyclical:v9 padding:v10];
  v14.receiver = self;
  v14.super_class = NTKPrideBetweenLinearQuad;
  v12 = [(NTKPrideLinearQuad *)&v14 initWithDevice:deviceCopy useXRsRGB:bCopy touchCrownHandler:v11];

  if (v12)
  {
    [(NTKPrideLinearQuad *)v12 setFabricMode];
  }

  return v12;
}

- (void)dealloc
{
  v3 = *(&self->super._currentStyle + 1);
  if (v3)
  {
    free(v3);
  }

  v4.receiver = self;
  v4.super_class = NTKPrideBetweenLinearQuad;
  [(NTKPrideLinearQuad *)&v4 dealloc];
}

- (id)renderPipelineManager
{
  if (qword_2CD18 != -1)
  {
    sub_154B8();
  }

  v3 = qword_2CD10;

  return v3;
}

- (void)applyTransitionFromBandedToFabricWithFraction:(double)fraction
{
  v3.receiver = self;
  v3.super_class = NTKPrideBetweenLinearQuad;
  [(NTKPrideLinearQuad *)&v3 applyTransitionFromBandedToFabricWithFraction:1.0];
}

- (float)computeAmplitudeForControlPoint:(int)point inSpline:(int)spline atTime:(double)time
{
  v5 = *&spline;
  v6 = *&point;
  v8 = 0.0;
  if (spline && [(NTKPrideBetweenLinearQuad *)self numSplines]- 1 != spline)
  {
    v10 = v5 + 1;
    if (dword_1B1F0[v5] == dword_1B1F0[v10])
    {
      [(NTKPrideLinearQuad *)&v15 computeAmplitudeForControlPoint:v6 inSpline:v5 atTime:time, self, NTKPrideBetweenLinearQuad, v16.receiver, v16.super_class];
    }

    else
    {
      [(NTKPrideLinearQuad *)&v16 computeAmplitudeForControlPoint:v6 inSpline:v10 atTime:time, v15.receiver, v15.super_class, self, NTKPrideBetweenLinearQuad];
    }

    v8 = v11;
  }

  v12 = *(&self->super._useXRsRGB + 2 * v5 + 1);
  v13 = v12 | (1 << v6);
  if (fabsf(v8) <= 0.2)
  {
    LOWORD(v13) = v12 & ~(1 << v6);
  }

  *(&self->super._useXRsRGB + 2 * v5 + 1) = v13;
  return v8;
}

- ($8EF4127CF77ECA3DDB612FCF233DC3A8)noiseConfiguration
{
  clkDevice = [(NTKPrideMetalQuad *)self clkDevice];
  v3 = _NoiseConfiguration(clkDevice, 3);

  return v3;
}

- (void)_generateSplinePositions
{
  v12.receiver = self;
  v12.super_class = NTKPrideBetweenLinearQuad;
  [(NTKPrideLinearQuad *)&v12 _generateSplinePositions];
  clkDevice = [(NTKPrideMetalQuad *)self clkDevice];
  sub_1001C(clkDevice, clkDevice);
  v5 = v4;

  v6 = *(&self->super._currentStyle + 1);
  *(v6 + 16) = 0;
  *(v6 + 32 * [(NTKPrideBetweenLinearQuad *)self numSplines]- 16) = 1065353216;
  if ([(NTKPrideBetweenLinearQuad *)self numSplines]>= 3)
  {
    v7 = 0;
    v8 = v5 * -0.5;
    v9 = 48;
    do
    {
      v10 = (v7 & 0xFFFFFFFE) * 0.0833333333 + 0.166666667;
      *(*(&self->super._currentStyle + 1) + v9) = v10 + (v8 * (((v7 + 1) & 1) - 1));
      v9 += 32;
      v11 = v7 + 2 < [(NTKPrideBetweenLinearQuad *)self numSplines]- 1;
      ++v7;
    }

    while (v11);
  }
}

- (id)noiseSamplePositionForControlPoint:(uint64_t)point inSpline:(uint64_t)spline
{
  if (([self numSplines] - 1) <= spline)
  {
    return objc_msgSendSuper2(&v9, "noiseSamplePositionForControlPoint:inSpline:", point, spline, self, NTKPrideBetweenLinearQuad, v10.receiver, v10.super_class);
  }

  v7 = spline + 1;
  if (dword_1B1F0[spline] == dword_1B1F0[v7])
  {
    return objc_msgSendSuper2(&v9, "noiseSamplePositionForControlPoint:inSpline:", point, spline, self, NTKPrideBetweenLinearQuad, v10.receiver, v10.super_class);
  }

  else
  {
    return objc_msgSendSuper2(&v10, "noiseSamplePositionForControlPoint:inSpline:", point, v7, v9.receiver, v9.super_class, self, NTKPrideBetweenLinearQuad);
  }
}

- (void)_generateSplineColors
{
  if ([(NTKPrideBetweenLinearQuad *)self numSplines]>= 1)
  {
    v4 = 0;
    v5 = 0;
    v7 = vdupq_n_s32(0x437F0000u);
    do
    {
      if ([(NTKPrideLinearQuad *)self useXRsRGB])
      {
        CLKUIConvertToRGBfFromXRSRGBf();
      }

      else
      {
        v2 = v2 & 0xFFFFFFFF00000000 | PRIDE_COLORS_2020[dword_1B1F0[v5]];
        CLKUIConvertToRGBfFromSRGB8_fast();
      }

      *(*(&self->super._currentStyle + 1) + v4) = v6;
      ++v5;
      v4 += 32;
    }

    while (v5 < [(NTKPrideBetweenLinearQuad *)self numSplines]);
  }
}

- (void)_initializePerSplineData
{
  v3.receiver = self;
  v3.super_class = NTKPrideBetweenLinearQuad;
  [(NTKPrideLinearQuad *)&v3 _initializePerSplineData];
  *(&self->super._currentStyle + 1) = malloc_type_calloc([(NTKPrideBetweenLinearQuad *)self numSplines], 0x20uLL, 0x1000040DD0CCB3EuLL);
}

- (int)splineDrawOrder:(int)order
{
  orderCopy = order;
  if (LOBYTE(self->_amplitudeIsLarge[5]) == 1)
  {
    return [(NTKPrideBetweenLinearQuad *)self numSplinesToDraw]+ ~order;
  }

  return orderCopy;
}

- (id)getNTKPrideSplineDefinitionFiller
{
  v9.receiver = self;
  v9.super_class = NTKPrideBetweenLinearQuad;
  [(NTKPrideLinearQuad *)&v9 getNTKPrideSplineDefinitionFiller];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_FF1C;
  v7[3] = &unk_24AA0;
  v8 = v7[4] = self;
  v3 = v8;
  v4 = objc_retainBlock(v7);
  v5 = objc_retainBlock(v4);

  return v5;
}

- (BOOL)preSemaphoreComputeForTime:(double)time
{
  v5 = 0;
  v6 = 0;
  do
  {
    v6 += *(&self->super._useXRsRGB + v5 + 1);
    v5 += 2;
  }

  while (v5 != 24);
  if (v6)
  {
    if ((self->_amplitudeIsLarge[4] & 0x100) == 0)
    {
      HIBYTE(self->_amplitudeIsLarge[4]) = 1;
    }
  }

  else if (HIBYTE(self->_amplitudeIsLarge[4]))
  {
    HIBYTE(self->_amplitudeIsLarge[4]) = 0;
    LOBYTE(self->_amplitudeIsLarge[5]) ^= 1u;
  }

  v9 = v3;
  v10 = v4;
  v8.receiver = self;
  v8.super_class = NTKPrideBetweenLinearQuad;
  return [(NTKPrideLinearQuad *)&v8 preSemaphoreComputeForTime:time];
}

@end