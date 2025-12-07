@interface CIReductionFilter
+ (id)customAttributes;
- (id)offsetAndCrop;
- (void)offsetAndCrop;
@end

@implementation CIReductionFilter

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryReduction";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryHighDynamicRange";
  v3[4] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v5[1] = @"9";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.5";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)offsetAndCrop
{
  [(CIVector *)self->inputExtent CGRectValue];
  IsEmpty = CGRectIsEmpty(v31);
  if (IsEmpty)
  {
    v5 = ci_logger_filter(IsEmpty, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CIReductionFilter *)self offsetAndCrop];
    }

    return 0;
  }

  [(CIImage *)self->inputImage extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(CIVector *)self->inputExtent CGRectValue];
  v39.origin.x = v14;
  v39.origin.y = v15;
  v39.size.width = v16;
  v39.size.height = v17;
  v32.origin.x = v7;
  v32.origin.y = v9;
  v32.size.width = v11;
  v32.size.height = v13;
  v33 = CGRectIntersection(v32, v39);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  if (!CGRectIsInfinite(v33))
  {
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    if (!CGRectIsEmpty(v34))
    {
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      v36 = CGRectStandardize(v35);
      x = ceil(v36.origin.x);
      y = ceil(v36.origin.y);
      v22 = floor(v36.origin.x + v36.size.width);
      v23 = floor(v36.origin.y + v36.size.height);
      if (v22 > x && v23 > y)
      {
        width = v22 - x;
        height = v23 - y;
      }

      else
      {
        x = *MEMORY[0x1E695F050];
        y = *(MEMORY[0x1E695F050] + 8);
        width = *(MEMORY[0x1E695F050] + 16);
        height = *(MEMORY[0x1E695F050] + 24);
      }
    }
  }

  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  if (CGRectIsEmpty(v37))
  {
    return 0;
  }

  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  IsInfinite = CGRectIsInfinite(v38);
  if (IsInfinite)
  {
    v27 = ci_logger_filter(IsInfinite, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(CIReductionFilter *)self offsetAndCrop];
    }

    return 0;
  }

  inputImage = self->inputImage;
  CGAffineTransformMakeTranslation(&v30, -x, -y);
  return [[(CIImage *)inputImage imageByApplyingTransform:&v30] imageByCroppingToRect:0.0, 0.0, width, height];
}

- (void)offsetAndCrop
{
  [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end