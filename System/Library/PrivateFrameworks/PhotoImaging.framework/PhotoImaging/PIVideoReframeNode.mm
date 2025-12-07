@interface PIVideoReframeNode
- ($721907E0E1CDE8B6CD3FA271A8B25860)stabCropRect;
- (PIVideoReframeNode)initWithKeyframes:(id)keyframes stabCropRect:(id *)rect input:(id)input;
- (PIVideoReframeNode)initWithSettings:(id)settings inputs:(id)inputs;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateImageGeometry:(id *)geometry;
- (id)_evaluateVideoProperties:(id *)properties;
- (id)_stabilizeImage:(double)image cleanRect:(double)rect cropRect:(double)cropRect transform:(double)transform geometry:(double)geometry;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
- (void)setFrameDuration:(id *)duration;
- (void)setStabCropRect:(id *)rect;
@end

@implementation PIVideoReframeNode

- (void)setFrameDuration:(id *)duration
{
  var3 = duration->var3;
  *&self->_frameDuration.value = *&duration->var0;
  self->_frameDuration.epoch = var3;
}

- (void)setStabCropRect:(id *)rect
{
  var1 = rect->var1;
  self->_stabCropRect.origin = rect->var0;
  self->_stabCropRect.size = var1;
}

- ($721907E0E1CDE8B6CD3FA271A8B25860)stabCropRect
{
  v3 = *&self[7].var0.var1;
  retstr->var0 = *&self[6].var1.var1;
  retstr->var1 = v3;
  return self;
}

- (id)_stabilizeImage:(double)image cleanRect:(double)rect cropRect:(double)cropRect transform:(double)transform geometry:(double)geometry
{
  v70[4] = *MEMORY[0x1E69E9840];
  v21 = a12;
  v22 = a11;
  [v21 renderScale];
  NUScaleToDouble();
  v67 = v23;
  NUScaleRect();
  v25 = v24;
  v27 = v26;
  v28 = [v22 imageByCroppingToRect:?];

  CGAffineTransformMakeTranslation(&v68, -v25, -v27);
  v29 = [v28 imageByApplyingTransform:&v68];

  objc_msgSend_extent(v29);
  MinX = CGRectGetMinX(v72);
  objc_msgSend_extent(v29);
  MaxY = CGRectGetMaxY(v73);
  objc_msgSend_extent(v29);
  MaxX = CGRectGetMaxX(v74);
  objc_msgSend_extent(v29);
  v33 = CGRectGetMaxY(v75);
  objc_msgSend_extent(v29);
  v34 = CGRectGetMinX(v76);
  objc_msgSend_extent(v29);
  MinY = CGRectGetMinY(v77);
  objc_msgSend_extent(v29);
  v36 = CGRectGetMaxX(v78);
  objc_msgSend_extent(v29);
  v37 = CGRectGetMinY(v79);
  v38 = MinX / v67;
  v39 = MaxY / v67;
  v40 = vaddq_f32(a19, vmlaq_n_f32(vmulq_n_f32(a17, v38), a18, v39));
  v41 = vmulq_n_f64(vcvtq_f64_f32(vdiv_f32(*v40.i8, vdup_laneq_s32(v40, 2))), v67);
  *v40.i32 = MaxX / v67;
  v42 = v33 / v67;
  v43 = vaddq_f32(a19, vmlaq_n_f32(vmulq_n_f32(a17, *v40.i32), a18, v42));
  v65 = vmulq_n_f64(vcvtq_f64_f32(vdiv_f32(*v43.i8, vdup_laneq_s32(v43, 2))), v67);
  *v43.i32 = v34 / v67;
  v44 = MinY / v67;
  v45 = vaddq_f32(a19, vmlaq_n_f32(vmulq_n_f32(a17, *v43.i32), a18, v44));
  v64 = vmulq_n_f64(vcvtq_f64_f32(vdiv_f32(*v45.i8, vdup_laneq_s32(v45, 2))), v67);
  *v45.i32 = v36 / v67;
  *&v37 = v37 / v67;
  v46 = vaddq_f32(a19, vmlaq_n_f32(vmulq_n_f32(a17, *v45.i32), a18, *&v37));
  v66 = vmulq_n_f64(vcvtq_f64_f32(vdiv_f32(*v46.i8, vdup_laneq_s32(v46, 2))), v67);
  v69[0] = @"inputTopLeft";
  v47 = [MEMORY[0x1E695F688] vectorWithCGPoint:*&v41];
  v70[0] = v47;
  v69[1] = @"inputTopRight";
  v48 = [MEMORY[0x1E695F688] vectorWithCGPoint:*&v65];
  v70[1] = v48;
  v69[2] = @"inputBottomLeft";
  v49 = [MEMORY[0x1E695F688] vectorWithCGPoint:*&v64];
  v70[2] = v49;
  v69[3] = @"inputBottomRight";
  v50 = [MEMORY[0x1E695F688] vectorWithCGPoint:*&v66];
  v70[3] = v50;
  v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:4];
  v52 = [v29 imageByApplyingFilter:@"CIPerspectiveTransform" withInputParameters:v51];

  NUScaleRect();
  v54 = v53;
  v56 = v55;
  scaledSize = [v21 scaledSize];
  v59 = v58;

  v60 = [v52 imageByCroppingToRect:{v54, v56, scaledSize, v59}];
  CGAffineTransformMakeTranslation(&v68, -v54, -v56);
  v61 = [v60 imageByApplyingTransform:&v68];

  if (*(self + 168) == 1)
  {
    pi_imageByApplyingStabilizationWatermark = [v61 pi_imageByApplyingStabilizationWatermark];

    v61 = pi_imageByApplyingStabilizationWatermark;
  }

  return v61;
}

- (id)_evaluateImage:(id *)image
{
  v5 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v48 = 0;
  v6 = [v5 outputImage:&v48];
  v7 = v48;
  if (!v6)
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Could not get the input image" object:self underlyingError:v7];
    *image = v13 = 0;
    goto LABEL_20;
  }

  v47 = 0;
  v8 = [(NURenderNode *)self outputImageGeometry:&v47];
  v9 = v47;

  if (v8)
  {
    v46 = 0;
    v10 = [(NURenderNode *)self imageProperties:&v46];
    v7 = v46;

    if (!v10)
    {
      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Could not get the input image properties" object:self underlyingError:v7];
      *image = v13 = 0;
LABEL_18:

      goto LABEL_19;
    }

    settings = [(NURenderNode *)self settings];
    v12 = [settings objectForKeyedSubscript:@"pipelineState"];

    v44 = 0uLL;
    v45 = 0;
    if (v12)
    {
      objc_msgSend_rawTime(v12);
      if (BYTE12(v44))
      {
LABEL_12:
        inputVideoProperties = [(PIVideoReframeNode *)self inputVideoProperties];
        v15 = inputVideoProperties;
        if (inputVideoProperties)
        {
          objc_msgSend_cleanAperture(inputVideoProperties);
        }

        else
        {
          v42 = 0u;
          v43 = 0u;
        }

        NUPixelRectToCGRect();
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        objc_msgSend_stabCropRect(self);
        NUPixelRectToCGRect();
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        keyframeSequence = [(PIVideoReframeNode *)self keyframeSequence];
        v42 = v44;
        *&v43 = v45;
        [keyframeSequence homographyAtTime:&v42];
        v33.i32[3] = 0;
        v34.i32[3] = 0;
        v39 = v34;
        v40 = v33;
        v35.i32[3] = 0;
        v41 = v35;

        v36 = vandq_s8(vandq_s8(vceqq_f32(v40, *MEMORY[0x1E69E9B10]), vceqq_f32(v39, *(MEMORY[0x1E69E9B10] + 16))), vceqq_f32(v41, *(MEMORY[0x1E69E9B10] + 32)));
        v36.i32[3] = v36.i32[2];
        if ((vminvq_u32(v36) & 0x80000000) == 0)
        {
          v37 = [(PIVideoReframeNode *)self _stabilizeImage:v6 cleanRect:v8 cropRect:v17 transform:v19 geometry:v21, v23, v25, v27, v29, v31, *&v40, *&v39, *&v41];

          v6 = v37;
        }

        v6 = v6;

        v13 = v6;
        goto LABEL_18;
      }

      objc_msgSend_time(v12);
    }

    else
    {
      v42 = 0uLL;
      *&v43 = 0;
    }

    v44 = v42;
    v45 = v43;
    goto LABEL_12;
  }

  [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Could not get the input geometry" object:self underlyingError:v9];
  *image = v13 = 0;
  v7 = v9;
LABEL_19:

LABEL_20:

  return v13;
}

- (id)_evaluateImageGeometry:(id *)geometry
{
  v32 = *MEMORY[0x1E69E9840];
  if (!geometry)
  {
    v16 = NUAssertLogger_26400();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      *&buf[4] = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_26400();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(*v18);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v24;
        *&buf[12] = 2114;
        *&buf[14] = v28;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  inputs = [(NURenderNode *)self inputs];
  v6 = [inputs objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  v30 = 0;
  v7 = [v6 outputImageGeometry:&v30];
  v8 = v30;
  if (v7)
  {
    memset(buf, 0, 32);
    objc_msgSend_stabCropRect(self);
    *buf = *MEMORY[0x1E69B38F8];
    v9 = objc_alloc(MEMORY[0x1E69B3B18]);
    renderScale = [v7 renderScale];
    v12 = v11;
    orientation = [v7 orientation];
    v29[0] = *buf;
    v29[1] = *&buf[16];
    v14 = [v9 initWithExtent:v29 renderScale:renderScale orientation:{v12, orientation}];
  }

  else
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to get input geometry" object:self underlyingError:v8];
    *geometry = v14 = 0;
  }

  return v14;
}

- (id)_evaluateVideoProperties:(id *)properties
{
  v30 = *MEMORY[0x1E69E9840];
  if (!properties)
  {
    v15 = NUAssertLogger_26400();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_26400();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(*v17);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v23;
        *&buf[12] = 2114;
        *&buf[14] = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  inputs = [(NURenderNode *)self inputs];
  v6 = [inputs objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  v7 = [v6 videoProperties:properties];
  if (v7)
  {
    v8 = [(NURenderNode *)self outputImageGeometry:properties];
    v9 = v8;
    if (v8)
    {
      scaledSize = [v8 scaledSize];
      v12 = v11;
      v13 = [objc_alloc(MEMORY[0x1E69B3D68]) initWithProperties:v7];
      *buf = 0;
      *&buf[8] = 0;
      *&buf[16] = scaledSize;
      v29 = v12;
      [v13 setCleanAperture:buf];
      [v13 setSize:{scaledSize, v12}];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v19.receiver = self;
  v19.super_class = PIVideoReframeNode;
  v8 = [(NURenderNode *)&v19 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:?];
  inputs = [(NURenderNode *)self inputs];
  v10 = [inputs objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];
  v11 = [v10 videoProperties:error];

  v12 = [(NURenderNode *)self outputVideoComposition:error];
  if (v8)
  {
    [v8 setKeyframeSequence:self->_keyframeSequence];
    size = self->_stabCropRect.size;
    origin = self->_stabCropRect.origin;
    v18 = size;
    [v8 setStabCropRect:&origin];
    [v8 setShouldApplyWatermark:self->_shouldApplyWatermark];
    [v8 setInputVideoProperties:v11];
    if (v12)
    {
      objc_msgSend_frameDuration(v12);
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    origin = v15;
    v18.width = v16;
    [v8 setFrameDuration:&origin];
  }

  return v8;
}

- (PIVideoReframeNode)initWithSettings:(id)settings inputs:(id)inputs
{
  v35 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  inputsCopy = inputs;
  v8 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = MEMORY[0x1E69B3D70];
    v10 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = v10;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      v16 = [v11 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v14, v15];
      *buf = 138543362;
      v32 = v16;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v17 = *v8;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v17 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_128_26418);
        }

LABEL_11:
        v23 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v25 = MEMORY[0x1E696AF00];
          v26 = specific;
          v27 = v23;
          callStackSymbols = [v25 callStackSymbols];
          v29 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v32 = specific;
          v33 = 2114;
          v34 = v29;
          _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v17 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_128_26418);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v18 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v19 = MEMORY[0x1E696AF00];
      v20 = v18;
      callStackSymbols2 = [v19 callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v22;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v30 = objc_opt_class();
    NSStringFromClass(v30);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_128_26418);
  }
}

- (PIVideoReframeNode)initWithKeyframes:(id)keyframes stabCropRect:(id *)rect input:(id)input
{
  v32[1] = *MEMORY[0x1E69E9840];
  keyframesCopy = keyframes;
  inputCopy = input;
  var1 = rect->var1;
  var0 = rect->var0;
  v28 = var1;
  if (NUPixelRectIsEmpty())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PIVideoReframeNode.m" lineNumber:62 description:@"invalid crop rect"];
  }

  v31 = @"pipelineState";
  v12 = objc_alloc_init(PITimeVaryingPipelineStateSetting);
  v32[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];

  v29 = *MEMORY[0x1E695FAB0];
  v30 = inputCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v26.receiver = self;
  v26.super_class = PIVideoReframeNode;
  v15 = [(NURenderNode *)&v26 initWithSettings:v13 inputs:v14];
  if (v15)
  {
    v16 = [[PIReframeKeyframeSequence alloc] initWithKeyframeArray:keyframesCopy];
    [(PIVideoReframeNode *)v15 setKeyframeSequence:v16];

    v17 = rect->var1;
    var0 = rect->var0;
    v28 = v17;
    [(PIVideoReframeNode *)v15 setStabCropRect:&var0];
    if (NUIsAppleInternal())
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v19 = [standardUserDefaults dictionaryForKey:@"PURootSettings"];

      v20 = [v19 objectForKey:@"PXSettingsArchiveKey"];

      v21 = [v20 objectForKey:@"photoEditingSettings"];

      v22 = [v21 objectForKey:@"showStabilizationWatermark"];

      if (v22)
      {
        v23 = [v21 objectForKey:@"showStabilizationWatermark"];
        LOBYTE(v22) = [v23 BOOLValue];
      }

      v15->_shouldApplyWatermark = v22;
    }
  }

  return v15;
}

@end