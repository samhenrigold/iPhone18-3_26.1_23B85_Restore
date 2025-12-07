@interface HPSHomeInterfaceMediator
- (HPSHomeInterface)settingsInterface;
- (HPSHomeInterfaceMediator)initWithInterface:(id)interface;
- (void)accessoryDidUpdateAttribute:(id)attribute withContext:(id)context;
@end

@implementation HPSHomeInterfaceMediator

- (HPSHomeInterfaceMediator)initWithInterface:(id)interface
{
  v12 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  v9.receiver = self;
  v9.super_class = HPSHomeInterfaceMediator;
  v5 = [(HPSHomeInterfaceMediator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = _HPSLoggingFacility(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[HPSHomeInterfaceMediator initWithInterface:]";
      _os_log_impl(&dword_2542B7000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    objc_storeWeak(&v6->_settingsInterface, interfaceCopy);
  }

  return v6;
}

- (void)accessoryDidUpdateAttribute:(id)attribute withContext:(id)context
{
  v16 = *MEMORY[0x277D85DE8];
  attributeCopy = attribute;
  contextCopy = context;
  v8 = _HPSLoggingFacility(contextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[HPSHomeInterfaceMediator accessoryDidUpdateAttribute:withContext:]";
    v12 = 2112;
    v13 = attributeCopy;
    v14 = 2112;
    v15 = contextCopy;
    _os_log_impl(&dword_2542B7000, v8, OS_LOG_TYPE_INFO, "%s attribute %@ context %@", &v10, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_settingsInterface);
  [WeakRetained _accessoryDidUpdateAttribute:attributeCopy withContext:contextCopy];
}

- (HPSHomeInterface)settingsInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsInterface);

  return WeakRetained;
}

@end