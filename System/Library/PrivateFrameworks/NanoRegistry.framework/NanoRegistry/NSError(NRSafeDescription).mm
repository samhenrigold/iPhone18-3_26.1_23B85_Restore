@interface NSError(NRSafeDescription)
- (id)nr_filteredError;
- (id)nr_safeDescription;
@end

@implementation NSError(NRSafeDescription)

- (id)nr_safeDescription
{
  if (_NRIsInternalInstall___onceToken != -1)
  {
    dispatch_once(&_NRIsInternalInstall___onceToken, &__block_literal_global_18);
  }

  if (_NRIsInternalInstall___internalInstall == 1)
  {
    v3 = [self description];
  }

  else
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    code = [self code];
    domain = [self domain];
    v3 = [v4 stringWithFormat:@"class=%@ code=%lld domain=%@", v6, code, domain];
  }

  return v3;
}

- (id)nr_filteredError
{
  v2 = MEMORY[0x1E696ABC0];
  userInfo = [self userInfo];
  v4 = [(NSError *)v2 nr_filteredPlistDictionary:userInfo];

  userInfo2 = [self userInfo];

  if (v4 == userInfo2)
  {
    selfCopy = self;
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    domain = [self domain];
    selfCopy = [v6 errorWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v4}];
  }

  return selfCopy;
}

@end