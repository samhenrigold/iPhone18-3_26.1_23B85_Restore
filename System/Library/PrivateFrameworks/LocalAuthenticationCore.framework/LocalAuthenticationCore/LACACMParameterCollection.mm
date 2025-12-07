@interface LACACMParameterCollection
- (LACACMParameterCollection)init;
- (LACACMParameterCollection)initWithParameter:(id)parameter;
- (id)copyWithZone:(_NSZone *)zone;
- (id)makeACMParameters;
- (id)parameterWithType:(unsigned int)type;
- (void)makeACMParameters;
@end

@implementation LACACMParameterCollection

- (LACACMParameterCollection)init
{
  v6.receiver = self;
  v6.super_class = LACACMParameterCollection;
  v2 = [(LACACMParameterCollection *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    parameters = v2->_parameters;
    v2->_parameters = v3;
  }

  return v2;
}

- (LACACMParameterCollection)initWithParameter:(id)parameter
{
  parameterCopy = parameter;
  v5 = [(LACACMParameterCollection *)self init];
  v6 = v5;
  if (v5)
  {
    [(LACACMParameterCollection *)v5 addParameter:parameterCopy];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = [(NSMutableArray *)self->_parameters mutableCopy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (id)parameterWithType:(unsigned int)type
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_parameters;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 type] == type)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)makeACMParameters
{
  v36 = *MEMORY[0x1E69E9840];
  if (![(LACACMParameterCollection *)self parameterCount])
  {
LABEL_25:
    v18 = 0;
    goto LABEL_26;
  }

  v3 = 24 * [(NSMutableArray *)self->_parameters count];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = self->_parameters;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v5)
  {
    v8 = v3;
    goto LABEL_13;
  }

  v6 = v5;
  v7 = *v32;
  v8 = v3;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v32 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v31 + 1) + 8 * i);
      data = [v10 data];
      v12 = [data length];

      if (HIDWORD(v12))
      {
        v26 = LACLogDefault(v13);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [(LACACMParameterCollection *)v10 makeACMParameters];
        }

        goto LABEL_24;
      }

      data2 = [v10 data];
      v15 = [data2 length];

      v17 = __CFADD__(v15, v8);
      v8 += v15;
      if (v17)
      {
        v26 = LACLogDefault(v16);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [(LACACMParameterCollection *)v26 makeACMParameters];
        }

LABEL_24:

        goto LABEL_25;
      }
    }

    v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_13:

  v18 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v8];
  if ([(NSMutableArray *)self->_parameters count])
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = [(NSMutableArray *)self->_parameters objectAtIndexedSubscript:v21];
      data3 = [v22 data];
      v24 = [data3 length];

      v28 = 0;
      v29 = 0;
      v30 = 0;
      LODWORD(v28) = [v22 type];
      if (v24)
      {
        v29 = [v18 mutableBytes] + v3 + v20;
        LODWORD(v30) = v24;
        [v18 replaceBytesInRange:v19 withBytes:{24, &v28}];
        data4 = [v22 data];
        [v18 replaceBytesInRange:v20 + v3 withBytes:{v24, objc_msgSend(data4, "bytes")}];

        v20 += v24;
      }

      else
      {
        v29 = 0;
        LODWORD(v30) = 0;
        [v18 replaceBytesInRange:v19 withBytes:{24, &v28}];
      }

      ++v21;
      v19 += 24;
    }

    while (v21 < [(NSMutableArray *)self->_parameters count]);
  }

LABEL_26:

  return v18;
}

- (void)makeACMParameters
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "ACMParameter: %@ data length exceeds UINT32_MAX", &v2, 0xCu);
}

@end