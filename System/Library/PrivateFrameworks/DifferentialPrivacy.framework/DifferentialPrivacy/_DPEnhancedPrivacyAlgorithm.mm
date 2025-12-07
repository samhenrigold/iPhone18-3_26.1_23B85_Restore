@interface _DPEnhancedPrivacyAlgorithm
+ (BOOL)isEnhancedPrivacyAlgorithm:(id)algorithm;
+ (BOOL)isMetadataValid:(id)valid;
+ (BOOL)verifyEnhancedDPParamsForKey:(id)key withMetadata:(id)metadata;
+ (id)allowedDataTypesForKey:(id)key withMetadata:(id)metadata;
+ (id)findMultipleDonationForKey:(id)key inRecords:(id)records;
@end

@implementation _DPEnhancedPrivacyAlgorithm

+ (id)allowedDataTypesForKey:(id)key withMetadata:(id)metadata
{
  v37 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v7 = [metadata objectForKeyedSubscript:@"AllowedDataTypes"];
  v8 = [_DPKeyNames keyPropertiesForKey:keyCopy];
  namespaceName = [v8 namespaceName];
  if (namespaceName)
  {
    v10 = [_DPNamespaceParameters initParametersForNamespace:namespaceName];
    allowedDataTypes = [v10 allowedDataTypes];
    v12 = allowedDataTypes;
    if (allowedDataTypes && [allowedDataTypes count])
    {
      if (![v7 count])
      {
        v20 = +[_DPLog framework];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22622D000, v20, OS_LOG_TYPE_INFO, "No allowed data types passed; default is selected", buf, 2u);
        }

        v17 = v12;
        goto LABEL_9;
      }

      v13 = [MEMORY[0x277CBEB98] setWithArray:v12];
      v14 = [v7 isSubsetOfSet:v13];

      if (v14)
      {
        v15 = MEMORY[0x277CBEA60];
        allObjects = [v7 allObjects];
        v17 = [v15 arrayWithArray:allObjects];

LABEL_9:
        goto LABEL_13;
      }

      v18 = +[_DPLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = NSStringFromSelector(a2);
        allObjects2 = [v7 allObjects];
        v22 = [allObjects2 componentsJoinedByString:{@", "}];
        v23 = [v12 componentsJoinedByString:{@", "}];
        *buf = 138413314;
        v28 = v21;
        v29 = 2112;
        v30 = v22;
        v31 = 2112;
        v32 = v23;
        v33 = 2112;
        v34 = namespaceName;
        v35 = 2112;
        v36 = keyCopy;
        _os_log_error_impl(&dword_22622D000, v18, OS_LOG_TYPE_ERROR, "%@: Recieved data types [%@] are not a subset of approved data types [%@] for namespace %@ with key %@", buf, 0x34u);

LABEL_22:
      }
    }

    else
    {
      v18 = +[_DPLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = NSStringFromSelector(a2);
        *buf = 138412802;
        v28 = v21;
        v29 = 2112;
        v30 = namespaceName;
        v31 = 2112;
        v32 = keyCopy;
        _os_log_error_impl(&dword_22622D000, v18, OS_LOG_TYPE_ERROR, "%@: No allowed list of data types found for namespace %@ with key %@", buf, 0x20u);
        goto LABEL_22;
      }
    }

    v17 = 0;
    goto LABEL_9;
  }

  v10 = +[_DPLog framework];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v24 = NSStringFromSelector(a2);
    propertiesName = [v8 propertiesName];
    *buf = 138412802;
    v28 = v24;
    v29 = 2112;
    v30 = keyCopy;
    v31 = 2112;
    v32 = propertiesName;
    _os_log_error_impl(&dword_22622D000, v10, OS_LOG_TYPE_ERROR, "%@: No namespace name found for key: %@ with property name: %@", buf, 0x20u);
  }

  v17 = 0;
LABEL_13:

  return v17;
}

+ (BOOL)isEnhancedPrivacyAlgorithm:(id)algorithm
{
  if (algorithm)
  {
    v4 = [algorithm objectForKeyedSubscript:@"EnhancedDifferentialPrivacyParameters"];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKeyedSubscript:@"useEnhancedDifferentialPrivacyAlgorithm"];
      v7 = v6 != 0;

      if (!v6)
      {
        v10 = +[_DPLog framework];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(_DPEnhancedPrivacyAlgorithm *)a2 isEnhancedPrivacyAlgorithm:v10];
        }

        goto LABEL_11;
      }

      v8 = [v5 objectForKeyedSubscript:@"useEnhancedDifferentialPrivacyAlgorithm"];
      bOOLValue = [v8 BOOLValue];

      if (bOOLValue)
      {
        v10 = +[_DPLog framework];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *v12 = 0;
          _os_log_impl(&dword_22622D000, v10, OS_LOG_TYPE_INFO, "Enhanced differential privacy budget control is set", v12, 2u);
        }

LABEL_11:

        goto LABEL_12;
      }
    }

    v7 = 0;
LABEL_12:

    return v7;
  }

  return 0;
}

+ (BOOL)isMetadataValid:(id)valid
{
  v19[3] = *MEMORY[0x277D85DE8];
  validCopy = valid;
  if (validCopy)
  {
    v19[0] = @"EnhancedDifferentialPrivacyParameters";
    v19[1] = @"AllowedDataTypes";
    v19[2] = @"DonationID";
    [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v17 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [validCopy objectForKeyedSubscript:{v9, v14}];

          if (!v10)
          {
            v12 = +[_DPLog framework];
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              [(_DPEnhancedPrivacyAlgorithm *)v9 isMetadataValid:v12];
            }

            v11 = 0;
            goto LABEL_14;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
LABEL_14:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)verifyEnhancedDPParamsForKey:(id)key withMetadata:(id)metadata
{
  v53[4] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  metadataCopy = metadata;
  v8 = [metadataCopy objectForKeyedSubscript:@"EnhancedDifferentialPrivacyParameters"];
  v53[0] = @"localDifferentialPrivacyBudget";
  v53[1] = @"cohortAggregateDifferentialPrivacyBudget";
  v53[2] = @"minCohortSize";
  v53[3] = @"useEnhancedDifferentialPrivacyAlgorithm";
  [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = v44 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v8 objectForKeyedSubscript:*(*(&v41 + 1) + 8 * i)];

        if (!v14)
        {
          v20 = +[_DPLog framework];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [_DPEnhancedPrivacyAlgorithm verifyEnhancedDPParamsForKey:keyCopy withMetadata:v20];
          }

          v29 = 0;
          v15 = v9;
          goto LABEL_29;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v41 objects:v52 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = [self allowedDataTypesForKey:keyCopy withMetadata:metadataCopy];
  if (v15)
  {
    v16 = [metadataCopy objectForKeyedSubscript:@"EnhancedDifferentialPrivacyParameters"];
    v17 = [v16 objectForKeyedSubscript:@"localDifferentialPrivacyBudget"];
    [v17 floatValue];
    v19 = v18;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v20 = v15;
    v21 = [v20 countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v21)
    {
      v22 = v21;
      v34 = metadataCopy;
      v35 = keyCopy;
      v23 = 0;
      v24 = *v38;
      obj = v20;
      while (2)
      {
        v25 = 0;
        v26 = v23;
        do
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v37 + 1) + 8 * v25);
          v23 = [_DPDataTypeParameters initParametersForDataType:v27];

          [v23 localPrivacyBudget];
          v29 = v19 <= v28;
          if (v19 > v28)
          {
            v30 = v28;
            v31 = +[_DPLog framework];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218498;
              v46 = v19;
              v47 = 2112;
              v48 = v27;
              v49 = 2048;
              v50 = v30;
              _os_log_error_impl(&dword_22622D000, v31, OS_LOG_TYPE_ERROR, "Query local privacy budget %f is greater than that of %@ data type, %f.", buf, 0x20u);
            }

            v20 = obj;
            goto LABEL_26;
          }

          ++v25;
          v26 = v23;
        }

        while (v22 != v25);
        v20 = obj;
        v22 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }

LABEL_26:

      v15 = v20;
      metadataCopy = v34;
      keyCopy = v35;
    }

    else
    {
      v29 = 1;
      v15 = v20;
    }

LABEL_29:
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

+ (id)findMultipleDonationForKey:(id)key inRecords:(id)records
{
  v27 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  recordsCopy = records;
  v6 = [MEMORY[0x277CBEC10] mutableCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = recordsCopy;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        metadata = [v11 metadata];
        v13 = [metadata objectForKeyedSubscript:@"DonationID"];
        if (v13)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", keyCopy, v13];
        }

        else
        {
          v14 = keyCopy;
        }

        v15 = v14;
        v16 = [v6 objectForKeyedSubscript:v14];

        if (!v16)
        {
          v17 = [MEMORY[0x277CBEBF8] mutableCopy];
          [v6 setObject:v17 forKeyedSubscript:v15];
        }

        v18 = [v6 objectForKeyedSubscript:v15];
        [v18 addObject:v11];
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  return v6;
}

+ (void)isEnhancedPrivacyAlgorithm:(const char *)a1 .cold.1(const char *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = @"useEnhancedDifferentialPrivacyAlgorithm";
  _os_log_error_impl(&dword_22622D000, a2, OS_LOG_TYPE_ERROR, "%@: Malformed enhanced differential privacy parameters; no value found for the key; %@", &v4, 0x16u);
}

+ (void)isMetadataValid:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22622D000, a2, OS_LOG_TYPE_ERROR, "Malformed enhanced differential privacy metadata; %@ not found.", &v2, 0xCu);
}

+ (void)verifyEnhancedDPParamsForKey:(uint64_t)a1 withMetadata:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22622D000, a2, OS_LOG_TYPE_ERROR, "Malformed enhanced differential privacy parameters. %@ not found.", &v2, 0xCu);
}

@end