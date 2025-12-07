@interface FedStatsError
+ (id)errorWithCode:(int64_t)code description:(id)description;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error description:(id)description;
+ (id)errorWithCode:(int64_t)code underlyingErrors:(id)errors description:(id)description;
@end

@implementation FedStatsError

+ (id)errorWithCode:(int64_t)code description:(id)description
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  descriptionCopy = description;
  v7 = [v5 alloc];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = descriptionCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = [v7 initWithDomain:@"com.apple.FedStats" code:code userInfo:v8];

  return v9;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error description:(id)description
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (error)
  {
    v7 = MEMORY[0x277CCA9B8];
    descriptionCopy = description;
    errorCopy = error;
    v10 = [v7 alloc];
    v11 = *MEMORY[0x277CCA7E8];
    v17[0] = *MEMORY[0x277CCA450];
    v17[1] = v11;
    v18[0] = descriptionCopy;
    v18[1] = errorCopy;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

    v13 = [v10 initWithDomain:@"com.apple.FedStats" code:code userInfo:v12];
  }

  else
  {
    descriptionCopy2 = description;
    v15 = 0;
    v13 = [FedStatsError errorWithCode:code description:descriptionCopy2];
  }

  return v13;
}

+ (id)errorWithCode:(int64_t)code underlyingErrors:(id)errors description:(id)description
{
  v16[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCA9B8];
  descriptionCopy = description;
  errorsCopy = errors;
  v10 = [v7 alloc];
  v11 = *MEMORY[0x277CCA578];
  v15[0] = *MEMORY[0x277CCA450];
  v15[1] = v11;
  v16[0] = descriptionCopy;
  v16[1] = errorsCopy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v13 = [v10 initWithDomain:@"com.apple.FedStats" code:code userInfo:v12];

  return v13;
}

@end