@interface DKCloudUploadResult
+ (id)resultWithAccount:(id)account success:(BOOL)success error:(id)error;
+ (id)resultWithSuccess:(BOOL)success error:(id)error;
- (id)description;
@end

@implementation DKCloudUploadResult

+ (id)resultWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  v6 = objc_alloc_init(DKCloudUploadResult);
  [(DKCloudUploadResult *)v6 setSuccess:successCopy];
  [(DKCloudUploadResult *)v6 setError:errorCopy];

  return v6;
}

+ (id)resultWithAccount:(id)account success:(BOOL)success error:(id)error
{
  successCopy = success;
  accountCopy = account;
  v9 = [self resultWithSuccess:successCopy error:error];
  username = [accountCopy username];
  [v9 setUsername:username];

  v11 = MEMORY[0x277CCABB0];
  v12 = [accountCopy aa_isAccountClass:*MEMORY[0x277CEC688]];

  v13 = [v11 numberWithBool:v12];
  [v9 setPrimaryAccount:v13];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  username = [(DKCloudUploadResult *)self username];
  isPrimaryAccount = [(DKCloudUploadResult *)self isPrimaryAccount];
  success = [(DKCloudUploadResult *)self success];
  error = [(DKCloudUploadResult *)self error];
  v10 = [v3 stringWithFormat:@"<%@: %p> username: %@ isPrimaryAccount: %@ success: %d error: %@", v5, self, username, isPrimaryAccount, success, error];

  return v10;
}

@end