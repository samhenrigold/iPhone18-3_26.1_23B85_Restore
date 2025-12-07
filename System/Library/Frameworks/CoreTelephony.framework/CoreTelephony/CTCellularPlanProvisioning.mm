@interface CTCellularPlanProvisioning
- (BOOL)supportsCellularPlan;
- (CTCellularPlanProvisioning)init;
- (void)addPlanWith:(CTCellularPlanProvisioningRequest *)request completionHandler:(void *)completionHandler;
- (void)addPlanWithRequest:(id)request properties:(id)properties completionHandler:(id)handler;
- (void)updateCellularPlanProperties:(id)properties completionHandler:(id)handler;
@end

@implementation CTCellularPlanProvisioning

- (CTCellularPlanProvisioning)init
{
  v7.receiver = self;
  v7.super_class = CTCellularPlanProvisioning;
  v2 = [(CTCellularPlanProvisioning *)&v7 init];
  if (v2)
  {
    v3 = [CoreTelephonyClient alloc];
    v4 = [(CoreTelephonyClient *)v3 initWithQueue:MEMORY[0x1E69E96A0]];
    client = v2->_client;
    v2->_client = v4;

    v2->_supportsEmbeddedSIM = [(CoreTelephonyClient *)v2->_client supportsEmbeddedSIM];
  }

  return v2;
}

- (BOOL)supportsCellularPlan
{
  v32 = *MEMORY[0x1E69E9840];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v5 = [infoDictionary objectForKey:@"SmdpUrl"];

  mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary2 = [mainBundle2 infoDictionary];
  v8 = [infoDictionary2 objectForKey:@"IccidPrefix"];

  mainBundle3 = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary3 = [mainBundle3 infoDictionary];
  v11 = [infoDictionary3 objectForKey:@"CarrierDescriptors"];

  mainBundle4 = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle4 bundleIdentifier];

  if ([v11 count] < 0x10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v24 = 138413058;
      v25 = v5;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = bundleIdentifier;
      v30 = 2048;
      v31 = [v11 count];
      _os_log_impl(&dword_182E9B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "SMDP Url: [%@], Iccid Prefix: [%@], Bundle ID: [%@], Carrier Descriptors count: %lu", &v24, 0x2Au);
    }

    v22 = [(CoreTelephonyClient *)self->_client supportsPlanProvisioning:0 carrierDescriptors:v11 smdpUrl:v5 iccidPrefix:v8 bundleId:bundleIdentifier];
  }

  else
  {
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      [(CTCellularPlanProvisioning *)v14 supportsCellularPlan:v15];
    }

    v22 = 0;
  }

  return v22;
}

- (void)addPlanWith:(CTCellularPlanProvisioningRequest *)request completionHandler:(void *)completionHandler
{
  v6 = request;
  v7 = completionHandler;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v10 = [infoDictionary objectForKey:@"CFBundleDisplayName"];

  if (v10 || ([MEMORY[0x1E696AAE8] mainBundle], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "infoDictionary"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "objectForKey:", @"CFBundleName"), v10 = objc_claimAutoreleasedReturnValue(), v12, v11, v10))
  {
    client = self->_client;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __60__CTCellularPlanProvisioning_addPlanWith_completionHandler___block_invoke;
    v22[3] = &unk_1E6A45E60;
    v23 = v7;
    [(CoreTelephonyClient *)client addPlanWith:v6 appName:v10 appType:0 completionHandler:v22];
  }

  else
  {
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      [(CTCellularPlanProvisioning *)v14 addPlanWith:v15 completionHandler:v16, v17, v18, v19, v20, v21];
    }

    (*(v7 + 2))(v7, 1);
  }
}

- (void)addPlanWithRequest:(id)request properties:(id)properties completionHandler:(id)handler
{
  requestCopy = request;
  propertiesCopy = properties;
  handlerCopy = handler;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v13 = [infoDictionary objectForKey:@"CFBundleDisplayName"];

  if (v13 || ([MEMORY[0x1E696AAE8] mainBundle], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "infoDictionary"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "objectForKey:", @"CFBundleName"), v13 = objc_claimAutoreleasedReturnValue(), v15, v14, v13))
  {
    client = self->_client;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __78__CTCellularPlanProvisioning_addPlanWithRequest_properties_completionHandler___block_invoke;
    v25[3] = &unk_1E6A45E60;
    v26 = handlerCopy;
    [(CoreTelephonyClient *)client addPlanWith:requestCopy appName:v13 appType:0 properties:propertiesCopy completionHandler:v25];
  }

  else
  {
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v17)
    {
      [(CTCellularPlanProvisioning *)v17 addPlanWith:v18 completionHandler:v19, v20, v21, v22, v23, v24];
    }

    (*(handlerCopy + 2))(handlerCopy, 1);
  }
}

- (void)updateCellularPlanProperties:(id)properties completionHandler:(id)handler
{
  propertiesCopy = properties;
  handlerCopy = handler;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v10 = [infoDictionary objectForKey:@"CFBundleDisplayName"];

  if (v10 || ([MEMORY[0x1E696AAE8] mainBundle], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "infoDictionary"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "objectForKey:", @"CFBundleName"), v10 = objc_claimAutoreleasedReturnValue(), v12, v11, v10))
  {
    client = self->_client;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77__CTCellularPlanProvisioning_updateCellularPlanProperties_completionHandler___block_invoke;
    v22[3] = &unk_1E6A43CC8;
    v23 = handlerCopy;
    [(CoreTelephonyClient *)client updateCellularPlanProperties:propertiesCopy appName:v10 appType:0 completionHandler:v22];
  }

  else
  {
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      [(CTCellularPlanProvisioning *)v14 addPlanWith:v15 completionHandler:v16, v17, v18, v19, v20, v21];
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v10);
  }
}

@end