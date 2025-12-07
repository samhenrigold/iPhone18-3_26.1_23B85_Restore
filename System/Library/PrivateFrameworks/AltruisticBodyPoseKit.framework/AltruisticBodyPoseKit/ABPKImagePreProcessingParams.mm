@interface ABPKImagePreProcessingParams
+ (double)convert2DPoint:(uint64_t)point toInputSpaceWithParams:(void *)params;
- (ABPKImagePreProcessingParams)initWithType:(int)type inputResolution:(CGSize)resolution outputResolution:(CGSize)outputResolution;
- (CGSize)inputResolution;
- (CGSize)outputResolution;
- (void)printData;
@end

@implementation ABPKImagePreProcessingParams

- (ABPKImagePreProcessingParams)initWithType:(int)type inputResolution:(CGSize)resolution outputResolution:(CGSize)outputResolution
{
  height = outputResolution.height;
  width = outputResolution.width;
  v7 = resolution.height;
  v8 = resolution.width;
  v15.receiver = self;
  v15.super_class = ABPKImagePreProcessingParams;
  v10 = [(ABPKImagePreProcessingParams *)&v15 init];
  if (v10)
  {
    if (type <= 2)
    {
      v11 = qword_23EE28150[type];
      v12 = [objc_alloc(*off_278C71878[type]) initWithInputResolution:v8 andOutputResolution:{v7, width, height}];
      v13 = *(&v10->super.isa + v11);
      *(&v10->super.isa + v11) = v12;
    }

    v10->_type = type;
    v10->_inputResolution.width = v8;
    v10->_inputResolution.height = v7;
    v10->_outputResolution.width = width;
    v10->_outputResolution.height = height;
  }

  return v10;
}

- (void)printData
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = __ABPKLogSharedInstance(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    width = self->_inputResolution.width;
    height = self->_inputResolution.height;
    v33 = 134218240;
    v34 = width;
    v35 = 2048;
    v36 = height;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " Input Resolution: (%f,%f) ", &v33, 0x16u);
  }

  v7 = __ABPKLogSharedInstance(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = self->_outputResolution.width;
    v9 = self->_outputResolution.height;
    v33 = 134218240;
    v34 = v8;
    v35 = 2048;
    v36 = v9;
    _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_DEBUG, " Output Resolution: (%f,%f) ", &v33, 0x16u);
  }

  type = self->_type;
  if (!type)
  {
    v28 = __ABPKLogSharedInstance(v10);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_28;
    }

    LOWORD(v33) = 0;
    v30 = "  ";
    goto LABEL_26;
  }

  if (type == 1)
  {
    v28 = __ABPKLogSharedInstance(v10);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_28;
    }

    LOWORD(v33) = 0;
    v30 = "  ";
LABEL_26:
    v31 = v28;
    v32 = 2;
    goto LABEL_27;
  }

  if (type != 2)
  {
    return;
  }

  v12 = __ABPKLogSharedInstance(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v33) = 0;
    _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " Type: ScalingPadding ", &v33, 2u);
  }

  v14 = __ABPKLogSharedInstance(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v33) = 0;
    _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_DEBUG, " Padding Parameters: ", &v33, 2u);
  }

  v16 = __ABPKLogSharedInstance(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [(ABPKPaddingParams *)self->_paddingParams scale];
    v33 = 134217984;
    v34 = v17;
    _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_DEBUG, " /t scale:        %f ", &v33, 0xCu);
  }

  v19 = __ABPKLogSharedInstance(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    height = [(ABPKPaddingParams *)self->_paddingParams height];
    v33 = 67109120;
    LODWORD(v34) = height;
    _os_log_impl(&dword_23EDDC000, v19, OS_LOG_TYPE_DEBUG, " /t height:       %u ", &v33, 8u);
  }

  v22 = __ABPKLogSharedInstance(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    width = [(ABPKPaddingParams *)self->_paddingParams width];
    v33 = 67109120;
    LODWORD(v34) = width;
    _os_log_impl(&dword_23EDDC000, v22, OS_LOG_TYPE_DEBUG, " /t width:        %u ", &v33, 8u);
  }

  v25 = __ABPKLogSharedInstance(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    offsetHeight = [(ABPKPaddingParams *)self->_paddingParams offsetHeight];
    v33 = 67109120;
    LODWORD(v34) = offsetHeight;
    _os_log_impl(&dword_23EDDC000, v25, OS_LOG_TYPE_DEBUG, " /t offsetHeight: %u ", &v33, 8u);
  }

  v28 = __ABPKLogSharedInstance(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    offsetWidth = [(ABPKPaddingParams *)self->_paddingParams offsetWidth];
    v33 = 67109120;
    LODWORD(v34) = offsetWidth;
    v30 = " /t offsetWidth:  %u ";
    v31 = v28;
    v32 = 8;
LABEL_27:
    _os_log_impl(&dword_23EDDC000, v31, OS_LOG_TYPE_DEBUG, v30, &v33, v32);
  }

LABEL_28:
}

+ (double)convert2DPoint:(uint64_t)point toInputSpaceWithParams:(void *)params
{
  paramsCopy = params;
  if ([paramsCopy type] != 2)
  {
    if ([paramsCopy type])
    {
      type = [paramsCopy type];
      if (type == 1)
      {
        scalingParams = [paramsCopy scalingParams];

        if (scalingParams)
        {
          scalingParams2 = [paramsCopy scalingParams];
          [scalingParams2 widthScale];
          v41 = v25;

          scalingParams3 = [paramsCopy scalingParams];
          [scalingParams3 heightScale];
          __asm { FMOV            V2.2D, #1.0 }

          _D9 = vcvt_f32_f64(vmulq_f64(vdivq_f64(_Q2, vcvtq_f64_f32(__PAIR64__(v26, v41))), vcvtq_f64_f32(self)));
          goto LABEL_12;
        }

        v38 = __ABPKLogSharedInstance(v23);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, v38, OS_LOG_TYPE_ERROR, " Scaling Parameters not specified ", buf, 2u);
        }
      }

      v28 = __ABPKLogSharedInstance(type);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *v43 = 0;
        v29 = " Invalid Image Pre-Processing type specified ";
        v30 = v43;
        goto LABEL_20;
      }
    }

    else
    {
      cropParams = [paramsCopy cropParams];

      if (cropParams)
      {
        cropParams2 = [paramsCopy cropParams];
        width = [cropParams2 width];
        [paramsCopy outputResolution];
        *&v35 = width / v35;
        v42 = *&v35;

        cropParams3 = [paramsCopy cropParams];
        offsetWidth = [cropParams3 offsetWidth];

        scalingParams3 = [paramsCopy cropParams];
        _D9 = vmla_n_f32(vcvt_f32_u32(__PAIR64__([scalingParams3 offsetHeight], offsetWidth)), self, v42);
        goto LABEL_12;
      }

      v28 = __ABPKLogSharedInstance(v32);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v45 = 0;
        v29 = " Crop Parameters not specified ";
        v30 = &v45;
        goto LABEL_20;
      }
    }

LABEL_21:

    __asm { FMOV            V9.2S, #-1.0 }

    goto LABEL_22;
  }

  paddingParams = [paramsCopy paddingParams];

  if (!paddingParams)
  {
    v28 = __ABPKLogSharedInstance(v7);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v46 = 0;
      v29 = " Padding Parameters not specified ";
      v30 = &v46;
LABEL_20:
      _os_log_impl(&dword_23EDDC000, v28, OS_LOG_TYPE_ERROR, v29, v30, 2u);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  paddingParams2 = [paramsCopy paddingParams];
  offsetWidth2 = [paddingParams2 offsetWidth];
  paddingParams3 = [paramsCopy paddingParams];
  [paddingParams3 scale];
  v40 = v11;

  scalingParams3 = [paramsCopy paddingParams];
  LODWORD(paddingParams3) = [scalingParams3 offsetHeight];
  paddingParams4 = [paramsCopy paddingParams];
  [paddingParams4 scale];
  __asm { FMOV            V2.2D, #1.0 }

  _D9 = vcvt_f32_f64(vmulq_f64(vdivq_f64(_Q2, vcvtq_f64_f32(__PAIR64__(v14, v40))), vcvtq_f64_f32(vsub_f32(self, vcvt_f32_u32(__PAIR64__(paddingParams3, offsetWidth2))))));

LABEL_12:
LABEL_22:

  return *&_D9;
}

- (CGSize)inputResolution
{
  width = self->_inputResolution.width;
  height = self->_inputResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)outputResolution
{
  width = self->_outputResolution.width;
  height = self->_outputResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

@end