@interface EKDiff
+ (id)_addChangeStarIfChangedKey:(id)key onObject:(id)object;
+ (id)_keysToIgnoreForComputingDiff;
+ (id)_keysToIgnoreForComputingUIDiff;
+ (id)diffBetweenObject:(id)object andObject:(id)andObject compareUIVisiblePropertiesOnly:(BOOL)only;
+ (id)diffBetweenObject:(id)object andObject:(id)andObject fetchKeysToIgnoreBlock:(id)block;
+ (id)keysToIgnoreForComparingUIVisiblePropertiesOfObject:(id)object andObject:(id)andObject;
+ (void)_addObject:(id)object forKey:(id)key toDiff:(id)diff;
+ (void)_addPaddedHeaderToMutableString:(id)string forKey:(id)key withDepth:(int64_t)depth;
+ (void)_addSummaryWithDepth:(int64_t)depth toMutableString:(id)string forRelationshipMultiValueKeys:(id)keys firstObject:(id)object secondObject:(id)secondObject;
+ (void)_addSummaryWithDepth:(int64_t)depth toMutableString:(id)string forRelationshipSingleValueKeys:(id)keys firstObject:(id)object secondObject:(id)secondObject;
+ (void)_addSummaryWithDepth:(int64_t)depth toMutableString:(id)string forSingleValueKeys:(id)keys firstObject:(id)object secondObject:(id)secondObject;
+ (void)_populateIdentityKeysForDiff:(id)diff keysToIgnore:(id)ignore;
+ (void)_populateImmutableKeysForDiff:(id)diff keysToIgnore:(id)ignore;
+ (void)_populateMultiValueRelationshipKeysForDiff:(id)diff keysToIgnore:(id)ignore fetchKeysToIgnoreBlock:(id)block;
+ (void)_populateSingleValueKeysForDiff:(id)diff keysToIgnore:(id)ignore fetchKeysToIgnoreBlock:(id)block;
+ (void)_populateSingleValueRelationshipKeysForDiff:(id)diff keysToIgnore:(id)ignore fetchKeysToIgnoreBlock:(id)block;
- (EKDiff)initWithFirstObject:(id)object secondObject:(id)secondObject;
- (id)_multiValueModifiedObjectsForKey:(id)key;
- (id)_nonNilObject;
- (id)changeSetForDiff;
- (id)copyOfObject:(id)object alreadyCopiedObjects:(id)objects madeNewCopy:(BOOL *)copy;
- (id)differentKeys;
- (id)summaryDictionary;
- (id)summaryString;
- (void)_summarizeDiffsBetweenFirstObject:(id)object secondObject:(id)secondObject mutableString:(id)string depth:(int64_t)depth;
@end

@implementation EKDiff

- (EKDiff)initWithFirstObject:(id)object secondObject:(id)secondObject
{
  objectCopy = object;
  secondObjectCopy = secondObject;
  v11.receiver = self;
  v11.super_class = EKDiff;
  v8 = [(EKDiff *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(EKDiff *)v8 setFirstObject:objectCopy];
    [(EKDiff *)v9 setSecondObject:secondObjectCopy];
  }

  return v9;
}

- (id)_nonNilObject
{
  firstObject = [(EKDiff *)self firstObject];
  v4 = firstObject;
  if (firstObject)
  {
    secondObject = firstObject;
  }

  else
  {
    secondObject = [(EKDiff *)self secondObject];
  }

  v6 = secondObject;

  return v6;
}

+ (id)keysToIgnoreForComparingUIVisiblePropertiesOfObject:(id)object andObject:(id)andObject
{
  if (object)
  {
    andObjectCopy = object;
  }

  else
  {
    andObjectCopy = andObject;
  }

  v7 = andObjectCopy;
  andObjectCopy2 = andObject;
  objectCopy2 = object;
  knownIdentityKeysForComparison = [objc_opt_class() knownIdentityKeysForComparison];
  v11 = objc_opt_class();

  knownSingleValueKeysToSkipForUIComparison = [v11 knownSingleValueKeysToSkipForUIComparison];
  v13 = [knownIdentityKeysForComparison arrayByAddingObjectsFromArray:knownSingleValueKeysToSkipForUIComparison];

  return v13;
}

+ (id)diffBetweenObject:(id)object andObject:(id)andObject compareUIVisiblePropertiesOnly:(BOOL)only
{
  onlyCopy = only;
  objectCopy = object;
  andObjectCopy = andObject;
  if (onlyCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__EKDiff_diffBetweenObject_andObject_compareUIVisiblePropertiesOnly___block_invoke;
    aBlock[3] = &__block_descriptor_40_e40___NSArray_24__0__EKObject_8__EKObject_16l;
    aBlock[4] = self;
    v10 = _Block_copy(aBlock);
  }

  else
  {
    v10 = 0;
  }

  v11 = [self diffBetweenObject:objectCopy andObject:andObjectCopy fetchKeysToIgnoreBlock:v10];

  return v11;
}

+ (id)diffBetweenObject:(id)object andObject:(id)andObject fetchKeysToIgnoreBlock:(id)block
{
  objectCopy = object;
  andObjectCopy = andObject;
  blockCopy = block;
  v11 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKDiff diffBetweenObject:objectCopy andObject:andObjectCopy fetchKeysToIgnoreBlock:v11];
  }

  if (objectCopy)
  {
    v12 = andObjectCopy == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  v14 = [[EKDiff alloc] initWithFirstObject:objectCopy secondObject:andObjectCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && v13)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      +[EKDiff diffBetweenObject:andObject:fetchKeysToIgnoreBlock:];
    }

    [(EKDiff *)v14 setResult:1];
    goto LABEL_39;
  }

  _keysToIgnoreForComputingDiff = [self _keysToIgnoreForComputingDiff];
  if (blockCopy)
  {
    v16 = blockCopy[2](blockCopy, objectCopy, andObjectCopy);
    if (v16)
    {
      v17 = [_keysToIgnoreForComputingDiff setByAddingObjectsFromArray:v16];

      _keysToIgnoreForComputingDiff = v17;
    }
  }

  [self _populateSingleValueKeysForDiff:v14 keysToIgnore:_keysToIgnoreForComputingDiff fetchKeysToIgnoreBlock:blockCopy];
  [self _populateImmutableKeysForDiff:v14 keysToIgnore:_keysToIgnoreForComputingDiff];
  [self _populateSingleValueRelationshipKeysForDiff:v14 keysToIgnore:_keysToIgnoreForComputingDiff fetchKeysToIgnoreBlock:blockCopy];
  [self _populateMultiValueRelationshipKeysForDiff:v14 keysToIgnore:_keysToIgnoreForComputingDiff fetchKeysToIgnoreBlock:blockCopy];
  differentSingleValueKeys = [(EKDiff *)v14 differentSingleValueKeys];
  if ([differentSingleValueKeys count])
  {

    if (!v13)
    {
      goto LABEL_28;
    }

LABEL_25:
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      +[EKDiff diffBetweenObject:andObject:fetchKeysToIgnoreBlock:];
    }

    [(EKDiff *)v14 setResult:3];
    goto LABEL_28;
  }

  differentRelationshipSingleValueKeys = [(EKDiff *)v14 differentRelationshipSingleValueKeys];
  if (![differentRelationshipSingleValueKeys count])
  {
    differentRelationshipMultiValueKeys = [(EKDiff *)v14 differentRelationshipMultiValueKeys];
    if (![differentRelationshipMultiValueKeys count])
    {
      differentImmutableKeys = [(EKDiff *)v14 differentImmutableKeys];
      if ([differentImmutableKeys count])
      {
        v24 = v13;
      }

      else
      {
        v24 = 0;
      }

      v26 = v24;

      if ((v26 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }
  }

  if (v13)
  {
    goto LABEL_25;
  }

LABEL_28:
  [self _populateIdentityKeysForDiff:v14 keysToIgnore:_keysToIgnoreForComputingDiff];
  differentIdentityKeys = [(EKDiff *)v14 differentIdentityKeys];
  v21 = [differentIdentityKeys count];

  v22 = v13 ^ 1;
  if (!v21)
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      +[EKDiff diffBetweenObject:andObject:fetchKeysToIgnoreBlock:];
    }

    [(EKDiff *)v14 setResult:2];
  }

  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      +[EKDiff diffBetweenObject:andObject:fetchKeysToIgnoreBlock:];
    }

    [(EKDiff *)v14 setResult:4];
  }

LABEL_39:

  return v14;
}

+ (id)_keysToIgnoreForComputingDiff
{
  if (_keysToIgnoreForComputingDiff_onceToken != -1)
  {
    +[EKDiff _keysToIgnoreForComputingDiff];
  }

  v3 = _keysToIgnoreForComputingDiff_keysToIgnore;

  return v3;
}

void __39__EKDiff__keysToIgnoreForComputingDiff__block_invoke()
{
  v6[5] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E6992598];
  v6[0] = *MEMORY[0x1E6992588];
  v6[1] = v1;
  v2 = *MEMORY[0x1E6992918];
  v6[2] = *MEMORY[0x1E6992630];
  v6[3] = v2;
  v6[4] = *MEMORY[0x1E6992AA0];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];
  v4 = [v0 setWithArray:v3];
  v5 = _keysToIgnoreForComputingDiff_keysToIgnore;
  _keysToIgnoreForComputingDiff_keysToIgnore = v4;
}

+ (id)_keysToIgnoreForComputingUIDiff
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__EKDiff__keysToIgnoreForComputingUIDiff__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_keysToIgnoreForComputingUIDiff_onceToken != -1)
  {
    dispatch_once(&_keysToIgnoreForComputingUIDiff_onceToken, block);
  }

  v2 = _keysToIgnoreForComputingUIDiff_keysToIgnore;

  return v2;
}

void __41__EKDiff__keysToIgnoreForComputingUIDiff__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F1B6B170];
  v3 = _keysToIgnoreForComputingUIDiff_keysToIgnore;
  _keysToIgnoreForComputingUIDiff_keysToIgnore = v2;

  v6 = [*(a1 + 32) _keysToIgnoreForComputingDiff];
  v4 = [v6 setByAddingObjectsFromSet:_keysToIgnoreForComputingUIDiff_keysToIgnore];
  v5 = _keysToIgnoreForComputingUIDiff_keysToIgnore;
  _keysToIgnoreForComputingUIDiff_keysToIgnore = v4;
}

+ (void)_populateSingleValueKeysForDiff:(id)diff keysToIgnore:(id)ignore fetchKeysToIgnoreBlock:(id)block
{
  diffCopy = diff;
  ignoreCopy = ignore;
  blockCopy = block;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    +[EKDiff _populateSingleValueKeysForDiff:keysToIgnore:fetchKeysToIgnoreBlock:];
  }

  _nonNilObject = [diffCopy _nonNilObject];
  knownSingleValueKeysForComparison = [objc_opt_class() knownSingleValueKeysForComparison];

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __78__EKDiff__populateSingleValueKeysForDiff_keysToIgnore_fetchKeysToIgnoreBlock___block_invoke;
  v23 = &unk_1E77FDBF0;
  v13 = diffCopy;
  v24 = v13;
  v14 = blockCopy;
  v26 = v14;
  v15 = ignoreCopy;
  v25 = v15;
  selfCopy = self;
  v16 = [knownSingleValueKeysForComparison indexesOfObjectsPassingTest:&v20];
  v17 = [knownSingleValueKeysForComparison objectsAtIndexes:{v16, v20, v21, v22, v23}];

  v18 = [MEMORY[0x1E695DFD8] setWithArray:v17];
  [v13 setDifferentSingleValueKeys:v18];

  v19 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKDiff _populateSingleValueKeysForDiff:v19 keysToIgnore:? fetchKeysToIgnoreBlock:?];
  }
}

uint64_t __78__EKDiff__populateSingleValueKeysForDiff_keysToIgnore_fetchKeysToIgnoreBlock___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _nonNilObject];
  v5 = [objc_opt_class() specialComparisonBlocks];
  v6 = [v5 objectForKeyedSubscript:v3];

  if (*(a1 + 48) && v6)
  {
    v7 = [*(a1 + 32) firstObject];
    v8 = [*(a1 + 32) secondObject];
    v9 = (v6)[2](v6, v7, v8) ^ 1;

LABEL_7:
    goto LABEL_8;
  }

  if (([*(a1 + 40) containsObject:v3] & 1) == 0)
  {
    v7 = [*(a1 + 32) _nonNilObject];
    v10 = objc_opt_class();
    v16[0] = v3;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v12 = [*(a1 + 32) firstObject];
    v13 = [*(a1 + 32) secondObject];
    v14 = [*(a1 + 56) _keysToIgnoreForComputingDiff];
    v9 = [v10 _compareNonRelationshipKeys:v11 forObject:v12 againstObject:v13 propertiesToIgnore:v14] ^ 1;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

+ (void)_populateSingleValueRelationshipKeysForDiff:(id)diff keysToIgnore:(id)ignore fetchKeysToIgnoreBlock:(id)block
{
  v46 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  ignoreCopy = ignore;
  blockCopy = block;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    +[EKDiff _populateSingleValueRelationshipKeysForDiff:keysToIgnore:fetchKeysToIgnoreBlock:];
  }

  _nonNilObject = [diffCopy _nonNilObject];
  knownDerivedAndSingleValueRelationshipKeys = [objc_opt_class() knownDerivedAndSingleValueRelationshipKeys];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = knownDerivedAndSingleValueRelationshipKeys;
  v10 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  v11 = ignoreCopy;
  if (v10)
  {
    v12 = v10;
    v13 = *v42;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        if (([v11 containsObject:v15] & 1) == 0)
        {
          firstObject = [diffCopy firstObject];
          if ([firstObject isPropertyUnavailable:v15])
          {
            secondObject = [diffCopy secondObject];
            v18 = [secondObject isPropertyUnavailable:v15];

            if (v18)
            {
              continue;
            }
          }

          else
          {
          }

          firstObject2 = [diffCopy firstObject];
          v20 = [firstObject2 valueForKey:v15];

          secondObject2 = [diffCopy secondObject];
          v22 = [secondObject2 valueForKey:v15];

          if (v20 | v22)
          {
            if (v20 && v22)
            {
              _keysToIgnoreForComputingDiff = [self _keysToIgnoreForComputingDiff];
              if (blockCopy)
              {
                v24 = blockCopy[2]();
                if (v24)
                {
                  v25 = [_keysToIgnoreForComputingDiff setByAddingObjectsFromArray:v24];

                  _keysToIgnoreForComputingDiff = v25;
                }
              }

              _nonNilObject2 = [diffCopy _nonNilObject];
              v27 = [objc_opt_class() _compareRelationshipObject1:v20 againstRelationshipObject2:v22 propertiesToIgnore:_keysToIgnoreForComputingDiff relationshipObjectKey:v15];

              if ((v27 & 1) == 0)
              {
                v28 = [EKDiff diffBetweenObject:v20 andObject:v22 fetchKeysToIgnoreBlock:blockCopy];
                differentKeys = [v28 differentKeys];
                v35 = [differentKeys count];

                if (v35)
                {
                  [dictionary setObject:v28 forKeyedSubscript:v15];
                }
              }

              v11 = ignoreCopy;
            }

            else
            {
              _keysToIgnoreForComputingDiff = [MEMORY[0x1E695DFB0] null];
              [dictionary setObject:_keysToIgnoreForComputingDiff forKeyedSubscript:v15];
            }
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v12);
  }

  [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
  v31 = v30 = v11;
  [diffCopy setRelationshipSingleValueModifies:v31];

  v32 = MEMORY[0x1E695DFD8];
  allKeys = [dictionary allKeys];
  v34 = [v32 setWithArray:allKeys];
  [diffCopy setDifferentRelationshipSingleValueKeys:v34];
}

+ (void)_populateMultiValueRelationshipKeysForDiff:(id)diff keysToIgnore:(id)ignore fetchKeysToIgnoreBlock:(id)block
{
  v101 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  ignoreCopy = ignore;
  blockCopy = block;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    +[EKDiff _populateMultiValueRelationshipKeysForDiff:keysToIgnore:fetchKeysToIgnoreBlock:];
  }

  _nonNilObject = [diffCopy _nonNilObject];
  knownRelationshipMultiValueKeys = [objc_opt_class() knownRelationshipMultiValueKeys];

  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __89__EKDiff__populateMultiValueRelationshipKeysForDiff_keysToIgnore_fetchKeysToIgnoreBlock___block_invoke;
  v93[3] = &unk_1E77FDC18;
  v60 = ignoreCopy;
  v94 = v60;
  v12 = diffCopy;
  v95 = v12;
  selfCopy = self;
  v13 = [knownRelationshipMultiValueKeys indexesOfObjectsPassingTest:v93];
  v61 = knownRelationshipMultiValueKeys;
  v14 = [knownRelationshipMultiValueKeys objectsAtIndexes:v13];

  v59 = v14;
  v15 = [MEMORY[0x1E695DFD8] setWithArray:v14];
  [v12 setDifferentRelationshipMultiValueKeys:v15];

  v16 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKDiff _populateMultiValueRelationshipKeysForDiff:v16 keysToIgnore:? fetchKeysToIgnoreBlock:?];
  }

  v17 = 0x1E695D000uLL;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = [v12 differentRelationshipMultiValueKeys];
  v70 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
  if (v70)
  {
    v68 = *v90;
    v69 = v12;
    selfCopy2 = self;
    do
    {
      v18 = 0;
      do
      {
        if (*v90 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v71 = v18;
        v19 = *(*(&v89 + 1) + 8 * v18);
        v75 = [MEMORY[0x1E695DFA8] set];
        v76 = [MEMORY[0x1E695DFA8] set];
        dictionary4 = [*(v17 + 3984) dictionary];
        v20 = objc_opt_new();
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        firstObject = [v12 firstObject];
        v72 = v19;
        v22 = [firstObject valueForKey:v19];

        v23 = [v22 countByEnumeratingWithState:&v85 objects:v99 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v86;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v86 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v85 + 1) + 8 * i);
              uniqueIdentifier = [v27 uniqueIdentifier];
              if ([uniqueIdentifier length])
              {
                [v20 setObject:v27 forKeyedSubscript:uniqueIdentifier];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v85 objects:v99 count:16];
          }

          while (v24);
        }

        v29 = objc_opt_new();
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        secondObject = [v12 secondObject];
        v31 = [secondObject valueForKey:v72];

        v32 = [v31 countByEnumeratingWithState:&v81 objects:v98 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v82;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v82 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v81 + 1) + 8 * j);
              uniqueIdentifier2 = [v36 uniqueIdentifier];
              if ([uniqueIdentifier2 length])
              {
                [v29 setObject:v36 forKeyedSubscript:uniqueIdentifier2];
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v81 objects:v98 count:16];
          }

          while (v33);
        }

        v38 = MEMORY[0x1E695DFD8];
        allKeys = [v20 allKeys];
        v40 = [v38 setWithArray:allKeys];
        allKeys2 = [v29 allKeys];
        v42 = [v40 setByAddingObjectsFromArray:allKeys2];

        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v43 = v42;
        v44 = [v43 countByEnumeratingWithState:&v77 objects:v97 count:16];
        v45 = v75;
        if (v44)
        {
          v46 = v44;
          v47 = *v78;
          do
          {
            for (k = 0; k != v46; ++k)
            {
              if (*v78 != v47)
              {
                objc_enumerationMutation(v43);
              }

              v49 = *(*(&v77 + 1) + 8 * k);
              v50 = [v20 objectForKeyedSubscript:v49];
              v51 = [v29 objectForKeyedSubscript:v49];
              v52 = v51;
              if (!(v50 | v51))
              {
                [EKDiff _populateMultiValueRelationshipKeysForDiff:a2 keysToIgnore:selfCopy2 fetchKeysToIgnoreBlock:?];
LABEL_40:
                v54 = v45;
                v55 = v52;
LABEL_41:
                [v54 addObject:v55];
                goto LABEL_42;
              }

              if (!v50)
              {
                goto LABEL_40;
              }

              if (!v51)
              {
                v54 = v76;
                v55 = v50;
                goto LABEL_41;
              }

              if (([v50 isEqual:v51 ignoringProperties:0] & 1) == 0)
              {
                v53 = [EKDiff diffBetweenObject:v50 andObject:v52 fetchKeysToIgnoreBlock:blockCopy];
                [dictionary4 setObject:v53 forKeyedSubscript:v49];

                v45 = v75;
              }

LABEL_42:
            }

            v46 = [v43 countByEnumeratingWithState:&v77 objects:v97 count:16];
          }

          while (v46);
        }

        if ([v45 count])
        {
          [dictionary setObject:v45 forKeyedSubscript:v72];
        }

        if ([v76 count])
        {
          [dictionary2 setObject:v76 forKeyedSubscript:v72];
        }

        if ([dictionary4 count])
        {
          [dictionary3 setObject:dictionary4 forKeyedSubscript:v72];
        }

        v18 = v71 + 1;
        v12 = v69;
        v17 = 0x1E695D000;
      }

      while (v71 + 1 != v70);
      v70 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
    }

    while (v70);
  }

  if ([dictionary count])
  {
    v56 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
    [v12 setRelationshipMultiValueAdds:v56];
  }

  if ([dictionary2 count])
  {
    v57 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary2];
    [v12 setRelationshipMultiValueRemoves:v57];
  }

  if ([dictionary3 count])
  {
    v58 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary3];
    [v12 setRelationshipMultiValueModifies:v58];
  }
}

uint64_t __89__EKDiff__populateMultiValueRelationshipKeysForDiff_keysToIgnore_fetchKeysToIgnoreBlock___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [a1[5] _nonNilObject];
    v6 = objc_opt_class();
    v7 = [a1[5] firstObject];
    v8 = [a1[5] secondObject];
    v9 = [a1[6] _keysToIgnoreForComputingDiff];
    v4 = [v6 _compareMultiValueRelationshipKey:v3 forObject:v7 againstObject:v8 propertiesToIgnore:v9] ^ 1;
  }

  return v4;
}

+ (void)_populateIdentityKeysForDiff:(id)diff keysToIgnore:(id)ignore
{
  diffCopy = diff;
  ignoreCopy = ignore;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    +[EKDiff _populateIdentityKeysForDiff:keysToIgnore:];
  }

  _nonNilObject = [diffCopy _nonNilObject];
  knownIdentityKeysForComparison = [objc_opt_class() knownIdentityKeysForComparison];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__EKDiff__populateIdentityKeysForDiff_keysToIgnore___block_invoke;
  v16[3] = &unk_1E77FDC18;
  v10 = ignoreCopy;
  v17 = v10;
  v11 = diffCopy;
  v18 = v11;
  selfCopy = self;
  v12 = [knownIdentityKeysForComparison indexesOfObjectsPassingTest:v16];
  v13 = [knownIdentityKeysForComparison objectsAtIndexes:v12];

  v14 = [MEMORY[0x1E695DFD8] setWithArray:v13];
  [v11 setDifferentIdentityKeys:v14];

  v15 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKDiff _populateIdentityKeysForDiff:v15 keysToIgnore:?];
  }
}

uint64_t __52__EKDiff__populateIdentityKeysForDiff_keysToIgnore___block_invoke(id *a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([a1[4] containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [a1[5] _nonNilObject];
    v6 = objc_opt_class();
    v12[0] = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v8 = [a1[5] firstObject];
    v9 = [a1[5] secondObject];
    v10 = [a1[6] _keysToIgnoreForComputingDiff];
    v4 = [v6 _compareNonRelationshipKeys:v7 forObject:v8 againstObject:v9 propertiesToIgnore:v10] ^ 1;
  }

  return v4;
}

+ (void)_populateImmutableKeysForDiff:(id)diff keysToIgnore:(id)ignore
{
  diffCopy = diff;
  ignoreCopy = ignore;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    +[EKDiff _populateImmutableKeysForDiff:keysToIgnore:];
  }

  _nonNilObject = [diffCopy _nonNilObject];
  knownImmutableKeys = [objc_opt_class() knownImmutableKeys];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__EKDiff__populateImmutableKeysForDiff_keysToIgnore___block_invoke;
  v16[3] = &unk_1E77FDC18;
  v10 = ignoreCopy;
  v17 = v10;
  v11 = diffCopy;
  v18 = v11;
  selfCopy = self;
  v12 = [knownImmutableKeys indexesOfObjectsPassingTest:v16];
  v13 = [knownImmutableKeys objectsAtIndexes:v12];

  v14 = [MEMORY[0x1E695DFD8] setWithArray:v13];
  [v11 setDifferentImmutableKeys:v14];

  v15 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKDiff _populateImmutableKeysForDiff:v15 keysToIgnore:?];
  }
}

uint64_t __53__EKDiff__populateImmutableKeysForDiff_keysToIgnore___block_invoke(id *a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([a1[4] containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [a1[5] _nonNilObject];
    v6 = objc_opt_class();
    v12[0] = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v8 = [a1[5] firstObject];
    v9 = [a1[5] secondObject];
    v10 = [a1[6] _keysToIgnoreForComputingDiff];
    v4 = [v6 _compareNonRelationshipKeys:v7 forObject:v8 againstObject:v9 propertiesToIgnore:v10] ^ 1;
  }

  return v4;
}

- (id)_multiValueModifiedObjectsForKey:(id)key
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  relationshipMultiValueModifies = [(EKDiff *)self relationshipMultiValueModifies];
  v6 = [relationshipMultiValueModifies objectForKeyedSubscript:keyCopy];

  v7 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [v6 allValues];
  v9 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        secondObject = [*(*(&v15 + 1) + 8 * i) secondObject];
        [v7 addObject:secondObject];
      }

      v10 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)differentKeys
{
  v3 = [MEMORY[0x1E695DFA8] set];
  differentIdentityKeys = [(EKDiff *)self differentIdentityKeys];
  [v3 unionSet:differentIdentityKeys];

  differentImmutableKeys = [(EKDiff *)self differentImmutableKeys];
  [v3 unionSet:differentImmutableKeys];

  differentSingleValueKeys = [(EKDiff *)self differentSingleValueKeys];
  [v3 unionSet:differentSingleValueKeys];

  differentRelationshipSingleValueKeys = [(EKDiff *)self differentRelationshipSingleValueKeys];
  [v3 unionSet:differentRelationshipSingleValueKeys];

  differentRelationshipMultiValueKeys = [(EKDiff *)self differentRelationshipMultiValueKeys];
  [v3 unionSet:differentRelationshipMultiValueKeys];

  v9 = [MEMORY[0x1E695DFD8] setWithSet:v3];

  return v9;
}

- (id)summaryDictionary
{
  v146 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  differentSingleValueKeys = [(EKDiff *)self differentSingleValueKeys];
  v5 = [differentSingleValueKeys countByEnumeratingWithState:&v133 objects:v145 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v134;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v134 != v7)
        {
          objc_enumerationMutation(differentSingleValueKeys);
        }

        v9 = *(*(&v133 + 1) + 8 * i);
        null = [MEMORY[0x1E695DFB0] null];
        [dictionary setObject:null forKeyedSubscript:v9];
      }

      v6 = [differentSingleValueKeys countByEnumeratingWithState:&v133 objects:v145 count:16];
    }

    while (v6);
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  differentIdentityKeys = [(EKDiff *)self differentIdentityKeys];
  v12 = [differentIdentityKeys countByEnumeratingWithState:&v129 objects:v144 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v130;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v130 != v14)
        {
          objc_enumerationMutation(differentIdentityKeys);
        }

        v16 = *(*(&v129 + 1) + 8 * j);
        null2 = [MEMORY[0x1E695DFB0] null];
        [dictionary setObject:null2 forKeyedSubscript:v16];
      }

      v13 = [differentIdentityKeys countByEnumeratingWithState:&v129 objects:v144 count:16];
    }

    while (v13);
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  differentImmutableKeys = [(EKDiff *)self differentImmutableKeys];
  v19 = [differentImmutableKeys countByEnumeratingWithState:&v125 objects:v143 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v126;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v126 != v21)
        {
          objc_enumerationMutation(differentImmutableKeys);
        }

        v23 = *(*(&v125 + 1) + 8 * k);
        null3 = [MEMORY[0x1E695DFB0] null];
        [dictionary setObject:null3 forKeyedSubscript:v23];
      }

      v20 = [differentImmutableKeys countByEnumeratingWithState:&v125 objects:v143 count:16];
    }

    while (v20);
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  obj = [(EKDiff *)self differentRelationshipSingleValueKeys];
  v25 = [obj countByEnumeratingWithState:&v121 objects:v142 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v122;
    v87 = *v122;
    do
    {
      v28 = 0;
      v88 = v26;
      do
      {
        if (*v122 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v121 + 1) + 8 * v28);
        firstObject = [(EKDiff *)self firstObject];
        v31 = [firstObject valueForKey:v29];

        secondObject = [(EKDiff *)self secondObject];
        v33 = [secondObject valueForKey:v29];

        v34 = v33;
        if (v31)
        {
          v35 = v33 == 0;
        }

        else
        {
          v35 = 1;
        }

        if (v35)
        {
          null4 = [MEMORY[0x1E695DFB0] null];
          [dictionary setObject:null4 forKeyedSubscript:v29];
        }

        else
        {
          v92 = v28;
          v93 = v29;
          v37 = [objc_msgSend(objc_opt_class() "meltedClass")];
          v38 = [objc_msgSend(objc_opt_class() "meltedClass")];
          v91 = v37;
          [MEMORY[0x1E695DF70] arrayWithArray:v37];
          v39 = v95 = v33;
          v90 = v38;
          [v39 addObjectsFromArray:v38];
          v119 = 0u;
          v120 = 0u;
          v117 = 0u;
          v118 = 0u;
          v40 = v39;
          v34 = v33;
          v99 = v40;
          v41 = [v40 countByEnumeratingWithState:&v117 objects:v141 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v118;
            do
            {
              v44 = 0;
              v97 = v42;
              do
              {
                if (*v118 != v43)
                {
                  objc_enumerationMutation(v99);
                }

                v45 = *(*(&v117 + 1) + 8 * v44);
                v46 = [v31 valueForKey:v45];
                v47 = [v34 valueForKey:v45];
                v48 = v47;
                if (v46)
                {
                  v49 = v47 == 0;
                }

                else
                {
                  v49 = 1;
                }

                if (v49)
                {
                  if (!(v46 | v47))
                  {
                    goto LABEL_45;
                  }

LABEL_44:
                  v50 = [objc_opt_class() summaryKeyForChangedProperty:v93 subProperty:v45];
                  [MEMORY[0x1E695DFB0] null];
                  selfCopy = self;
                  v52 = v43;
                  v54 = v53 = v31;
                  v34 = v95;
                  [dictionary setObject:v54 forKeyedSubscript:v93];

                  null5 = [MEMORY[0x1E695DFB0] null];
                  [dictionary setObject:null5 forKeyedSubscript:v50];

                  v31 = v53;
                  v43 = v52;
                  self = selfCopy;
                  v42 = v97;

                  goto LABEL_45;
                }

                v56 = [v46 isEqual:v47];
                if ((v56 & 1) == 0)
                {
                  goto LABEL_44;
                }

LABEL_45:

                ++v44;
              }

              while (v42 != v44);
              v57 = [v99 countByEnumeratingWithState:&v117 objects:v141 count:16];
              v42 = v57;
            }

            while (v57);
          }

          v27 = v87;
          v26 = v88;
          null4 = v91;
          v28 = v92;
        }

        ++v28;
      }

      while (v28 != v26);
      v26 = [obj countByEnumeratingWithState:&v121 objects:v142 count:16];
    }

    while (v26);
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  differentRelationshipMultiValueKeys = [(EKDiff *)self differentRelationshipMultiValueKeys];
  v98 = [differentRelationshipMultiValueKeys countByEnumeratingWithState:&v113 objects:v140 count:16];
  if (v98)
  {
    v96 = *v114;
    do
    {
      v58 = 0;
      do
      {
        if (*v114 != v96)
        {
          objc_enumerationMutation(differentRelationshipMultiValueKeys);
        }

        v100 = v58;
        v59 = *(*(&v113 + 1) + 8 * v58);
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        relationshipMultiValueAdds = [(EKDiff *)self relationshipMultiValueAdds];
        v61 = [relationshipMultiValueAdds objectForKeyedSubscript:v59];

        v62 = [v61 countByEnumeratingWithState:&v109 objects:v139 count:16];
        if (v62)
        {
          v63 = v62;
          v64 = *v110;
          do
          {
            for (m = 0; m != v63; ++m)
            {
              if (*v110 != v64)
              {
                objc_enumerationMutation(v61);
              }

              v66 = *(*(&v109 + 1) + 8 * m);
              v67 = objc_opt_class();
              v68 = [objc_opt_class() summaryKeyForMultiValueAddOfPropertyKey:v59];
              [v67 _addObject:v66 forKey:v68 toDiff:dictionary];
            }

            v63 = [v61 countByEnumeratingWithState:&v109 objects:v139 count:16];
          }

          while (v63);
        }

        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        relationshipMultiValueRemoves = [(EKDiff *)self relationshipMultiValueRemoves];
        v70 = [relationshipMultiValueRemoves objectForKeyedSubscript:v59];

        v71 = [v70 countByEnumeratingWithState:&v105 objects:v138 count:16];
        if (v71)
        {
          v72 = v71;
          v73 = *v106;
          do
          {
            for (n = 0; n != v72; ++n)
            {
              if (*v106 != v73)
              {
                objc_enumerationMutation(v70);
              }

              v75 = *(*(&v105 + 1) + 8 * n);
              v76 = objc_opt_class();
              v77 = [objc_opt_class() summaryKeyForMultiValueRemoveOfPropertyKey:v59];
              [v76 _addObject:v75 forKey:v77 toDiff:dictionary];
            }

            v72 = [v70 countByEnumeratingWithState:&v105 objects:v138 count:16];
          }

          while (v72);
        }

        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v78 = [(EKDiff *)self _multiValueModifiedObjectsForKey:v59];
        v79 = [v78 countByEnumeratingWithState:&v101 objects:v137 count:16];
        if (v79)
        {
          v80 = v79;
          v81 = *v102;
          do
          {
            for (ii = 0; ii != v80; ++ii)
            {
              if (*v102 != v81)
              {
                objc_enumerationMutation(v78);
              }

              v83 = *(*(&v101 + 1) + 8 * ii);
              v84 = objc_opt_class();
              v85 = [objc_opt_class() summaryKeyForMultiValueModifyOfPropertyKey:v59];
              [v84 _addObject:v83 forKey:v85 toDiff:dictionary];
            }

            v80 = [v78 countByEnumeratingWithState:&v101 objects:v137 count:16];
          }

          while (v80);
        }

        v58 = v100 + 1;
      }

      while (v100 + 1 != v98);
      v98 = [differentRelationshipMultiValueKeys countByEnumeratingWithState:&v113 objects:v140 count:16];
    }

    while (v98);
  }

  return dictionary;
}

+ (void)_addObject:(id)object forKey:(id)key toDiff:(id)diff
{
  objectCopy = object;
  keyCopy = key;
  diffCopy = diff;
  v9 = [diffCopy objectForKey:keyCopy];

  if (v9)
  {
    v10 = [diffCopy objectForKey:keyCopy];
    [v10 addObject:objectCopy];
  }

  else
  {
    v10 = [MEMORY[0x1E695DFA8] setWithObject:objectCopy];
    [diffCopy setObject:v10 forKey:keyCopy];
  }
}

- (id)summaryString
{
  firstObject = [(EKDiff *)self firstObject];

  if (firstObject)
  {
    string = [MEMORY[0x1E696AD60] string];
    firstObject2 = [(EKDiff *)self firstObject];
    secondObject = [(EKDiff *)self secondObject];
    [(EKDiff *)self _summarizeDiffsBetweenFirstObject:firstObject2 secondObject:secondObject mutableString:string depth:0];

    [string appendString:@"\n-------------------------\n"];
    secondObject2 = [(EKDiff *)self secondObject];
    firstObject3 = [(EKDiff *)self firstObject];
    [(EKDiff *)self _summarizeDiffsBetweenFirstObject:secondObject2 secondObject:firstObject3 mutableString:string depth:0];
  }

  else
  {
    v9 = MEMORY[0x1E696AEC0];
    secondObject2 = [(EKDiff *)self secondObject];
    string = [v9 stringWithFormat:@"No object for comparison, %@ is entirely different", secondObject2];
  }

  return string;
}

- (void)_summarizeDiffsBetweenFirstObject:(id)object secondObject:(id)secondObject mutableString:(id)string depth:(int64_t)depth
{
  stringCopy = string;
  secondObjectCopy = secondObject;
  objectCopy = object;
  v13 = [objectCopy _basicSummaryWithDepth:depth];
  [stringCopy appendString:v13];

  v14 = objc_opt_class();
  differentSingleValueKeys = [(EKDiff *)self differentSingleValueKeys];
  allObjects = [differentSingleValueKeys allObjects];
  [v14 _addSummaryWithDepth:depth toMutableString:stringCopy forSingleValueKeys:allObjects firstObject:objectCopy secondObject:secondObjectCopy];

  v17 = objc_opt_class();
  differentIdentityKeys = [(EKDiff *)self differentIdentityKeys];
  allObjects2 = [differentIdentityKeys allObjects];
  [v17 _addSummaryWithDepth:depth toMutableString:stringCopy forSingleValueKeys:allObjects2 firstObject:objectCopy secondObject:secondObjectCopy];

  v20 = objc_opt_class();
  differentImmutableKeys = [(EKDiff *)self differentImmutableKeys];
  allObjects3 = [differentImmutableKeys allObjects];
  [v20 _addSummaryWithDepth:depth toMutableString:stringCopy forSingleValueKeys:allObjects3 firstObject:objectCopy secondObject:secondObjectCopy];

  v23 = objc_opt_class();
  differentRelationshipSingleValueKeys = [(EKDiff *)self differentRelationshipSingleValueKeys];
  allObjects4 = [differentRelationshipSingleValueKeys allObjects];
  [v23 _addSummaryWithDepth:depth toMutableString:stringCopy forRelationshipSingleValueKeys:allObjects4 firstObject:objectCopy secondObject:secondObjectCopy];

  v26 = objc_opt_class();
  differentRelationshipMultiValueKeys = [(EKDiff *)self differentRelationshipMultiValueKeys];
  allObjects5 = [differentRelationshipMultiValueKeys allObjects];
  [v26 _addSummaryWithDepth:depth toMutableString:stringCopy forRelationshipMultiValueKeys:allObjects5 firstObject:objectCopy secondObject:secondObjectCopy];
}

+ (void)_addSummaryWithDepth:(int64_t)depth toMutableString:(id)string forSingleValueKeys:(id)keys firstObject:(id)object secondObject:(id)secondObject
{
  v28 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  keysCopy = keys;
  objectCopy = object;
  if ([keysCopy count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = keysCopy;
    obj = keysCopy;
    v14 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v23 + 1) + 8 * v17);
          [stringCopy appendString:@"\n"];
          v19 = [objc_opt_class() _addChangeStarIfChangedKey:v18 onObject:objectCopy];
          [self _addPaddedHeaderToMutableString:stringCopy forKey:v19 withDepth:depth];
          v20 = [objectCopy valueForKey:v18];
          [stringCopy appendFormat:@"%@", v20];

          ++v17;
        }

        while (v15 != v17);
        v15 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    keysCopy = v21;
  }
}

+ (void)_addSummaryWithDepth:(int64_t)depth toMutableString:(id)string forRelationshipSingleValueKeys:(id)keys firstObject:(id)object secondObject:(id)secondObject
{
  v34 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  keysCopy = keys;
  objectCopy = object;
  secondObjectCopy = secondObject;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = keysCopy;
  v27 = [keysCopy countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v27)
  {
    v25 = *v30;
    do
    {
      v14 = 0;
      do
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        [stringCopy appendString:@"\n"];
        [self _addPaddedHeaderToMutableString:stringCopy forKey:v15 withDepth:depth];
        v16 = [objectCopy valueForKey:v15];
        v17 = [secondObjectCopy valueForKey:v15];
        eventStore = [objectCopy eventStore];
        v19 = [v16 meltedObjectInStore:eventStore];

        eventStore2 = [secondObjectCopy eventStore];
        v21 = [v17 meltedObjectInStore:eventStore2];

        if (!v16)
        {
          [stringCopy appendString:@"(null)"];
          goto LABEL_13;
        }

        if ([objc_msgSend(objc_opt_class() "meltedClass")])
        {
          uniqueIdentifier = [v16 uniqueIdentifier];
          [stringCopy appendFormat:@"<weak relation: %@>", uniqueIdentifier];
LABEL_12:

          goto LABEL_13;
        }

        if (secondObjectCopy)
        {
          uniqueIdentifier = [v19 diffWithObject:v21];
          [uniqueIdentifier _summarizeDiffsBetweenFirstObject:v19 secondObject:v21 mutableString:stringCopy depth:depth + 4];
          goto LABEL_12;
        }

        [v19 _addSummaryWithDepth:depth + 4 toMutableString:stringCopy indentFirstLine:0];
LABEL_13:

        ++v14;
      }

      while (v27 != v14);
      v23 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      v27 = v23;
    }

    while (v23);
  }
}

+ (void)_addSummaryWithDepth:(int64_t)depth toMutableString:(id)string forRelationshipMultiValueKeys:(id)keys firstObject:(id)object secondObject:(id)secondObject
{
  v46 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  keysCopy = keys;
  objectCopy = object;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = keysCopy;
  v15 = [keysCopy countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v41;
    selfCopy = self;
    secondObjectCopy = secondObject;
    v30 = *v41;
    do
    {
      v18 = 0;
      v33 = v16;
      do
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v40 + 1) + 8 * v18);
        [stringCopy appendString:@"\n"];
        [self _addPaddedHeaderToMutableString:stringCopy forKey:v19 withDepth:depth];
        v35 = v18;
        if (secondObject)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"There is a difference for the multi-valued key: %@", v19];
          [stringCopy appendString:v20];
        }

        else
        {
          v21 = [objectCopy valueForKey:v19];
          v22 = v21;
          if (!v21 || ![v21 count])
          {
            [stringCopy appendString:@"(null)"];
          }

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v20 = v22;
          v23 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v37;
            do
            {
              v26 = 0;
              do
              {
                if (*v37 != v25)
                {
                  objc_enumerationMutation(v20);
                }

                v27 = *(*(&v36 + 1) + 8 * v26);
                eventStore = [objectCopy eventStore];
                v29 = [v27 meltedObjectInStore:eventStore];

                [stringCopy appendString:@"\n"];
                if (v27)
                {
                  [v29 _addSummaryWithDepth:depth + 8 toMutableString:stringCopy indentFirstLine:1];
                }

                else
                {
                  [stringCopy appendString:@"(null)"];
                }

                ++v26;
              }

              while (v24 != v26);
              v24 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
            }

            while (v24);
          }

          self = selfCopy;
          secondObject = secondObjectCopy;
          v17 = v30;
          v16 = v33;
        }

        v18 = v35 + 1;
      }

      while (v35 + 1 != v16);
      v16 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v16);
  }
}

+ (void)_addPaddedHeaderToMutableString:(id)string forKey:(id)key withDepth:(int64_t)depth
{
  keyCopy = key;
  stringCopy = string;
  v10 = [self _indentStringAtDepth:depth + 4];
  [stringCopy appendString:v10];

  v11 = [keyCopy stringByPaddingToLength:20 withString:@" " startingAtIndex:0];

  [stringCopy appendFormat:@"%@: ", v11];
}

+ (id)_addChangeStarIfChangedKey:(id)key onObject:(id)object
{
  keyCopy = key;
  changeSet = [object changeSet];
  v7 = [changeSet hasUnsavedChangeForKey:keyCopy];

  if (v7)
  {
    keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"* %@", keyCopy];
  }

  else
  {
    keyCopy = keyCopy;
  }

  v9 = keyCopy;

  return v9;
}

- (id)copyOfObject:(id)object alreadyCopiedObjects:(id)objects madeNewCopy:(BOOL *)copy
{
  objectCopy = object;
  objectsCopy = objects;
  objectID = [objectCopy objectID];
  v10 = [objectsCopy objectForKeyedSubscript:objectID];
  if (v10)
  {
    v11 = v10;
    if (copy)
    {
      *copy = 0;
    }
  }

  else
  {
    if (copy)
    {
      *copy = 1;
    }

    v11 = [objectCopy copy];
    [objectsCopy setObject:v11 forKeyedSubscript:objectID];
  }

  return v11;
}

- (id)changeSetForDiff
{
  v92 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  differentSingleValueKeys = [(EKDiff *)self differentSingleValueKeys];
  v4 = [differentSingleValueKeys countByEnumeratingWithState:&v84 objects:v91 count:16];
  v5 = 0x1E695D000uLL;
  if (v4)
  {
    v6 = v4;
    v7 = *v85;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v85 != v7)
        {
          objc_enumerationMutation(differentSingleValueKeys);
        }

        v9 = *(*(&v84 + 1) + 8 * i);
        secondObject = [(EKDiff *)self secondObject];
        v11 = [secondObject valueForKey:v9];
        v12 = v11;
        if (v11)
        {
          null = v11;
        }

        else
        {
          null = [MEMORY[0x1E695DFB0] null];
        }

        v14 = null;

        [dictionary setObject:v14 forKeyedSubscript:v9];
      }

      v6 = [differentSingleValueKeys countByEnumeratingWithState:&v84 objects:v91 count:16];
    }

    while (v6);
  }

  v15 = objc_opt_new();
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = [(EKDiff *)self differentRelationshipSingleValueKeys];
  v68 = [obj countByEnumeratingWithState:&v80 objects:v90 count:16];
  if (v68)
  {
    v16 = *v81;
    v64 = *v81;
    do
    {
      for (j = 0; j != v68; ++j)
      {
        if (*v81 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v80 + 1) + 8 * j);
        relationshipSingleValueModifies = [(EKDiff *)self relationshipSingleValueModifies];
        v20 = [relationshipSingleValueModifies objectForKeyedSubscript:v18];

        null2 = [*(v5 + 4016) null];
        v22 = [v20 isEqual:null2];

        if (v22)
        {
          secondObject2 = [(EKDiff *)self secondObject];
          v24 = [secondObject2 valueForKey:v18];
          v25 = v24;
          if (v24)
          {
            null3 = v24;
          }

          else
          {
            null3 = [*(v5 + 4016) null];
          }

          v35 = null3;

          [dictionary setObject:v35 forKeyedSubscript:v18];
        }

        else
        {
          v27 = v5;
          v79 = 0;
          secondObject3 = [(EKDiff *)self secondObject];
          v29 = [secondObject3 valueForKey:v18];

          secondObject4 = [(EKDiff *)self secondObject];
          eventStore = [secondObject4 eventStore];
          v32 = [v29 meltedObjectInStore:eventStore];

          v33 = [(EKDiff *)self copyOfObject:v32 alreadyCopiedObjects:v15 madeNewCopy:&v79];
          if (v79 == 1)
          {
            changeSetForDiff = [v20 changeSetForDiff];
            [v33 addChanges:changeSetForDiff];
          }

          [dictionary setObject:v33 forKeyedSubscript:v18];

          v5 = v27;
          v16 = v64;
        }
      }

      v68 = [obj countByEnumeratingWithState:&v80 objects:v90 count:16];
    }

    while (v68);
  }

  v36 = MEMORY[0x1E695DF90];
  relationshipMultiValueAdds = [(EKDiff *)self relationshipMultiValueAdds];
  v38 = [v36 dictionaryWithDictionary:relationshipMultiValueAdds];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  relationshipMultiValueModifies = [(EKDiff *)self relationshipMultiValueModifies];
  v63 = [relationshipMultiValueModifies countByEnumeratingWithState:&v75 objects:v89 count:16];
  if (v63)
  {
    v61 = *v76;
    v62 = v38;
    do
    {
      v39 = 0;
      do
      {
        if (*v76 != v61)
        {
          objc_enumerationMutation(relationshipMultiValueModifies);
        }

        v69 = v39;
        v40 = *(*(&v75 + 1) + 8 * v39);
        v41 = [v38 objectForKeyedSubscript:v40];
        v42 = v41;
        if (v41)
        {
          v43 = v41;
        }

        else
        {
          v43 = [MEMORY[0x1E695DFA8] set];
        }

        v44 = v43;

        relationshipMultiValueModifies2 = [(EKDiff *)self relationshipMultiValueModifies];
        obja = v40;
        v46 = [relationshipMultiValueModifies2 objectForKeyedSubscript:v40];

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v65 = v46;
        allValues = [v46 allValues];
        v48 = [allValues countByEnumeratingWithState:&v71 objects:v88 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v72;
          do
          {
            for (k = 0; k != v49; ++k)
            {
              if (*v72 != v50)
              {
                objc_enumerationMutation(allValues);
              }

              v52 = *(*(&v71 + 1) + 8 * k);
              v79 = 0;
              secondObject5 = [v52 secondObject];
              v54 = [(EKDiff *)self copyOfObject:secondObject5 alreadyCopiedObjects:v15 madeNewCopy:&v79];

              if (v79 == 1)
              {
                changeSetForDiff2 = [v52 changeSetForDiff];
                [v54 addChanges:changeSetForDiff2];
              }

              [v44 addObject:v54];
            }

            v49 = [allValues countByEnumeratingWithState:&v71 objects:v88 count:16];
          }

          while (v49);
        }

        v38 = v62;
        [v62 setObject:v44 forKeyedSubscript:obja];

        v39 = v69 + 1;
      }

      while (v69 + 1 != v63);
      v63 = [relationshipMultiValueModifies countByEnumeratingWithState:&v75 objects:v89 count:16];
    }

    while (v63);
  }

  v56 = [EKChangeSet alloc];
  relationshipMultiValueRemoves = [(EKDiff *)self relationshipMultiValueRemoves];
  v58 = [(EKChangeSet *)v56 initWithSingleValueChanges:dictionary multiValueAdditions:v38 multiValueRemovals:relationshipMultiValueRemoves];

  return v58;
}

+ (void)diffBetweenObject:(uint64_t)a1 andObject:(uint64_t)a2 fetchKeysToIgnoreBlock:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1A805E000, log, OS_LOG_TYPE_DEBUG, "Computing diff between %@ and %@", &v3, 0x16u);
}

+ (void)_populateSingleValueKeysForDiff:(void *)a1 keysToIgnore:fetchKeysToIgnoreBlock:.cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5_0() differentSingleValueKeys];
  [v3 count];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);
}

+ (void)_populateMultiValueRelationshipKeysForDiff:(void *)a1 keysToIgnore:fetchKeysToIgnoreBlock:.cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5_0() differentRelationshipMultiValueKeys];
  [v3 count];
  v4 = [OUTLINED_FUNCTION_4() differentRelationshipMultiValueKeys];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);
}

+ (void)_populateMultiValueRelationshipKeysForDiff:(uint64_t)a1 keysToIgnore:(uint64_t)a2 fetchKeysToIgnoreBlock:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKDiff.m" lineNumber:296 description:@"One of these has to be non-nil"];
}

+ (void)_populateIdentityKeysForDiff:(void *)a1 keysToIgnore:.cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5_0() differentIdentityKeys];
  [v3 count];
  v4 = [OUTLINED_FUNCTION_4() differentIdentityKeys];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);
}

+ (void)_populateImmutableKeysForDiff:(void *)a1 keysToIgnore:.cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5_0() differentImmutableKeys];
  [v3 count];
  v4 = [OUTLINED_FUNCTION_4() differentImmutableKeys];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);
}

@end