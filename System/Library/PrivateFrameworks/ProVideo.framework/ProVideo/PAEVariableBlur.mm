@interface PAEVariableBlur
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (PAEVariableBlur)initWithAPIManager:(id)manager;
- (id)properties;
- (void)dealloc;
@end

@implementation PAEVariableBlur

- (PAEVariableBlur)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEVariableBlur;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEVariableBlur;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:3];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"SupportsHeliumRendering", v5, @"SupportsLargeRenderScale", v6, @"InputSizeLimit", v7, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEVariableBlur;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"VariableBlur::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"VariableBlur::Amount" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:10.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"VariableBlur::InnerRadius" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:100.0 parmFlags:{0.0, 1000.0, 0.0, 1000.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"VariableBlur::OuterRadius" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:400.0 parmFlags:{0.0, 1000.0, 0.0, 1000.0, 1.0}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"VariableBlur::Crop" parmFlags:{0, 0), 5, 1, 1}];
  }

  return v3 != 0;
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (width)
  {
    v11 = height == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v11)
  {
    v13 = v10;
    v17 = 0;
    [v10 getBoolValue:&v17 fromParm:5 atFxTime:info->var0.var1];
    v16 = 0.0;
    v14 = 0.0;
    if ((v17 & 1) == 0)
    {
      [v13 getFloatValue:&v16 fromParm:2 atFxTime:{info->var0.var1, 0.0}];
      v14 = v16 + v16;
    }

    *width = (v14 + input->var0);
    *height = (v14 + input->var1);
  }

  return v12;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v109 = *MEMORY[0x277D85DE8];
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

  v13 = [v10 versionAtCreation] == 0;
  v105 = 400.0;
  v106 = 10.0;
  v104 = 100.0;
  v103 = 0;
  v102 = 0uLL;
  [v9 getXValue:&v102 YValue:&v102 + 8 fromParm:1 atFxTime:info->var0.var1];
  objc_msgSend_convertRelativeToImageCoordinates_withImage_(self);
  v102 = *v94;
  [v9 getFloatValue:&v106 fromParm:2 atFxTime:info->var0.var1];
  [v9 getFloatValue:&v105 fromParm:3 atFxTime:info->var0.var1];
  [v9 getFloatValue:&v104 fromParm:4 atFxTime:info->var0.var1];
  if (v13)
  {
    v14 = v104;
    v104 = v105;
    v105 = v14;
  }

  [v9 getBoolValue:&v103 fromParm:5 atFxTime:info->var0.var1];
  objc_msgSend_getPixelTransformForImage_(self);
  objc_msgSend_getInversePixelTransformForImage_(self);
  imageType = [input imageType];
  if ([(PAESharedDefaultBase *)self getRenderMode:info->var0.var1])
  {
    v16 = imageType == 3;
  }

  else
  {
    v16 = 0;
  }

  v12 = v16;
  if (v16)
  {
    if (v106 <= 0.0)
    {
      if (input)
      {
        objc_msgSend_heliumRef(input, v106);
      }

      else
      {
        *&v107 = 0;
      }

      [output setHeliumRef:&v107];
      if (v107)
      {
        (*(*v107 + 24))(v107);
      }
    }

    else
    {
      if (input)
      {
        objc_msgSend_heliumRef(input, v106);
      }

      else
      {
        v85 = 0;
      }

      if (v103 == 1)
      {
        v84 = v85;
        if (v85)
        {
          (*(*v85 + 16))(v85);
        }

        objc_msgSend_smear_fromImage_toImage_(self);
        v17 = v107;
        if (v85 == v107)
        {
          if (v85)
          {
            (*(*v107 + 24))(v107);
          }
        }

        else
        {
          if (v85)
          {
            (*(*v85 + 24))();
            v17 = v107;
          }

          v85 = v17;
          *&v107 = 0;
        }

        if (v84)
        {
          (*(*v84 + 24))(v84);
        }
      }

      v18 = HGObject::operator new(0x1A0uLL);
      HgcVariableBlurIntensity::HgcVariableBlurIntensity(v18);
      v19 = *&v102;
      v20 = *(&v102 + 1);
      (*(*v18 + 96))(v18, 0, v19, v20, 0.0, 0.0);
      v21 = 1.0 / (v104 - v105);
      (*(*v18 + 96))(v18, 1, v21, 0.0, 0.0, 0.0);
      v22 = v105;
      (*(*v18 + 96))(v18, 2, v22, 0.0, 0.0, 0.0);
      v23 = v86;
      v24 = v87;
      v25 = v88;
      v26 = v89;
      (*(*v18 + 96))(v18, 3, v23, v24, v25, v26);
      v27 = v90;
      v28 = v91;
      v29 = v92;
      v30 = v93;
      (*(*v18 + 96))(v18, 4, v27, v28, v29, v30);
      v31 = HGObject::operator new(0x1D0uLL);
      HGModulatedBlur::HGModulatedBlur(v31);
      v83 = v31;
      if (v31)
      {
        (*(*v31 + 16))(v31);
      }

      (*(*v31 + 120))(v31, 0, v85);
      (*(*v31 + 120))(v31, 1, v18);
      v106 = v106 * 2.7;
      v32 = v106;
      (*(*v31 + 96))(v31, 0, v32, 0.0, 0.0, 0.0);
      v33 = v94[0];
      v34 = v97;
      v35 = fabsf(v34);
      (*(*v31 + 96))(v31, 1, v33, v35, 0.0, 0.0);
      v107 = xmmword_260343830;
      v108[0] = unk_260343840;
      *(v108 + 12) = unk_26034384C;
      v36 = v106;
      v38 = ceil(log2(v106)) + 1.0;
      if (v38 <= 0.0)
      {
        v38 = 1.0;
      }

      LODWORD(v37) = vcvtms_s32_f32(v38);
      if (v37 >= 2)
      {
        v39 = v37 + 1;
        v40 = &v108[-1] + v37 - 1;
        do
        {
          v41 = v36;
          *v40-- = v41;
          v36 = v36 * 0.5;
          --v39;
        }

        while (v39 > 2);
      }

      HGModulatedBlur::setBlurValues(v31, &v107, v38);
      v43 = v104;
      v42 = v105;
      if (v105 <= v104)
      {
        if ((v73 = v35, v74 = v33, v44 = v102, v45 = v99, v46 = v100, v47 = v101, v48 = v94[0], v49 = v96, v77 = v94[1], v78 = v95, v75 = v97, v76 = v98, objc_msgSend_getImageBoundary_(self), v81 = vcvtq_f64_f32(v79), v82 = vcvtq_f64_f32(v80), PCMatrix44Tmpl<double>::transformRect<double>(v94, v81.f64, &v81), v42 = *(&v44 + 1) - v43, v50 = (*&v44 - v43) * v45, v51 = (v43 + *(&v44 + 1)) * v46, v52 = (v43 + *(&v44 + 1)) * v77, v53 = (v78 + (*&v44 - v43) * v48 + v52) / (v47 + v50 + v51), v54 = (v43 + *&v44) * v45, v55 = v47 + v54 + v51, v56 = (v43 + *&v44) * v48, v57 = (v43 + *&v44) * v49, v58 = (*(&v44 + 1) - v43) * v46, v59 = v47 + v54 + v58, v60 = (*(&v44 + 1) - v43) * v75, v61 = (v76 + v57 + v60) / v59, v62 = (v76 + (*&v44 - v43) * v49 + v60) / (v47 + v50 + v58), v81.f64[0] < v53) && v53 < v81.f64[0] + v82.f64[0] || (v63 = (v78 + v56 + v52) / v55, v81.f64[0] < v63) && v63 < v81.f64[0] + v82.f64[0] || v81.f64[1] < v62 && v62 < v81.f64[1] + v82.f64[1] || v81.f64[1] < v61 && v61 < v81.f64[1] + v82.f64[1])
        {
          v64 = HGRectMake4i(vcvtmd_s64_f64(v53), vcvtmd_s64_f64(v62), vcvtpd_s64_f64(v53 + (v78 + v56 + v42 * v77) / v59 - v53), vcvtpd_s64_f64(v62 + (v76 + v57 + (v43 + *(&v44 + 1)) * v75) / v55 - v61));
          v66 = v65;
          v67 = HGObject::operator new(0x1A0uLL);
          HGCrop::HGCrop(v67);
          (*(*v67 + 120))(v67, 0, v31);
          (*(*v67 + 96))(v67, 0, v64, SHIDWORD(v64), v66, SHIDWORD(v66));
          v68 = v31;
          if (v31 != v67)
          {
            (*(*v31 + 24))(v31);
            v83 = v67;
            v68 = v67;
            (*(*v67 + 16))(v67);
          }

          v69 = HGObject::operator new(0x1B0uLL);
          HGaussianBlur::HGaussianBlur(v69);
          (*(*v69 + 120))(v69, 0, v85);
          v70 = v106;
          HGaussianBlur::init(v69, v70, v74, v73, 0, 0, 0);
          v71 = HGObject::operator new(0x1A0uLL);
          HGOverwrite::HGOverwrite(v71);
          (*(*v71 + 120))(v71, 1, v68);
          (*(*v71 + 120))(v71, 0, v69);
          if (v68 != v71)
          {
            (*(*v68 + 24))(v68);
            v83 = v71;
            (*(*v71 + 16))(v71);
          }

          (*(*v71 + 24))(v71);
          (*(*v69 + 24))(v69);
          (*(*v67 + 24))(v67);
        }
      }

      if (v103 == 1)
      {
        [(PAESharedDefaultBase *)self crop:&v83 fromImage:input toImage:output, v42];
      }

      [output setHeliumRef:&v83];
      if (v83)
      {
        (*(*v83 + 24))(v83);
      }

      (*(*v31 + 24))(v31);
      (*(*v18 + 24))(v18);
      if (v85)
      {
        (*(*v85 + 24))(v85);
      }
    }
  }

  return v12;
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