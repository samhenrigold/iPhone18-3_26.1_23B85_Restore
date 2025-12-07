@interface PAEInsectEye
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAEInsectEye)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAEInsectEye

- (PAEInsectEye)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEInsectEye;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", v7, @"InputSizeLimit", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v15.receiver = self;
  v15.super_class = PAEInsectEye;
  [(PAESharedDefaultBase *)&v15 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    versionAtCreation = [v4 versionAtCreation];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"InsectEye::Size" value:0 table:0];
    v10 = 64.0;
    if (versionAtCreation)
    {
      v10 = 128.0;
      v11 = 2048.0;
    }

    else
    {
      v11 = 512.0;
    }

    if (versionAtCreation)
    {
      v12 = 512.0;
    }

    else
    {
      v12 = 128.0;
    }

    if (versionAtCreation)
    {
      v13 = 32.0;
    }

    else
    {
      v13 = 8.0;
    }

    [v3 addFloatSliderWithName:v9 parmId:1 defaultValue:0 parameterMin:v10 parameterMax:4.0 sliderMin:v11 sliderMax:8.0 delta:v12 parmFlags:1.0];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"InsectEye::Refraction" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:2.0 parmFlags:{0.0, 10.0, 0.0, 4.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"InsectEye::Border" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:1.0 parmFlags:{0.0, v11, 0.0, v13, 1.0}];
    [v3 addColorParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultRed:@"InsectEye::Border Color" defaultGreen:0 defaultBlue:0) parmFlags:{4, 0, 0.0, 0.0, 0.0}];
  }

  return v6;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v8)
  {
    v9 = v8;
    objc_msgSend_getPixelTransformForImage_(self);
    v10 = fabs(v35[0]);
    [input width];
    [input height];
    v34 = 0.0;
    [v9 getFloatValue:&v34 fromParm:1 atFxTime:info->var0.var1];
    v34 = v10 * v34;
    v33 = 0.0;
    [v9 getFloatValue:&v33 fromParm:2 atFxTime:info->var0.var1];
    v32 = 0;
    [v9 getFloatValue:&v32 fromParm:3 atFxTime:info->var0.var1];
    v30 = 0;
    v31 = 0;
    v29 = 0;
    [v9 getRedValue:&v31 greenValue:&v30 blueValue:&v29 fromParm:4 atFxTime:info->var0.var1];
    LODWORD(v8) = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
    if (v8)
    {
      if ([input imageType] == 3)
      {
        if (input)
        {
          objc_msgSend_heliumRef(input);
        }

        else
        {
          v28 = 0;
        }

        [input bounds];
        v26.f64[0] = v11;
        v26.f64[1] = v12;
        v27.f64[0] = v13;
        v27.f64[1] = v14;
        PCMatrix44Tmpl<double>::transformRect<double>(v35, v26.f64, &v26);
        if (v33 < 1.0)
        {
          v24 = v28;
          if (v28)
          {
            (*(*v28 + 16))(v28);
          }

          objc_msgSend_smear_fromImage_toImage_(self);
          v15 = v25;
          if (v28 == v25)
          {
            if (v28)
            {
              (*(*v25 + 24))();
            }
          }

          else
          {
            if (v28)
            {
              (*(*v28 + 24))();
              v15 = v25;
            }

            v28 = v15;
          }

          if (v24)
          {
            (*(*v24 + 24))(v24);
          }

          __asm
          {
            FMOV            V0.2D, #0.5
            FMOV            V1.2D, #-1.0
          }

          v26 = vaddq_f64(v26, _Q0);
          v27 = vaddq_f64(v27, _Q1);
          v22 = HGObject::operator new(0x1A0uLL);
          HInsectEye_Base::HInsectEye_Base(v22);
        }

        Fx_smearToRect();
      }

      LOBYTE(v8) = 0;
    }
  }

  return v8;
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