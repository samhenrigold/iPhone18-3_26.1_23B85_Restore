@interface NSError(ATProtocolUtilities)
- (ATPError)ATPError;
- (id)initWithATPError:()ATProtocolUtilities;
@end

@implementation NSError(ATProtocolUtilities)

- (ATPError)ATPError
{
  v2 = objc_opt_new();
  [v2 setCode:{objc_msgSend(self, "code")}];
  domain = [self domain];
  [v2 setDomain:domain];

  localizedDescription = [self localizedDescription];
  [v2 setErrorDescription:localizedDescription];

  return v2;
}

- (id)initWithATPError:()ATProtocolUtilities
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  errorDescription = [v4 errorDescription];

  domain = [v4 domain];
  code = [v4 code];
  v8 = code;
  if (errorDescription)
  {
    v9 = code;
    v14 = *MEMORY[0x277CCA450];
    errorDescription2 = [v4 errorDescription];

    v15[0] = errorDescription2;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v12 = [self initWithDomain:domain code:v9 userInfo:v11];
  }

  else
  {

    v12 = [self initWithDomain:domain code:v8 userInfo:0];
  }

  return v12;
}

@end