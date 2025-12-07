@interface CIAffineClamp
+ (id)customAttributes;
- (id)outputImage;
- (void)outputImage;
@end

@implementation CIAffineClamp

+ (id)customAttributes
{
  v9[4] = *MEMORY[0x1E69E9840];
  memset(&v4, 0, sizeof(v4));
  CGAffineTransformMakeScale(&v4, 0.4, 0.4);
  v2 = [MEMORY[0x1E696B098] valueWithBytes:MEMORY[0x1E695EFD0] objCType:"{CGAffineTransform=dddddd}"];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryTileEffect";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v9[1] = @"6";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.4";
  v8[3] = @"inputTransform";
  v5[0] = @"CIAttributeType";
  v5[1] = @"CIAttributeDefault";
  v6[0] = @"CIAttributeTypeTransform";
  v6[1] = v2;
  v5[2] = @"CIAttributeIdentity";
  v6[2] = v2;
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];
}

- (id)outputImage
{
  if (!self->inputImage)
  {
    return 0;
  }

  inputTransform = self->inputTransform;
  if (!inputTransform)
  {
    v7 = *(MEMORY[0x1E695EFD0] + 16);
    v20 = *MEMORY[0x1E695EFD0];
    v21 = v7;
    v8 = *(MEMORY[0x1E695EFD0] + 32);
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        isKindOfClass = [(NSValue *)inputTransform count];
        if (isKindOfClass == 6)
        {
          [-[NSValue objectAtIndex:](inputTransform objectAtIndex:{0), "doubleValue"}];
          *&v20 = v13;
          [-[NSValue objectAtIndex:](inputTransform objectAtIndex:{1), "doubleValue"}];
          *(&v20 + 1) = v14;
          [-[NSValue objectAtIndex:](inputTransform objectAtIndex:{2), "doubleValue"}];
          *&v21 = v15;
          [-[NSValue objectAtIndex:](inputTransform objectAtIndex:{3), "doubleValue"}];
          *(&v21 + 1) = v16;
          [-[NSValue objectAtIndex:](inputTransform objectAtIndex:{4), "doubleValue"}];
          *&v22 = v17;
          [-[NSValue objectAtIndex:](inputTransform objectAtIndex:{5), "doubleValue"}];
          *(&v22 + 1) = v18;
          goto LABEL_11;
        }
      }

      goto LABEL_20;
    }

    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    objc_msgSend_transformStruct(inputTransform);
    v20 = 0u;
    v21 = 0u;
    v8 = 0u;
LABEL_10:
    v22 = v8;
    goto LABEL_11;
  }

  objCType = [(NSValue *)inputTransform objCType];
  if (strcmp(objCType, "{CGAffineTransform=dddddd}"))
  {
    isKindOfClass = strcmp(objCType, "{?=dddddd}");
    if (isKindOfClass)
    {
LABEL_20:
      v19 = ci_logger_filter(isKindOfClass, v6);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(CIAffineClamp *)self outputImage];
      }

      return 0;
    }
  }

  [(NSValue *)inputTransform getValue:&v20 size:48];
LABEL_11:
  if (fabs(*&v20 * *(&v21 + 1) - *(&v20 + 1) * *&v21) < 0.0016)
  {
    v20 = 0u;
    v21 = 0u;
  }

  [(CIImage *)self->inputImage extent];
  IsInfinite = CGRectIsInfinite(v26);
  inputImage = self->inputImage;
  if (IsInfinite)
  {
    v23 = v20;
    v24 = v21;
    v25 = v22;
    v11 = inputImage;
  }

  else
  {
    [(CIImage *)inputImage extent];
    v11 = [(CIImage *)inputImage imageByClampingToRect:?];
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  return [(CIImage *)v11 imageByApplyingTransform:&v23];
}

- (void)outputImage
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = [objc_opt_class() description];
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "%{public}@: inputTransfom is not a valid object.", &v3, 0xCu);
}

@end