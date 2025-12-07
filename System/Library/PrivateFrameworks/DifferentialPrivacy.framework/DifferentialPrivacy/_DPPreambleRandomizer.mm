@interface _DPPreambleRandomizer
+ (id)randomizerWithMaxCentralEpsilon:(double)epsilon parameters:(id)parameters;
- (_DPPreambleRandomizer)initWithMaxCentralEpsilon:(double)epsilon parameter:(id)parameter;
- (id)randomizeBitValue:(id)value metadata:(id)metadata error:(id *)error;
- (id)randomizeBitValues:(id)values metadata:(id)metadata forKey:(id)key;
- (id)randomizeBitVectors:(id)vectors metadata:(id)metadata forKey:(id)key;
- (id)recordWithShardResult:(id)result metadata:(id)metadata key:(id)key;
@end

@implementation _DPPreambleRandomizer

- (_DPPreambleRandomizer)initWithMaxCentralEpsilon:(double)epsilon parameter:(id)parameter
{
  parameterCopy = parameter;
  v12.receiver = self;
  v12.super_class = _DPPreambleRandomizer;
  v7 = [(_DPPreambleRandomizer *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_maxCentralEpsilon = epsilon;
    v9 = [parameterCopy copy];
    plistParameters = v8->_plistParameters;
    v8->_plistParameters = v9;
  }

  return v8;
}

+ (id)randomizerWithMaxCentralEpsilon:(double)epsilon parameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = [[self alloc] initWithMaxCentralEpsilon:parametersCopy parameter:epsilon];

  return v7;
}

- (id)recordWithShardResult:(id)result metadata:(id)metadata key:(id)key
{
  v41[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEAA8];
  keyCopy = key;
  metadataCopy = metadata;
  resultCopy = result;
  v11 = [v8 dateWithTimeIntervalSinceNow:0.0];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  v14 = [metadataCopy mutableCopy];
  v15 = [metadataCopy objectForKeyedSubscript:@"DediscoTaskConfig"];

  v16 = [v15 mutableCopy];
  v17 = [v16 objectForKeyedSubscript:@"DPConfig"];
  v18 = [v17 mutableCopy];

  v19 = MEMORY[0x277CCABB0];
  [resultCopy cohortSigma];
  v20 = [v19 numberWithDouble:?];
  [v18 setObject:v20 forKeyedSubscript:@"CohortSigma"];

  v21 = MEMORY[0x277CCABB0];
  [resultCopy sigmaLocal];
  v22 = [v21 numberWithDouble:?];
  [v18 setObject:v22 forKeyedSubscript:@"SigmaLocal"];

  v23 = MEMORY[0x277CCABB0];
  [resultCopy scalingFactor];
  v24 = [v23 numberWithDouble:?];
  [v18 setObject:v24 forKeyedSubscript:@"PreambleScalingFactor"];

  [v18 removeObjectForKey:@"PreambleParameters"];
  [v16 setObject:v18 forKeyedSubscript:@"DPConfig"];
  [v14 setObject:v16 forKeyedSubscript:@"DediscoTaskConfig"];
  v40[0] = @"Nonce";
  nonce = [resultCopy nonce];
  v41[0] = nonce;
  v40[1] = @"PublicShare";
  publicShare = [resultCopy publicShare];
  v41[1] = publicShare;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
  [v14 setObject:v27 forKeyedSubscript:@"VDAF"];

  v28 = [_DPKeyProperties privatizationAlgorithmStringFor:20];
  [v14 setObject:v28 forKeyedSubscript:@"PrivatizationAlgorithmCache"];

  plistParameters = [(_DPPreambleRandomizer *)self plistParameters];
  v30 = [plistParameters copy];
  [v14 setObject:v30 forKeyedSubscript:@"PrivatizationAlgorithmParametersCache"];

  v31 = [_DPPrioRecord alloc];
  inputShares = [resultCopy inputShares];
  v33 = [inputShares objectAtIndexedSubscript:0];
  inputShares2 = [resultCopy inputShares];
  v35 = [inputShares2 objectAtIndexedSubscript:1];
  dimension = [resultCopy dimension];

  v37 = [(_DPPrioRecord *)v31 initWithKey:keyCopy share1:v33 share2:v35 dimension:dimension metadata:v14 creationDate:0 submitted:v13 objectId:0];

  return v37;
}

- (id)randomizeBitValue:(id)value metadata:(id)metadata error:(id *)error
{
  valueCopy = value;
  metadataCopy = metadata;
  v9 = [_DPRandomizerUtils dimensionFromMetadata:metadataCopy];
  v10 = v9;
  if (!v9)
  {
    if (error)
    {
      _DPVDAFError(1, @"Fail to fetch dimension");
      *error = v13 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  unsignedLongValue = [v9 unsignedLongValue];
  if (unsignedLongValue > 0x800000)
  {
    if (error)
    {
      0x800000 = [MEMORY[0x277CCACA8] stringWithFormat:@"dimension=(%lu) should be less than or equal to %zu", unsignedLongValue, 0x800000];
      *error = _DPVDAFError(4, 0x800000);
    }

LABEL_7:
    v13 = 0;
    goto LABEL_9;
  }

  v13 = +[_DPPreambleShim shard:metaData:dimension:error:](_DPPreambleShim, "shard:metaData:dimension:error:", valueCopy, metadataCopy, [v10 intValue], error);
LABEL_9:

  return v13;
}

- (id)randomizeBitValues:(id)values metadata:(id)metadata forKey:(id)key
{
  v41 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  metadataCopy = metadata;
  keyCopy = key;
  v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(valuesCopy, "count")}];
  v10 = +[_DPLog framework];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v37 = [valuesCopy count];
    _os_log_impl(&dword_22622D000, v10, OS_LOG_TYPE_INFO, "Attempting to privatize with Preamble for %lu one-hot indices", buf, 0xCu);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = valuesCopy;
  v11 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = 0;
    v15 = 0;
    v16 = *v33;
    *&v12 = 138412546;
    v27 = v12;
    do
    {
      v17 = 0;
      v18 = v15;
      do
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v32 + 1) + 8 * v17);
        v20 = +[_DPLog framework];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218242;
          v37 = v14;
          v38 = 2112;
          v39 = keyCopy;
          _os_log_debug_impl(&dword_22622D000, v20, OS_LOG_TYPE_DEBUG, "Privatizing with Preamble for vector %lu for %@", buf, 0x16u);
        }

        v21 = objc_autoreleasePoolPush();
        v31 = v18;
        v22 = [(_DPPreambleRandomizer *)self randomizeBitValue:v19 metadata:metadataCopy error:&v31];
        v15 = v31;

        if (v22)
        {
          v23 = [(_DPPreambleRandomizer *)self recordWithShardResult:v22 metadata:metadataCopy key:keyCopy];
          if (v23)
          {
            [v28 addObject:v23];
          }

          objc_autoreleasePoolPop(v21);
          v24 = +[_DPLog framework];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v37 = keyCopy;
            _os_log_debug_impl(&dword_22622D000, v24, OS_LOG_TYPE_DEBUG, "Successfully privatized with Preamble for %@", buf, 0xCu);
          }
        }

        else
        {
          v25 = +[_DPLog framework];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = v27;
            v37 = keyCopy;
            v38 = 2112;
            v39 = v15;
            _os_log_error_impl(&dword_22622D000, v25, OS_LOG_TYPE_ERROR, "Fail to privatize one-hot with Preamble for %@ error=%@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v21);
        }

        ++v17;
        ++v14;
        v18 = v15;
      }

      while (v13 != v17);
      v13 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v13);
  }

  return v28;
}

- (id)randomizeBitVectors:(id)vectors metadata:(id)metadata forKey:(id)key
{
  v26 = *MEMORY[0x277D85DE8];
  vectorsCopy = vectors;
  metadataCopy = metadata;
  keyCopy = key;
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(vectorsCopy, "count")}];
  v12 = +[_DPLog framework];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v25 = [vectorsCopy count];
    _os_log_impl(&dword_22622D000, v12, OS_LOG_TYPE_INFO, "Attempting to privatize with Preamble for %lu raw one-hot vectors", buf, 0xCu);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61___DPPreambleRandomizer_randomizeBitVectors_metadata_forKey___block_invoke;
  v19[3] = &unk_27858B2B0;
  v20 = keyCopy;
  v21 = metadataCopy;
  selfCopy = self;
  v13 = v11;
  v23 = v13;
  v14 = metadataCopy;
  v15 = keyCopy;
  [vectorsCopy enumerateObjectsUsingBlock:v19];
  v16 = v23;
  v17 = v13;

  return v13;
}

@end