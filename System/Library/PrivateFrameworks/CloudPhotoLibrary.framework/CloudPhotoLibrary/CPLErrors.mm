@interface CPLErrors
+ (id)cplErrorCausedBySharedSyncForError:(id)error;
+ (id)cplErrorWithCode:(int64_t)code description:(id)description;
+ (id)cplErrorWithCode:(int64_t)code underlyingError:(id)error description:(id)description;
+ (id)cplErrorWithCode:(int64_t)code underlyingError:(id)error userInfo:(id)info description:(id)description;
+ (id)cplErrorWithCode:(int64_t)code underlyingError:(id)error userInfo:(id)info description:(id)description arguments:(char *)arguments;
+ (id)errorsForIdentifiers:(id)identifiers error:(id)error;
+ (id)incorrectMachineStateErrorWithReason:(id)reason;
+ (id)invalidClientCacheErrorWithReason:(id)reason;
+ (id)invalidCloudCacheErrorWithReason:(id)reason;
+ (id)posixErrorForURL:(id)l;
+ (id)posixErrorForURL:(id)l errorCode:(int)code;
+ (id)preventWipeErrorWithReason:(id)reason preventedByUser:(BOOL)user;
+ (id)unableToDeserializeRecordInStorage:(id)storage;
+ (id)unableToSerializeRecordError:(id)error inStorage:(id)storage;
+ (id)underlyingErrorWithReason:(id)reason;
+ (id)unsafeResources:(id)resources withError:(id)error realPrune:(BOOL)prune resourceStorage:(id)storage;
@end

@implementation CPLErrors

+ (id)cplErrorCausedBySharedSyncForError:(id)error
{
  v3 = MEMORY[0x1E695DF90];
  errorCopy = error;
  v5 = [v3 alloc];
  userInfo = [errorCopy userInfo];
  v7 = [v5 initWithDictionary:userInfo];

  [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"CPLErrorIsCausedBySharedSync"];
  v8 = MEMORY[0x1E696ABC0];
  domain = [errorCopy domain];
  code = [errorCopy code];

  v11 = [v8 errorWithDomain:domain code:code userInfo:v7];

  return v11;
}

+ (id)errorsForIdentifiers:(id)identifiers error:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  errorCopy = error;
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = identifiersCopy;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 setObject:errorCopy forKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)unsafeResources:(id)resources withError:(id)error realPrune:(BOOL)prune resourceStorage:(id)storage
{
  pruneCopy = prune;
  v25 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  errorCopy = error;
  storageCopy = storage;
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(resourcesCopy, "count")}];
  if (storageCopy)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = resourcesCopy;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v20 + 1) + 8 * i);
          [storageCopy notePruningRequestForResource:v18 realPrune:pruneCopy successful:{0, v20}];
          [v12 setObject:errorCopy forKeyedSubscript:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }
  }

  return v12;
}

+ (id)preventWipeErrorWithReason:(id)reason preventedByUser:(BOOL)user
{
  userCopy = user;
  v14[1] = *MEMORY[0x1E69E9840];
  if (reason)
  {
    reasonCopy = reason;
  }

  else
  {
    reasonCopy = @"no reason";
  }

  v13 = @"CPLErrorResetReason";
  v14[0] = reasonCopy;
  v7 = MEMORY[0x1E695DF20];
  reasonCopy2 = reason;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = @"Automatically prevented";
  if (userCopy)
  {
    v10 = @"User prevented";
  }

  v11 = [self cplErrorWithCode:1014 underlyingError:0 userInfo:v9 description:{@"%@ wipe for reason '%@'", v10, reasonCopy2}];

  return v11;
}

+ (id)cplErrorWithCode:(int64_t)code underlyingError:(id)error userInfo:(id)info description:(id)description arguments:(char *)arguments
{
  errorCopy = error;
  infoCopy = info;
  descriptionCopy = description;
  if (descriptionCopy)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:descriptionCopy arguments:arguments];
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = v15;
  if (infoCopy)
  {
    [v15 addEntriesFromDictionary:infoCopy];
  }

  if (v14)
  {
    [v16 setObject:v14 forKey:*MEMORY[0x1E696A578]];
  }

  if (errorCopy)
  {
    [v16 setObject:errorCopy forKey:*MEMORY[0x1E696AA08]];
  }

  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CloudPhotoLibraryErrorDomain" code:code userInfo:v16];

  return v17;
}

+ (id)cplErrorWithCode:(int64_t)code underlyingError:(id)error userInfo:(id)info description:(id)description
{
  v6 = [self cplErrorWithCode:code underlyingError:error userInfo:info description:description arguments:&v9];

  return v6;
}

+ (id)cplErrorWithCode:(int64_t)code underlyingError:(id)error description:(id)description
{
  v5 = [self cplErrorWithCode:code underlyingError:error userInfo:0 description:description arguments:&v8];

  return v5;
}

+ (id)cplErrorWithCode:(int64_t)code description:(id)description
{
  v4 = [self cplErrorWithCode:code description:description arguments:&v7];

  return v4;
}

+ (id)posixErrorForURL:(id)l errorCode:(int)code
{
  v35[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!code)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v26 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v29 = 0;
        _os_log_impl(&dword_1DC05A000, v26, OS_LOG_TYPE_ERROR, "Trying to create a POSIX error without any error!", &v29, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLErrors.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v28 lineNumber:143 description:@"Trying to create a POSIX error without any error!"];

    abort();
  }

  v8 = lCopy;
  v9 = strerror(code);
  if (v9 && (v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v9]) != 0)
  {
    v11 = v10;
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A798];
    if (v8)
    {
      v14 = *MEMORY[0x1E696A998];
      v34[0] = *MEMORY[0x1E696A578];
      v34[1] = v14;
      v35[0] = v10;
      v35[1] = v8;
      v15 = MEMORY[0x1E695DF20];
      v16 = v35;
      v17 = v34;
      v18 = 2;
    }

    else
    {
      v32 = *MEMORY[0x1E696A578];
      v33 = v10;
      v15 = MEMORY[0x1E695DF20];
      v16 = &v33;
      v17 = &v32;
      v18 = 1;
    }

    v24 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
    v23 = [v12 errorWithDomain:v13 code:code userInfo:v24];
  }

  else
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A798];
    codeCopy = code;
    if (v8)
    {
      v30 = *MEMORY[0x1E696A998];
      v31 = v8;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v23 = [v19 errorWithDomain:v20 code:codeCopy userInfo:v22];
    }

    else
    {
      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:code userInfo:0];
    }
  }

  return v23;
}

+ (id)posixErrorForURL:(id)l
{
  lCopy = l;
  v5 = [self posixErrorForURL:lCopy errorCode:*__error()];

  return v5;
}

+ (id)unableToDeserializeRecordInStorage:(id)storage
{
  v4 = MEMORY[0x1E696AEC0];
  storageCopy = storage;
  v6 = [v4 alloc];
  name = [storageCopy name];

  v8 = [v6 initWithFormat:@"Unable to deserialize record in %@", name];
  v9 = [self invalidClientCacheErrorWithReason:v8];

  return v9;
}

+ (id)unableToSerializeRecordError:(id)error inStorage:(id)storage
{
  v6 = MEMORY[0x1E696AEC0];
  storageCopy = storage;
  errorCopy = error;
  v9 = [v6 alloc];
  v10 = objc_opt_class();

  name = [storageCopy name];

  v12 = [v9 initWithFormat:@"Unable to serialize %@ in %@", v10, name];
  v13 = [self invalidClientCacheErrorWithReason:v12];

  return v13;
}

+ (id)invalidCloudCacheErrorWithReason:(id)reason
{
  v10 = *MEMORY[0x1E69E9840];
  if (reason)
  {
    v8 = @"CPLErrorResetReason";
    reasonCopy = reason;
    v3 = MEMORY[0x1E695DF20];
    reasonCopy2 = reason;
    v5 = [v3 dictionaryWithObjects:&reasonCopy forKeys:&v8 count:1];
    v6 = [CPLErrors cplErrorWithCode:21 underlyingError:0 userInfo:v5 description:@"Cloud cache is invalid: %@", reasonCopy2, v8, reasonCopy, v10];
  }

  else
  {
    v6 = [CPLErrors cplErrorWithCode:21 description:@"Cloud cache is invalid"];
  }

  return v6;
}

+ (id)invalidClientCacheErrorWithReason:(id)reason
{
  v10 = *MEMORY[0x1E69E9840];
  if (reason)
  {
    v8 = @"CPLErrorResetReason";
    reasonCopy = reason;
    v3 = MEMORY[0x1E695DF20];
    reasonCopy2 = reason;
    v5 = [v3 dictionaryWithObjects:&reasonCopy forKeys:&v8 count:1];
    v6 = [CPLErrors cplErrorWithCode:20 underlyingError:0 userInfo:v5 description:@"Client cache is invalid: %@", reasonCopy2, v8, reasonCopy, v10];
  }

  else
  {
    v6 = [CPLErrors cplErrorWithCode:20 description:@"Client cache is invalid"];
  }

  return v6;
}

+ (id)underlyingErrorWithReason:(id)reason
{
  v3 = [self cplErrorWithCode:256 description:reason arguments:&v6];

  return v3;
}

+ (id)incorrectMachineStateErrorWithReason:(id)reason
{
  v3 = [self cplErrorWithCode:100 description:reason arguments:&v6];

  return v3;
}

@end