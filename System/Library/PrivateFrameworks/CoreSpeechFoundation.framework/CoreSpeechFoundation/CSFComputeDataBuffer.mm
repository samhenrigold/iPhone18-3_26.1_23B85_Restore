@interface CSFComputeDataBuffer
- (CSFComputeDataBuffer)initWithInputArray:(id)array name:(id)name properties:(id)properties errOut:(id *)out;
- (CSFComputeDataBuffer)initWithProperties:(id)properties name:(id)name errOut:(id *)out;
- (id)_allocateDataWithTensorProperties:(id)properties error:(id *)error;
- (id)convertDataToArray;
- (id)description;
- (unint64_t)_getTensorSizeWithProperties:(id)properties;
@end

@implementation CSFComputeDataBuffer

- (id)_allocateDataWithTensorProperties:(id)properties error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  v7 = [(CSFComputeDataBuffer *)self _getTensorSizeWithProperties:propertiesCopy];
  self->_elementSize = v7;
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:self->_elementSize];
  }

  else
  {
    if (error)
    {
      v9 = objc_alloc(MEMORY[0x1E696ABC0]);
      v15 = *MEMORY[0x1E696A578];
      v10 = MEMORY[0x1E696AEC0];
      v11 = [(CSFTensorProperties *)self->_tensorProperties description];
      v12 = [v10 stringWithFormat:@"cannot get element size with property: %@", v11];
      v16[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *error = [v9 initWithDomain:@"com.apple.corespeech" code:2458 userInfo:v13];
    }

    v8 = 0;
  }

  return v8;
}

- (unint64_t)_getTensorSizeWithProperties:(id)properties
{
  propertiesCopy = properties;
  shape = [propertiesCopy shape];
  v5 = shape;
  v6 = 0;
  if (propertiesCopy)
  {
    if (shape)
    {
      v6 = 0;
      if ([shape count])
      {
        v7 = 1;
        while (v6 < [v5 count])
        {
          v8 = [v5 objectAtIndexedSubscript:v6];
          v7 *= [v8 intValue];

          ++v6;
        }

        if ([propertiesCopy dataType] && objc_msgSend(propertiesCopy, "dataType") != 1)
        {
          v9 = 0;
        }

        else
        {
          v9 = 4;
        }

        v6 = v9 * v7;
      }
    }
  }

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  tensorName = self->_tensorName;
  v4 = [(CSFTensorProperties *)self->_tensorProperties description];
  v5 = [v2 stringWithFormat:@"<Name:%@ Properties: %@>", tensorName, v4];

  return v5;
}

- (id)convertDataToArray
{
  v41 = *MEMORY[0x1E69E9840];
  p_tensorProperties = &self->_tensorProperties;
  shape = [(CSFTensorProperties *)self->_tensorProperties shape];
  dataType = [(CSFTensorProperties *)*p_tensorProperties dataType];
  if ([shape count] > 2 || !objc_msgSend(shape, "count"))
  {
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v36 = "[CSFComputeDataBuffer convertDataToArray]";
      v18 = "%s rank > 2 or == 0 is not supported";
      goto LABEL_36;
    }

LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  if (!self->_data)
  {
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v36 = "[CSFComputeDataBuffer convertDataToArray]";
      v18 = "%s data is empty, Cannot convert ComputeData buffer to NSArray";
LABEL_36:
      _os_log_error_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v6 = 0x1E695D000uLL;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  bytes = [(NSData *)self->_data bytes];
  bytes2 = [(NSData *)self->_data bytes];
  if ([shape count] == 1)
  {
    for (i = 0; ; ++i)
    {
      firstObject = [shape firstObject];
      unsignedLongValue = [firstObject unsignedLongValue];

      if (i >= unsignedLongValue)
      {
        break;
      }

      elementSize = self->_elementSize;
      if (i >= elementSize)
      {
        v31 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v36 = "[CSFComputeDataBuffer convertDataToArray]";
          v37 = 2048;
          v38 = i;
          v39 = 2048;
          v40 = elementSize;
          _os_log_error_impl(&dword_1DDA4B000, v31, OS_LOG_TYPE_ERROR, "%s index: %lu out of bound: %lu", buf, 0x20u);
        }

        v16 = 0;
        goto LABEL_39;
      }

      if (dataType)
      {
        LODWORD(v12) = bytes[i];
        [MEMORY[0x1E696AD98] numberWithFloat:v12];
      }

      else
      {
        [MEMORY[0x1E696AD98] numberWithInt:bytes2[i]];
      }
      v14 = ;
      [v7 addObject:v14];
    }
  }

  else
  {
    v32 = v7;
    v33 = 0;
    v19 = 0;
LABEL_20:
    firstObject2 = [shape firstObject];
    unsignedLongValue2 = [firstObject2 unsignedLongValue];

    if (v33 < unsignedLongValue2)
    {
      v22 = objc_alloc_init(*(v6 + 3952));
      for (j = 0; ; ++j)
      {
        v24 = [shape objectAtIndexedSubscript:1];
        unsignedLongValue3 = [v24 unsignedLongValue];

        if (j >= unsignedLongValue3)
        {
          v29 = [v22 copy];
          [v32 addObject:v29];
          v6 = 0x1E695D000;

          ++v33;
          goto LABEL_20;
        }

        v27 = self->_elementSize;
        if (v19 >= v27)
        {
          break;
        }

        if (dataType)
        {
          LODWORD(v26) = bytes[v19];
          [MEMORY[0x1E696AD98] numberWithFloat:v26];
        }

        else
        {
          [MEMORY[0x1E696AD98] numberWithInt:bytes2[v19]];
        }
        v28 = ;
        [v22 addObject:v28];

        ++v19;
      }

      v30 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v36 = "[CSFComputeDataBuffer convertDataToArray]";
        v37 = 2048;
        v38 = v19;
        v39 = 2048;
        v40 = v27;
        _os_log_error_impl(&dword_1DDA4B000, v30, OS_LOG_TYPE_ERROR, "%s index: %lu out of bound: %lu", buf, 0x20u);
      }

      v16 = 0;
      v7 = v32;
      goto LABEL_39;
    }

    v7 = v32;
  }

  v16 = v7;
LABEL_39:

LABEL_14:

  return v16;
}

- (CSFComputeDataBuffer)initWithInputArray:(id)array name:(id)name properties:(id)properties errOut:(id *)out
{
  v68[1] = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  nameCopy = name;
  propertiesCopy = properties;
  v58.receiver = self;
  v58.super_class = CSFComputeDataBuffer;
  v11 = [(CSFComputeDataBuffer *)&v58 init];
  if (!v11)
  {
    goto LABEL_36;
  }

  if (!arrayCopy || (v12 = [arrayCopy count], !nameCopy) || !v12)
  {
    if (out)
    {
      v19 = objc_alloc(MEMORY[0x1E696ABC0]);
      v67 = *MEMORY[0x1E696A578];
      arrayCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"initialize with inputArray: %@", arrayCopy];
      v68[0] = arrayCopy;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
      *out = [v19 initWithDomain:@"com.apple.corespeech" code:2458 userInfo:v21];
    }

    goto LABEL_15;
  }

  v13 = [CSFModelComputeBackendUtils getRankOfTensor:arrayCopy];
  if (v13 < 1 || ([propertiesCopy shape], v14 = objc_claimAutoreleasedReturnValue(), v15 = v13 == objc_msgSend(v14, "count"), v14, !v15))
  {
    if (out)
    {
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v65 = *MEMORY[0x1E696A578];
      arrayCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"initialize with inputArray: %@", arrayCopy];
      v66 = arrayCopy2;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      *out = [v22 initWithDomain:@"com.apple.corespeech" code:2458 userInfo:v24];
    }

    goto LABEL_15;
  }

  v57 = 0;
  v52 = [(CSFComputeDataBuffer *)v11 _allocateDataWithTensorProperties:propertiesCopy error:&v57];
  v16 = v57;
  if (!v16)
  {
    shape = [propertiesCopy shape];
    dataType = [propertiesCopy dataType];
    if ([shape count] == 1)
    {
      v27 = 0;
      v28 = 0;
      while (v27 < [arrayCopy count])
      {
        if (dataType == 1)
        {
          v31 = [arrayCopy objectAtIndexedSubscript:v27];
          [v31 floatValue];
          v33 = v32;

          v56 = v33;
          [(NSData *)v52 replaceBytesInRange:v28 withBytes:4, &v56];
        }

        else
        {
          if (dataType)
          {
            if (!out)
            {
              goto LABEL_47;
            }

            v49 = objc_alloc(MEMORY[0x1E696ABC0]);
            v63 = *MEMORY[0x1E696A578];
            v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Compute data type not supported"];
            v64 = v53;
            v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
            v46 = [v49 initWithDomain:@"com.apple.corespeech" code:2458 userInfo:v45];
            goto LABEL_44;
          }

          v29 = [arrayCopy objectAtIndexedSubscript:v27];
          intValue = [v29 intValue];

          v56 = intValue;
          [(NSData *)v52 replaceBytesInRange:v28 withBytes:4, &v56];
        }

        v28 += 4;
        ++v27;
      }
    }

    else
    {
      if ([shape count] != 2)
      {
        if (out)
        {
          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v59 = *MEMORY[0x1E696A578];
          v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Rank > 0 not supported"];
          v60 = v53;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          v46 = [v44 initWithDomain:@"com.apple.corespeech" code:2458 userInfo:v45];
LABEL_44:
          *out = v46;
LABEL_45:

LABEL_46:
        }

LABEL_47:

        goto LABEL_15;
      }

      v34 = 0;
      v50 = 0;
LABEL_26:
      if (v50 < [arrayCopy count])
      {
        v53 = [arrayCopy objectAtIndexedSubscript:?];
        for (i = 0; ; ++i)
        {
          if (i >= [v53 count])
          {

            ++v50;
            goto LABEL_26;
          }

          if (dataType == 1)
          {
            v38 = [v53 objectAtIndexedSubscript:i];
            [v38 floatValue];
            v40 = v39;

            v56 = v40;
            [(NSData *)v52 replaceBytesInRange:v34 withBytes:4, &v56];
          }

          else
          {
            if (dataType)
            {
              if (out)
              {
                v47 = objc_alloc(MEMORY[0x1E696ABC0]);
                v61 = *MEMORY[0x1E696A578];
                v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Compute data type not supported"];
                v62 = v45;
                v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
                *out = [v47 initWithDomain:@"com.apple.corespeech" code:2458 userInfo:v48];

                goto LABEL_45;
              }

              goto LABEL_46;
            }

            v36 = [v53 objectAtIndexedSubscript:i];
            intValue2 = [v36 intValue];

            v56 = intValue2;
            [(NSData *)v52 replaceBytesInRange:v34 withBytes:4, &v56];
          }

          v34 += 4;
        }
      }
    }

    objc_storeStrong(&v11->_tensorProperties, properties);
    data = v11->_data;
    v11->_data = v52;
    v42 = v52;

    objc_storeStrong(&v11->_tensorName, name);
LABEL_36:
    v25 = v11;
    goto LABEL_37;
  }

  v17 = v16;
  if (out)
  {
    v18 = v16;
    *out = v17;
  }

LABEL_15:
  v25 = 0;
LABEL_37:

  return v25;
}

- (CSFComputeDataBuffer)initWithProperties:(id)properties name:(id)name errOut:(id *)out
{
  propertiesCopy = properties;
  nameCopy = name;
  v22.receiver = self;
  v22.super_class = CSFComputeDataBuffer;
  v11 = [(CSFComputeDataBuffer *)&v22 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_7;
  }

  v21 = 0;
  v13 = [(CSFComputeDataBuffer *)v11 _allocateDataWithTensorProperties:propertiesCopy error:&v21];
  v14 = v21;
  if (!v14)
  {
    objc_storeStrong(&v12->_tensorProperties, properties);
    data = v12->_data;
    v12->_data = v13;
    v19 = v13;

    objc_storeStrong(&v12->_tensorName, name);
LABEL_7:
    v17 = v12;
    goto LABEL_8;
  }

  v15 = v14;
  if (out)
  {
    v16 = v14;
    *out = v15;
  }

  v17 = 0;
LABEL_8:

  return v17;
}

@end