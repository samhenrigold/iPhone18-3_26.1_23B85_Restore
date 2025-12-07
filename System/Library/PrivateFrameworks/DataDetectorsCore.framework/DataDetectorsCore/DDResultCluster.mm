@interface DDResultCluster
+ (id)clustersWithDDResults:(id)results mlResults:(id)mlResults;
- (__DDResult)resolvedDDResultFromOriginalQuery:(__DDScanQuery *)query mlSupportedTypes:(__CFArray *)types;
- (void)addDDResult:(__DDResult *)result;
- (void)setMLResult:(id)result;
@end

@implementation DDResultCluster

- (__DDResult)resolvedDDResultFromOriginalQuery:(__DDScanQuery *)query mlSupportedTypes:(__CFArray *)types
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = [(NSMutableArray *)self->_DDResults count];
  selfCopy = self;
  MLResult = self->_MLResult;
  if (v7)
  {
    if (MLResult)
    {
      queryCopy = query;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = self->_DDResults;
      v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = 0;
        v13 = *v42;
        v14 = -1;
        v15 = -1;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v42 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v41 + 1) + 8 * i);
            classification = [(DDMLResult *)selfCopy->_MLResult classification];
            if (classification == 10 || DDMLClassificationForType(v17) != classification)
            {
              if (!DDResultTypeIsMLSupported(v17, types) && *(v17 + 48) > v14)
              {
                v14 = *(v17 + 48);
                v11 = v17;
              }
            }

            else if (*(v17 + 48) > v15)
            {
              v15 = *(v17 + 48);
              v12 = v17;
            }
          }

          v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v10);
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      if (v12)
      {
        v23 = v12;
      }

      else
      {
        v23 = v11;
      }

      query = queryCopy;
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v20 = self->_DDResults;
      v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = 0;
        v24 = *v38;
        v25 = -1;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(v20);
            }

            v27 = *(*(&v37 + 1) + 8 * j);
            if (!DDResultTypeIsMLSupported(v27, types) && *(v27 + 48) > v25)
            {
              v25 = *(v27 + 48);
              v23 = v27;
            }
          }

          v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v22);
      }

      else
      {
        v23 = 0;
      }
    }

    v28 = selfCopy->_MLResult;
    if (!v23)
    {
      return [(DDMLResult *)v28 ddResultFromQuery:query];
    }

    if (v28)
    {
      if (!CFStringHasSuffix(v23->var5, @"MLCandidate"))
      {
        var0 = v23->var2.var0;
        var1 = v23->var2.var1;
        v31 = var0 - [(DDMLResult *)selfCopy->_MLResult range];
        range = [(DDMLResult *)selfCopy->_MLResult range];
        [(DDMLResult *)selfCopy->_MLResult range];
        DDResultExpandRange(v23, query, v31, range - (var0 + var1) + v33);
        return v23;
      }

      v28 = selfCopy->_MLResult;
      return [(DDMLResult *)v28 ddResultFromQuery:query];
    }

    if ([DDMLResult shouldKeepResultOfType:v23->var5])
    {
      return v23;
    }

    return 0;
  }

  if (!MLResult)
  {
    return 0;
  }

  return [(DDMLResult *)MLResult ddResultFromQuery:query];
}

- (void)setMLResult:(id)result
{
  resultCopy = result;
  if (self->_DDRange.length < 1)
  {
    goto LABEL_8;
  }

  range = [resultCopy range];
  location = self->_DDRange.location;
  if (location <= range)
  {
    v8 = range;
  }

  else
  {
    v8 = self->_DDRange.location;
  }

  v9 = self->_DDRange.length + location;
  v10 = range + v6;
  v11 = resultCopy;
  if (v9 >= v10)
  {
    v9 = v10;
  }

  if (v8 < v9)
  {
LABEL_8:
    objc_storeStrong(&self->_MLResult, result);
    v11 = resultCopy;
  }
}

- (void)addDDResult:(__DDResult *)result
{
  if (self->_DDResults)
  {
    if (self->_DDRange.location == DDResultGetRangeForURLification(result) && self->_DDRange.length == v5)
    {
      DDResults = self->_DDResults;

      [(NSMutableArray *)DDResults addObject:result];
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithObject:result];
    v8 = self->_DDResults;
    self->_DDResults = v7;

    self->_DDRange.location = DDResultGetRangeForURLification(result);
    self->_DDRange.length = v9;
  }
}

+ (id)clustersWithDDResults:(id)results mlResults:(id)mlResults
{
  v49 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  mlResultsCopy = mlResults;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = resultsCopy;
  v35 = [resultsCopy count];
  v30 = mlResultsCopy;
  v34 = [mlResultsCopy count];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = 0;
  v41 = 0;
  v42 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v38 = 0x7FFFFFFFFFFFFFFFuLL;
  v39 = 0x7FFFFFFFFFFFFFFFLL;
  range = 0x7FFFFFFFFFFFFFFFLL;
  v32 = v8;
  v33 = v7;
  while (1)
  {
    if (v13)
    {
      goto LABEL_5;
    }

    if (v12 < v35)
    {
      v13 = [v31 objectAtIndexedSubscript:v12];

      v39 = *(v13 + 32);
      v41 = *(v13 + 40);
      ++v12;
LABEL_5:
      if (!v10)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }

    v13 = 0;
    if (!v10)
    {
LABEL_6:
      if (v11 >= v34)
      {
        v10 = 0;
      }

      else
      {
        v10 = [v30 objectAtIndexedSubscript:v11];
        range = [v10 range];
        v42 = v14;
        ++v11;
      }
    }

LABEL_11:
    v15 = v39;
    if (v10)
    {
      v16 = v39 >= range;
    }

    else
    {
      v16 = 0;
    }

    v17 = !v16;
    if (!v17)
    {
      v15 = range;
    }

    v18 = v41;
    v19 = v42;
    if (!v17)
    {
      v18 = v42;
    }

    v20 = 0x7FFFFFFFFFFFFFFFLL;
    if (v10)
    {
      v20 = range;
    }

    else
    {
      v19 = 0;
    }

    if (!v13)
    {
      v17 = 0;
    }

    v43 = v17;
    if (v13)
    {
      v21 = v15;
    }

    else
    {
      v21 = v20;
    }

    if (v13)
    {
      v22 = v18;
    }

    else
    {
      v22 = v19;
    }

    if (v9)
    {
      v50.location = v21;
      v50.length = v22;
      if (!NSIntersectionRange(v38, v50).length)
      {
        v36 = v12;
        v37 = v11;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v23 = v8;
        v24 = [v23 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v45;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v45 != v26)
              {
                objc_enumerationMutation(v23);
              }

              [(DDResultCluster *)v9 setMLResult:*(*(&v44 + 1) + 8 * i)];
            }

            v25 = [v23 countByEnumeratingWithState:&v44 objects:v48 count:16];
          }

          while (v25);
        }

        [v23 removeAllObjects];
        v7 = v33;
        [v33 addObject:v9];

        v9 = 0;
        v8 = v32;
        v12 = v36;
        v11 = v37;
      }
    }

    if (!(v13 | v10))
    {
      break;
    }

    if (!v9)
    {
      v9 = objc_alloc_init(DDResultCluster);
      v38.location = v21;
      v38.length = v22;
    }

    if (v43)
    {
      [(DDResultCluster *)v9 addDDResult:v13];
      v13 = 0;
    }

    else
    {
      [v8 addObject:v10];

      v10 = 0;
    }
  }

  v28 = v7;

  return v7;
}

@end