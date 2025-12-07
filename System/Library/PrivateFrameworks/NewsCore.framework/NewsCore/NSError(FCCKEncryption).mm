@interface NSError(FCCKEncryption)
+ (id)fc_encryptionErrorWithCode:()FCCKEncryption description:;
+ (id)fc_encryptionErrorWithCode:()FCCKEncryption descriptionFormat:;
@end

@implementation NSError(FCCKEncryption)

+ (id)fc_encryptionErrorWithCode:()FCCKEncryption description:
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A578];
  v12[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.news.encryption" code:a3 userInfo:v8];

  return v9;
}

+ (id)fc_encryptionErrorWithCode:()FCCKEncryption descriptionFormat:
{
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E696AEC0];
  v11 = a4;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v13 = MEMORY[0x1E696ABC0];
  v17 = *MEMORY[0x1E696A578];
  v18[0] = v12;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v15 = [v13 errorWithDomain:@"com.apple.news.encryption" code:a3 userInfo:v14];

  return v15;
}

@end