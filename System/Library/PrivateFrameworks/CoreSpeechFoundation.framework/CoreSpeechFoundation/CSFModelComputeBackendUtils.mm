@interface CSFModelComputeBackendUtils
+ (id)_flattenArray:(id)array;
+ (id)getShapeWithTensors:(id)tensors;
+ (int64_t)getRankOfTensor:(id)tensor;
+ (unint64_t)_getElementSizeFromShape:(id)shape;
@end

@implementation CSFModelComputeBackendUtils

+ (unint64_t)_getElementSizeFromShape:(id)shape
{
  v16 = *MEMORY[0x1E69E9840];
  shapeCopy = shape;
  v4 = shapeCopy;
  if (shapeCopy)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [shapeCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      v8 = 1;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v8 *= [*(*(&v11 + 1) + 8 * i) unsignedLongValue];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_flattenArray:(id)array
{
  arrayCopy = array;
  v5 = [self getShapeWithTensors:arrayCopy];
  if ([v5 count] == 1)
  {
    v6 = arrayCopy;
  }

  else if ([v5 count] == 2)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    firstObject = [v5 firstObject];
    unsignedLongValue = [firstObject unsignedLongValue];

    if (unsignedLongValue)
    {
      v10 = 0;
      do
      {
        v11 = [arrayCopy objectAtIndexedSubscript:v10];
        v12 = [v5 objectAtIndexedSubscript:1];
        unsignedLongValue2 = [v12 unsignedLongValue];

        if (unsignedLongValue2)
        {
          v14 = 0;
          do
          {
            v15 = [v11 objectAtIndexedSubscript:v14];
            [v7 addObject:v15];

            ++v14;
            v16 = [v5 objectAtIndexedSubscript:1];
            unsignedLongValue3 = [v16 unsignedLongValue];
          }

          while (v14 < unsignedLongValue3);
        }

        ++v10;
        firstObject2 = [v5 firstObject];
        unsignedLongValue4 = [firstObject2 unsignedLongValue];
      }

      while (v10 < unsignedLongValue4);
    }

    v6 = [v7 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)getRankOfTensor:(id)tensor
{
  v17 = *MEMORY[0x1E69E9840];
  tensorCopy = tensor;
  v4 = tensorCopy;
  if (tensorCopy)
  {
    firstObject = [tensorCopy firstObject];

    if (firstObject)
    {
      firstObject2 = [v4 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        firstObject = 1;
      }

      else
      {
        firstObject3 = [v4 firstObject];
        objc_opt_class();
        v9 = objc_opt_isKindOfClass();

        if (v9 & 1) != 0 && ([v4 firstObject], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v12 = objc_opt_isKindOfClass(), v11, v10, (v12))
        {
          firstObject = 2;
        }

        else
        {
          v13 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            v15 = 136315138;
            v16 = "+[CSFModelComputeBackendUtils getRankOfTensor:]";
            _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s No support for tensor with rank > 2", &v15, 0xCu);
          }

          firstObject = -1;
        }
      }
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)getShapeWithTensors:(id)tensors
{
  v22[1] = *MEMORY[0x1E69E9840];
  tensorsCopy = tensors;
  v4 = tensorsCopy;
  if (!tensorsCopy)
  {
    goto LABEL_12;
  }

  firstObject = [tensorsCopy firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    v22[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
LABEL_9:

    goto LABEL_13;
  }

  firstObject2 = [v4 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    firstObject3 = [v4 firstObject];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  firstObject4 = [v4 firstObject];
  v12FirstObject = [firstObject4 firstObject];
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  if (v14)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    firstObject5 = [v4 firstObject];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    [v7 addObject:v16];

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(firstObject5, "count")}];
    [v7 addObject:v17];

    v8 = [v7 copy];
    goto LABEL_9;
  }

  v18 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v20 = 136315138;
    v21 = "+[CSFModelComputeBackendUtils getShapeWithTensors:]";
    _os_log_error_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_ERROR, "%s input tensor not valid, rank > 3 tensor is not supported", &v20, 0xCu);
  }

LABEL_12:
  v8 = 0;
LABEL_13:

  return v8;
}

@end