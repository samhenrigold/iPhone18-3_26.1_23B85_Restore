@interface PAEGlow
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (HGRef<HGNode>)get360BlurNode:(HGRef<HGNode>)node withInputImage:(id)image outputImage:(id)outputImage blurRadius:(double)radius blurScale:(PCVector2<double>)scale;
- (HGRef<HGNode>)getBlurNode:(HGRef<HGNode>)node withInputImage:(id)image outputImage:(id)outputImage blurRadius:(double)radius blurScale:(PCVector2<double>)scale is360:(BOOL)is360;
- (HGRef<HGNode>)getPlanarBlurNode:(HGRef<HGNode>)node withInputImage:(id)image outputImage:(id)outputImage blurRadius:(double)radius blurScale:(PCVector2<double>)scale;
- (PAEGlow)initWithAPIManager:(id)manager;
- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error;
- (id)properties;
- (void)dealloc;
@end

@implementation PAEGlow

- (PAEGlow)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEGlow;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEGlow;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (id)properties
{
  if ([PAEGlow properties]::once != -1)
  {
    [PAEGlow properties];
  }

  return [PAEGlow properties]::sPropertiesDict;
}

void *__21__PAEGlow_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:6];
  result = [v0 initWithObjectsAndKeys:{v1, @"SupportsHeliumRendering", v2, @"MayRemapTime", v3, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
  [PAEGlow properties]::sPropertiesDict = result;
  return result;
}

- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (!error || v6)
  {
    v14 = 0;
    [v6 getBoolValue:&v14 fromParm:6 atFxTime:time.var1];
    if (v14 == 1)
    {
      v17[0] = @"PositionIndependent";
      v9 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v17[1] = @"SupportsLargeRenderScale";
      v18[0] = v9;
      v18[1] = [MEMORY[0x277CCABB0] numberWithBool:0];
      v10 = MEMORY[0x277CBEAC0];
      v11 = v18;
      v12 = v17;
    }

    else
    {
      v15[0] = @"PositionIndependent";
      v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v15[1] = @"SupportsLargeRenderScale";
      v16[0] = v13;
      v16[1] = [MEMORY[0x277CCABB0] numberWithBool:1];
      v10 = MEMORY[0x277CBEAC0];
      v11 = v16;
      v12 = v15;
    }

    return [v10 dictionaryWithObjects:v11 forKeys:v12 count:2];
  }

  else
  {
    v19 = *MEMORY[0x277CCA470];
    v20[0] = @"Unable to retrieve parameter retrieval API (v5)";
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:FxPlugErrorDomain code:13 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v20, &v19, 1)}];
    result = 0;
    *error = v7;
  }

  return result;
}

- (BOOL)addParameters
{
  v10.receiver = self;
  v10.super_class = PAEGlow;
  [(PAESharedDefaultBase *)&v10 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735DF10];
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
    v7 = [v4 versionAtCreation] < 2;
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Glow::Radius" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:10.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Glow::Opacity" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:1.5 parmFlags:{0.0, 3.0, 0.0, 3.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Glow::Threshold" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:0.75 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Glow::Softness" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:0.2 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.1}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Glow::Clip" parmFlags:{0, 0), 5, v7, 1}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Glow::Equirect" parmFlags:{0, 0), 6, 0, 1}];
  }

  return v6;
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (width)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 || height == 0;
  v13 = !v12;
  if (!v12)
  {
    v14 = v10;
    v21 = 0;
    [v10 getBoolValue:&v21 fromParm:6 atFxTime:info->var0.var1];
    if (v21 == 1)
    {
      *width = input->var0;
      var1 = input->var1;
    }

    else
    {
      v20 = 0.0;
      [v14 getFloatValue:&v20 fromParm:1 atFxTime:info->var0.var1];
      v16 = v20 + v20;
      v17 = vcvtps_s32_f32(v16);
      v18 = input->var1;
      *width = (LODWORD(input->var0) + 2 * v17);
      var1 = (v18 + 2 * v17);
    }

    *height = var1;
  }

  return v13;
}

- (HGRef<HGNode>)get360BlurNode:(HGRef<HGNode>)node withInputImage:(id)image outputImage:(id)outputImage blurRadius:(double)radius blurScale:(PCVector2<double>)scale
{
  v9 = v7;
  v13 = v8;
  if (self)
  {
    objc_msgSend_getInversePixelTransformForImage_(self, a2, outputImage, radius, scale.var0, scale.var1);
    objc_msgSend_getPixelTransformForImage_(self);
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
  }

  v15 = HGObject::operator new(0x1C0uLL);
  HGNode::HGNode(v15);
  *v15 = &unk_2871D9F38;
  *(v15 + 51) = 0;
  *(v15 + 52) = 0;
  *(v15 + 106) = 0;
  *(v15 + 54) = 0;
  *(v15 + 55) = 0;
  off_2871D9FB0(v15, 0, *node.var0);
  v16 = *v9;
  v17 = v9[1];
  width = [image width];
  v19 = v37.f64[0];
  height = [image height];
  radiusCopy = radius;
  v22 = v16;
  v23 = v17;
  v28 = vcvt_hight_f32_f64(vcvt_f32_f64(v37), v38);
  v27 = vcvt_hight_f32_f64(vcvt_f32_f64(v39), v40);
  v26 = vcvt_hight_f32_f64(vcvt_f32_f64(v29), v30);
  v25 = vcvt_hight_f32_f64(vcvt_f32_f64(v31), v32);
  v24 = HEquirectGaussianBlur::init(v15, vcvtpd_s64_f64(fabs(v19) * width), vcvtpd_s64_f64(fabs(v39.f64[1]) * height), &v28, &v27, &v26, &v25, radiusCopy, v22, v23);
  *v13 = v15;
  return v24;
}

- (HGRef<HGNode>)getPlanarBlurNode:(HGRef<HGNode>)node withInputImage:(id)image outputImage:(id)outputImage blurRadius:(double)radius blurScale:(PCVector2<double>)scale
{
  radiusCopy = radius;
  v12 = v8;
  v14 = *v7;
  v13 = v7[1];
  v15 = [-[PROAPIAccessing apiForProtocol:](self->super.super._apiManager apiForProtocol:{&unk_28735F2C8, image, outputImage, radius, scale.var0, scale.var1), "versionAtCreation"}];
  if (!v15)
  {
    radiusCopy = pow(radiusCopy / 100.0, 1.425) * 253.0;
    [image pixelAspect];
    v14 = v14 * (1.0 / v16);
  }

  v17 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v17);
  v18 = 4.0;
  if (radiusCopy <= 10.0 && (v18 = 2.0, radiusCopy <= 5.0))
  {
    v20 = 0;
    v18 = 1.0;
  }

  else
  {
    HGTransform::HGTransform(v27);
    HGTransform::Scale(v27, 1.0 / v18, 1.0 / v18, 1.0);
    (*(*v17 + 120))(v17, 0, *node.var0);
    (*(*v17 + 576))(v17, v27);
    v19 = pow(radiusCopy / 600.0, 0.65);
    radiusCopy = pow(v19 * 575.0 / v18 / 575.0, 1.53846154) * 600.0;
    HGTransform::~HGTransform(v27);
    v20 = 1;
  }

  v21 = HGObject::operator new(0x1B0uLL);
  HGaussianBlur::HGaussianBlur(v21);
  v22 = radiusCopy;
  v23 = v14;
  v24 = v13;
  HGaussianBlur::init(v21, v22, v23, v24, v15 == 0, 0, 0);
  if (v20)
  {
    (*(*v21 + 120))(v21, 0, v17);
  }

  else
  {
    (*(*v21 + 120))(v21, 0, *node.var0);
  }

  *v12 = v21;
  (*(*v21 + 16))(v21);
  v25 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v25);
  if (v20)
  {
    HGTransform::HGTransform(v27);
    HGTransform::Scale(v27, v18, v18, 1.0);
    (*(*v25 + 120))(v25, 0, v21);
    (*(*v25 + 576))(v25, v27);
    if (v21 != v25)
    {
      (*(*v21 + 24))(v21);
      *v12 = v25;
      (*(*v25 + 16))(v25);
    }

    HGTransform::~HGTransform(v27);
  }

  else if (!v25)
  {
    goto LABEL_16;
  }

  (*(*v25 + 24))(v25);
LABEL_16:
  v26.var0 = (*(*v21 + 24))(v21);
  if (v17)
  {
    return (*(*v17 + 24))(v17);
  }

  return v26;
}

- (HGRef<HGNode>)getBlurNode:(HGRef<HGNode>)node withInputImage:(id)image outputImage:(id)outputImage blurRadius:(double)radius blurScale:(PCVector2<double>)scale is360:(BOOL)is360
{
  is360Copy = is360;
  selfCopy = self;
  v15 = v9;
  v16 = *node.var0;
  if (!v8)
  {
    v17 = *node.var0;
    if (v16)
    {
      self = (*(*v16 + 16))(v16, a2, radius, scale, *&scale.var1);
    }

    v18 = *is360Copy;
    if (selfCopy)
    {
      self = [(PAEGlow *)selfCopy getPlanarBlurNode:&v17 withInputImage:image outputImage:outputImage blurRadius:&v18 blurScale:radius, scale.var0, scale.var1];
      v16 = v17;
      if (!v17)
      {
        return self;
      }
    }

    else
    {
      *v15 = 0;
      if (!v16)
      {
        return self;
      }
    }

    return (*(*v16 + 24))(v16);
  }

  v19 = *node.var0;
  if (v16)
  {
    self = (*(*v16 + 16))(v16, a2, radius, scale, *&scale.var1);
  }

  v18 = *is360Copy;
  if (selfCopy)
  {
    self = [(PAEGlow *)selfCopy get360BlurNode:&v19 withInputImage:image outputImage:outputImage blurRadius:&v18 blurScale:radius, scale.var0, scale.var1];
    v16 = v19;
    if (!v19)
    {
      return self;
    }

    return (*(*v16 + 24))(v16);
  }

  *v15 = 0;
  if (v16)
  {
    return (*(*v16 + 24))(v16);
  }

  return self;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_287359A98];
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (!v10)
  {
    v12 = v9;
    v19 = 0x4024000000000000;
    v17 = 0x3FC999999999999ALL;
    v18 = 0x3FE8000000000000;
    v16 = 0x3FF8000000000000;
    v15 = 0;
    objc_msgSend_getScaleForImage_(self);
    [v8 getFloatValue:&v19 fromParm:1 atFxTime:info->var0.var1];
    [v8 getFloatValue:&v18 fromParm:3 atFxTime:info->var0.var1];
    [v8 getFloatValue:&v17 fromParm:4 atFxTime:info->var0.var1];
    [v8 getFloatValue:&v16 fromParm:2 atFxTime:info->var0.var1];
    [v8 getBoolValue:&v15 + 1 fromParm:5 atFxTime:info->var0.var1];
    [v8 getBoolValue:&v15 fromParm:6 atFxTime:info->var0.var1];
    if (input)
    {
      objc_msgSend_heliumRef(input);
    }

    [objc_msgSend(v12 colorMatrixFromDesiredRGBToYCbCrAtTime:{info->var0.var1), "matrix"}];
    v13 = HGObject::operator new(0x1A0uLL);
    HgcGlow::HgcGlow(v13);
  }

  return v11;
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