@interface CIAreaLogarithmicHistogram
+ (id)customAttributes;
- (id)outputImage;
- (void)outputImage;
@end

@implementation CIAreaLogarithmicHistogram

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryReduction";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryHighDynamicRange";
  v11[4] = @"CICategoryBuiltIn";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:5];
  v13[1] = @"16";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"13.0";
  v12[3] = @"inputCount";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F1082A38;
  v10[1] = &unk_1F1082A48;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeMax";
  v10[2] = &unk_1F1082A58;
  v10[3] = &unk_1F1082A68;
  v9[4] = @"CIAttributeDefault";
  v9[5] = @"CIAttributeType";
  v10[4] = &unk_1F1082A78;
  v10[5] = @"CIAttributeTypeScalar";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v12[4] = @"inputScale";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1082A88;
  v8[1] = &unk_1F1082A88;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1082A38;
  v8[3] = &unk_1F1082A38;
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeScalar";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v12[5] = @"inputMinimumStop";
  v6[0] = &unk_1F1081830;
  v6[1] = &unk_1F1081848;
  v5[0] = @"CIAttributeSliderMin";
  v5[1] = @"CIAttributeSliderMax";
  v5[2] = @"CIAttributeDefault";
  v5[3] = @"CIAttributeType";
  v6[2] = &unk_1F1081860;
  v6[3] = @"CIAttributeTypeScalar";
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v12[6] = @"inputMaximumStop";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1081878;
  v4[1] = &unk_1F1081890;
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeType";
  v4[2] = &unk_1F10818A8;
  v4[3] = @"CIAttributeTypeScalar";
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (id)outputImage
{
  v22[3] = *MEMORY[0x1E69E9840];
  v3 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_logHistogram];
  inputImage = self->super.inputImage;
  [(NSNumber *)self->inputMinimumStop floatValue];
  v6 = v5;
  floatValue = [(NSNumber *)self->inputMaximumStop floatValue];
  if (v9 <= v6)
  {
    v19 = ci_logger_filter(floatValue, v8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(CIAreaLogarithmicHistogram *)self outputImage];
    }

    return 0;
  }

  else
  {
    [(CIImage *)inputImage extent];
    inputMinimumStop = self->inputMinimumStop;
    v22[0] = inputImage;
    v22[1] = inputMinimumStop;
    v22[2] = self->inputMaximumStop;
    v15 = -[CIColorKernel applyWithExtent:arguments:](v3, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3], v11, v12, v13, v14);
    inputExtent = self->super.inputExtent;
    v20[0] = @"inputExtent";
    v20[1] = @"inputScale";
    inputScale = self->super.inputScale;
    v21[0] = inputExtent;
    v21[1] = inputScale;
    v20[2] = @"inputCount";
    v21[2] = self->super.inputCount;
    return -[CIImage imageByApplyingFilter:withInputParameters:](v15, "imageByApplyingFilter:withInputParameters:", @"CIAreaHistogram", [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3]);
  }
}

- (void)outputImage
{
  [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_19CC36000, v2, v3, "%{public}@: inputMinimumStop must be greater than inputMaximumStop.", v4, v5, v6, v7);
}

@end