@interface CAFControlParameter
+ (id)parseParameters:(id)parameters;
- (CAFControlParameter)initWithConfig:(id)config;
- (NSString)formatString;
- (id)currentDescriptionForCache:(id)cache;
@end

@implementation CAFControlParameter

- (NSString)formatString
{
  format = [(CAFControlParameter *)self format];

  return NSStringFromCharacteristicMetadataFormat(format);
}

- (CAFControlParameter)initWithConfig:(id)config
{
  configCopy = config;
  v26.receiver = self;
  v26.super_class = CAFControlParameter;
  v5 = [(CAFControlParameter *)&v26 init];
  if (!v5)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  v6 = [configCopy objectForKeyedSubscript:@"name"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v5 + 2);
  *(v5 + 2) = v7;

  if (!*(v5 + 2))
  {
    v16 = CAFCharacteristicLogging(v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(CAFControlParameter *)v16 initWithConfig:v17, v18, v19, v20, v21, v22, v23];
    }

    goto LABEL_20;
  }

  objc_opt_class();
  v10 = [configCopy objectForKeyedSubscript:@"format"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v24 = CAFCharacteristicLogging(v12);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(CAFControlParameter *)v5 + 2 initWithConfig:v24];
    }

LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  *(v5 + 3) = [v11 unsignedIntegerValue];
  *(v5 + 8) = [CAFCarConfiguration getBoolean:configCopy key:@"supportsInvalid"];
  v13 = [[CAFCachedDescription alloc] initWithCacheable:v5];
  v14 = *(v5 + 4);
  *(v5 + 4) = v13;

LABEL_13:
  v15 = v5;
LABEL_21:

  return v15;
}

+ (id)parseParameters:(id)parameters
{
  parametersCopy = parameters;
  if (parametersCopy)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__1;
    v11 = __Block_byref_object_dispose__1;
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__CAFControlParameter_parseParameters___block_invoke;
    v6[3] = &unk_27890EFD0;
    v6[4] = &v7;
    [parametersCopy enumerateObjectsUsingBlock:v6];
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __39__CAFControlParameter_parseParameters___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  v7 = v6;
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = [[CAFControlParameter alloc] initWithConfig:v7];
    if (v8)
    {
      [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
    }

    else
    {
      v20 = CAFServiceLogging(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __39__CAFControlParameter_parseParameters___block_invoke_cold_1(v20, v21, v22, v23, v24, v25, v26, v27);
      }

      v28 = *(*(a1 + 32) + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = 0;

      *a4 = 1;
    }
  }

  else
  {

    v10 = CAFServiceLogging(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __39__CAFControlParameter_parseParameters___block_invoke_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    v18 = *(*(a1 + 32) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;

    *a4 = 1;
  }
}

- (id)currentDescriptionForCache:(id)cache
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  name = [(CAFControlParameter *)self name];
  formatString = [(CAFControlParameter *)self formatString];
  supportsInvalid = [(CAFControlParameter *)self supportsInvalid];
  v9 = &stru_284626CA8;
  if (supportsInvalid)
  {
    v9 = @"?";
  }

  v10 = [v4 stringWithFormat:@"<%@: %p %@ %@%@>", v5, self, name, formatString, v9];

  return v10;
}

- (void)initWithConfig:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_231618000, a2, OS_LOG_TYPE_ERROR, "Parsing control parameter: %@ failed for format", &v3, 0xCu);
}

@end