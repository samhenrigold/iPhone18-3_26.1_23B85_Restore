@interface AKCATiburonRequestAttemptReporter
- (AKCATiburonRequestAttemptReporter)initWithRequestID:(id)d;
- (void)didCompleteWithAuthorization:(id)authorization error:(id)error;
@end

@implementation AKCATiburonRequestAttemptReporter

- (AKCATiburonRequestAttemptReporter)initWithRequestID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKCATiburonRequestAttemptReporter;
  v6 = [(AKCAReporter *)&v7 initWithEvent:@"com.apple.AuthKit.TiburonAttempt"];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    [(AKCAReporter *)selfCopy setObject:location[0] forKeyedSubscript:@"requestID"];
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)didCompleteWithAuthorization:(id)authorization error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authorization);
  v20 = 0;
  objc_storeStrong(&v20, error);
  authorizedRequest = [location[0] authorizedRequest];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  *&v4 = MEMORY[0x277D82BD8](authorizedRequest).n128_u64[0];
  v19 = isKindOfClass & 1;
  authorizedRequest2 = [location[0] authorizedRequest];
  objc_opt_class();
  v18 = objc_opt_isKindOfClass() & 1;
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{isKindOfClass & 1, MEMORY[0x277D82BD8](authorizedRequest2).n128_f64[0]}];
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{v18, MEMORY[0x277D82BD8](v13).n128_f64[0]}];
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  *&v5 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  domain = [v20 domain];
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  *&v6 = MEMORY[0x277D82BD8](domain).n128_u64[0];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v20, "code", v6)}];
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  MEMORY[0x277D82BD8](v16);
  v17 = AKErrorUnderlyingError();
  if (v17)
  {
    domain2 = [v17 domain];
    [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "code", MEMORY[0x277D82BD8](domain2).n128_f64[0])}];
    [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

@end