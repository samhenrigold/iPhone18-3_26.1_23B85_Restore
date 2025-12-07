@interface NSError(MTSError_Internal)
+ (id)mts_errorWithCode:()MTSError_Internal underlyingError:description:;
+ (id)mts_stubErrorForMethod:()MTSError_Internal;
@end

@implementation NSError(MTSError_Internal)

+ (id)mts_stubErrorForMethod:()MTSError_Internal
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Temporary Stub: %@", a3, 0];
  v5 = [v3 mts_errorWithCode:1 description:v4];

  return v5;
}

+ (id)mts_errorWithCode:()MTSError_Internal underlyingError:description:
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (!(v7 | v8))
  {
    v15 = 0;
    goto LABEL_10;
  }

  if (!v8)
  {
    v22 = *MEMORY[0x277CCA7E8];
    v23[0] = v7;
    v11 = MEMORY[0x277CBEAC0];
    v12 = v23;
    v13 = &v22;
LABEL_8:
    v14 = 1;
    goto LABEL_9;
  }

  if (!v7)
  {
    v20 = *MEMORY[0x277CCA450];
    v21 = v8;
    v11 = MEMORY[0x277CBEAC0];
    v12 = &v21;
    v13 = &v20;
    goto LABEL_8;
  }

  v10 = *MEMORY[0x277CCA450];
  v18[0] = *MEMORY[0x277CCA7E8];
  v18[1] = v10;
  v19[0] = v7;
  v19[1] = v8;
  v11 = MEMORY[0x277CBEAC0];
  v12 = v19;
  v13 = v18;
  v14 = 2;
LABEL_9:
  v15 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:v14];
LABEL_10:
  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.MatterSupport" code:a3 userInfo:v15];

  return v16;
}

@end