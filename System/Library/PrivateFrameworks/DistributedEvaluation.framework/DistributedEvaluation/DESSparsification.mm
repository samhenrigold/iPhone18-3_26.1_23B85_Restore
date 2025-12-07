@interface DESSparsification
- (BOOL)reportErrorWithErrorStr:(id)str error:(id *)error;
- (id)splitResultToChunksWithResult:(id)result recipe:(id)recipe baseKey:(id)key error:(id *)error;
@end

@implementation DESSparsification

- (BOOL)reportErrorWithErrorStr:(id)str error:(id *)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  strCopy = str;
  v6 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [DESSparsification reportErrorWithErrorStr:strCopy error:v6];
  }

  if (error)
  {
    v7 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = strCopy;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [v7 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2008 userInfo:v8];
  }

  return error != 0;
}

- (id)splitResultToChunksWithResult:(id)result recipe:(id)recipe baseKey:(id)key error:(id *)error
{
  v115 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  recipeCopy = recipe;
  keyCopy = key;
  v109 = 0.0;
  useAdaptiveClipping = [recipeCopy useAdaptiveClipping];
  if (useAdaptiveClipping)
  {
    maxNorm = [recipeCopy maxNorm];
    [maxNorm doubleValue];
    v16 = v15;

    recipeUserInfo = [recipeCopy recipeUserInfo];
    v18 = [recipeUserInfo objectForKeyedSubscript:@"ClippingIndicatorScale"];
    [v18 doubleValue];
    v20 = v19;

    *&v21 = v16;
    *&v22 = v20;
    if (![DESAdaptiveClipping computeClippingIndicator:resultCopy clippingBound:&v109 scale:v21 clippingIndicator:v22])
    {
      v63 = MEMORY[0x277CCACA8];
      recipeID = [recipeCopy recipeID];
      v40 = [v63 stringWithFormat:@"Recipe %@ has %@=%f but failed to compute the adaptive clipping indicator", recipeID, @"ClippingIndicatorScale", *&v20];

      [(DESSparsification *)self reportErrorWithErrorStr:v40 error:error];
      v62 = 0;
      goto LABEL_28;
    }

    v23 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      recipeID2 = [recipeCopy recipeID];
      *buf = 138412546;
      v112 = recipeID2;
      v113 = 2048;
      v114 = v109;
      _os_log_impl(&dword_248FF7000, v23, OS_LOG_TYPE_INFO, "Recipe %@ uses adaptive clipping, indicator=%f", buf, 0x16u);
    }

    v98 = useAdaptiveClipping;
    selfCopy2 = self;
    errorCopy2 = error;
    v25 = resultCopy;

    v26 = 1;
  }

  else
  {
    v98 = 0;
    selfCopy2 = self;
    errorCopy2 = error;
    v25 = resultCopy;
    v26 = 0;
  }

  recipeUserInfo2 = [recipeCopy recipeUserInfo];
  v28 = [recipeUserInfo2 objectForKeyedSubscript:@"sparsification"];
  v29 = [v28 objectForKeyedSubscript:@"chunkClippingBounds"];
  if (!v29)
  {
    goto LABEL_23;
  }

  v30 = v29;
  v103 = keyCopy;
  recipeUserInfo3 = [recipeCopy recipeUserInfo];
  v32 = [recipeUserInfo3 objectForKeyedSubscript:@"sparsification"];
  v33 = [v32 objectForKeyedSubscript:@"numChunks"];
  if (!v33)
  {

    keyCopy = v103;
LABEL_23:

    goto LABEL_24;
  }

  v34 = v33;
  obj = v26;
  [recipeCopy recipeUserInfo];
  v35 = v104 = recipeCopy;
  v36 = [v35 objectForKeyedSubscript:@"sparsification"];
  v37 = [v36 objectForKeyedSubscript:@"sparsificationMapFile"];

  recipeCopy = v104;
  keyCopy = v103;
  if (!v37)
  {
LABEL_24:
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Recipe does not include all keys required for sparsification and chunking. Required keys include %@, %@, %@, %@", @"sparsification", @"chunkClippingBounds", @"numChunks", @"sparsificationMapFile"];
    [(DESSparsification *)selfCopy2 reportErrorWithErrorStr:v40 error:errorCopy2];
    v62 = 0;
    resultCopy = v25;
    goto LABEL_28;
  }

  recipeUserInfo4 = [v104 recipeUserInfo];
  v39 = [recipeUserInfo4 objectForKeyedSubscript:@"sparsification"];
  v40 = [v39 objectForKeyedSubscript:@"chunkClippingBounds"];

  recipeUserInfo5 = [v104 recipeUserInfo];
  v42 = [recipeUserInfo5 objectForKeyedSubscript:@"sparsification"];
  v43 = [v42 objectForKeyedSubscript:@"numChunks"];
  intValue = [v43 intValue];

  v45 = [v40 count];
  resultCopy = v25;
  v46 = [v25 length];
  v47 = &obj[v46 >> 2];
  if (v47 >= intValue && v45 == intValue)
  {
    v48 = v46;
    v94 = &obj[v46 >> 2];
    *__upper_bound = intValue;
    v96 = v40;
    v97 = v25;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    obja = [v104 attachments];
    v49 = [obja countByEnumeratingWithState:&v105 objects:v110 count:16];
    if (v49)
    {
      v50 = v49;
      v92 = v48;
      v93 = v48 >> 2;
      v51 = *v106;
      while (2)
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v106 != v51)
          {
            objc_enumerationMutation(obja);
          }

          v53 = *(*(&v105 + 1) + 8 * i);
          lastPathComponent = [v53 lastPathComponent];
          recipeUserInfo6 = [recipeCopy recipeUserInfo];
          v56 = [recipeUserInfo6 objectForKeyedSubscript:@"sparsification"];
          v57 = [v56 objectForKeyedSubscript:@"sparsificationMapFile"];
          v58 = [lastPathComponent isEqualToString:v57];

          if (v58)
          {
            v66 = +[DESLogging coreChannel];
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
            {
              [DESSparsification splitResultToChunksWithResult:v53 recipe:v66 baseKey:? error:?];
            }

            v67 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v53 options:1 error:errorCopy2];
            v40 = v96;
            resultCopy = v97;
            keyCopy = v103;
            recipeCopy = v104;
            if (v67)
            {
              v61 = v67;

              v68 = [v61 length];
              if (v68 == v94)
              {
                v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
                if (__upper_bound[0])
                {
                  v70 = 1;
                  do
                  {
                    v71 = [MEMORY[0x277CCABB0] numberWithInt:v70];
                    v72 = [keyCopy resultsKeyStringForChunk:v71];

                    v73 = [DESChunk alloc];
                    v74 = [v96 objectAtIndexedSubscript:v70 - 1];
                    v75 = objc_alloc_init(MEMORY[0x277CBEB28]);
                    v76 = [(DESChunk *)v73 initWithKey:v72 clippingBound:v74 data:v75];

                    keyCopy = v103;
                    [v69 addObject:v76];

                    ++v70;
                  }

                  while (v70 != __upper_bound[0] + 1);
                }

                bytes = [v61 bytes];
                resultCopy = v97;
                bytes2 = [v97 bytes];
                v79 = v93;
                v80 = *__upper_bound;
                if (v92 >= 4)
                {
                  v81 = bytes2;
                  do
                  {
                    v83 = *bytes++;
                    v82 = v83;
                    if (v83)
                    {
                      if (v82 > *__upper_bound)
                      {
                        v91 = [MEMORY[0x277CCACA8] stringWithFormat:@"Chunk mapping value = %8u, which is greater than number of chunks = %lu, found in map file", v82, *__upper_bound];
                        [(DESSparsification *)selfCopy2 reportErrorWithErrorStr:v91 error:errorCopy2];

                        v62 = 0;
                        recipeCopy = v104;
                        goto LABEL_49;
                      }

                      v84 = [v69 objectAtIndexedSubscript:(v82 - 1)];
                      data = [v84 data];
                      [data appendBytes:v81 length:4];

                      keyCopy = v103;
                    }

                    v81 += 4;
                    --v79;
                  }

                  while (v79);
                }

                if (v98)
                {
                  v86 = [v69 objectAtIndexedSubscript:{objc_msgSend(v69, "count") - 1}];
                  data2 = [v86 data];
                  [data2 appendBytes:&v109 length:4];
                }

                recipeCopy = v104;
                if (__upper_bound[0] >= 2)
                {
                  do
                  {
                    [v69 exchangeObjectAtIndex:v80 - 1 withObjectAtIndex:arc4random_uniform(v80)];
                    --v80;
                  }

                  while (v80 > 1);
                }

                v62 = v69;
LABEL_49:
              }

              else
              {
                v89 = [MEMORY[0x277CCACA8] stringWithFormat:@"Length of sparsification mapping file does not match number of statistics to be privatised and aggregated: number of statistics = %lu number of byte values in mapping file = %lu", v94, v68];;
                [(DESSparsification *)selfCopy2 reportErrorWithErrorStr:v89 error:errorCopy2];

                v62 = 0;
              }
            }

            else
            {
              if (errorCopy2)
              {
                v88 = *errorCopy2;
              }

              else
              {
                v88 = 0;
              }

              v90 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sparsification map file was not readable: %@", v88];
              [(DESSparsification *)selfCopy2 reportErrorWithErrorStr:v90 error:errorCopy2];

              v62 = 0;
              v61 = obja;
            }

            goto LABEL_27;
          }

          recipeCopy = v104;
        }

        v50 = [obja countByEnumeratingWithState:&v105 objects:v110 count:16];
        if (v50)
        {
          continue;
        }

        break;
      }
    }

    v59 = MEMORY[0x277CCACA8];
    attachments = [recipeCopy attachments];
    v61 = [v59 stringWithFormat:@"Sparsification map file not found in recipe attachments. Recipe attachments = %@", attachments];

    [(DESSparsification *)selfCopy2 reportErrorWithErrorStr:v61 error:errorCopy2];
    v62 = 0;
    v40 = v96;
    resultCopy = v97;
  }

  else
  {
    v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"Incorrect settings for chunking parameters: size of result vector = %lu number of chunks = %lu; number of clipping bounds = %lu", v47, intValue, v45];;
    [(DESSparsification *)selfCopy2 reportErrorWithErrorStr:v61 error:errorCopy2];
    v62 = 0;
  }

  keyCopy = v103;
LABEL_27:

LABEL_28:

  return v62;
}

- (void)reportErrorWithErrorStr:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_248FF7000, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

- (void)splitResultToChunksWithResult:(uint64_t)a1 recipe:(NSObject *)a2 baseKey:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_248FF7000, a2, OS_LOG_TYPE_DEBUG, "Sparsification map file found at: %@", &v2, 0xCu);
}

@end