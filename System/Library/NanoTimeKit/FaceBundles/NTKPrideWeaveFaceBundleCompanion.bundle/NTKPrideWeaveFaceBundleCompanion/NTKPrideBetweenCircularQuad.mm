@interface NTKPrideBetweenCircularQuad
- (float)_dampingFactorForSpline:(int)spline;
- (float)_dialRadiusForSpline:(int)spline;
- (float)_rectRadiusForSpline:(int)spline;
- (float)computeAmplitudeForControlPoint:(int)point inSpline:(int)spline atTime:(double)time;
- (float)softness;
- (id)noiseSamplePositionForControlPoint:(uint64_t)point inSpline:(uint64_t)spline;
- (id)renderPipelineManager;
- (id)splineColorAtIndex:(int)index;
- (int)_numVertsForSpline:(int)spline;
- (void)_colorSequenceForStartIndex:(int)index reverseDirection:(BOOL)direction colorSequence:(id)sequence;
@end

@implementation NTKPrideBetweenCircularQuad

- (int)_numVertsForSpline:(int)spline
{
  clkDevice = [(NTKPrideMetalQuad *)self clkDevice];
  deviceCategory = [clkDevice deviceCategory];

  if (deviceCategory == &dword_0 + 1)
  {
    return 252;
  }

  else
  {
    return 402;
  }
}

- (id)renderPipelineManager
{
  if (qword_2CCB8 != -1)
  {
    sub_15214();
  }

  v3 = qword_2CCB0;

  return v3;
}

- (void)_colorSequenceForStartIndex:(int)index reverseDirection:(BOOL)direction colorSequence:(id)sequence
{
  directionCopy = direction;
  v6 = *&index;
  sequenceCopy = sequence;
  if ([(NTKPrideCircularQuad *)self numSplines]>= 1)
  {
    v8 = 0;
    v9 = v6 + 12;
    v10 = v6 + 17;
    v16 = vdupq_n_s32(0x437F0000u);
    do
    {
      if (v8 <= [(NTKPrideCircularQuad *)self numSplines]- 3)
      {
        v12 = dword_1B0D0[v8];
        v13 = v10 - v12;
        v14 = v9 + v12;
        if (directionCopy)
        {
          v14 = v13;
        }

        v15 = v14 % 6;
        if ([(NTKPrideCircularQuad *)self useXRsRGB])
        {
          CLKUIConvertToRGBfFromXRSRGBf();
        }

        else
        {
          v6 = v6 & 0xFFFFFFFF00000000 | PRIDE_COLORS_2020[v15];
          CLKUIConvertToRGBfFromSRGB8_fast();
        }
      }

      else
      {
        v11 = xmmword_1B0C0;
      }

      sequenceCopy[2](sequenceCopy, v8++, v11);
    }

    while (v8 < [(NTKPrideCircularQuad *)self numSplines]);
  }
}

- (float)softness
{
  v3.receiver = self;
  v3.super_class = NTKPrideBetweenCircularQuad;
  [(NTKPrideCircularQuad *)&v3 softness];
  return result;
}

- (float)_dialRadiusForSpline:(int)spline
{
  v16.receiver = self;
  v16.super_class = NTKPrideBetweenCircularQuad;
  [(NTKPrideCircularQuad *)&v16 _dialRadiusForSpline:[(NTKPrideCircularQuad *)self numSplines]- 1];
  v6 = v5;
  v7 = spline / ([(NTKPrideCircularQuad *)self numSplines]- 2);
  if ([(NTKPrideCircularQuad *)self numSplines]- 1 > spline)
  {
    v8 = dword_1B0D0[spline];
    v9 = spline + 1;
    if (v8 == dword_1B0D0[v9])
    {
      v10 = spline - 1;
      if (v8 != dword_1B0D0[v10])
      {
        v11 = (v7 + (v10 / ([(NTKPrideCircularQuad *)self numSplines]- 3))) * 0.5;
        [(NTKPrideBetweenCircularQuad *)self softness];
        v7 = (v12 * 0.5) + v11;
      }
    }

    else
    {
      v13 = (v7 + (v9 / ([(NTKPrideCircularQuad *)self numSplines]- 3))) * 0.5;
      [(NTKPrideBetweenCircularQuad *)self softness];
      v7 = v13 - (v14 * 0.5);
    }
  }

  return v6 * v7;
}

- (float)_rectRadiusForSpline:(int)spline
{
  v16.receiver = self;
  v16.super_class = NTKPrideBetweenCircularQuad;
  [(NTKPrideCircularQuad *)&v16 _rectRadiusForSpline:[(NTKPrideCircularQuad *)self numSplines]- 1];
  v6 = v5;
  v7 = spline / ([(NTKPrideCircularQuad *)self numSplines]- 2);
  if ([(NTKPrideCircularQuad *)self numSplines]- 1 > spline)
  {
    v8 = dword_1B0D0[spline];
    v9 = spline + 1;
    if (v8 == dword_1B0D0[v9])
    {
      v10 = spline - 1;
      if (v8 != dword_1B0D0[v10])
      {
        v11 = (v7 + (v10 / ([(NTKPrideCircularQuad *)self numSplines]- 3))) * 0.5;
        [(NTKPrideBetweenCircularQuad *)self softness];
        v7 = (v12 * 0.5) + v11;
      }
    }

    else
    {
      v13 = (v7 + (v9 / ([(NTKPrideCircularQuad *)self numSplines]- 3))) * 0.5;
      [(NTKPrideBetweenCircularQuad *)self softness];
      v7 = v13 - (v14 * 0.5);
    }
  }

  return v6 * v7;
}

- (id)noiseSamplePositionForControlPoint:(uint64_t)point inSpline:(uint64_t)spline
{
  if (([self numSplines] - 1) <= spline)
  {
    return objc_msgSendSuper2(&v9, "noiseSamplePositionForControlPoint:inSpline:", point, spline, self, NTKPrideBetweenCircularQuad, v10.receiver, v10.super_class);
  }

  v7 = spline + 1;
  if (dword_1B0D0[spline] == dword_1B0D0[v7])
  {
    return objc_msgSendSuper2(&v9, "noiseSamplePositionForControlPoint:inSpline:", point, spline, self, NTKPrideBetweenCircularQuad, v10.receiver, v10.super_class);
  }

  else
  {
    return objc_msgSendSuper2(&v10, "noiseSamplePositionForControlPoint:inSpline:", point, v7, v9.receiver, v9.super_class, self, NTKPrideBetweenCircularQuad);
  }
}

- (float)computeAmplitudeForControlPoint:(int)point inSpline:(int)spline atTime:(double)time
{
  v6 = *&spline;
  v7 = *&point;
  numSplines = [(NTKPrideCircularQuad *)self numSplines];
  result = 0.0;
  if ((numSplines - 4) >= v6)
  {
    if ([(NTKPrideCircularQuad *)self numSplines]- 1 <= v6 || (v11 = v6 + 1, dword_1B0D0[v6] == dword_1B0D0[v11]))
    {
      [(NTKPrideCircularQuad *)&v12 computeAmplitudeForControlPoint:v7 inSpline:v6 atTime:time, self, NTKPrideBetweenCircularQuad, v13.receiver, v13.super_class];
    }

    else
    {
      [(NTKPrideCircularQuad *)&v13 computeAmplitudeForControlPoint:v7 inSpline:v11 atTime:time, v12.receiver, v12.super_class, self, NTKPrideBetweenCircularQuad];
    }
  }

  return result;
}

- (float)_dampingFactorForSpline:(int)spline
{
  v3 = *&spline;
  if ([(NTKPrideCircularQuad *)self numSplines]- 1 <= spline || (v5 = v3 + 1, dword_1B0D0[v3] == dword_1B0D0[v5]))
  {
    [(NTKPrideCircularQuad *)&v7 _dampingFactorForSpline:v3, self, NTKPrideBetweenCircularQuad, v8.receiver, v8.super_class];
  }

  else
  {
    [(NTKPrideCircularQuad *)&v8 _dampingFactorForSpline:v5, v7.receiver, v7.super_class, self, NTKPrideBetweenCircularQuad];
  }

  return result;
}

- (id)splineColorAtIndex:(int)index
{
  v4 = index + 2;
  v5 = [(NTKPrideCircularQuad *)self numSplines]- 1;
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v9.receiver = self;
  v9.super_class = NTKPrideBetweenCircularQuad;
  v7 = [(NTKPrideCircularQuad *)&v9 splineColorAtIndex:v6];

  return v7;
}

@end