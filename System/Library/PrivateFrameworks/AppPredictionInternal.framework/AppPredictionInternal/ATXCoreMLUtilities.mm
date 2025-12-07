@interface ATXCoreMLUtilities
+ (double)scoreForModelOutputValue:(id)value outputIndexedSubscript:(int64_t)subscript;
+ (id)loadCoreMLModelWithName:(id)name;
+ (id)loadCoreMLModelWithName:(id)name withConfiguration:(id)configuration error:(id *)error;
@end

@implementation ATXCoreMLUtilities

+ (id)loadCoreMLModelWithName:(id)name
{
  nameCopy = name;
  v5 = objc_opt_new();
  [v5 setComputeUnits:0];
  v11 = 0;
  v6 = [self loadCoreMLModelWithName:nameCopy withConfiguration:v5 error:&v11];
  v7 = v11;
  v8 = v7;
  if (!v6)
  {
    v9 = __atxlog_handle_default(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXCoreMLUtilities *)nameCopy loadCoreMLModelWithName:v8, v9];
    }
  }

  return v6;
}

+ (id)loadCoreMLModelWithName:(id)name withConfiguration:(id)configuration error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  configurationCopy = configuration;
  if (!nameCopy)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CEB260];
    v25 = *MEMORY[0x277CCA068];
    v26[0] = @"ATXCoreMLUtilities: Missing model name";
    v17 = MEMORY[0x277CBEAC0];
    v18 = v26;
    v19 = &v25;
LABEL_6:
    v12 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
    v14 = [v15 errorWithDomain:v16 code:3 userInfo:v12];
    v13 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  v9 = [MEMORY[0x277CEB3C0] pathForResource:nameCopy ofType:@"mlmodelc" isDirectory:1];
  if (!v9)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CEB260];
    v23 = *MEMORY[0x277CCA068];
    v24 = @"ATXCoreMLUtilities: No valid path for model";
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v24;
    v19 = &v23;
    goto LABEL_6;
  }

  v10 = v9;
  v11 = MEMORY[0x277CBFF20];
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
  v22 = 0;
  v13 = [v11 modelWithContentsOfURL:v12 configuration:configurationCopy error:&v22];
  v14 = v22;
LABEL_7:

  if (error && !v13)
  {
    v20 = v14;
    *error = v14;
  }

  return v13;
}

+ (double)scoreForModelOutputValue:(id)value outputIndexedSubscript:(int64_t)subscript
{
  valueCopy = value;
  type = [valueCopy type];
  v7 = type;
  if (type > 4)
  {
    if (type == 5)
    {
      multiArrayValue = [valueCopy multiArrayValue];
      v11 = [multiArrayValue objectAtIndexedSubscript:subscript];
      [v11 doubleValue];
      int64Value = v15;
    }

    else
    {
      if (type != 6)
      {
        goto LABEL_8;
      }

      multiArrayValue = [valueCopy dictionaryValue];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:subscript];
      v12 = [multiArrayValue objectForKeyedSubscript:v11];
      [v12 doubleValue];
      int64Value = v13;
    }

    goto LABEL_14;
  }

  if (type == 1)
  {
    int64Value = [valueCopy int64Value];
    goto LABEL_14;
  }

  if (type == 2)
  {
    [valueCopy doubleValue];
    int64Value = v8;
    goto LABEL_14;
  }

LABEL_8:
  v14 = __atxlog_handle_default(type);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [ATXCoreMLUtilities scoreForModelOutputValue:v7 outputIndexedSubscript:v14];
  }

  int64Value = -31337.0;
LABEL_14:

  return int64Value;
}

+ (void)loadCoreMLModelWithName:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXCoreMLUtilities: Error initializing %@ model: %@", &v3, 0x16u);
}

+ (void)scoreForModelOutputValue:(uint64_t)a1 outputIndexedSubscript:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXCoreMLUtilities - CoreMLModel: No valid outputType found for %ld", &v2, 0xCu);
}

@end