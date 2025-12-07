@interface CIDepthBlurEffect
+ (CGImageMetadata)augmentMetadataWithRenderingPropertiesForImage:(id)image;
+ (CGImageMetadata)metadataFromDictionary:(id)dictionary metadata:(CGImageMetadata *)metadata;
+ (id)customAttributes;
- (id)_getFocusRect:(id)rect focusRect:(id)focusRect;
- (id)outputImage;
- (void)prewarm:(id)prewarm;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation CIDepthBlurEffect

- (void)prewarm:(id)prewarm
{
  (MEMORY[0x1EEE9AC00])(self, a2, prewarm);
  v4 = v3;
  v51[3] = *MEMORY[0x1E69E9840];
  if ((CI_SKIP_PREWARMING_SDOF_RENDERING() & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = envCCMakeBlurMapClass();
    classLoadUniKernels(v6);
    v7 = envCCApplyBlurMapClass();
    classLoadUniKernels(v7);
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:envCCMakeBlurMapClass()];
    if (v8)
    {
      v9 = [v8 URLForResource:@"CoreImageKernels_only.ci" withExtension:@"metallib"];
      v10 = [CIKernel kernelNamesFromMetalLibrary:v9];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v46;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v46 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [CIKernel cachedKernelWithFunctionName:*(*(&v45 + 1) + 8 * i) fromMetalLibrary:v9 error:0];
          }

          v12 = [v10 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v12);
      }
    }

    objc_autoreleasePoolPop(v5);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL23prewarmSDOFFilterGraphsP9CIContext_block_invoke;
    block[3] = &unk_1E75C20F8;
    block[4] = MEMORY[0x1E695E0F0];
    block[5] = v4;
    if (prewarmSDOFFilterGraphs(CIContext *)::onceToken != -1)
    {
      dispatch_once(&prewarmSDOFFilterGraphs(CIContext *)::onceToken, block);
    }

    v50[0] = @"working_format";
    v51[0] = [MEMORY[0x1E696AD98] numberWithInt:2054];
    v51[1] = MEMORY[0x1E695E110];
    v50[1] = @"kCIContextCacheIntermediates";
    v50[2] = @"kCIContextUseMetalRenderer";
    v51[2] = MEMORY[0x1E695E118];
    v26 = +[CIContext contextWithOptions:](CIContext, "contextWithOptions:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:3]);
    v25 = +[CIContext defaultWorkingColorSpace];
    v24 = [MEMORY[0x1E695DF88] dataWithLength:0x10000];
    v15 = [CIImage imageWithBitmapData:v24 bytesPerRow:512 size:2054 format:v25 colorSpace:128.0, 128.0];
    bzero(v49, 0x10000uLL);
    v16 = [[CIRenderDestination alloc] initWithBitmapData:v49 width:128 height:128 bytesPerRow:512 format:2054];
    bzero(&v45, 0x8000uLL);
    v27 = [[CIRenderDestination alloc] initWithBitmapData:&v45 width:128 height:128 bytesPerRow:256 format:2053];
    v43[0] = @"inputWidth";
    v43[1] = @"inputHeight";
    v44[0] = &unk_1F1082460;
    v44[1] = &unk_1F1082460;
    v17 = -[CIImage imageByApplyingFilter:withInputParameters:](v15, "imageByApplyingFilter:withInputParameters:", @"CIMorphologyRectangleMinimum", [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2]);
    v41[0] = @"inputWidth";
    v41[1] = @"inputHeight";
    v42[0] = &unk_1F1082460;
    v42[1] = &unk_1F1082460;
    v18 = -[CIImage imageByApplyingFilter:withInputParameters:](v17, "imageByApplyingFilter:withInputParameters:", @"CIMorphologyRectangleMaximum", [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2]);
    v39[0] = @"inputWidth";
    v39[1] = @"inputHeight";
    v40[0] = &unk_1F1082430;
    v40[1] = &unk_1F1082430;
    v19 = -[CIImage imageByApplyingFilter:withInputParameters:](v18, "imageByApplyingFilter:withInputParameters:", @"CIMorphologyRectangleMinimum", [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2]);
    v37[0] = @"inputWidth";
    v37[1] = @"inputHeight";
    v38[0] = &unk_1F1082430;
    v38[1] = &unk_1F1082430;
    -[CIContext startTaskToRender:toDestination:error:](v26, "startTaskToRender:toDestination:error:", -[CIImage imageByApplyingFilter:withInputParameters:](v19, "imageByApplyingFilter:withInputParameters:", @"CIMorphologyRectangleMaximum", [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2]), v16, 0);

    v20 = [CIImage imageWithBitmapData:v24 bytesPerRow:256 size:2053 format:v25 colorSpace:128.0, 128.0];
    v35[0] = @"inputWidth";
    v35[1] = @"inputHeight";
    v36[0] = &unk_1F1082460;
    v36[1] = &unk_1F1082460;
    v21 = -[CIImage imageByApplyingFilter:withInputParameters:](v20, "imageByApplyingFilter:withInputParameters:", @"CIMorphologyRectangleMinimum", [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2]);
    v33[0] = @"inputWidth";
    v33[1] = @"inputHeight";
    v34[0] = &unk_1F1082460;
    v34[1] = &unk_1F1082460;
    v22 = -[CIImage imageByApplyingFilter:withInputParameters:](v21, "imageByApplyingFilter:withInputParameters:", @"CIMorphologyRectangleMaximum", [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2]);
    v31[0] = @"inputWidth";
    v31[1] = @"inputHeight";
    v32[0] = &unk_1F1082430;
    v32[1] = &unk_1F1082430;
    v23 = -[CIImage imageByApplyingFilter:withInputParameters:](v22, "imageByApplyingFilter:withInputParameters:", @"CIMorphologyRectangleMinimum", [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2]);
    v29[0] = @"inputWidth";
    v29[1] = @"inputHeight";
    v30[0] = &unk_1F1082430;
    v30[1] = &unk_1F1082430;
    -[CIContext startTaskToRender:toDestination:error:](v26, "startTaskToRender:toDestination:error:", -[CIImage imageByApplyingFilter:withInputParameters:](v23, "imageByApplyingFilter:withInputParameters:", @"CIMorphologyRectangleMaximum", [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2]), v27, 0);
  }
}

+ (id)customAttributes
{
  v27[14] = *MEMORY[0x1E69E9840];
  v26[0] = @"CIAttributeFilterCategories";
  v25[0] = @"CICategoryBlur";
  v25[1] = @"CICategoryVideo";
  v25[2] = @"CICategoryStillImage";
  v25[3] = @"CICategoryBuiltIn";
  v27[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  v27[1] = @"11";
  v26[1] = @"CIAttributeFilterAvailable_iOS";
  v26[2] = @"CIAttributeFilterAvailable_Mac";
  v27[2] = @"10.13";
  v26[3] = @"inputAperture";
  v23[0] = @"CIAttributeSliderMin";
  v23[1] = @"CIAttributeSliderMax";
  v24[0] = &unk_1F1085148;
  v24[1] = &unk_1F1085158;
  v23[2] = @"CIAttributeMin";
  v23[3] = @"CIAttributeMax";
  v24[2] = &unk_1F1085138;
  v24[3] = &unk_1F1085158;
  v23[4] = @"CIAttributeDefault";
  v23[5] = @"CIAttributeType";
  v24[4] = &unk_1F1085138;
  v24[5] = @"CIAttributeTypeScalar";
  v27[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:6];
  v26[4] = @"inputLumaNoiseScale";
  v21[0] = @"CIAttributeSliderMin";
  v21[1] = @"CIAttributeSliderMax";
  v22[0] = &unk_1F1085138;
  v22[1] = &unk_1F1085188;
  v21[2] = @"CIAttributeMin";
  v21[3] = @"CIAttributeMax";
  v22[2] = &unk_1F1085138;
  v22[3] = &unk_1F1085188;
  v21[4] = @"CIAttributeDefault";
  v21[5] = @"CIAttributeType";
  v22[4] = &unk_1F1085138;
  v22[5] = @"CIAttributeTypeScalar";
  v27[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];
  v26[5] = @"inputFocusRect";
  v19[0] = @"CIAttributeType";
  v19[1] = @"CIAttributeIdentity";
  v20[0] = @"CIAttributeTypeRectangle";
  v20[1] = [CIVector vectorWithCGRect:*MEMORY[0x1E695F040], *(MEMORY[0x1E695F040] + 8), *(MEMORY[0x1E695F040] + 16), *(MEMORY[0x1E695F040] + 24)];
  v27[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v26[6] = @"inputLeftEyePositions";
  v17[1] = @"CIAttributeDefault";
  v18[0] = @"CIAttributeTypePosition";
  v17[0] = @"CIAttributeType";
  v18[1] = [CIVector vectorWithX:-1.0 Y:-1.0];
  v27[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v26[7] = @"inputRightEyePositions";
  v15[1] = @"CIAttributeDefault";
  v16[0] = @"CIAttributeTypePosition";
  v15[0] = @"CIAttributeType";
  v16[1] = [CIVector vectorWithX:-1.0 Y:-1.0];
  v27[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v26[8] = @"inputChinPositions";
  v13[1] = @"CIAttributeDefault";
  v14[0] = @"CIAttributeTypePosition";
  v13[0] = @"CIAttributeType";
  v14[1] = [CIVector vectorWithX:-1.0 Y:-1.0];
  v27[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v26[9] = @"inputNosePositions";
  v11[1] = @"CIAttributeDefault";
  v12[0] = @"CIAttributeTypePosition";
  v11[0] = @"CIAttributeType";
  v12[1] = [CIVector vectorWithX:-1.0 Y:-1.0];
  v27[9] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v26[10] = @"inputScaleFactor";
  v9[0] = @"CIAttributeType";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = @"CIAttributeTypeScalar";
  v10[1] = &unk_1F1085138;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F1085148;
  v10[3] = &unk_1F1085148;
  v27[10] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v26[11] = @"inputCalibrationData";
  v7 = @"CIAttributeClass";
  v8 = @"AVCameraCalibrationData";
  v27[11] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v26[12] = @"inputAuxDataMetadata";
  v5 = @"CIAttributeClass";
  v6 = @"CGImageMetadataRef";
  v27[12] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v26[13] = @"inputShape";
  v3 = @"CIAttributeClass";
  v4 = @"NSString";
  v27[13] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:14];
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  if ([key isEqualToString:@"inputShiftmapImage"])
  {
    v7 = @"inputDisparityImage";
LABEL_13:

    [(CIDepthBlurEffect *)self setValue:value forKey:v7];
    return;
  }

  if ([key isEqualToString:@"inputLeftEyePosition"])
  {
    v7 = @"inputLeftEyePositions";
    goto LABEL_13;
  }

  if ([key isEqualToString:@"inputRightEyePosition"])
  {
    v7 = @"inputRightEyePositions";
    goto LABEL_13;
  }

  if ([key isEqualToString:@"inputChinPosition"])
  {
    v7 = @"inputChinPositions";
    goto LABEL_13;
  }

  if ([key isEqualToString:@"inputFaceMidPoint"])
  {
    v7 = @"inputNosePositions";
    goto LABEL_13;
  }

  if ([key isEqualToString:@"inputScale"])
  {
    v7 = @"inputScaleFactor";
    goto LABEL_13;
  }

  if (([key isEqualToString:@"inputShiftMin"] & 1) == 0 && (objc_msgSend(key, "isEqualToString:", @"inputShiftMax") & 1) == 0 && (objc_msgSend(key, "isEqualToString:", @"inputUseMipmaps") & 1) == 0 && (objc_msgSend(key, "isEqualToString:", @"inputUseNativeImage") & 1) == 0 && (objc_msgSend(key, "isEqualToString:", @"inputUseNormalizedDisparity") & 1) == 0 && (objc_msgSend(key, "isEqualToString:", @"inputOriginalSize") & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = CIDepthBlurEffect;
    [(CIFilter *)&v8 setValue:value forUndefinedKey:key];
  }
}

- (id)_getFocusRect:(id)rect focusRect:(id)focusRect
{
  v26 = *MEMORY[0x1E69E9840];
  if (!focusRect || (v5 = focusRect, [focusRect CGRectValue], CGRectEqualToRect(v27, *MEMORY[0x1E695F040])))
  {
    properties = [rect properties];
    if (properties)
    {
      v7 = [properties objectForKey:*MEMORY[0x1E696D8B0]];
      if (v7)
      {
        v8 = [v7 objectForKey:@"Regions"];
        if (v8)
        {
          v9 = [v8 objectForKey:*MEMORY[0x1E696D930]];
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v22;
            v13 = *MEMORY[0x1E696D938];
            v14 = *MEMORY[0x1E696D920];
            while (2)
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v22 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v16 = *(*(&v21 + 1) + 8 * i);
                v17 = [v16 objectForKey:v13];
                if (v17 && [v17 isEqualToString:v14] && CGRectMakeWithDictionaryRepresentation(v16, &v20))
                {
                  v20.origin.x = v20.origin.x - v20.size.width * 0.5;
                  v20.origin.y = 1.0 - v20.origin.y - v20.size.height * 0.5;
                  return [CIVector vectorWithCGRect:*&v20.origin.x, *&v20.origin.y];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }
        }
      }
    }

    return [CIVector vectorWithX:0.45 Y:0.45 Z:0.1 W:0.1];
  }

  return v5;
}

- (id)outputImage
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  result = self->inputImage;
  if (!result || !self->inputDisparityImage)
  {
    return result;
  }

  [(NSNumber *)self->inputScaleFactor floatValue];
  v4 = 0.0;
  v6 = fminf(fmaxf(v5, 0.0), 1.0);
  if (v6 < 0.001)
  {
    return self->inputImage;
  }

  inputDisparityImage = metadataFromValue(self->inputAuxDataMetadata);
  inputLumaNoiseScale = self->inputLumaNoiseScale;
  if (inputLumaNoiseScale)
  {
    [(NSNumber *)inputLumaNoiseScale floatValue];
    v4 = fminf(fmaxf(v9, 0.0), 1.0);
    inputLumaNoiseScale = self->inputLumaNoiseScale;
  }

  [(NSNumber *)inputLumaNoiseScale floatValue];
  if (v10 == 0.0)
  {
    properties = [(CIImage *)self->inputImage properties];
    if (properties)
    {
      LODWORD(valuePtr[0]) = 2143289344;
      Value = CFDictionaryGetValue(properties, *MEMORY[0x1E696DE30]);
      v4 = 0.0;
      if (Value)
      {
        v13 = CFDictionaryGetValue(Value, @"29");
        if (v13)
        {
          CFNumberGetValue(v13, kCFNumberFloatType, valuePtr);
          v4 = *valuePtr;
        }
      }
    }
  }

  if (inputDisparityImage)
  {
LABEL_12:
    v14 = tuningParametersFromMetaData(inputDisparityImage);
    v15 = 0;
    if (v14)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  inputDisparityImage = self->inputDisparityImage;
  if (inputDisparityImage)
  {
    if ([(CIImage *)self->inputDisparityImage properties])
    {
      properties2 = [(CGImageMetadata *)inputDisparityImage properties];
      inputDisparityImage = [properties2 objectForKeyedSubscript:*MEMORY[0x1E696D228]];
      if (inputDisparityImage)
      {
        goto LABEL_12;
      }
    }

    else
    {
      inputDisparityImage = 0;
    }
  }

  v15 = 1;
LABEL_20:
  v14 = tuningParametersFromImage(self->inputDisparityImage);
LABEL_21:
  if (v4 == 0.0)
  {
    SDOFRenderingValue(&cfstr_Lumanoisescale.isa, v14);
    v4 = v17;
  }

  getSimulatedAperture(self->inputDisparityImage, inputDisparityImage, self->inputAperture, v14);
  v19 = v18;
  v20 = [(CIDepthBlurEffect *)self _getFocusRect:self->inputImage focusRect:self->inputFocusRect];
  inputImage = self->inputImage;
  v254[0] = @"inputImage";
  v254[1] = @"inputShiftmapImage";
  v22 = self->inputDisparityImage;
  v255[0] = inputImage;
  v255[1] = v22;
  v255[2] = v20;
  v254[2] = @"inputFocusRect";
  v254[3] = @"inputScale";
  *&v23 = v6;
  v255[3] = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  v254[4] = @"inputAperture";
  LODWORD(v24) = v19;
  v255[4] = [MEMORY[0x1E696AD98] numberWithFloat:v24];
  v25 = 0x1E695D000uLL;
  v26 = +[CIFilter filterWithName:withInputParameters:](CIFilter, "filterWithName:withInputParameters:", @"CIDepthEffectMakeBlurMap", [MEMORY[0x1E695DF20] dictionaryWithObjects:v255 forKeys:v254 count:5]);
  if (!self->inputAuxDataMetadata)
  {
    goto LABEL_58;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(self->inputAuxDataMetadata))
  {
    goto LABEL_58;
  }

  inputAuxDataMetadata = self->inputAuxDataMetadata;
  if (!inputAuxDataMetadata)
  {
    goto LABEL_58;
  }

  if (v15)
  {
    inputDisparityImage = self->inputAuxDataMetadata;
LABEL_59:
    [(CIFilter *)v26 setValue:inputDisparityImage forKey:@"inputAuxDataMetadata"];
    v219 = 0;
    goto LABEL_61;
  }

  v29 = [objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Version", "intValue"}];
  v31 = v29;
  if (v29 < 4)
  {
    switch(v29)
    {
      case 3:
        v38 = malloc_type_calloc(1uLL, 0x1D8uLL, 0x1000040156972F5uLL);
        *v38 = 0x3444E4552;
        v38[2] = 472;
        v38[3] = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"radius", "intValue"}];
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"disparitySigma", "floatValue"}];
        v38[4] = v113;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"aaLumaSigma", "floatValue"}];
        v38[5] = v114;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"aaChromaSigma", "floatValue"}];
        v38[6] = v115;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"aaSpatialSigma", "floatValue"}];
        v38[7] = v116;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.linearBlurGrowthM", "floatValue"}];
        v38[9] = v117;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.linearBlurGrowthC", "floatValue"}];
        v38[10] = v118;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.distToBlurScaling", "floatValue"}];
        v38[11] = v119;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.eyeToEyebrowRatio", "floatValue"}];
        v38[12] = v120;
        v38[13] = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"iterations", "intValue"}];
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"preFilterGain", "floatValue"}];
        v38[14] = v121;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"weightGain", "floatValue"}];
        v38[15] = v122;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"intensityGain", "floatValue"}];
        v38[16] = v123;
        v38[17] = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"nRings", "intValue"}];
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"relativeWeightThreshold", "floatValue"}];
        v38[18] = v124;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"highlightBoostGain", "floatValue"}];
        v38[19] = v125;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"shapeObstructionCoeff", "floatValue"}];
        v38[20] = v126;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"ringAmplitude", "floatValue"}];
        v38[21] = v127;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"ringSharpness", "floatValue"}];
        v38[22] = v128;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"preFilterBlurStrength", "floatValue"}];
        v38[23] = v129;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"antiAliasBlurStrength", "floatValue"}];
        v38[24] = v130;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"minimumSimulatedAperture", "floatValue"}];
        v38[25] = v131;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"blendingQuarterResAlphaGain", "floatValue"}];
        v38[26] = v132;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"blendingFullResAlphaGain", "floatValue"}];
        v38[27] = v133;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"weightScaling", "floatValue"}];
        v38[28] = v134;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"maxReconstructionWeight", "floatValue"}];
        v38[29] = v135;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"innerSamplingRadius", "floatValue"}];
        v38[30] = v136;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"outerSamplingRadius", "floatValue"}];
        v38[31] = v137;
        v38[32] = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"nSamples", "intValue"}];
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"lumaSigma", "floatValue"}];
        v38[33] = v138;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"chromaSigma", "floatValue"}];
        v38[34] = v139;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"accumulatedWeightT0", "floatValue"}];
        v38[35] = v140;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"accumulatedWeightT1", "floatValue"}];
        v38[36] = v141;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"aaSegmentationSigma", "floatValue"}];
        v38[69] = v142;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"segmentationSigma", "floatValue"}];
        v38[68] = v143;
        v38[70] = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"Version", "intValue"}];
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"SLM", "objectForKeyedSubscript:", @"shiftDeadZone", "floatValue"}];
        v38[8] = v144;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"SLM", "objectForKeyedSubscript:", @"zeroShiftPercentile", "floatValue"}];
        v38[37] = v145;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"SLM", "objectForKeyedSubscript:", @"maxFGBlur", "floatValue"}];
        v38[38] = v146;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"SLM", "objectForKeyedSubscript:", @"maximumSimulatedAperture", "floatValue"}];
        v38[67] = v147;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"SLM", "objectForKeyedSubscript:", @"defaultSimulatedAperture", "floatValue"}];
        v38[71] = v148;
        v38[39] = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapSmoothing", "objectForKeyedSubscript:", @"nIterations", "intValue"}];
        v38[40] = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"preFilterRadius", "intValue"}];
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"sharpRadius", "floatValue"}];
        v38[41] = v149;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"softRadius", "floatValue"}];
        v38[42] = v150;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"lumaNoiseModelCoeff", "floatValue"}];
        v38[43] = v151;
        v38[44] = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"antiAliasRadius", "intValue"}];
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"alphaEpsilon", "floatValue"}];
        v38[45] = v152;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"alphaGain", "floatValue"}];
        v38[46] = v153;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"blurRadiusT0", "floatValue"}];
        v38[47] = v154;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"blurRadiusT1", "floatValue"}];
        v38[48] = v155;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"maxIntensityT0", "floatValue"}];
        v38[49] = v156;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"maxIntensityT1", "floatValue"}];
        v38[50] = v157;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"minIntensityT0", "floatValue"}];
        v38[51] = v158;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"minIntensityT1", "floatValue"}];
        v38[52] = v159;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.maxBlurOnEyes", "floatValue"}];
        v38[53] = v160;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.maxBlurDistFromFocus", "floatValue"}];
        v38[54] = v161;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.capMultip", "floatValue"}];
        v38[55] = v162;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.gainMultip", "floatValue"}];
        v38[56] = v163;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Fusion", "objectForKeyedSubscript:", @"subtractiveLowerAlpha", "floatValue"}];
        v38[57] = v164;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Fusion", "objectForKeyedSubscript:", @"subtractiveUpperAlpha", "floatValue"}];
        v38[58] = v165;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Fusion", "objectForKeyedSubscript:", @"subtractiveMaxBlur", "floatValue"}];
        v38[59] = v166;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Fusion", "objectForKeyedSubscript:", @"additiveLowerAlpha", "floatValue"}];
        v38[60] = v167;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Fusion", "objectForKeyedSubscript:", @"additiveUpperAlpha", "floatValue"}];
        v38[61] = v168;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Fusion", "objectForKeyedSubscript:", @"additiveMaxBlur", "floatValue"}];
        v38[62] = v169;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapSmoothing", "objectForKeyedSubscript:", @"originalBlurValueT0", "floatValue"}];
        v38[63] = v170;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapSmoothing", "objectForKeyedSubscript:", @"originalBlurValueT1", "floatValue"}];
        v38[64] = v171;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapSmoothing", "objectForKeyedSubscript:", @"localMinimumBlurValueT0", "floatValue"}];
        v38[65] = v172;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapSmoothing", "objectForKeyedSubscript:", @"localMinimumBlurValueT1", "floatValue"}];
        v38[66] = v173;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"subjectDistanceMinimumFocusDistance", "floatValue"}];
        v38[73] = v174;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"subjectDistanceMaximumFocusDistance", "floatValue"}];
        v38[74] = v175;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"subjectDistanceScalingFactor", "floatValue"}];
        v38[75] = v176;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"subjectDistanceOffset", "floatValue"}];
        v38[76] = v177;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"protectBodyStrength", "floatValue"}];
        v38[77] = v178;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"maxBlur", "floatValue"}];
        v38[78] = v179;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"smoothstepMin", "floatValue"}];
        v38[79] = v180;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"smoothstepMax", "floatValue"}];
        v38[80] = v181;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"distanceAdd", "floatValue"}];
        v38[81] = v182;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"faceMaskAdditiveMaxBlur", "floatValue"}];
        v38[82] = v183;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"faceMaskSubtractiveMaxBlur", "floatValue"}];
        v38[83] = v184;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"personDistance", "floatValue"}];
        v38[84] = v185;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"personThreshold", "floatValue"}];
        v38[85] = v186;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"personMaxBlur", "floatValue"}];
        v38[86] = v187;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"hairDistance", "floatValue"}];
        v38[87] = v188;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"hairThreshold", "floatValue"}];
        v38[88] = v189;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"hairMaxBlur", "floatValue"}];
        v38[89] = v190;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"hairSubtractiveLowerAlpha", "floatValue"}];
        v38[90] = v191;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"hairSubtractiveUpperAlpha", "floatValue"}];
        v38[91] = v192;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"hairAdditiveLowerAlpha", "floatValue"}];
        v38[92] = v193;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"hairAdditiveUpperAlpha", "floatValue"}];
        v38[93] = v194;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"hairAdditiveMaxBlur", "floatValue"}];
        v38[94] = v195;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"hairSubtractiveMaxBlur", "floatValue"}];
        v38[95] = v196;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"relativeApertureScalingStrength", "floatValue"}];
        v38[96] = v197;
        v38[97] = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"eyeProtectionMaxFaces", "intValue"}];
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"eyeProtectionFaceWeightsSmoothStepMin", "floatValue"}];
        v38[98] = v198;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"eyeProtectionFaceWeightsSmoothStepMax", "floatValue"}];
        v38[99] = v199;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"eyeProtectionOvalDimsDistanceScale", "floatValue"}];
        v38[100] = v200;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"beyeProtectionOvalDimsDistanceOffset", "floatValue"}];
        v38[101] = v201;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"eyeProtectionOvalDimsRadiusHorizontal", "floatValue"}];
        v38[102] = v202;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"eyeProtectionOvalDimsRadiusVertical", "floatValue"}];
        v38[103] = v203;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"eyeProtectionOvalFallOffSmoothStepMin", "floatValue"}];
        v38[104] = v204;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"eyeProtectionOvalFallOffSmoothStepMax", "floatValue"}];
        v38[105] = v205;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"eyeProtectionPersonMaskSmoothStepMin", "floatValue"}];
        v38[106] = v206;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"eyeProtectionPersonMaskSmoothStepMax", "floatValue"}];
        v38[107] = v207;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"eyeProtectionPreventStrength", "floatValue"}];
        v38[108] = v208;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"eyeProtectionSubtractiveMaxBlur", "floatValue"}];
        v38[109] = v209;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapRefinement", "objectForKeyedSubscript:", @"eyeProtectionSubtractiveApertureScaling", "floatValue"}];
        v38[110] = v210;
        v46 = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"SLM", "objectForKeyedSubscript:", @"disparityScalingFactor", "floatValue"}];
        v38[72] = v211;
        *(v38 + 111) = 0;
        *(v38 + 113) = 0;
        *(v38 + 115) = 0;
        v38[117] = 0;
        break;
      case 2:
        v38 = malloc_type_calloc(1uLL, 0x140uLL, 0x1000040B2834900uLL);
        *v38 = 0x2444E4552;
        v38[2] = 320;
        v38[3] = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"radius", "intValue"}];
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"disparitySigma", "floatValue"}];
        v38[4] = v51;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"aaLumaSigma", "floatValue"}];
        v38[5] = v52;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"aaChromaSigma", "floatValue"}];
        v38[6] = v53;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"aaSpatialSigma", "floatValue"}];
        v38[7] = v54;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.linearBlurGrowthM", "floatValue"}];
        v38[9] = v55;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.linearBlurGrowthC", "floatValue"}];
        v38[10] = v56;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.distToBlurScaling", "floatValue"}];
        v38[11] = v57;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.eyeToEyebrowRatio", "floatValue"}];
        v38[12] = v58;
        v38[13] = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"iterations", "intValue"}];
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"preFilterGain", "floatValue"}];
        v38[14] = v59;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"weightGain", "floatValue"}];
        v38[15] = v60;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"intensityGain", "floatValue"}];
        v38[16] = v61;
        v38[17] = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"nRings", "intValue"}];
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"relativeWeightThreshold", "floatValue"}];
        v38[18] = v62;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"highlightBoostGain", "floatValue"}];
        v38[19] = v63;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"shapeObstructionCoeff", "floatValue"}];
        v38[20] = v64;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"ringAmplitude", "floatValue"}];
        v38[21] = v65;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"ringSharpness", "floatValue"}];
        v38[22] = v66;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"preFilterBlurStrength", "floatValue"}];
        v38[23] = v67;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"antiAliasBlurStrength", "floatValue"}];
        v38[24] = v68;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"minimumSimulatedAperture", "floatValue"}];
        v38[25] = v69;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"blendingQuarterResAlphaGain", "floatValue"}];
        v38[26] = v70;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"blendingFullResAlphaGain", "floatValue"}];
        v38[27] = v71;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"weightScaling", "floatValue"}];
        v38[28] = v72;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"maxReconstructionWeight", "floatValue"}];
        v38[29] = v73;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"innerSamplingRadius", "floatValue"}];
        v38[30] = v74;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"outerSamplingRadius", "floatValue"}];
        v38[31] = v75;
        v38[32] = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"nSamples", "intValue"}];
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"lumaSigma", "floatValue"}];
        v38[33] = v76;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"chromaSigma", "floatValue"}];
        v38[34] = v77;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"accumulatedWeightT0", "floatValue"}];
        v38[35] = v78;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"accumulatedWeightT1", "floatValue"}];
        v38[36] = v79;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"aaSegmentationSigma", "floatValue"}];
        v38[69] = v80;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"segmentationSigma", "floatValue"}];
        v38[68] = v81;
        v38[70] = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparityRefinement", "objectForKeyedSubscript:", @"Version", "intValue"}];
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"SLM", "objectForKeyedSubscript:", @"shiftDeadZone", "floatValue"}];
        v38[8] = v82;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"SLM", "objectForKeyedSubscript:", @"zeroShiftPercentile", "floatValue"}];
        v38[37] = v83;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"SLM", "objectForKeyedSubscript:", @"maxFGBlur", "floatValue"}];
        v38[38] = v84;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"SLM", "objectForKeyedSubscript:", @"maximumSimulatedAperture", "floatValue"}];
        v38[67] = v85;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"SLM", "objectForKeyedSubscript:", @"defaultSimulatedAperture", "floatValue"}];
        v38[71] = v86;
        v38[39] = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapSmoothing", "objectForKeyedSubscript:", @"nIterations", "intValue"}];
        v38[40] = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"preFilterRadius", "intValue"}];
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"sharpRadius", "floatValue"}];
        v38[41] = v87;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"softRadius", "floatValue"}];
        v38[42] = v88;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"lumaNoiseModelCoeff", "floatValue"}];
        v38[43] = v89;
        v38[44] = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"antiAliasRadius", "intValue"}];
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"alphaEpsilon", "floatValue"}];
        v38[45] = v90;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"alphaGain", "floatValue"}];
        v38[46] = v91;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"blurRadiusT0", "floatValue"}];
        v38[47] = v92;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"blurRadiusT1", "floatValue"}];
        v38[48] = v93;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"maxIntensityT0", "floatValue"}];
        v38[49] = v94;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"maxIntensityT1", "floatValue"}];
        v38[50] = v95;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"minIntensityT0", "floatValue"}];
        v38[51] = v96;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"HighlightRecovery", "objectForKeyedSubscript:", @"minIntensityT1", "floatValue"}];
        v38[52] = v97;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.maxBlurOnEyes", "floatValue"}];
        v38[53] = v98;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.maxBlurDistFromFocus", "floatValue"}];
        v38[54] = v99;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.capMultip", "floatValue"}];
        v38[55] = v100;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.gainMultip", "floatValue"}];
        v38[56] = v101;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Fusion", "objectForKeyedSubscript:", @"subtractiveLowerAlpha", "floatValue"}];
        v38[57] = v102;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Fusion", "objectForKeyedSubscript:", @"subtractiveUpperAlpha", "floatValue"}];
        v38[58] = v103;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Fusion", "objectForKeyedSubscript:", @"subtractiveMaxBlur", "floatValue"}];
        v38[59] = v104;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Fusion", "objectForKeyedSubscript:", @"additiveLowerAlpha", "floatValue"}];
        v38[60] = v105;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Fusion", "objectForKeyedSubscript:", @"additiveUpperAlpha", "floatValue"}];
        v38[61] = v106;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Fusion", "objectForKeyedSubscript:", @"additiveMaxBlur", "floatValue"}];
        v38[62] = v107;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapSmoothing", "objectForKeyedSubscript:", @"originalBlurValueT0", "floatValue"}];
        v38[63] = v108;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapSmoothing", "objectForKeyedSubscript:", @"originalBlurValueT1", "floatValue"}];
        v38[64] = v109;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapSmoothing", "objectForKeyedSubscript:", @"localMinimumBlurValueT0", "floatValue"}];
        v38[65] = v110;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"BlurMapSmoothing", "objectForKeyedSubscript:", @"localMinimumBlurValueT1", "floatValue"}];
        v38[66] = v111;
        v46 = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"SLM", "objectForKeyedSubscript:", @"disparityScalingFactor", "floatValue"}];
        v38[72] = v112;
        *(v38 + 73) = 0;
        *(v38 + 75) = 0;
        *(v38 + 77) = 0;
        v38[79] = 0;
        break;
      case 1:
        v38 = malloc_type_calloc(1uLL, 0x30uLL, 0x1000040EED21634uLL);
        *v38 = 0x1444E4552;
        v38[2] = 48;
        v38[3] = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"DisparitySmoothing", "objectForKeyedSubscript:", @"nIterations", "unsignedIntValue"}];
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"SLM", "objectForKeyedSubscript:", @"shiftDeadZone", "floatValue"}];
        v38[4] = v39;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.linearBlurGrowthC", "floatValue"}];
        v38[6] = v40;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.linearBlurGrowthM", "floatValue"}];
        v38[5] = v41;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.distToBlurScaling", "floatValue"}];
        v38[7] = v42;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"faces.eyeToEyebrowRatio", "floatValue"}];
        v38[8] = v43;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"relativeWeightThreshold", "floatValue"}];
        v38[9] = v44;
        [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"highlightBoostGain", "floatValue"}];
        v38[10] = v45;
        v46 = [objc_msgSend(objc_msgSend(inputAuxDataMetadata objectForKeyedSubscript:{@"Rendering", "objectForKeyedSubscript:", @"antiAliasBlurStrength", "floatValue"}];
        v38[11] = v48;
        break;
      default:
        v32 = ci_logger_api(v29, v30);
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          goto LABEL_32;
        }

        LODWORD(valuePtr[0]) = 67109120;
        HIDWORD(valuePtr[0]) = v31;
        goto LABEL_31;
    }

    if (*v38 == 1145980242)
    {
      if (v38[2])
      {
        v212 = [objc_msgSend(MEMORY[0x1E695DEF0] dataWithBytes:v38) length:{"base64EncodedDataWithOptions:", 0}];
        v213 = malloc_type_malloc([v212 length] + 1, 0x100004077774924uLL);
        v213[[v212 length]] = 0;
        v25 = 0x1E695D000;
        memcpy(v213, [v212 bytes], objc_msgSend(v212, "length"));
        inputAuxDataMetadata = CGImageMetadataTagCreate(@"http://ns.apple.com/depthBlurEffect/1.0/", @"depthBlurEffect", @"RenderingParameters", kCGImageMetadataTypeString, [MEMORY[0x1E696AEC0] stringWithUTF8String:v213]);
        free(v213);
        free(v38);
        if (!inputAuxDataMetadata)
        {
          goto LABEL_58;
        }

        goto LABEL_32;
      }

      v218 = ci_logger_api(v46, v47);
      if (os_log_type_enabled(v218, OS_LOG_TYPE_INFO))
      {
        valuePtr[0] = 67109120;
        v215 = "Invalid rendering parameter header size (%d)";
        v216 = v218;
        v217 = 8;
        goto LABEL_56;
      }
    }

    else
    {
      v214 = ci_logger_api(v46, v47);
      if (os_log_type_enabled(v214, OS_LOG_TYPE_INFO))
      {
        LOWORD(valuePtr[0]) = 0;
        v215 = "Invalid rendering parameter start marker.";
        v216 = v214;
        v217 = 2;
LABEL_56:
        _os_log_impl(&dword_19CC36000, v216, OS_LOG_TYPE_INFO, v215, valuePtr, v217);
      }
    }

    free(v38);
    goto LABEL_58;
  }

  v32 = ci_logger_api(v29, v30);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    LODWORD(valuePtr[0]) = 67109120;
    HIDWORD(valuePtr[0]) = v31;
LABEL_31:
    _os_log_impl(&dword_19CC36000, v32, OS_LOG_TYPE_INFO, "Unknown depth blur effect rendering version %d", valuePtr, 8u);
  }

LABEL_32:
  MutableCopy = CGImageMetadataCreateMutableCopy(inputDisparityImage);
  if (MutableCopy)
  {
    v34 = MutableCopy;
    v35 = CGImageMetadataSetTagWithPath(MutableCopy, 0, @"depthBlurEffect:RenderingParameters", inputAuxDataMetadata);
    CFRelease(inputAuxDataMetadata);
    if (v35)
    {
      CFAutorelease(v34);
      inputDisparityImage = v34;
      goto LABEL_59;
    }

    v50 = ci_logger_api(v36, v37);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      LOWORD(valuePtr[0]) = 0;
      _os_log_impl(&dword_19CC36000, v50, OS_LOG_TYPE_INFO, "Unable to set new image metadata", valuePtr, 2u);
    }

    v49 = v34;
  }

  else
  {
    v49 = inputAuxDataMetadata;
  }

  CFRelease(v49);
LABEL_58:
  if (inputDisparityImage)
  {
    goto LABEL_59;
  }

  v219 = 1;
LABEL_61:
  inputCalibrationData = self->inputCalibrationData;
  if (inputCalibrationData)
  {
    [(CIFilter *)v26 setValue:inputCalibrationData forKey:@"inputCalibrationData"];
  }

  inputLeftEyePositions = self->inputLeftEyePositions;
  if (inputLeftEyePositions)
  {
    [(CIFilter *)v26 setValue:inputLeftEyePositions forKey:@"inputLeftEyePosition"];
  }

  inputRightEyePositions = self->inputRightEyePositions;
  if (inputRightEyePositions)
  {
    [(CIFilter *)v26 setValue:inputRightEyePositions forKey:@"inputRightEyePosition"];
  }

  inputChinPositions = self->inputChinPositions;
  if (inputChinPositions)
  {
    [(CIFilter *)v26 setValue:inputChinPositions forKey:@"inputChinPosition"];
  }

  inputNosePositions = self->inputNosePositions;
  if (inputNosePositions)
  {
    [(CIFilter *)v26 setValue:inputNosePositions forKey:@"inputFaceMidPoint"];
  }

  inputMatteImage = self->inputMatteImage;
  if (inputMatteImage)
  {
    [(CIImage *)inputMatteImage extent];
    if (v226 > 1.0)
    {
      [(CIImage *)self->inputMatteImage extent];
      if (v227 > 1.0)
      {
        [(CIFilter *)v26 setValue:self->inputMatteImage forKey:@"inputMatteImage"];
      }
    }
  }

  inputHairImage = self->inputHairImage;
  if (inputHairImage)
  {
    [(CIImage *)inputHairImage extent];
    if (v229 > 1.0)
    {
      [(CIImage *)self->inputHairImage extent];
      if (v230 > 1.0)
      {
        [(CIFilter *)v26 setValue:self->inputHairImage forKey:@"inputHairImage"];
      }
    }
  }

  inputGlassesImage = self->inputGlassesImage;
  if (inputGlassesImage)
  {
    [(CIImage *)inputGlassesImage extent];
    if (v232 > 1.0)
    {
      [(CIImage *)self->inputGlassesImage extent];
      if (v233 > 1.0)
      {
        [(CIFilter *)v26 setValue:self->inputGlassesImage forKey:@"inputGlassesImage"];
      }
    }
  }

  inputGainMap = self->inputGainMap;
  if (inputGainMap)
  {
    [(CIImage *)inputGainMap extent];
    if (v235 > 1.0)
    {
      [(CIImage *)self->inputGainMap extent];
      if (v236 > 1.0)
      {
        [(CIFilter *)v26 setValue:self->inputGainMap forKey:@"inputGainMap"];
      }
    }
  }

  outputImage = [(CIFilter *)v26 outputImage];
  if (!outputImage)
  {
    return self->inputImage;
  }

  v253[0] = self->inputImage;
  v253[1] = outputImage;
  LODWORD(v238) = v19;
  v253[2] = [MEMORY[0x1E696AD98] numberWithFloat:{v238, @"inputImage", @"inputBlurMap", @"inputAperture"}];
  v252[3] = @"inputLumaNoiseScale";
  *&v239 = v4;
  v253[3] = [MEMORY[0x1E696AD98] numberWithFloat:v239];
  v252[4] = @"inputScale";
  *&v240 = v6;
  v241 = [MEMORY[0x1E696AD98] numberWithFloat:v240];
  inputShape = self->inputShape;
  v252[5] = @"inputShape";
  if (inputShape)
  {
    v243 = inputShape;
  }

  else
  {
    v243 = &stru_1F1040378;
  }

  v253[4] = v241;
  v253[5] = v243;
  v244 = +[CIFilter filterWithName:withInputParameters:](CIFilter, "filterWithName:withInputParameters:", @"CIDepthEffectApplyBlurMap", [*(v25 + 3872) dictionaryWithObjects:v253 forKeys:v252 count:6]);
  v245 = v244;
  if ((v219 & 1) == 0)
  {
    [(CIFilter *)v244 setValue:inputDisparityImage forKey:@"inputAuxDataMetadata"];
  }

  v246 = self->inputMatteImage;
  if (v246)
  {
    [(CIImage *)v246 extent];
    if (v247 > 1.0)
    {
      [(CIImage *)self->inputMatteImage extent];
      if (v248 > 1.0)
      {
        [(CIFilter *)v245 setValue:self->inputMatteImage forKey:@"inputMatteImage"];
      }
    }
  }

  v249 = self->inputGainMap;
  if (v249)
  {
    [(CIImage *)v249 extent];
    if (v250 > 1.0)
    {
      [(CIImage *)self->inputGainMap extent];
      if (v251 > 1.0)
      {
        [(CIFilter *)v245 setValue:self->inputGainMap forKey:@"inputGainMap"];
      }
    }
  }

  return [(CIFilter *)v245 outputImage];
}

+ (CGImageMetadata)metadataFromDictionary:(id)dictionary metadata:(CGImageMetadata *)metadata
{
  metadataCopy = metadata;
  if (metadata)
  {
    MutableCopy = CGImageMetadataCreateMutableCopy(metadata);
  }

  else
  {
    MutableCopy = CGImageMetadataCreateMutable();
  }

  v7 = MutableCopy;
  if (!MutableCopy)
  {
    return 0;
  }

  if (!CGImageMetadataRegisterNamespaceForPrefix(MutableCopy, @"depthBlurEffect", @"UnpackedRenderingParameters", 0) || (v8 = CGImageMetadataTagCreate(@"http://ns.apple.com/depthBlurEffect/1.0/", @"depthBlurEffect", @"UnpackedRenderingParameters", kCGImageMetadataTypeStructure, dictionary)) == 0)
  {
    CFRelease(v7);
    return 0;
  }

  v9 = v8;
  v10 = CGImageMetadataSetTagWithPath(v7, 0, @"depthBlurEffect:UnpackedRenderingParameters", v8);
  CFRelease(v9);
  if (!v10)
  {
    CFRelease(v7);
    return metadataCopy;
  }

  return CFAutorelease(v7);
}

+ (CGImageMetadata)augmentMetadataWithRenderingPropertiesForImage:(id)image
{
  if (!image || ![image properties])
  {
    return 0;
  }

  properties = [image properties];
  v6 = [properties objectForKeyedSubscript:*MEMORY[0x1E696D228]];
  v7 = [CIDepthBlurEffect tuningParametersFromMetadata:v6];
  if (v7)
  {
    v8 = v7;
    if ([objc_msgSend(v7 "allKeys")])
    {
      v6 = [self metadataFromDictionary:v8 metadata:v6];
    }
  }

  v9 = CFRetain(v6);

  return CFAutorelease(v9);
}

@end