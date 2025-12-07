@interface PAEOffset
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAEOffset)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAEOffset

- (PAEOffset)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEOffset;
  return [(PAETile *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v2 = [(PROAPIAccessing *)self->super.super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v2 addFloatSliderWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultValue:@"Offset::Horizontal Offset" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:0.0 parmFlags:{-10000.0, 10000.0, -1000.0, 1000.0, 0.1}];
    [v2 addFloatSliderWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultValue:@"Offset::Vertical Offset" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:0.0 parmFlags:{-10000.0, 10000.0, -1000.0, 1000.0, 0.1}];
  }

  return v2 != 0;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = v9;
  if (v9)
  {
    v22 = 0.0;
    v23 = 0.0;
    [v9 getFloatValue:&v23 fromParm:1 atFxTime:info->var0.var1];
    [v10 getFloatValue:&v22 fromParm:2 atFxTime:info->var0.var1];
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    if (output)
    {
      objc_msgSend_imageInfo(output);
    }

    objc_msgSend_getInversePixelTransformForImage_(self);
    objc_msgSend_getPixelTransformForImage_(self);
    v11 = v22;
    if (*(&v19 + 1))
    {
      v11 = -v22;
    }

    v22 = v11 / 100.0 - floor(v11 / 100.0);
    v23 = v23 / 100.0 - floor(v23 / 100.0);
    if (-[PAESharedDefaultBase getRenderMode:](self, "getRenderMode:", info->var0.var1) && [input imageType] == 3)
    {
      if (input)
      {
        objc_msgSend_heliumRef(input);
      }

      else
      {
        v16 = 0;
      }

      objc_msgSend_getScaleForImage_(self);
      if (v16)
      {
        (*(*v16 + 16))(v16);
      }

      v12 = v23;
      width = [input width];
      objc_msgSend_transformAndTile_withXValue_YValue_skew_scale_stretch_rotation_resolution_inputImage_(self, v12 * width * *&v15[1], v22 * [input height] * *&v15[2], 0.0, 1.0, 1.0, 0.0);
      if (v16)
      {
        (*(*v16 + 24))(v16);
      }

      [output setHeliumRef:v15];
      if (v15[0])
      {
        (*(*v15[0] + 24))(v15[0]);
      }

      if (v16)
      {
        (*(*v16 + 24))(v16);
      }
    }
  }

  return v10 != 0;
}

- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software
{
  *software = 0;
  *hardware = 0;
  v6 = *&setup->var2;
  v8[0] = *&setup->var0.var0;
  v8[1] = v6;
  v8[2] = *&setup->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:hardware software:software];
  return 1;
}

@end