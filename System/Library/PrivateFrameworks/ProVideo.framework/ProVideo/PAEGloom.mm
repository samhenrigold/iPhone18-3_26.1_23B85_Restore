@interface PAEGloom
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAEGloom)initWithAPIManager:(id)manager;
- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error;
- (id)properties;
@end

@implementation PAEGloom

- (PAEGloom)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEGloom;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  if ([PAEGloom properties]::once != -1)
  {
    [PAEGloom properties];
  }

  return [PAEGloom properties]::sPropertiesDict;
}

void *__22__PAEGloom_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  result = [v0 initWithObjectsAndKeys:{v1, @"PositionIndependent", v2, @"MayRemapTime", v3, @"SupportsHeliumRendering", v4, @"InputSizeLimit", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
  [PAEGloom properties]::sPropertiesDict = result;
  return result;
}

- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error
{
  v7 = [(PAEFilterDefaultBase *)self getParamAPIWithError:error];
  v16 = 0.0;
  v15 = 0;
  if ([v7 getFloatValue:&v16 fromParm:1 atFxTime:time.var1] & 1) != 0 || (objc_msgSend(v7, "getBoolValue:fromParm:atFxTime:", &v15, 4, time.var1))
  {
    if (v16 == 0.0)
    {
      v8 = 6;
    }

    else
    {
      v8 = 3;
    }

    v9 = MEMORY[0x277CBEAC0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:{v8, v16}];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
    return [v9 dictionaryWithObjectsAndKeys:{v10, @"PixelTransformSupport", v11, @"SupportsStableAnimation", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", v15), @"SupportsLargeRenderScale", 0}];
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
  v6.receiver = self;
  v6.super_class = PAEGloom;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735DF10];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Gloom::Radius" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:10.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Gloom::Amount" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:1.0 parmFlags:{0.0, 2.0, 0.0, 2.0, 0.1}];
    [v3 addToggleButtonWithName:@"Prescale Input" parmId:3 defaultValue:0 parmFlags:2];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Gloom::Equirect" parmFlags:{0, 0), 4, 0, 1}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    return 0;
  }

  v12 = v10;
  if ([input imageType] != 3)
  {
    return 0;
  }

  versionAtCreation = [v12 versionAtCreation];
  v52 = 0x4000000000000000;
  v53 = 10.0;
  [v9 getFloatValue:&v53 fromParm:1 atFxTime:info->var0.var1];
  v14 = v53;
  if (v53 != 0.0)
  {
    if (!versionAtCreation)
    {
      v14 = pow(v53 / 100.0, 1.425) * 253.0;
      v53 = v14;
    }

    v51 = 0;
    [v9 getBoolValue:&v51 fromParm:3 atFxTime:{info->var0.var1, v14}];
    [v9 getFloatValue:&v52 fromParm:2 atFxTime:info->var0.var1];
    v50 = 0;
    [v9 getBoolValue:&v50 fromParm:4 atFxTime:info->var0.var1];
    v51 &= v50 ^ 1;
    objc_msgSend_getScaleForImage_(self);
    if (input)
    {
      objc_msgSend_heliumRef(input);
      v47 = v48;
      if (v48 != 0.0)
      {
        (*(**&v48 + 16))(COERCE_FLOAT64_T(*&v48));
      }
    }

    else
    {
      v47 = 0.0;
      v48 = 0.0;
    }

    objc_msgSend_smear_fromImage_toImage_(self, v49);
    v17 = v43[0].f64[0];
    if (*&v48 == *&v43[0].f64[0])
    {
      if (v48 != 0.0)
      {
        (*(**&v43[0].f64[0] + 24))(*&v43[0].f64[0]);
      }
    }

    else
    {
      if (v48 != 0.0)
      {
        (*(**&v48 + 24))(COERCE_FLOAT64_T(*&v48));
        v17 = v43[0].f64[0];
      }

      v48 = v17;
      v43[0].f64[0] = 0.0;
    }

    if (v47 != 0.0)
    {
      (*(**&v47 + 24))(COERCE_FLOAT64_T(*&v47));
    }

    if (v51 == 1)
    {
      v46 = v48;
      if (v48 != 0.0)
      {
        (*(**&v48 + 16))(COERCE_FLOAT64_T(*&v48));
      }

      HIDWORD(v18) = HIDWORD(v53);
      *&v18 = v53;
      v19 = COERCE_DOUBLE(vcvt_f32_f64(v34));
      v39.f64[0] = v19;
      LODWORD(v19) = 1.5;
      LODWORD(v16) = 3.0;
      objc_msgSend_makePrescaledBlurNode_radius_withScale_minInputScale_maxInputScale_(self, v18, v19, v16);
      if (*&v43[0].f64[0])
      {
        v43[0].f64[0] = 0.0;
      }

      if (v46 != 0.0)
      {
        (*(**&v46 + 24))(COERCE_FLOAT64_T(*&v46));
      }
    }

    else if (v50 == 1)
    {
      objc_msgSend_getInversePixelTransformForImage_(self);
      objc_msgSend_getPixelTransformForImage_(self);
      v20 = HGObject::operator new(0x1C0uLL);
      HGNode::HGNode(v20);
      *v20 = &unk_2871D9F38;
      *(v20 + 51) = 0;
      *(v20 + 52) = 0;
      *(v20 + 106) = 0;
      *(v20 + 54) = 0;
      *(v20 + 55) = 0;
      v21 = v53;
      v22 = v49;
      width = [input width];
      v24 = v43[0].f64[0];
      height = [input height];
      v26 = v21;
      v27 = *&v22;
      v28 = *(&v22 + 1);
      v38 = vcvt_hight_f32_f64(vcvt_f32_f64(v43[0]), v43[1]);
      v37 = vcvt_hight_f32_f64(vcvt_f32_f64(v44), v45);
      v36 = vcvt_hight_f32_f64(vcvt_f32_f64(v39), v40);
      v35 = vcvt_hight_f32_f64(vcvt_f32_f64(v41), v42);
      HEquirectGaussianBlur::init(v20, vcvtpd_s64_f64(fabs(v24) * width), vcvtpd_s64_f64(fabs(v44.f64[1]) * height), &v38, &v37, &v36, &v35, v26, v27, v28);
      (*(*v20 + 120))(v20, 0, COERCE_FLOAT64_T(*&v48));
      (*(*v20 + 16))(v20);
      (*(*v20 + 24))(v20);
    }

    else
    {
      v29 = HGObject::operator new(0x1B0uLL);
      HGaussianBlur::HGaussianBlur(v29);
      v30 = v53;
      v31 = v34.f64[0];
      v32 = v34.f64[1];
      HGaussianBlur::init(v29, v30, v31, v32, versionAtCreation == 0, 0, 0);
      (*(*v29 + 120))(v29, 0, COERCE_FLOAT64_T(*&v48));
      (*(*v29 + 16))(v29);
      (*(*v29 + 24))(v29);
    }

    v33 = HGObject::operator new(0x1A0uLL);
    HgcGloom::HgcGloom(v33);
  }

  if (input)
  {
    objc_msgSend_heliumRef(input, v53);
  }

  else
  {
    v43[0].f64[0] = 0.0;
  }

  [output setHeliumRef:v43];
  if (*&v43[0].f64[0])
  {
    (*(**&v43[0].f64[0] + 24))(*&v43[0].f64[0]);
  }

  return 1;
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