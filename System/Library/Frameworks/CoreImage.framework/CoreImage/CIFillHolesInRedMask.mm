@interface CIFillHolesInRedMask
+ (id)customAttributes;
- (id)outputImage;
- (void)outputImage;
@end

@implementation CIFillHolesInRedMask

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryGradient";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v7[4] = @"CICategoryApplePrivate";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v9[1] = @"18";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"15.0";
  v8[3] = @"inputMaximumHoleSize";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1082958;
  v6[1] = &unk_1F1082968;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1082978;
  v6[3] = &unk_1F1082988;
  v5[4] = @"CIAttributeMax";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F10829A8;
  v6[5] = @"CIAttributeTypeDistance";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v8[4] = @"inputRefinementPassCount";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1082968;
  v4[1] = &unk_1F1082968;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F10829B8;
  v4[3] = &unk_1F1082988;
  v3[4] = @"CIAttributeMax";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F10829C8;
  v4[5] = @"CIAttributeTypeCount";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (id)outputImage
{
  v44[1] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->inputImage extent];
  IsEmpty = CGRectIsEmpty(v45);
  result = self->inputImage;
  if (!IsEmpty)
  {
    [result extent];
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
    IsInfinite = CGRectIsInfinite(v46);
    if (IsInfinite)
    {
      v11 = ci_logger_filter(IsInfinite, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(CIDistanceGradientFromRedMask *)self outputImage];
      }

      return 0;
    }

    floatValue = [(NSNumber *)self->inputMaximumHoleSize floatValue];
    v15 = v14;
    if (v14 >= 1.0)
    {
      if (v14 > 500.0)
      {
        v16 = ci_logger_filter(floatValue, v13);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [(CIFillHolesInRedMask *)self outputImage];
        }

        return 0;
      }

      v38 = x;
      intValue = [(NSNumber *)self->inputRefinementPassCount intValue];
      if (intValue <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = intValue;
      }

      inputImage = self->inputImage;
      if (v19 >= 32)
      {
        v21 = 32;
      }

      else
      {
        v21 = v19;
      }

      v43 = @"inputMaximumDistance";
      *&v18 = v15;
      v44[0] = [MEMORY[0x1E696AD98] numberWithFloat:v18];
      v22 = -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CIDistanceGradientFromRedMask", [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1]);
      [(CIImage *)self->inputImage extent];
      v48 = CGRectInset(v47, -v15, -v15);
      v49 = CGRectIntegral(v48);
      v23 = [(CIImage *)v22 imageByCroppingToRect:v49.origin.x, v49.origin.y, v49.size.width, v49.size.height];
      v24 = [CIKernel kernelWithInternalRepresentation:&CI::_holeFillRefine];
      do
      {
        [(CIImage *)v23 extent];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __35__CIFillHolesInRedMask_outputImage__block_invoke;
        v39[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        v40 = v15;
        v42[0] = v23;
        *&v25 = v15;
        v42[1] = [MEMORY[0x1E696AD98] numberWithFloat:v25];
        v23 = -[CIImage imageBySamplingNearest](-[CIKernel applyWithExtent:roiCallback:arguments:](v24, "applyWithExtent:roiCallback:arguments:", v39, [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2], v26, v28, v30, v32), "imageBySamplingNearest");
        --v21;
      }

      while (v21);
      v33 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_holeFillPost];
      [(CIImage *)v23 extent];
      v41 = v23;
      return -[CIImage imageByCroppingToRect:](-[CIColorKernel applyWithExtent:arguments:](v33, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1], v34, v35, v36, v37), "imageByCroppingToRect:", v38, y, width, height);
    }

    else
    {
      return self->inputImage;
    }
  }

  return result;
}

- (void)outputImage
{
  [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_19CC36000, v2, v3, "%{public}@: inputMaximumHoleSize must be in the range 1...500.", v4, v5, v6, v7);
}

@end