@interface PAELumaKey
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAELumaKey)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAELumaKey

- (PAELumaKey)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAELumaKey;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{&unk_28732D4A8, @"PixelTransformSupport", v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAELumaKey;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"LumaKey::Key Mode" menuEntries:0 parmFlags:{0), 1, 0, objc_msgSend(objc_msgSend(v4, "localizedStringForKey:value:table:", @"LumaKey::ModeEntries", 0, 0), "componentsSeparatedByString:", @"|", 1}];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"LumaKey::Luminance Type" menuEntries:0 parmFlags:{0), 2, 0, objc_msgSend(objc_msgSend(v4, "localizedStringForKey:value:table:", @"LumaKey::TypeEntries", 0, 0), "componentsSeparatedByString:", @"|", 1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"LumaKey::Threshold" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:0.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"LumaKey::Tolerance" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:1.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = v9;
  if (v9)
  {
    v32 = 0.0;
    v33 = 0;
    v31 = 0.0;
    [v9 getIntValue:&v33 fromParm:1 atFxTime:info->var0.var1];
    [v10 getIntValue:&v33 + 4 fromParm:2 atFxTime:info->var0.var1];
    [v10 getFloatValue:&v31 fromParm:3 atFxTime:info->var0.var1];
    [v10 getFloatValue:&v32 fromParm:4 atFxTime:info->var0.var1];
    if (HIDWORD(v33) >= 6)
    {
      PCPrint("File %s, line %d should not have been reached:\n\t", "/Library/Caches/com.apple.xbs/Sources/FiltersiOS/Filters/PAELumaKey.mm", 192);
      pcAbortImpl();
    }

    v11 = flt_260343FD4[HIDWORD(v33)];
    v12 = flt_260343FEC[HIDWORD(v33)];
    v13 = flt_260344004[HIDWORD(v33)];
    v14 = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
    if (v14 && [input imageType] == 3)
    {
      v15 = HGObject::operator new(0x1A0uLL);
      HgcLumaKey::HgcLumaKey(v15);
      v30 = v15;
      v17 = v31;
      v16 = v32;
      if (v33 >= 2)
      {
        v18 = 0.25;
      }

      else
      {
        v18 = 0.5;
      }

      (*(*v15 + 96))(v15, 0, v11, v12, v13, 0.0);
      v22.n128_u32[0] = 1.0;
      if (v33 == 1)
      {
        v19.n128_f32[0] = 1.0;
      }

      else
      {
        v19.n128_f32[0] = 0.0;
      }

      if (v33)
      {
        v20.n128_f32[0] = 0.0;
      }

      else
      {
        v20.n128_f32[0] = 1.0;
      }

      if (v33 == 2)
      {
        v21.n128_f32[0] = 1.0;
      }

      else
      {
        v21.n128_f32[0] = 0.0;
      }

      if (v33 != 3)
      {
        v22.n128_f32[0] = 0.0;
      }

      (*(*v15 + 96))(v15, 1, v19, v20, v21, v22);
      v23 = v17 * v18 + v18;
      v24 = v16 * (v18 - vabdd_f64(v18, v23));
      v25 = v23 - v24;
      v26 = v23 + v24;
      *&v23 = v25;
      *&v26 = v26;
      (*(*v15 + 96))(v15, 2, *&v23, *&v26, 0.0, 0.0);
      if (input)
      {
        objc_msgSend_heliumRef(input);
        v27 = v29;
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      (*(*v15 + 120))(v15, 0, v27);
      if (v29)
      {
        (*(*v29 + 24))(v29);
      }

      [output setHeliumRef:&v30];
      if (v30)
      {
        (*(*v30 + 24))(v30);
      }
    }
  }

  return v10 != 0;
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