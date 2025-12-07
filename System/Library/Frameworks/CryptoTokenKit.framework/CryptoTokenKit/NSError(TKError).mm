@interface NSError(TKError)
+ (id)errorWithCode:()TKError debugDescription:;
@end

@implementation NSError(TKError)

+ (id)errorWithCode:()TKError debugDescription:
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E696A278];
  v12[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = [self _errorWithCode:a3 userInfo:v8];

  return v9;
}

@end