@interface PFTError
+ (BOOL)ifResultIsNo:(BOOL)no setOutputError:(id *)error toError:(id)toError;
+ (BOOL)ifResultIsNo:(BOOL)no setOutputError:(id *)error withBlock:(id)block;
+ (BOOL)isError:(id)error errorWithDomain:(id)domain code:(int64_t)code;
+ (BOOL)isFileNotFoundError:(id)error;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error;
+ (id)errorWithCode:(int64_t)code underlyingException:(id)exception;
+ (id)errorWithErrno;
+ (id)errorWithErrnoAndUserInfo:(id)info;
+ (id)ifResultIsNil:(id)nil setOutputError:(id *)error toError:(id)toError;
+ (id)ifResultIsNil:(id)nil setOutputError:(id *)error withBlock:(id)block;
@end

@implementation PFTError

+ (BOOL)isFileNotFoundError:(id)error
{
  errorCopy = error;
  v5 = *MEMORY[0x277CCA050];
  if ([self isError:errorCopy errorWithDomain:*MEMORY[0x277CCA050] code:260] & 1) != 0 || (objc_msgSend(self, "isError:errorWithDomain:code:", errorCopy, v5, 4))
  {
    v6 = 1;
  }

  else
  {
    v6 = [self isError:errorCopy errorWithDomain:*MEMORY[0x277CCA5B8] code:2];
  }

  return v6;
}

+ (BOOL)isError:(id)error errorWithDomain:(id)domain code:(int64_t)code
{
  errorCopy = error;
  domainCopy = domain;
  if ([errorCopy code] == code)
  {
    domain = [errorCopy domain];
    v10 = [domainCopy isEqualToString:domain];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)errorWithErrno
{
  v3 = *__error();

  return [self errorWithErrno:v3 userInfo:0];
}

+ (id)errorWithErrnoAndUserInfo:(id)info
{
  infoCopy = info;
  v5 = [self errorWithErrno:*__error() userInfo:infoCopy];

  return v5;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = errorCopy;
  if (errorCopy)
  {
    v10 = *MEMORY[0x277CCA7E8];
    v11[0] = errorCopy;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PosterFuturesKitErrorDomain" code:code userInfo:v7];

  return v8;
}

+ (id)errorWithCode:(int64_t)code underlyingException:(id)exception
{
  v11[1] = *MEMORY[0x277D85DE8];
  exceptionCopy = exception;
  v6 = exceptionCopy;
  if (exceptionCopy)
  {
    v10 = @"com.apple.PosterFuturesKit.underlying-exception";
    v11[0] = exceptionCopy;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PosterFuturesKitErrorDomain" code:code userInfo:v7];

  return v8;
}

+ (id)ifResultIsNil:(id)nil setOutputError:(id *)error toError:(id)toError
{
  toErrorCopy = toError;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__PFTError_ifResultIsNil_setOutputError_toError___block_invoke;
  v12[3] = &unk_279A53220;
  v13 = toErrorCopy;
  v9 = toErrorCopy;
  v10 = [self ifResultIsNil:nil setOutputError:error withBlock:v12];

  return v10;
}

+ (id)ifResultIsNil:(id)nil setOutputError:(id *)error withBlock:(id)block
{
  nilCopy = nil;
  blockCopy = block;
  v9 = blockCopy;
  if (nilCopy)
  {
    v10 = nilCopy;
  }

  else if (error)
  {
    *error = (*(blockCopy + 2))(blockCopy);
  }

  return nilCopy;
}

+ (BOOL)ifResultIsNo:(BOOL)no setOutputError:(id *)error toError:(id)toError
{
  noCopy = no;
  toErrorCopy = toError;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__PFTError_ifResultIsNo_setOutputError_toError___block_invoke;
  v11[3] = &unk_279A53220;
  v12 = toErrorCopy;
  v9 = toErrorCopy;
  LOBYTE(error) = [self ifResultIsNo:noCopy setOutputError:error withBlock:v11];

  return error;
}

+ (BOOL)ifResultIsNo:(BOOL)no setOutputError:(id *)error withBlock:(id)block
{
  if (error && !no)
  {
    *error = (*(block + 2))(block, a2);
  }

  return no;
}

@end