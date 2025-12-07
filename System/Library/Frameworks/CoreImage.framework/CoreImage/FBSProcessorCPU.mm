@interface FBSProcessorCPU
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
@end

@implementation FBSProcessorCPU

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v90 = *MEMORY[0x1E69E9840];
  [objc_msgSend(arguments objectForKeyedSubscript:{@"fullROI", "CGRectValue"}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputMaxNumVertices", "intValue"}];
  v17 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputSigmaS", "intValue"}];
  v18 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputSigmaRLuma", "intValue"}];
  v19 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputSigmaRChroma", "intValue"}];
  [objc_msgSend(arguments objectForKeyedSubscript:{@"inputLambda", "floatValue"}];
  v21 = v20;
  v22 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputMaxNumIterations", "intValue"}];
  if (v16 <= 1000)
  {
    +[FBSProcessorCPU processWithInputs:arguments:output:error:];
  }

  if (!v17)
  {
    +[FBSProcessorCPU processWithInputs:arguments:output:error:];
  }

  if (!v18)
  {
    +[FBSProcessorCPU processWithInputs:arguments:output:error:];
  }

  if (!v19)
  {
    +[FBSProcessorCPU processWithInputs:arguments:output:error:];
  }

  if (v21 == 0.0)
  {
    +[FBSProcessorCPU processWithInputs:arguments:output:error:];
  }

  v23 = v22;
  if (!v22)
  {
    +[FBSProcessorCPU processWithInputs:arguments:output:error:];
  }

  v24 = v13;
  v87 = v15;
  v25 = [inputs objectAtIndexedSubscript:0];
  v26 = [inputs objectAtIndexedSubscript:1];
  v27 = [inputs objectAtIndexedSubscript:2];
  v84 = convertToFullFloatPixelBuffer(v26, v9, v11, v13, v15);
  v83 = convertToFullFloatPixelBuffer(v27, v9, v11, v13, v15);
  if ([output format] == 2309)
  {
    bytesPerRow = [output bytesPerRow];
  }

  else
  {
    bytesPerRow = 4 * v24;
  }

  pixelBuffer = createPixelBuffer(v13, v87, bytesPerRow, 0);
  v29 = v16;
  v30 = [[CIBilateralGridHash alloc] initWithWidth:v13 height:v87 maxHashTableSize:v16];
  surface = [v25 surface];
  [v25 region];
  v32 = [CIBilateralGridHash createWithSurface:v30 region:"createWithSurface:region:cropRect:sigma_s:sigma_r_luma:sigma_r_chroma:" cropRect:surface sigma_s:v17 sigma_r_luma:v18 sigma_r_chroma:v19];
  if (v32)
  {
    v34 = ci_logger_performance(v32, v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.data) = 136446210;
      *(&buf.data + 4) = "+[FBSProcessorCPU processWithInputs:arguments:output:error:]";
      _os_log_impl(&dword_19CC36000, v34, OS_LOG_TYPE_INFO, "%{public}s Returning disparity image; unable to create 3D bilateral grid hash. Please file a radar.", &buf, 0xCu);
    }
  }

  v35 = [[CIBilateralSolverCPU alloc] initWithWidth:v13 height:v87 maxVertices:v29];
  surface2 = [v25 surface];
  v37 = pixelBuffer;
  *&v38 = v21;
  [(CIBilateralSolverCPU *)v35 doSolveWithBilateralGridhash:v30 reference:surface2 disparity:v83 confidence:v84 output:pixelBuffer lambda:v23 maxIterations:v38];

  if ([output format] == 2053)
  {
    if (CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
    {
      goto LABEL_31;
    }

    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    baseAddress = [output baseAddress];
    [output region];
    v43 = v42;
    [output region];
    if (v43 >= v9)
    {
      v46 = 0;
      v45 = (v44 * 4.0 + 0.0);
    }

    else
    {
      v45 = 0;
      v46 = ((v9 - v44) * 4.0 + 0.0);
    }

    [output region];
    v53 = v52;
    [output region];
    if (v53 >= v11)
    {
      v45 = (v45 + v54 * BytesPerRow);
    }

    else
    {
      v46 = (v46 + (v11 - v54) * [output bytesPerRow]);
    }

    [output region];
    v56 = v55;
    v57 = v24;
    if (v56 < v24)
    {
      [output region];
    }

    v58 = v57;
    [output region];
    v59 = v15;
    if (v60 < v15)
    {
      [output region];
      v59 = v61;
    }

    buf.data = &BaseAddress[v45];
    buf.height = v59;
    buf.width = v58;
    buf.rowBytes = BytesPerRow;
    dest.data = (baseAddress + v46);
    dest.height = v59;
    dest.width = v58;
    dest.rowBytes = [output bytesPerRow];
    vImageConvert_PlanarFtoPlanar16F(&buf, &dest, 0);
    goto LABEL_30;
  }

  if ([output format] == 2309 && !CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
  {
    v47 = CVPixelBufferGetBaseAddress(pixelBuffer);
    v48 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    if (v48 == [output bytesPerRow])
    {
      baseAddress2 = [output baseAddress];
      v50 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      Height = CVPixelBufferGetHeight(pixelBuffer);
      memcpy(baseAddress2, v47, Height * v50);
    }

    else
    {
      v63 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      [output region];
      if (v64 < v13)
      {
        [output region];
        v13 = v65;
      }

      [output region];
      if (v66 < v15)
      {
        [output region];
        v87 = v67;
      }

      baseAddress3 = [output baseAddress];
      [output region];
      v70 = v69;
      [output region];
      if (v70 >= v9)
      {
        v73 = 0;
        v72 = (v71 * 4.0 + 0.0);
      }

      else
      {
        v72 = 0;
        v73 = ((v9 - v71) * 4.0 + 0.0);
      }

      [output region];
      v75 = v74;
      [output region];
      if (v75 >= v11)
      {
        v72 = (v72 + v76 * v63);
      }

      else
      {
        v73 = (v73 + (v11 - v76) * [output bytesPerRow]);
      }

      if (v87)
      {
        v77 = 0;
        v78 = vcvtd_n_u64_f64(v13, 2uLL);
        v79 = baseAddress3 + v73;
        v80 = 1;
        v81 = &v47[v72];
        do
        {
          memcpy((v79 + [output bytesPerRow] * v77), &v81[v77 * v63], v78);
          v77 = v80;
        }

        while (v87 > v80++);
      }
    }

LABEL_30:
    v37 = pixelBuffer;
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  }

LABEL_31:
  if (v37)
  {
    CVPixelBufferRelease(v37);
  }

  if (v84)
  {
    CVPixelBufferRelease(v84);
  }

  if (v83)
  {
    CVPixelBufferRelease(v83);
  }

  return 1;
}

@end