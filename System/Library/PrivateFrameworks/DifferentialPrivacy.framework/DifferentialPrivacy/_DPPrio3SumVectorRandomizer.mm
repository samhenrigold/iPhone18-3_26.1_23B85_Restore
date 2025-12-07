@interface _DPPrio3SumVectorRandomizer
+ (id)randomizerWithEpsilon:(double)epsilon parameters:(id)parameters;
- (BOOL)addNoiseToData:(id)data budgetAuditor:(id)auditor error:(id *)error;
- (_DPPrio3SumVectorRandomizer)initWithEpsilon:(double)epsilon parameters:(id)parameters;
- (id)randomizeBitValue:(id)value budgetAuditor:(id)auditor metadata:(id)metadata error:(id *)error;
- (id)randomizeBitValues:(id)values metadata:(id)metadata forKey:(id)key;
- (id)randomizeBitVectors:(id)vectors metadata:(id)metadata forKey:(id)key;
- (id)randomizeVector:(id)vector budgetAuditor:(id)auditor error:(id *)error;
- (id)recordWithShardResult:(id)result metadata:(id)metadata key:(id)key;
- (id)shardWithBudgetAuditor:(id)auditor data:(id)data error:(id *)error;
@end

@implementation _DPPrio3SumVectorRandomizer

- (_DPPrio3SumVectorRandomizer)initWithEpsilon:(double)epsilon parameters:(id)parameters
{
  parametersCopy = parameters;
  v8 = parametersCopy;
  if (epsilon >= 0.0 && epsilon <= 16.0)
  {
    v10 = [parametersCopy objectForKeyedSubscript:@"Prio3SumVectorBitWidth"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v10 integerValue]!= 1)
    {
      v19 = +[_DPLog framework];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [_DPPrio3SumVectorRandomizer initWithEpsilon:parameters:];
      }

      selfCopy = 0;
      goto LABEL_27;
    }

    v19 = [v8 objectForKeyedSubscript:@"VDAFNumOfProofs"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [_DPPrio3SumVectorShim isValidNumOfProofs:[v19 integerValue]])
    {
      v20 = [v8 objectForKeyedSubscript:@"VDAFType"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [_DPPrio3SumVectorShim isValidVDAFType:[v20 unsignedIntValue]])
      {
        v27.receiver = self;
        v27.super_class = _DPPrio3SumVectorRandomizer;
        v21 = [(_DPPrio3SumVectorRandomizer *)&v27 init];
        v22 = v21;
        if (v21)
        {
          v21->_defaultLocalEpsilon = epsilon;
          objc_storeStrong(&v21->_plistParameters, parameters);
          v23 = [[_DPPrio3SumVectorParameter alloc] initWithBitWidth:[v10 integerValue] numOfAggregators:2 numOfProofs:[v19 integerValue] vdafType:[v20 unsignedIntValue]];
          parameters = v22->_parameters;
          v22->_parameters = v23;
        }

        self = v22;
        selfCopy = self;
        goto LABEL_26;
      }

      v25 = +[_DPLog framework];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [_DPPrio3SumVectorRandomizer initWithEpsilon:parameters:];
      }
    }

    else
    {
      v20 = +[_DPLog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [_DPPrio3SumVectorRandomizer initWithEpsilon:parameters:];
      }
    }

    selfCopy = 0;
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  v10 = +[_DPLog framework];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(_DPPrio3SumVectorRandomizer *)v10 initWithEpsilon:v11 parameters:v12, v13, v14, v15, v16, v17, epsilon];
  }

  selfCopy = 0;
LABEL_28:

  return selfCopy;
}

+ (id)randomizerWithEpsilon:(double)epsilon parameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = [[self alloc] initWithEpsilon:parametersCopy parameters:epsilon];

  return v7;
}

- (BOOL)addNoiseToData:(id)data budgetAuditor:(id)auditor error:(id *)error
{
  dataCopy = data;
  auditorCopy = auditor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = +[_DPLog framework];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_DPPrio3SumVectorRandomizer addNoiseToData:v9 budgetAuditor:? error:?];
    }

    LOBYTE(error) = 1;
  }

  else
  {
    v10 = [auditorCopy getSymmetricRAPPORLocalEpsilonWithError:error];
    v11 = v10;
    if (v10)
    {
      [v10 doubleValue];
      v13 = [_DPBiasedCoin coinWithBias:(1.0 / (exp(v12) + 1.0))];
      mutableBytes = [dataCopy mutableBytes];
      if ([dataCopy length])
      {
        v15 = 0;
        while (*(mutableBytes + v15) < 2u)
        {
          if ([v13 flip])
          {
            *(mutableBytes + v15) = *(mutableBytes + v15) == 0;
          }

          if (++v15 >= [dataCopy length])
          {
            goto LABEL_12;
          }
        }

        if (error)
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid value (%d) at position %zu", *(mutableBytes + v15), v15];
          *error = _DPVDAFError(3, v16);

          LOBYTE(error) = 0;
        }
      }

      else
      {
LABEL_12:
        LOBYTE(error) = 1;
      }
    }

    else
    {
      LOBYTE(error) = 0;
    }
  }

  return error;
}

- (id)shardWithBudgetAuditor:(id)auditor data:(id)data error:(id *)error
{
  dataCopy = data;
  if ([(_DPPrio3SumVectorRandomizer *)self addNoiseToData:dataCopy budgetAuditor:auditor error:error])
  {
    parameters = [(_DPPrio3SumVectorRandomizer *)self parameters];
    v10 = [_DPPrio3SumVectorShim shard:dataCopy parameter:parameters error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)randomizeBitValue:(id)value budgetAuditor:(id)auditor metadata:(id)metadata error:(id *)error
{
  valueCopy = value;
  auditorCopy = auditor;
  v12 = [_DPRandomizerUtils dimensionFromMetadata:metadata];
  v13 = v12;
  if (!v12)
  {
    if (error)
    {
      _DPVDAFError(1, @"Fail to fetch dimension");
      *error = v17 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  unsignedLongValue = [v12 unsignedLongValue];
  if (unsignedLongValue <= 0x186A0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && unsignedLongValue > [valueCopy unsignedLongValue])
    {
      v18 = [MEMORY[0x277CBEB28] dataWithLength:unsignedLongValue];
      mutableBytes = [v18 mutableBytes];
      *(mutableBytes + [valueCopy unsignedLongValue]) = 1;
      v17 = [(_DPPrio3SumVectorRandomizer *)self shardWithBudgetAuditor:auditorCopy data:v18 error:error];

      goto LABEL_14;
    }

    if (error)
    {
      100000 = [MEMORY[0x277CCACA8] stringWithFormat:@"bitValue=(%@) >= dimension=(%@)", valueCopy, v13];
      v16 = 2;
      goto LABEL_12;
    }
  }

  else if (error)
  {
    100000 = [MEMORY[0x277CCACA8] stringWithFormat:@"dimension=(%lu) should be less than or equal to %zu", unsignedLongValue, 100000];
    v16 = 4;
LABEL_12:
    *error = _DPVDAFError(v16, 100000);
  }

LABEL_13:
  v17 = 0;
LABEL_14:

  return v17;
}

- (id)randomizeVector:(id)vector budgetAuditor:(id)auditor error:(id *)error
{
  vectorCopy = vector;
  auditorCopy = auditor;
  if (!vectorCopy)
  {
    if (error)
    {
      _DPVDAFError(4, @"vector must not be nil");
      *error = v11 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ([vectorCopy length] > 0x186A0)
  {
    if (error)
    {
      100000 = [MEMORY[0x277CCACA8] stringWithFormat:@"dimension=(%lu) should be less than or equal to %zu", objc_msgSend(vectorCopy, "length"), 100000];
      *error = _DPVDAFError(4, 100000);
    }

LABEL_7:
    v11 = 0;
    goto LABEL_9;
  }

  v12 = [MEMORY[0x277CBEB28] dataWithData:vectorCopy];
  v11 = [(_DPPrio3SumVectorRandomizer *)self shardWithBudgetAuditor:auditorCopy data:v12 error:error];

LABEL_9:

  return v11;
}

- (id)recordWithShardResult:(id)result metadata:(id)metadata key:(id)key
{
  v32[3] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEAA8];
  keyCopy = key;
  metadataCopy = metadata;
  resultCopy = result;
  v12 = [v8 dateWithTimeIntervalSinceNow:0.0];
  [v12 timeIntervalSinceReferenceDate];
  v14 = v13;

  v15 = [metadataCopy mutableCopy];
  v31[0] = @"Prio3SumVectorChunkLength";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(resultCopy, "chunkLength")}];
  v32[0] = v16;
  v31[1] = @"Nonce";
  nonce = [resultCopy nonce];
  v32[1] = nonce;
  v31[2] = @"PublicShare";
  publicShare = [resultCopy publicShare];
  v32[2] = publicShare;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  [v15 setObject:v19 forKeyedSubscript:@"VDAF"];

  v20 = [_DPKeyProperties privatizationAlgorithmStringFor:16];
  [v15 setObject:v20 forKeyedSubscript:@"PrivatizationAlgorithmCache"];

  plistParameters = [(_DPPrio3SumVectorRandomizer *)self plistParameters];
  v22 = [plistParameters copy];
  [v15 setObject:v22 forKeyedSubscript:@"PrivatizationAlgorithmParametersCache"];

  v23 = [_DPPrioRecord alloc];
  inputShares = [resultCopy inputShares];
  v25 = [inputShares objectAtIndexedSubscript:0];
  inputShares2 = [resultCopy inputShares];
  v27 = [inputShares2 objectAtIndexedSubscript:1];
  dimension = [resultCopy dimension];

  v29 = [(_DPPrioRecord *)v23 initWithKey:keyCopy share1:v25 share2:v27 dimension:dimension metadata:v15 creationDate:0 submitted:v14 objectId:0];

  return v29;
}

- (id)randomizeBitValues:(id)values metadata:(id)metadata forKey:(id)key
{
  v46 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  metadataCopy = metadata;
  keyCopy = key;
  plistParameters = [(_DPPrio3SumVectorRandomizer *)self plistParameters];
  v40 = 0;
  v11 = [_DPBudgetAuditor budgetAuditorFromMetadata:metadataCopy plistParameters:plistParameters error:&v40];
  v12 = v40;

  if (v11)
  {
    v39 = v12;
    v13 = [v11 auditedMetadataWithError:&v39];
    v14 = v39;

    if (v13)
    {
      v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(valuesCopy, "count")}];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = valuesCopy;
      v15 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v15)
      {
        v16 = v15;
        v27 = metadataCopy;
        v28 = valuesCopy;
        v32 = *v36;
        v33 = v11;
        do
        {
          v17 = 0;
          v18 = v14;
          do
          {
            if (*v36 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v35 + 1) + 8 * v17);
            v20 = [_DPLog framework:v27];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v42 = v19;
              _os_log_debug_impl(&dword_22622D000, v20, OS_LOG_TYPE_DEBUG, "Start to privatize bitValue=%@", buf, 0xCu);
            }

            v21 = objc_autoreleasePoolPush();
            v34 = v18;
            v22 = [(_DPPrio3SumVectorRandomizer *)self randomizeBitValue:v19 budgetAuditor:v33 metadata:v13 error:&v34];
            v14 = v34;

            if (v22)
            {
              v23 = [(_DPPrio3SumVectorRandomizer *)self recordWithShardResult:v22 metadata:v13 key:keyCopy];
              if (v23)
              {
                [v29 addObject:v23];
              }

              objc_autoreleasePoolPop(v21);
              v24 = +[_DPLog framework];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v42 = v19;
                _os_log_debug_impl(&dword_22622D000, v24, OS_LOG_TYPE_DEBUG, "Done to privatize bitValue=%@", buf, 0xCu);
              }
            }

            else
            {
              v25 = +[_DPLog framework];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v42 = v19;
                v43 = 2112;
                v44 = v14;
                _os_log_error_impl(&dword_22622D000, v25, OS_LOG_TYPE_ERROR, "Fail to privatize bitValue=%@ with error=%@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v21);
            }

            ++v17;
            v18 = v14;
          }

          while (v16 != v17);
          v16 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
        }

        while (v16);
        metadataCopy = v27;
        valuesCopy = v28;
        v11 = v33;
      }
    }

    else
    {
      obj = +[_DPLog framework];
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        [_DPPrio3SumVectorRandomizer randomizeBitValues:metadata:forKey:];
      }

      v29 = 0;
    }

    v12 = v14;
  }

  else
  {
    v13 = +[_DPLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_DPPrio3SumVectorRandomizer randomizeBitValues:metadata:forKey:];
    }

    v29 = 0;
  }

  return v29;
}

- (id)randomizeBitVectors:(id)vectors metadata:(id)metadata forKey:(id)key
{
  v43 = *MEMORY[0x277D85DE8];
  vectorsCopy = vectors;
  metadataCopy = metadata;
  keyCopy = key;
  plistParameters = [(_DPPrio3SumVectorRandomizer *)self plistParameters];
  v37 = 0;
  v11 = [_DPBudgetAuditor budgetAuditorFromMetadata:metadataCopy plistParameters:plistParameters error:&v37];
  v12 = v37;

  if (v11)
  {
    v36 = v12;
    v13 = [v11 auditedMetadataWithError:&v36];
    v14 = v36;

    v30 = v13;
    if (v13)
    {
      v27 = [MEMORY[0x277CBEBF8] mutableCopy];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = vectorsCopy;
      v15 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (v15)
      {
        v16 = v15;
        v25 = metadataCopy;
        v26 = vectorsCopy;
        v17 = *v33;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            v19 = v14;
            if (*v33 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v32 + 1) + 8 * i);
            v21 = objc_autoreleasePoolPush();
            v31 = v14;
            v22 = [(_DPPrio3SumVectorRandomizer *)self randomizeVector:v20 budgetAuditor:v11 error:&v31];
            v14 = v31;

            if (v22)
            {
              v23 = [(_DPPrio3SumVectorRandomizer *)self recordWithShardResult:v22 metadata:v30 key:keyCopy];
              if (v23)
              {
                [v27 addObject:v23];
              }
            }

            else
            {
              v23 = +[_DPLog framework];
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v39 = v20;
                v40 = 2112;
                v41 = v14;
                _os_log_error_impl(&dword_22622D000, v23, OS_LOG_TYPE_ERROR, "Fail to privatize vector=%@ with error=%@", buf, 0x16u);
              }
            }

            objc_autoreleasePoolPop(v21);
          }

          v16 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
        }

        while (v16);
        metadataCopy = v25;
        vectorsCopy = v26;
      }
    }

    else
    {
      obj = +[_DPLog framework];
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        [_DPPrio3SumVectorRandomizer randomizeBitValues:metadata:forKey:];
      }

      v27 = 0;
    }

    v12 = v14;
  }

  else
  {
    v30 = +[_DPLog framework];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [_DPPrio3SumVectorRandomizer randomizeBitValues:metadata:forKey:];
    }

    v27 = 0;
  }

  return v27;
}

- (void)initWithEpsilon:(uint64_t)a3 parameters:(uint64_t)a4 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  LODWORD(v9) = 134217984;
  *(&v9 + 4) = a9;
  OUTLINED_FUNCTION_0(&dword_22622D000, a1, a3, "Invalid epsilon = %f.", a5, a6, a7, a8, v9, DWORD2(v9));
}

@end