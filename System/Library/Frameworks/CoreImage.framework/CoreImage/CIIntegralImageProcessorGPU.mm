@interface CIIntegralImageProcessorGPU
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
@end

@implementation CIIntegralImageProcessorGPU

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  metalCommandBuffer = [output metalCommandBuffer];
  if (!metalCommandBuffer)
  {
    v21 = ci_logger_api(0, v9);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (!v22)
    {
      return v22;
    }

    +[CIIntegralImageProcessorGPU processWithInputs:arguments:output:error:];
LABEL_9:
    LOBYTE(v22) = 0;
    return v22;
  }

  v10 = metalCommandBuffer;
  v11 = [objc_alloc(MEMORY[0x1E69745E8]) initWithDevice:{objc_msgSend(metalCommandBuffer, "device")}];
  if (!v11)
  {
    v23 = ci_logger_api(0, v12);
    v22 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!v22)
    {
      return v22;
    }

    +[CIIntegralImageProcessorGPU processWithInputs:arguments:output:error:];
    goto LABEL_9;
  }

  v13 = v11;
  [objc_msgSend(inputs objectAtIndexedSubscript:{0), "region"}];
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  if (CGRectIsNull(v33))
  {
    LODWORD(v18) = 0;
    v19 = 0x7FFFFFFF;
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    if (CGRectIsInfinite(v34))
    {
      v19 = -2147483647;
      LODWORD(v18) = -1;
      v20 = -2147483647;
    }

    else
    {
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      v36 = CGRectInset(v35, 0.000001, 0.000001);
      v37 = CGRectIntegral(v36);
      v20 = v37.origin.x;
      v19 = v37.origin.y;
      v18 = v37.size.height;
    }
  }

  [output region];
  v24 = v38.origin.x;
  v25 = v38.origin.y;
  v26 = v38.size.width;
  v27 = v38.size.height;
  if (CGRectIsNull(v38))
  {
    LODWORD(v28) = 0;
    v29 = 0x7FFFFFFF;
    v30 = 0x7FFFFFFF;
  }

  else
  {
    v39.origin.x = v24;
    v39.origin.y = v25;
    v39.size.width = v26;
    v39.size.height = v27;
    if (CGRectIsInfinite(v39))
    {
      v29 = -2147483647;
      LODWORD(v28) = -1;
      v30 = -2147483647;
    }

    else
    {
      v40.origin.x = v24;
      v40.origin.y = v25;
      v40.size.width = v26;
      v40.size.height = v27;
      v41 = CGRectInset(v40, 0.000001, 0.000001);
      v42 = CGRectIntegral(v41);
      v30 = v42.origin.x;
      v29 = v42.origin.y;
      v28 = v42.size.height;
    }
  }

  v32[0] = v30 - v20;
  v32[1] = v19 + v18 - (v28 + v29);
  v32[2] = 0;
  [v13 setOffset:v32];
  [v13 encodeToCommandBuffer:v10 sourceTexture:objc_msgSend(objc_msgSend(inputs destinationTexture:{"objectAtIndexedSubscript:", 0), "metalTexture"), objc_msgSend(output, "metalTexture")}];

  LOBYTE(v22) = 1;
  return v22;
}

+ (void)processWithInputs:arguments:output:error:.cold.1()
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x1E69E9840]);
  v2 = "+[CIIntegralImageProcessorGPU processWithInputs:arguments:output:error:]";
  v3 = 2113;
  v4 = @"MPSImageIntegral";
  _os_log_error_impl(&dword_19CC36000, v0, OS_LOG_TYPE_ERROR, "%{public}s %{private}@ kernel could not be instantiated", v1, 0x16u);
}

+ (void)processWithInputs:arguments:output:error:.cold.2()
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x1E69E9840]);
  v2 = "+[CIIntegralImageProcessorGPU processWithInputs:arguments:output:error:]";
  v3 = 2113;
  v4 = @"Metal";
  _os_log_error_impl(&dword_19CC36000, v0, OS_LOG_TYPE_ERROR, "%{public}s %{private}@ command buffer is not available", v1, 0x16u);
}

@end