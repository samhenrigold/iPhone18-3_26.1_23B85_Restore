@interface HPSHomeAccessoryInterfaceMediator
- (HPSHomeAccessoryInterfaceMediator)initWithInterface:(id)interface;
- (HPSHomeAccessorySettingsInterface)settingsInterface;
- (void)homekitaccessoryDidUpdateValueForEndpointIdentifier:(id)identifier keyPath:(id)path value:(id)value;
@end

@implementation HPSHomeAccessoryInterfaceMediator

- (HPSHomeAccessoryInterfaceMediator)initWithInterface:(id)interface
{
  interfaceCopy = interface;
  v8.receiver = self;
  v8.super_class = HPSHomeAccessoryInterfaceMediator;
  v5 = [(HPSHomeAccessoryInterfaceMediator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_settingsInterface, interfaceCopy);
  }

  return v6;
}

- (void)homekitaccessoryDidUpdateValueForEndpointIdentifier:(id)identifier keyPath:(id)path value:(id)value
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  pathCopy = path;
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->_settingsInterface);
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = _HPSLoggingFacility(WeakRetained);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 136315906;
      v15 = "[HPSHomeAccessoryInterfaceMediator homekitaccessoryDidUpdateValueForEndpointIdentifier:keyPath:value:]";
      v16 = 2112;
      v17 = identifierCopy;
      v18 = 2112;
      v19 = pathCopy;
      v20 = 2112;
      v21 = valueCopy;
      _os_log_impl(&dword_2542B7000, v13, OS_LOG_TYPE_INFO, "%s endpointID %@ keyPath %@ settingValue %@", &v14, 0x2Au);
    }

    [v12 accessoryDidUpdateValueForEndpointIdentifier:identifierCopy keyPath:pathCopy value:valueCopy];
  }
}

- (HPSHomeAccessorySettingsInterface)settingsInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsInterface);

  return WeakRetained;
}

@end