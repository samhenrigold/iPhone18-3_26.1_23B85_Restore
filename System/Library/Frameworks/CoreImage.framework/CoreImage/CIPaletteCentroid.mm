@interface CIPaletteCentroid
+ (id)customAttributes;
- (id)outputImage;
- (void)outputImage;
@end

@implementation CIPaletteCentroid

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryColorEffect";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v7[1] = @"13";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.15";
  v6[3] = @"inputPerceptual";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeMax";
  v4[0] = MEMORY[0x1E695E110];
  v4[1] = MEMORY[0x1E695E118];
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeType";
  v4[2] = MEMORY[0x1E695E110];
  v4[3] = @"CIAttributeTypeBoolean";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)outputImage
{
  v52[4] = *MEMORY[0x1E69E9840];
  if (!self->inputImage || (inputPaletteImage = self->inputPaletteImage) == 0)
  {

    return +[CIImage emptyImage];
  }

  [(CIImage *)inputPaletteImage extent];
  IsInfinite = CGRectIsInfinite(v54);
  if ((IsInfinite & 1) != 0 || (IsInfinite = [(CIImage *)self->inputPaletteImage extent], v6 > 1.0))
  {
    v7 = ci_logger_api(IsInfinite, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CIPaletteCentroid *)&self->inputPaletteImage outputImage];
    }

    return +[CIImage emptyImage];
  }

  [(CIImage *)self->inputPaletteImage extent];
  v10 = v9;
  inputImage = self->inputImage;
  inputPerceptual = self->inputPerceptual;
  if (inputPerceptual)
  {
    bOOLValue = [(NSNumber *)inputPerceptual BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  [(CIImage *)self->inputImage extent];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  _kernelClusterMask = [(CIPaletteCentroid *)self _kernelClusterMask];
  v23 = self->inputPaletteImage;
  [(CIImage *)v23 extent];
  v25 = -v24;
  [(CIImage *)self->inputPaletteImage extent];
  CGAffineTransformMakeTranslation(&v49, v25, -v26);
  v27 = [(CIImage *)v23 imageByApplyingTransform:&v49];
  if (bOOLValue)
  {
    inputImage = [(CIImage *)inputImage imageByApplyingFilter:@"CILinearToSRGBToneCurve"];
    v27 = [(CIImage *)v27 imageByApplyingFilter:@"CILinearToSRGBToneCurve"];
  }

  imageByUnpremultiplyingAlpha = [(CIImage *)inputImage imageByUnpremultiplyingAlpha];
  v29 = +[CIImage emptyImage];
  if (v10)
  {
    v30 = 0;
    v47 = MEMORY[0x1E69E9820];
    v46 = __32__CIPaletteCentroid_outputImage__block_invoke;
    v31 = MEMORY[0x1E695F040];
    v45 = 3221225472;
    do
    {
      v32 = v19;
      v33 = v17;
      v34 = v15;
      v35 = *v31;
      v36 = v31[1];
      v37 = v31[2];
      v38 = v31[3];
      v52[0] = imageByUnpremultiplyingAlpha;
      v52[1] = v27;
      v52[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{v10, v45, v46, v47, v47, v45, v46, &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l, v10}];
      v52[3] = [MEMORY[0x1E696AD98] numberWithInt:v30];
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
      v40 = v36;
      v15 = v34;
      v17 = v33;
      v19 = v32;
      v41 = _kernelClusterMask;
      v42 = [_kernelClusterMask applyWithExtent:&v48 roiCallback:v39 arguments:{v35, v40, v37, v38}];
      v50 = @"inputExtent";
      v51 = [CIVector vectorWithCGRect:v15, v17, v32, v21];
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v44 = v42;
      _kernelClusterMask = v41;
      v29 = [objc_msgSend(objc_msgSend(objc_msgSend(v44 imageByApplyingFilter:@"CIAreaRedCentroid" withInputParameters:{v43), "imageByClampingToExtent"), "imageByCroppingToRect:", v30++, 0.0, 1.0, 1.0), "imageByCompositingOverImage:", v29}];
    }

    while (v10 != v30);
  }

  return [(CIImage *)v29 imageBySettingProperties:MEMORY[0x1E695E0F8]];
}

double __32__CIPaletteCentroid_outputImage__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return 0.0;
  }

  return result;
}

- (void)outputImage
{
  [*self extent];
  [*self extent];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

@end