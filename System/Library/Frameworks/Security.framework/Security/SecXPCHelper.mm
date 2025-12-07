@interface SecXPCHelper
+ (id)cleanDictionaryForXPC:(id)c;
+ (id)cleanObjectForXPC:(id)c;
+ (id)cleanseErrorForXPC:(id)c;
+ (id)encodedDataFromError:(id)error;
+ (id)errorFromEncodedData:(id)data;
+ (id)safeCKErrorPrimitiveClasses;
+ (id)safeErrorClasses;
+ (id)safeErrorCollectionClasses;
+ (id)safeErrorPrimitiveClasses;
@end

@implementation SecXPCHelper

+ (id)safeErrorClasses
{
  if (safeErrorClasses_onceToken != -1)
  {
    dispatch_once(&safeErrorClasses_onceToken, &__block_literal_global_24);
  }

  v3 = safeErrorClasses_errorClasses;

  return v3;
}

void __32__SecXPCHelper_safeErrorClasses__block_invoke()
{
  v32 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFA8] set];
  v1 = safeErrorClasses_errorClasses;
  safeErrorClasses_errorClasses = v0;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = +[SecXPCHelper safeErrorPrimitiveClasses];
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    do
    {
      v6 = 0;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [safeErrorClasses_errorClasses addObject:*(*(&v25 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v4);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = +[SecXPCHelper safeCKErrorPrimitiveClasses];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [safeErrorClasses_errorClasses addObject:*(*(&v21 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = +[SecXPCHelper safeErrorCollectionClasses];
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [safeErrorClasses_errorClasses addObject:*(*(&v17 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v29 count:16];
    }

    while (v14);
  }
}

+ (id)safeErrorPrimitiveClasses
{
  if (safeErrorPrimitiveClasses_onceToken != -1)
  {
    dispatch_once(&safeErrorPrimitiveClasses_onceToken, &__block_literal_global_4562);
  }

  v3 = safeErrorPrimitiveClasses_errorClasses;

  return v3;
}

Class __41__SecXPCHelper_safeErrorPrimitiveClasses__block_invoke()
{
  v4[6] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFA8] set];
  v1 = safeErrorPrimitiveClasses_errorClasses;
  safeErrorPrimitiveClasses_errorClasses = v0;

  v2 = 0;
  v4[0] = "NSData";
  v4[1] = "NSDate";
  v4[2] = "NSNull";
  v4[3] = "NSNumber";
  v4[4] = "NSString";
  v4[5] = "NSURL";
  do
  {
    result = objc_getClass(v4[v2]);
    if (result)
    {
      result = [safeErrorPrimitiveClasses_errorClasses addObject:result];
    }

    ++v2;
  }

  while (v2 != 6);
  return result;
}

+ (id)safeCKErrorPrimitiveClasses
{
  if (safeCKErrorPrimitiveClasses_onceToken != -1)
  {
    dispatch_once(&safeCKErrorPrimitiveClasses_onceToken, &__block_literal_global_8_4554);
  }

  v3 = safeCKErrorPrimitiveClasses_errorClasses;

  return v3;
}

Class __43__SecXPCHelper_safeCKErrorPrimitiveClasses__block_invoke()
{
  v4[6] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFA8] set];
  v1 = safeCKErrorPrimitiveClasses_errorClasses;
  safeCKErrorPrimitiveClasses_errorClasses = v0;

  v2 = 0;
  v4[0] = "CKArchivedAnchoredPackage";
  v4[1] = "CKAsset";
  v4[2] = "CKPackage";
  v4[3] = "CKRecordID";
  v4[4] = "CKReference";
  v4[5] = "CLLocation";
  do
  {
    result = objc_getClass(v4[v2]);
    if (result)
    {
      result = [safeCKErrorPrimitiveClasses_errorClasses addObject:result];
    }

    ++v2;
  }

  while (v2 != 6);
  return result;
}

+ (id)safeErrorCollectionClasses
{
  if (safeErrorCollectionClasses_onceToken != -1)
  {
    dispatch_once(&safeErrorCollectionClasses_onceToken, &__block_literal_global_16);
  }

  v3 = safeErrorCollectionClasses_errorClasses;

  return v3;
}

Class __42__SecXPCHelper_safeErrorCollectionClasses__block_invoke()
{
  v4[6] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFA8] set];
  v1 = safeErrorCollectionClasses_errorClasses;
  safeErrorCollectionClasses_errorClasses = v0;

  v2 = 0;
  v4[0] = "NSArray";
  v4[1] = "NSDictionary";
  v4[2] = "NSError";
  v4[3] = "NSOrderedSet";
  v4[4] = "NSSet";
  v4[5] = "NSURLError";
  do
  {
    result = objc_getClass(v4[v2]);
    if (result)
    {
      result = [safeErrorCollectionClasses_errorClasses addObject:result];
    }

    ++v2;
  }

  while (v2 != 6);
  return result;
}

+ (id)encodedDataFromError:(id)error
{
  v3 = MEMORY[0x1E696ACC8];
  errorCopy = error;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:errorCopy forKey:@"error"];

  encodedData = [v5 encodedData];

  return encodedData;
}

+ (id)errorFromEncodedData:(id)data
{
  v3 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v5 = [[v3 alloc] initForReadingFromData:dataCopy error:0];

  if (v5)
  {
    v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)cleanseErrorForXPC:(id)c
{
  if (c)
  {
    cCopy = c;
    userInfo = [cCopy userInfo];
    v5 = [SecXPCHelper cleanDictionaryForXPC:userInfo];

    v6 = MEMORY[0x1E696ABC0];
    domain = [cCopy domain];
    code = [cCopy code];

    v9 = [v6 errorWithDomain:domain code:code userInfo:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)cleanObjectForXPC:(id)c
{
  v67 = *MEMORY[0x1E69E9840];
  cCopy = c;
  if (!cCopy)
  {
    v14 = 0;
    goto LABEL_53;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v4 = +[SecXPCHelper safeErrorPrimitiveClasses];
  v5 = [v4 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v59;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v59 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_opt_isKindOfClass())
        {
          v14 = cCopy;

          goto LABEL_53;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v6);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = +[SecXPCHelper safeErrorCollectionClasses];
  v9 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (!v9)
  {
    goto LABEL_23;
  }

  v10 = v9;
  v11 = *v55;
  while (2)
  {
    for (j = 0; j != v10; ++j)
    {
      if (*v55 != v11)
      {
        objc_enumerationMutation(obj);
      }

      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = MEMORY[0x1E696ABC0];
          v16 = cCopy;
          domain = [v16 domain];
          code = [v16 code];
          userInfo = [v16 userInfo];

          v20 = [SecXPCHelper cleanDictionaryForXPC:userInfo];
          v14 = [v15 errorWithDomain:domain code:code userInfo:v20];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [SecXPCHelper cleanDictionaryForXPC:cCopy];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = cCopy;
              v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v21, "count")}];
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              v53 = 0u;
              v22 = v21;
              v23 = [v22 countByEnumeratingWithState:&v50 objects:v64 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v51;
                do
                {
                  for (k = 0; k != v24; ++k)
                  {
                    if (*v51 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v27 = [SecXPCHelper cleanObjectForXPC:*(*(&v50 + 1) + 8 * k)];
                    [v14 addObject:v27];
                  }

                  v24 = [v22 countByEnumeratingWithState:&v50 objects:v64 count:16];
                }

                while (v24);
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v28 = cCopy;
                v14 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v28, "count")}];
                v46 = 0u;
                v47 = 0u;
                v48 = 0u;
                v49 = 0u;
                v22 = v28;
                v29 = [v22 countByEnumeratingWithState:&v46 objects:v63 count:16];
                if (v29)
                {
                  v30 = v29;
                  v31 = *v47;
                  do
                  {
                    for (m = 0; m != v30; ++m)
                    {
                      if (*v47 != v31)
                      {
                        objc_enumerationMutation(v22);
                      }

                      v33 = [SecXPCHelper cleanObjectForXPC:*(*(&v46 + 1) + 8 * m)];
                      [v14 addObject:v33];
                    }

                    v30 = [v22 countByEnumeratingWithState:&v46 objects:v63 count:16];
                  }

                  while (v30);
                }
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }

                v34 = cCopy;
                v14 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v34, "count")}];
                v42 = 0u;
                v43 = 0u;
                v44 = 0u;
                v45 = 0u;
                v22 = v34;
                v35 = [v22 countByEnumeratingWithState:&v42 objects:v62 count:16];
                if (v35)
                {
                  v36 = v35;
                  v37 = *v43;
                  do
                  {
                    for (n = 0; n != v36; ++n)
                    {
                      if (*v43 != v37)
                      {
                        objc_enumerationMutation(v22);
                      }

                      v39 = [SecXPCHelper cleanObjectForXPC:*(*(&v42 + 1) + 8 * n)];
                      [v14 addObject:v39];
                    }

                    v36 = [v22 countByEnumeratingWithState:&v42 objects:v62 count:16];
                  }

                  while (v36);
                }
              }
            }
          }
        }

        goto LABEL_53;
      }
    }

    v10 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_23:

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
LABEL_53:

  return v14;
}

+ (id)cleanDictionaryForXPC:(id)c
{
  v21 = *MEMORY[0x1E69E9840];
  cCopy = c;
  if (cCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    allKeys = [cCopy allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(allKeys);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [cCopy objectForKeyedSubscript:v10];
          v12 = [SecXPCHelper cleanObjectForXPC:v11];

          v13 = [self cleanObjectForXPC:v10];
          if (v13)
          {
            [dictionary setObject:v12 forKeyedSubscript:v13];
          }
        }

        v7 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

@end