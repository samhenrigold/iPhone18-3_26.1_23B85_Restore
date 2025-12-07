@interface DESDecimalEncoder
+ (id)constructErrorWith:(id)with;
- (id)encodeDecimalData:(id)data forKey:(id)key withSchemas:(id)schemas errorOut:(id *)out;
@end

@implementation DESDecimalEncoder

- (id)encodeDecimalData:(id)data forKey:(id)key withSchemas:(id)schemas errorOut:(id *)out
{
  v76 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  keyCopy = key;
  schemasCopy = schemas;
  allKeys = [dataCopy allKeys];
  v13 = [allKeys sortedArrayUsingComparator:&__block_literal_global_0];

  v14 = [v13 count];
  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:v14];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v16 = v13;
  v17 = [v16 countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = sqrtf(v14);
    v63 = *v66;
    outCopy = out;
    v61 = keyCopy;
    v64 = v15;
    obj = v16;
LABEL_3:
    v20 = 0;
    while (1)
    {
      if (*v66 != v63)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v65 + 1) + 8 * v20);
      v22 = [schemasCopy objectForKeyedSubscript:v21];
      if (!v22)
      {
        break;
      }

      v23 = v22;
      v24 = [v22 objectForKeyedSubscript:@"upperBound"];
      v25 = [v23 objectForKeyedSubscript:@"lowerBound"];
      if (!v24 || ([v24 floatValue], objc_msgSend(v24, "floatValue"), fabsf(v26) == INFINITY))
      {
        v58 = v21;
        keyCopy = v61;
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@, missing or malformed '%@' in encoding schema for data '%@', must be a real or integer number", v61, @"upperBound", v58];
        v44 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
LABEL_22:
          +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
        }

LABEL_23:

LABEL_24:
        v16 = obj;
        if (outCopy)
        {
          *outCopy = [objc_opt_class() constructErrorWith:v43];
        }

LABEL_32:
        v15 = v64;
LABEL_33:

        v42 = 0;
        goto LABEL_34;
      }

      if (!v25 || ([v25 floatValue], objc_msgSend(v25, "floatValue"), fabsf(v27) == INFINITY))
      {
        v59 = v21;
        keyCopy = v61;
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@, missing or malformed '%@' in encoding schema for data '%@', must be a real or integer number", v61, @"lowerBound", v59];
        v44 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      [v25 floatValue];
      v29 = v28;
      [v24 floatValue];
      v31 = *&v30;
      if (v29 >= *&v30)
      {
        v49 = dataCopy;
        v50 = MEMORY[0x277CCACA8];
        v51 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
        *&v52 = v29;
        v53 = [MEMORY[0x277CCABB0] numberWithFloat:v52];
        v57 = v21;
        keyCopy = v61;
        v43 = [v50 stringWithFormat:@"key=%@, malformed encoding schema for data '%@', '%@'=%@ must be higher than '%@'=%@", v61, v57, @"upperBound", v51, @"lowerBound", v53];

        v54 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
        }

        dataCopy = v49;
        goto LABEL_24;
      }

      v32 = schemasCopy;
      v33 = dataCopy;
      v34 = [dataCopy objectForKeyedSubscript:v21];
      v35 = v34;
      if (!v34 || ([v34 floatValue], objc_msgSend(v35, "floatValue"), fabsf(v36) == INFINITY))
      {
        v55 = v21;
        keyCopy = v61;
        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@, malformed data for '%@', must be a valid real number", v61, v55];
        v46 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
        }

        v16 = obj;
        if (outCopy)
        {
          *outCopy = [objc_opt_class() constructErrorWith:v45];
        }

        dataCopy = v33;
        schemasCopy = v32;
        goto LABEL_32;
      }

      v37 = MEMORY[0x277CCABB0];
      [v35 floatValue];
      *&v39 = ((((v38 - v29) + (v38 - v29)) / (v31 - v29)) + -1.0) / v19;
      v40 = [v37 numberWithFloat:v39];

      v41 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v70 = v61;
        v71 = 2112;
        v72 = v21;
        v73 = 2112;
        v74 = v40;
        _os_log_debug_impl(&dword_248FF7000, v41, OS_LOG_TYPE_DEBUG, "key=%@, encoded metric '%@' to value '%@'", buf, 0x20u);
      }

      [v64 addObject:v40];
      ++v20;
      dataCopy = v33;
      schemasCopy = v32;
      if (v18 == v20)
      {
        v16 = obj;
        v18 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
        keyCopy = v61;
        v15 = v64;
        if (v18)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    v56 = v21;
    keyCopy = v61;
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@, data element '%@' has no schema", v61, v56];
    v48 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
    }

    v15 = v64;
    v16 = obj;
    if (outCopy)
    {
      *outCopy = [objc_opt_class() constructErrorWith:v23];
    }

    goto LABEL_33;
  }

LABEL_18:

  v42 = v15;
LABEL_34:

  return v42;
}

+ (id)constructErrorWith:(id)with
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = with;
  v4 = MEMORY[0x277CBEAC0];
  withCopy = with;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v3 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2013 userInfo:v6];

  return v7;
}

@end