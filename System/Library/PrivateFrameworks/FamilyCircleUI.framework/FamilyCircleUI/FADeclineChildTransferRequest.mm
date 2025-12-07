@interface FADeclineChildTransferRequest
- (id)urlRequest;
- (id)urlString;
@end

@implementation FADeclineChildTransferRequest

- (id)urlString
{
  urlConfiguration = [MEMORY[0x277CEC860] urlConfiguration];
  rejectChildTransferURL = [urlConfiguration rejectChildTransferURL];

  return rejectChildTransferURL;
}

- (id)urlRequest
{
  v10[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = FADeclineChildTransferRequest;
  urlRequest = [(AAFamilyRequest *)&v8 urlRequest];
  v4 = [urlRequest mutableCopy];

  requestCode = self->_requestCode;
  if (requestCode)
  {
    v9 = @"request-code";
    v10[0] = requestCode;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v4 aa_setBodyWithParameters:v6];
  }

  [v4 setValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];

  return v4;
}

@end