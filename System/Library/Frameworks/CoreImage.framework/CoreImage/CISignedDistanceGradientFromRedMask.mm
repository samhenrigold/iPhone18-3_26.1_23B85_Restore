@interface CISignedDistanceGradientFromRedMask
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CISignedDistanceGradientFromRedMask

- (id)outputImage
{
  v45[2] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->inputImage extent];
  IsEmpty = CGRectIsEmpty(v46);
  result = self->inputImage;
  if (!IsEmpty)
  {
    [result extent];
    x = v47.origin.x;
    y = v47.origin.y;
    width = v47.size.width;
    height = v47.size.height;
    IsInfinite = CGRectIsInfinite(v47);
    if (IsInfinite)
    {
      v11 = ci_logger_filter(IsInfinite, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(CIDistanceGradientFromRedMask *)self outputImage];
      }

      return 0;
    }

    height = [CIVector vectorWithCGRect:x, y, width, height];
    floatValue = [(NSNumber *)self->inputMaximumDistance floatValue];
    v16 = v15;
    if (v15 < 1.0 || v15 > 1000.0)
    {
      v18 = ci_logger_filter(floatValue, v14);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(CIDistanceGradientFromRedMask *)self outputImage];
      }

      return 0;
    }

    v19 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_signedDistanceMaskPrep];
    v45[0] = self->inputImage;
    v45[1] = height;
    v20 = -[CIImage imageBySamplingNearest](-[CIColorKernel applyWithExtent:arguments:](v19, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2], x, y, width, height), "imageBySamplingNearest");
    v21 = [CIKernel kernelWithInternalRepresentation:&CI::_signedDistanceMask];
    v22 = vcvtpd_s64_f64(log2(ceilf(v16) + 1.0));
    v39 = v16;
    if (v22 >= 1)
    {
      v23 = (1 << (v22 - 1));
      do
      {
        [(CIImage *)v20 extent];
        v49 = CGRectInset(v48, -v23, -v23);
        v24 = v49.origin.x;
        v25 = v49.origin.y;
        v26 = v49.size.width;
        v27 = v49.size.height;
        *&recta.origin.y = MEMORY[0x1E69E9820];
        *&recta.size.width = 3221225472;
        *&recta.size.height = __50__CISignedDistanceGradientFromRedMask_outputImage__block_invoke;
        v41 = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        v42 = v23;
        v44[0] = v20;
        v44[1] = height;
        v44[2] = [MEMORY[0x1E696AD98] numberWithInt:v23];
        v20 = -[CIImage imageBySamplingNearest](-[CIKernel applyWithExtent:roiCallback:arguments:](v21, "applyWithExtent:roiCallback:arguments:", &recta.origin.y, [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3], v24, v25, v26, v27), "imageBySamplingNearest");
        v23 = (v23 / 2);
        --v22;
      }

      while (v22);
    }

    v28 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_signedDistanceMaskPost];
    [(CIImage *)v20 extent];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    inputImage = self->inputImage;
    v43[0] = v20;
    v43[1] = inputImage;
    v43[2] = height;
    *&v29 = v39;
    v43[3] = [MEMORY[0x1E696AD98] numberWithFloat:v29];
    v38 = -[CIColorKernel applyWithExtent:arguments:](v28, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4], v30, v32, v34, v36);
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v51 = CGRectInset(v50, -v39, -v39);
    v52 = CGRectIntegral(v51);
    return [(CIImage *)v38 imageByClampingToRect:v52.origin.x, v52.origin.y, v52.size.width, v52.size.height];
  }

  return result;
}

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryGradient";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v7[1] = @"19";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"16.0";
  v6[3] = @"inputMaximumDistance";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1082958;
  v4[1] = &unk_1F1082968;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1082978;
  v4[3] = &unk_1F1082988;
  v3[4] = @"CIAttributeMax";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1082998;
  v4[5] = @"CIAttributeTypeDistance";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

@end