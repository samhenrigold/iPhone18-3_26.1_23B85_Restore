@interface CICoreMLProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (id)logDescription:(id)description;
+ (int)formatForInputAtIndex:(int)index arguments:(id)arguments;
+ (int)outputFormatWithArguments:(id)arguments;
@end

@implementation CICoreMLProcessor

+ (id)logDescription:(id)description
{
  v3 = [description objectForKeyedSubscript:@"logName"];
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 length])
      {
        return [MEMORY[0x1E696AEC0] stringWithFormat:@"CICoreMLProcessor-%@", v4];
      }
    }
  }

  v6 = MEMORY[0x1E696AEC0];

  return [v6 stringWithFormat:@"CICoreMLProcessor"];
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  v7 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputWidths", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height), "objectAtIndex:", input}];
  v8 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputHeights", "objectAtIndex:", input}];
  v9 = [objc_msgSend(arguments objectForKeyedSubscript:{@"inputChans", "objectAtIndex:", input}];
  intValue = [v7 intValue];
  intValue2 = [v8 intValue];
  v12 = ([v9 intValue] * intValue2);
  v13 = 0.0;
  v14 = 0.0;
  v15 = intValue;
  result.size.height = v12;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v163 = *MEMORY[0x1E69E9840];
  v150 = 0;
  v143 = [arguments objectForKeyedSubscript:@"model"];
  v124 = [arguments objectForKeyedSubscript:@"headName"];
  v122 = [objc_msgSend(objc_msgSend(objc_msgSend(v143 "modelDescription")];
  v120 = [objc_msgSend(arguments objectForKeyedSubscript:{@"softmax", "BOOLValue"}];
  v128 = objc_alloc_init(CIMLFeatureProvider);
  v138 = [arguments objectForKeyedSubscript:@"inputWidths"];
  v136 = [arguments objectForKeyedSubscript:@"inputHeights"];
  v134 = [arguments objectForKeyedSubscript:@"inputChans"];
  v132 = [arguments objectForKeyedSubscript:@"inputFormats"];
  v7 = [arguments objectForKeyedSubscript:@"inputNames"];
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v142 = [v7 countByEnumeratingWithState:&v146 objects:v162 count:16];
  if (v142)
  {
    v130 = *v147;
    do
    {
      for (i = 0; i != v142; ++i)
      {
        if (*v147 != v130)
        {
          objc_enumerationMutation(v7);
        }

        v9 = *(*(&v146 + 1) + 8 * i);
        v10 = [objc_msgSend(objc_msgSend(objc_msgSend(v143 "modelDescription")];
        v11 = [objc_msgSend(objc_msgSend(v143 "modelDescription")];
        v13 = v11 && (v12 = [objc_msgSend(v11 "multiArrayConstraint")], objc_msgSend(v12, "type") == 2) && objc_msgSend(objc_msgSend(objc_msgSend(v12, "enumeratedShapes"), "objectAtIndexedSubscript:", 0), "count") == 3;
        v14 = [v7 indexOfObject:v9];
        v15 = [inputs objectAtIndexedSubscript:v14];
        v16 = [objc_msgSend(v138 objectAtIndexedSubscript:{v14), "unsignedLongValue"}];
        v17 = [objc_msgSend(v136 objectAtIndexedSubscript:{v14), "unsignedLongValue"}];
        v18 = [objc_msgSend(v134 objectAtIndexedSubscript:{v14), "intValue"}];
        v19 = [objc_msgSend(v132 objectAtIndexedSubscript:{v14), "unsignedLongValue"}];
        if (v10 == 5)
        {
          v21 = copyProcessorInput(v15, 0x4C303068u);
          if (v13)
          {
            v161[0] = [MEMORY[0x1E696AD98] numberWithInt:v18];
            v161[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v17];
            v161[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v16];
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:3];
          }

          else
          {
            v160[0] = &unk_1F1081A70;
            v160[1] = [MEMORY[0x1E696AD98] numberWithInt:v18];
            v160[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v17];
            v160[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v16];
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v160 count:4];
          }

          v23 = [objc_alloc(getMLMultiArrayClass()) initWithPixelBuffer:v21 shape:v22];
          CFRelease(v21);
          [(CIMLFeatureProvider *)v128 addOject:v23 forName:v9];
        }

        else if (v10 == 4)
        {
          v20 = copyProcessorInput(v15, v19);
          [(CIMLFeatureProvider *)v128 addOject:v20 forName:v9];
          CFRelease(v20);
        }
      }

      v142 = [v7 countByEnumeratingWithState:&v146 objects:v162 count:16];
    }

    while (v142);
  }

  if (v122 == 4 && (shapeForLayer(v143, v124, 1), v25 = v24, v27 = v26, [output region], v165.origin.x = 0.0, v165.origin.y = 0.0, v165.size.width = v25, v165.size.height = v27, CGRectEqualToRect(v164, v165)) && ((v28 = objc_msgSend(objc_msgSend(objc_msgSend(v143, "modelDescription"), "outputDescriptionsByName"), "objectForKey:", v124)) == 0 ? (v29 = 0) : (v29 = objc_msgSend(objc_msgSend(v28, "imageConstraint"), "pixelFormatType")), (v30 = objc_msgSend(output, "pixelBuffer"), (v31 = v30) != 0) && CVPixelBufferGetPixelFormatType(v30) == v29))
  {
    v152 = 0;
    v153 = &v152;
    v154 = 0x3052000000;
    v155 = __Block_byref_object_copy__2;
    v32 = getMLPredictionOptionsClass(void)::softClass;
    v156 = __Block_byref_object_dispose__2;
    v157 = getMLPredictionOptionsClass(void)::softClass;
    if (!getMLPredictionOptionsClass(void)::softClass)
    {
      v151[0] = MEMORY[0x1E69E9820];
      v151[1] = 3221225472;
      v151[2] = ___ZL27getMLPredictionOptionsClassv_block_invoke;
      v151[3] = &unk_1E75C1E10;
      v151[4] = &v152;
      ___ZL27getMLPredictionOptionsClassv_block_invoke(v151);
      v32 = v153[5];
    }

    _Block_object_dispose(&v152, 8);
    v33 = objc_alloc_init(v32);
    v158 = v124;
    v159 = v31;
    [v33 setOutputBackings:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v159, &v158, 1)}];
  }

  else
  {
    v33 = 0;
  }

  v34 = [v143 predictionFromFeatures:v128 options:v33 error:&v150];

  if (v150)
  {
    _ZF = 1;
  }

  else
  {
    _ZF = v34 == 0;
  }

  v38 = !_ZF;
  if (_ZF)
  {
    if (error && v150)
    {
      *error = v150;
    }

    v40 = ci_logger_api(v35, v36);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [CICoreMLProcessor processWithInputs:v40 arguments:? output:? error:?];
    }
  }

  else
  {
    v39 = [v34 featureValueForName:v124];
    if ([v39 type] == 4)
    {
      [v39 imageBufferValue];
    }

    else if ([v39 type] == 5)
    {
      multiArrayValue = [v39 multiArrayValue];
      if ((([multiArrayValue dataType] == 65600) & v120) == 1)
      {
        dataPointer = [multiArrayValue dataPointer];
        shape = [multiArrayValue shape];
        v43 = [shape count];
        v144 = [objc_msgSend(shape objectAtIndexedSubscript:{v43 - 3), "intValue"}];
        v133 = [objc_msgSend(shape objectAtIndexedSubscript:{v43 - 2), "intValue"}];
        v44 = [objc_msgSend(shape objectAtIndexedSubscript:{v43 - 1), "intValue"}];
        baseAddress = [output baseAddress];
        bytesPerRow = [output bytesPerRow];
        [output region];
        v47 = v46;
        v49 = v48;
        v51 = v50;
        v53 = v52;
        v54 = [objc_msgSend(objc_msgSend(multiArrayValue "strides")];
        v55 = [objc_msgSend(objc_msgSend(multiArrayValue "strides")];
        v56 = [objc_msgSend(objc_msgSend(multiArrayValue "strides")];
        [output region];
        v58 = v57;
        bytesPerRow2 = [output bytesPerRow];
        [output region];
        bzero([output baseAddress], bytesPerRow2 * (v58 - 1) + 2 * v60);
        v135 = malloc_type_calloc(v44 * v133, 4uLL, 0x100004052888210uLL);
        v129 = v38;
        v139 = 8 * v55;
        v61 = 8 * v56;
        v62 = 8 * v54;
        if (v133 >= 1)
        {
          v123 = v56;
          v127 = bytesPerRow;
          v63 = 0;
          v64 = v44;
          v141 = dataPointer;
          v137 = v44;
          do
          {
            if (v44 >= 1)
            {
              v65 = 0;
              v66 = v141;
              v67 = &v135[v63 * v133];
              do
              {
                if (v144 >= 1)
                {
                  v68 = *&v67[4 * v65];
                  v69 = v66;
                  v70 = v144;
                  do
                  {
                    v71 = exp(*v69);
                    v68 = v68 + v71;
                    v69 = (v69 + v62);
                    --v70;
                  }

                  while (v70);
                  *&v67[4 * v65] = v68;
                }

                ++v65;
                v66 = (v66 + v61);
              }

              while (v65 != v64);
            }

            ++v63;
            v141 += v139;
            v44 = v137;
          }

          while (v63 != v133);
          v72 = 0;
          v73 = v135;
          bytesPerRow = v127;
          v56 = v123;
          do
          {
            v74 = v73;
            v75 = v64;
            if (v137 >= 1)
            {
              do
              {
                *v74 = 1.0 / *v74;
                ++v74;
                --v75;
              }

              while (v75);
            }

            ++v72;
            v73 += v133;
          }

          while (v72 != v133);
        }

        if (v53 > 0.0)
        {
          v76 = 0;
          v145 = v49;
          v77 = v47;
          v78 = 2 * (bytesPerRow >> 1);
          v79 = &v135[v77];
          v80 = dataPointer + 8 * v56 * v77;
          v81 = baseAddress;
          do
          {
            if (v51 > 0.0)
            {
              v82 = 0;
              v83 = v81;
              v84 = (v76 + v145) % v133;
              v85 = &v79[4 * v84 * v133];
              v86 = (v80 + v139 * v84 + v62 * ((v76 + v145) / v133));
              do
              {
                v87 = exp(*v86);
                v81 = v83;
                _D0 = v87 * *&v85[4 * v82];
                __asm { FCVT            H0, D0 }

                *(v83 + 2 * v82++) = LOWORD(_D0);
                v86 = (v86 + v61);
              }

              while (v51 > v82);
            }

            ++v76;
            v81 += v78;
          }

          while (v53 > v76);
        }

        free(v135);
        return v129;
      }

      else if ([multiArrayValue dataType] == 65600)
      {
        dataPointer2 = [multiArrayValue dataPointer];
        shape2 = [multiArrayValue shape];
        v94 = [shape2 count];
        v95 = [objc_msgSend(shape2 objectAtIndexedSubscript:{v94 - 2), "intValue"}];
        baseAddress2 = [output baseAddress];
        bytesPerRow3 = [output bytesPerRow];
        [output region];
        v99 = v98;
        v101 = v100;
        v103 = v102;
        v105 = v104;
        v106 = [objc_msgSend(objc_msgSend(multiArrayValue "strides")];
        v107 = [objc_msgSend(objc_msgSend(multiArrayValue "strides")];
        v108 = [objc_msgSend(objc_msgSend(multiArrayValue "strides")];
        [output region];
        v110 = v109;
        bytesPerRow4 = [output bytesPerRow];
        [output region];
        bzero([output baseAddress], bytesPerRow4 * (v110 - 1) + 2 * v112);
        if (v105 > 0.0)
        {
          v113 = 0;
          do
          {
            if (v103 > 0.0)
            {
              v114 = (dataPointer2 + 8 * v108 * v99 + 8 * v107 * ((v113 + v101) % v95) + 8 * v106 * ((v113 + v101) / v95));
              v115 = 1;
              v116 = baseAddress2;
              do
              {
                _D0 = *v114;
                __asm { FCVT            H0, D0 }

                *v116++ = _D0;
                v118 = v115++;
                v114 += v108;
              }

              while (v103 > v118);
            }

            ++v113;
            baseAddress2 += 2 * (bytesPerRow3 >> 1);
          }

          while (v105 > v113);
        }
      }

      else if ([multiArrayValue dataType] == 65568)
      {
        fillMultiArrayFloatToRh<float>(output, multiArrayValue);
      }

      else if ([multiArrayValue dataType] == 65552)
      {
        _ZL23fillMultiArrayFloatToRhIDF16_EvPU33objcproto22CIImageProcessorOutput11objc_objectP12MLMultiArray(output, multiArrayValue);
      }
    }
  }

  return v38;
}

+ (int)formatForInputAtIndex:(int)index arguments:(id)arguments
{
  v4 = [arguments objectForKeyedSubscript:@"inputCIFormat"];

  return [v4 intValue];
}

+ (int)outputFormatWithArguments:(id)arguments
{
  v3 = [arguments objectForKeyedSubscript:@"outputCIFormat"];

  return [v3 intValue];
}

+ (void)processWithInputs:(os_log_t)log arguments:output:error:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "+[CICoreMLProcessor processWithInputs:arguments:output:error:]";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s prediction error", &v1, 0xCu);
}

@end