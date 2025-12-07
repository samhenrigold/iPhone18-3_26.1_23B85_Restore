@interface MediaServiceConfigurationMediator
- (MediaServiceConfigurationMediator)initWithServiceDelegate:(id)delegate;
- (MediaServiceUpdatedServiceInterfaceDelegate)delegate;
- (void)serviceSettingDidUpdate:(id)update homeUserID:(id)d;
- (void)userDidRemoveService:(id)service homeUserID:(id)d;
- (void)userDidUpdateDefaultService:(id)service homeUserID:(id)d;
@end

@implementation MediaServiceConfigurationMediator

- (MediaServiceConfigurationMediator)initWithServiceDelegate:(id)delegate
{
  v12 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = MediaServiceConfigurationMediator;
  v5 = [(MediaServiceConfigurationMediator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = _MSLogingFacility(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[MediaServiceConfigurationMediator initWithServiceDelegate:]";
      _os_log_impl(&dword_23986C000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    objc_storeWeak(&v6->_delegate, delegateCopy);
  }

  return v6;
}

- (void)serviceSettingDidUpdate:(id)update homeUserID:(id)d
{
  updateCopy = update;
  dCopy = d;
  delegate = [(MediaServiceConfigurationMediator *)self delegate];

  if (delegate)
  {
    delegate2 = [(MediaServiceConfigurationMediator *)self delegate];
    [delegate2 serviceSettingDidUpdate:updateCopy homeUserID:dCopy];
  }
}

- (void)userDidRemoveService:(id)service homeUserID:(id)d
{
  serviceCopy = service;
  dCopy = d;
  delegate = [(MediaServiceConfigurationMediator *)self delegate];

  if (delegate)
  {
    delegate2 = [(MediaServiceConfigurationMediator *)self delegate];
    [delegate2 userDidRemoveService:serviceCopy homeUserID:dCopy];
  }
}

- (void)userDidUpdateDefaultService:(id)service homeUserID:(id)d
{
  serviceCopy = service;
  dCopy = d;
  delegate = [(MediaServiceConfigurationMediator *)self delegate];

  if (delegate)
  {
    delegate2 = [(MediaServiceConfigurationMediator *)self delegate];
    [delegate2 userDidUpdateDefaultService:serviceCopy homeUserID:dCopy];
  }
}

- (MediaServiceUpdatedServiceInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end