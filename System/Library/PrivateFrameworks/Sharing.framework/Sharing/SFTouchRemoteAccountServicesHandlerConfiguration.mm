@interface SFTouchRemoteAccountServicesHandlerConfiguration
- (SFTouchRemoteAccountServicesHandlerConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SFTouchRemoteAccountServicesHandlerConfiguration

- (SFTouchRemoteAccountServicesHandlerConfiguration)init
{
  v8.receiver = self;
  v8.super_class = SFTouchRemoteAccountServicesHandlerConfiguration;
  v2 = [(SFTouchRemoteAccountServicesHandlerConfiguration *)&v8 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F1D7D868];
    supportedTRAccountServices = v2->_supportedTRAccountServices;
    v2->_supportedTRAccountServices = v5;

    *&v2->_isPrimaryAppleAccount = 16842753;
    v2->_isHomeSharingSetupNeeded = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SFTouchRemoteAccountServicesHandlerConfiguration);
  objc_storeStrong(&v4->_dispatchQueue, self->_dispatchQueue);
  v5 = [(NSSet *)self->_supportedTRAccountServices copy];
  supportedTRAccountServices = v4->_supportedTRAccountServices;
  v4->_supportedTRAccountServices = v5;

  v4->_isPrimaryAppleAccount = self->_isPrimaryAppleAccount;
  v4->_shouldActivateStoreAccount = self->_shouldActivateStoreAccount;
  v4->_shouldSuppressStoreSignInDialogs = self->_shouldSuppressStoreSignInDialogs;
  v4->_shouldIgnoreStoreAccountConversion = self->_shouldIgnoreStoreAccountConversion;
  v4->_isHomeSharingSetupNeeded = self->_isHomeSharingSetupNeeded;
  return v4;
}

@end