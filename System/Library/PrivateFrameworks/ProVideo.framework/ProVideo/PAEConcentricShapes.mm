@interface PAEConcentricShapes
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)parameterChanged:(unsigned int)changed;
- (PAEConcentricShapes)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAEConcentricShapes

- (PAEConcentricShapes)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEConcentricShapes;
  result = [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->_lastWidth = 0.0;
    result->_lastHeight = 0.0;
    result->_lastScale = 1.0;
  }

  return result;
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:3];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"SupportsHeliumRendering", v5, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v17.receiver = self;
  v17.super_class = PAEConcentricShapes;
  [(PAESharedDefaultBase *)&v17 addParameters];
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
    [v3 startParameterSubGroup:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" parmFlags:{@"ConcentricCircles::Geometry", 0, 0), 1, 0}];
    v9 = [v8 localizedStringForKey:@"ConcentricCircles::Shape" value:0 table:0];
    [v3 addPopupMenuWithName:v9 parmId:2 defaultValue:0 menuEntries:objc_msgSend(MEMORY[0x277CBEA60] parmFlags:{"arrayWithObjects:", objc_msgSend(v8, "localizedStringForKey:value:table:", @"ConcentricCircles::Circles", 0, 0), objc_msgSend(v8, "localizedStringForKey:value:table:", @"ConcentricCircles::Polygons", 0, 0), 0), 1}];
    LODWORD(v16) = 4;
    [v3 addIntSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ConcentricCircles::Number of Sides" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:3 delta:3 parmFlags:{100, 3, 0x100000064, v16}];
    [v3 addAngleSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ConcentricCircles::Rotation" parameterMin:0 parameterMax:0) parmFlags:{4, 4, 0.0, -3600.0, 3600.0}];
    [v3 addPointParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultX:@"ConcentricCircles::Center" defaultY:0 parmFlags:{0), 5, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ConcentricCircles::Inner Cutoff" parameterMin:0 parameterMax:0) sliderMin:17 sliderMax:0 delta:0.0 parmFlags:{0.0, 10000.0, 0.0, 2250.0, 10.0}];
    v10 = [v8 localizedStringForKey:@"ConcentricCircles::Cutoff" value:0 table:0];
    if (versionAtCreation)
    {
      v11 = 4096.0;
    }

    else
    {
      v11 = 2048.0;
    }

    if (versionAtCreation)
    {
      v12 = 4096.0;
    }

    else
    {
      v12 = 2250.0;
    }

    [v3 addFloatSliderWithName:v10 parmId:16 defaultValue:0 parameterMin:v11 parameterMax:0.0 sliderMin:10000.0 sliderMax:0.0 delta:v12 parmFlags:10.0];
    [v3 endParameterSubGroup];
    [v3 startParameterSubGroup:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" parmFlags:{@"ConcentricCircles::Coloring", 0, 0), 7, 0}];
    v13 = [v8 localizedStringForKey:@"ConcentricCircles::Color Type" value:0 table:0];
    [v3 addPopupMenuWithName:v13 parmId:8 defaultValue:0 menuEntries:objc_msgSend(MEMORY[0x277CBEA60] parmFlags:{"arrayWithObjects:", objc_msgSend(v8, "localizedStringForKey:value:table:", @"ConcentricCircles::2 Color", 0, 0), objc_msgSend(v8, "localizedStringForKey:value:table:", @"ConcentricCircles::CTGradient", 0, 0), 0), 1}];
    [v3 addColorParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultRed:@"ConcentricCircles::Color 1" defaultGreen:0 defaultBlue:0) defaultAlpha:9 parmFlags:{0, 0.0, 0.0, 0.0, 1.0}];
    [v3 addColorParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultRed:@"ConcentricCircles::Color 2" defaultGreen:0 defaultBlue:0) defaultAlpha:10 parmFlags:{0, 1.0, 1.0, 1.0, 1.0}];
    [v3 addGradientWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" parmFlags:{@"ConcentricCircles::Gradient", 0, 0), 11, 2}];
    v14 = [v8 localizedStringForKey:@"ConcentricCircles::Gradient Handling" value:0 table:0];
    [v3 addPopupMenuWithName:v14 parmId:12 defaultValue:0 menuEntries:objc_msgSend(MEMORY[0x277CBEA60] parmFlags:{"arrayWithObjects:", objc_msgSend(v8, "localizedStringForKey:value:table:", @"ConcentricCircles::GHClamp", 0, 0), objc_msgSend(v8, "localizedStringForKey:value:table:", @"ConcentricCircles::GHMirror", 0, 0), objc_msgSend(v8, "localizedStringForKey:value:table:", @"ConcentricCircles::GHRepeat", 0, 0), 0), 3}];
    [v3 endParameterSubGroup];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ConcentricCircles::Width" parameterMin:0 parameterMax:0) sliderMin:13 sliderMax:0 delta:50.0 parmFlags:{1.0, 2048.0, 1.0, 500.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ConcentricCircles::Contrast" parameterMin:0 parameterMax:0) sliderMin:14 sliderMax:0 delta:0.84 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ConcentricCircles::Phase" parameterMin:0 parameterMax:0) sliderMin:15 sliderMax:256 delta:0.0 parmFlags:{-10000.0, 10000.0, -1000.0, 1000.0, 10.0}];
  }

  return v6;
}

- (BOOL)parameterChanged:(unsigned int)changed
{
  v5 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448];
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
    v23 = *MEMORY[0x277CC08F0];
    v24 = *(MEMORY[0x277CC08F0] + 16);
    if (changed == 8)
    {
      v21 = 0;
      v22 = 0;
      v20 = 0;
      [v5 getParameterFlags:&v22 + 4 fromParm:9];
      [v5 getParameterFlags:&v22 fromParm:10];
      [v5 getParameterFlags:&v21 + 4 fromParm:11];
      [v5 getParameterFlags:&v21 fromParm:14];
      [v5 getParameterFlags:&v20 fromParm:12];
      v19 = 0;
      [v5 getIntValue:&v19 fromParm:8 atFxTime:&v23];
      if (v19)
      {
        v13 = HIDWORD(v22) | 2;
      }

      else
      {
        v13 = HIDWORD(v22) & 0xFFFFFFFD;
      }

      if (v19)
      {
        v14 = v22 | 2;
      }

      else
      {
        v14 = v22 & 0xFFFFFFFD;
      }

      v22 = __PAIR64__(v13, v14);
      if (v19)
      {
        v15 = v21 | 2;
      }

      else
      {
        v15 = v21 & 0xFFFFFFFD;
      }

      if (v19)
      {
        v16 = HIDWORD(v21) & 0xFFFFFFFD;
      }

      else
      {
        v16 = HIDWORD(v21) | 2;
      }

      if (v19)
      {
        v17 = v20 & 0xFFFFFFFD;
      }

      else
      {
        v17 = v20 | 2;
      }

      v21 = __PAIR64__(v16, v15);
      v20 = v17;
      [v9 setParameterFlags:? toParm:?];
      [v9 setParameterFlags:v22 toParm:10];
      [v9 setParameterFlags:v21 toParm:14];
      [v9 setParameterFlags:HIDWORD(v21) toParm:11];
      v10 = v20;
      v11 = v9;
      v12 = 12;
      goto LABEL_27;
    }

    if (changed == 2)
    {
      v22 = 0;
      [v5 getParameterFlags:&v22 + 4 fromParm:3];
      [v5 getParameterFlags:&v22 fromParm:4];
      HIDWORD(v21) = 0;
      [v5 getIntValue:&v21 + 4 fromParm:2 atFxTime:&v23];
      LODWORD(v22) = v22 & 0xFFFFFFFB | (4 * (HIDWORD(v21) == 0));
      HIDWORD(v22) = HIDWORD(v22) & 0xFFFFFFFB | (4 * (HIDWORD(v21) == 0));
      [v9 setParameterFlags:? toParm:?];
      v10 = v22;
      v11 = v9;
      v12 = 4;
LABEL_27:
      [v11 setParameterFlags:v10 toParm:v12];
    }
  }

  return v8;
}

- (BOOL)canThrowRenderOutput:(id)output withInfo:(id *)info
{
  self->_lastWidth = [output width];
  self->_lastHeight = [output height];
  self->_lastScale = info->var4;
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735BD98];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return 0;
  }

  v11 = v8;
  imageType = [output imageType];
  v13 = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
  v82[0] = 0;
  v81 = 0uLL;
  v79 = 0.0;
  v80 = 0.0;
  v77 = 0.0;
  v78 = 0.0;
  v75 = 0.0;
  v76 = 0.0;
  v73 = 0.0;
  v74 = 0.0;
  v71 = 0.0;
  v72 = 0.0;
  v70 = 0;
  v68 = 0.0;
  v69 = 0.0;
  v66 = 2048.0;
  v67 = 0;
  v65 = 0.0;
  [v7 getIntValue:v82 fromParm:2 atFxTime:info->var0.var1];
  [v7 getIntValue:&v70 fromParm:3 atFxTime:info->var0.var1];
  [v7 getFloatValue:&v69 fromParm:4 atFxTime:info->var0.var1];
  [v7 getXValue:&v81 YValue:&v81 + 8 fromParm:5 atFxTime:info->var0.var1];
  objc_msgSend_convertRelativeToPixelCoordinates_withImage_(self);
  v81 = v62;
  [v7 getRedValue:&v80 greenValue:&v79 blueValue:&v78 alphaValue:&v77 fromParm:9 atFxTime:info->var0.var1];
  v79 = v77 * v79;
  v80 = v77 * v80;
  v78 = v77 * v78;
  [v7 getRedValue:&v76 greenValue:&v75 blueValue:&v74 alphaValue:&v73 fromParm:10 atFxTime:info->var0.var1];
  v75 = v73 * v75;
  v76 = v73 * v76;
  v74 = v73 * v74;
  [v7 getFloatValue:&v72 fromParm:13 atFxTime:info->var0.var1];
  v14 = v72;
  [v7 getFloatValue:&v71 fromParm:14 atFxTime:info->var0.var1];
  v71 = 1.0 / (1.0 - fmin(log10(v71 * 10.0), 0.999999999));
  [v7 getIntValue:&v67 + 4 fromParm:8 atFxTime:info->var0.var1];
  [v7 getFloatValue:&v68 fromParm:15 atFxTime:info->var0.var1];
  v15 = v68;
  v16 = -v68;
  v68 = -v68;
  v17 = HIDWORD(v67);
  if (v82[0] == 1)
  {
    v18 = v72;
    if (!HIDWORD(v67))
    {
      v24 = 0;
      v68 = fmod(v16, v72) / v18;
      goto LABEL_18;
    }

    v19 = fmod(v16, v72) / v18;
    v20 = floor(fabs(v15) / v18);
    if (v15 > 0.0)
    {
      v20 = -v20;
    }

    v68 = v19 + v20;
  }

  if (v17 == 1)
  {
    v21 = HGRectMake4i(0, 0, 256, 1);
    v23 = v22;
    v24 = HGObject::operator new(0x80uLL);
    HGBitmap::HGBitmap(v24, v21, v23, 29);
    v25 = *(v24 + 10);
    [v11 getGradientSamples:v25 numSamples:256 depth:4 fromParm:11 atFxTime:info->var0.var1];
    v26 = (v25 + 8);
    v27 = 256;
    do
    {
      v28 = *(v26 - 2);
      v29 = v28 * *(v26 - 1);
      v30 = v28 * *v26;
      v31 = v28 * v26[1];
      *(v26 - 1) = v29;
      *v26 = v30;
      v26[1] = v31;
      v26 += 4;
      --v27;
    }

    while (v27);
  }

  else
  {
    v24 = 0;
  }

LABEL_18:
  [v7 getIntValue:&v67 fromParm:12 atFxTime:info->var0.var1];
  [v7 getFloatValue:&v66 fromParm:16 atFxTime:info->var0.var1];
  [v7 getFloatValue:&v65 fromParm:17 atFxTime:info->var0.var1];
  if (v13)
  {
    v32 = imageType == 3;
  }

  else
  {
    v32 = 0;
  }

  v10 = v32;
  if (v32)
  {
    v64 = 0;
    if (v82[0])
    {
      if (HIDWORD(v67))
      {
        v33 = HGObject::operator new(0x1A0uLL);
        HgcConcentricPolygonsGradient::HgcConcentricPolygonsGradient(v33);
      }

      v35 = HGObject::operator new(0x1A0uLL);
      HgcConcentricPolygons::HgcConcentricPolygons(v35);
      if (v35)
      {
        v64 = v35;
      }

      v61 = 0x800000009;
    }

    else
    {
      if (HIDWORD(v67))
      {
        v34 = HGObject::operator new(0x1A0uLL);
        HgcConcentricCirclesGradient::HgcConcentricCirclesGradient(v34);
      }

      v35 = HGObject::operator new(0x1A0uLL);
      HgcConcentricCircles::HgcConcentricCircles(v35);
      if (v35)
      {
        v64 = v35;
      }

      v61 = 0x600000007;
    }

    if (HIDWORD(v67) == 1)
    {
      v36 = HGObject::operator new(0x1F0uLL);
      HGBitmapLoader::HGBitmapLoader(v36, v24);
      (*(*v35 + 120))(v35, 0, v36);
      if (v36)
      {
        (*(*v36 + 24))(v36);
      }
    }

    objc_msgSend_getInversePixelTransformForImage_(self);
    v37 = *&v81;
    v38 = *(&v81 + 1);
    (*(*v35 + 96))(v35, 0, v37, v38, 0.0, 0.0);
    v39 = v80;
    v40 = v79;
    v41 = v78;
    v42 = v77;
    (*(*v35 + 96))(v35, 1, v39, v40, v41, v42);
    v43 = v76;
    v44 = v75;
    v45 = v74;
    v46 = v73;
    (*(*v35 + 96))(v35, 2, v43, v44, v45, v46);
    v47 = v72;
    v48 = v68;
    (*(*v35 + 96))(v35, 3, v47, v48, 0.0, 0.0);
    v49 = v71;
    (*(*v35 + 96))(v35, 4, v49, 0.0, 0.0, 0.0);
    v50 = *&v62;
    v51 = v63;
    (*(*v35 + 96))(v35, 5, v50, fabsf(v51), 1.0, 0.0);
    v52 = 6.28318531 / v70;
    v53 = v70 / 6.28318531;
    (*(*v35 + 96))(v35, 6, v52, v53, 0.0, 0.0);
    v54 = __sincos_stret(v69);
    cosval = v54.__cosval;
    sinval = v54.__sinval;
    (*(*v35 + 96))(v35, 7, cosval, sinval, -sinval);
    v57 = 1.0 / v14;
    (*(*v35 + 96))(v35, 8, v57, 0.0, 0.0, 0.0);
    (*(*v35 + 96))(v35, 9, (v67 - 1), 0.0, 0.0, 0.0);
    v58 = v66;
    (*(*v35 + 96))(v35, HIDWORD(v61), v58, 0.0, 0.0, 0.0);
    v59 = v65;
    (*(*v35 + 96))(v35, v61, v59, 0.0, 0.0, 0.0);
    [output setHeliumRef:&v64];
    if (v64)
    {
      (*(*v64 + 24))(v64);
    }
  }

  if (v24)
  {
    (*(*v24 + 24))(v24);
  }

  return v10;
}

- (BOOL)frameSetup:(id *)setup hardware:(BOOL *)hardware software:(BOOL *)software
{
  *software = 0;
  *hardware = 0;
  v5 = *&setup->var2;
  v7[0] = *&setup->var0.var0;
  v7[1] = v5;
  v7[2] = *&setup->var4;
  [PAESharedDefaultBase overrideFrameSetupForRenderMode:"overrideFrameSetupForRenderMode:hardware:software:" hardware:v7 software:?];
  return 1;
}

@end