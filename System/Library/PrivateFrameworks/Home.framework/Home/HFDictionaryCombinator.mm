@interface HFDictionaryCombinator
+ (BOOL)_isKindOfContainerClass:(id)class;
- (id)_mergeVal1:(id)val1 withVal2:(id)val2;
- (id)combineResultDictionary:(id)dictionary withResultDictionary:(id)resultDictionary reconcilationHandler:(id)handler;
- (void)_reconcileKey:(id)key fromDictionary:(id)dictionary andDictionary:(id)andDictionary intoResultDictionary:(id)resultDictionary withReconcilationHandler:(id)handler;
@end

@implementation HFDictionaryCombinator

+ (BOOL)_isKindOfContainerClass:(id)class
{
  v14 = *MEMORY[0x277D85DE8];
  classCopy = class;
  if (_MergedGlobals_305 != -1)
  {
    dispatch_once(&_MergedGlobals_305, &__block_literal_global_3_31);
  }

  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = qword_280E03AE0;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v5) = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v5;
}

void __50__HFDictionaryCombinator__isKindOfContainerClass___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
  v6 = qword_280E03AE0;
  qword_280E03AE0 = v5;
}

- (id)combineResultDictionary:(id)dictionary withResultDictionary:(id)resultDictionary reconcilationHandler:(id)handler
{
  v78 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  resultDictionaryCopy = resultDictionary;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (dictionaryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFDictionaryCombinator.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"reconcilationHandler"}];

    if (dictionaryCopy)
    {
LABEL_3:
      if (!resultDictionaryCopy)
      {
        v11 = dictionaryCopy;
LABEL_9:
        v13 = v11;
        goto LABEL_10;
      }
    }
  }

  if (!dictionaryCopy && resultDictionaryCopy)
  {
    v11 = resultDictionaryCopy;
    goto LABEL_9;
  }

  if (!(dictionaryCopy | resultDictionaryCopy))
  {
    v13 = MEMORY[0x277CBEC10];
    goto LABEL_10;
  }

  v13 = objc_opt_new();
  v15 = MEMORY[0x277CBEB98];
  v62 = dictionaryCopy;
  allKeys = [dictionaryCopy allKeys];
  v17 = [v15 setWithArray:allKeys];

  v18 = MEMORY[0x277CBEB98];
  v19 = resultDictionaryCopy;
  allKeys2 = [resultDictionaryCopy allKeys];
  v21 = [v18 setWithArray:allKeys2];

  v58 = v21;
  v59 = v17;
  v22 = [v17 na_setByIntersectingWithSet:v21];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v71 objects:v77 count:16];
  v60 = v22;
  if (!v23)
  {
    goto LABEL_43;
  }

  v24 = v23;
  v25 = *v72;
  do
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v72 != v25)
      {
        objc_enumerationMutation(v22);
      }

      v27 = *(*(&v71 + 1) + 8 * i);
      keysToSkip = [(HFDictionaryCombinator *)self keysToSkip];
      v29 = [keysToSkip containsObject:v27];

      if ((v29 & 1) == 0)
      {
        keysToReconcile = [(HFDictionaryCombinator *)self keysToReconcile];
        v31 = [keysToReconcile containsObject:v27];

        if (v31)
        {
          [(HFDictionaryCombinator *)self _reconcileKey:v27 fromDictionary:v62 andDictionary:v19 intoResultDictionary:v13 withReconcilationHandler:handlerCopy];
          continue;
        }

        v32 = [v62 objectForKeyedSubscript:v27];
        v33 = [v19 objectForKeyedSubscript:v27];
        v34 = v33;
        if (v32)
        {
          v35 = v33 == 0;
        }

        else
        {
          v35 = 1;
        }

        if (!v35 && [v32 isEqual:v33])
        {
          v36 = v13;
          v37 = v32;
          goto LABEL_38;
        }

        v38 = objc_opt_class();
        if (v38 == objc_opt_class() && [objc_opt_class() _isKindOfContainerClass:v32])
        {
          v39 = [(HFDictionaryCombinator *)self _mergeVal1:v32 withVal2:v34];
          [v13 setObject:v39 forKeyedSubscript:v27];

          goto LABEL_34;
        }

        if (!v32 || v34)
        {
          v22 = v60;
          if (v32 || !v34)
          {
            [(HFDictionaryCombinator *)self _reconcileKey:v27 fromDictionary:v62 andDictionary:v19 intoResultDictionary:v13 withReconcilationHandler:handlerCopy];
          }

          else
          {
            v36 = v13;
            v37 = v34;
LABEL_38:
            [v36 setObject:v37 forKeyedSubscript:v27];
          }
        }

        else
        {
          [v13 setObject:v32 forKeyedSubscript:v27];
LABEL_34:
          v22 = v60;
        }

        continue;
      }
    }

    v24 = [v22 countByEnumeratingWithState:&v71 objects:v77 count:16];
  }

  while (v24);
LABEL_43:
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v40 = [v59 na_setByRemovingObjectsFromSet:v22];
  v41 = [v40 countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v68;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v68 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v67 + 1) + 8 * j);
        keysToSkip2 = [(HFDictionaryCombinator *)self keysToSkip];
        v47 = [keysToSkip2 containsObject:v45];

        if ((v47 & 1) == 0)
        {
          v48 = [v62 objectForKeyedSubscript:v45];
          [v13 setObject:v48 forKeyedSubscript:v45];
        }
      }

      v42 = [v40 countByEnumeratingWithState:&v67 objects:v76 count:16];
    }

    while (v42);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v49 = [v58 na_setByRemovingObjectsFromSet:v60];
  v50 = [v49 countByEnumeratingWithState:&v63 objects:v75 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v64;
    do
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v64 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v63 + 1) + 8 * k);
        keysToSkip3 = [(HFDictionaryCombinator *)self keysToSkip];
        v56 = [keysToSkip3 containsObject:v54];

        if ((v56 & 1) == 0)
        {
          v57 = [v19 objectForKeyedSubscript:v54];
          [v13 setObject:v57 forKeyedSubscript:v54];
        }
      }

      v51 = [v49 countByEnumeratingWithState:&v63 objects:v75 count:16];
    }

    while (v51);
  }

  dictionaryCopy = v62;
  resultDictionaryCopy = v19;
LABEL_10:

  return v13;
}

- (id)_mergeVal1:(id)val1 withVal2:(id)val2
{
  val1Copy = val1;
  val2Copy = val2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [val1Copy arrayByAddingObjectsFromArray:val2Copy];
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [val1Copy setByAddingObjectsFromSet:val2Copy];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [val1Copy mutableCopy];
    [v10 addEntriesFromDictionary:val2Copy];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFDictionaryCombinator.m" lineNumber:126 description:{@"Error; should not have called merge if it isn't mergable. (%@ && %@)", val1Copy, val2Copy}];

    v10 = 0;
  }

LABEL_6:

  return v10;
}

- (void)_reconcileKey:(id)key fromDictionary:(id)dictionary andDictionary:(id)andDictionary intoResultDictionary:(id)resultDictionary withReconcilationHandler:(id)handler
{
  keyCopy = key;
  resultDictionaryCopy = resultDictionary;
  v12 = (*(handler + 2))(handler, dictionary, andDictionary, keyCopy);
  if (v12)
  {
    [resultDictionaryCopy setObject:v12 forKeyedSubscript:keyCopy];
  }
}

@end