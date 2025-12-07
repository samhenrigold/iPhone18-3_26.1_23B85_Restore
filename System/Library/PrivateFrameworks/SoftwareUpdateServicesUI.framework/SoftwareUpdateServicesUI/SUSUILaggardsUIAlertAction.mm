@interface SUSUILaggardsUIAlertAction
- (SUDescriptor)descriptor;
- (SUSUILaggardsUIAlertAction)initWithDescriptor:(id)descriptor completionBlock:(id)block;
- (void)decodeFromCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)loadIfNecessary;
@end

@implementation SUSUILaggardsUIAlertAction

- (SUSUILaggardsUIAlertAction)initWithDescriptor:(id)descriptor completionBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v22 = 0;
  objc_storeStrong(&v22, block);
  objc_storeStrong(&selfCopy->_descriptor, location[0]);
  v21 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [(SUSUILaggardsUIAlertAction *)selfCopy encodeWithCoder:v21];
  v20 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v6 = v20;
  encodedData = [v21 encodedData];
  [v6 setObject:? forSetting:?];
  MEMORY[0x277D82BD8](encodedData);
  v9 = selfCopy;
  v10 = v20;
  v8 = MEMORY[0x277CF0B60];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __65__SUSUILaggardsUIAlertAction_initWithDescriptor_completionBlock___block_invoke;
  v17 = &unk_279CB5948;
  v18 = MEMORY[0x277D82BE0](selfCopy);
  v19 = MEMORY[0x277D82BE0](v22);
  v11 = [v8 responderWithHandler:?];
  selfCopy = 0;
  v13.receiver = v9;
  v13.super_class = SUSUILaggardsUIAlertAction;
  selfCopy = [(SUSUILaggardsUIAlertAction *)&v13 initWithInfo:v10 responder:?];
  v12 = MEMORY[0x277D82BE0](selfCopy);
  MEMORY[0x277D82BD8](v11);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v12;
}

void __65__SUSUILaggardsUIAlertAction_initWithDescriptor_completionBlock___block_invoke(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = a1;
  v8 = [location[0] info];
  [v8 flagForSetting:SUSUILaggardsUIAlertActionOutputSuccess];
  IsYes = BSSettingFlagIsYes();
  MEMORY[0x277D82BD8](v8);
  v13 = IsYes;
  v12 = SUSUILog();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    log = v12;
    type = v11;
    v2 = objc_opt_class();
    v3 = MEMORY[0x277D82BE0](v2);
    v10 = v3;
    if (v13)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    __os_log_helper_16_2_2_8_64_8_64(v16, v3, v4);
    _os_log_impl(&dword_26AC54000, log, type, "%@ got response: %@", v16, 0x16u);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v12, 0);
  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(location, 0);
}

- (SUDescriptor)descriptor
{
  [(SUSUILaggardsUIAlertAction *)self loadIfNecessary];
  descriptor = self->_descriptor;

  return descriptor;
}

- (void)loadIfNecessary
{
  selfCopy = self;
  v5[1] = a2;
  if (!self->_loaded)
  {
    info = [(SUSUILaggardsUIAlertAction *)selfCopy info];
    v5[0] = [info objectForSetting:SUSUILaggardsUIAlertActionInput];
    MEMORY[0x277D82BD8](info);
    v2 = objc_alloc(MEMORY[0x277CCAAC8]);
    v4 = [v2 initForReadingFromData:v5[0] error:?];
    [(SUSUILaggardsUIAlertAction *)selfCopy decodeFromCoder:v4];
    [v4 finishDecoding];
    selfCopy->_loaded = 1;
    objc_storeStrong(&v4, 0);
    objc_storeStrong(v5, 0);
  }
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  if (selfCopy->_descriptor)
  {
    [location[0] encodeObject:selfCopy->_descriptor forKey:@"_susDescriptor"];
  }

  objc_storeStrong(location, 0);
}

- (void)decodeFromCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_susDescriptor"];
  descriptor = selfCopy->_descriptor;
  selfCopy->_descriptor = v3;
  MEMORY[0x277D82BD8](descriptor);
  objc_storeStrong(location, 0);
}

@end