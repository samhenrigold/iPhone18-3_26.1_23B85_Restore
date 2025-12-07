@interface HMHome(TestingMatterExtensions)
- (id)hdm_createMatterController;
@end

@implementation HMHome(TestingMatterExtensions)

- (id)hdm_createMatterController
{
  v20 = *MEMORY[0x1E69E9840];
  matterControllerID = [self matterControllerID];
  v3 = matterLogCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    name = [self name];
    *buf = 138412290;
    selfCopy = name;
    _os_log_impl(&dword_1D16EC000, v3, OS_LOG_TYPE_DEFAULT, "hdm_createMatterController: Using new Matter XPC path for home %@", buf, 0xCu);
  }

  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:matterControllerID];
  v6 = objc_alloc(MEMORY[0x1E696F6E0]);
  matterStartupParametersXPCConnectBlock = [self matterStartupParametersXPCConnectBlock];
  v8 = [v6 initWithXPConnectionBlock:matterStartupParametersXPCConnectBlock uniqueIdentifier:v5];

  v13 = 0;
  v9 = [objc_alloc(MEMORY[0x1E696F628]) initWithParameters:v8 error:&v13];
  v10 = v13;
  if (!v9)
  {
    v11 = matterLogCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy = self;
      v16 = 2114;
      v17 = matterControllerID;
      v18 = 2114;
      v19 = v10;
      _os_log_error_impl(&dword_1D16EC000, v11, OS_LOG_TYPE_ERROR, "hdm_createMatterController: Failed to create MTRDeviceController for home (%@) matterControllerID: (%{public}@): %{public}@", buf, 0x20u);
    }
  }

  return v9;
}

@end