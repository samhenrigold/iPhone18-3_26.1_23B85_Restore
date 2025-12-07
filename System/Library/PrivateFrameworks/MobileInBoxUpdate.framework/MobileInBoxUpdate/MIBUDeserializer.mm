@interface MIBUDeserializer
- (BOOL)_deserializeError:(id *)error withErrorCodeTag:(id)tag errorDomainTag:(id)domainTag errorDescriptionTag:(id)descriptionTag underlyingErrorTag:(id)errorTag;
- (BOOL)_deserializeNextTag:(id *)tag withData:(id *)data;
- (MIBUDeserializer)initWithData:(id)data;
- (id)_valueForTag:(id)tag withData:(id)data;
- (id)deserialize;
@end

@implementation MIBUDeserializer

- (MIBUDeserializer)initWithData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = MIBUDeserializer;
  v5 = [(MIBUDeserializer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MIBUDeserializer *)v5 setData:dataCopy];
    [(MIBUDeserializer *)v6 setPos:0];
    [(MIBUDeserializer *)v6 setTagValDict:0];
  }

  return v6;
}

- (id)deserialize
{
  tagValDict = [(MIBUDeserializer *)self tagValDict];

  if (tagValDict)
  {
    tagValDict2 = [(MIBUDeserializer *)self tagValDict];
  }

  else
  {
    v5 = objc_opt_new();
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v7;
      v9 = v6;
      v13 = v6;
      v14 = v7;
      v10 = [(MIBUDeserializer *)self _deserializeNextTag:&v14 withData:&v13];
      v7 = v14;

      v6 = v13;
      if (!v10)
      {

        tagValDict2 = 0;
        goto LABEL_14;
      }

      if (v6 && v7)
      {
        v11 = [(MIBUDeserializer *)self _valueForTag:v7 withData:v6];
        if (v11)
        {
          [v5 setObject:v11 forKey:v7];
        }
      }
    }

    while (v7);
    if ([v5 count])
    {
      [(MIBUDeserializer *)self setTagValDict:v5];
    }

    tagValDict2 = v5;
LABEL_14:
  }

  return tagValDict2;
}

void __49__MIBUDeserializer__deserializeNextTag_withData___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __49__MIBUDeserializer__deserializeNextTag_withData___block_invoke_18()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __49__MIBUDeserializer__deserializeNextTag_withData___block_invoke_21()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __49__MIBUDeserializer__deserializeNextTag_withData___block_invoke_24()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __42__MIBUDeserializer__valueForTag_withData___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __42__MIBUDeserializer__valueForTag_withData___block_invoke_30()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __42__MIBUDeserializer__valueForTag_withData___block_invoke_33()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __42__MIBUDeserializer__valueForTag_withData___block_invoke_36()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __42__MIBUDeserializer__valueForTag_withData___block_invoke_39()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __42__MIBUDeserializer__valueForTag_withData___block_invoke_42()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __42__MIBUDeserializer__valueForTag_withData___block_invoke_46()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __42__MIBUDeserializer__valueForTag_withData___block_invoke_49()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __42__MIBUDeserializer__valueForTag_withData___block_invoke_52()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __42__MIBUDeserializer__valueForTag_withData___block_invoke_55()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __109__MIBUDeserializer__deserializeError_withErrorCodeTag_errorDomainTag_errorDescriptionTag_underlyingErrorTag___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __109__MIBUDeserializer__deserializeError_withErrorCodeTag_errorDomainTag_errorDescriptionTag_underlyingErrorTag___block_invoke_60()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __109__MIBUDeserializer__deserializeError_withErrorCodeTag_errorDomainTag_errorDescriptionTag_underlyingErrorTag___block_invoke_63()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)_deserializeNextTag:(id *)tag withData:(id *)data
{
  v50 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v46 = 0;
  v7 = [(MIBUDeserializer *)self pos];
  data = [(MIBUDeserializer *)self data];
  v9 = [data length];

  if (v7 == v9)
  {
LABEL_19:
    v17 = 0;
    v15 = 0;
    v25 = 0;
    goto LABEL_10;
  }

  v10 = v7 + 5;
  data2 = [(MIBUDeserializer *)self data];
  v12 = [data2 length];

  if (v7 + 5 >= v12)
  {
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_7);
    }

    v30 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      data3 = [(MIBUDeserializer *)self data];
      data4 = [(MIBUDeserializer *)self data];
      *buf = 138543874;
      *v49 = data3;
      *&v49[8] = 2048;
      *&v49[10] = v7;
      *&v49[18] = 2048;
      *&v49[20] = [data4 length];
      _os_log_impl(&dword_259ABF000, v31, OS_LOG_TYPE_DEFAULT, "Warning: Data %{public}@ Terminating deserialization at %lu for data length: %lu", buf, 0x20u);
    }

    goto LABEL_19;
  }

  data5 = [(MIBUDeserializer *)self data];
  [data5 getBytes:&v47 range:{v7, 1}];

  data6 = [(MIBUDeserializer *)self data];
  [data6 getBytes:&v46 range:{v7 + 1, 4}];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v47];
  v16 = [MIBUSerializationUtil maxLengthForTag:v15];
  if (v16)
  {
    v17 = v16;
    v18 = v46;
    if (v18 > [v16 unsignedIntValue])
    {
      if (MIBUOnceToken != -1)
      {
        dispatch_once(&MIBUOnceToken, &__block_literal_global_23);
      }

      v35 = MIBUConnObj;
      if (OUTLINED_FUNCTION_5_1())
      {
        v36 = v35;
        charValue = [v15 charValue];
        v38 = v46;
        unsignedIntValue = [v17 unsignedIntValue];
        *buf = 67109632;
        *v49 = charValue;
        *&v49[4] = 1024;
        *&v49[6] = v38;
        *&v49[10] = 1024;
        *&v49[12] = unsignedIntValue;
        _os_log_error_impl(&dword_259ABF000, v36, OS_LOG_TYPE_ERROR, "0x%X field len: %u is > expected len: %u", buf, 0x14u);
      }
    }

    else
    {
      v19 = v10 + v46;
      data7 = [(MIBUDeserializer *)self data];
      v21 = [data7 length];

      if (v19 <= v21)
      {
        if (v46)
        {
          v22 = MEMORY[0x277CBEA90];
          data8 = [(MIBUDeserializer *)self data];
          bytes = [data8 bytes];
          v25 = [v22 dataWithBytesNoCopy:bytes + v10 length:v46 freeWhenDone:0];

          v10 += v46;
        }

        else
        {
          v25 = 0;
        }

        [(MIBUDeserializer *)self setPos:v10];
LABEL_10:
        v26 = 1;
        if (!tag)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      if (MIBUOnceToken != -1)
      {
        dispatch_once(&MIBUOnceToken, &__block_literal_global_26);
      }

      v40 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        v43 = v46;
        v44 = v40;
        data9 = [(MIBUDeserializer *)self data];
        *buf = 67109634;
        *v49 = v43;
        *&v49[4] = 2048;
        *&v49[6] = v10;
        *&v49[14] = 2114;
        *&v49[16] = data9;
        _os_log_error_impl(&dword_259ABF000, v44, OS_LOG_TYPE_ERROR, "Failed to deserialize %u bytes data at %lu; data %{public}@ too short", buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_20);
    }

    v34 = MIBUConnObj;
    if (OUTLINED_FUNCTION_6_1())
    {
      v41 = v34;
      charValue2 = [v15 charValue];
      *buf = 67109120;
      *v49 = charValue2;
      _os_log_error_impl(&dword_259ABF000, v41, OS_LOG_TYPE_ERROR, "Tag 0x%X is not recognized", buf, 8u);
    }

    v17 = 0;
  }

  v25 = 0;
  v26 = 0;
  if (tag)
  {
LABEL_11:
    v27 = v15;
    *tag = v15;
  }

LABEL_12:
  if (data)
  {
    v28 = v25;
    *data = v25;
  }

  return v26;
}

- (id)_valueForTag:(id)tag withData:(id)data
{
  v50 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  tagCopy = tag;
  v7 = [MIBUSerializationUtil typeForTag:tagCopy];
  v8 = [MIBUSerializationUtil maxLengthForTag:tagCopy];

  v9 = 0;
  if (!v7 || !v8)
  {
    goto LABEL_27;
  }

  switch([v7 unsignedIntValue])
  {
    case 1u:
    case 3u:
    case 4u:
      unsignedIntValue = [v8 unsignedIntValue];
      if (!dataCopy || (v11 = unsignedIntValue, ![dataCopy length]))
      {
        if (MIBUOnceToken != -1)
        {
          dispatch_once(&MIBUOnceToken, &__block_literal_global_29);
        }

        v44 = MIBUConnObj;
        if (OUTLINED_FUNCTION_6_1())
        {
          *v49 = 138543362;
          *&v49[4] = dataCopy;
          v45 = "Cannot convert data %{public}@ to number";
          goto LABEL_50;
        }

        goto LABEL_18;
      }

      if ((v11 - 9) <= 0xFFFFFFF7)
      {
        if (MIBUOnceToken != -1)
        {
          dispatch_once(&MIBUOnceToken, &__block_literal_global_32);
        }

        v46 = MIBUConnObj;
        if (!OUTLINED_FUNCTION_5_1())
        {
          goto LABEL_18;
        }

        goto LABEL_58;
      }

      v12 = [dataCopy length];
      if (v12 == v11)
      {
        OUTLINED_FUNCTION_4_1(v12, v13, v14, v15, v16, v17, v18, v19, *v49);
        v20 = [MEMORY[0x277CCABB0] numberWithLongLong:*v49];
        goto LABEL_26;
      }

      if (MIBUOnceToken != -1)
      {
        dispatch_once(&MIBUOnceToken, &__block_literal_global_35);
      }

      v46 = MIBUConnObj;
      if (!OUTLINED_FUNCTION_5_1())
      {
        goto LABEL_18;
      }

      goto LABEL_66;
    case 2u:
      unsignedIntValue2 = [v8 unsignedIntValue];
      if (!dataCopy || (v22 = unsignedIntValue2, ![dataCopy length]))
      {
        if (MIBUOnceToken != -1)
        {
          dispatch_once(&MIBUOnceToken, &__block_literal_global_38);
        }

        v44 = MIBUConnObj;
        if (OUTLINED_FUNCTION_6_1())
        {
          *v49 = 138543362;
          *&v49[4] = dataCopy;
          v45 = "Cannot convert data %{public}@ to number";
          goto LABEL_50;
        }

        goto LABEL_18;
      }

      if ((v22 - 9) <= 0xFFFFFFF7)
      {
        if (MIBUOnceToken != -1)
        {
          dispatch_once(&MIBUOnceToken, &__block_literal_global_41);
        }

        v46 = MIBUConnObj;
        if (!OUTLINED_FUNCTION_5_1())
        {
          goto LABEL_18;
        }

        goto LABEL_58;
      }

      v23 = [dataCopy length];
      if (v23 == v22)
      {
        OUTLINED_FUNCTION_4_1(v23, v24, v25, v26, v27, v28, v29, v30, *v49);
        v20 = [MEMORY[0x277CCABB0] numberWithDouble:*v49];
        goto LABEL_26;
      }

      if (MIBUOnceToken != -1)
      {
        dispatch_once(&MIBUOnceToken, &__block_literal_global_44);
      }

      v46 = MIBUConnObj;
      if (!OUTLINED_FUNCTION_5_1())
      {
        goto LABEL_18;
      }

      goto LABEL_66;
    case 5u:
      v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
      goto LABEL_26;
    case 6u:
      v20 = dataCopy;
      goto LABEL_26;
    case 7u:
      unsignedIntValue3 = [v8 unsignedIntValue];
      if (!dataCopy || (v33 = unsignedIntValue3, ![dataCopy length]))
      {
        if (MIBUOnceToken != -1)
        {
          dispatch_once(&MIBUOnceToken, &__block_literal_global_48_0);
        }

        v44 = MIBUConnObj;
        if (!OUTLINED_FUNCTION_6_1())
        {
          goto LABEL_18;
        }

        *v49 = 138543362;
        *&v49[4] = dataCopy;
        v45 = "Cannot convert data %{public}@ to number. Data is NULL or empty";
LABEL_50:
        v47 = v44;
        v48 = 12;
        goto LABEL_68;
      }

      if ((v33 - 9) <= 0xFFFFFFF7)
      {
        if (MIBUOnceToken != -1)
        {
          dispatch_once(&MIBUOnceToken, &__block_literal_global_51);
        }

        v46 = MIBUConnObj;
        if (!OUTLINED_FUNCTION_5_1())
        {
          goto LABEL_18;
        }

LABEL_58:
        OUTLINED_FUNCTION_0_1();
        v45 = "Len of num to convert %u cannot be greater than %lu";
LABEL_67:
        v47 = v46;
        v48 = 18;
LABEL_68:
        _os_log_error_impl(&dword_259ABF000, v47, OS_LOG_TYPE_ERROR, v45, v49, v48);
LABEL_18:
        v9 = 0;
        goto LABEL_27;
      }

      v34 = [dataCopy length];
      if (v34 != v33)
      {
        if (MIBUOnceToken != -1)
        {
          dispatch_once(&MIBUOnceToken, &__block_literal_global_54);
        }

        v46 = MIBUConnObj;
        if (!OUTLINED_FUNCTION_5_1())
        {
          goto LABEL_18;
        }

LABEL_66:
        OUTLINED_FUNCTION_3_1();
        v45 = "Data %{public}@ does not have expected len %u";
        goto LABEL_67;
      }

      OUTLINED_FUNCTION_4_1(v34, v35, v36, v37, v38, v39, v40, v41, *v49);
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v49];
LABEL_26:
      v9 = v20;
LABEL_27:

      return v9;
    default:
      if (MIBUOnceToken != -1)
      {
        dispatch_once(&MIBUOnceToken, &__block_literal_global_57);
      }

      v31 = MIBUConnObj;
      if (OUTLINED_FUNCTION_6_1())
      {
        v43 = v31;
        *v49 = 67109120;
        *&v49[4] = [v7 unsignedIntValue];
        _os_log_error_impl(&dword_259ABF000, v43, OS_LOG_TYPE_ERROR, "Unrecognized deserialization data type: 0x%X", v49, 8u);
      }

      goto LABEL_18;
  }
}

- (BOOL)_deserializeError:(id *)error withErrorCodeTag:(id)tag errorDomainTag:(id)domainTag errorDescriptionTag:(id)descriptionTag underlyingErrorTag:(id)errorTag
{
  v62[1] = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  domainTagCopy = domainTag;
  descriptionTagCopy = descriptionTag;
  errorTagCopy = errorTag;
  v17 = objc_opt_new();
  tagValDict = [(MIBUDeserializer *)self tagValDict];

  v59 = descriptionTagCopy;
  v60 = tagCopy;
  v57 = errorTagCopy;
  v58 = domainTagCopy;
  if (!tagValDict)
  {
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_59);
    }

    errorCopy5 = error;
    if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v44 = "Data must be deserialized before deserializing error";
    goto LABEL_43;
  }

  tagValDict2 = [(MIBUDeserializer *)self tagValDict];
  v20 = [tagValDict2 objectForKey:tagCopy];

  if (!v20)
  {
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_62);
    }

    errorCopy5 = error;
    if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v44 = "Failed to convert error code data to number";
LABEL_43:
    OUTLINED_FUNCTION_7_1(&dword_259ABF000, v38, v39, v44, v40, v41, v42, v43, v51, v52, v54, error, errorTagCopy, domainTagCopy, descriptionTagCopy, tagCopy);
LABEL_34:
    OUTLINED_FUNCTION_2_2();
    v20 = 0;
LABEL_41:
    v35 = 0;
    v34 = 0;
    goto LABEL_24;
  }

  if (![v20 longValue])
  {
    OUTLINED_FUNCTION_2_2();
    v34 = 0;
    v35 = 1;
    errorCopy5 = error;
    goto LABEL_24;
  }

  tagValDict3 = [(MIBUDeserializer *)self tagValDict];
  v7 = [tagValDict3 objectForKey:domainTagCopy];

  if (!v7)
  {
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_65);
    }

    errorCopy5 = error;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_1(&dword_259ABF000, v45, v46, "Failed to convert error domain data to string", v47, v48, v49, v50, v51, v52, v54, error, errorTagCopy, domainTagCopy, descriptionTagCopy, tagCopy);
    }

    OUTLINED_FUNCTION_2_2();
    goto LABEL_41;
  }

  tagValDict4 = [(MIBUDeserializer *)self tagValDict];
  v8 = [tagValDict4 objectForKey:descriptionTagCopy];

  tagValDict5 = [(MIBUDeserializer *)self tagValDict];
  errorTagCopy = [tagValDict5 objectForKey:errorTagCopy];

  v24 = MEMORY[0x277CCA450];
  v25 = 0x277CCA000;
  if (errorTagCopy)
  {
    v26 = [MEMORY[0x277CCAAA0] JSONObjectWithData:errorTagCopy options:0 error:0];
    tagCopy = v26;
    if (v26)
    {
      v27 = [v26 objectForKeyedSubscript:domainTagCopy];
      v28 = [tagCopy objectForKeyedSubscript:v60];
      v29 = v28;
      domainTagCopy = 0;
      v30 = &stru_286AC3C40;
      if (v27 && v28)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v31 = [tagCopy objectForKeyedSubscript:v59];

          if (v31)
          {
            v30 = [tagCopy objectForKeyedSubscript:v59];
          }

          else
          {
            v30 = &stru_286AC3C40;
          }

          v55 = MEMORY[0x277CCA9B8];
          integerValue = [v29 integerValue];
          v61 = *MEMORY[0x277CCA450];
          v62[0] = v30;
          v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];
          domainTagCopy = [v55 errorWithDomain:v27 code:integerValue userInfo:v53];
        }

        else
        {
          domainTagCopy = 0;
        }
      }

      v25 = 0x277CCA000uLL;
      v24 = MEMORY[0x277CCA450];
      goto LABEL_19;
    }
  }

  else
  {
    tagCopy = 0;
  }

  domainTagCopy = 0;
LABEL_19:
  errorCopy5 = error;
  if (v8)
  {
    [v17 setObject:v8 forKeyedSubscript:*v24];
  }

  if (domainTagCopy)
  {
    [v17 setObject:domainTagCopy forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v34 = [*(v25 + 2488) errorWithDomain:v7 code:objc_msgSend(v20 userInfo:{"longValue"), v17}];
  v35 = 1;
LABEL_24:
  if (errorCopy5)
  {
    v36 = v34;
    *errorCopy5 = v34;
  }

  return v35;
}

@end