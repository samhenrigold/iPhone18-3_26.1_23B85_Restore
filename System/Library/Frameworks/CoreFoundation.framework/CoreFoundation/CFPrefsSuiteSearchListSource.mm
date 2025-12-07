@interface CFPrefsSuiteSearchListSource
- (void)handleChangeNotificationForDomainIdentifier:(__CFString *)identifier isRemote:(BOOL)remote;
@end

@implementation CFPrefsSuiteSearchListSource

- (void)handleChangeNotificationForDomainIdentifier:(__CFString *)identifier isRemote:(BOOL)remote
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __85__CFPrefsSuiteSearchListSource_handleChangeNotificationForDomainIdentifier_isRemote___block_invoke;
  v4[3] = &__block_descriptor_33_e8_v16__0_8l;
  remoteCopy = remote;
  [(CFPrefsSource *)self forEachObserver:v4];
}

uint64_t __85__CFPrefsSuiteSearchListSource_handleChangeNotificationForDomainIdentifier_isRemote___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 domainIdentifier];
  v5 = *(a1 + 32);

  return [a2 handleChangeNotificationForDomainIdentifier:v4 isRemote:v5];
}

@end