@interface SISceneUnderstanding
+ (CGSize)inputResolution;
- (BOOL)initMLNetworkWithComputeEngine:(int64_t)engine;
- (SISceneUnderstanding)initWithComputeEngine:(int64_t)engine;
- (_SITensorDim)labelTensorDimensions;
- (_SITensorDim)normalTensorDimensions;
- (_SITensorDim)probabilitiesTensorDimensions;
- (int64_t)evaluateImage:(__CVBuffer *)image results:(id)results;
- (void)dealloc;
@end

@implementation SISceneUnderstanding

- (SISceneUnderstanding)initWithComputeEngine:(int64_t)engine
{
  v8.receiver = self;
  v8.super_class = SISceneUnderstanding;
  v4 = [(SISceneUnderstanding *)&v8 init];
  v5 = v4;
  if (v4 && [(SISceneUnderstanding *)v4 initMLNetworkWithComputeEngine:engine])
  {
    v5->_parameters.input.resolution = kSISceneUnderstandingNetworkResolution;
    v5->_parameters.output = kSISceneUnderstandingNetworkResolution;
    *&v5->_parameters.input.preprocessor.bias_r = xmmword_21DECC1B0;
    v5->_parameters.input.preprocessor.network_wants_bgr = 0;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (CGSize)inputResolution
{
  v2 = 256.0;
  v3 = 192.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_SITensorDim)labelTensorDimensions
{
  v3 = *&self[4].value[2];
  *retstr->value = *self[4].value;
  *&retstr->value[2] = v3;
  return self;
}

- (_SITensorDim)normalTensorDimensions
{
  v3 = *&self[5].value[2];
  *retstr->value = *self[5].value;
  *&retstr->value[2] = v3;
  return self;
}

- (_SITensorDim)probabilitiesTensorDimensions
{
  v3 = *&self[6].value[2];
  *retstr->value = *self[6].value;
  *&retstr->value[2] = v3;
  return self;
}

- (BOOL)initMLNetworkWithComputeEngine:(int64_t)engine
{
  v54 = *MEMORY[0x277D85DE8];
  context = espresso_create_context();
  self->_context = context;
  if (!context)
  {
    return 0;
  }

  Espresso::get_internal_context(&v45, context, v5);
  *(v45 + 68) = 1;
  self->_plan = espresso_create_plan();
  v6 = +[SIMSceneUnderstanding compiledModelPath];
  v7 = v6;
  if (!v6)
  {
    v8 = __SceneIntelligenceLogSharedInstance(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      uTF8String = [0 UTF8String];
      *buf = 136381187;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
      *&buf[12] = 1025;
      *&buf[14] = 349;
      *&buf[18] = 2081;
      *&buf[20] = uTF8String;
      _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Could not load network %{private}s ***", buf, 0x1Cu);
    }

    goto LABEL_47;
  }

  v8 = [v6 stringByAppendingPathComponent:@"model.espresso.net"];
  v9 = v8;
  [v8 UTF8String];
  v10 = espresso_plan_add_network();
  if (v10)
  {
    v11 = __SceneIntelligenceLogSharedInstance(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = v7;
      uTF8String2 = [v7 UTF8String];
      *buf = 136381187;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
      *&buf[12] = 1025;
      *&buf[14] = 358;
      *&buf[18] = 2081;
      *&buf[20] = uTF8String2;
      _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Could not add espresso network %{private}s ***", buf, 0x1Cu);
    }

    goto LABEL_46;
  }

  v16 = espresso_plan_build();
  if (v16)
  {
    v11 = __SceneIntelligenceLogSharedInstance(v16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = v7;
      uTF8String3 = [v7 UTF8String];
      *buf = 136381187;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
      *&buf[12] = 1025;
      *&buf[14] = 364;
      *&buf[18] = 2081;
      *&buf[20] = uTF8String3;
      _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Could not build espresso plan %{private}s ***", buf, 0x1Cu);
    }

    goto LABEL_46;
  }

  memset(buf, 0, 32);
  [kSIMSceneUnderstandingInputTensorName UTF8String];
  blob_dimensions = espresso_network_query_blob_dimensions();
  if (blob_dimensions)
  {
    v11 = __SceneIntelligenceLogSharedInstance(blob_dimensions);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = v7;
      uTF8String4 = [v7 UTF8String];
      *v47 = 136381187;
      v48 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
      v49 = 1025;
      v50 = 371;
      v51 = 2081;
      v52 = uTF8String4;
      v22 = " %{private}s:%{private}d *** Failure to bind input tensor for scene understanding %{private}s ***";
LABEL_45:
      _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, v22, v47, 0x1Cu);
    }
  }

  else
  {
    [kSIMSceneUnderstandingOutputLabelsTensorName UTF8String];
    v23 = espresso_network_query_blob_dimensions();
    if (v23)
    {
      v11 = __SceneIntelligenceLogSharedInstance(v23);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v24 = v7;
        uTF8String5 = [v7 UTF8String];
        *v47 = 136381187;
        v48 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
        v49 = 1025;
        v50 = 377;
        v51 = 2081;
        v52 = uTF8String5;
        v22 = " %{private}s:%{private}d *** Failure to determine output tensor shape for scene understanding %{private}s ***";
        goto LABEL_45;
      }
    }

    else
    {
      [kSIMSceneUnderstandingOutputNormalsTensorName UTF8String];
      v26 = espresso_network_query_blob_dimensions();
      if (v26)
      {
        v11 = __SceneIntelligenceLogSharedInstance(v26);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v27 = v7;
          uTF8String6 = [v7 UTF8String];
          *v47 = 136381187;
          v48 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
          v49 = 1025;
          v50 = 383;
          v51 = 2081;
          v52 = uTF8String6;
          v22 = " %{private}s:%{private}d *** Failure to determine output tensor shape for scene understanding %{private}s ***";
          goto LABEL_45;
        }
      }

      else
      {
        [kSIMSceneUnderstandingOutputProbabilitiesTensorName UTF8String];
        v29 = espresso_network_query_blob_dimensions();
        if (v29)
        {
          v11 = __SceneIntelligenceLogSharedInstance(v29);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v30 = v7;
            uTF8String7 = [v7 UTF8String];
            *v47 = 136381187;
            v48 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
            v49 = 1025;
            v50 = 389;
            v51 = 2081;
            v52 = uTF8String7;
            v22 = " %{private}s:%{private}d *** Failure to determine output tensor shape for scene understanding %{private}s ***";
            goto LABEL_45;
          }
        }

        else if (*buf == self->_variables.output.labels.value[0])
        {
          if (*&buf[8] == self->_variables.output.labels.value[1])
          {
            if (*&buf[16] == 3)
            {
              if (self->_variables.output.labels.value[2] == 1)
              {
                if (*&buf[24] == self->_variables.output.labels.value[3])
                {
                  if (*&buf[8] == 192)
                  {
                    v14 = 1;
                    goto LABEL_48;
                  }

                  v11 = __SceneIntelligenceLogSharedInstance(v29);
                  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_46;
                  }

                  v42 = v7;
                  uTF8String8 = [v7 UTF8String];
                  *v47 = 136381187;
                  v48 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
                  v49 = 1025;
                  v50 = 424;
                  v51 = 2081;
                  v52 = uTF8String8;
                  v22 = " %{private}s:%{private}d *** Input-Output channel [1] not expected size %{private}s ***";
                  goto LABEL_45;
                }

                v11 = __SceneIntelligenceLogSharedInstance(v29);
                if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                {
                  v40 = v7;
                  uTF8String9 = [v7 UTF8String];
                  *v47 = 136381187;
                  v48 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
                  v49 = 1025;
                  v50 = 414;
                  v51 = 2081;
                  v52 = uTF8String9;
                  v22 = " %{private}s:%{private}d *** Input-Output channel [3] size mismatch %{private}s ***";
                  goto LABEL_45;
                }
              }

              else
              {
                v11 = __SceneIntelligenceLogSharedInstance(v29);
                if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                {
                  v38 = v7;
                  uTF8String10 = [v7 UTF8String];
                  *v47 = 136381187;
                  v48 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
                  v49 = 1025;
                  v50 = 409;
                  v51 = 2081;
                  v52 = uTF8String10;
                  v22 = " %{private}s:%{private}d *** Output channel [2] size mismatch %{private}s ***";
                  goto LABEL_45;
                }
              }
            }

            else
            {
              v11 = __SceneIntelligenceLogSharedInstance(v29);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                v36 = v7;
                uTF8String11 = [v7 UTF8String];
                *v47 = 136381187;
                v48 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
                v49 = 1025;
                v50 = 404;
                v51 = 2081;
                v52 = uTF8String11;
                v22 = " %{private}s:%{private}d *** Input channel [2] size mismatch %{private}s ***";
                goto LABEL_45;
              }
            }
          }

          else
          {
            v11 = __SceneIntelligenceLogSharedInstance(v29);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v34 = v7;
              uTF8String12 = [v7 UTF8String];
              *v47 = 136381187;
              v48 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
              v49 = 1025;
              v50 = 399;
              v51 = 2081;
              v52 = uTF8String12;
              v22 = " %{private}s:%{private}d *** Input-Output channel [1] size mismatch %{private}s ***";
              goto LABEL_45;
            }
          }
        }

        else
        {
          v11 = __SceneIntelligenceLogSharedInstance(v29);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v32 = v7;
            uTF8String13 = [v7 UTF8String];
            *v47 = 136381187;
            v48 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
            v49 = 1025;
            v50 = 394;
            v51 = 2081;
            v52 = uTF8String13;
            v22 = " %{private}s:%{private}d *** Input-Output channel [0] size mismatch %{private}s ***";
            goto LABEL_45;
          }
        }
      }
    }
  }

LABEL_46:

LABEL_47:
  v14 = 0;
LABEL_48:

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v46);
  }

  return v14;
}

- (int64_t)evaluateImage:(__CVBuffer *)image results:(id)results
{
  v27 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  v8 = kdebug_trace();
  if (Width != 256 || Height != 192)
  {
    v11 = __SceneIntelligenceLogSharedInstance(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v23 = 136380931;
      v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
      v25 = 1025;
      v26 = 440;
      _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unexpected input resolution ***", &v23, 0x12u);
    }

    goto LABEL_10;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(image);
  if (PixelFormatType == 1111970369)
  {
    [kSIMSceneUnderstandingInputTensorName UTF8String];
    v10 = espresso_network_bind_cvpixelbuffer();
    if (v10)
    {
      v11 = __SceneIntelligenceLogSharedInstance(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v23 = 136380931;
        v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
        v25 = 1025;
        v26 = 455;
        _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failure to bind network image to espresso input ***", &v23, 0x12u);
      }

LABEL_10:

      kdebug_trace();
      v12 = 1;
      goto LABEL_25;
    }

    [kSIMSceneUnderstandingOutputLabelsTensorName UTF8String];
    [resultsCopy labelsTensor];
    v14 = espresso_network_bind_buffer();
    if (v14)
    {
      v15 = __SceneIntelligenceLogSharedInstance(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v23 = 136380931;
        v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
        v25 = 1025;
        v26 = 462;
        v16 = " %{private}s:%{private}d *** Failure to bind output labels tensor for scene understanding ***";
LABEL_23:
        _os_log_impl(&dword_21DE0D000, v15, OS_LOG_TYPE_ERROR, v16, &v23, 0x12u);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    [kSIMSceneUnderstandingOutputProbabilitiesTensorName UTF8String];
    [resultsCopy probabilitiesTensor];
    v17 = espresso_network_bind_buffer();
    if (v17)
    {
      v15 = __SceneIntelligenceLogSharedInstance(v17);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v23 = 136380931;
        v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
        v25 = 1025;
        v26 = 469;
        v16 = " %{private}s:%{private}d *** Failure to bind output probabilities tensor for scene understanding ***";
        goto LABEL_23;
      }

LABEL_24:

      kdebug_trace();
      v12 = 3;
      goto LABEL_25;
    }

    [kSIMSceneUnderstandingOutputNormalsTensorName UTF8String];
    [resultsCopy normalsTensor];
    v18 = espresso_network_bind_buffer();
    if (v18)
    {
      v15 = __SceneIntelligenceLogSharedInstance(v18);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v23 = 136380931;
        v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
        v25 = 1025;
        v26 = 476;
        v16 = " %{private}s:%{private}d *** Failure to bind output normals tensor for scene understanding ***";
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    kdebug_trace();
    v20 = espresso_plan_execute_sync();
    v21 = kdebug_trace();
    if (v20)
    {
      v22 = __SceneIntelligenceLogSharedInstance(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = 136380931;
        v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
        v25 = 1025;
        v26 = 485;
        _os_log_impl(&dword_21DE0D000, v22, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failure to run network ***", &v23, 0x12u);
      }

      kdebug_trace();
      v12 = 4;
    }

    else
    {
      kdebug_trace();
      v12 = 0;
    }
  }

  else
  {
    v13 = __SceneIntelligenceLogSharedInstance(PixelFormatType);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v23 = 136380931;
      v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstanding.mm";
      v25 = 1025;
      v26 = 447;
      _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unexpected input pixel format ***", &v23, 0x12u);
    }

    kdebug_trace();
    v12 = 2;
  }

LABEL_25:

  return v12;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  v3.receiver = self;
  v3.super_class = SISceneUnderstanding;
  [(SISceneUnderstanding *)&v3 dealloc];
}

@end