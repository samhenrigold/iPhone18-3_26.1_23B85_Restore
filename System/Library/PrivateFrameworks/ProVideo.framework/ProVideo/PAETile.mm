@interface PAETile
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (HGRef<HGNode>)transformAndTile:(HGRef<HGNode>)tile withXValue:(double)value YValue:(double)yValue skew:(double)skew scale:(double)scale stretch:(double)stretch rotation:(double)rotation resolution:(PCVector2<double>)self0 inputImage:(id)self1;
- (PAETile)initWithAPIManager:(id)manager;
- (id)properties;
- (void)_compute_2x2_matrix:(float *)_compute_2x2_matrix withScale:(float)scale angle:(float)angle skew:(float)skew stretch:(float)stretch;
- (void)retrieveXValue:(double *)value YValue:(double *)yValue skew:(double *)skew scale:(double *)scale stretch:(double *)stretch rotation:(double *)rotation forOutputImage:(id)image withRenderInfo:(id *)self0;
@end

@implementation PAETile

- (PAETile)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAETile;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v12.receiver = self;
  v12.super_class = PAETile;
  [(PAESharedDefaultBase *)&v12 addParameters];
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
    [v3 addPointParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultX:@"Tile::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Tile::Skew" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:0.0 parmFlags:{-3.0, 3.0, -3.0, 3.0, 1.0}];
    v9 = [v8 localizedStringForKey:@"Tile::Scale" value:0 table:0];
    if (versionAtCreation >= 2)
    {
      v10 = 200.0;
    }

    else
    {
      v10 = 20.0;
    }

    [v3 addFloatSliderWithName:v9 parmId:3 defaultValue:0 parameterMin:3.0 parameterMax:0.0 sliderMin:v10 sliderMax:0.0 delta:20.0 parmFlags:1.0];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Tile::Stretch" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:1.0 parmFlags:{0.1, 10.0, 0.1, 10.0, 1.0}];
    [v3 addAngleSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Tile::Angle" parameterMin:0 parameterMax:0) parmFlags:{5, 0, 0.0, -360.0, 360.0}];
  }

  return v6;
}

- (void)_compute_2x2_matrix:(float *)_compute_2x2_matrix withScale:(float)scale angle:(float)angle skew:(float)skew stretch:(float)stretch
{
  v10 = __sincosf_stret(angle);
  v11.f32[0] = (v10.__cosval - (v10.__sinval * skew)) * stretch;
  v11.f32[1] = (v10.__sinval + (v10.__cosval * skew)) * stretch;
  v11.f32[2] = -v10.__sinval;
  v11.i32[3] = LODWORD(v10.__cosval);
  *_compute_2x2_matrix = vmulq_n_f32(v11, scale);
}

- (void)retrieveXValue:(double *)value YValue:(double *)yValue skew:(double *)skew scale:(double *)scale stretch:(double *)stretch rotation:(double *)rotation forOutputImage:(id)image withRenderInfo:(id *)self0
{
  v16 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
  origin = [image origin];
  [v16 getXValue:value YValue:yValue fromParm:1 atFxTime:info->var0.var1];
  [v16 getFloatValue:skew fromParm:2 atFxTime:info->var0.var1];
  if (origin == 2)
  {
    [v16 getFloatValue:scale fromParm:3 atFxTime:info->var0.var1];
    [v16 getFloatValue:stretch fromParm:4 atFxTime:info->var0.var1];
    var1 = info->var0.var1;

    [v16 getFloatValue:rotation fromParm:5 atFxTime:var1];
  }

  else
  {
    *skew = -*skew;
    [v16 getFloatValue:scale fromParm:3 atFxTime:info->var0.var1];
    [v16 getFloatValue:stretch fromParm:4 atFxTime:info->var0.var1];
    [v16 getFloatValue:rotation fromParm:5 atFxTime:info->var0.var1];
    *rotation = -*rotation;
  }
}

- (HGRef<HGNode>)transformAndTile:(HGRef<HGNode>)tile withXValue:(double)value YValue:(double)yValue skew:(double)skew scale:(double)scale stretch:(double)stretch rotation:(double)rotation resolution:(PCVector2<double>)self0 inputImage:(id)self1
{
  v13 = v11;
  v23 = v12;
  v83 = *MEMORY[0x277D85DE8];
  v24 = log2(scale);
  v25 = exp2(floor(v24));
  v26 = scale / v25;
  *&v26 = scale / v25;
  *&v27 = rotation;
  *&v28 = skew;
  *&v29 = stretch;
  [(PAETile *)self _compute_2x2_matrix:v82 withScale:v26 angle:v27 skew:v28 stretch:v29];
  v75[0] = v82[0];
  v75[1] = v82[2];
  v75[3] = 0.0;
  v75[2] = 0.0;
  v75[4] = v82[1];
  v75[5] = v82[3];
  v76 = 0u;
  v77 = 0u;
  v79 = 0u;
  v80 = 0u;
  v78 = 0x3FF0000000000000;
  v81 = 0x3FF0000000000000;
  v30 = *tile.var0;
  v74 = v30;
  if (v30)
  {
    (*(*v30 + 16))(v30);
  }

  if (!self)
  {
    v73[0] = 0;
    v32 = *tile.var0;
    if (!*tile.var0)
    {
      goto LABEL_10;
    }

LABEL_8:
    (*(*v32 + 24))(v32);
    v31 = v73[0];
LABEL_9:
    *tile.var0 = v31;
    v73[0] = 0;
    goto LABEL_10;
  }

  objc_msgSend_smear_fromImage_toImage_(self);
  v31 = v73[0];
  v32 = *tile.var0;
  if (*tile.var0 != v73[0])
  {
    if (!v32)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v73[0])
  {
    (*(*v73[0] + 24))();
  }

LABEL_10:
  if (v74)
  {
    (*(*v74 + 24))(v74);
  }

  HGTransform::HGTransform(v73);
  HGTransform::Scale(v73, 1.0 / v25, 1.0 / v25, 1.0);
  v33 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v33);
  (*(*v33 + 576))(v33, v73);
  (*(*v33 + 120))(v33, 0, *tile.var0);
  (*(*v33 + 592))(v33, 0, 0.0);
  v34 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v34);
  (*(*v34 + 120))(v34, 0, v33);
  width = [v13 width];
  height = [v13 height];
  v37 = vcvtd_n_f64_u64(width, 1uLL) / v25;
  v38 = vcvtd_n_f64_u64(height, 1uLL) / v25;
  v39 = HGRectMake4i(-floor(v37), -floor(v38), vcvtmd_s64_f64(v37), vcvtmd_s64_f64(v38));
  (*(*v34 + 96))(v34, 0, v39, SHIDWORD(v39), v40, v41);
  (*(*v34 + 136))(v34, 0xFFFFFFFFLL, 2);
  HGTransform::HGTransform(v72);
  HGTransform::Translate(v72, value, yValue, 0.0);
  HGTransform::HGTransform(v71);
  HGTransform::LoadMatrixd(v71, v75);
  HGTransform::Invert(v71[0].f64);
  HGTransform::Multiply(v71, v72);
  v42 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v42);
  (*(*v42 + 120))(v42, 0, v34);
  HGTextureWrap::SetTextureWrapMode(v42, 3, v43);
  HGTransform::HGTransform(v70);
  HGTransform::Scale(v70, *image, *(image + 1), 1.0);
  v44 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v44);
  (*(*v44 + 576))(v44, v70);
  (*(*v44 + 120))(v44, 0, v42);
  v45 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v45);
  (*(*v45 + 120))(v45, 0, v44);
  (*(*v45 + 576))(v45, v71);
  HGTransform::HGTransform(v69);
  HGTransform::Scale(v69, 1.0 / *image, 1.0 / *(image + 1), 0.0);
  v46 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v46);
  (*(*v46 + 576))(v46, v69);
  (*(*v46 + 120))(v46, 0, v45);
  v47 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v47);
  (*(*v47 + 120))(v47, 0, v46);
  if (self)
  {
    objc_msgSend_getPixelTransformForImage_(self);
    objc_msgSend_getImageBoundary_(self);
    v48 = vcvtq_f64_f32(v66);
    v49 = vcvtq_f64_f32(v67);
  }

  else
  {
    v48 = 0uLL;
    memset(v68, 0, sizeof(v68));
    v49 = 0uLL;
    v66 = 0;
    v67 = 0;
  }

  v65[0] = v48;
  v65[1] = v49;
  v63 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v64 = _Q0;
  PCMatrix44Tmpl<double>::transformRect<double>(v68, v65, &v63);
  v55 = *&v63;
  v56 = *(&v63 + 1);
  v57 = *&v64;
  v58 = *(&v64 + 1);
  v59 = HGRectMake4i(v55, v56, v57 + v55, v58 + v56);
  (*(*v47 + 96))(v47, 0, v59, SHIDWORD(v59), v60, v61);
  *v23 = v47;
  (*(*v46 + 24))(v46);
  HGTransform::~HGTransform(v69);
  (*(*v45 + 24))(v45);
  (*(*v44 + 24))(v44);
  HGTransform::~HGTransform(v70);
  (*(*v42 + 24))(v42);
  HGTransform::~HGTransform(v71);
  HGTransform::~HGTransform(v72);
  (*(*v34 + 24))(v34);
  (*(*v33 + 24))(v33);
  HGTransform::~HGTransform(v73);
  return v62;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v9)
  {
    versionAtCreation = [v9 versionAtCreation];
    objc_msgSend_getScaleForImage_(self);
    v11 = v28;
    if (versionAtCreation)
    {
      v12 = v27;
    }

    else
    {
      [input pixelAspect];
      v12 = v27 * (1.0 / v13);
    }

    v25 = 0.5;
    v26 = 0.5;
    v23 = 0x4008000000000000;
    v24 = 0;
    v21 = 0;
    v22 = 0x3FF0000000000000;
    v14 = *&info->var2;
    v20[0] = *&info->var0.var0;
    v20[1] = v14;
    v20[2] = *&info->var4;
    [(PAETile *)self retrieveXValue:&v26 YValue:&v25 skew:&v24 scale:&v23 stretch:&v22 rotation:&v21 forOutputImage:output withRenderInfo:v20];
    LODWORD(v9) = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
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
          v19 = 0;
        }

        v25 = v25 + -0.5;
        v26 = v26 + -0.5;
        v15 = v26;
        v26 = v12 * (v15 * [output width]);
        v16 = v25;
        v25 = v11 * (v16 * [output height]);
        if (v19)
        {
          (*(*v19 + 16))(v19);
        }

        *v20 = v12;
        *(v20 + 1) = v11;
        objc_msgSend_transformAndTile_withXValue_YValue_skew_scale_stretch_rotation_resolution_inputImage_(self, v26);
        if (v19)
        {
          (*(*v19 + 24))(v19);
        }

        [output setHeliumRef:&v18];
        if (v18)
        {
          (*(*v18 + 24))(v18);
        }

        if (v19)
        {
          (*(*v19 + 24))(v19);
        }

        LOBYTE(v9) = 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
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

@end