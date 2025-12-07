@interface NSError(WFActionEnvironment)
+ (id)wfUnsupportedEnvironmentError;
- (BOOL)wf_isUnsupportedEnvironmentError;
@end

@implementation NSError(WFActionEnvironment)

- (BOOL)wf_isUnsupportedEnvironmentError
{
  domain = [self domain];
  if (objc_msgSend_isEqualToString_(domain))
  {
    v3 = [self code] == 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)wfUnsupportedEnvironmentError
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E696A578];
  v0 = WFLocalizedString(@"This action cannot be run in the current environment.");
  v5[0] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:2 userInfo:v1];

  return v2;
}

@end