@interface NSError(SHError)
- (uint64_t)sh_hasShazamKitPublicErrorDomain;
- (uint64_t)sh_isMediaLibraryError;
- (void)isShazamPublicErrorWithCode:()SHError;
- (void)sh_isMatchAttemptCancelledError;
- (void)sh_isMediaItemFetchFailedError;
- (void)sh_isMediaLibraryPublicError;
- (void)sh_isPrivacyDisclosureAcknowledgementNeededError;
@end

@implementation NSError(SHError)

- (uint64_t)sh_hasShazamKitPublicErrorDomain
{
  domain = [self domain];
  v2 = [domain isEqualToString:@"com.apple.ShazamKit"];

  return v2;
}

- (void)sh_isMediaLibraryPublicError
{
  result = [self sh_isMediaLibraryError];
  if (result)
  {
    return ([self code] == 500);
  }

  return result;
}

- (void)isShazamPublicErrorWithCode:()SHError
{
  result = [self sh_hasShazamKitPublicErrorDomain];
  if (result)
  {
    return ([self code] == a3);
  }

  return result;
}

- (uint64_t)sh_isMediaLibraryError
{
  domain = [self domain];
  v2 = [domain isEqualToString:@"com.apple.ShazamKit.ShazamLibrary"];

  return v2;
}

- (void)sh_isMatchAttemptCancelledError
{
  result = [self sh_hasShazamKitPublicErrorDomain];
  if (result)
  {
    return ([self code] == 203);
  }

  return result;
}

- (void)sh_isPrivacyDisclosureAcknowledgementNeededError
{
  result = [self sh_hasShazamKitPublicErrorDomain];
  if (result)
  {
    return ([self code] == 204);
  }

  return result;
}

- (void)sh_isMediaItemFetchFailedError
{
  result = [self sh_hasShazamKitPublicErrorDomain];
  if (result)
  {
    return ([self code] == 600);
  }

  return result;
}

@end