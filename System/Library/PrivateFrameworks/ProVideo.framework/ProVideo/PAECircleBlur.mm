@interface PAECircleBlur
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (PAECircleBlur)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAECircleBlur

- (PAECircleBlur)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAECircleBlur;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:3];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"SupportsHeliumRendering", v5, @"MayRemapTime", v6, @"SupportsLargeRenderScale", v7, @"InputSizeLimit", v8, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v10.receiver = self;
  v10.super_class = PAECircleBlur;
  [(PAESharedDefaultBase *)&v10 addParameters];
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
    [v3 addPointParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultX:@"CircleBlur::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"CircleBlur::Blur Amount" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:10.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"CircleBlur::Circle Radius" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:400.0 parmFlags:{0.0, dbl_260343760[versionAtCreation < 3], 0.0, dbl_260343770[versionAtCreation < 3], 1.0}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"CircleBlur::Crop" parmFlags:{0, 0), 4, 1, 1}];
  }

  return v6;
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  selfCopy = self;
  LOBYTE(self) = 0;
  if (width)
  {
    if (height)
    {
      self = [(PROAPIAccessing *)selfCopy->super.super._apiManager apiForProtocol:&unk_28735E258];
      if (self)
      {
        selfCopy2 = self;
        v15 = 0;
        [(PAECircleBlur *)self getBoolValue:&v15 fromParm:4 atFxTime:info->var0.var1];
        v14 = 0.0;
        v12 = 0.0;
        if ((v15 & 1) == 0)
        {
          [(PAECircleBlur *)selfCopy2 getFloatValue:&v14 fromParm:2 atFxTime:info->var0.var1, 0.0];
          v12 = v14 * 1.8 + v14 * 1.8;
        }

        *width = (v12 + input->var0);
        *height = (v12 + input->var1);
        LOBYTE(self) = 1;
      }
    }
  }

  return self;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v89 = *MEMORY[0x277D85DE8];
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

  versionAtCreation = [v10 versionAtCreation];
  objc_msgSend_getInversePixelTransformForImage_(self);
  objc_msgSend_getPixelTransformForImage_(self);
  if (!versionAtCreation)
  {
    v78[0].f64[0] = 1.0;
    *(&v79 + 1) = 0x3FF0000000000000;
  }

  v75 = 400.0;
  v76 = 10.0;
  v74 = 1;
  v73 = 0uLL;
  [v9 getXValue:&v73 YValue:&v73 + 8 fromParm:1 atFxTime:info->var0.var1];
  objc_msgSend_convertRelativeToImageCoordinates_withImage_(self);
  v73 = v72[0];
  [v9 getFloatValue:&v76 fromParm:2 atFxTime:info->var0.var1];
  [v9 getFloatValue:&v75 fromParm:3 atFxTime:info->var0.var1];
  [v9 getBoolValue:&v74 fromParm:4 atFxTime:info->var0.var1];
  v14 = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
  imageType = [input imageType];
  v72[5] = v77[5];
  v72[6] = v77[6];
  v72[7] = v77[7];
  v72[1] = v77[1];
  v72[2] = v77[2];
  v72[3] = v77[3];
  v72[4] = v77[4];
  v68 = v81;
  v69 = v82;
  v70 = v83;
  v71 = v84;
  v72[0] = v77[0];
  v64 = v78[0];
  v65 = v78[1];
  v66 = v79;
  v67 = v80;
  PCMatrix44Tmpl<double>::rightTranslate(v72, *&v73, *(&v73 + 1), 0.0);
  v16.f64[0] = -*&v73;
  PCMatrix44Tmpl<double>::leftTranslate(&v64, v16, -*(&v73 + 1), 0.0);
  if (v14)
  {
    v17 = imageType == 3;
  }

  else
  {
    v17 = 0;
  }

  v12 = v17;
  if (v17)
  {
    if (v76 == 0.0)
    {
      if (input)
      {
        objc_msgSend_heliumRef(input, v76);
      }

      else
      {
        v87[0] = 0;
      }

      [output setHeliumRef:v87];
      if (v87[0])
      {
        (*(*v87[0] + 24))(v87[0]);
      }
    }

    else
    {
      if (input)
      {
        objc_msgSend_heliumRef(input, v76);
      }

      else
      {
        v63 = 0;
      }

      if (v74 == 1)
      {
        v62 = v63;
        if (v63)
        {
          (*(*v63 + 16))(v63);
        }

        objc_msgSend_smear_fromImage_toImage_(self);
        v18 = v87[0];
        if (v63 == v87[0])
        {
          if (v63)
          {
            (*(*v87[0] + 24))(v87[0]);
          }
        }

        else
        {
          if (v63)
          {
            (*(*v63 + 24))();
            v18 = v87[0];
          }

          v63 = v18;
          v87[0] = 0;
        }

        if (v62)
        {
          (*(*v62 + 24))(v62);
        }
      }

      v19 = 0;
      v20 = v76 * 2.7;
      v21 = vdupq_lane_s64(*&v64.f64[0], 0);
      v22 = vdupq_lane_s64(COERCE__INT64(fabs(*(&v66 + 1))), 0);
      v23 = v76 * 2.7 / 7.0;
      v24 = xmmword_260343780;
      v25.i64[0] = 0x400000004;
      v25.i64[1] = 0x400000004;
      do
      {
        v26 = vmulq_n_f32(vcvtq_f32_u32(v24), v23);
        v27 = vcvtq_f64_f32(*v26.f32);
        v28 = vcvt_hight_f64_f32(v26);
        *&v87[v19 / 2] = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v27, v21)), vdivq_f64(v28, v21));
        *&v85[v19] = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v27, v22)), vdivq_f64(v28, v22));
        v24 = vaddq_s32(v24, v25);
        v19 += 4;
      }

      while (v19 != 8);
      v76 = v20 * 7.0 / 100.0;
      v29 = HGObject::operator new(0x1A0uLL);
      HgcCircleBlur2::HgcCircleBlur2(v29);
      v30 = HGObject::operator new(0x1A0uLL);
      HgcCircleBlur2::HgcCircleBlur2(v30);
      v31 = 1.0 / v75;
      (*(*v29 + 96))(v29, 1, v31, 0.0, 0.0, 0.0);
      v32 = 1.0 / v75;
      (*(*v30 + 96))(v30, 1, v32, 0.0, 0.0, 0.0);
      v33 = v64.f64[0];
      v34 = v64.f64[1];
      v35 = v65.f64[0];
      v36 = v65.f64[1];
      (*(*v29 + 96))(v29, 2, v33, v34, v35, v36);
      v37 = v64.f64[0];
      v38 = v64.f64[1];
      v39 = v65.f64[0];
      v40 = v65.f64[1];
      (*(*v30 + 96))(v30, 2, v37, v38, v39, v40);
      v41 = *&v66;
      v42 = *(&v66 + 1);
      v43 = *&v67;
      v44 = *(&v67 + 1);
      (*(*v29 + 96))(v29, 3, v41, v42, v43, v44);
      v45 = *&v66;
      v46 = *(&v66 + 1);
      v47 = *&v67;
      v48 = *(&v67 + 1);
      (*(*v30 + 96))(v30, 3, v45, v46, v47, v48);
      v49 = HGObject::operator new(0x70uLL);
      HGBlurGroup::HGBlurGroup(v49, v63, 0);
      HGBlurGroup::setBlurValues(v49, v87, v85, 5);
      (*(*v29 + 96))(v29, 0, 0.0, 0.0, 0.0, 0.0);
      v50 = HGBlurGroup::level(v49, 0);
      (*(*v29 + 120))(v29, 0, v50);
      v51 = HGBlurGroup::level(v49, 1u);
      (*(*v29 + 120))(v29, 1, v51);
      v52 = HGBlurGroup::level(v49, 2u);
      (*(*v29 + 120))(v29, 2, v52);
      v53 = HGBlurGroup::level(v49, 3u);
      (*(*v29 + 120))(v29, 3, v53);
      v54 = HGBlurGroup::level(v49, 4u);
      (*(*v29 + 120))(v29, 4, v54);
      if (v49)
      {
        (*(*v49 + 24))(v49);
      }

      v55 = HGObject::operator new(0x70uLL);
      HGBlurGroup::HGBlurGroup(v55, v63, 0);
      HGBlurGroup::setBlurValues(v55, &v88, &v86, 4);
      (*(*v30 + 96))(v30, 0, 1.0, 0.0, 0.0, 0.0);
      (*(*v30 + 120))(v30, 0, v29);
      v56 = HGBlurGroup::level(v55, 0);
      (*(*v30 + 120))(v30, 1, v56);
      v57 = HGBlurGroup::level(v55, 1u);
      (*(*v30 + 120))(v30, 2, v57);
      v58 = HGBlurGroup::level(v55, 2u);
      (*(*v30 + 120))(v30, 3, v58);
      v59 = HGBlurGroup::level(v55, 3u);
      (*(*v30 + 120))(v30, 4, v59);
      if (v55)
      {
        (*(*v55 + 24))(v55);
      }

      v61 = v30;
      (*(*v30 + 16))(v30);
      if (v74 == 1)
      {
        [(PAESharedDefaultBase *)self crop:&v61 fromImage:input toImage:output];
      }

      [output setHeliumRef:&v61];
      if (v61)
      {
        (*(*v61 + 24))(v61);
      }

      (*(*v30 + 24))(v30);
      (*(*v29 + 24))(v29);
      if (v63)
      {
        (*(*v63 + 24))(v63);
      }
    }
  }

  return v12;
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