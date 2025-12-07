@interface UVExceptionError
- (UVExceptionError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
- (UVExceptionError)initWithException:(id)exception;
@end

@implementation UVExceptionError

- (UVExceptionError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  v8 = MEMORY[0x277CBEAD8];
  infoCopy = info;
  domainCopy = domain;
  v11 = [v8 alloc];
  code = [MEMORY[0x277CCACA8] stringWithFormat:@"UVExceptionError instantiated for domain %@ with code %zd.", domainCopy, code];

  v13 = [v11 initWithName:@"No exception specified" reason:code userInfo:infoCopy];
  v14 = [(UVExceptionError *)self initWithException:v13];

  return v14;
}

- (UVExceptionError)initWithException:(id)exception
{
  v13[2] = *MEMORY[0x277D85DE8];
  exceptionCopy = exception;
  v12[0] = *MEMORY[0x277CCA450];
  name = [exceptionCopy name];
  v13[0] = name;
  v12[1] = *MEMORY[0x277CCA470];
  reason = [exceptionCopy reason];
  v13[1] = reason;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11.receiver = self;
  v11.super_class = UVExceptionError;
  v9 = [(UVExceptionError *)&v11 initWithDomain:@"com.apple.PreviewsFoundation.ExceptionError" code:0 userInfo:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_exception, exception);
  }

  return v9;
}

@end