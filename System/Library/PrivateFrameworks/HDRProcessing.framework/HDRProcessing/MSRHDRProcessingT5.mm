@interface MSRHDRProcessingT5
- (MSRHDRProcessingT5)init;
- (void)getDegammaLutInput:(float *)input;
- (void)populateMSRColorConfigStageDownSampleFilter:(id *)filter Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0;
- (void)setDegammaBuffer:(int64_t)buffer Buffer:(float *)a4 TableSize:(unint64_t)size LutInput:(float *)input Type:(int)type scalerForSrgbBeyondMax:(float)max InputScale:(float)scale OutputScale:(float)self0;
- (void)setupHardwareConfigUnit;
@end

@implementation MSRHDRProcessingT5

- (MSRHDRProcessingT5)init
{
  v3.receiver = self;
  v3.super_class = MSRHDRProcessingT5;
  result = [(MSRHDRProcessingT4 *)&v3 init];
  useCurvatureLUTs = 1;
  return result;
}

- (void)setupHardwareConfigUnit
{
  v4.receiver = self;
  v4.super_class = MSRHDRProcessingT5;
  [(MSRHDRProcessingT4 *)&v4 setupHardwareConfigUnit];
  msrCU = self->super.super.super.super.super._msrCU;
  msrCU[6048] = 0x861736572;
  *msrCU = vadd_s32(*msrCU, 0x800000001);
}

- (void)getDegammaLutInput:(float *)input
{
  v3 = 0;
  v4 = -0.00097656;
  v5 = 0.00048828;
  do
  {
    v6 = __const__Z27getCurvatureDegammaLutInputPf_sub_lut_entries[v3];
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      v4 = v5 + v4;
      *input++ = v4;
      --v6;
    }

    while (v6);
    if (v3 == 5)
    {
      v7 = 16.0;
    }

    else
    {
      v7 = 2.0;
    }

    v5 = v5 * v7;
    ++v3;
  }

  while (v3 != 8);
}

- (void)setDegammaBuffer:(int64_t)buffer Buffer:(float *)a4 TableSize:(unint64_t)size LutInput:(float *)input Type:(int)type scalerForSrgbBeyondMax:(float)max InputScale:(float)scale OutputScale:(float)self0
{
  if (buffer == 2)
  {
    v13 = *&type;
    if (type == 3 && GetConfig() && (Config = GetConfig(), *HDRConfig::GetConfigEntryValue(Config, 0x42u, 0) == 1))
    {

      memcpy(a4, &HLGDegammaCoeff, 4 * size);
    }

    else
    {
      v22.receiver = self;
      v22.super_class = MSRHDRProcessingT5;
      *&v19 = max;
      *&v20 = scale;
      *&v21 = outputScale;
      [(MSRHDRProcessing *)&v22 setDegammaBuffer:2 Buffer:a4 TableSize:size LutInput:input Type:v13 scalerForSrgbBeyondMax:v19 InputScale:v20 OutputScale:v21];
    }
  }
}

- (void)populateMSRColorConfigStageDownSampleFilter:(id *)filter Enabled:(BOOL)enabled Prefix:(char *)prefix DMConfig:(id *)config DMData:(id *)data tcControl:(ToneCurve_Control *)control hdrControl:(id *)hdrControl MSRHDRContext:(MSRHDRContext *)self0
{
  msrCU = self->super.super.super.super.super._msrCU;
  if (enabled)
  {
    if (GetConfig() && (v11 = GetConfig(), *(v11 + 1523)) && (v11[3044] & 0x80) != 0)
    {
      if (GetConfig())
      {
        Config = GetConfig();
        v12 = 2 * *HDRConfig::GetConfigEntryValue(Config, 0x45u, 0);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 2 * (hdrControl->var0 == 1);
    }

    v13 = v12 | msrCU->var12.var0.var1 & 0xFFFFFFFFFFFFFFFCLL | 1;
  }

  else
  {
    v13 = msrCU->var12.var0.var1 & 0xFFFFFFFFFFFFFFFCLL;
  }

  msrCU->var12.var0.var1 = v13;
}

@end