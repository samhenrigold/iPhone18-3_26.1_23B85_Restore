@interface CIAffineTile
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIAffineTile

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
  v29[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  inputTransform = self->inputTransform;
  if (!inputTransform)
  {
    v7 = *(MEMORY[0x1E695EFD0] + 16);
    *&v27.a = *MEMORY[0x1E695EFD0];
    *&v27.c = v7;
    v8 = *(MEMORY[0x1E695EFD0] + 32);
LABEL_10:
    *&v27.tx = v8;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objCType = [(NSValue *)inputTransform objCType];
    if (!strcmp(objCType, "{CGAffineTransform=dddddd}") || (isKindOfClass = strcmp(objCType, "{?=dddddd}"), !isKindOfClass))
    {
      [(NSValue *)inputTransform getValue:&v27 size:48];
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    memset(&v28, 0, sizeof(v28));
    objc_msgSend_transformStruct(inputTransform);
    memset(&v27, 0, 32);
    v8 = 0u;
    goto LABEL_10;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0 || (isKindOfClass = [(NSValue *)inputTransform count], isKindOfClass != 6))
  {
LABEL_17:
    v24 = ci_logger_filter(isKindOfClass, v6);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(CIAffineClamp *)self outputImage];
    }

    return 0;
  }

  [-[NSValue objectAtIndex:](inputTransform objectAtIndex:{0), "doubleValue"}];
  v27.a = v18;
  [-[NSValue objectAtIndex:](inputTransform objectAtIndex:{1), "doubleValue"}];
  v27.b = v19;
  [-[NSValue objectAtIndex:](inputTransform objectAtIndex:{2), "doubleValue"}];
  v27.c = v20;
  [-[NSValue objectAtIndex:](inputTransform objectAtIndex:{3), "doubleValue"}];
  v27.d = v21;
  [-[NSValue objectAtIndex:](inputTransform objectAtIndex:{4), "doubleValue"}];
  v27.tx = v22;
  [-[NSValue objectAtIndex:](inputTransform objectAtIndex:{5), "doubleValue"}];
  v27.ty = v23;
LABEL_11:
  [(CIImage *)self->inputImage extent];
  IsInfinite = CGRectIsInfinite(v30);
  inputImage = self->inputImage;
  if (IsInfinite)
  {
    v28 = v27;
    return [(CIImage *)inputImage imageByApplyingTransform:&v28];
  }

  else
  {
    v12 = [(CIImage *)inputImage filteredImage:@"CISimpleTile" keysAndValues:0];
    v26 = v27;
    CGAffineTransformInvert(&v28, &v26);
    v27 = v28;
    _kernel = [(CIAffineTile *)self _kernel];
    v14 = *MEMORY[0x1E695F040];
    v15 = *(MEMORY[0x1E695F040] + 8);
    v17 = *(MEMORY[0x1E695F040] + 16);
    v16 = *(MEMORY[0x1E695F040] + 24);
    v29[0] = [CIVector vectorWithX:*&v27.tx Y:MEMORY[0x1E69E9820], 3221225472, __27__CIAffineTile_outputImage__block_invoke, &__block_descriptor_80_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l, *&v27.a, *&v27.c, *&v27.tx];
    v29[1] = [CIVector vectorWithX:v27.a Y:v27.c];
    v29[2] = [CIVector vectorWithX:v27.b Y:v27.d];
    return [_kernel applyWithExtent:&v25 roiCallback:v12 inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v29, 3), v14, v15, v17, v16}];
  }
}

double __27__CIAffineTile_outputImage__block_invoke(_OWORD *a1, double a2, double a3, double a4, double a5)
{
  v5 = a1[3];
  *&v7.a = a1[2];
  *&v7.c = v5;
  *&v7.tx = a1[4];
  *&result = CGRectApplyAffineTransform(*&a2, &v7);
  return result;
}

@end