@interface NSError(NSFileProviderError)
+ (id)fileProviderErrorForCollisionWithItem:()NSFileProviderError;
+ (id)fileProviderErrorForNonExistentItemWithIdentifier:()NSFileProviderError;
+ (id)fileProviderErrorForRejectedDeletionOfItem:()NSFileProviderError;
@end

@implementation NSError(NSFileProviderError)

+ (id)fileProviderErrorForCollisionWithItem:()NSFileProviderError
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = @"NSFileProviderErrorItem";
    v9[0] = a3;
    v3 = MEMORY[0x1E695DF20];
    v4 = a3;
    v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [FPError errorWithDomain:@"NSFileProviderErrorDomain" code:-1001 userInfo:v5];
  }

  else
  {
    +[NSError(NSFileProviderError) fileProviderErrorForCollisionWithItem:];
    v6 = 0;
  }

  return v6;
}

+ (id)fileProviderErrorForRejectedDeletionOfItem:()NSFileProviderError
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = @"NSFileProviderErrorItem";
    v9[0] = a3;
    v3 = MEMORY[0x1E695DF20];
    v4 = a3;
    v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [FPError errorWithDomain:@"NSFileProviderErrorDomain" code:-1006 userInfo:v5];
  }

  else
  {
    +[NSError(NSFileProviderError) fileProviderErrorForRejectedDeletionOfItem:];
    v6 = 0;
  }

  return v6;
}

+ (id)fileProviderErrorForNonExistentItemWithIdentifier:()NSFileProviderError
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = @"NSFileProviderErrorNonExistentItemIdentifier";
    v9[0] = a3;
    v3 = MEMORY[0x1E695DF20];
    v4 = a3;
    v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [FPError errorWithDomain:@"NSFileProviderErrorDomain" code:-1005 userInfo:v5];
  }

  else
  {
    +[NSError(NSFileProviderError) fileProviderErrorForNonExistentItemWithIdentifier:];
    v6 = 0;
  }

  return v6;
}

+ (void)fileProviderErrorForCollisionWithItem:()NSFileProviderError .cold.1()
{
  OUTLINED_FUNCTION_14();
  v0 = MEMORY[0x1E696AAA8];
  v2 = v1;
  v10 = [v0 currentHandler];

  [OUTLINED_FUNCTION_5_6(v3 v4];
}

+ (void)fileProviderErrorForRejectedDeletionOfItem:()NSFileProviderError .cold.1()
{
  OUTLINED_FUNCTION_14();
  v0 = MEMORY[0x1E696AAA8];
  v2 = v1;
  v10 = [v0 currentHandler];

  [OUTLINED_FUNCTION_5_6(v3 v4];
}

+ (void)fileProviderErrorForNonExistentItemWithIdentifier:()NSFileProviderError .cold.1()
{
  OUTLINED_FUNCTION_14();
  v0 = MEMORY[0x1E696AAA8];
  v2 = v1;
  v10 = [v0 currentHandler];

  [OUTLINED_FUNCTION_5_6(v3 v4];
}

@end