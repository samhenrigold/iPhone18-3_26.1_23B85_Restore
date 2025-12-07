@interface CITextImageGenerator
+ (id)customAttributes;
- (id)outputImage;
- (void)outputImage;
@end

@implementation CITextImageGenerator

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryGenerator";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryBuiltIn";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v13[1] = @"11";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.13";
  v12[3] = @"inputFontName";
  v9 = @"CIAttributeDefault";
  v10 = @"HelveticaNeue";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v12[4] = @"inputFontSize";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1084E78;
  v8[1] = &unk_1F1084E88;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1084E98;
  v8[3] = &unk_1F1082310;
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeScalar";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v12[5] = @"inputScaleFactor";
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
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v12[6] = @"inputPadding";
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
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (id)outputImage
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (self->inputText)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v17 = ci_logger_api(isKindOfClass, v4);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(CITextImageGenerator *)v17 outputImage];
      }

      return 0;
    }

    inputText = self->inputText;
  }

  else
  {
    inputText = 0;
  }

  if (![(NSString *)inputText length])
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
  inputFontName = self->inputFontName;
  [(NSNumber *)self->inputFontSize floatValue];
  v12 = CTFontCreateWithName(inputFontName, v11, 0);
  v21 = *MEMORY[0x1E6965658];
  v22[0] = v12;
  v13 = CFAttributedStringCreate(0, self->inputText, [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1]);
  v19[0] = @"kCIImageTextScaleFactor";
  *&v14 = v7;
  v19[1] = @"kCIImageTextPadding";
  v20[0] = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  LODWORD(v15) = v9;
  v20[1] = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  v16 = +[CIImage imageWithAttributedString:format:options:](CIImage, "imageWithAttributedString:format:options:", v13, 260, [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2]);
  CFRelease(v13);
  CFRelease(v12);
  return v16;
}

- (void)outputImage
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "[CITextImageGenerator outputImage]";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s inputText must be a NSString.", &v1, 0xCu);
}

@end