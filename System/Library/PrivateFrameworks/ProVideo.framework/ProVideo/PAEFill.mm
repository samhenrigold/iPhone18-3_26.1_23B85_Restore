@interface PAEFill
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)parameterChanged:(unsigned int)changed;
- (PAEFill)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAEFill

- (PAEFill)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEFill;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  if ([PAEFill properties]::once != -1)
  {
    [PAEFill properties];
  }

  return [PAEFill properties]::sPropertiesDict;
}

void *__21__PAEFill_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:67584];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:591872];
  result = [v0 initWithObjectsAndKeys:{&unk_28732D460, @"PixelTransformSupport", v1, @"PositionIndependent", v2, @"MayRemapTime", v3, @"SupportsLargeRenderScale", v4, @"SupportsHeliumRendering", v5, @"SupportsInternalMixing", v6, @"SDRWorkingSpace", v7, @"HDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
  [PAEFill properties]::sPropertiesDict = result;
  return result;
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEFill;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Fill::Type" menuEntries:0 parmFlags:{0), 1, 0, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", objc_msgSend(v4, "localizedStringForKey:value:table:", @"Fill::Color", 0, 0), objc_msgSend(v4, "localizedStringForKey:value:table:", @"Fill::Gradient", 0, 0), 0), 1}];
    [v3 addColorParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultRed:@"Fill::Color" defaultGreen:0 defaultBlue:0) parmFlags:{2, 0, 0.5, 0.5, 0.5}];
    [v3 addGradientPositionedWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" parmFlags:{@"Fill::Gradient", 0, 0), 3, 2}];
    [v3 setGradientHiddenWithOSC:1 toParam:3];
  }

  return v3 != 0;
}

- (BOOL)parameterChanged:(unsigned int)changed
{
  if (changed != 1)
  {
    return 1;
  }

  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v5 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  v7 = v5;
  v18 = *MEMORY[0x277CC0898];
  v19 = *(MEMORY[0x277CC0898] + 16);
  v17 = 0;
  v8 = 1;
  [v4 getIntValue:&v17 fromParm:1 atFxTime:&v18];
  v15 = 0;
  v16 = 0;
  [v4 getParameterFlags:&v16 fromParm:2];
  v9 = &v15;
  [v4 getParameterFlags:&v15 fromParm:3];
  v10 = v17 == 0;
  if (v17)
  {
    v11 = &v15;
  }

  else
  {
    v11 = &v16;
  }

  if (v17)
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  if (v17)
  {
    v9 = &v16;
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  [v7 setParameterFlags:*v11 & 0xFFFFFFFD toParm:v12];
  [v7 setParameterFlags:*v9 | 2u toParm:v13];
  [v7 setGradientHiddenWithOSC:v10 toParam:3];
  return v8;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E548];
  v11 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735AB90];
  v12 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_287359A98];
  if (v9)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || v11 == 0 || v12 == 0)
  {
    return 0;
  }

  v78 = 0;
  [v9 getIntValue:&v78 fromParm:1 atFxTime:info->var0.var1];
  v16 = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
  [v9 mixAmountAtTime:info->var0.var1];
  if (!v16)
  {
    return 0;
  }

  v18 = v17;
  if ([input imageType] != 3)
  {
    return 0;
  }

  if (input)
  {
    objc_msgSend_heliumRef(input);
  }

  else
  {
    v77 = 0;
  }

  if (v78)
  {
    v74 = 1.0;
    v71 = 0x3FF0000000000000;
    v68 = 1.0;
    v65 = 1.0;
    v66 = 0u;
    v67 = 0u;
    v69 = 0u;
    v70 = 0u;
    v72 = 0u;
    v73 = 0u;
    objc_msgSend_inversePixelTransform(v11);
    for (i = 0; i != 16; i += 4)
    {
      v21 = (&v65 + i * 8);
      v22 = *&v64[i + 2];
      *v21 = *&v64[i];
      v21[1] = v22;
    }

    v23 = HGRectMake4i(0, 0, 1024, 1);
    v25 = v24;
    v26 = HGObject::operator new(0x80uLL);
    HGBitmap::HGBitmap(v26, v23, v25, 24);
    v63 = 0.0;
    v64[0] = 0.0;
    v75 = 0.0;
    v76 = 0.0;
    v62 = 0;
    [v10 getGradientSamples:*(v26 + 10) numSamples:1024 depth:1 fromParm:3 atFxTime:info->var0.var1];
    [v10 getGradientStartEnd:v64 startY:&v76 endX:&v75 endY:&v63 type:&v62 fromParm:3 atFxTime:info->var0.var1];
    [output pixelAspect];
    v28 = v27;
    v29 = v75;
    v30 = v76;
    v31 = v63;
    v32 = v64[0];
    v33 = HGObject::operator new(0x210uLL);
    HGGradient::HGGradient(v33);
    if (v62)
    {
      HGGradient::SetGradientMode(v33, 1);
      v34 = sqrt(v28 * (v29 - v32) * (v28 * (v29 - v32)) + (v31 - v30) * (v31 - v30));
      (*(*v33 + 96))(v33, 2, fabsf(v34), 0.0, 0.0, 0.0);
    }

    else
    {
      HGGradient::SetGradientMode(v33, 0);
      v40 = v75;
      v41 = v63;
      (*(*v33 + 96))(v33, 2, v40, v41, 0.0, 0.0);
    }

    v42 = v28;
    (*(*v33 + 96))(v33, 0, v42, 1.0, 1.0, 1.0);
    v43 = v64[0];
    v44 = v76;
    (*(*v33 + 96))(v33, 1, v43, v44, 0.0, 0.0);
    v45 = v65;
    v46 = *&v66;
    v47 = *&v67;
    (*(*v33 + 96))(v33, 3, v45, v46, 0.0, v47);
    v48 = *(&v67 + 1);
    v49 = v68;
    v50 = *(&v69 + 1);
    (*(*v33 + 96))(v33, 4, v48, v49, 0.0, v50);
    v51 = *(&v72 + 1);
    v52 = *&v73;
    v53 = v74;
    (*(*v33 + 96))(v33, 5, v51, v52, 0.0, v53);
    v54 = 0;
    v55 = *(v26 + 10);
    for (j = (v55 + 1); ; j += 4)
    {
      v57 = (v55 + 4 * v54);
      v58 = *v57;
      v59 = 3;
      v60 = j;
      do
      {
        *(v60 - 1) = *v60;
        ++v60;
        --v59;
      }

      while (v59);
      v57[3] = v58;
      if (++v54 == 1024)
      {
        v61 = HGObject::operator new(0x1F0uLL);
        HGBitmapLoader::HGBitmapLoader(v61, v26);
        (*(*v33 + 120))(v33, 0, v61);
        (*(*v33 + 16))(v33);
        FxApplyGradientBlendRequest();
      }
    }
  }

  v65 = 0.0;
  v64[0] = 0.0;
  v76 = 0.0;
  [v9 getRedValue:&v65 greenValue:v64 blueValue:&v76 fromParm:2 atFxTime:info->var0.var1];
  *&v35 = COERCE_DOUBLE(HGObject::operator new(0x1A0uLL));
  HgcFillColor::HgcFillColor(v35);
  (*(*v35 + 120))(v35, 0, v77);
  v36 = v65;
  v37 = v64[0];
  v38 = v76;
  (*(*v35 + 96))(v35, 0, v36, v37, v38, 0.0);
  v39 = v18;
  (*(*v35 + 96))(v35, 1, v39, 0.0, 0.0, 0.0);
  v75 = *&v35;
  (*(*v35 + 16))(v35);
  [output setHeliumRef:&v75];
  if (v75 != 0.0)
  {
    (*(**&v75 + 24))(COERCE_DOUBLE(*&v75));
  }

  (*(*v35 + 24))(v35);
  if (v77)
  {
    (*(*v77 + 24))(v77);
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