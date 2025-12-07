@interface PAEEquirectProject
- (BOOL)addParameters;
- (BOOL)frameSetup:(id *)setup hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)renderOutput:(id)output withInfo:(id *)info;
- (HGEquirectProjectParams)getParams:(SEL)params :(id *)a4 :(id)a5 :(id)a6;
- (PAEEquirectProject)initWithAPIManager:(id)manager;
- (PCMatrix44Tmpl<float>)getViewMatrix:(SEL)matrix;
- (double)getProjectionFOVYDegrees:(id)degrees;
- (id)properties;
- (void)dealloc;
@end

@implementation PAEEquirectProject

- (PAEEquirectProject)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEEquirectProject;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEEquirectProject;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (BOOL)addParameters
{
  v2 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735DF10];
  v3 = v2;
  if (v2)
  {
    [v2 addImageReferenceWithName:@"Equirect Image" parmId:1 parmFlags:0];
  }

  return v3 != 0;
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:6];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:67584];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:591872];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PixelTransformSupport", v4, @"TransformsFromLocalToScreenSpace", v5, @"UsesRationalTime", v6, @"SupportsHeliumRendering", v7, @"SDRWorkingSpace", v8, @"HDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)frameSetup:(id *)setup hardware:(BOOL *)hardware software:(BOOL *)software
{
  *hardware = 0;
  *software = 0;
  return 1;
}

- (PCMatrix44Tmpl<float>)getViewMatrix:(SEL)matrix
{
  v26[16] = *MEMORY[0x277D85DE8];
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  result = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F4F0];
  if (v7)
  {
    v9 = result == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    retstr->var0[0][0] = 1.0;
    *&retstr->var0[0][3] = 0;
    *&retstr->var0[0][1] = 0;
    retstr->var0[1][1] = 1.0;
    *&retstr->var0[1][2] = 0;
    *&retstr->var0[2][0] = 0;
    *&retstr->var0[2][2] = xmmword_2603429B0;
    v25 = 1.0;
    v21 = 0.0;
  }

  else
  {
    result = [unk_287374FB0(result cameraMatrixAtTime:{a4.var0), "getBytes:length:", v26, 128}];
    v10 = v26[0];
    v11 = v26[1];
    v12 = v26[2];
    v13 = v26[3];
    v14 = v26[4];
    v15 = v26[5];
    v16 = v26[6];
    v17 = v26[7];
    v18 = v26[8];
    v19 = v26[9];
    v20 = v26[10];
    v21 = v26[11];
    v22 = v26[12];
    v23 = v26[13];
    v24 = v26[14];
    v25 = v26[15];
    retstr->var0[0][0] = v10;
    retstr->var0[0][1] = v14;
    retstr->var0[0][2] = v18;
    retstr->var0[0][3] = v22;
    retstr->var0[1][0] = v11;
    retstr->var0[1][1] = v15;
    retstr->var0[1][2] = v19;
    retstr->var0[1][3] = v23;
    retstr->var0[2][0] = v12;
    retstr->var0[2][1] = v16;
    retstr->var0[2][2] = v20;
    retstr->var0[2][3] = v24;
    retstr->var0[3][0] = v13;
    retstr->var0[3][1] = v17;
  }

  retstr->var0[3][2] = v21;
  retstr->var0[3][3] = v25;
  return result;
}

- (double)getProjectionFOVYDegrees:(id)degrees
{
  [-[PROAPIAccessing apiForProtocol:](self->super.super._apiManager apiForProtocol:{&unk_28735F4F0), "focalLengthAtFxTime:", degrees.var1}];
  v4 = 0.0;
  if (fabs(v3) != INFINITY)
  {
    v5 = atan(1.0 / v3 * 36.0 * 0.5);
    return (v5 + v5) * 57.2957795;
  }

  return v4;
}

- (HGEquirectProjectParams)getParams:(SEL)params :(id *)a4 :(id)a5 :(id)a6
{
  *retstr->var0 = xmmword_2603429B0;
  *&retstr->var1[1] = xmmword_2603429B0;
  retstr->var2[2] = 1.0;
  retstr->var4 = 45.0;
  retstr->var5 = 0;
  *&retstr->var12 = 0;
  *&retstr->var14 = 0;
  *&retstr->var16 = 0;
  *retstr->var18 = xmmword_2603431B0;
  *retstr->var19 = xmmword_260343890;
  *retstr->var20 = xmmword_2603431B0;
  *retstr->var21 = xmmword_260343890;
  result = [(PAEEquirectProject *)self getProjectionFOVYDegrees:a4->var0.var1, a5, a6, a7];
  *&v12 = v12;
  retstr->var3 = *&v12;
  if (self)
  {
    result = objc_msgSend_getViewMatrix_(self);
    v13 = *&v20;
    v14 = *&v21;
    v15 = *&v22;
  }

  else
  {
    v22 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = 0.0;
    v14 = 0.0;
    v13 = 0.0;
  }

  retstr->var0[0] = v13;
  retstr->var0[1] = v14;
  retstr->var0[2] = v15;
  if (a6)
  {
    [a6 width];
    result = [a6 height];
  }

  retstr->var1[0] = *(&v20 + 1);
  retstr->var1[1] = *(&v21 + 1);
  retstr->var1[2] = *(&v22 + 1);
  retstr->var2[0] = *(&v20 + 2);
  retstr->var2[1] = *(&v21 + 2);
  retstr->var2[2] = *(&v22 + 2);
  *&retstr->var12 = 0;
  if (a6)
  {
    retstr->var12 = [a6 width];
    result = [a6 height];
    retstr->var13 = result;
    if (self)
    {
      result = objc_msgSend_getPixelTransformForImage_(self);
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
    }

    *retstr->var20 = vcvt_hight_f32_f64(vcvt_f32_f64(v16), v17);
    *retstr->var21 = vcvt_hight_f32_f64(vcvt_f32_f64(v18), v19);
  }

  *&retstr->var14 = 0;
  if (a5)
  {
    result = objc_msgSend_imageInfo(a5);
    *&retstr->var14 = vmovn_s64(0);
    if (self)
    {
      result = objc_msgSend_getInversePixelTransformForImage_(self);
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
    }

    *retstr->var18 = vcvt_hight_f32_f64(vcvt_f32_f64(v16), v17);
    *retstr->var19 = vcvt_hight_f32_f64(vcvt_f32_f64(v18), v19);
    retstr->var17 = 1;
  }

  retstr->var5 = 0;
  return result;
}

- (BOOL)renderOutput:(id)output withInfo:(id *)info
{
  if ([output imageType] == 3)
  {
    [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
    v7 = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
    if (v7)
    {
      v19 = 0;
      v8 = *&info->var2;
      v9 = *&info->var4;
      *v18.var0 = *&info->var0.var0;
      *&v18.var1[1] = v8;
      *&v18.var2[2] = v9;
      [(PAESharedDefaultBase *)self getHeliumImage:&v19 layerOffsetX:0 layerOffsetY:0 requestInfo:&v18 fromParm:1 atTime:info->var0.var1];
      if (v19)
      {
        objc_msgSend_heliumRef(v19);
        v10 = *v18.var0;
        if (*v18.var0)
        {
          (*(**v18.var0 + 24))(*v18.var0);
        }
      }

      else
      {
        fwrite("PAEEquirectProject: failed to get equirect input image.\n", 0x38uLL, 1uLL, *MEMORY[0x277D85DF8]);
        v10 = 0;
      }

      v11 = *&info->var2;
      v17[0] = *&info->var0.var0;
      v17[1] = v11;
      v17[2] = *&info->var4;
      objc_msgSend_getParams__::(self);
      v12 = HGObject::operator new(0x240uLL);
      HGEquirectProject::HGEquirectProject(v12);
      v13 = HGEquirectProject::setParams(v12, &v18);
      (*(*v12 + 120))(v12, 0, v10, v13);
      v14 = HGObject::operator new(0x210uLL);
      HGXForm::HGXForm(v14);
      (*(*v14 + 120))(v14, 0, v12);
      HGTransform::HGTransform(v17);
      HGTransform::Translate(v17, 0.0, -v18.var15, 0.0);
      HGTransform::Scale(v17, 1.0, -1.0, 1.0);
      (*(*v14 + 576))(v14, v17);
      v16 = v14;
      (*(*v14 + 16))(v14);
      [output setHeliumRef:&v16];
      if (v16)
      {
        (*(*v16 + 24))(v16);
      }

      HGTransform::~HGTransform(v17);
      (*(*v14 + 24))(v14);
      (*(*v12 + 24))(v12);
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end