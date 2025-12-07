@interface PAEEquirectProjectFilter
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getIsFrontFacing:(id)facing;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (HGEquirectProjectParams)getParams:(SEL)params withOutputImage:(id *)image inputImage:(id)inputImage width:(id)width height:(unint64_t)height outputWidth:(unint64_t)outputWidth outputHeight:(unint64_t)outputHeight xRotation:(unint64_t)self0 yRotation:(double)self1 zRotation:(double)self2 cameraBehavior:(double)self3 paramAPI:(int)self4;
- (PAEEquirectProjectFilter)initWithAPIManager:(id)manager;
- (PCMatrix44Tmpl<double>)composeViewMatrix:(SEL)matrix withCameraBehavior:(id)behavior heroAngle:(int)angle;
- (PCMatrix44Tmpl<double>)getViewMatrix:(SEL)matrix;
- (double)convertToFOVXFromFOVY:(double)y width:(double)width height:(double)height;
- (double)convertToFOVYFromFOVX:(double)x width:(double)width height:(double)height;
- (double)getInitialYaw:(id)yaw;
- (id)properties;
- (void)getProjectionFOVYDegrees:(float *)degrees FOVXDegrees:(float *)xDegrees withFrameAspect:(double)aspect atTime:(id)time;
- (void)getQuaternion:(id)quaternion :(double *)a4 :(double *)a5 :(double *)a6 :(double *)a7;
@end

@implementation PAEEquirectProjectFilter

- (PAEEquirectProjectFilter)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEEquirectProjectFilter;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (BOOL)addParameters
{
  v2 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735DF10];
  v3 = v2;
  if (v2)
  {
    [v2 addAngleSliderWithName:@"X Rotation" parmId:1 defaultValue:0 parameterMin:0.0 parameterMax:-3600.0 parmFlags:3600.0];
    [v3 addAngleSliderWithName:@"Y Rotation" parmId:2 defaultValue:0 parameterMin:0.0 parameterMax:-3600.0 parmFlags:3600.0];
    [v3 addAngleSliderWithName:@"Z Rotation" parmId:3 defaultValue:0 parameterMin:0.0 parameterMax:-3600.0 parmFlags:3600.0];
    [v3 addToggleButtonWithName:@"FrontFacing" parmId:4 defaultValue:1 parmFlags:0];
    [v3 addAngleSliderWithName:@"Initial YAW" parmId:5 defaultValue:0 parameterMin:0.0 parameterMax:-3600.0 parmFlags:3600.0];
    [v3 addFloatSliderWithName:@"Quat X" parmId:6 defaultValue:0 parameterMin:0.0 parameterMax:-1024.0 sliderMin:1024.0 sliderMax:-1024.0 delta:1024.0 parmFlags:0.001];
    [v3 addFloatSliderWithName:@"Quat Y" parmId:7 defaultValue:0 parameterMin:0.0 parameterMax:-1024.0 sliderMin:1024.0 sliderMax:-1024.0 delta:1024.0 parmFlags:0.001];
    [v3 addFloatSliderWithName:@"Quat Z" parmId:8 defaultValue:0 parameterMin:0.0 parameterMax:-1024.0 sliderMin:1024.0 sliderMax:-1024.0 delta:1024.0 parmFlags:0.001];
    [v3 addFloatSliderWithName:@"Quat W" parmId:9 defaultValue:0 parameterMin:0.0 parameterMax:-1024.0 sliderMin:1024.0 sliderMax:-1024.0 delta:1024.0 parmFlags:0.001];
  }

  return v3 != 0;
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
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

- (PCMatrix44Tmpl<double>)getViewMatrix:(SEL)matrix
{
  v15 = *MEMORY[0x277D85DE8];
  retstr->var0[3][3] = 1.0;
  retstr->var0[2][2] = 1.0;
  retstr->var0[1][1] = 1.0;
  retstr->var0[0][0] = 1.0;
  *&retstr->var0[0][1] = 0u;
  *&retstr->var0[0][3] = 0u;
  *&retstr->var0[1][2] = 0u;
  *&retstr->var0[2][0] = 0u;
  *&retstr->var0[2][3] = 0u;
  *&retstr->var0[3][1] = 0u;
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

  if (!v9)
  {
    result = [unk_287374F88(result cameraMatrixAtTime:{a4.var0), "getBytes:length:", v14, 128}];
    v10 = v14[1];
    *&retstr->var0[0][0] = v14[0];
    *&retstr->var0[0][2] = v10;
    v11 = v14[3];
    *&retstr->var0[1][0] = v14[2];
    *&retstr->var0[1][2] = v11;
    v12 = v14[5];
    *&retstr->var0[2][0] = v14[4];
    *&retstr->var0[2][2] = v12;
    v13 = v14[7];
    *&retstr->var0[3][0] = v14[6];
    *&retstr->var0[3][2] = v13;
  }

  return result;
}

- (void)getQuaternion:(id)quaternion :(double *)a4 :(double *)a5 :(double *)a6 :(double *)a7
{
  v12 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  [v12 getFloatValue:a4 fromParm:6 atFxTime:quaternion.var1];
  [v12 getFloatValue:a5 fromParm:7 atFxTime:quaternion.var1];
  [v12 getFloatValue:a6 fromParm:8 atFxTime:quaternion.var1];

  [v12 getFloatValue:a7 fromParm:9 atFxTime:quaternion.var1];
}

- (PCMatrix44Tmpl<double>)composeViewMatrix:(SEL)matrix withCameraBehavior:(id)behavior heroAngle:(int)angle
{
  *&v99 = 0.0;
  *&v100 = 0.0;
  v97 = 0.0;
  v98 = 0.0;
  [(PAEEquirectProjectFilter *)self getQuaternion:behavior.var1];
  v11.i64[0] = v99;
  v10.i64[0] = v100;
  v110 = v97;
  v111 = *&v100;
  v112 = *&v99;
  v113 = v98;
  v108 = 0uLL;
  v109 = 1.0;
  PCQuat<double>::transform<double>(&v110, &v108, v10, v11);
  v12 = v108;
  v14 = vmulq_f64(v12, v12);
  v13 = vaddvq_f64(v14);
  v14.f64[0] = v109;
  v15 = sqrt(v13 + v14.f64[0] * v14.f64[0]);
  if (fabs(v15) >= 0.000000100000001)
  {
    v12 = vdivq_f64(v108, vdupq_lane_s64(*&v15, 0));
    v108 = v12;
    v12.f64[0] = v109 / v15;
    v109 = v109 / v15;
  }

  v107 = 0.0;
  v106 = 0x3FF0000000000000uLL;
  PCQuat<double>::transform<double>(&v110, &v106, v12, v14);
  v16 = sqrt(vaddvq_f64(vmulq_f64(v106, v106)) + v107 * v107);
  if (fabs(v16) >= 0.000000100000001)
  {
    v106 = vdivq_f64(v106, vdupq_lane_s64(*&v16, 0));
    v107 = v107 / v16;
  }

  v17 = v108;
  v18 = v108.f64[0] * 0.0;
  v19 = v109;
  v20 = v109 + v108.f64[0] * 0.0 + v108.f64[1] * 0.0;
  if (v20 <= 1.0)
  {
    v21 = v109 + v108.f64[0] * 0.0 + v108.f64[1] * 0.0;
  }

  else
  {
    v21 = 1.0;
  }

  if (v20 >= -1.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = -1.0;
  }

  v94 = acos(v22);
  v23 = 0.0;
  if (v94 > 0.00001)
  {
    v24 = v17.f64[0] + v17.f64[1] * 0.0 + v19 * 0.0;
    v25 = v24 * 0.0;
    v26 = v18 + v17.f64[1] + v19 * 0.0;
    v27 = v26 * 0.0;
    v28 = v24 + v26 * 0.0;
    v29 = v26 + v25;
    v30 = v25 + v27;
    v31 = sqrt(v30 * v30 + v28 * v28 + v29 * v29);
    if (fabs(v31) < 0.000000100000001)
    {
      v31 = 1.0;
    }

    v32 = v28 / v31;
    v33 = v29 / v31;
    v34 = v28 / v31 + v29 / v31 * 0.0;
    v35 = v30 / v31 * 0.0;
    v36 = v35 + v34;
    if (v35 + v34 <= 1.0)
    {
      v37 = v35 + v34;
    }

    else
    {
      v37 = 1.0;
    }

    if (v36 >= -1.0)
    {
      v38 = v37;
    }

    else
    {
      v38 = -1.0;
    }

    v39 = acos(v38);
    if (v35 + v33 + v32 * 0.0 < 0.0)
    {
      v39 = 6.28318531 - v39;
    }

    v23 = v39 + 1.57079633;
  }

  v40 = __sincos_stret(v94 * 0.5);
  v41 = __sincos_stret(v23 * 0.5);
  v42 = v40.__sinval * (v41.__sinval * 0.0);
  v43 = v40.__sinval * 0.0 * (v41.__sinval * 0.0);
  v44 = v40.__sinval * 0.0 * v41.__cosval;
  v45 = v40.__cosval * (v41.__sinval * 0.0);
  *v46.i64 = v44 + v45 + v40.__sinval * v41.__sinval - v43;
  v105[0] = v40.__cosval * v41.__cosval - (v40.__sinval * 0.0 * v41.__sinval + v42 + v43);
  v105[1] = v40.__sinval * v41.__cosval + v45 + v43 - v40.__sinval * 0.0 * v41.__sinval;
  *v47.i64 = v40.__cosval * v41.__sinval + v44 + v43 - v42;
  v105[2] = *v46.i64;
  v105[3] = *v47.i64;
  v104 = 0.0;
  v103 = 0x3FF0000000000000uLL;
  PCQuat<double>::transform<double>(v105, &v103, v46, v47);
  v49 = vmulq_f64(v103, v103);
  v48 = vaddvq_f64(v49);
  v49.f64[0] = v104;
  v50 = sqrt(v48 + v49.f64[0] * v49.f64[0]);
  if (fabs(v50) >= 0.000000100000001)
  {
    v103 = vdivq_f64(v103, vdupq_lane_s64(*&v50, 0));
    v104 = v104 / v50;
  }

  v101 = xmmword_260342700;
  v102 = 0.0;
  PCQuat<double>::transform<double>(v105, &v101, xmmword_260342700, v49);
  v52 = *(&v101 + 1);
  v51 = *&v101;
  v53 = v102;
  v54 = sqrt(*&v101 * *&v101 + *(&v101 + 1) * *(&v101 + 1) + v53 * v53);
  if (fabs(v54) >= 0.000000100000001)
  {
    v51 = *&v101 / v54;
    v52 = *(&v101 + 1) / v54;
    v53 = v102 / v54;
  }

  v55 = v106;
  v56 = v107;
  v57 = v106.f64[0] * v103.f64[0] + v106.f64[1] * v103.f64[1] + v107 * v104;
  v58 = 1.0;
  if (v57 <= 1.0)
  {
    v58 = v106.f64[0] * v103.f64[0] + v106.f64[1] * v103.f64[1] + v107 * v104;
  }

  if (v57 >= -1.0)
  {
    v59 = v58;
  }

  else
  {
    v59 = -1.0;
  }

  v60 = acos(v59);
  if (v51 * v55.f64[0] + v52 * v55.f64[1] + v53 * v56 <= 0.0)
  {
    v61 = v60;
  }

  else
  {
    v61 = -v60;
  }

  v62 = fmod(v61, 6.28318531);
  if (v61 >= 0.0)
  {
    v63 = v62;
  }

  else
  {
    v63 = v62 + 6.28318531;
  }

  v64 = fmod(v94, 6.28318531);
  if (v94 >= 0.0)
  {
    v65 = v64;
  }

  else
  {
    v65 = v64 + 6.28318531;
  }

  v66 = fmod(v23, 6.28318531);
  if (v23 >= 0.0)
  {
    v67 = v66;
  }

  else
  {
    v67 = v66 + 6.28318531;
  }

  v68 = fmod(v65 + -1.57079633, 6.28318531);
  if (v65 + -1.57079633 >= 0.0)
  {
    v69 = v68;
  }

  else
  {
    v69 = v68 + 6.28318531;
  }

  [(PAEEquirectProjectFilter *)self getInitialYaw:behavior.var1];
  v71 = v67 - v70;
  v72 = fmod(v67 - v70, 6.28318531);
  if (v71 < 0.0)
  {
    v72 = v72 + 6.28318531;
  }

  v73 = v72 + a6;
  v74 = fmod(v72 + a6, 6.28318531);
  if (v73 >= 0.0)
  {
    v75 = v74;
  }

  else
  {
    v75 = v74 + 6.28318531;
  }

  if ([(PAEEquirectProjectFilter *)self getIsFrontFacing:behavior.var1])
  {
    if (angle != 1)
    {
      v76 = fmod(-v63, 6.28318531);
      if (v63 <= 0.0)
      {
        v63 = v76;
      }

      else
      {
        v63 = v76 + 6.28318531;
      }

      v77 = fmod(-v69, 6.28318531);
      if (v69 <= 0.0)
      {
        v69 = v77;
      }

      else
      {
        v69 = v77 + 6.28318531;
      }
    }

    v78 = v75 + 3.14159265;
    v79 = fmod(v78, 6.28318531);
    if (v78 < 0.0)
    {
      v79 = v79 + 6.28318531;
    }

    v96 = v79;
  }

  else
  {
    v96 = v75;
  }

  v80 = __sincos_stret(v63 * 0.5);
  v81 = v80.__sinval * 0.0;
  v82 = __sincos_stret(v69 * 0.5);
  v83 = v82.__sinval * 0.0;
  v84 = __sincos_stret(v96 * 0.5);
  v85 = v82.__cosval * v80.__cosval - (v80.__sinval * v83 + v82.__sinval * v81 + v83 * v81);
  v86 = v82.__sinval * v80.__cosval + v82.__cosval * v81 + v83 * v81 - v80.__sinval * v83;
  v87 = v80.__cosval * v83 + v82.__cosval * v81 + v82.__sinval * v80.__sinval - v83 * v81;
  v88 = v82.__cosval * v80.__sinval + v80.__cosval * v83 + v83 * v81 - v82.__sinval * v81;
  v89 = v84.__sinval * 0.0 * v86;
  v90 = v84.__sinval * 0.0 * v88;
  v91 = v84.__sinval * 0.0 * v85;
  v92 = v84.__sinval * 0.0 * v87;
  v110 = v84.__cosval * v85 - (v90 + v89 + v84.__sinval * v87);
  v111 = v92 - v84.__sinval * v88 + v84.__cosval * v86 + v91;
  v112 = v90 - v89 + v84.__cosval * v87 + v84.__sinval * v85;
  v113 = v84.__sinval * v86 - v92 + v84.__cosval * v88 + v91;
  retstr->var0[3][3] = 1.0;
  retstr->var0[2][2] = 1.0;
  retstr->var0[1][1] = 1.0;
  retstr->var0[0][0] = 1.0;
  *&retstr->var0[0][1] = 0u;
  *&retstr->var0[0][3] = 0u;
  *&retstr->var0[1][2] = 0u;
  *&retstr->var0[2][0] = 0u;
  *&retstr->var0[2][3] = 0u;
  *&retstr->var0[3][1] = 0u;
  PCMatrix44Tmpl<double>::setRotationFromQuaternion(retstr, &v110);
  return result;
}

- (double)convertToFOVYFromFOVX:(double)x width:(double)width height:(double)height
{
  v7 = tan(x * 0.0174532925 * 0.5);
  v8 = atan2(height, width / v7);
  return (v8 + v8) / 0.0174532925;
}

- (double)convertToFOVXFromFOVY:(double)y width:(double)width height:(double)height
{
  v7 = tan(y * 0.0174532925 * 0.5);
  v8 = atan2(v7 * width, height);
  return (v8 + v8) / 0.0174532925;
}

- (void)getProjectionFOVYDegrees:(float *)degrees FOVXDegrees:(float *)xDegrees withFrameAspect:(double)aspect atTime:(id)time
{
  [-[PROAPIAccessing apiForProtocol:](self->super.super._apiManager apiForProtocol:{&unk_28735F4F0), "focalLengthAtFxTime:", time.var1}];
  if (fabs(v9) != INFINITY)
  {
    v10 = 1.0 / v9;
    v11 = atan(1.0 / v9 * 36.0 * 0.5);
    *&v11 = (v11 + v11) * 57.2957795;
    *xDegrees = *&v11;
    v12 = atan(aspect * 36.0 * v10 * 0.5);
    *&v12 = (v12 + v12) * 57.2957795;
    *degrees = *&v12;
  }
}

- (BOOL)getIsFrontFacing:(id)facing
{
  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v4)
  {
    v7 = 0;
    [v4 getBoolValue:&v7 fromParm:4 atFxTime:facing.var1];
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (double)getInitialYaw:(id)yaw
{
  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (!v4)
  {
    return 0.0;
  }

  v6 = 0.0;
  [v4 getFloatValue:&v6 fromParm:5 atFxTime:yaw.var1];
  return v6;
}

- (HGEquirectProjectParams)getParams:(SEL)params withOutputImage:(id *)image inputImage:(id)inputImage width:(id)width height:(unint64_t)height outputWidth:(unint64_t)outputWidth outputHeight:(unint64_t)outputHeight xRotation:(unint64_t)self0 yRotation:(double)self1 zRotation:(double)self2 cameraBehavior:(double)self3 paramAPI:(int)self4
{
  outputWidthCopy = outputWidth;
  heightCopy = height;
  *retstr->var0 = xmmword_2603429B0;
  *&retstr->var1[1] = xmmword_2603429B0;
  *&retstr->var2[2] = 0x423400003F800000;
  retstr->var4 = 45.0;
  retstr->var5 = 0;
  *&retstr->var12 = 0;
  *&retstr->var14 = 0;
  *&retstr->var16 = 0;
  *retstr->var18 = xmmword_2603431B0;
  *retstr->var19 = xmmword_260343890;
  *retstr->var20 = xmmword_2603431B0;
  *retstr->var21 = xmmword_260343890;
  result = [(PAEEquirectProjectFilter *)self getProjectionFOVYDegrees:&retstr->var3 FOVXDegrees:&retstr->var4 withFrameAspect:image->var0.var1 atTime:rotation / outputHeight];
  if (self)
  {
    result = objc_msgSend_composeViewMatrix_withCameraBehavior_heroAngle_(self, zRotation);
    v23 = v36;
    v24 = v39;
    v25 = v42;
    v26 = v37;
    v27 = v40;
    v28 = v43;
    v29 = v38;
    v30 = v41;
    v31 = v44;
  }

  else
  {
    v31 = 0.0;
    v30 = 0.0;
    v29 = 0.0;
    v28 = 0.0;
    v27 = 0.0;
    v26 = 0.0;
    v25 = 0.0;
    v24 = 0.0;
    v23 = 0.0;
  }

  retstr->var0[0] = v23;
  retstr->var0[1] = v24;
  retstr->var0[2] = v25;
  retstr->var1[0] = v26;
  retstr->var1[1] = v27;
  retstr->var1[2] = v28;
  retstr->var2[0] = v29;
  retstr->var2[1] = v30;
  retstr->var2[2] = v31;
  retstr->var12 = heightCopy;
  retstr->var13 = outputWidthCopy;
  if (width)
  {
    retstr->var12 = [width width];
    result = [width height];
    retstr->var13 = result;
    if (self)
    {
      result = objc_msgSend_getPixelTransformForImage_(self);
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
    }

    *retstr->var20 = vcvt_hight_f32_f64(vcvt_f32_f64(v32), v33);
    *retstr->var21 = vcvt_hight_f32_f64(vcvt_f32_f64(v34), v35);
  }

  if (inputImage)
  {
    retstr->var14 = [inputImage width];
    result = [inputImage height];
    retstr->var15 = result;
    if (self)
    {
      result = objc_msgSend_getInversePixelTransformForImage_(self);
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
    }

    *retstr->var18 = vcvt_hight_f32_f64(vcvt_f32_f64(v32), v33);
    *retstr->var19 = vcvt_hight_f32_f64(vcvt_f32_f64(v34), v35);
  }

  *&retstr->var16 = 256;
  return result;
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  if (width)
  {
    *width = input->var0;
  }

  if (height)
  {
    *height = input->var1;
  }

  return 1;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = v9;
    if ([output imageType] == 3)
    {
      v62 = 0.0;
      v63[0] = 0.0;
      v61 = 0.0;
      [v10 getFloatValue:v63 fromParm:1 atFxTime:info->var0.var1];
      [v10 getFloatValue:&v62 fromParm:2 atFxTime:info->var0.var1];
      [v10 getFloatValue:&v61 fromParm:3 atFxTime:info->var0.var1];
      v60 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      if (input)
      {
        objc_msgSend_imageInfo(input);
        v11 = *(&v56 + 1);
        v12 = v56;
        objc_msgSend_heliumRef(input);
        v13 = v49;
      }

      else
      {
        v12 = 0;
        v11 = 0;
        v13 = 0;
      }

      v14 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
      if (v14 && (v15 = [v14 integerValue], v15 != 2))
      {
        v33 = v15;
        v16 = 0;
      }

      else
      {
        if ([(PAEEquirectProjectFilter *)self getIsFrontFacing:info->var0.var1])
        {
          v62 = -v62;
        }

        v33 = 2;
        v16 = 1;
      }

      v17 = *&info->var2;
      v34[0] = *&info->var0.var0;
      v34[1] = v17;
      v34[2] = *&info->var4;
      [output width];
      height = [output height];
      objc_msgSend_getParams_withOutputImage_inputImage_width_height_outputWidth_outputHeight_xRotation_yRotation_zRotation_cameraBehavior_paramAPI_(self, v63[0], v62, v61, height, v33, v10);
      v43 = v54;
      v48 = 0x3FF0000000000000;
      v36 = vcvtq_f64_f32(v49);
      v39 = vcvtq_f64_f32(v51);
      v37 = v50;
      v38 = 0;
      v40 = v52;
      v42 = vcvtq_f64_f32(v53);
      v41 = 0;
      v45 = 0;
      v44 = 0;
      v47 = 0;
      v46 = 0;
      objc_msgSend_getPixelTransformForImage_(self);
      objc_msgSend_getInversePixelTransformForImage_(self);
      width = [output width];
      height2 = [output height];
      *&v21 = width;
      if (width >= height2)
      {
        height3 = [output height];
      }

      else
      {
        height3 = [output width];
      }

      computeDistanceToEquirectImagePlane(height3, v55, height3);
      v23 = HGObject::operator new(0x1A0uLL);
      HGCrop::HGCrop(v23);
      v25 = HGRectMake4f(v24, 1.0, 1.0, v12 + -2.0, v11 + -2.0);
      (*(*v23 + 96))(v23, 0, v25, SHIDWORD(v25), v26, v27);
      (*(*v23 + 120))(v23, 0, v13);
      v28 = HGObject::operator new(0x1D0uLL);
      HGTextureWrap::HGTextureWrap(v28);
      HGTextureWrap::SetTextureWrapMode(v28, 3, v29);
      (*(*v28 + 120))(v28, 0, v23);
      if (v13 != v28)
      {
        if (v13)
        {
          (*(**&v13 + 24))(v13);
        }

        v13 = v28;
        (*(*v28 + 16))(v28);
      }

      v30 = fabs(v35) * (v12 - 2);
      if ((v16 & [(PAEEquirectProjectFilter *)self getIsFrontFacing:info->var0.var1]) == 1)
      {
        v31 = HGObject::operator new(0x210uLL);
        HGXForm::HGXForm(v31);
        (*(*v31 + 120))(v31, 0, v13);
        HGTransform::HGTransform(v34);
        HGTransform::LoadIdentity(v34);
        HGTransform::Translate(v34, -(v30 * 0.5), 0.0, 0.0);
        HGTransform::Scale(v34, -1.0, 1.0, 1.0);
        HGTransform::Translate(v34, (v30 * 0.5), 0.0, 0.0);
        (*(*v31 + 576))(v31, v34);
        if (v13 != v31)
        {
          if (v13)
          {
            (*(**&v13 + 24))(v13);
          }

          (*(*v31 + 16))(v31);
        }

        HGTransform::~HGTransform(v34);
        (*(*v31 + 24))(v31);
      }

      [output width];
      [output height];
      NewEquirectProjectNode();
    }

    LOBYTE(v9) = 0;
  }

  return v9;
}

@end