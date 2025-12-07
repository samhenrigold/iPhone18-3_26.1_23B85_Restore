@interface PAENeon
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (HGRef<HGNode>)blurNodeWithRadius:(double)radius xScale:(double)scale yScale:(double)yScale inputNode:(HGRef<HGNode>)node;
- (PAENeon)initWithAPIManager:(id)manager;
- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error;
- (id)properties;
@end

@implementation PAENeon

- (PAENeon)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAENeon;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  if ([PAENeon properties]::once != -1)
  {
    [PAENeon properties];
  }

  return [PAENeon properties]::sPropertiesDict;
}

void *__21__PAENeon_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:67584];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:591872];
  result = [v0 initWithObjectsAndKeys:{v1, @"PixelIndependent", v2, @"MayRemapTime", v3, @"SupportsHeliumRendering", v4, @"SDRWorkingSpace", v5, @"HDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
  [PAENeon properties]::sPropertiesDict = result;
  return result;
}

- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error
{
  v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (!v6)
  {
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Unable to retrieve FxParameterRetrievalAPI object", *MEMORY[0x277CCA450], 0}];
    if (error)
    {
      v16 = v15;
      v17 = MEMORY[0x277CCA9B8];
      v18 = FxPlugErrorDomain;
      v19 = 100001;
LABEL_20:
      v21 = [v17 errorWithDomain:v18 code:v19 userInfo:v16];
      result = 0;
      *error = v21;
      return result;
    }

    return 0;
  }

  v7 = v6;
  v26 = 0x3FF0000000000000;
  v25 = 0.0;
  if (![v6 getFloatValue:&v26 fromParm:1 atFxTime:time.var1])
  {
    v24 = 0x3FF0000000000000;
    goto LABEL_16;
  }

  v24 = 0x3FF0000000000000;
  if (![v7 getFloatValue:&v25 fromParm:3 atFxTime:time.var1])
  {
LABEL_16:
    v23 = 0.0;
    goto LABEL_17;
  }

  v23 = 0.0;
  if (([v7 getFloatValue:&v24 fromParm:2 atFxTime:time.var1] & 1) == 0)
  {
LABEL_17:
    v22 = 0x3FF0000000000000;
    goto LABEL_18;
  }

  v22 = 0x3FF0000000000000;
  if (([v7 getFloatValue:&v23 fromParm:5 atFxTime:time.var1] & 1) == 0 || (objc_msgSend(v7, "getFloatValue:fromParm:atFxTime:", &v22, 4, time.var1) & 1) == 0)
  {
LABEL_18:
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Unable to retrieve a parameter in [-PAEGaussianBlur dynamicPropertiesAtTime:withError:]", *MEMORY[0x277CCA450], 0}];
    if (error)
    {
      v16 = v20;
      v17 = MEMORY[0x277CCA9B8];
      v18 = FxPlugErrorDomain;
      v19 = 100002;
      goto LABEL_20;
    }

    return 0;
  }

  v8 = v25;
  if (v25 < v23)
  {
    v8 = v23;
  }

  if (v8 == 0.0)
  {
    v9 = 6;
  }

  else
  {
    v9 = 3;
  }

  v10 = MEMORY[0x277CBEAC0];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v10 dictionaryWithObjectsAndKeys:{v11, @"PositionIndependent", v12, @"PixelTransformSupport", v13, @"SupportsLargeRenderScale", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0), @"SupportsStableAnimation", 0}];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAENeon;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Neon::Outer Brightness" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:2.0 parmFlags:{0.0, 1000.0, 0.0, 20.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Neon::Outer Glow" parameterMin:0 parameterMax:0) sliderMin:5 sliderMax:0 delta:45.0 parmFlags:{0.0, 1000.0, 0.0, 200.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Neon::Inner Brightness" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:2.0 parmFlags:{0.0, 1000.0, 0.0, 15.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Neon::Inner Glow" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:50.0 parmFlags:{0.0, 1000.0, 0.0, 100.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Neon::Edge Intensity" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:10.0 parmFlags:{0.0, 1000.0, 0.0, 15.0, 0.1}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (!(v9 | v10))
  {
    return 0;
  }

  versionAtCreation = [v10 versionAtCreation];
  *&v43 = 1.0;
  [v9 getFloatValue:&v43 fromParm:1 atFxTime:info->var0.var1];
  v42 = 0.0;
  [v9 getFloatValue:&v42 fromParm:3 atFxTime:info->var0.var1];
  *&v41 = 1.0;
  [v9 getFloatValue:&v41 fromParm:2 atFxTime:info->var0.var1];
  v40 = 0.0;
  [v9 getFloatValue:&v40 fromParm:5 atFxTime:info->var0.var1];
  *&v39 = 1.0;
  [v9 getFloatValue:&v39 fromParm:4 atFxTime:info->var0.var1];
  v13 = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
  imageType = [input imageType];
  if (v13)
  {
    v15 = imageType == 3;
  }

  else
  {
    v15 = 0;
  }

  v11 = v15;
  if (v15)
  {
    if (input)
    {
      objc_msgSend_heliumRef(input);
    }

    else
    {
      v38 = 0;
    }

    objc_msgSend_getScaleForImage_(self);
    v16 = *&v43;
    v34 = v38;
    if (v38)
    {
      (*(*v38 + 16))(v38);
    }

    objc_msgSend_brightnessNodeWithValue_inputNode_(self, v16);
    if (v34)
    {
      (*(*v34 + 24))(v34);
    }

    v17 = v42;
    v32 = v38;
    if (v38)
    {
      (*(*v38 + 16))(v38);
    }

    objc_msgSend_blurNodeWithRadius_xScale_yScale_inputNode_(self, v17, v36, v37);
    if (v32)
    {
      (*(*v32 + 24))(v32);
    }

    v18 = *&v41;
    v30 = v33;
    if (v33)
    {
      (*(*v33 + 16))(v33);
    }

    objc_msgSend_brightnessNodeWithValue_inputNode_(self, v18);
    if (v30)
    {
      (*(*v30 + 24))(v30);
    }

    v19 = v40;
    v28 = v38;
    if (v38)
    {
      (*(*v38 + 16))(v38);
    }

    objc_msgSend_blurNodeWithRadius_xScale_yScale_inputNode_(self, v19, v36, v37);
    if (v28)
    {
      (*(*v28 + 24))(v28);
    }

    v20 = *&v39;
    v26 = v29;
    if (v29)
    {
      (*(*v29 + 16))(v29);
    }

    objc_msgSend_brightnessNodeWithValue_inputNode_(self, v20);
    if (v26)
    {
      (*(*v26 + 24))(v26);
    }

    v21 = HGObject::operator new(0x280uLL);
    HGHWMultiBlend::HGHWMultiBlend(v21);
    (*(*v21 + 120))(v21, 0, v35);
    v22 = *(*v21 + 120);
    if (versionAtCreation < 4)
    {
      v22(v21, 1, v31);
      v23 = &v27;
    }

    else
    {
      v22(v21, 1, v27);
      v23 = &v31;
    }

    (*(*v21 + 120))(v21, 2, *v23);
    v25 = v21;
    (*(*v21 + 16))(v21);
    [output setHeliumRef:&v25];
    if (v25)
    {
      (*(*v25 + 24))(v25);
    }

    (*(*v21 + 24))(v21);
    if (v27)
    {
      (*(*v27 + 24))(v27);
    }

    if (v29)
    {
      (*(*v29 + 24))(v29);
    }

    if (v31)
    {
      (*(*v31 + 24))(v31);
    }

    if (v33)
    {
      (*(*v33 + 24))(v33);
    }

    if (v35)
    {
      (*(*v35 + 24))(v35);
    }

    if (v38)
    {
      (*(*v38 + 24))(v38);
    }
  }

  return v11;
}

- (HGRef<HGNode>)blurNodeWithRadius:(double)radius xScale:(double)scale yScale:(double)yScale inputNode:(HGRef<HGNode>)node
{
  v11 = v6;
  v12 = HGObject::operator new(0x1B0uLL);
  HGaussianBlur::HGaussianBlur(v12);
  radiusCopy = radius;
  scaleCopy = scale;
  yScaleCopy = yScale;
  HGaussianBlur::init(v12, radiusCopy, scaleCopy, yScaleCopy, 0, 0, 0);
  v16.var0 = (*(*v12 + 120))(v12, 0, *node.var0);
  *v11 = v12;
  return v16;
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

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v11 = v10;
  if (v10)
  {
    v18 = 0.0;
    [v10 getFloatValue:&v18 fromParm:3 atFxTime:info->var0.var1];
    v17 = 0.0;
    [v11 getFloatValue:&v17 fromParm:5 atFxTime:info->var0.var1];
    v12 = v18;
    if (v18 < v17)
    {
      v12 = v17;
    }

    var1 = input->var1;
    v14 = v12;
    v15 = (2 * vcvtps_s32_f32(v14));
    if (width)
    {
      *width = input->var0 + v15;
    }

    if (height)
    {
      *height = var1 + v15;
    }
  }

  return v11 != 0;
}

@end