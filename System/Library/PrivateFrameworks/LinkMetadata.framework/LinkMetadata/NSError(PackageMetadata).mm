@interface NSError(PackageMetadata)
+ (id)errorWithErrno:()PackageMetadata forFilePath:;
@end

@implementation NSError(PackageMetadata)

+ (id)errorWithErrno:()PackageMetadata forFilePath:
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A798];
  v6 = a3;
  if (a4)
  {
    v12 = *MEMORY[0x1E696A368];
    v13[0] = a4;
    v7 = MEMORY[0x1E695DF20];
    v8 = a4;
    v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v4 errorWithDomain:v5 code:v6 userInfo:v9];
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:a3 userInfo:0];
  }

  return v10;
}

@end