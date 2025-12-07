@interface NSDictionary(KMMapper_AppGlobalVocabulary)
- (id)_collectionValueForKey:()KMMapper_AppGlobalVocabulary collectonType:expectedObjectsType:keyRequired:error:;
- (id)arrayValueForKey:()KMMapper_AppGlobalVocabulary expectedObjectsType:keyRequired:error:;
- (id)setValueForKey:()KMMapper_AppGlobalVocabulary expectedObjectsType:keyRequired:error:;
- (id)stringValueForKey:()KMMapper_AppGlobalVocabulary error:;
@end

@implementation NSDictionary(KMMapper_AppGlobalVocabulary)

- (id)stringValueForKey:()KMMapper_AppGlobalVocabulary error:
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [self objectForKey:v5];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      goto LABEL_7;
    }

    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Value for key %@ is not a string", v5, *MEMORY[0x277CCA068]];
    v17 = v9;
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v17;
    v12 = &v16;
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA068];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"No value associated with key: %@", v5];
    v19[0] = v9;
    v10 = MEMORY[0x277CBEAC0];
    v11 = v19;
    v12 = &v18;
  }

  v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
  v14 = [v8 errorWithDomain:@"com.apple.siri.koa.mapper" code:9 userInfo:v13];
  KVSetError();

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)_collectionValueForKey:()KMMapper_AppGlobalVocabulary collectonType:expectedObjectsType:keyRequired:error:
{
  v45[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = [self objectForKey:v11];
  if (!v12)
  {
    if (a6)
    {
      v19 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA068];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"No value associated with key: %@", v11];
      v45[0] = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      v22 = [v19 errorWithDomain:@"com.apple.siri.koa.mapper" code:9 userInfo:v21];
      KVSetError();
    }

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA068];
    v24 = MEMORY[0x277CCACA8];
    v13 = NSStringFromClass(a4);
    v25 = [v24 stringWithFormat:@"Value for key %@ is not of expected class %@", v11, v13];
    v43 = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v27 = [v23 errorWithDomain:@"com.apple.siri.koa.mapper" code:9 userInfo:v26];
    KVSetError();

LABEL_16:
    goto LABEL_17;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v28 = MEMORY[0x277CCA9B8];
          v39 = *MEMORY[0x277CCA068];
          v29 = MEMORY[0x277CCACA8];
          v30 = NSStringFromClass(a5);
          v31 = [v29 stringWithFormat:@"Object in collection for key %@ is not of expected class %@", v11, v30, v35];
          v40 = v31;
          v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
          v33 = [v28 errorWithDomain:@"com.apple.siri.koa.mapper" code:9 userInfo:v32];
          KVSetError();

          goto LABEL_16;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v18 = v13;
LABEL_18:

  return v18;
}

- (id)setValueForKey:()KMMapper_AppGlobalVocabulary expectedObjectsType:keyRequired:error:
{
  v10 = a3;
  v11 = [self _collectionValueForKey:v10 collectonType:objc_opt_class() expectedObjectsType:a4 keyRequired:a5 error:a6];

  return v11;
}

- (id)arrayValueForKey:()KMMapper_AppGlobalVocabulary expectedObjectsType:keyRequired:error:
{
  v10 = a3;
  v11 = [self _collectionValueForKey:v10 collectonType:objc_opt_class() expectedObjectsType:a4 keyRequired:a5 error:a6];

  return v11;
}

@end