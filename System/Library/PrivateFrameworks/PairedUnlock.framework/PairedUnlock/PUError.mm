@interface PUError
+ (id)errorWithCode:(unint64_t)code description:(id)description;
@end

@implementation PUError

+ (id)errorWithCode:(unint64_t)code description:(id)description
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = description;
  v6 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.pairedunlock" code:code userInfo:v8];

  return v9;
}

@end