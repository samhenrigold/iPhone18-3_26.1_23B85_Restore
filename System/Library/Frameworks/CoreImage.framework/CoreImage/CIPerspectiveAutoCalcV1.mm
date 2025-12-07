@interface CIPerspectiveAutoCalcV1
- (BOOL)compute;
- (CIPerspectiveAutoCalcV1)initWithContext:(id)context image:(id)image config:(id *)config;
- (double)confidence;
- (id).cxx_construct;
- (uint64_t)clusterLineSegments;
- (void)clusterLineSegments;
- (void)computeGuides;
- (void)computeTransform;
- (void)createGradientMap;
- (void)dealloc;
- (void)extractLineSegments;
- (void)normalizeGradientMap;
- (void)rangeLimitGradientMap;
- (void)standardizeImage;
- (void)thresholdGradientMap;
@end

@implementation CIPerspectiveAutoCalcV1

- (CIPerspectiveAutoCalcV1)initWithContext:(id)context image:(id)image config:(id *)config
{
  v26.receiver = self;
  v26.super_class = CIPerspectiveAutoCalcV1;
  v5 = [(CIPerspectiveAutoCalc *)&v26 initWithContext:context image:image config:config];
  [(CIImage *)v5->super.img extent];
  *&v7 = v6;
  v9.f64[1] = v8;
  *&v8 = v10;
  v23 = *&v8;
  v24 = *&v7;
  v25 = vmla_f32(vcvt_f32_f64(v9), 0x3F0000003F000000, __PAIR64__(LODWORD(v8), v7));
  focalLength = v5->super.config.focalLength;
  v12 = focalLength / hypotf(36.0, 24.0);
  v13 = hypotf(v24, v23);
  v15.i64[0] = COERCE_UNSIGNED_INT(v12 * v13);
  v15.u64[1] = v25;
  v27.columns[0].i32[1] = 0;
  v27.columns[0].i64[1] = 0;
  v27.columns[0].f32[0] = v12 * v13;
  *v14.i32 = v27.columns[0].f32[0];
  __asm { FMOV            V3.4S, #1.0 }

  v21 = vzip2q_s32(v15, _Q3);
  *_Q3.i8 = vdup_lane_s32(v25, 1);
  v27.columns[2] = vzip1q_s32(v21, _Q3);
  v27.columns[1] = vzip2q_s32(v27.columns[0].u32[0], vdupq_lane_s32(v14, 0));
  *v5->_anon_90 = v27.columns[0].u32[0];
  *&v5->_anon_90[16] = v27.columns[1];
  *&v5->_anon_90[32] = v27.columns[2];
  v28 = __invert_f3(v27);
  *v5->_anon_c0 = v28.columns[0].i64[0];
  *&v5->_anon_c0[8] = v28.columns[0].i32[2];
  *&v5->_anon_c0[24] = v28.columns[1].i32[2];
  *&v5->_anon_c0[16] = v28.columns[1].i64[0];
  *&v5->_anon_c0[40] = v28.columns[2].i32[2];
  *&v5->_anon_c0[32] = v28.columns[2].i64[0];
  v5->super.confidence = -1.0;
  return v5;
}

- (void)dealloc
{
  free(*self->gradMapBmp);
  v3.receiver = self;
  v3.super_class = CIPerspectiveAutoCalcV1;
  [(CIPerspectiveAutoCalc *)&v3 dealloc];
}

- (BOOL)compute
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_perspectiveAC(self, a2);
  v5 = ci_signpost_log_perspectiveAC(v3, v4);
  v6 = os_signpost_id_make_with_pointer(v5, self);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v3))
    {
      [(CIImage *)self->super.img extent];
      v9 = v8;
      [(CIImage *)self->super.img extent];
      *buf = 67109376;
      *&buf[4] = v9;
      *&buf[8] = 1024;
      *&buf[10] = v10;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v7, "compute", "imageSize: %d x %d", buf, 0xEu);
    }
  }

  [(CIPerspectiveAutoCalcV1 *)self standardizeImage];
  [(CIPerspectiveAutoCalcV1 *)self createGradientMap];
  [(CIPerspectiveAutoCalcV1 *)self normalizeGradientMap];
  [(CIPerspectiveAutoCalcV1 *)self thresholdGradientMap];
  [(CIPerspectiveAutoCalcV1 *)self rangeLimitGradientMap];
  [(CIPerspectiveAutoCalcV1 *)self extractLineSegments];
  [(CIPerspectiveAutoCalcV1 *)self clusterLineSegments];
  [(CIPerspectiveAutoCalcV1 *)self computeGuides];
  computeTransform = [(CIPerspectiveAutoCalcV1 *)self computeTransform];
  v13 = ci_signpost_log_perspectiveAC(computeTransform, v12);
  v15 = ci_signpost_log_perspectiveAC(v13, v14);
  v16 = os_signpost_id_make_with_pointer(v15, self);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = v16;
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v13, OS_SIGNPOST_INTERVAL_END, v17, "compute", &unk_19CFBCBAE, buf, 2u);
    }
  }

  if ([(CIPerspectiveAutoCalc *)self generateDebugImage])
  {
    img = self->super.img;
    self->super.debugImage = img;
    v19 = CGColorCreateSRGB(1.0, 0.0, 0.0, 1.0);
    v20 = CI::Perspective::plotLines<CI::Perspective::Line>(img, v19, &self->vLines);
    self->super.debugImage = v20;
    v21 = CGColorCreateSRGB(1.0, 0.0, 0.0, 1.0);
    v22 = CI::Perspective::plotLines<CI::Perspective::Line>(v20, v21, &self->hLines);
    self->super.debugImage = v22;
    if (self->vGuidesValid)
    {
      v23 = CGColorCreateSRGB(0.0, 1.0, 0.0, 1.0);
      self->super.debugImage = CI::Perspective::plotLines<CI::Perspective::Line>(v22, v23, &self->vLineCluster);
      v24 = CGColorCreateSRGB(0.0, 1.0, 1.0, 1.0);
      v25 = *&self->_anon_1f8[4];
      *buf = *&self->_anon_1e8[4];
      v32 = v25;
      operator new();
    }

    if (self->hGuidesValid)
    {
      debugImage = self->super.debugImage;
      v27 = CGColorCreateSRGB(0.0, 1.0, 0.0, 1.0);
      self->super.debugImage = CI::Perspective::plotLines<CI::Perspective::Line>(debugImage, v27, &self->hLineCluster);
      v28 = CGColorCreateSRGB(0.0, 1.0, 1.0, 1.0);
      v29 = *&self->_anon_218[4];
      *buf = *&self->_anon_208[4];
      v32 = v29;
      operator new();
    }
  }

  return 1;
}

- (double)confidence
{
  result = self->super.confidence;
  if (result < 0.0)
  {
    vGuidesAOE = self->vGuidesAOE;
    if (vGuidesAOE <= self->hGuidesAOE)
    {
      vGuidesAOE = self->hGuidesAOE;
    }

    result = (vGuidesAOE / (self->gradMapH * self->gradMapW));
    self->super.confidence = result;
  }

  return result;
}

- (void)standardizeImage
{
  [(CIImage *)self->super.img extent];
  if (v5 <= v6)
  {
    v5 = v6;
  }

  *&v7 = 1024.0 / v5;
  LODWORD(v8) = 0;
  v9 = v7;
  HIDWORD(v8) = v7;
  *self->_anon_f0 = v7;
  *&self->_anon_f0[16] = v8;
  v10 = *&v7;
  *&v3.f64[1] = v4.i64[0];
  *v4.i8 = vcvt_f32_f64(vmulq_n_f64(v3, -*&v7));
  v21 = *v4.i8;
  v11 = vuzp2q_s32(v4, vzip1q_s32(v4, v4));
  __asm { FMOV            V1.4S, #1.0 }

  v24.columns[2] = vzip1q_s32(vzip2q_s32(v11, _Q1), v11);
  *&self->_anon_f0[32] = v24.columns[2];
  v24.columns[0] = v9;
  v24.columns[1] = v8;
  v25 = __invert_f3(v24);
  *self->_anon_120 = v25.columns[0].i64[0];
  *&self->_anon_120[8] = v25.columns[0].i32[2];
  *&self->_anon_120[16] = v25.columns[1].i64[0];
  *&self->_anon_120[24] = v25.columns[1].i32[2];
  *&self->_anon_120[32] = v25.columns[2].i64[0];
  *&self->_anon_120[40] = v25.columns[2].i32[2];
  v22[1] = 0;
  v22[2] = 0;
  img = self->super.img;
  *v22 = v10;
  *&v22[3] = v10;
  v23 = vcvtq_f64_f32(v21);
  self->super.img = [(CIImage *)img imageByApplyingTransform:v22 highQualityDownsample:1];
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV1 standardizeImage];
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v18 = self->super.img;
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"0_standardized"];
    CI::Perspective::CIImageToFile(v18, v19, v20, *MEMORY[0x1E695F050]);
  }
}

- (void)createGradientMap
{
  [(CIImage *)self->super.img extent];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  self->gradMapW = v7;
  self->gradMapH = v9;
  v11 = [[[(CIImage *)self->super.img imageByClampingToExtent] imageByApplyingGaussianBlurWithSigma:1.2] imageByCroppingToRect:v3, v5, v7, v9];
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV1 createGradientMap];
  }

  v12 = MEMORY[0x1E695F050];
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"1_Preprocessed"];
    CI::Perspective::CIImageToFile(v11, v13, v14, *v12);
  }

  v15 = [(CIImage *)v11 imageByApplyingFilter:@"CIGaborGradients"];
  self->gradMap = v15;
  [(CIImage *)v15 extent];
  v32 = CGRectInset(v31, 5.0, 5.0);
  v16 = [(CIImage *)v15 imageByCroppingToRect:v32.origin.x, v32.origin.y, v32.size.width, v32.size.height];
  self->gradMap = v16;
  v17 = [(CIImage *)v16 imageByCompositingOverImage:+[CIImage blackImage]];
  self->gradMap = v17;
  self->gradMap = [(CIImage *)v17 imageByCroppingToRect:v4, v6, v8, v10];
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV1 createGradientMap];
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v19 = CI::Perspective::gradDirImage(self->gradMap, v18);
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"2_GradMap_dir"];
    CI::Perspective::CIImageToFile(v19, v20, v21, *v12);
    v23 = CI::Perspective::gradMagImage(self->gradMap, v22);
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"2_GradMap_mag"];
    x = v12->origin.x;
    y = v12->origin.y;
    width = v12->size.width;
    height = v12->size.height;

    CI::Perspective::CIImageToFile(v23, v24, v25, *&x);
  }
}

- (void)normalizeGradientMap
{
  v26[1] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->gradMap extent];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = CI::Perspective::gradMagImage(self->gradMap, v11);
  v25 = @"inputExtent";
  [(CIImage *)v12 extent];
  v26[0] = [CIVector vectorWithCGRect:?];
  v23 = 0.0;
  -[CIContext render:toBitmap:rowBytes:bounds:format:colorSpace:](self->super.ctx, "render:toBitmap:rowBytes:bounds:format:colorSpace:", -[CIImage imageByApplyingFilter:withInputParameters:](v12, "imageByApplyingFilter:withInputParameters:", @"CIAreaMaximum", [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1]), &v23, 4, 2309, -[CIContext workingColorSpace](self->super.ctx, "workingColorSpace"), 0.0, 0.0, 1.0, 1.0);
  fprintf(*MEMORY[0x1E69E9848], "maxGradientMagnitude: %f\n", v23);
  v13 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_gradientNormalizeV1];
  v24[0] = self->gradMap;
  v24[1] = [MEMORY[0x1E696AD98] numberWithDouble:1.0 / v23];
  self->gradMap = -[CIColorKernel applyWithExtent:arguments:](v13, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2], v4, v6, v8, v10);
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV1 standardizeImage];
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v15 = CI::Perspective::gradDirImage(self->gradMap, v14);
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"3_GradMapNormalized_dir"];
    v17 = MEMORY[0x1E695F050];
    CI::Perspective::CIImageToFile(v15, v16, v18, *MEMORY[0x1E695F050]);
    v20 = CI::Perspective::gradMagImage(self->gradMap, v19);
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"3_GradMapNormalized_mag"];
    CI::Perspective::CIImageToFile(v20, v21, v22, *v17);
  }
}

- (void)thresholdGradientMap
{
  v21[3] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->gradMap extent];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_gradientThresholdV1];
  v21[0] = self->gradMap;
  v21[1] = &unk_1F10853F8;
  v21[2] = &unk_1F1085408;
  self->gradMap = -[CIColorKernel applyWithExtent:arguments:](v11, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3], v4, v6, v8, v10);
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV1 standardizeImage];
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v13 = CI::Perspective::gradDirImage(self->gradMap, v12);
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"4_GradMapThresholded_dir"];
    v15 = MEMORY[0x1E695F050];
    CI::Perspective::CIImageToFile(v13, v14, v16, *MEMORY[0x1E695F050]);
    v18 = CI::Perspective::gradMagImage(self->gradMap, v17);
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"4_GradMapThresholded_mag"];
    CI::Perspective::CIImageToFile(v18, v19, v20, *v15);
  }
}

- (void)rangeLimitGradientMap
{
  v27[5] = *MEMORY[0x1E69E9840];
  v3 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_gradientRangeLimit];
  lineSearchRangeH = self->super.config.lineSearchRangeH;
  v5 = tan(lineSearchRangeH + -0.0523598776);
  v6 = tan(lineSearchRangeH + 0.0523598776);
  lineSearchRangeV = self->super.config.lineSearchRangeV;
  v8 = tan(lineSearchRangeV + -0.0523598776);
  v9 = tan(lineSearchRangeV + 0.0523598776);
  [(CIImage *)self->gradMap extent];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v27[0] = self->gradMap;
  v27[1] = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v27[2] = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v27[3] = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v27[4] = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  self->gradMap = -[CIColorKernel applyWithExtent:arguments:](v3, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:5], v11, v13, v15, v17);
  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV1 standardizeImage];
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v19 = CI::Perspective::gradDirImage(self->gradMap, v18);
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"5_GradMapRangeLimited_dir"];
    v21 = MEMORY[0x1E695F050];
    CI::Perspective::CIImageToFile(v19, v20, v22, *MEMORY[0x1E695F050]);
    v24 = CI::Perspective::gradMagImage(self->gradMap, v23);
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/PerspectiveV1_%@.png", @"5_GradMapRangeLimited_mag"];
    CI::Perspective::CIImageToFile(v24, v25, v26, *v21);
  }
}

- (void)extractLineSegments
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_perspectiveAC(self, a2);
  v5 = ci_signpost_log_perspectiveAC(v3, v4);
  v6 = os_signpost_id_make_with_pointer(v5, self);
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v6;
    v6 = os_signpost_enabled(v3);
    if (v6)
    {
      gradMapW = self->gradMapW;
      gradMapH = self->gradMapH;
      *buf = 134218240;
      v32 = gradMapW;
      v33 = 2048;
      v34 = gradMapH;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ExtractLineSegments", "gradMapSize: %lu x %lu", buf, 0x16u);
    }
  }

  v11 = ci_signpost_log_perspectiveAC(v6, v7);
  v13 = ci_signpost_log_perspectiveAC(v11, v12);
  v14 = os_signpost_id_make_with_pointer(v13, self);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = v14;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v15, "GradientMapRender", &unk_19CFBCBAE, buf, 2u);
    }
  }

  v16 = (8 * self->gradMapW + 15) & 0xFFFFFFFFFFFFFFF0;
  self->gradMapRb = v16;
  v17 = malloc_type_malloc(self->gradMapH * v16, 0x100004000313F17uLL);
  *self->gradMapBmp = v17;
  v18 = [(CIContext *)self->super.ctx render:self->gradMap toBitmap:v17 rowBytes:self->gradMapRb bounds:2310 format:0 colorSpace:0.0, 0.0, self->gradMapW, self->gradMapH];
  v20 = ci_signpost_log_perspectiveAC(v18, v19);
  v22 = ci_signpost_log_perspectiveAC(v20, v21);
  v23 = os_signpost_id_make_with_pointer(v22, self);
  if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v25 = v23;
    v23 = os_signpost_enabled(v20);
    if (v23)
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v20, OS_SIGNPOST_INTERVAL_END, v25, "GradientMapRender", &unk_19CFBCBAE, buf, 2u);
    }
  }

  v26 = ci_signpost_log_perspectiveAC(v23, v24);
  v28 = ci_signpost_log_perspectiveAC(v26, v27);
  v29 = os_signpost_id_make_with_pointer(v28, self);
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v30 = v29;
    if (os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v30, "EDLines", &unk_19CFBCBAE, buf, 2u);
    }
  }

  CI::Perspective::EDLines::Create(*self->gradMapBmp, self->gradMapW, self->gradMapH, self->gradMapRb, 0);
}

- (void)clusterLineSegments
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v7 = *a2;
  v6 = a2[1];
  v8 = ((v6 - *a2) >> 4) * ((v6 - *a2) >> 4);
  if (v8 >= 2)
  {
    if (v8 >= 0xCCCCCCCCCCCCCCELL)
    {
LABEL_96:
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    std::__split_buffer<[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis>::__split_buffer(&v102, v8 >> 1, 0, a3);
    v9 = a3[1] - *a3;
    v10 = *(&v102 + 1) - v9;
    memcpy((*(&v102 + 1) - v9), *a3, v9);
    v11 = *a3;
    *a3 = v10;
    v12 = a3[2];
    *(a3 + 1) = *v103;
    v103[0] = v11;
    v103[1] = v12;
    *&v102 = v11;
    *(&v102 + 1) = v11;
    if (v11)
    {
      operator delete(v11);
    }

    v7 = *a2;
    v6 = a2[1];
  }

  if (v6 != v7)
  {
    v13 = 0;
    do
    {
      if (v13)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = *a2;
          v17 = (*a2 + 16 * v13);
          v18 = (*a2 + v14);
          v99[0] = 0;
          v102 = *v17->f32;
          v100 = *v18;
          v19 = CI::Perspective::intersect(&v102, &v100, v99);
          v20 = v19;
          if (!v19 || (CI::Perspective::pointInBounds(v99, self) & 1) == 0)
          {
            v21 = *v17;
            v22 = v17[1];
            if (vcgt_f32(v22, *v17).u8[0])
            {
              LODWORD(v23) = *v17->f32;
            }

            else
            {
              LODWORD(v23) = v17[1];
            }

            v24 = *(v16 + v14);
            v25 = *(v18 + 8);
            if (vcgt_f32(v25, v24).u8[0])
            {
              LODWORD(v26) = *(v16 + v14);
            }

            else
            {
              LODWORD(v26) = *(v18 + 1);
            }

            if (v23 >= v26)
            {
              v23 = v26;
            }

            if (vcgt_f32(v21, v22).u8[0])
            {
              LODWORD(v27) = *v17->f32;
            }

            else
            {
              LODWORD(v27) = v17[1];
            }

            if (vcgt_f32(v24, v25).u8[0])
            {
              LODWORD(v28) = *(v16 + v14);
            }

            else
            {
              LODWORD(v28) = *(v18 + 1);
            }

            if (v27 <= v28)
            {
              v27 = v28;
            }

            LODWORD(v29) = HIDWORD(*v17);
            v24.i32[0] = HIDWORD(*(v16 + v14));
            if (v24.f32[1] <= v25.f32[1])
            {
              LODWORD(v30) = HIDWORD(*(v18 + 1));
            }

            else
            {
              LODWORD(v30) = HIDWORD(*(v16 + v14));
            }

            if (v24.f32[1] >= v25.f32[1])
            {
              v24.i32[0] = HIDWORD(*(v18 + 1));
            }

            if (v21.f32[1] <= v22.f32[1])
            {
              LODWORD(v31) = HIDWORD(*&v17[1]);
            }

            else
            {
              LODWORD(v31) = HIDWORD(*v17);
            }

            if (v21.f32[1] >= v22.f32[1])
            {
              LODWORD(v29) = HIDWORD(*&v17[1]);
            }

            if (v31 <= v30)
            {
              v32 = v30;
            }

            else
            {
              v32 = v31;
            }

            if (v29 >= v24.f32[0])
            {
              v29 = v24.f32[0];
            }

            v33 = (v27 - v23) * (v32 - v29);
            v34 = v99[0];
            v35 = a3[1];
            v36 = a3[2];
            if (v35 >= v36)
            {
              v38 = 0xCCCCCCCCCCCCCCCDLL * ((v35 - *a3) >> 3);
              v39 = v38 + 1;
              if ((v38 + 1) > 0x666666666666666)
              {
                goto LABEL_96;
              }

              v40 = 0xCCCCCCCCCCCCCCCDLL * ((v36 - *a3) >> 3);
              if (2 * v40 > v39)
              {
                v39 = 2 * v40;
              }

              if (v40 >= 0x333333333333333)
              {
                v41 = 0x666666666666666;
              }

              else
              {
                v41 = v39;
              }

              std::__split_buffer<[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis>::__split_buffer(&v102, v41, v38, a3);
              v42 = v103[0];
              *v103[0] = v13;
              v42[1] = v15;
              v42[2].i8[0] = v20;
              v42[3] = v34;
              v42[4].f32[0] = v33;
              v103[0] = &v42[5];
              v43 = a3[1] - *a3;
              v44 = *(&v102 + 1) - v43;
              memcpy((*(&v102 + 1) - v43), *a3, v43);
              v45 = *a3;
              *a3 = v44;
              v46 = a3[2];
              v47 = v103[0];
              *(a3 + 1) = *v103;
              v103[0] = v45;
              v103[1] = v46;
              *&v102 = v45;
              *(&v102 + 1) = v45;
              if (v45)
              {
                v98 = v47;
                operator delete(v45);
                v47 = v98;
              }

              v37 = v47;
            }

            else
            {
              *v35 = v13;
              *(v35 + 8) = v15;
              *(v35 + 16) = v20;
              *(v35 + 24) = v34;
              v37 = v35 + 40;
              *(v35 + 32) = v33;
            }

            a3[1] = v37;
          }

          ++*&v15;
          v14 += 16;
        }

        while (v13 != *&v15);
        v7 = *a2;
        v6 = a2[1];
      }

      ++v13;
    }

    while (v13 < (v6 - v7) >> 4);
  }

  v48 = *a3;
  v49 = a3[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v49 - *a3) >> 3) > 0x14)
  {
    v50 = (v48 + 360);
    v51 = -10;
    do
    {
      std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,-[CIPerspectiveAutoCalcV1 clusterLineSegments]::$_0::operator() const(std::vector<CI::Perspective::Line> const&,unsigned long)::{lambda(-[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis const&,-[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis const&)#1} &,std::__wrap_iter<-[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis*>>(v48, 20, v50);
      v50 -= 10;
    }

    while (!__CFADD__(v51++, 1));
    v53 = (v48 + 800);
    if (v48 + 800 != v49)
    {
      v54 = v48 + 800;
      do
      {
        if (*(v54 + 8) > *(v48 + 8))
        {
          v55 = *v54;
          v56 = *(v54 + 1);
          v57 = *(v54 + 4);
          v58 = *(v48 + 4);
          v59 = *(v48 + 1);
          *v54 = *v48;
          *(v54 + 1) = v59;
          *(v54 + 4) = v58;
          *(v48 + 4) = v57;
          *v48 = v55;
          *(v48 + 1) = v56;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,-[CIPerspectiveAutoCalcV1 clusterLineSegments]::$_0::operator() const(std::vector<CI::Perspective::Line> const&,unsigned long)::{lambda(-[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis const&,-[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis const&)#1} &,std::__wrap_iter<-[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis*>>(v48, 20, v48);
        }

        v54 += 40;
      }

      while (v54 != v49);
    }

    v60 = 20;
    do
    {
      v61 = 0;
      v102 = *v48;
      *v103 = *(v48 + 1);
      v104 = *(v48 + 4);
      v62 = v48;
      do
      {
        v63 = v62;
        v62 += 10 * v61 + 10;
        v64 = 2 * v61;
        v61 = (2 * v61) | 1;
        v65 = v64 + 2;
        if (v65 < v60 && v62[8] > v62[18])
        {
          v62 += 10;
          v61 = v65;
        }

        v66 = *v62;
        v67 = *(v62 + 1);
        *(v63 + 4) = *(v62 + 4);
        *v63 = v66;
        *(v63 + 1) = v67;
      }

      while (v61 <= ((v60 - 2) >> 1));
      v53 -= 10;
      if (v62 == v53)
      {
        v79 = v102;
        v80 = *v103;
        *(v62 + 4) = v104;
        *v62 = v79;
        *(v62 + 1) = v80;
      }

      else
      {
        v68 = *v53;
        v69 = *(v53 + 1);
        *(v62 + 4) = *(v53 + 4);
        *v62 = v68;
        *(v62 + 1) = v69;
        *v53 = v102;
        *(v53 + 1) = *v103;
        *(v53 + 4) = v104;
        v70 = v62 - v48 + 40;
        if (v70 >= 41)
        {
          v71 = (-2 - 0x3333333333333333 * (v70 >> 3)) >> 1;
          v72 = &v48[40 * v71];
          v73 = v62[8];
          if (*(v72 + 8) > v73)
          {
            v74 = *(v62 + 1);
            v100 = *v62;
            v101 = v74;
            v75 = *(v62 + 9);
            do
            {
              v76 = v62;
              v62 = v72;
              v77 = *v72;
              v78 = *(v72 + 1);
              *(v76 + 4) = *(v72 + 4);
              *v76 = v77;
              *(v76 + 1) = v78;
              if (!v71)
              {
                break;
              }

              v71 = (v71 - 1) >> 1;
              v72 = &v48[40 * v71];
            }

            while (*(v72 + 8) > v73);
            *v62 = v100;
            *(v62 + 1) = v101;
            v62[8] = v73;
            *(v62 + 9) = v75;
          }
        }
      }
    }

    while (v60-- > 2);
    v82 = *a3;
    v83 = a3[1];
    v84 = v83 - *a3;
    v85 = 0xCCCCCCCCCCCCCCCDLL * (v84 >> 3);
    if (v85 > 0x13)
    {
      if (v84 == 800)
      {
        return;
      }

      v96 = v82 + 800;
    }

    else
    {
      v86 = a3[2];
      if (0xCCCCCCCCCCCCCCCDLL * ((v86 - v83) >> 3) < 20 - v85)
      {
        v87 = 0xCCCCCCCCCCCCCCCDLL * ((v86 - v82) >> 3);
        v88 = 2 * v87;
        if (2 * v87 <= 0x14)
        {
          v88 = 20;
        }

        if (v87 >= 0x333333333333333)
        {
          v89 = 0x666666666666666;
        }

        else
        {
          v89 = v88;
        }

        std::__split_buffer<[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis>::__split_buffer(&v102, v89, v85, a3);
        v90 = v103[0];
        v91 = 760 - v84 - (760 - v84) % 0x28u + 40;
        bzero(v103[0], v91);
        v103[0] = &v90[v91];
        v92 = a3[1] - *a3;
        v93 = *(&v102 + 1) - v92;
        memcpy((*(&v102 + 1) - v92), *a3, v92);
        v94 = *a3;
        *a3 = v93;
        v95 = a3[2];
        *(a3 + 1) = *v103;
        v103[0] = v94;
        v103[1] = v95;
        *&v102 = v94;
        *(&v102 + 1) = v94;
        if (v94)
        {
          operator delete(v94);
        }

        return;
      }

      v97 = 760 - v84 - (760 - v84) % 0x28u + 40;
      bzero(a3[1], v97);
      v96 = v83 + v97;
    }

    a3[1] = v96;
  }
}

- (void)computeGuides
{
  v100 = *MEMORY[0x1E69E9840];
  v3 = ci_signpost_log_perspectiveAC(self, a2);
  v5 = ci_signpost_log_perspectiveAC(v3, v4);
  v6 = os_signpost_id_make_with_pointer(v5, self);
  if ((v6 - 1) < 0xFFFFFFFFFFFFFFFELL)
  {
    v8 = v6;
    v6 = os_signpost_enabled(v3);
    if (v6)
    {
      v9 = (self->vLineCluster.__end_ - self->vLineCluster.__begin_) >> 4;
      v10 = (self->hLineCluster.__end_ - self->hLineCluster.__begin_) >> 4;
      *buf = 134218240;
      *&buf[4] = v9;
      *&buf[12] = 2048;
      *&buf[14] = v10;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v8, "computeGuides", "vLineClusterSize: %lu hLineClusterSize: %lu", buf, 0x16u);
    }
  }

  self->vGuidesValid = 1;
  self->hGuidesValid = 1;
  self->yawCorrectionAreaCoverage = 0.0;
  LODWORD(self->minimumPitchCorrectionAreaCoverage) = 0;
  begin = self->vLineCluster.__begin_;
  end = self->vLineCluster.__end_;
  if ((end - begin) <= 0x10)
  {
    self->super.pitchFailureReason = 2;
    self->vGuidesValid = 0;
  }

  p_hLineCluster = &self->hLineCluster;
  if ((self->hLineCluster.__end_ - self->hLineCluster.__begin_) <= 0x10)
  {
    self->super.yawFailureReason = 2;
    self->hGuidesValid = 0;
  }

  gradMapH = self->gradMapH;
  if (self->vGuidesValid && begin != end)
  {
    v16 = -vcvts_n_f32_u64(self->gradMapW, 1uLL);
    v17 = -INFINITY;
    v18 = INFINITY;
    do
    {
      v19 = *(begin + 8);
      v20 = vsub_f32(v19, *begin);
      v19.f32[0] = v16 + vadd_f32(v19, *begin).f32[0] * 0.5;
      v21 = sqrtf(vaddv_f32(vmul_f32(v20, v20))) * v19.f32[0];
      if (v21 < v18)
      {
        *&self->_anon_1e8[4] = *begin;
        v18 = v21;
      }

      if (v21 > v17)
      {
        *&self->_anon_1f8[4] = *begin;
        v17 = v21;
      }

      begin = (begin + 16);
    }

    while (begin != end);
  }

  if (self->hGuidesValid)
  {
    v22 = *p_hLineCluster;
    v23 = self->hLineCluster.__end_;
    if (*p_hLineCluster != v23)
    {
      v24 = -vcvts_n_f32_u64(gradMapH, 1uLL);
      v25 = -INFINITY;
      v26 = INFINITY;
      do
      {
        v27 = v22[1];
        v28 = vsub_f32(v27, *v22);
        v27.f32[0] = v24 + COERCE_FLOAT(vadd_f32(v27, *v22).i32[1]) * 0.5;
        v29 = sqrtf(vaddv_f32(vmul_f32(v28, v28))) * v27.f32[0];
        if (v29 < v26)
        {
          *&self->_anon_208[4] = *v22;
          v26 = v29;
        }

        if (v29 > v25)
        {
          *&self->_anon_218[4] = *v22;
          v25 = v29;
        }

        v22 += 2;
      }

      while (v22 != v23);
    }
  }

  gradMapW = self->gradMapW;
  v31 = self->gradMapH;
  v32.i64[0] = 0;
  *&v32.i32[2] = gradMapW;
  *&v32.i32[3] = v31;
  v33 = (v31 * gradMapW);
  v97 = v32;
  if (self->vGuidesValid)
  {
    v34 = *&self->_anon_1e8[4];
    v35 = vsub_f32(*&self->_anon_1e8[12], *&v34);
    v36 = vmul_f32(v35, v35);
    v36.i32[0] = vadd_f32(v36, vdup_lane_s32(v36, 1)).u32[0];
    v37 = vrsqrte_f32(v36.u32[0]);
    v38 = vmul_f32(v37, vrsqrts_f32(v36.u32[0], vmul_f32(v37, v37)));
    v39 = vmul_n_f32(v35, vmul_f32(v38, vrsqrts_f32(v36.u32[0], vmul_f32(v38, v38))).f32[0]);
    *buf = 0;
    LODWORD(v98) = 0;
    CI::Perspective::intersect(buf, &v98, v34, *&v39, v32);
    LODWORD(v40) = *buf;
    v94 = v40;
    v95 = *&v98;
    v41 = *&self->_anon_1f8[4];
    v42 = vsub_f32(*&self->_anon_1f8[12], *&v41);
    v43 = vmul_f32(v42, v42);
    v43.i32[0] = vadd_f32(v43, vdup_lane_s32(v43, 1)).u32[0];
    v44 = vrsqrte_f32(v43.u32[0]);
    v45 = vmul_f32(v44, vrsqrts_f32(v43.u32[0], vmul_f32(v44, v44)));
    v46 = vmul_n_f32(v42, vmul_f32(v45, vrsqrts_f32(v43.u32[0], vmul_f32(v45, v45))).f32[0]);
    *buf = 0;
    LODWORD(v98) = 0;
    v6 = CI::Perspective::intersect(buf, &v98, v41, *&v46, v97);
    v47 = vmla_n_f32(*&v34, v39, *&v94);
    v48 = vmla_n_f32(*&v34, v39, v95);
    v49 = vmla_n_f32(*&v41, v46, *buf);
    v50 = vmla_n_f32(*&v41, v46, *&v98);
    v51 = vbsl_s8(vcgt_f32(v47, v48), v47, v48);
    v52 = vbsl_s8(vcgt_f32(v49, v50), v49, v50);
    v53 = vbsl_s8(vcgt_f32(v48, v47), v47, v48);
    v54 = vbsl_s8(vcgt_f32(v50, v49), v49, v50);
    v55 = vsub_f32(vbsl_s8(vcgt_f32(v51, v52), v51, v52), vbsl_s8(vcgt_f32(v54, v53), v53, v54));
    v55.f32[0] = vmul_lane_f32(v55, v55, 1).f32[0];
    LODWORD(self->vGuidesAOE) = v55.i32[0];
    v55.f32[0] = v55.f32[0] / v33;
    v56 = self->minimumYawCorrectionAreaCoverage < v55.f32[0];
    self->vGuidesValid = v56;
    LODWORD(self->yawCorrectionAreaCoverage) = v55.i32[0];
    v32 = v97;
    if (!v56)
    {
      self->super.pitchFailureReason = 3;
    }
  }

  if (self->hGuidesValid)
  {
    v57 = *&self->_anon_208[4];
    v58 = vsub_f32(*&self->_anon_208[12], *&v57);
    v59 = vmul_f32(v58, v58);
    v59.i32[0] = vadd_f32(v59, vdup_lane_s32(v59, 1)).u32[0];
    v60 = vrsqrte_f32(v59.u32[0]);
    v61 = vmul_f32(v60, vrsqrts_f32(v59.u32[0], vmul_f32(v60, v60)));
    v62 = vmul_n_f32(v58, vmul_f32(v61, vrsqrts_f32(v59.u32[0], vmul_f32(v61, v61))).f32[0]);
    *buf = 0;
    LODWORD(v98) = 0;
    CI::Perspective::intersect(buf, &v98, v57, *&v62, v32);
    LODWORD(v63) = *buf;
    v94 = v63;
    v96 = *&v98;
    v64 = *&self->_anon_218[4];
    v65 = vsub_f32(*&self->_anon_218[12], *&v64);
    v66 = vmul_f32(v65, v65);
    v66.i32[0] = vadd_f32(v66, vdup_lane_s32(v66, 1)).u32[0];
    v67 = vrsqrte_f32(v66.u32[0]);
    v68 = vmul_f32(v67, vrsqrts_f32(v66.u32[0], vmul_f32(v67, v67)));
    v69 = vmul_n_f32(v65, vmul_f32(v68, vrsqrts_f32(v66.u32[0], vmul_f32(v68, v68))).f32[0]);
    *buf = 0;
    LODWORD(v98) = 0;
    v6 = CI::Perspective::intersect(buf, &v98, v64, *&v69, v97);
    v70 = vmla_n_f32(*&v57, v62, *&v94);
    v71 = vmla_n_f32(*&v57, v62, v96);
    v72 = vmla_n_f32(*&v64, v69, *buf);
    v73 = vmla_n_f32(*&v64, v69, *&v98);
    v74 = vbsl_s8(vcgt_f32(v70, v71), v70, v71);
    v75 = vbsl_s8(vcgt_f32(v72, v73), v72, v73);
    v76 = vbsl_s8(vcgt_f32(v71, v70), v70, v71);
    v77 = vbsl_s8(vcgt_f32(v73, v72), v72, v73);
    v78 = vsub_f32(vbsl_s8(vcgt_f32(v74, v75), v74, v75), vbsl_s8(vcgt_f32(v77, v76), v76, v77));
    v78.f32[0] = vmul_lane_f32(v78, v78, 1).f32[0];
    LODWORD(self->hGuidesAOE) = v78.i32[0];
    v78.f32[0] = v78.f32[0] / v33;
    isa = self[1].super.super.isa;
    self->hGuidesValid = *&isa < v78.f32[0];
    LODWORD(self->minimumPitchCorrectionAreaCoverage) = v78.i32[0];
    if (*&isa >= v78.f32[0])
    {
      self->super.yawFailureReason = 3;
    }
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::onceToken != -1)
  {
    [CIPerspectiveAutoCalcV1 standardizeImage];
  }

  if (CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump == 1)
  {
    v80 = CI::Perspective::gradMagImage(self->gradMap, v7);
    if (self->vGuidesValid)
    {
      v81 = CGColorCreateSRGB(0.0, 1.0, 0.0, 1.0);
      CI::Perspective::plotLines<CI::Perspective::Line>(v80, v81, &self->vLineCluster);
      v82 = CGColorCreateSRGB(0.0, 1.0, 1.0, 1.0);
      v83 = *&self->_anon_1f8[4];
      *buf = *&self->_anon_1e8[4];
      *&buf[16] = v83;
      operator new();
    }

    if (self->hGuidesValid)
    {
      v84 = CGColorCreateSRGB(0.0, 1.0, 0.0, 1.0);
      CI::Perspective::plotLines<CI::Perspective::Line>(v80, v84, p_hLineCluster);
      v85 = CGColorCreateSRGB(0.0, 1.0, 1.0, 1.0);
      v86 = *&self->_anon_218[4];
      *buf = *&self->_anon_208[4];
      *&buf[16] = v86;
      operator new();
    }

    v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/guides.png", v94];
    v6 = CI::Perspective::CIImageToFile(v80, v87, v88, *MEMORY[0x1E695F050]);
  }

  v89 = ci_signpost_log_perspectiveAC(v6, v7);
  v91 = ci_signpost_log_perspectiveAC(v89, v90);
  v92 = os_signpost_id_make_with_pointer(v91, self);
  if (v92 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v93 = v92;
    if (os_signpost_enabled(v89))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v89, OS_SIGNPOST_INTERVAL_END, v93, "computeGuides", &unk_19CFBCBAE, buf, 2u);
    }
  }
}

- (void)computeTransform
{
  if (self->vGuidesValid)
  {
    v3 = 0;
    v4 = *self->_anon_c0;
    v5 = *&self->_anon_c0[16];
    v6 = *&self->_anon_c0[32];
    v7 = *self->_anon_120;
    v8 = *&self->_anon_120[16];
    v9 = *&self->_anon_120[32];
    v139 = v7;
    v140 = v8;
    v141 = v9;
    do
    {
      *(&v142 + v3) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(&v139 + v3))), v5, *(&v139 + v3), 1), v6, *(&v139 + v3), 2);
      v3 += 16;
    }

    while (v3 != 48);
    v10 = 0;
    v11 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1e8[4])), v143, *&self->_anon_1e8[4], 1));
    *&v12 = vdivq_f32(v11, vdupq_laneq_s32(v11, 2)).u64[0];
    v139 = v7;
    v140 = v8;
    v141 = v9;
    do
    {
      *(&v142 + v10) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(&v139 + v10))), v5, *(&v139 + v10), 1), v6, *(&v139 + v10), 2);
      v10 += 16;
    }

    while (v10 != 48);
    v13 = 0;
    v14 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1e8[12])), v143, *&self->_anon_1e8[12], 1));
    *&v15 = vdivq_f32(v14, vdupq_laneq_s32(v14, 2)).u64[0];
    v139 = v7;
    v140 = v8;
    v141 = v9;
    do
    {
      *(&v142 + v13) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(&v139 + v13))), v5, *(&v139 + v13), 1), v6, *(&v139 + v13), 2);
      v13 += 16;
    }

    while (v13 != 48);
    v16 = 0;
    v17 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1f8[4])), v143, *&self->_anon_1f8[4], 1));
    *&v18 = vdivq_f32(v17, vdupq_laneq_s32(v17, 2)).u64[0];
    v139 = v7;
    v140 = v8;
    v141 = v9;
    do
    {
      *(&v142 + v16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(&v139 + v16))), v5, *(&v139 + v16), 1), v6, *(&v139 + v16), 2);
      v16 += 16;
    }

    while (v16 != 48);
    v19 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1f8[12])), v143, *&self->_anon_1f8[12], 1));
    self->rY = CI::Perspective::keystoneV(v12, v15, v18, COERCE_DOUBLE(vdiv_f32(*v19.i8, *&vdupq_laneq_s32(v19, 2))));
  }

  if (self->hGuidesValid)
  {
    v20 = 0;
    v21 = *self->_anon_c0;
    v22 = *&self->_anon_c0[16];
    v23 = *&self->_anon_c0[32];
    v24 = *self->_anon_120;
    v25 = *&self->_anon_120[16];
    v26 = *&self->_anon_120[32];
    v139 = v24;
    v140 = v25;
    v141 = v26;
    do
    {
      *(&v142 + v20) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v139 + v20))), v22, *(&v139 + v20), 1), v23, *(&v139 + v20), 2);
      v20 += 16;
    }

    while (v20 != 48);
    v27 = 0;
    v28 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_208[4])), v143, *&self->_anon_208[4], 1));
    *&v29 = vdivq_f32(v28, vdupq_laneq_s32(v28, 2)).u64[0];
    v139 = v24;
    v140 = v25;
    v141 = v26;
    do
    {
      *(&v142 + v27) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v139 + v27))), v22, *(&v139 + v27), 1), v23, *(&v139 + v27), 2);
      v27 += 16;
    }

    while (v27 != 48);
    v30 = 0;
    v31 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_208[12])), v143, *&self->_anon_208[12], 1));
    *&v32 = vdivq_f32(v31, vdupq_laneq_s32(v31, 2)).u64[0];
    v139 = v24;
    v140 = v25;
    v141 = v26;
    do
    {
      *(&v142 + v30) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v139 + v30))), v22, *(&v139 + v30), 1), v23, *(&v139 + v30), 2);
      v30 += 16;
    }

    while (v30 != 48);
    v33 = 0;
    v34 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_218[4])), v143, *&self->_anon_218[4], 1));
    *&v35 = vdivq_f32(v34, vdupq_laneq_s32(v34, 2)).u64[0];
    v139 = v24;
    v140 = v25;
    v141 = v26;
    do
    {
      *(&v142 + v33) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v139 + v33))), v22, *(&v139 + v33), 1), v23, *(&v139 + v33), 2);
      v33 += 16;
    }

    while (v33 != 48);
    v36 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_218[12])), v143, *&self->_anon_218[12], 1));
    self->rZ = CI::Perspective::keystoneH(v29, v32, v35, COERCE_DOUBLE(vdiv_f32(*v36.i8, *&vdupq_laneq_s32(v36, 2))));
  }

  begin = self->vLineCluster.__begin_;
  v38 = 0.0;
  v39 = 0.0;
  while (begin != self->vLineCluster.__end_)
  {
    v40 = *begin;
    v41 = *(begin + 8);
    begin = (begin + 16);
    v42 = vsub_f32(v40, v41);
    v39 = v39 + sqrtf(vaddv_f32(vmul_f32(v42, v42)));
  }

  v43 = self->hLineCluster.__begin_;
  end = self->hLineCluster.__end_;
  if (v43 != end)
  {
    v38 = 0.0;
    do
    {
      v45 = *v43;
      v46 = *(v43 + 8);
      v43 = (v43 + 16);
      v47 = vsub_f32(v45, v46);
      v38 = v38 + sqrtf(vaddv_f32(vmul_f32(v47, v47)));
    }

    while (v43 != end);
  }

  vGuidesAOE = self->vGuidesAOE;
  hGuidesAOE = self->hGuidesAOE;
  self->super.pitch = self->rY;
  rZ = self->rZ;
  self->super.yaw = rZ;
  pitch = self->super.pitch;
  if (pitch != 0.0)
  {
    v52 = -pitch;
    if (pitch >= 0.0)
    {
      v52 = self->super.pitch;
    }

    if (v52 > self->super.config.pitchLimit)
    {
      self->super.pitch = 0.0;
      self->super.pitchFailureReason = 1;
      rZ = self->super.yaw;
      pitch = 0.0;
    }
  }

  if (rZ == 0.0)
  {
    goto LABEL_38;
  }

  v53 = -rZ;
  if (rZ >= 0.0)
  {
    v53 = rZ;
  }

  if (v53 <= self->super.config.yawLimit)
  {
LABEL_38:
    if (pitch == 0.0)
    {
      if (rZ == 0.0)
      {
        return;
      }

      v101 = 0;
      v102 = *self->_anon_c0;
      v103 = *&self->_anon_c0[16];
      v104 = *&self->_anon_c0[32];
      v105 = *self->_anon_120;
      v106 = *&self->_anon_120[16];
      v107 = *&self->_anon_120[32];
      v139 = v105;
      v140 = v106;
      v141 = v107;
      do
      {
        *(&v142 + v101) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102, COERCE_FLOAT(*(&v139 + v101))), v103, *(&v139 + v101), 1), v104, *(&v139 + v101), 2);
        v101 += 16;
      }

      while (v101 != 48);
      v108 = 0;
      v109 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_208[4])), v143, *&self->_anon_208[4], 1));
      *&v110 = vdivq_f32(v109, vdupq_laneq_s32(v109, 2)).u64[0];
      v139 = v105;
      v140 = v106;
      v141 = v107;
      do
      {
        *(&v142 + v108) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102, COERCE_FLOAT(*(&v139 + v108))), v103, *(&v139 + v108), 1), v104, *(&v139 + v108), 2);
        v108 += 16;
      }

      while (v108 != 48);
      v111 = 0;
      v112 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_208[12])), v143, *&self->_anon_208[12], 1));
      *&v113 = vdivq_f32(v112, vdupq_laneq_s32(v112, 2)).u64[0];
      v139 = v105;
      v140 = v106;
      v141 = v107;
      do
      {
        *(&v142 + v111) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102, COERCE_FLOAT(*(&v139 + v111))), v103, *(&v139 + v111), 1), v104, *(&v139 + v111), 2);
        v111 += 16;
      }

      while (v111 != 48);
      v114 = 0;
      v115 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_218[4])), v143, *&self->_anon_218[4], 1));
      *&v116 = vdivq_f32(v115, vdupq_laneq_s32(v115, 2)).u64[0];
      v139 = v105;
      v140 = v106;
      v141 = v107;
      do
      {
        *(&v142 + v114) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102, COERCE_FLOAT(*(&v139 + v114))), v103, *(&v139 + v114), 1), v104, *(&v139 + v114), 2);
        v114 += 16;
      }

      while (v114 != 48);
      v117 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_218[12])), v143, *&self->_anon_218[12], 1));
      v118 = pitch;
      v119 = rZ;
      v120 = CI::Perspective::horizonH(self, v110, v113, v116, COERCE_DOUBLE(vdiv_f32(*v117.i8, *&vdupq_laneq_s32(v117, 2))), v118, v119);
      self->pitchCorrectionAreaCoverage = v120;
      v121 = v120;
      self->super.roll = v120;
      v122 = v120 < 0.0;
      if (v120 == 0.0)
      {
        return;
      }

      v123 = -v121;
      if (!v122)
      {
        v123 = v121;
      }

      if (v123 <= self->super.config.rollLimit)
      {
        return;
      }

      self->super.yaw = 0.0;
      self->super.roll = 0.0;
    }

    else
    {
      if (rZ == 0.0)
      {
        goto LABEL_50;
      }

      v54 = v39 * vGuidesAOE;
      v55 = v39 + v38;
      v56 = (v38 * hGuidesAOE) / v55;
      v57 = *self->_anon_c0;
      v58 = *&self->_anon_c0[16];
      v59 = *&self->_anon_c0[32];
      v61 = *self->_anon_120;
      v60 = *&self->_anon_120[16];
      v62 = *&self->_anon_120[32];
      v63 = 0;
      if ((v54 / v55) <= v56)
      {
        v139 = *self->_anon_120;
        v140 = v60;
        v141 = v62;
        do
        {
          *(&v142 + v63) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v139 + v63))), v58, *(&v139 + v63), 1), v59, *(&v139 + v63), 2);
          v63 += 16;
        }

        while (v63 != 48);
        v124 = 0;
        v125 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_208[4])), v143, *&self->_anon_208[4], 1));
        *&v126 = vdivq_f32(v125, vdupq_laneq_s32(v125, 2)).u64[0];
        v139 = v61;
        v140 = v60;
        v141 = v62;
        do
        {
          *(&v142 + v124) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v139 + v124))), v58, *(&v139 + v124), 1), v59, *(&v139 + v124), 2);
          v124 += 16;
        }

        while (v124 != 48);
        v127 = 0;
        v128 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_208[12])), v143, *&self->_anon_208[12], 1));
        *&v129 = vdivq_f32(v128, vdupq_laneq_s32(v128, 2)).u64[0];
        v139 = v61;
        v140 = v60;
        v141 = v62;
        do
        {
          *(&v142 + v127) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v139 + v127))), v58, *(&v139 + v127), 1), v59, *(&v139 + v127), 2);
          v127 += 16;
        }

        while (v127 != 48);
        v130 = 0;
        v131 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_218[4])), v143, *&self->_anon_218[4], 1));
        *&v132 = vdivq_f32(v131, vdupq_laneq_s32(v131, 2)).u64[0];
        v139 = v61;
        v140 = v60;
        v141 = v62;
        do
        {
          *(&v142 + v130) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v139 + v130))), v58, *(&v139 + v130), 1), v59, *(&v139 + v130), 2);
          v130 += 16;
        }

        while (v130 != 48);
        v133 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_218[12])), v143, *&self->_anon_218[12], 1));
        v134 = pitch;
        v135 = rZ;
        v76 = CI::Perspective::horizonH(self, v126, v129, v132, COERCE_DOUBLE(vdiv_f32(*v133.i8, *&vdupq_laneq_s32(v133, 2))), v134, v135);
      }

      else
      {
        v139 = *self->_anon_120;
        v140 = v60;
        v141 = v62;
        do
        {
          *(&v142 + v63) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v139 + v63))), v58, *(&v139 + v63), 1), v59, *(&v139 + v63), 2);
          v63 += 16;
        }

        while (v63 != 48);
        v64 = 0;
        v65 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1e8[4])), v143, *&self->_anon_1e8[4], 1));
        *&v66 = vdivq_f32(v65, vdupq_laneq_s32(v65, 2)).u64[0];
        v139 = v61;
        v140 = v60;
        v141 = v62;
        do
        {
          *(&v142 + v64) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v139 + v64))), v58, *(&v139 + v64), 1), v59, *(&v139 + v64), 2);
          v64 += 16;
        }

        while (v64 != 48);
        v67 = 0;
        v68 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1e8[12])), v143, *&self->_anon_1e8[12], 1));
        *&v69 = vdivq_f32(v68, vdupq_laneq_s32(v68, 2)).u64[0];
        v139 = v61;
        v140 = v60;
        v141 = v62;
        do
        {
          *(&v142 + v67) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v139 + v67))), v58, *(&v139 + v67), 1), v59, *(&v139 + v67), 2);
          v67 += 16;
        }

        while (v67 != 48);
        v70 = 0;
        v71 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1f8[4])), v143, *&self->_anon_1f8[4], 1));
        *&v72 = vdivq_f32(v71, vdupq_laneq_s32(v71, 2)).u64[0];
        v139 = v61;
        v140 = v60;
        v141 = v62;
        do
        {
          *(&v142 + v70) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v139 + v70))), v58, *(&v139 + v70), 1), v59, *(&v139 + v70), 2);
          v70 += 16;
        }

        while (v70 != 48);
        v73 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1f8[12])), v143, *&self->_anon_1f8[12], 1));
        v74 = pitch;
        v75 = rZ;
        v76 = CI::Perspective::horizonV(self, v66, v69, v72, COERCE_DOUBLE(vdiv_f32(*v73.i8, *&vdupq_laneq_s32(v73, 2))), v74, v75);
      }

      self->pitchCorrectionAreaCoverage = v76;
      v136 = v76;
      self->super.roll = v76;
      v137 = v76 < 0.0;
      if (v76 == 0.0)
      {
        return;
      }

      v138 = -v136;
      if (!v137)
      {
        v138 = v136;
      }

      if (v138 <= self->super.config.rollLimit)
      {
        return;
      }

      self->super.pitch = 0.0;
      self->super.yaw = 0.0;
      self->super.roll = 0.0;
      self->super.pitchFailureReason = 4;
    }

    v100 = &OBJC_IVAR___CIPerspectiveAutoCalc_yawFailureReason;
    goto LABEL_92;
  }

  self->super.yaw = 0.0;
  self->super.yawFailureReason = 1;
  pitch = self->super.pitch;
  rZ = 0.0;
  if (pitch == 0.0)
  {
    return;
  }

LABEL_50:
  v77 = 0;
  v78 = *self->_anon_c0;
  v79 = *&self->_anon_c0[16];
  v80 = *&self->_anon_c0[32];
  v81 = *self->_anon_120;
  v82 = *&self->_anon_120[16];
  v83 = *&self->_anon_120[32];
  v139 = v81;
  v140 = v82;
  v141 = v83;
  do
  {
    *(&v142 + v77) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*(&v139 + v77))), v79, *(&v139 + v77), 1), v80, *(&v139 + v77), 2);
    v77 += 16;
  }

  while (v77 != 48);
  v84 = 0;
  v85 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1e8[4])), v143, *&self->_anon_1e8[4], 1));
  *&v86 = vdivq_f32(v85, vdupq_laneq_s32(v85, 2)).u64[0];
  v139 = v81;
  v140 = v82;
  v141 = v83;
  do
  {
    *(&v142 + v84) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*(&v139 + v84))), v79, *(&v139 + v84), 1), v80, *(&v139 + v84), 2);
    v84 += 16;
  }

  while (v84 != 48);
  v87 = 0;
  v88 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1e8[12])), v143, *&self->_anon_1e8[12], 1));
  *&v89 = vdivq_f32(v88, vdupq_laneq_s32(v88, 2)).u64[0];
  v139 = v81;
  v140 = v82;
  v141 = v83;
  do
  {
    *(&v142 + v87) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*(&v139 + v87))), v79, *(&v139 + v87), 1), v80, *(&v139 + v87), 2);
    v87 += 16;
  }

  while (v87 != 48);
  v90 = 0;
  v91 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1f8[4])), v143, *&self->_anon_1f8[4], 1));
  *&v92 = vdivq_f32(v91, vdupq_laneq_s32(v91, 2)).u64[0];
  v139 = v81;
  v140 = v82;
  v141 = v83;
  do
  {
    *(&v142 + v90) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*(&v139 + v90))), v79, *(&v139 + v90), 1), v80, *(&v139 + v90), 2);
    v90 += 16;
  }

  while (v90 != 48);
  v93 = vaddq_f32(v144, vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*&self->_anon_1f8[12])), v143, *&self->_anon_1f8[12], 1));
  v94 = pitch;
  v95 = rZ;
  v96 = CI::Perspective::horizonV(self, v86, v89, v92, COERCE_DOUBLE(vdiv_f32(*v93.i8, *&vdupq_laneq_s32(v93, 2))), v94, v95);
  self->pitchCorrectionAreaCoverage = v96;
  v97 = v96;
  self->super.roll = v96;
  v98 = v96 < 0.0;
  if (v96 != 0.0)
  {
    v99 = -v97;
    if (!v98)
    {
      v99 = v97;
    }

    if (v99 > self->super.config.rollLimit)
    {
      self->super.pitch = 0.0;
      self->super.roll = 0.0;
      v100 = &OBJC_IVAR___CIPerspectiveAutoCalc_pitchFailureReason;
LABEL_92:
      *(&self->super.super.isa + *v100) = 4;
    }
  }
}

- (id).cxx_construct
{
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 18) = 0u;
  *(self + 19) = 0u;
  *(self + 20) = 0u;
  *(self + 48) = 0;
  *(self + 49) = 0;
  *(self + 47) = 0;
  *(self + 51) = 0;
  *(self + 52) = 0;
  *(self + 50) = 0;
  *(self + 54) = 0;
  *(self + 55) = 0;
  *(self + 53) = 0;
  *(self + 57) = 0;
  *(self + 58) = 0;
  *(self + 56) = 0;
  *(self + 69) = 0x100000001;
  return self;
}

- (uint64_t)clusterLineSegments
{
  self[3] = 0;
  self[4] = a4;
  if (a2)
  {
    if (a2 < 0x666666666666667)
    {
      operator new();
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  *self = 0;
  self[1] = 40 * a3;
  self[2] = 40 * a3;
  self[3] = 0;
  return self;
}

@end