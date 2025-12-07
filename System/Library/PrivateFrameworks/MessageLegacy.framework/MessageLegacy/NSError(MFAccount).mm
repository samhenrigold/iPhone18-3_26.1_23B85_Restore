@interface NSError(MFAccount)
- (void)mf_isInaccessibleAccountCredentialError;
- (void)mf_isMissingAccountCredentialError;
@end

@implementation NSError(MFAccount)

- (void)mf_isMissingAccountCredentialError
{
  domain = [self domain];
  result = [domain isEqualToString:*MEMORY[0x277CB8DC0]];
  if (result)
  {
    return ([self code] == 11);
  }

  return result;
}

- (void)mf_isInaccessibleAccountCredentialError
{
  domain = [self domain];
  result = [domain isEqualToString:*MEMORY[0x277CB8DC0]];
  if (result)
  {
    return ([self code] == 10);
  }

  return result;
}

@end