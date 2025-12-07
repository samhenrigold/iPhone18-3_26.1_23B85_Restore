@interface NSError(EMNSErrorAdditions)
+ (id)em_internalErrorWithReason:()EMNSErrorAdditions;
+ (id)em_internalErrorWithReason:()EMNSErrorAdditions userInfo:;
+ (id)em_itemNotFoundErrorWithItemID:()EMNSErrorAdditions;
+ (uint64_t)em_itemTimeoutError;
- (uint64_t)em_isInternalError;
- (uint64_t)em_isItemNotFoundError;
@end

@implementation NSError(EMNSErrorAdditions)

+ (id)em_itemNotFoundErrorWithItemID:()EMNSErrorAdditions
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_registerEMErrorDomainUserInfoValueProvider_onceToken != -1)
  {
    +[NSError(EMNSErrorAdditions) em_itemNotFoundErrorWithItemID:];
  }

  if (v4)
  {
    v11 = @"itemID";
    v12[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v9 = @"itemID";
    null = [MEMORY[0x1E695DFB0] null];
    v10 = null;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  v7 = [self errorWithDomain:@"EMErrorDomain" code:1024 userInfo:v5];

  return v7;
}

+ (uint64_t)em_itemTimeoutError
{
  if (_registerEMErrorDomainUserInfoValueProvider_onceToken != -1)
  {
    +[NSError(EMNSErrorAdditions) em_itemNotFoundErrorWithItemID:];
  }

  return [self errorWithDomain:@"EMErrorDomain" code:1026 userInfo:0];
}

+ (id)em_internalErrorWithReason:()EMNSErrorAdditions
{
  v3 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:a3 userInfo:0];

  return v3;
}

+ (id)em_internalErrorWithReason:()EMNSErrorAdditions userInfo:
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_registerEMErrorDomainUserInfoValueProvider_onceToken != -1)
  {
    +[NSError(EMNSErrorAdditions) em_itemNotFoundErrorWithItemID:];
  }

  if (v7)
  {
    v8 = [v7 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v9 = v8;
  v10 = *MEMORY[0x1E699B760];
  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x1E699B760]];

  if (v11)
  {
    v12 = [v9 objectForKeyedSubscript:v10];
    v13 = [v12 mutableCopy];

    [v13 setObject:v6 forKeyedSubscript:@"reason"];
    v9 = v13;
  }

  else
  {
    v17 = @"reason";
    v18[0] = v6;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v9 setObject:v14 forKeyedSubscript:v10];
  }

  v15 = [self errorWithDomain:@"EMErrorDomain" code:1 userInfo:v9];

  return v15;
}

- (uint64_t)em_isItemNotFoundError
{
  ef_match = [self ef_match];
  v2 = (ef_match)[2](ef_match, @"EMErrorDomain", 1024);

  return v2;
}

- (uint64_t)em_isInternalError
{
  ef_match = [self ef_match];
  v2 = (ef_match)[2](ef_match, @"EMErrorDomain", 1);

  return v2;
}

@end