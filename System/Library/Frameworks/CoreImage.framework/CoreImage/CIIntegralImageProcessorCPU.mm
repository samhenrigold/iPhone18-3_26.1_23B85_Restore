@interface CIIntegralImageProcessorCPU
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
@end

@implementation CIIntegralImageProcessorCPU

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v81 = *MEMORY[0x1E69E9840];
  v7 = [inputs objectAtIndex:{0, arguments, output, error}];
  if ([v7 format] != 2312 && objc_msgSend(v7, "format") != 2056 && objc_msgSend(v7, "format") != 266)
  {
    format = [v7 format];
    if (format != 264)
    {
      v68 = ci_logger_filter(format, v9);
      v29 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
      if (!v29)
      {
        return v29;
      }

      [CIIntegralImageProcessorCPU processWithInputs:v7 arguments:? output:? error:?];
LABEL_51:
      LOBYTE(v29) = 0;
      return v29;
    }
  }

  format2 = [output format];
  if (format2 != 2312)
  {
    v28 = ci_logger_filter(format2, v11);
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (!v29)
    {
      return v29;
    }

    [CIIntegralImageProcessorCPU processWithInputs:output arguments:? output:? error:?];
    goto LABEL_51;
  }

  bytesPerRow = [output bytesPerRow];
  [output region];
  v14 = v13;
  __src = malloc_type_calloc(bytesPerRow, vcvtps_u32_f32(v14), 0x100004052888210uLL);
  if (!__src)
  {
    v30 = ci_logger_filter(0, v15);
    v29 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (!v29)
    {
      return v29;
    }

    [CIIntegralImageProcessorCPU processWithInputs:output arguments:? output:? error:?];
    goto LABEL_51;
  }

  [v7 region];
  v17 = v16;
  [output region];
  if (v17 != v18)
  {
    +[CIIntegralImageProcessorCPU processWithInputs:arguments:output:error:];
  }

  [v7 region];
  v20 = v19;
  [output region];
  if (v20 != v21)
  {
    +[CIIntegralImageProcessorCPU processWithInputs:arguments:output:error:];
  }

  [v7 region];
  v23 = v22;
  v24 = vcvtps_u32_f32(v23);
  [v7 region];
  v26 = v25;
  outputCopy = output;
  v71 = bytesPerRow;
  if ([v7 format] == 2312)
  {
    v27 = 16;
  }

  else
  {
    format3 = [v7 format];
    v27 = 4;
    if (format3 == 2056)
    {
      v27 = 8;
    }
  }

  v76 = v27;
  format4 = [v7 format];
  if (v24)
  {
    v33 = 0;
    v73 = 0;
    v34 = v26;
    v35 = vcvtps_u32_f32(v34);
    v74 = 2 * (format4 != 266);
    v75 = 2 * (format4 == 266);
    do
    {
      if (v35)
      {
        v36 = 0;
        v37 = &__src[v33 * v71];
        v38 = ~v33 + v24;
        v39 = v73 - 1;
        v77 = &__src[v71 * v39];
        v40 = 1;
        do
        {
          baseAddress = [v7 baseAddress];
          bytesPerRow2 = [v7 bytesPerRow];
          if (v38 >= v24)
          {
            v43 = 0;
          }

          else
          {
            v43 = (baseAddress + bytesPerRow2 * v38 + v36 * v76);
          }

          v80 = 0uLL;
          if ([v7 format] == 2056)
          {
            *&src.height = xmmword_19CF23040;
            src.rowBytes = 8;
            dest.data = &v80;
            *&dest.height = xmmword_19CF23040;
            dest.rowBytes = 16;
            src.data = v43;
            vImageConvert_Planar16FtoPlanarF(&src, &dest, 0x10u);
          }

          else if ([v7 format] == 266 || objc_msgSend(v7, "format") == 264)
          {
            LOBYTE(v44) = v43[v75];
            *&v45 = v44 / 255.0;
            LODWORD(v80) = v45;
            LOBYTE(v45) = v43[1];
            *&v46 = v45 / 255.0;
            DWORD1(v80) = v46;
            LOBYTE(v46) = v43[v74];
            *&v47 = v46 / 255.0;
            DWORD2(v80) = v47;
            LOBYTE(v47) = v43[3];
            *(&v80 + 3) = v47 / 255.0;
          }

          else
          {
            if ([v7 format] != 2312)
            {
              +[CIIntegralImageProcessorCPU processWithInputs:arguments:output:error:];
            }

            v80 = *v43;
          }

          v48 = 16 * v36;
          v49 = &v37[16 * v36];
          *v49 = *&v80 + *v49;
          v50 = v49[2];
          v49[1] = *(&v80 + 1) + v49[1];
          v49[2] = *(&v80 + 2) + v50;
          v49[3] = *(&v80 + 3) + v49[3];
          v51 = v40 - 2;
          if (v51 >= v35)
          {
            v52 = 0;
          }

          else
          {
            v52 = &v37[16 * v51];
          }

          addPixel<float>(v49, v52);
          if (v39 >= v24)
          {
            v53 = 0;
          }

          else
          {
            v53 = &v77[v48];
          }

          addPixel<float>(v49, v53);
          if (v39 < v24 && v51 < v35)
          {
            v54 = &v77[16 * v51];
            if (v54)
            {
              v55 = v49[1];
              *v49 = *v49 - *v54;
              v49[1] = v55 - v54[1];
              v56 = v49[3];
              v49[2] = v49[2] - v54[2];
              v49[3] = v56 - v54[3];
            }
          }

          v36 = v40++;
        }

        while (v36 < v35);
      }

      v33 = ++v73;
    }

    while (v73 < v24);
  }

  [outputCopy region];
  v58 = v57;
  [outputCopy region];
  v60 = v59;
  if ([outputCopy format] != 2312)
  {
    +[CIIntegralImageProcessorCPU processWithInputs:arguments:output:error:];
  }

  v61 = v58;
  v62 = vcvtps_u32_f32(v61);
  baseAddress2 = [outputCopy baseAddress];
  if (v62)
  {
    v64 = v60;
    v65 = 16 * vcvtps_u32_f32(v64);
    v66 = (baseAddress2 + v71 * (v62 - 1));
    v67 = __src;
    do
    {
      memcpy(v66, v67, v65);
      v67 += v71;
      v66 -= v71;
      --v62;
    }

    while (v62);
  }

  free(__src);
  LOBYTE(v29) = 1;
  return v29;
}

+ (void)processWithInputs:(void *)a1 arguments:output:error:.cold.1(void *a1)
{
  [a1 format];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

+ (void)processWithInputs:(void *)a1 arguments:output:error:.cold.2(void *a1)
{
  [a1 format];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

+ (void)processWithInputs:(void *)a1 arguments:output:error:.cold.7(void *a1)
{
  [a1 region];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end