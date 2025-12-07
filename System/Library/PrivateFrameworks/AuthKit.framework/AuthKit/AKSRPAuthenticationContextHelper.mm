@interface AKSRPAuthenticationContextHelper
- (AKSRPAuthenticationContextHelper)initWithContext:(id)context;
- (BOOL)canPresentRemoteUI;
- (id)_identityAuthorizationPayload;
- (id)_passwordResetBackupToken;
- (void)_authenticationParameters:(id)parameters;
- (void)_updateHeadersWithCompanionAnisetteData:(id)data clientProvidedData:(id)providedData completion:(id)completion;
- (void)_updateHeadersWithProxiedDeviceAnisetteData:(id)data clientProvidedData:(id)providedData completion:(id)completion;
- (void)authenticationParametersWithCompletion:(id)completion;
- (void)clientProvidedDataHelper:(id)helper;
@end

@implementation AKSRPAuthenticationContextHelper

- (AKSRPAuthenticationContextHelper)initWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKSRPAuthenticationContextHelper;
  v6 = [(AKSRPContextHelper *)&v7 initWithContext:location[0]];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_authContext, location[0]);
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)authenticationParametersWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10004D538;
  v8 = &unk_1003202D8;
  v10 = _objc_retain(location[0]);
  v9 = _objc_retain(selfCopy);
  [(AKSRPAuthenticationContextHelper *)v3 _authenticationParameters:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_authenticationParameters:(id)parameters
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, parameters);
  v12[0] = 0;
  v12[1] = v12;
  v13 = 838860800;
  v14 = 48;
  v15 = sub_1000037CC;
  v16 = sub_1000110B0;
  v17 = 0;
  v3 = selfCopy;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10004DEF8;
  v9 = &unk_100320350;
  v11[0] = _objc_retain(location[0]);
  v11[1] = v12;
  v10 = _objc_retain(selfCopy);
  v4.receiver = v3;
  v4.super_class = AKSRPAuthenticationContextHelper;
  [(AKSRPContextHelper *)&v4 authenticationParametersWithCompletion:&v5];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v11, 0);
  _Block_object_dispose(v12, 8);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateHeadersWithProxiedDeviceAnisetteData:(id)data clientProvidedData:(id)providedData completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v35 = 0;
  objc_storeStrong(&v35, providedData);
  v34 = 0;
  objc_storeStrong(&v34, completion);
  proxiedDeviceAnisetteData = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext proxiedDeviceAnisetteData];
  if (proxiedDeviceAnisetteData)
  {
    v32 = _AKLogSystem();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      log = v32;
      type = v31;
      sub_10001CEEC(v30);
      _os_log_impl(&_mh_execute_header, log, type, "Context has provided Anisette data for proxied device.", v30, 2u);
    }

    objc_storeStrong(&v32, 0);
    v29 = [NSMutableURLRequest ak_proxiedAnisetteHeadersWithData:proxiedDeviceAnisetteData];
    [v35 addEntriesFromDictionary:v29];
    [location[0] addEntriesFromDictionary:v29];
    (*(v34 + 2))(v34, 1, 0);
    objc_storeStrong(&v29, 0);
  }

  else
  {
    proxiedDevice = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext proxiedDevice];
    _objc_release(proxiedDevice);
    if (proxiedDevice)
    {
      v28 = _AKLogSystem();
      v27 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v28;
        v10 = v27;
        sub_10001CEEC(v26);
        _os_log_impl(&_mh_execute_header, v9, v10, "Grabbing Anisette data from proxied device.", v26, 2u);
      }

      objc_storeStrong(&v28, 0);
      v5 = [AKAnisetteProvisioningService alloc];
      client = [(AKSRPContextHelper *)selfCopy client];
      v25 = [AKAnisetteProvisioningService initWithClient:v5 context:"initWithClient:context:"];
      _objc_release(client);
      v7 = v25;
      proxiedDevice2 = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext proxiedDevice];
      v16 = _NSConcreteStackBlock;
      v17 = -1073741824;
      v18 = 0;
      v19 = sub_100050688;
      v20 = &unk_100320378;
      v21 = _objc_retain(v35);
      v22 = _objc_retain(location[0]);
      v24 = _objc_retain(v34);
      v23 = _objc_retain(selfCopy);
      [(AKAnisetteProvisioningService *)v7 fetchAnisetteDataAndProvisionIfNecessary:1 device:proxiedDevice2 completion:&v16];
      _objc_release(proxiedDevice2);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v25, 0);
    }

    else
    {
      (*(v34 + 2))(v34, 1, 0);
    }
  }

  objc_storeStrong(&proxiedDeviceAnisetteData, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateHeadersWithCompanionAnisetteData:(id)data clientProvidedData:(id)providedData completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v40 = 0;
  objc_storeStrong(&v40, providedData);
  v39 = 0;
  objc_storeStrong(&v39, completion);
  v15 = [AKAnisetteProvisioningService alloc];
  client = [(AKSRPContextHelper *)selfCopy client];
  v38 = [AKAnisetteProvisioningService initWithClient:v15 context:"initWithClient:context:"];
  _objc_release(client);
  companionDeviceAnisetteData = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext companionDeviceAnisetteData];
  if (companionDeviceAnisetteData)
  {
    v36 = _AKLogSystem();
    v35 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      log = v36;
      type = v35;
      sub_10001CEEC(v34);
      _os_log_impl(&_mh_execute_header, log, type, "Context has provided Anisette data for companion device.", v34, 2u);
    }

    objc_storeStrong(&v36, 0);
    v33 = [NSMutableURLRequest ak_anisetteHeadersWithCompanionData:companionDeviceAnisetteData];
    [v40 addEntriesFromDictionary:v33];
    [location[0] addEntriesFromDictionary:v33];
    (*(v39 + 2))(v39, 1, 0);
    objc_storeStrong(&v33, 0);
  }

  else
  {
    companionDevice = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext companionDevice];
    v31 = 0;
    v29 = 0;
    v10 = 0;
    if (companionDevice)
    {
      companionDevice2 = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext companionDevice];
      v31 = 1;
      uniqueDeviceIdentifier = [companionDevice2 uniqueDeviceIdentifier];
      v29 = 1;
      v10 = uniqueDeviceIdentifier != 0;
    }

    if (v29)
    {
      _objc_release(uniqueDeviceIdentifier);
    }

    if (v31)
    {
      _objc_release(companionDevice2);
    }

    _objc_release(companionDevice);
    if (v10)
    {
      v28 = _AKLogSystem();
      v27 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v28;
        v8 = v27;
        sub_10001CEEC(v26);
        _os_log_impl(&_mh_execute_header, v7, v8, "Looking to set companion Anisette data in CPD.", v26, 2u);
      }

      objc_storeStrong(&v28, 0);
      v5 = v38;
      companionDevice3 = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext companionDevice];
      v17 = _NSConcreteStackBlock;
      v18 = -1073741824;
      v19 = 0;
      v20 = sub_100050DE8;
      v21 = &unk_100320378;
      v22 = _objc_retain(v40);
      v23 = _objc_retain(location[0]);
      v25 = _objc_retain(v39);
      v24 = _objc_retain(selfCopy);
      [v5 fetchAnisetteDataAndProvisionIfNecessary:1 device:companionDevice3 completion:&v17];
      _objc_release(companionDevice3);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v22, 0);
    }

    else
    {
      (*(v39 + 2))(v39, 1, 0);
    }
  }

  objc_storeStrong(&companionDeviceAnisetteData, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
}

- (void)clientProvidedDataHelper:(id)helper
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, helper);
  appProvidedData = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext appProvidedData];
  _objc_release(appProvidedData);
  if (appProvidedData)
  {
    appProvidedData2 = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext appProvidedData];
    [location[0] setObject:? forKeyedSubscript:?];
    _objc_release(appProvidedData2);
  }

  else
  {
    v84 = 0;
    verifyCredentialReason = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext verifyCredentialReason];
    if (verifyCredentialReason == 1)
    {
      v80 = _AKLogSystem();
      v79 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v45 = v80;
        v46 = v79;
        sub_10001CEEC(v78);
        _os_log_impl(&_mh_execute_header, v45, v46, "Client has request a beneficiary setup token.", v78, 2u);
      }

      objc_storeStrong(&v80, 0);
      v88 = @"addBeneficiaryToken";
      v89 = @"true";
      v5 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      v6 = v84;
      v84 = v5;
      _objc_release(v6);
      [location[0] setObject:v84 forKeyedSubscript:@"apd"];
    }

    else if (verifyCredentialReason == 2)
    {
      v83 = _AKLogSystem();
      v82 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        log = v83;
        type = v82;
        sub_10001CEEC(v81);
        _os_log_impl(&_mh_execute_header, log, type, "Client has request a custodian setup token.", v81, 2u);
      }

      objc_storeStrong(&v83, 0);
      v90 = @"addCustodianToken";
      v91 = @"true";
      v3 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      v4 = v84;
      v84 = v3;
      _objc_release(v4);
      [location[0] setObject:v84 forKeyedSubscript:@"apd"];
    }

    objc_storeStrong(&v84, 0);
  }

  appProvidedContext = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext appProvidedContext];
  _objc_release(appProvidedContext);
  if (appProvidedContext)
  {
    appProvidedContext2 = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext appProvidedContext];
    [location[0] setObject:? forKeyedSubscript:?];
    _objc_release(appProvidedContext2);
  }

  proxiedDevice = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext proxiedDevice];
  _objc_release(proxiedDevice);
  if (proxiedDevice)
  {
    [location[0] setObject:? forKeyedSubscript:?];
    [location[0] setObject:&__kCFBooleanTrue forKeyedSubscript:@"X-Apple-I-Proxied-PRK-Gen"];
    proxiedDevice2 = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext proxiedDevice];
    serverFriendlyDescription = [proxiedDevice2 serverFriendlyDescription];
    [location[0] setObject:? forKeyedSubscript:?];
    _objc_release(serverFriendlyDescription);
    _objc_release(proxiedDevice2);
    v77 = 0;
    appProvidedContext3 = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext appProvidedContext];
    v74 = 0;
    v41 = 0;
    if ([appProvidedContext3 isEqualToString:AKAppleIDAuthenticationAppProvidedContextConnectDependent])
    {
      proxiedDevice3 = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext proxiedDevice];
      v74 = 1;
      v41 = proxiedDevice3 != 0;
    }

    if (v74)
    {
      _objc_release(proxiedDevice3);
    }

    _objc_release(appProvidedContext3);
    v76 = v41;
    v73 = _AKLogSystem();
    v72 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      appProvidedContext4 = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext appProvidedContext];
      v37 = appProvidedContext4;
      if (v76)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      sub_10004DCC8(v87, appProvidedContext4, @"NO", v8);
      _os_log_debug_impl(&_mh_execute_header, v73, v72, "APC=%@, isLDO=%@, isInAgeMigrationFlow=%@", v87, 0x20u);
      _objc_release(v37);
    }

    objc_storeStrong(&v73, 0);
    appProvidedContext5 = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext appProvidedContext];
    v36 = 0;
    if ([appProvidedContext5 length])
    {
      v36 = 0;
      if ((v77 & 1) == 0)
      {
        v36 = !v76;
      }
    }

    _objc_release(appProvidedContext5);
    if (v36)
    {
      _identityAuthorizationPayload = [(AKSRPAuthenticationContextHelper *)selfCopy _identityAuthorizationPayload];
      [location[0] setObject:? forKeyedSubscript:?];
      _objc_release(_identityAuthorizationPayload);
    }
  }

  _masterKey = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext _masterKey];
  _objc_release(_masterKey);
  if (_masterKey)
  {
    v71 = _AKLogSystem();
    v70 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v71;
      v32 = v70;
      sub_10001CEEC(v69);
      _os_log_impl(&_mh_execute_header, v31, v32, "Context has masterKey set! Setting masterKeyIsEligible", v69, 2u);
    }

    objc_storeStrong(&v71, 0);
    [location[0] setObject:&__kCFBooleanTrue forKeyedSubscript:@"mke"];
  }

  authContext = [(AKSRPAuthenticationContextHelper *)selfCopy authContext];
  _proxiedAppBundleID = [(AKAppleIDAuthenticationContext *)authContext _proxiedAppBundleID];
  _objc_release(authContext);
  if ([_proxiedAppBundleID length])
  {
    v67 = _AKLogSystem();
    v66 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v67;
      v29 = v66;
      sub_10001CEEC(v65);
      _os_log_impl(&_mh_execute_header, v28, v29, "Context has a proxied bundle id set!", v65, 2u);
    }

    objc_storeStrong(&v67, 0);
    [location[0] setObject:_proxiedAppBundleID forKeyedSubscript:@"pbid"];
  }

  if ([(AKSRPAuthenticationContextHelper *)selfCopy _masterKeyAsSecondFactor])
  {
    oslog = _AKLogSystem();
    v63 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v26 = oslog;
      v27 = v63;
      sub_10001CEEC(v62);
      _os_log_impl(&_mh_execute_header, v26, v27, "Context has set masterKeyAsSecondFactor", v62, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [location[0] setObject:&__kCFBooleanTrue forKeyedSubscript:@"mk2fa"];
    _identityToken = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext _identityToken];
    [location[0] setObject:? forKeyedSubscript:?];
    _objc_release(_identityToken);
  }

  dependentAltDSID = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext dependentAltDSID];
  _objc_release(dependentAltDSID);
  if (dependentAltDSID)
  {
    v61 = _AKLogSystem();
    v60 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v61;
      v23 = v60;
      sub_10001CEEC(v59);
      _os_log_impl(&_mh_execute_header, v22, v23, "Context indicates that dependent tokens are being requested by parent account", v59, 2u);
    }

    objc_storeStrong(&v61, 0);
    dependentAltDSID2 = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext dependentAltDSID];
    [location[0] setObject:? forKeyedSubscript:?];
    _objc_release(dependentAltDSID2);
  }

  if ((+[AKFeatureManager isEnforceMDMPolicyEnabled]& 1) != 0)
  {
    v19 = objc_alloc_init(AKMDMInformationProvider);
    v58 = [(AKMDMInformationProvider *)v19 fetchMDMInformationIfNecessaryForAuthContext:selfCopy->_authContext];
    _objc_release(v19);
    deviceManagedState = [v58 deviceManagedState];
    _objc_release(deviceManagedState);
    if (deviceManagedState)
    {
      deviceManagedState2 = [v58 deviceManagedState];
      [location[0] setObject:? forKeyedSubscript:?];
      _objc_release(deviceManagedState2);
    }

    organizationToken = [v58 organizationToken];
    _objc_release(organizationToken);
    if (organizationToken)
    {
      organizationToken2 = [v58 organizationToken];
      [location[0] setObject:? forKeyedSubscript:?];
      _objc_release(organizationToken2);
    }

    objc_storeStrong(&v58, 0);
  }

  v15 = [NSString stringWithFormat:@"%lu", [AKDevice currentDeviceAuthenticationModeForAuthContext:selfCopy->_authContext]];
  [location[0] setObject:? forKeyedSubscript:?];
  _objc_release(v15);
  if (([(AKAppleIDAuthenticationContext *)selfCopy->_authContext isContextRequestingReauthForExistingService]& 1) != 0)
  {
    v57 = _AKLogSystem();
    v56 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v57;
      v14 = v56;
      sub_10001CEEC(v55);
      _os_log_impl(&_mh_execute_header, v13, v14, "Context indicates we are performing reauth for existing service", v55, 2u);
    }

    objc_storeStrong(&v57, 0);
    [location[0] setObject:&__kCFBooleanTrue forKeyedSubscript:@"X-Apple-I-ReAuth"];
  }

  proxiedAppleID = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext proxiedAppleID];
  _objc_release(proxiedAppleID);
  if (proxiedAppleID)
  {
    v54 = _AKLogSystem();
    v53 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v54;
      v11 = v53;
      sub_10001CEEC(v52);
      _os_log_impl(&_mh_execute_header, v10, v11, "Context has set proxiedAppleID", v52, 2u);
    }

    objc_storeStrong(&v54, 0);
    proxiedAppleID2 = [(AKAppleIDAuthenticationContext *)selfCopy->_authContext proxiedAppleID];
    [location[0] setObject:? forKeyedSubscript:?];
    _objc_release(proxiedAppleID2);
  }

  objc_storeStrong(&_proxiedAppBundleID, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)canPresentRemoteUI
{
  v4 = 1;
  if ([(AKAppleIDAuthenticationContext *)self->_authContext _capabilityForUIDisplay]!= 2)
  {
    v4 = 1;
    if ([(AKAppleIDAuthenticationContext *)self->_authContext _capabilityForUIDisplay]!= 3)
    {
      _performUIOutOfProcess = 0;
      if ([(AKAppleIDAuthenticationContext *)self->_authContext _capabilityForUIDisplay]== 1)
      {
        _performUIOutOfProcess = [(AKAppleIDAuthenticationContext *)self->_authContext _performUIOutOfProcess];
      }

      v4 = _performUIOutOfProcess;
    }
  }

  return v4 & 1;
}

- (id)_passwordResetBackupToken
{
  if ([(AKSRPContextHelper *)self ignoreInternalTokens])
  {
    v8 = 0;
  }

  else
  {
    if (!self->_passwordResetBackupToken)
    {
      v6 = +[AKAccountManager sharedInstance];
      v5 = [(AKAppleIDAuthenticationContext *)self->_authContext authKitAccount:0];
      v2 = [(AKAccountManager *)v6 passwordResetTokenBackupForAccount:?];
      passwordResetBackupToken = self->_passwordResetBackupToken;
      self->_passwordResetBackupToken = v2;
      _objc_release(passwordResetBackupToken);
      _objc_release(v5);
      _objc_release(v6);
    }

    v8 = _objc_retain(self->_passwordResetBackupToken);
  }

  return v8;
}

- (id)_identityAuthorizationPayload
{
  v12[2] = self;
  v12[1] = a2;
  v3 = +[AKAccountManager sharedInstance];
  v12[0] = [(AKAccountManager *)v3 altDSIDforPrimaryiCloudAccount];
  _objc_release(v3);
  v4 = +[AKAccountManager sharedInstance];
  v11 = [(AKAccountManager *)v4 authKitAccountWithAltDSID:v12[0] error:?];
  _objc_release(v4);
  v6 = +[AKAccountManager sharedInstance];
  v5 = [(AKAccountManager *)v6 masterTokenForAccount:v11];
  stringValue = [v5 stringValue];
  _objc_release(v5);
  _objc_release(v6);
  v9 = [NSString stringWithFormat:@"%@:%@", v12[0], stringValue];
  v8 = [(NSString *)v9 dataUsingEncoding:4];
  v7 = [(NSData *)v8 base64EncodedStringWithOptions:0];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&stringValue, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(v12, 0);

  return v7;
}

@end