@interface CIConvolutionProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (id)applyBoxToImage:(id)image width:(int)width height:(int)height;
+ (id)applyConToImage:(id)image width:(int)width height:(int)height bias:(double)bias weights:(id)weights;
+ (id)logDescription:(id)description;
@end

@implementation CIConvolutionProcessor

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = [arguments objectForKeyedSubscript:@"w"];
  v11 = [arguments objectForKeyedSubscript:@"h"];
  v12 = ([v10 intValue] - 1) / -2;
  intValue = [v11 intValue];
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;

  return CGRectInset(*&v14, v12, ((intValue - 1) / -2));
}

+ (id)logDescription:(id)description
{
  if ([description objectForKeyedSubscript:@"weights"])
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"CIConvolutionProcessor-%@x%@", objc_msgSend(description, "objectForKeyedSubscript:", @"w", objc_msgSend(description, "objectForKeyedSubscript:", @"h"];
  }

  else
  {
    return @"CIConvolutionProcessor-Box";
  }
}

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v94 = *MEMORY[0x1E69E9840];
  v9 = [arguments objectForKeyedSubscript:@"w"];
  v10 = [arguments objectForKeyedSubscript:@"h"];
  v11 = [arguments objectForKeyedSubscript:@"bias"];
  v12 = [arguments objectForKeyedSubscript:@"weights"];
  v13 = [inputs objectAtIndexedSubscript:0];
  intValue = [v9 intValue];
  intValue2 = [v10 intValue];
  v21 = intValue2;
  if (v12)
  {
    MEMORY[0x1EEE9AC00](intValue2, v16, v17, v18, v19, v20);
    v23 = &v89[-v22];
    convert_weights(v12, &v89[-v22], intValue, v21);
    if (CI_FLIP_IMAGE_PROCESSOR() && v21 >= 2)
    {
      v24 = 0;
      v25 = 0;
      v26 = intValue * (v21 - 1);
      do
      {
        v27 = v24;
        v28 = v26;
        v29 = intValue;
        if (intValue)
        {
          do
          {
            v30 = *&v23[4 * v27];
            *&v23[4 * v27] = *&v23[4 * v28];
            *&v23[4 * v28++] = v30;
            ++v27;
            --v29;
          }

          while (v29);
        }

        ++v25;
        v26 -= intValue;
        v24 += intValue;
      }

      while (v25 != v21 >> 1);
    }

    metalCommandBuffer = [output metalCommandBuffer];
    metalTexture = [v13 metalTexture];
    metalTexture2 = [output metalTexture];
    [v13 region];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    [output region];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    if (v11)
    {
      [v11 doubleValue];
      v51 = v50;
    }

    else
    {
      v51 = 0.0;
    }

    v90 = v51;
    if (metalCommandBuffer)
    {
      v76 = [objc_alloc(MEMORY[0x1E6974598]) initWithDevice:objc_msgSend(metalCommandBuffer kernelWidth:"device") kernelHeight:intValue weights:{v21, v23}];
      if (v76)
      {
        v77 = v76;
        [v76 setOptions:2];
        v96.origin.x = v35;
        v96.origin.y = v37;
        v96.size.width = v39;
        v96.size.height = v41;
        if (CGRectIsNull(v96))
        {
          LODWORD(height) = 0;
          y = 0x7FFFFFFF;
          x = 0x7FFFFFFF;
        }

        else
        {
          v97.origin.x = v35;
          v97.origin.y = v37;
          v97.size.width = v39;
          v97.size.height = v41;
          if (CGRectIsInfinite(v97))
          {
            y = -2147483647;
            LODWORD(height) = -1;
            x = -2147483647;
          }

          else
          {
            v99.origin.x = v35;
            v99.origin.y = v37;
            v99.size.width = v39;
            v99.size.height = v41;
            v100 = CGRectInset(v99, 0.000001, 0.000001);
            v101 = CGRectIntegral(v100);
            x = v101.origin.x;
            y = v101.origin.y;
            height = v101.size.height;
          }
        }

        v102.origin.x = v43;
        v102.origin.y = v45;
        v102.size.width = v47;
        v102.size.height = v49;
        if (CGRectIsNull(v102))
        {
          LODWORD(v81) = 0;
          v82 = 0x7FFFFFFF;
          v83 = 0x7FFFFFFF;
        }

        else
        {
          v103.origin.x = v43;
          v103.origin.y = v45;
          v103.size.width = v47;
          v103.size.height = v49;
          if (CGRectIsInfinite(v103))
          {
            v82 = -2147483647;
            LODWORD(v81) = -1;
            v83 = -2147483647;
          }

          else
          {
            v104.origin.x = v43;
            v104.origin.y = v45;
            v104.size.width = v47;
            v104.size.height = v49;
            v105 = CGRectInset(v104, 0.000001, 0.000001);
            v106 = CGRectIntegral(v105);
            v83 = v106.origin.x;
            v82 = v106.origin.y;
            v81 = v106.size.height;
          }
        }

        v91 = v83 - x;
        v92 = y + height - (v81 + v82);
        v93 = 0;
        [v77 setOffset:&v91];
        *&v84 = v90;
        [v77 setBias:v84];
        [v77 encodeToCommandBuffer:metalCommandBuffer sourceTexture:metalTexture destinationTexture:metalTexture2];
      }
    }
  }

  else
  {
    metalCommandBuffer2 = [output metalCommandBuffer];
    metalTexture3 = [v13 metalTexture];
    metalTexture4 = [output metalTexture];
    [v13 region];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    [output region];
    if (metalCommandBuffer2)
    {
      v67 = v63;
      v68 = v64;
      v69 = v65;
      v70 = v66;
      v71 = [objc_alloc(MEMORY[0x1E6974580]) initWithDevice:objc_msgSend(metalCommandBuffer2 kernelWidth:"device") kernelHeight:{intValue, v21}];
      if (v71)
      {
        v72 = v71;
        [v71 setOptions:2];
        v95.origin.x = v56;
        v95.origin.y = v58;
        v95.size.width = v60;
        v95.size.height = v62;
        if (CGRectIsNull(v95))
        {
          LODWORD(v73) = 0;
          v74 = 0x7FFFFFFF;
          v75 = 0x7FFFFFFF;
        }

        else
        {
          v98.origin.x = v56;
          v98.origin.y = v58;
          v98.size.width = v60;
          v98.size.height = v62;
          if (CGRectIsInfinite(v98))
          {
            v74 = -2147483647;
            LODWORD(v73) = -1;
            v75 = -2147483647;
          }

          else
          {
            v107.origin.x = v56;
            v107.origin.y = v58;
            v107.size.width = v60;
            v107.size.height = v62;
            v108 = CGRectInset(v107, 0.000001, 0.000001);
            v109 = CGRectIntegral(v108);
            v75 = v109.origin.x;
            v74 = v109.origin.y;
            v73 = v109.size.height;
          }
        }

        v110.origin.x = v67;
        v110.origin.y = v68;
        v110.size.width = v69;
        v110.size.height = v70;
        if (CGRectIsNull(v110))
        {
          LODWORD(v86) = 0;
          v87 = 0x7FFFFFFF;
          v88 = 0x7FFFFFFF;
        }

        else
        {
          v111.origin.x = v67;
          v111.origin.y = v68;
          v111.size.width = v69;
          v111.size.height = v70;
          if (CGRectIsInfinite(v111))
          {
            v87 = -2147483647;
            LODWORD(v86) = -1;
            v88 = -2147483647;
          }

          else
          {
            v112.origin.x = v67;
            v112.origin.y = v68;
            v112.size.width = v69;
            v112.size.height = v70;
            v113 = CGRectInset(v112, 0.000001, 0.000001);
            v114 = CGRectIntegral(v113);
            v88 = v114.origin.x;
            v87 = v114.origin.y;
            v86 = v114.size.height;
          }
        }

        v91 = v88 - v75;
        v92 = v74 + v73 - (v86 + v87);
        v93 = 0;
        [v72 setOffset:&v91];
        [v72 encodeToCommandBuffer:metalCommandBuffer2 sourceTexture:metalTexture3 destinationTexture:metalTexture4];
      }
    }
  }

  return 1;
}

+ (id)applyConToImage:(id)image width:(int)width height:(int)height bias:(double)bias weights:(id)weights
{
  v9 = *&height;
  v10 = *&width;
  v21[1] = *MEMORY[0x1E69E9840];
  if (fabs(bias) >= 1.0e-10)
  {
    x = *MEMORY[0x1E695F040];
    y = *(MEMORY[0x1E695F040] + 8);
    width = *(MEMORY[0x1E695F040] + 16);
    height = *(MEMORY[0x1E695F040] + 24);
  }

  else
  {
    [image extent];
    v23 = CGRectInset(v22, (v10 / -2), (v9 / -2));
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
  }

  v21[0] = image;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v20[0] = [MEMORY[0x1E696AD98] numberWithInt:{v10, @"w"}];
  v19[1] = @"h";
  v20[1] = [MEMORY[0x1E696AD98] numberWithInt:v9];
  v19[2] = @"bias";
  v19[3] = @"weights";
  v20[2] = [MEMORY[0x1E696AD98] numberWithDouble:bias];
  v20[3] = weights;
  return [self applyWithExtent:v17 inputs:objc_msgSend(MEMORY[0x1E695DF20] arguments:"dictionaryWithObjects:forKeys:count:" error:{v20, v19, 4), 0, x, y, width, height}];
}

+ (id)applyBoxToImage:(id)image width:(int)width height:(int)height
{
  v5 = *&height;
  v6 = *&width;
  v17[1] = *MEMORY[0x1E69E9840];
  [image extent];
  v19 = CGRectInset(v18, (v6 / -2), (v5 / -2));
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v17[0] = image;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15[1] = @"h";
  v16[0] = [MEMORY[0x1E696AD98] numberWithInt:{v6, @"w"}];
  v16[1] = [MEMORY[0x1E696AD98] numberWithInt:v5];
  return [self applyWithExtent:v13 inputs:objc_msgSend(MEMORY[0x1E695DF20] arguments:"dictionaryWithObjects:forKeys:count:" error:{v16, v15, 2), 0, x, y, width, height}];
}

@end