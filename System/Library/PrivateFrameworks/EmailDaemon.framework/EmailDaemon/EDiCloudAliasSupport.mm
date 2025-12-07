@interface EDiCloudAliasSupport
+ (OS_os_log)log;
- (EDiCloudAliasSupport)initWithAppleAccount:(id)account;
- (NSString)aliasAuthorizationHeader;
- (NSString)aliasUserAgent;
- (NSURL)aliasLookupURL;
- (id)_prepareAliasDataForEmailAddresses:(id)addresses defaultEmailAddress:(id)address;
- (id)anisetteDataWithError:(id *)error;
- (void)pushUpdateForAliasDataWithEmailAddresses:(id)addresses defaultEmailAddress:(id)address;
@end

@implementation EDiCloudAliasSupport

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__EDiCloudAliasSupport_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_42 != -1)
  {
    dispatch_once(&log_onceToken_42, block);
  }

  v2 = log_log_42;

  return v2;
}

void __27__EDiCloudAliasSupport_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_42;
  log_log_42 = v1;
}

- (EDiCloudAliasSupport)initWithAppleAccount:(id)account
{
  accountCopy = account;
  v10.receiver = self;
  v10.super_class = EDiCloudAliasSupport;
  v5 = [(EDiCloudAliasSupport *)&v10 init];
  if (v5)
  {
    parentAccount = [accountCopy parentAccount];
    if (parentAccount)
    {
      parentAccount2 = [accountCopy parentAccount];
    }

    else
    {
      parentAccount2 = accountCopy;
    }

    appleAccount = v5->_appleAccount;
    v5->_appleAccount = parentAccount2;
  }

  return v5;
}

- (NSURL)aliasLookupURL
{
  appleAccount = [(EDiCloudAliasSupport *)self appleAccount];
  v3 = [appleAccount propertiesForDataclass:*MEMORY[0x1E6959B28]];
  v4 = [v3 objectForKey:@"sendFromAddressJSONURL"];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)aliasUserAgent
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = EFProductName();
  v4 = EFSystemBuildVersion();
  v5 = [v2 initWithFormat:@"%@ (%@)", v3, v4];

  return v5;
}

- (NSString)aliasAuthorizationHeader
{
  appleAccount = [(EDiCloudAliasSupport *)self appleAccount];
  v3 = MEMORY[0x1E696AEC0];
  aa_personID = [appleAccount aa_personID];
  aa_authToken = [appleAccount aa_authToken];
  v6 = [v3 stringWithFormat:@"%@:%@", aa_personID, aa_authToken];

  v7 = [v6 dataUsingEncoding:1];
  v8 = [v7 base64EncodedStringWithOptions:0];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"X-MobileMe-AuthToken %@", v8];

  return v9;
}

- (id)anisetteDataWithError:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  if (anisetteDataWithError__onceToken != -1)
  {
    [EDiCloudAliasSupport anisetteDataWithError:];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__12;
  v26 = __Block_byref_object_dispose__12;
  v27 = 0;
  v19 = 0;
  v20[0] = &v19;
  v20[1] = 0x3032000000;
  v20[2] = __Block_byref_object_copy__12;
  v20[3] = __Block_byref_object_dispose__12;
  v21 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v15 = __46__EDiCloudAliasSupport_anisetteDataWithError___block_invoke_67;
  v16 = &unk_1E8252698;
  v17 = &v22;
  v18 = &v19;
  v4 = v14;
  v5 = mach_absolute_time();
  v15(v4);
  v6 = mach_absolute_time();
  if (EFGetElapsedTimeSinceAbsoluteTime_onceToken != -1)
  {
    [EDiCloudAliasSupport anisetteDataWithError:];
  }

  v8 = EFGetElapsedTimeSinceAbsoluteTime_sTimebaseInfo;
  v7 = *algn_1EDC94D04;

  if (*(v20[0] + 40))
  {
    v9 = +[EDiCloudAliasSupport log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(EDiCloudAliasSupport *)v20 anisetteDataWithError:v9, ((v6 - v5) * v8 / v7) / 1000000000.0];
    }

    if (error)
    {
      *error = *(v20[0] + 40);
    }
  }

  else
  {
    v10 = +[EDiCloudAliasSupport log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v23[5];
      *buf = 138412546;
      v29 = v11;
      v30 = 2048;
      v31 = ((v6 - v5) * v8 / v7) / 1000000000.0;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "anisetteDataWithError success: %@ (%.3f sec)", buf, 0x16u);
    }
  }

  v12 = v23[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

void __46__EDiCloudAliasSupport_anisetteDataWithError___block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getAKAnisetteProvisioningControllerClass_softClass;
  v8 = getAKAnisetteProvisioningControllerClass_softClass;
  if (!getAKAnisetteProvisioningControllerClass_softClass)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getAKAnisetteProvisioningControllerClass_block_invoke;
    v4[3] = &unk_1E8250000;
    v4[4] = &v5;
    __getAKAnisetteProvisioningControllerClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = objc_alloc_init(v0);
  v3 = anisetteDataWithError__anisetteProvisioningController;
  anisetteDataWithError__anisetteProvisioningController = v2;
}

void __46__EDiCloudAliasSupport_anisetteDataWithError___block_invoke_67(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  obj = *(v2 + 40);
  v3 = [anisetteDataWithError__anisetteProvisioningController anisetteDataWithError:&obj];
  objc_storeStrong((v2 + 40), obj);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)pushUpdateForAliasDataWithEmailAddresses:(id)addresses defaultEmailAddress:(id)address
{
  v42 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  addressCopy = address;
  v6 = +[EDiCloudAliasSupport log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v34) = [addressesCopy count];
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Pushing update for alias data. Count = %d", buf, 8u);
  }

  aliasLookupURL = [(EDiCloudAliasSupport *)self aliasLookupURL];
  if (aliasLookupURL)
  {
    v8 = [MEMORY[0x1E696AD68] requestWithURL:aliasLookupURL];
    [v8 setHTTPMethod:@"POST"];
    aliasAuthorizationHeader = [(EDiCloudAliasSupport *)self aliasAuthorizationHeader];
    [v8 setValue:aliasAuthorizationHeader forHTTPHeaderField:@"Authorization"];

    aliasUserAgent = [(EDiCloudAliasSupport *)self aliasUserAgent];
    [v8 setValue:aliasUserAgent forHTTPHeaderField:*MEMORY[0x1E699B188]];

    [v8 setValue:@"application/json-rpc; charset=UTF-8" forHTTPHeaderField:*MEMORY[0x1E699B0D0]];
    [v8 ak_addDeviceUDIDHeader];
    [v8 ak_addClientInfoHeader];
    v32 = 0;
    v11 = [(EDiCloudAliasSupport *)self anisetteDataWithError:&v32];
    v29 = v32;
    if (v11)
    {
      machineID = [v11 machineID];
      [v8 setValue:machineID forHTTPHeaderField:@"X-Apple-I-MD-M"];

      oneTimePassword = [v11 oneTimePassword];
      [v8 setValue:oneTimePassword forHTTPHeaderField:@"X-Apple-I-MD"];

      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", objc_msgSend(v11, "routingInfo")];
      [v8 setValue:v14 forHTTPHeaderField:@"X-Apple-I-MD-RINFO"];
    }

    else
    {
      v14 = +[EDiCloudAliasSupport log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        appleAccount = [(EDiCloudAliasSupport *)self appleAccount];
        ef_publicDescription = [v29 ef_publicDescription];
        [(EDiCloudAliasSupport *)appleAccount pushUpdateForAliasDataWithEmailAddresses:ef_publicDescription defaultEmailAddress:v41, v14];
      }
    }

    v17 = [(EDiCloudAliasSupport *)self _prepareAliasDataForEmailAddresses:addressesCopy defaultEmailAddress:addressCopy];
    v18 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v17 options:0 error:0];
    [v8 setHTTPBody:v18];
    v19 = EFCopyResponseDataForURLRequest();
    v20 = 0;
    v28 = 0;
    statusCode = [v20 statusCode];
    if (statusCode == 200 && v19)
    {
      v22 = +[EDiCloudAliasSupport log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v19 encoding:4];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v18 encoding:4];
        *buf = 138412546;
        v34 = v23;
        v35 = 2112;
        v36 = v24;
        _os_log_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEFAULT, "response: %@.\nJSON: %@", buf, 0x16u);
      }
    }

    else
    {
      v22 = +[EDiCloudAliasSupport log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription2 = [v28 ef_publicDescription];
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v18 encoding:4];
        *buf = 138413058;
        v34 = aliasLookupURL;
        v35 = 2048;
        v36 = statusCode;
        v37 = 2114;
        v38 = ef_publicDescription2;
        v39 = 2112;
        v27 = v26;
        v40 = v26;
        _os_log_error_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_ERROR, "Unable to push new alias data to server %@. Received response code %lu, with error %{public}@.\nJSON:%@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v8 = +[EDiCloudAliasSupport log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [EDiCloudAliasSupport pushUpdateForAliasDataWithEmailAddresses:v8 defaultEmailAddress:?];
    }
  }
}

- (id)_prepareAliasDataForEmailAddresses:(id)addresses defaultEmailAddress:(id)address
{
  v37 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  addressCopy = address;
  v26 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{@"2.0", @"jsonrpc", @"update", @"method", 0}];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (addressesCopy)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(addressesCopy, "count")}];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = addressesCopy;
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v7)
    {
      v8 = *v31;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v34[0] = @"address";
          v11 = v10;
          emailAddressValue = [v11 emailAddressValue];
          simpleAddress = [emailAddressValue simpleAddress];
          v14 = simpleAddress;
          if (simpleAddress)
          {
            stringValue = simpleAddress;
          }

          else
          {
            stringValue = [v11 stringValue];
          }

          v16 = stringValue;

          v34[1] = @"canSendFrom";
          v35[0] = v16;
          v17 = [v6 objectForKeyedSubscript:v11];
          v35[1] = v17;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
          [v5 addObject:v18];
        }

        v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v7);
    }

    [dictionary setValue:v5 forKey:@"email"];
  }

  if (addressCopy)
  {
    v19 = addressCopy;
    emailAddressValue2 = [v19 emailAddressValue];
    simpleAddress2 = [emailAddressValue2 simpleAddress];
    v22 = simpleAddress2;
    if (simpleAddress2)
    {
      stringValue2 = simpleAddress2;
    }

    else
    {
      stringValue2 = [v19 stringValue];
    }

    v24 = stringValue2;

    [dictionary setValue:v24 forKey:@"defaultAddress"];
  }

  [v26 setValue:dictionary forKey:@"params"];

  return v26;
}

- (void)anisetteDataWithError:(double)a3 .cold.3(uint64_t a1, NSObject *a2, double a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(*a1 + 40);
  v4 = 138412546;
  v5 = v3;
  v6 = 2048;
  v7 = a3;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "anisetteDataWithError failure: %@ (%.3f sec)", &v4, 0x16u);
}

- (void)pushUpdateForAliasDataWithEmailAddresses:(uint8_t *)buf defaultEmailAddress:(os_log_t)log .cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "AnisetteData not found for account: %{public}@ error: %{public}@", buf, 0x16u);
}

@end