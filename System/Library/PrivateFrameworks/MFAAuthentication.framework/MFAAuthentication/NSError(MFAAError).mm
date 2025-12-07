@interface NSError(MFAAError)
+ (id)MFAA_errorWithDomain:()MFAAError code:;
+ (id)MFAA_errorWithDomain:()MFAAError code:description:;
+ (id)MFAA_errorWithDomain:()MFAAError code:failureReason:;
@end

@implementation NSError(MFAAError)

+ (id)MFAA_errorWithDomain:()MFAAError code:
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a3;
  v7 = errorDescription(v6, a4);
  v8 = [v5 MFAA_errorWithDomain:v6 code:a4 description:v7];

  return v8;
}

+ (id)MFAA_errorWithDomain:()MFAAError code:description:
{
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v13 = *MEMORY[0x277CCA450];
    v14[0] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:v7 code:a4 userInfo:v10];

  return v11;
}

+ (id)MFAA_errorWithDomain:()MFAAError code:failureReason:
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (v8)
  {
    v13[0] = *MEMORY[0x277CCA450];
    v9 = errorDescription(v7, a4);
    v13[1] = *MEMORY[0x277CCA470];
    v14[0] = v9;
    v14[1] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:v7 code:a4 userInfo:v10];

  return v11;
}

@end