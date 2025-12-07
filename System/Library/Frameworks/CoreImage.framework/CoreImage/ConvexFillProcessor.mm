@interface ConvexFillProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)result;
+ (int)formatForInputAtIndex:(int)index;
@end

@implementation ConvexFillProcessor

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v62 = *MEMORY[0x1E69E9840];
  v9 = [inputs objectAtIndexedSubscript:{0, arguments, output, error}];
  v10 = [inputs objectAtIndexedSubscript:1];
  [v9 format];
  [v10 format];
  [output format];
  [output region];
  v12 = v11;
  [output region];
  v14 = v13;
  clearOutput(output);
  *&src.height = xmmword_19CF23040;
  src.rowBytes = 8;
  dest.data = v61;
  *&dest.height = xmmword_19CF23040;
  dest.rowBytes = 16;
  src.data = [v10 baseAddress];
  vImageConvert_Planar16FtoPlanarF(&src, &dest, 0x10u);
  v15 = roundf(v61[0]);
  v16 = roundf(v61[1]);
  [v9 region];
  v18 = (v15 - v17);
  [v9 region];
  v20 = (v16 - v19);
  [v9 region];
  v22 = (v21 - v20 + -1.0);
  if (v18 <= v22)
  {
    v23 = (v21 - v20 + -1.0);
  }

  else
  {
    v23 = v18;
  }

  v24 = CI_LOG_DUALRED();
  if (v23 <= 0)
  {
    if (v24)
    {
      v45 = ci_logger_api(v24, v25);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        +[ConvexFillProcessor processWithInputs:arguments:output:error:];
      }
    }
  }

  else
  {
    v26 = v14;
    if (v24)
    {
      v27 = ci_logger_api(v24, v25);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[ConvexFillProcessor processWithInputs:arguments:output:error:];
      }
    }

    v28 = [objc_msgSend(arguments objectForKey:{@"kThreshold", v12), "intValue"}];
    if ((v28 & ~(v28 >> 31)) >= 255)
    {
      v29 = 255;
    }

    else
    {
      v29 = v28 & ~(v28 >> 31);
    }

    baseAddress = [v9 baseAddress];
    baseAddress2 = [output baseAddress];
    bytesPerRow = [v9 bytesPerRow];
    bytesPerRow2 = [output bytesPerRow];
    v34 = v18;
    v35 = v22;
    v36 = baseAddress2;
    v37 = v26;
    v63.x = v18;
    v63.y = v22;
    v38 = convexFill(baseAddress, v36, v26, v58, bytesPerRow, bytesPerRow2, v29, v63);
    if (v38)
    {
      v39 = v38;
      v40 = [objc_msgSend(arguments objectForKey:{@"kAreaThresholdHi", "intValue"}];
      v41 = [objc_msgSend(arguments objectForKey:{@"kAreaThresholdLo", "intValue"}];
      if (v39 <= v40)
      {
        if (v39 >= v41)
        {
          v53 = [objc_msgSend(arguments objectForKey:{@"kSplatArea", "intValue"}];
          baseAddress3 = [v9 baseAddress];
          baseAddress4 = [output baseAddress];
          bytesPerRow3 = [v9 bytesPerRow];
          bytesPerRow4 = [output bytesPerRow];
          v64.x = v34;
          v64.y = v35;
          radialSplatR8(baseAddress3, baseAddress4, v37, v58, bytesPerRow3, bytesPerRow4, v53, v64);
          return 1;
        }

        v49 = CI_LOG_DUALRED();
        if (v49)
        {
          v51 = ci_logger_api(v49, v50);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            +[ConvexFillProcessor processWithInputs:arguments:output:error:];
          }
        }
      }

      else
      {
        v42 = CI_LOG_DUALRED();
        if (v42)
        {
          v44 = ci_logger_api(v42, v43);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            +[ConvexFillProcessor processWithInputs:arguments:output:error:];
          }
        }
      }
    }

    else
    {
      v46 = CI_LOG_DUALRED();
      if (v46)
      {
        v48 = ci_logger_api(v46, v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          +[ConvexFillProcessor processWithInputs:arguments:output:error:];
        }
      }
    }

    clearOutput(output);
  }

  return 1;
}

+ (int)formatForInputAtIndex:(int)index
{
  if (index == 1)
  {
    v3 = &kCIFormatRGBAh;
    return *v3;
  }

  if (!index)
  {
    v3 = &kCIFormatR8;
    return *v3;
  }

  return 0;
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)result
{
  if (input == 1)
  {
    result.origin.x = 0.0;
    result.origin.y = 0.0;
    result.size.width = 1.0;
    result.size.height = 1.0;
  }

  return result;
}

+ (void)processWithInputs:arguments:output:error:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

+ (void)processWithInputs:arguments:output:error:.cold.2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

+ (void)processWithInputs:arguments:output:error:.cold.3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

+ (void)processWithInputs:arguments:output:error:.cold.5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

@end