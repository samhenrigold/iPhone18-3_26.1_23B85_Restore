@interface CICoreMLModelFilter
+ (id)customAttributes;
- (id)outputImage;
- (void)outputImage;
@end

@implementation CICoreMLModelFilter

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryStillImage";
  v7[1] = @"CICategoryBuiltIn";
  v7[2] = @"CICategoryStylize";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v9[1] = @"12";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.14";
  v8[3] = @"inputHeadIndex";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeMax";
  v6[0] = &unk_1F1081A88;
  v6[1] = &unk_1F1081AA0;
  v5[2] = @"CIAttributeDefault";
  v5[3] = @"CIAttributeType";
  v6[2] = &unk_1F1081A88;
  v6[3] = @"CIAttributeTypeInteger";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v8[4] = @"inputSoftmaxNormalization";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeMax";
  v4[0] = MEMORY[0x1E695E110];
  v4[1] = MEMORY[0x1E695E118];
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeType";
  v4[2] = MEMORY[0x1E695E110];
  v4[3] = @"CIAttributeTypeBoolean";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (id)outputImage
{
  v54 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [(CIImage *)self->inputImage count];
    }

    else
    {
      v3 = 0;
    }
  }

  inputDescriptionsByName = [(MLModelDescription *)[(MLModel *)self->inputModel modelDescription] inputDescriptionsByName];
  v5 = [MEMORY[0x1E695DFD8] setWithArray:{-[NSDictionary allKeys](inputDescriptionsByName, "allKeys")}];
  v6 = [v5 count];
  if (v3 != v6)
  {
    v22 = ci_logger_filter(v6, v7);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(CICoreMLModelFilter *)self outputImage];
    }

    return 0;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = [v5 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v46;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        v14 = [(NSDictionary *)[(MLModelDescription *)[(MLModel *)self->inputModel modelDescription] inputDescriptionsByName] objectForKey:v13];
        if (!v14 || (v14 = [v14 type], (v14 - 6) <= 0xFFFFFFFFFFFFFFFDLL))
        {
          v27 = ci_logger_filter(v14, v15);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [(CICoreMLModelFilter *)self outputImage];
          }

          return 0;
        }

        v16 = v14;
        v17 = channelCountOfName(self->inputModel, v13, 0);
        if (v17 > 4 || ((1 << v17) & 0x1A) == 0)
        {
          v42 = ci_logger_filter(v17, v18);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            [(CICoreMLModelFilter *)self outputImage];
          }

          return 0;
        }

        if (v10)
        {
          if (v10 != v16)
          {
            v37 = ci_logger_filter(v17, v18);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              [(CICoreMLModelFilter *)self outputImage];
            }

            return 0;
          }
        }

        else
        {
          v10 = v16;
        }

        if (v3 >= 2 && ![(CIImage *)self->inputImage objectForKey:v13])
        {
          v41 = ci_logger_filter(0, v20);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            [(CICoreMLModelFilter *)self outputImage];
          }

          return 0;
        }
      }

      v9 = [v5 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v21 = v10 == 4;
  }

  else
  {
    v21 = 0;
  }

  intValue = [(NSNumber *)self->inputHeadIndex intValue];
  outputDescriptionsByName = [(MLModelDescription *)[(MLModel *)self->inputModel modelDescription] outputDescriptionsByName];
  if (outputDescriptionsByName && (v25 = outputDescriptionsByName, [(NSDictionary *)outputDescriptionsByName count]> intValue))
  {
    v26 = [(NSArray *)[(NSDictionary *)v25 allKeys] objectAtIndex:intValue];
  }

  else
  {
    v26 = 0;
  }

  v28 = [-[NSDictionary objectForKey:](-[MLModelDescription outputDescriptionsByName](-[MLModel modelDescription](self->inputModel "modelDescription")];
  v29 = channelCountOfName(self->inputModel, v26, 1);
  if (v28 == 5)
  {
    goto LABEL_42;
  }

  if (v28 != 4)
  {
    v36 = ci_logger_filter(v29, v30);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [(CICoreMLModelFilter *)self outputImage];
    }

    return 0;
  }

  if (v29 > 4 || ((1 << v29) & 0x1A) == 0)
  {
    v43 = ci_logger_filter(v29, v30);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [(CICoreMLModelFilter *)self outputImage];
    }

    return 0;
  }

  if (v3 == 1 && v21)
  {
    v31 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    anyObject = [v5 anyObject];
    inputImage = self->inputImage;
    v51 = anyObject;
    v52 = inputImage;
    v34 = process([MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1], self->inputModel, v26, self->_logName, 0, v31);
    CGColorSpaceRelease(v31);
    return v34;
  }

LABEL_42:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = self->inputImage;
  }

  else
  {
    anyObject2 = [v5 anyObject];
    v40 = self->inputImage;
    v49 = anyObject2;
    v50 = v40;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  }

  return process(v35, self->inputModel, v26, self->_logName, [(NSNumber *)self->inputSoftmaxNormalization BOOLValue], 0);
}

- (void)outputImage
{
  [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end