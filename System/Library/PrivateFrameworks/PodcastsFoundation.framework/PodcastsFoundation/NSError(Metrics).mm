@interface NSError(Metrics)
- (id)metricsAdditionalData;
- (id)metricsContentIdentifier;
@end

@implementation NSError(Metrics)

- (id)metricsAdditionalData
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"code";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "code")}];
  v14[0] = v2;
  v13[1] = @"domain";
  domain = [self domain];
  v4 = domain;
  v5 = &stru_1F548B930;
  if (domain)
  {
    v5 = domain;
  }

  v14[1] = v5;
  v13[2] = @"user_info";
  userInfo = [self userInfo];
  v7 = userInfo;
  v8 = MEMORY[0x1E695E0F8];
  if (userInfo)
  {
    v8 = userInfo;
  }

  v14[2] = v8;
  v13[3] = @"call_stack";
  callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
  v10 = [callStackSymbols description];
  v14[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v11;
}

- (id)metricsContentIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  code = [self code];
  domain = [self domain];
  v5 = [v2 stringWithFormat:@"NSError: %ld-%@", code, domain];

  return v5;
}

@end