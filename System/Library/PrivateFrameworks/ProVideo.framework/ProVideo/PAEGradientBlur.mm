@interface PAEGradientBlur
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (PAEGradientBlur)initWithAPIManager:(id)manager;
- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error;
- (id)properties;
@end

@implementation PAEGradientBlur

- (PAEGradientBlur)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEGradientBlur;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:0];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"SupportsHeliumRendering", v5, @"MayRemapTime", v6, @"SupportsLargeRenderScale", v7, @"InputSizeLimit", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error
{
  v7 = [(PAEFilterDefaultBase *)self getParamAPIWithError:error];
  v13 = 0.0;
  if ([v7 getFloatValue:&v13 fromParm:3 atFxTime:time.var1] & 1) != 0 && (v12 = 0, (objc_msgSend(v7, "getBoolValue:fromParm:atFxTime:", &v12, 4, time.var1)))
  {
    if (v12 & 1 | (v13 != 0.0))
    {
      v8 = 3;
    }

    else
    {
      v8 = 6;
    }

    return [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v8, v13), @"PixelTransformSupport", 0}];
  }

  else if (error)
  {
    v10 = objc_opt_class();
    v11 = [(PAEFilterDefaultBase *)self getParamErrorFor:NSStringFromClass(v10)];
    result = 0;
    *error = v11;
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
  v6.super_class = PAEGradientBlur;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"GradientBlur::Point 1" defaultY:0 parmFlags:{0), 1, 0, 0.0, 0.0}];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"GradientBlur::Point 2" defaultY:0 parmFlags:{0), 2, 0, 0.67, 0.67}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"GradientBlur::Amount" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:10.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"GradientBlur::Crop" parmFlags:{0, 0), 4, 1, 1}];
  }

  return v3 != 0;
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v10 && (v11 = v10, v16 = 0, [v10 getBoolValue:&v16 fromParm:4 atFxTime:info->var0.var1], (v16 & 1) == 0))
  {
    v15 = 0.0;
    [v11 getFloatValue:&v15 fromParm:3 atFxTime:info->var0.var1];
    v13 = v15 + v15;
    *width = (v15 + v15 + input->var0);
    var1 = (v13 + input->var1);
  }

  else
  {
    *width = input->var0;
    var1 = input->var1;
  }

  *height = var1;
  return 1;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v50 = *MEMORY[0x277D85DE8];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = v9;
    v45 = 10.0;
    v44 = 1;
    [v9 getFloatValue:&v45 fromParm:3 atFxTime:info->var0.var1];
    if (v45 == 0.0)
    {
      if (input)
      {
        objc_msgSend_heliumRef(input, v45);
      }

      else
      {
        v41[0] = 0.0;
      }

      [output setHeliumRef:v41];
      if (*&v41[0])
      {
        (*(**&v41[0] + 24))(*&v41[0]);
      }

LABEL_18:
      LOBYTE(v9) = 1;
      return v9;
    }

    v43 = 0uLL;
    [v10 getXValue:&v43 YValue:&v43.u32[2] fromParm:1 atFxTime:{info->var0.var1, v45}];
    v42 = vdupq_n_s64(0x3FE570A3D70A3D71uLL);
    [v10 getXValue:&v42 YValue:&v42.u64[1] fromParm:2 atFxTime:info->var0.var1];
    [v10 getBoolValue:&v44 fromParm:4 atFxTime:info->var0.var1];
    objc_msgSend_getPixelTransformForImage_(self);
    objc_msgSend_getInversePixelTransformForImage_(self);
    objc_msgSend_convertRelativeToPixelCoordinates_withImage_(self);
    v43 = v48;
    objc_msgSend_convertRelativeToPixelCoordinates_withImage_(self);
    v42 = v48;
    if (v45 == 0.0)
    {
      if (input)
      {
        objc_msgSend_heliumRef(input, v45);
      }

      else
      {
        v48.i64[0] = 0;
      }

      [output setHeliumRef:&v48];
      if (v48.i64[0])
      {
        (*(*v48.i64[0] + 24))(v48.i64[0]);
      }

      goto LABEL_18;
    }

    LODWORD(v9) = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1, v45];
    if (v9)
    {
      if ([input imageType] == 3)
      {
        if (input)
        {
          objc_msgSend_heliumRef(input);
        }

        else
        {
          v40 = 0;
        }

        if (v44 == 1)
        {
          if (v40)
          {
            (*(*v40 + 16))(v40);
          }

          objc_msgSend_smear_fromImage_toImage_(self, v40);
          v11 = v48.i64[0];
          if (v40 == v48.i64[0])
          {
            if (v40)
            {
              (*(*v48.i64[0] + 24))(v48.i64[0]);
            }
          }

          else
          {
            if (v40)
            {
              (*(*v40 + 24))();
              v11 = v48.i64[0];
            }

            v40 = v11;
            v48.i64[0] = 0;
          }

          if (v39)
          {
            (*(*v39 + 24))(v39);
          }
        }

        v12 = v43;
        v13 = v42;
        v14 = HGObject::operator new(0x1A0uLL);
        HgcGradientBlur2::HgcGradientBlur2(v14);
        v15 = 1.0 / sqrt((*v12.i64 - *v13.i64) * (*v12.i64 - *v13.i64) + (*&v12.i64[1] - *&v13.i64[1]) * (*&v12.i64[1] - *&v13.i64[1]));
        v16 = (*v12.i64 - *v13.i64) * v15;
        v17 = (*&v12.i64[1] - *&v13.i64[1]) * v15;
        v18 = v16;
        v19 = v17;
        *&v16 = *v13.i64 * v16 + *&v13.i64[1] * v17;
        v20 = -*&v16;
        (*(*v14 + 96))(v14, 1, v18, v19, 0.0, -*&v16);
        *&v15 = v15;
        (*(*v14 + 96))(v14, 2, *&v15, 0.0, 0.0, 0.0);
        v21 = HGObject::operator new(0x1A0uLL);
        HgcGradientBlur2::HgcGradientBlur2(v21);
        (*(*v21 + 96))(v21, 1, v18, v19, 0.0, v20);
        (*(*v21 + 96))(v21, 2, *&v15, 0.0, 0.0, 0.0);
        v22 = v41[0];
        v23 = v41[5];
        v45 = v45 * 2.7;
        v24 = v45 / 7.0;
        v25 = vmulq_n_f32(xmmword_260343430, v24);
        v26 = vmulq_n_f32(xmmword_260343820, v24);
        v48 = vmulq_n_f32(v25, v22);
        v49 = vmulq_n_f32(v26, v22);
        v46 = vmulq_n_f32(v25, v23);
        v47 = vmulq_n_f32(v26, v23);
        v27 = HGObject::operator new(0x70uLL);
        HGBlurGroup::HGBlurGroup(v27, v40, 0);
        HGBlurGroup::setBlurValues(v27, v48.f32, v46.f32, 5);
        (*(*v14 + 96))(v14, 0, 0.0, 0.0, 0.0, 0.0);
        v28 = HGBlurGroup::level(v27, 0);
        (*(*v14 + 120))(v14, 0, v28);
        v29 = HGBlurGroup::level(v27, 1u);
        (*(*v14 + 120))(v14, 1, v29);
        v30 = HGBlurGroup::level(v27, 2u);
        (*(*v14 + 120))(v14, 2, v30);
        v31 = HGBlurGroup::level(v27, 3u);
        (*(*v14 + 120))(v14, 3, v31);
        v32 = HGBlurGroup::level(v27, 4u);
        (*(*v14 + 120))(v14, 4, v32);
        if (v27)
        {
          (*(*v27 + 24))(v27);
        }

        v33 = HGObject::operator new(0x70uLL);
        HGBlurGroup::HGBlurGroup(v33, v40, 0);
        HGBlurGroup::setBlurValues(v33, v49.f32, v47.f32, 4);
        (*(*v21 + 96))(v21, 0, 1.0, 0.0, 0.0, 0.0);
        (*(*v21 + 120))(v21, 0, v14);
        v34 = HGBlurGroup::level(v33, 0);
        (*(*v21 + 120))(v21, 1, v34);
        v35 = HGBlurGroup::level(v33, 1u);
        (*(*v21 + 120))(v21, 2, v35);
        v36 = HGBlurGroup::level(v33, 2u);
        (*(*v21 + 120))(v21, 3, v36);
        v37 = HGBlurGroup::level(v33, 3u);
        (*(*v21 + 120))(v21, 4, v37);
        if (v33)
        {
          (*(*v33 + 24))(v33);
        }

        v48.i64[0] = v21;
        (*(*v21 + 16))(v21);
        if (v44 == 1)
        {
          [(PAESharedDefaultBase *)self crop:&v48 fromImage:input toImage:output];
        }

        [output setHeliumRef:&v48];
        if (v48.i64[0])
        {
          (*(*v48.i64[0] + 24))(v48.i64[0]);
        }

        (*(*v21 + 24))(v21);
        (*(*v14 + 24))(v14);
        if (v40)
        {
          (*(*v40 + 24))(v40);
        }

        goto LABEL_18;
      }

      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software
{
  *software = 0;
  *hardware = 1;
  v6 = *&setup->var2;
  v8[0] = *&setup->var0.var0;
  v8[1] = v6;
  v8[2] = *&setup->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:hardware software:software];
  return 1;
}

@end