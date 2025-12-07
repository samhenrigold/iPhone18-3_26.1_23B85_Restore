@interface NSException(NRSafeDescription)
- (id)nr_safeDescription;
@end

@implementation NSException(NRSafeDescription)

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
    name = [self name];
    reason = [self reason];
    v3 = [v4 stringWithFormat:@"class=%@ name=%@ reason=%@", v6, name, reason];
  }

  return v3;
}

@end