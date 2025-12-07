@interface CIAttributedTextImageGenerator
+ (id)customAttributes;
- (id)outputImage;
- (void)outputImage;
@end

@implementation CIAttributedTextImageGenerator

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryGenerator";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v9[1] = @"11";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.13";
  v8[3] = @"inputScaleFactor";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1084E78;
  v6[1] = &unk_1F1084EA8;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1084EB8;
  v6[3] = &unk_1F1082328;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeScalar";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v8[4] = @"inputPadding";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1082340;
  v4[1] = &unk_1F1082340;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeMax";
  v4[2] = &unk_1F1082358;
  v4[3] = &unk_1F1082370;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1082340;
  v4[5] = @"CIAttributeTypeInteger";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (id)outputImage
{
  v18[3] = *MEMORY[0x1E69E9840];
  if (self->inputText)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v15 = ci_logger_api(isKindOfClass, v4);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(CIAttributedTextImageGenerator *)v15 outputImage];
      }

      return 0;
    }

    inputText = self->inputText;
  }

  else
  {
    inputText = 0;
  }

  if (![(NSAttributedString *)inputText length])
  {
    return 0;
  }

  [(NSNumber *)self->inputScaleFactor floatValue];
  if (v6 <= 0.0)
  {
    return 0;
  }

  v7 = v6;
  [(NSNumber *)self->inputPadding floatValue];
  v9 = v8;
  v10 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  v11 = self->inputText;
  v17[0] = @"kCIImageTextScaleFactor";
  *&v12 = v7;
  v18[0] = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v18[1] = v10;
  v17[1] = @"CIImageColorSpace";
  v17[2] = @"kCIImageTextPadding";
  LODWORD(v13) = v9;
  v18[2] = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v14 = +[CIImage imageWithAttributedString:format:options:](CIImage, "imageWithAttributedString:format:options:", v11, 264, [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3]);
  CGColorSpaceRelease(v10);
  return v14;
}

- (void)outputImage
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "[CIAttributedTextImageGenerator outputImage]";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s inputText must be a NSAttributedString.", &v1, 0xCu);
}

@end