@interface ATInternalError
+ (id)errorWithCode:(unint64_t)code format:(id)format;
+ (id)errorWithCode:(unint64_t)code underlyingError:(id)error;
+ (id)errorWithPosixError:(int)error format:(id)format;
@end

@implementation ATInternalError

+ (id)errorWithPosixError:(int)error format:(id)format
{
  v4 = *&error;
  v5 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v7 = [[v5 alloc] initWithFormat:formatCopy arguments:&v13];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s (%d)", v7, strerror(v4), v4];

  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v8, *MEMORY[0x277CCA450], 0}];
  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:v9];

  return v10;
}

+ (id)errorWithCode:(unint64_t)code underlyingError:(id)error
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA7E8];
  v12[0] = error;
  v6 = MEMORY[0x277CBEAC0];
  errorCopy = error;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"ATInternalError" code:code userInfo:v8];

  return v9;
}

+ (id)errorWithCode:(unint64_t)code format:(id)format
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v7 = [[v5 alloc] initWithFormat:formatCopy arguments:&v15];

  v8 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v8 errorWithDomain:@"ATInternalError" code:code userInfo:v9];

  return v10;
}

@end