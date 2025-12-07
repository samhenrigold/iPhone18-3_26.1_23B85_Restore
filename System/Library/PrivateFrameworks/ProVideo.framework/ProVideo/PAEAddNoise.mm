@interface PAEAddNoise
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)parameterChanged:(unsigned int)changed;
- (HGRef<HGNode>)noiseNodeWithWidth:(int)width height:(int)height noiseType:(int)type isMono:(BOOL)mono frameNum:(double)num autoAnimate:(BOOL)animate randomSeed:(int)seed inputPixelTransform:(PCMatrix44Tmpl<double> *)self0 outputPixelTransform:(PCMatrix44Tmpl<double> *)self1 outputInvPixelTransform:(PCMatrix44Tmpl<double> *)self2 is360:(BOOL)self3;
- (HGRef<HGNode>)translateNode:(HGRef<HGNode>)node byAmount:(PCVector2<double>)amount andCropTo:(HGRect)to;
- (PAEAddNoise)initWithAPIManager:(id)manager;
- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error;
- (id)properties;
@end

@implementation PAEAddNoise

- (PAEAddNoise)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEAddNoise;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (BOOL)addParameters
{
  v7.receiver = self;
  v7.super_class = PAEAddNoise;
  [(PAESharedDefaultBase *)&v7 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"AddNoise::Amount" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:0.33 parmFlags:{0.0, 4.0, 0.0, 1.0, 0.1}];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"AddNoise::Type" menuEntries:0 parmFlags:{0), 2, 1, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::TVNoise", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::WhiteNoise", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::GaussianNoise", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::BlueNoise", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::PinkNoise", 0, 0), 0), 1}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"AddNoise::Monochrome" parmFlags:{0, 0), 3, 0, 1}];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"AddNoise::BlendMode" menuEntries:0 parmFlags:{0), 4, 0, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::NormalMode", 0, 0), @"-", objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::SubtractMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::MultiplyMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::DarkenMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::ColorBurnMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::LinearBurnMode", 0, 0), @"-", objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::AddMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::LightenMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::ScreenMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::ColorDodgeMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::LinearDodgeMode", 0, 0), @"-", objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::OverlayMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::SoftLightMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::HardLightMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::VividLightMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::LinearLightMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::PinLightMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::HardMixMode", 0, 0), @"-", objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::DifferenceMode", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"AddNoise::ExclusionMode", 0, 0), 0), 1}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"AddNoise::Autoanimate" parmFlags:{0, 0), 5, 1, 1}];
    LODWORD(v6) = 4;
    [v3 addIntSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"AddNoise::RandomSeed" parameterMin:0 parameterMax:0) sliderMin:6 sliderMax:25 delta:2294967296 parmFlags:{2000000000, 1, 0x1000003E8, v6}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"AddNoise::RandomSeed" parmFlags:{0, 0), 7, 0, 2}];
  }

  return v3 != 0;
}

- (BOOL)parameterChanged:(unsigned int)changed
{
  if (changed != 5)
  {
    return 1;
  }

  v16 = v3;
  v17 = v4;
  v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  v10 = v7;
  v14 = *MEMORY[0x277CC0898];
  v15 = *(MEMORY[0x277CC0898] + 16);
  v13 = 0;
  if ([v6 getBoolValue:&v13 fromParm:5 atFxTime:&v14])
  {
    v12 = 0;
    [v6 getParameterFlags:&v12 fromParm:6];
    if (v13)
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    [v10 setParameterFlags:v12 & 0xFFFFFFFB | v11 toParm:6];
  }

  return 1;
}

- (HGRef<HGNode>)translateNode:(HGRef<HGNode>)node byAmount:(PCVector2<double>)amount andCropTo:(HGRect)to
{
  v7 = v5;
  v8 = *&to.var2;
  v9 = *&to.var0;
  v11 = v6;
  HGTransform::HGTransform(v15);
  HGTransform::LoadIdentity(v15);
  HGTransform::Translate(v15, *v9, v9[1], 0.0);
  v12 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v12);
  (*(*v12 + 120))(v12, 0, *node.var0);
  (*(*v12 + 576))(v12, v15);
  v13 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v13);
  (*(*v13 + 120))(v13, 0, v12);
  (*(*v13 + 96))(v13, 0, v8, SHIDWORD(v8), v7, SHIDWORD(v7));
  *v11 = v13;
  (*(*v12 + 24))(v12);
  HGTransform::~HGTransform(v15);
  return v14;
}

- (HGRef<HGNode>)noiseNodeWithWidth:(int)width height:(int)height noiseType:(int)type isMono:(BOOL)mono frameNum:(double)num autoAnimate:(BOOL)animate randomSeed:(int)seed inputPixelTransform:(PCMatrix44Tmpl<double> *)self0 outputPixelTransform:(PCMatrix44Tmpl<double> *)self1 outputInvPixelTransform:(PCMatrix44Tmpl<double> *)self2 is360:(BOOL)self3
{
  *v13 = 0;
  if (is360)
  {
    PAEGenerateNoise(3 * height / 2, height, type, mono, animate, seed, 1.0, num);
  }

  PAEGenerateNoise(width, height, type, mono, animate, seed, 1.0, num);
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = v9;
    if ([input imageType] == 3)
    {
      v40 = 0.33;
      [v10 getFloatValue:&v40 fromParm:1 atFxTime:info->var0.var1];
      if (v40 == 0.0)
      {
        if (input)
        {
          objc_msgSend_heliumRef(input, v40);
        }

        else
        {
          *&v34[0] = 0;
        }

        [output setHeliumRef:v34];
        if (*&v34[0])
        {
          (*(**&v34[0] + 24))(*&v34[0]);
        }
      }

      else
      {
        v11 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8, v40];
        if (v11)
        {
          v12 = [v11 versionAtCreation] == 0;
        }

        else
        {
          v12 = 0;
        }

        v39 = 1;
        [v10 getIntValue:&v39 fromParm:2 atFxTime:info->var0.var1];
        v38 = 0;
        [v10 getBoolValue:&v38 fromParm:3 atFxTime:info->var0.var1];
        v37 = 1;
        [v10 getBoolValue:&v37 fromParm:5 atFxTime:info->var0.var1];
        v36 = 25;
        [v10 getIntValue:&v36 fromParm:6 atFxTime:info->var0.var1];
        v35 = 0;
        [v10 getIntValue:&v35 fromParm:4 atFxTime:info->var0.var1];
        objc_msgSend_getInversePixelTransformForImage_(self);
        objc_msgSend_getInversePixelTransformForImage_(self);
        objc_msgSend_getPixelTransformForImage_(self);
        [(PAESharedDefaultBase *)self frameFromFxTime:info->var0.var1 forPlugIn:self];
        v14 = v13;
        [input width];
        [input height];
        v31[5] = v34[5];
        v31[6] = v34[6];
        v31[7] = v34[7];
        v31[1] = v34[1];
        v31[2] = v34[2];
        v31[3] = v34[3];
        v31[4] = v34[4];
        v30[5] = v33[5];
        v30[6] = v33[6];
        v30[7] = v33[7];
        v31[0] = v34[0];
        v30[1] = v33[1];
        v30[2] = v33[2];
        v30[3] = v33[3];
        v30[4] = v33[4];
        v29[2] = v33[10];
        v29[3] = v33[11];
        v29[0] = v33[8];
        v29[1] = v33[9];
        v29[7] = v33[15];
        v30[0] = v33[0];
        v29[5] = v33[13];
        v29[6] = v33[14];
        v29[4] = v33[12];
        objc_msgSend_noiseNodeWithWidth_height_noiseType_isMono_frameNum_autoAnimate_randomSeed_inputPixelTransform_outputPixelTransform_outputInvPixelTransform_is360_(self, v14, v31, v30, v29, 0);
        if (input)
        {
          objc_msgSend_heliumRef(input);
        }

        else
        {
          v28 = 0;
        }

        [input width];
        [input height];
        v15 = HGObject::operator new(0x220uLL);
        HGHWBlendFlipped::HGHWBlendFlipped(v15);
        v27 = v15;
        [(PAESharedDefaultBase *)self getBlendingGamma];
        (*(*v15 + 96))(v15, 5);
        if (input)
        {
          objc_msgSend_heliumRef(input);
        }

        else
        {
          v26 = 0;
        }

        if (v35)
        {
          v16 = HGObject::operator new(0x1A0uLL);
          HgcAddNoise::HgcAddNoise(v16);
          if (v16)
          {
            (*(*v16 + 16))(v16);
          }

          (*(*v16 + 120))(v16, 0, v32);
          (*(*v16 + 120))(v16, 1, v28);
          if (v12)
          {
            v19 = v40;
            (*(*v16 + 96))(v16, 0, v19, v19, v19, 1.0);
            v20 = (*v16 + 96);
            v21.n128_u64[0] = 0;
            if (v35)
            {
              v21.n128_f32[0] = 1.0;
            }
          }

          else
          {
            (*(*v16 + 96))(v16, 0, 1.0, 1.0, 1.0, 1.0);
            v20 = (*v16 + 96);
            v21.n128_u64[0] = 0;
            if ((v35 - 2) < 5)
            {
              v21.n128_f32[0] = 1.0;
            }
          }

          (*v20)(v16, 1, v21, v21.n128_f32[0], v21.n128_f32[0], v21.n128_f32[0]);
          (*(*v27 + 96))(v27, 0, kBlendConversions[v35], 0.0, 0.0, 0.0);
          v22.n128_u32[1] = HIDWORD(v40);
          v22.n128_f32[0] = v40;
          if (v12)
          {
            v22.n128_f32[0] = 1.0;
          }

          (*(*v27 + 96))(v22, 0.0, 0.0, 0.0);
          v23 = v40;
          (*(*v27 + 96))(v27, 1, v23, 0.0, 0.0, 0.0);
          (*(*v27 + 96))(v27, 2, 0.0, 0.0, 0.0, 0.0);
          if (!info->var5)
          {
            v24 = HGObject::operator new(0x1C0uLL);
            HGColorClamp::HGColorClamp(v24);
          }

          (*(*v27 + 120))(v27, 0, v26);
          (*(*v27 + 120))(v27, 1, v16);
          (*(*v16 + 24))(v16);
          (*(*v16 + 24))(v16);
        }

        else
        {
          v17 = HGObject::operator new(0x1A0uLL);
          HgcAddNoiseNormal::HgcAddNoiseNormal(v17);
          if (v17)
          {
            (*(*v17 + 16))(v17);
          }

          (*(*v17 + 120))(v17, 0, v32);
          (*(*v17 + 120))(v17, 1, v28);
          v18 = v40;
          (*(*v17 + 96))(v17, 0, v18, v18, v18, 1.0);
          (*(*v27 + 96))(v27, 0, kBlendConversions[v35], 0.0, 0.0, 0.0);
          (*(*v27 + 96))(v27, 0, 41.0, 0.0, 0.0, 0.0);
          (*(*v27 + 96))(v27, 1, 1.0, 0.0, 0.0, 0.0);
          (*(*v27 + 120))(v27, 0, v17);
          (*(*v17 + 24))(v17);
          (*(*v17 + 24))(v17);
        }

        [(PAESharedDefaultBase *)self crop:&v27 fromImage:input toImage:output];
        [output setHeliumRef:&v27];
        if (v26)
        {
          (*(*v26 + 24))(v26);
        }

        if (v27)
        {
          (*(*v27 + 24))(v27);
        }

        if (v28)
        {
          (*(*v28 + 24))(v28);
        }

        if (v32)
        {
          (*(*v32 + 24))(v32);
        }
      }

      LOBYTE(v9) = 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
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

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error
{
  v10 = 0.0;
  if ([-[PAEFilterDefaultBase getParamAPIWithError:](self getParamAPIWithError:{error), "getFloatValue:fromParm:atFxTime:", &v10, 1, time.var1}])
  {
    if (v10 == 0.0)
    {
      v6 = 6;
    }

    else
    {
      v6 = 1;
    }

    return [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v6, v10), @"PixelTransformSupport", 0}];
  }

  else if (error)
  {
    v8 = objc_opt_class();
    v9 = [(PAEFilterDefaultBase *)self getParamErrorFor:NSStringFromClass(v8)];
    result = 0;
    *error = v9;
  }

  else
  {
    return 0;
  }

  return result;
}

@end