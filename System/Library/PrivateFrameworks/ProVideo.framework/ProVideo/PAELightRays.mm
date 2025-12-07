@interface PAELightRays
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (PAELightRays)initWithAPIManager:(id)manager;
- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error;
- (id)properties;
- (void)dealloc;
@end

@implementation PAELightRays

- (PAELightRays)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAELightRays;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAELightRays;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 1), @"InputSizeLimit", 0}];
}

- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error
{
  v7 = [(PAEFilterDefaultBase *)self getParamAPIWithError:error];
  v16 = 0.0;
  v15 = 0;
  if ([v7 getFloatValue:&v16 fromParm:1 atFxTime:time.var1] && (objc_msgSend(v7, "getBoolValue:fromParm:atFxTime:", &v15, 5, time.var1) & 1) != 0)
  {
    if (v16 == 0.0)
    {
      v8 = 6;
    }

    else
    {
      v8 = 1;
    }

    if (v15)
    {
      v9 = 1;
    }

    else
    {
      v9 = 3;
    }

    v10 = MEMORY[0x277CBEAC0];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:{v8, v16}];
    return [v10 dictionaryWithObjectsAndKeys:{v11, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", v9), @"AutoColorProcessingSupport", 0}];
  }

  else if (error)
  {
    v13 = objc_opt_class();
    v14 = [(PAEFilterDefaultBase *)self getParamErrorFor:NSStringFromClass(v13)];
    result = 0;
    *error = v14;
  }

  else
  {
    return 0;
  }

  return result;
}

- (BOOL)addParameters
{
  v8.receiver = self;
  v8.super_class = PAELightRays;
  [(PAESharedDefaultBase *)&v8 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  v4 = [-[PROAPIAccessing apiForProtocol:](self->super.super._apiManager apiForProtocol:{&unk_28735F2C8), "versionAtCreation"}];
  if (v3)
  {
    v5 = v4 < 2;
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"LightRays::Amount" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:50.0 parmFlags:{0.0, 200.0, 0.0, 200.0, 1.0}];
    [v3 addPointParameterWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultX:@"LightRays::Center" defaultY:0 parmFlags:{0), 2, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"LightRays::Glow" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:1.5 parmFlags:{0.0, 8.0, 0.0, 8.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"LightRays::Expansion" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:32 delta:0.4 parmFlags:{0.0, 2.0, 0.0, 2.0, 0.1}];
    [v3 addToggleButtonWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"LightRays::Clip" parmFlags:{0, 0), 5, v5, 1}];
  }

  return 1;
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
  v11 = v10;
  if (v10)
  {
    v17 = 0.0;
    [v10 getFloatValue:&v17 fromParm:1 atFxTime:info->var0.var1];
    v16 = 0.0;
    [v11 getFloatValue:&v16 fromParm:4 atFxTime:info->var0.var1];
    var1 = input->var1;
    v13 = v17 * v16;
    v14 = (2 * vcvtps_s32_f32(v13));
    if (width)
    {
      *width = input->var0 + v14;
    }

    if (height)
    {
      *height = var1 + v14;
    }
  }

  return v11 != 0;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  *&v6 = MEMORY[0x28223BE20](self, a2, output, input, info).n128_u64[0];
  v8 = v7;
  v10 = v9;
  v35 = v11;
  v46[2] = *MEMORY[0x277D85DE8];
  v34 = v12;
  v13 = [v12[1] apiForProtocol:{&unk_28735B780, v6}];
  v14 = v13;
  if (v13)
  {
    v44[0] = 0.0;
    [v13 getFloatValue:v44 fromParm:1 atFxTime:*v8];
    if (v44[0] == 0.0)
    {
      if (v10)
      {
        objc_msgSend_heliumRef(v10, v44[0]);
      }

      else
      {
        *&v45[0].var0 = 0;
      }

      [v35 setHeliumRef:v45];
      if (*&v45[0].var0)
      {
        (*(**&v45[0].var0 + 24))(*&v45[0].var0);
      }
    }

    else
    {
      v42 = 0x3FE0000000000000;
      v43 = 0x3FE0000000000000;
      [v14 getXValue:&v43 YValue:&v42 fromParm:2 atFxTime:{*v8, v44[0]}];
      v41 = 0;
      [v14 getFloatValue:&v41 fromParm:3 atFxTime:*v8];
      v40 = 0;
      [v14 getBoolValue:&v40 fromParm:5 atFxTime:*v8];
      if (v10)
      {
        objc_msgSend_heliumRef(v10);
      }

      else
      {
        v39 = 0;
      }

      width = [v35 width];
      height = [v35 height];
      v46[0] = 0;
      v46[1] = 0;
      v17 = HGObject::operator new(0x1D0uLL);
      HGTextureWrap::HGTextureWrap(v17);
      HGTextureWrap::SetTextureWrapMode(v17, 0, v18);
      HGTextureWrap::SetTextureBorderColor(v17, v46);
      (*(*v17 + 120))(v17, 0, v39);
      v19 = width * 0.5;
      v20 = vcvtd_n_f64_u64(height, 1uLL);
      *&v45[0].var0 = HGRectMake4f(v21, -v19, -v20, v19, v20);
      *&v45[0].var2 = v22;
      HGTextureWrap::SetCropRect(v17, v45);
      if ([objc_msgSend(v34[1] apiForProtocol:{&unk_28735F2C8), "versionAtCreation"}])
      {
        [v10 width];
        [v10 width];
        height2 = [v10 height];
        [v10 height];
      }

      objc_msgSend_getScaleForImage_(v34);
      v23 = v37;
      if (v37 <= v38)
      {
        v23 = v38;
      }

      LODWORD(height2) = vcvtpd_s64_f64(v23 * v44[0] * 0.5);
      if (height2 >= 1)
      {
        v24 = 0;
        v25 = 0.00390625 / v23;
        v26 = 0.0;
        do
        {
          v27 = 1.0 - (v24 / height2);
          *(&v45[0].var0 + v24) = v27;
          v26 = v26 + v27;
          *(&v44[1] + v24) = 1.0 - (v25 * v24);
          ++v24;
        }

        while (height2 != v24);
        v28 = v45;
        v29 = height2;
        v30 = 1.0 / v26;
        do
        {
          *v28 = v30 * *v28;
          ++v28;
          --v29;
        }

        while (v29);
      }

      v36 = 0;
      if (height2)
      {
        v31 = HGObject::operator new(0x1A0uLL);
        HGNode::HGNode(v31);
        if (v31)
        {
          v36 = v31;
        }

        if (height2 >= 1)
        {
          v32 = HGObject::operator new(0x1B0uLL);
          HgcConvolvePass8tapPoint::HgcConvolvePass8tapPoint(v32);
        }
      }

      else
      {
        v36 = v17;
        (*(*v17 + 16))(v17);
      }

      [v34 crop:&v36 fromImage:v35 toImage:v35];
      [v35 setHeliumRef:&v36];
      if (v36)
      {
        (*(*v36 + 24))(v36);
      }

      (*(*v17 + 24))(v17);
      if (v39)
      {
        (*(*v39 + 24))(v39);
      }
    }
  }

  return v14 != 0;
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