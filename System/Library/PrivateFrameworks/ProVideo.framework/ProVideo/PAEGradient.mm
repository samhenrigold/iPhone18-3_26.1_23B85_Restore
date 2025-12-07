@interface PAEGradient
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)initPAEGradientWithHeight:(id)height;
- (BOOL)parameterChanged:(unsigned int)changed;
- (PAEGradient)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAEGradient

- (PAEGradient)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEGradient;
  result = [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
  if (result)
  {
    *(&result->super.super._hostIsVertigo + 2) = 0;
  }

  return result;
}

- (BOOL)initPAEGradientWithHeight:(id)height
{
  v5 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E548];
  v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735BE50];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (!v7)
  {
    v9 = v6;
    v18 = 0.0;
    v19 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v15 = 0;
    v13 = *MEMORY[0x277CC08F0];
    v14 = *(MEMORY[0x277CC08F0] + 16);
    [v5 getGradientStartEnd:&v19 startY:&v18 endX:&v17 endY:&v16 type:&v15 fromParm:310 atFxTime:&v13];
    [height doubleValue];
    v18 = v10 * 0.5;
    [height doubleValue];
    v16 = v11 * -0.5;
    [v9 setGradientStartEnd:310 startY:&v13 endX:v19 endY:v18 toParm:v17 atTime:?];
  }

  return v8;
}

- (id)properties
{
  v2 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v2)
  {
    if ([v2 versionAtCreation] < 3)
    {
      v3 = 1;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 1;
  }

  v4 = MEMORY[0x277CBEAC0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:65792];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:590080];
  return [v4 dictionaryWithObjectsAndKeys:{v5, @"MayRemapTime", v6, @"SupportsLargeRenderScale", v7, @"SupportsHeliumRendering", v8, @"PixelTransformSupport", v9, @"SDRWorkingSpace", v10, @"HDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v12.receiver = self;
  v12.super_class = PAEGradient;
  [(PAESharedDefaultBase *)&v12 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735DF10];
  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735BCA0];
  v5 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6 || v5 == 0;
  v8 = !v7;
  if (!v7)
  {
    v9 = v5;
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v4 addGradientPositionedWithName:objc_msgSend(v10 parmId:"localizedStringForKey:value:table:" parmFlags:{@"Gradient::Gradient", 0, 0), 310, 0}];
    if ([v9 versionAtCreation])
    {
      [v3 addPopupMenuWithName:objc_msgSend(v10 parmId:"localizedStringForKey:value:table:" defaultValue:@"Gradient::End Condition" menuEntries:0 parmFlags:{0), 2, 0, objc_msgSend(objc_msgSend(v10, "localizedStringForKey:value:table:", @"Gradient::End Condition Options", 0, 0), "componentsSeparatedByString:", @"|", 5}];
    }

    [v3 addToggleButtonWithName:objc_msgSend(v10 parmId:"localizedStringForKey:value:table:" defaultValue:@"Gradient::Equirect" parmFlags:{0, 0), 3, 0, 1}];
  }

  return v8;
}

- (BOOL)parameterChanged:(unsigned int)changed
{
  v5 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v5)
  {
    if (![v5 versionAtCreation])
    {
LABEL_20:
      LOBYTE(v5) = 1;
      return v5;
    }

    v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
    v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E548];
    v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448];
    if (v6)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && v7 != 0)
    {
      v11 = v8;
      v20 = *MEMORY[0x277CC08F0];
      v21 = *(MEMORY[0x277CC08F0] + 16);
      if (changed == 3)
      {
        LOBYTE(v18) = 0;
        [v6 getBoolValue:&v18 fromParm:3 atFxTime:&v20];
        LODWORD(v19) = 0;
        [v6 getParameterFlags:&v19 fromParm:2];
        if (v18)
        {
          v12 = 4;
        }

        else
        {
          v12 = 4 * (*(&self->super.super._hostIsVertigo + 2) == 0);
        }

        [v11 setParameterFlags:v12 toParm:2];
        [v11 setGradientFlags:(v18 & 1) == 0 toParam:310];
      }

      else if (changed == 310)
      {
        v18 = 0;
        v19 = 0;
        v16 = 0;
        v17 = 0;
        v15 = 0;
        [v7 getGradientStartEnd:&v19 startY:&v18 endX:&v17 endY:&v16 type:&v15 fromParm:310 atFxTime:&v20];
        v14 = 0;
        [v6 getParameterFlags:&v14 fromParm:2];
        if (*(&self->super.super._hostIsVertigo + 2) != v15)
        {
          v14 = v14 & 0xFFFFFFFB | (4 * (v15 == 0));
          [v11 setParameterFlags:? toParm:?];
          *(&self->super.super._hostIsVertigo + 2) = v15;
        }
      }

      goto LABEL_20;
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)canThrowRenderOutput:(id)output withInfo:(id *)info
{
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E548];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735AB90];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v7)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || v10 == 0)
  {
    return 0;
  }

  v13 = v10;
  if ([output imageType] != 3)
  {
    return 0;
  }

  versionAtCreation = [v13 versionAtCreation];
  v97 = 1.0;
  v94 = 0x3FF0000000000000;
  v91 = 1.0;
  v88 = 1.0;
  v89 = 0u;
  v90 = 0u;
  v92 = 0u;
  v93 = 0u;
  v95 = 0u;
  v96 = 0u;
  if (v9)
  {
    objc_msgSend_inversePixelTransform(v9);
    for (i = 0; i != 16; i += 4)
    {
      v16 = (&v88 + i * 8);
      v17 = *&v87[i + 2];
      *v16 = *&v87[i];
      v16[1] = v17;
    }
  }

  v18 = HGRectMake4i(0, 0, 1024, 1);
  v20 = v19;
  v21 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v21, v18, v20, 24);
  v22 = *(v21 + 10);
  [v8 getGradientSamples:v22 numSamples:1024 depth:8 fromParm:310 atFxTime:info->var0.var1];
  v23 = 0;
  v24 = (v22 + 1);
  do
  {
    v25 = (v22 + 4 * v23);
    v26 = *v25;
    v27 = 3;
    v28 = v24;
    do
    {
      *(v28 - 1) = *v28;
      ++v28;
      --v27;
    }

    while (v27);
    v25[3] = v26;
    ++v23;
    v24 += 4;
  }

  while (v23 != 1024);
  v86 = 0.0;
  v87[0] = 0.0;
  v84 = 0.0;
  v85 = 0.0;
  v83 = 0;
  [v8 getGradientStartEnd:v87 startY:&v86 endX:&v85 endY:&v84 type:&v83 fromParm:310 atFxTime:info->var0.var1];
  v82 = 0;
  if (versionAtCreation)
  {
    [v7 getIntValue:&v82 fromParm:2 atFxTime:info->var0.var1];
  }

  v81 = 0;
  [v7 getBoolValue:&v81 fromParm:3 atFxTime:info->var0.var1];
  if (v81 == 1)
  {
    v83 = 0;
    height = [output height];
    height2 = [output height];
    v31 = vcvtd_n_f64_u64(height, 1uLL);
    v32 = height2 * -0.5;
    v33 = v97 + *(&v95 + 1) * 0.0 + v31 * *&v96;
    v34 = v97 + *(&v95 + 1) * 0.0 + v32 * *&v96;
    v86 = (*(&v92 + 1) + *(&v90 + 1) * 0.0 + v31 * v91) / v33;
    v87[0] = (*&v90 + v88 * 0.0 + v31 * *&v89) / v33;
    v84 = (*(&v92 + 1) + *(&v90 + 1) * 0.0 + v32 * v91) / v34;
    v85 = (*&v90 + v88 * 0.0 + v32 * *&v89) / v34;
  }

  [output pixelAspect];
  v36 = v35;
  v80 = 0;
  v37 = sqrt(v36 * (v85 - v87[0]) * (v36 * (v85 - v87[0])) + (v84 - v86) * (v84 - v86));
  if (PCMatrix44Tmpl<double>::isIdentity(&v88))
  {
    if (v83)
    {
      v38 = HGObject::operator new(0x1A0uLL);
      HGradientRadial::HGradientRadial(v38);
      if (v38)
      {
        v80 = v38;
      }

      width = [output width];
      v87[0] = vcvtd_n_f64_u64(width, 1uLL) + v87[0];
      height3 = [output height];
      v86 = vcvtd_n_f64_u64(height3, 1uLL) + v86;
      v41 = v87[0];
      v42 = v86;
      (*(*v38 + 96))(v38, 0, v41, v42, 0.0, 0.0);
      v43 = fabs(v37);
      (*(*v38 + 96))(v38, 1, 0.0, v43, 1024.0, 1023.0);
      v44 = v36;
      (*(*v38 + 96))(v38, 2, v44, 1.0, 1.0, 1.0);
      if (!versionAtCreation || v82 == 1)
      {
        v45 = HGObject::operator new(0x1A0uLL);
        HgcRadialMask::HgcRadialMask(v45);
        (*(*v45 + 96))(v45, 0, v44, 1.0, 1.0, 1.0);
        v46 = v87[0];
        v47 = v86;
        (*(*v45 + 96))(v45, 1, v46, v47, 0.0, 0.0);
        (*(*v45 + 96))(v45, 2, v43, 0.0, 0.0, 0.0);
        v48 = v88;
        v49 = *&v89;
        v50 = *&v90;
        (*(*v45 + 96))(v45, 3, v48, v49, 0.0, v50);
        v51 = *(&v90 + 1);
        v52 = v91;
        v53 = *(&v92 + 1);
        (*(*v45 + 96))(v45, 4, v51, v52, 0.0, v53);
        v54 = *(&v95 + 1);
        v55 = *&v96;
        v56 = v97;
        (*(*v45 + 96))(v45, 5, v54, v55, 0.0, v56);
        (*(*v45 + 120))(v45, 0, v38);
        if (v38 != v45)
        {
          (*(*v38 + 24))(v38);
          v80 = v45;
          (*(*v45 + 16))(v45);
          v38 = v45;
        }

        (*(*v45 + 24))(v45);
      }
    }

    else
    {
      v38 = HGObject::operator new(0x1A0uLL);
      HGradientLinear::HGradientLinear(v38);
      if (v38)
      {
        v80 = v38;
      }

      v61 = v87[0];
      v62 = v86;
      (*(*v38 + 96))(v38, 0, v61, v62, 0.0, 0.0);
      v63 = v85;
      v64 = v84;
      (*(*v38 + 96))(v38, 1, v63, v64, 0.0, 0.0);
      (*(*v38 + 96))(v38, 2, 1024.0, 1023.0, 0.0, 0.0);
    }
  }

  else
  {
    v38 = HGObject::operator new(0x210uLL);
    HGGradient::HGGradient(v38);
    if (v38)
    {
      v80 = v38;
      (*(*v38 + 16))(v38);
    }

    if (v83)
    {
      HGGradient::SetGradientMode(v38, 1);
      v59 = v82 == 1 || versionAtCreation == 0;
      v58.n128_u32[0] = 1.0;
      if (!v59)
      {
        v58.n128_f32[0] = 0.0;
      }

      v60 = v37;
      (*(*v38 + 96))(v38, 2, fabsf(v60), v58, 0.0, 0.0);
    }

    else
    {
      HGGradient::SetGradientMode(v38, 0);
      v65 = v85;
      v66 = v84;
      (*(*v38 + 96))(v38, 2, v65, v66, 0.0, 0.0);
    }

    v67 = v36;
    (*(*v38 + 96))(v38, 0, v67, 1.0, 1.0, 1.0);
    v68 = v87[0];
    v69 = v86;
    (*(*v38 + 96))(v38, 1, v68, v69, 0.0, 0.0);
    v70 = v88;
    v71 = *&v89;
    v72 = *&v90;
    (*(*v38 + 96))(v38, 3, v70, v71, 0.0, v72);
    v73 = *(&v90 + 1);
    v74 = v91;
    v75 = *(&v92 + 1);
    (*(*v38 + 96))(v38, 4, v73, v74, 0.0, v75);
    v76 = *(&v95 + 1);
    v77 = *&v96;
    v78 = v97;
    (*(*v38 + 96))(v38, 5, v76, v77, 0.0, v78);
    (*(*v38 + 24))(v38);
  }

  v79 = HGObject::operator new(0x1F0uLL);
  HGBitmapLoader::HGBitmapLoader(v79, v21);
  (*(*v38 + 120))(v38, 0, v79);
  [output setHeliumRef:&v80];
  if (v79)
  {
    (*(*v79 + 24))(v79);
  }

  if (v80)
  {
    (*(*v80 + 24))(v80);
  }

  if (v21)
  {
    (*(*v21 + 24))(v21);
  }

  return 1;
}

- (BOOL)frameSetup:(id *)setup hardware:(BOOL *)hardware software:(BOOL *)software
{
  *software = 0;
  *hardware = 1;
  v5 = *&setup->var2;
  v7[0] = *&setup->var0.var0;
  v7[1] = v5;
  v7[2] = *&setup->var4;
  [PAESharedDefaultBase overrideFrameSetupForRenderMode:"overrideFrameSetupForRenderMode:hardware:software:" hardware:v7 software:?];
  return 1;
}

@end