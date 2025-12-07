@interface MCNewWiFiPayloadHandler
+ (id)_originatorIdentifierFromInstallationOptions:(id)options;
+ (id)_originatorNameFromInstallationOptions:(id)options;
+ (id)managedWiFiNetworkNames;
- (BOOL)_applyProxyCredential:(id)credential;
- (BOOL)_configureEncryptionTypeForWiFiNetwork:(__WiFiNetwork *)network payload:(id)payload outError:(id *)error;
- (BOOL)_configureNetworkServiceForWiFiNetwork:(__WiFiNetwork *)network outError:(id *)error;
- (BOOL)_installEAPConfiguration:(id)configuration isHotspot:(BOOL)hotspot securityType:(id)type authProperties:(id)properties username:(id)username password:(id)password identity:(__SecIdentity *)identity;
- (BOOL)_isMetadataValid:(__EAPOLClientProfile *)valid;
- (BOOL)_isWiFiDaemonAvailable;
- (BOOL)_networkServiceRequired;
- (BOOL)_setEAPConfig:(id)config onNetwork:(__WiFiNetwork *)network;
- (BOOL)_setEAPConfigUsingEAPConfigAPI:(id)i;
- (BOOL)canInstallPayloadWithJoinBeforeFirstUnlock:(id)unlock error:(id *)error;
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (BOOL)isInstalled;
- (BOOL)preflightUserInputResponses:(id)responses outError:(id *)error;
- (MCNewWiFiPayloadHandler)initWithPayload:(id)payload profileHandler:(id)handler;
- (id)profileMetadata;
- (id)userInputFields;
- (void)_removeEAPConfiguration;
- (void)_removeNetworkWithUUID:(id)d isAllowedBeforeFirstUnlock:(BOOL)unlock;
- (void)_removeProxyCredential;
- (void)_updateWiFiCustomSetWithSetID:(id)d forSSID:(id)iD;
- (void)dealloc;
- (void)remove;
- (void)setAside;
- (void)setAsideEAPConfig;
- (void)unsetAside;
- (void)unsetAsideEAPConfig;
@end

@implementation MCNewWiFiPayloadHandler

- (MCNewWiFiPayloadHandler)initWithPayload:(id)payload profileHandler:(id)handler
{
  v12.receiver = self;
  v12.super_class = MCNewWiFiPayloadHandler;
  v4 = [(MCNewPayloadHandler *)&v12 initWithPayload:payload profileHandler:handler];
  if (v4)
  {
    v5 = WiFiManagerClientCreate();
    v4->_manager = v5;
    v6 = _MCLogObjects[0];
    if (v5)
    {
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        v7 = "MCNewWiFiPayloadHandler successfully created a WiFiManagerClient.";
        v8 = v6;
        v9 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v8, v9, v7, v11, 2u);
      }
    }

    else if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      v7 = "MCNewWiFiPayloadHandler could not create a WiFiManagerClient. This payload handler will not function correctly.";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }
  }

  return v4;
}

- (void)dealloc
{
  manager = self->_manager;
  if (manager)
  {
    CFRelease(manager);
    self->_manager = 0;
  }

  v4.receiver = self;
  v4.super_class = MCNewWiFiPayloadHandler;
  [(MCNewWiFiPayloadHandler *)&v4 dealloc];
}

- (id)userInputFields
{
  payload = [(MCNewPayloadHandler *)self payload];
  userInputFields = [payload userInputFields];

  return userInputFields;
}

- (BOOL)preflightUserInputResponses:(id)responses outError:(id *)error
{
  responsesCopy = responses;
  payload = [(MCNewPayloadHandler *)self payload];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = responsesCopy;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v22;
    v11 = kMCIDUUIDKey;
    v12 = kMCIDResponseKey;
    *&v8 = 138543362;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 objectForKey:{v11, v19}];
        v16 = [v14 objectForKey:v12];
        if ([v15 isEqualToString:@"UsernameUserInputKey"])
        {
          [payload setUsername:v16];
        }

        else if ([v15 isEqualToString:@"PasswordUserInputKey"])
        {
          [payload setPassword:v16];
        }

        else
        {
          v17 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v19;
            v26 = v15;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler didn't ask for user input for key: %{public}@", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v9);
  }

  return 1;
}

- (id)profileMetadata
{
  payload = [(MCNewPayloadHandler *)self payload];
  uUID = [payload UUID];
  v4 = [NSDictionary dictionaryWithObject:uUID forKey:kMCPayloadUUIDKey];

  return v4;
}

- (BOOL)_isMetadataValid:(__EAPOLClientProfile *)valid
{
  payload = [(MCNewPayloadHandler *)self payload];
  v4 = EAPOLClientProfileGetInformation();
  v5 = v4;
  v12 = 0;
  if (v4)
  {
    v6 = kMCPayloadUUIDKey;
    v7 = [v4 objectForKey:kMCPayloadUUIDKey];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [v5 objectForKey:v6];
      uUID = [payload UUID];
      v11 = [v9 isEqualToString:uUID];

      if (v11)
      {
        v12 = 1;
      }
    }
  }

  return v12;
}

- (BOOL)_installEAPConfiguration:(id)configuration isHotspot:(BOOL)hotspot securityType:(id)type authProperties:(id)properties username:(id)username password:(id)password identity:(__SecIdentity *)identity
{
  hotspotCopy = hotspot;
  configurationCopy = configuration;
  typeCopy = type;
  propertiesCopy = properties;
  usernameCopy = username;
  passwordCopy = password;
  payload = [(MCNewPayloadHandler *)self payload];
  v21 = EAPOLClientConfigurationCreateWithAuthorization();
  if (v21)
  {
    v22 = v21;
    v61 = typeCopy;
    v62 = propertiesCopy;
    if (hotspotCopy)
    {
      ProfileWithWLANDomain = EAPOLClientConfigurationGetProfileWithWLANDomain();
      if (ProfileWithWLANDomain)
      {
        v24 = ProfileWithWLANDomain;
        CFRetain(ProfileWithWLANDomain);
LABEL_10:
        if (![(MCNewWiFiPayloadHandler *)self _isMetadataValid:v24, v61])
        {
          v31 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
          {
            v32 = v31;
            *buf = 138543362;
            v64 = objc_opt_class();
            v33 = v64;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%{public}@ configuration for the Wi-Fi already exists", buf, 0xCu);
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      v29 = [configurationCopy dataUsingEncoding:4];
      ProfileWithWLANSSID = EAPOLClientConfigurationGetProfileWithWLANSSID();
      if (ProfileWithWLANSSID)
      {
        v24 = ProfileWithWLANSSID;
        CFRetain(ProfileWithWLANSSID);

        goto LABEL_10;
      }
    }

    v24 = EAPOLClientProfileCreate();
    if (!v24)
    {
      v44 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v45 = v44;
        *buf = 138543362;
        v64 = objc_opt_class();
        v46 = v64;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientProfileCreate() returned NULL", buf, 0xCu);
      }

      v28 = 0;
      typeCopy = v61;
      goto LABEL_49;
    }

LABEL_15:
    v34 = EAPOLClientItemIDCreateWithProfile();
    if (!v34)
    {
      v39 = _MCLogObjects[0];
      propertiesCopy = v62;
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v40 = v39;
        v41 = objc_opt_class();
        *buf = 138543362;
        v64 = v41;
        v42 = v41;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientItemIDCreateWithProfile() returned NULL", buf, 0xCu);
      }

      v28 = 0;
      goto LABEL_48;
    }

    v35 = v34;
    displayName = [payload displayName];

    if (displayName)
    {
      displayName2 = [payload displayName];
      EAPOLClientProfileSetUserDefinedName();
    }

    EAPOLClientProfileSetAuthenticationProperties();
    profileMetadata = [(MCNewWiFiPayloadHandler *)self profileMetadata];
    if (profileMetadata && !EAPOLClientProfileSetInformation())
    {
      v47 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v48 = v47;
        v49 = objc_opt_class();
        *buf = 138543362;
        v64 = v49;
        v50 = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientProfileSetInformation() failed", buf, 0xCu);
      }

      goto LABEL_46;
    }

    if (hotspotCopy)
    {
      EAPOLClientProfileSetWLANDomain();
      if (!usernameCopy)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v43 = [configurationCopy dataUsingEncoding:4];
      EAPOLClientProfileSetWLANSSIDAndSecurityType();

      if (!usernameCopy)
      {
        goto LABEL_29;
      }
    }

    if (passwordCopy && !EAPOLClientItemIDSetPasswordItem())
    {
      v58 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v52 = v58;
        v59 = objc_opt_class();
        *buf = 138543362;
        v64 = v59;
        v54 = v59;
        v55 = "%{public}@ EAPOLClientItemIDSetPasswordItem() failed";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

LABEL_29:
    if (identity && !EAPOLClientItemIDSetIdentity())
    {
      v56 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v52 = v56;
        v57 = objc_opt_class();
        *buf = 138543362;
        v64 = v57;
        v54 = v57;
        v55 = "%{public}@ EAPOLClientItemIDSetIdentity() failed";
        goto LABEL_45;
      }
    }

    else
    {
      if (EAPOLClientConfigurationSave())
      {
        v28 = 1;
LABEL_47:
        CFRelease(v35);
        propertiesCopy = v62;
LABEL_48:
        CFRelease(v24);
        typeCopy = v61;
LABEL_49:
        CFRelease(v22);
        goto LABEL_50;
      }

      v51 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v52 = v51;
        v53 = objc_opt_class();
        *buf = 138543362;
        v64 = v53;
        v54 = v53;
        v55 = "%{public}@ EAPOLClientConfigurationSave() failed";
LABEL_45:
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, v55, buf, 0xCu);
      }
    }

LABEL_46:
    v28 = 0;
    goto LABEL_47;
  }

  v25 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v26 = v25;
    *buf = 138543362;
    v64 = objc_opt_class();
    v27 = v64;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientConfigurationCreateWithAuthorization() returned NULL", buf, 0xCu);
  }

  v28 = 0;
LABEL_50:

  return v28;
}

- (void)_removeEAPConfiguration
{
  payload = [(MCNewPayloadHandler *)self payload];
  v4 = EAPOLClientConfigurationCreateWithAuthorization();
  if (v4)
  {
    v5 = v4;
    profileHandler = [(MCNewPayloadHandler *)self profileHandler];
    isSetAside = [profileHandler isSetAside];
    v8 = qword_100136A20;

    if (isSetAside)
    {
      if (!v8)
      {
        v9 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          v10 = v9;
          *v47 = 138543362;
          *&v47[4] = objc_opt_class();
          v11 = *&v47[4];
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@ failed to find set aside EAP profile", v47, 0xCu);
        }
      }
    }

    if (qword_100136A20)
    {
      ProfileWithID = EAPOLClientConfigurationGetProfileWithID();
    }

    else
    {
      if (![payload isHotspot])
      {
        ssid = [payload ssid];
        v38 = [ssid dataUsingEncoding:4];

        ProfileWithWLANSSID = EAPOLClientConfigurationGetProfileWithWLANSSID();
        if (ProfileWithWLANSSID)
        {
          goto LABEL_13;
        }

        goto LABEL_28;
      }

      [payload domainName];
      ProfileWithID = EAPOLClientConfigurationGetProfileWithWLANDomain();
    }

    ProfileWithWLANSSID = ProfileWithID;
    if (ProfileWithID)
    {
LABEL_13:
      if ([(MCNewWiFiPayloadHandler *)self _isMetadataValid:ProfileWithWLANSSID, *v47, *&v47[8]])
      {
        v17 = EAPOLClientItemIDCreateWithProfile();
        if (v17)
        {
          v18 = v17;
          if (!EAPOLClientItemIDRemovePasswordItem())
          {
            v19 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
            {
              v20 = v19;
              v21 = objc_opt_class();
              *v47 = 138543362;
              *&v47[4] = v21;
              v22 = v21;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ EAPOLClientItemIDRemovePasswordItem() failed", v47, 0xCu);
            }
          }

          if (!EAPOLClientItemIDSetIdentity())
          {
            v23 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
            {
              v24 = v23;
              v25 = objc_opt_class();
              *v47 = 138543362;
              *&v47[4] = v25;
              v26 = v25;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ EAPOLClientItemIDSetIdentity() failed", v47, 0xCu);
            }
          }

          if (EAPOLClientConfigurationRemoveProfile())
          {
            if (EAPOLClientConfigurationSave())
            {
              goto LABEL_39;
            }

            v27 = _MCLogObjects[0];
            if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_39;
            }

            v28 = v27;
            v29 = objc_opt_class();
            *v47 = 138543362;
            *&v47[4] = v29;
            v30 = v29;
            v31 = "%{public}@ EAPOLClientConfigurationSave() failed";
          }

          else
          {
            v44 = _MCLogObjects[0];
            if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
            {
LABEL_39:
              v46 = qword_100136A20;
              qword_100136A20 = 0;

              CFRelease(v18);
              goto LABEL_34;
            }

            v28 = v44;
            v45 = objc_opt_class();
            *v47 = 138543362;
            *&v47[4] = v45;
            v30 = v45;
            v31 = "%{public}@ EAPOLClientConfigurationRemoveProfile() failed";
          }

          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v31, v47, 0xCu);

          goto LABEL_39;
        }

        v41 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          v33 = v41;
          v42 = objc_opt_class();
          *v47 = 138543362;
          *&v47[4] = v42;
          v35 = v42;
          v36 = "%{public}@ EAPOLClientItemIDCreateWithProfile() returned NULL";
          goto LABEL_32;
        }

LABEL_33:
        v43 = qword_100136A20;
        qword_100136A20 = 0;

LABEL_34:
        CFRelease(v5);
        goto LABEL_35;
      }

      v32 = _MCLogObjects[0];
      if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      v33 = v32;
      v34 = objc_opt_class();
      *v47 = 138543362;
      *&v47[4] = v34;
      v35 = v34;
      v36 = "%{public}@ metadata validation failed";
LABEL_32:
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v36, v47, 0xCu);

      goto LABEL_33;
    }

LABEL_28:
    v39 = _MCLogObjects[0];
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    v33 = v39;
    v40 = objc_opt_class();
    *v47 = 138543362;
    *&v47[4] = v40;
    v35 = v40;
    v36 = "%{public}@ failed to find EAP profile";
    goto LABEL_32;
  }

  v13 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v14 = v13;
    *v47 = 138543362;
    *&v47[4] = objc_opt_class();
    v15 = *&v47[4];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientConfigurationCreateWithAuthorization() returned NULL", v47, 0xCu);
  }

LABEL_35:
}

- (BOOL)_setEAPConfigUsingEAPConfigAPI:(id)i
{
  iCopy = i;
  cf = 0;
  payload = [(MCNewPayloadHandler *)self payload];
  v6 = [iCopy mutableCopy];
  if ([payload usernameRequired] && (objc_msgSend(payload, "username"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v47 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v48 = v47;
      *buf = 138543362;
      v66 = objc_opt_class();
      v49 = v66;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%{public}@ username is not available", buf, 0xCu);
    }

    LODWORD(isHotspot) = 0;
  }

  else
  {
    LODWORD(isHotspot) = 1;
  }

  v9 = [v6 objectForKey:@"TLSTrustedCertificates"];

  if (v9)
  {
    if (!isHotspot)
    {
      goto LABEL_38;
    }

LABEL_26:
    certificateUUID = [payload certificateUUID];

    if (certificateUUID)
    {
      v32 = v6;
      profileHandler = [(MCNewPayloadHandler *)self profileHandler];
      certificateUUID2 = [payload certificateUUID];
      v35 = [profileHandler persistentIDForCertificateUUID:certificateUUID2];

      v36 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        v38 = objc_opt_class();
        *buf = 138543618;
        v66 = v38;
        v67 = 1026;
        LODWORD(v68) = v35 != 0;
        v39 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ handling identity certs? %{public}d", buf, 0x12u);
      }

      if (v35 && (EAPSecIdentityHandleCreateSecIdentity() || !cf))
      {
        v50 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          v51 = v50;
          v52 = objc_opt_class();
          *buf = 138543362;
          v66 = v52;
          v53 = v52;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ EAPSecIdentityHandleCreateSecIdentity() failed", buf, 0xCu);
        }

        LOBYTE(isHotspot) = 0;
        goto LABEL_37;
      }
    }

    username = [payload username];
    v35 = [username dataUsingEncoding:4];

    password = [payload password];
    v42 = [password dataUsingEncoding:4];

    v32 = v6;
    [v6 removeObjectForKey:@"UserPassword"];
    isHotspot = [payload isHotspot];
    if (isHotspot)
    {
      [payload domainName];
    }

    else
    {
      [payload ssid];
    }
    v43 = ;
    [payload encryptionType];
    v45 = v44 = payload;
    LOBYTE(isHotspot) = [(MCNewWiFiPayloadHandler *)self _installEAPConfiguration:v43 isHotspot:isHotspot securityType:v45 authProperties:v32 username:v35 password:v42 identity:cf];

    payload = v44;
LABEL_37:

    v6 = v32;
    goto LABEL_38;
  }

  v54 = isHotspot;
  v55 = v6;
  v57 = iCopy;
  v58 = +[NSMutableArray array];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v56 = payload;
  obj = [payload payloadCertificateAnchorUUID];
  v10 = [obj countByEnumeratingWithState:&v60 objects:v71 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v61;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v61 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v60 + 1) + 8 * i);
        profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
        v16 = [profileHandler2 persistentIDForCertificateUUID:v14];

        if (v16)
        {
          profileHandler3 = [(MCNewPayloadHandler *)self profileHandler];
          profile = [profileHandler3 profile];
          isInstalledForSystem = [profile isInstalledForSystem];

          v20 = [MCKeychain copyCertificateWithPersistentID:v16 useSystemKeychain:isInstalledForSystem];
          if (v20)
          {
            v21 = v20;
            v22 = SecCertificateCopyData(v20);
            if (v22)
            {
              v23 = _MCLogObjects[0];
              if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
              {
                v24 = v23;
                v25 = objc_opt_class();
                *buf = 138543874;
                v66 = v25;
                v67 = 2114;
                v68 = v14;
                v69 = 1026;
                v70 = isInstalledForSystem;
                v26 = v25;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ adding trusted certificate UUID %{public}@ with system keychain? %{public}d", buf, 0x1Cu);
              }

              [v58 addObject:v22];
            }

            CFRelease(v21);
          }
        }

        else
        {
          v27 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
          {
            v28 = v27;
            v29 = objc_opt_class();
            *buf = 138543618;
            v66 = v29;
            v67 = 2114;
            v68 = v14;
            v30 = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ certificate UUID %{public}@ referenced by this payload does not exist, skipping.", buf, 0x16u);
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v60 objects:v71 count:16];
    }

    while (v11);
  }

  v6 = v55;
  if ([v58 count])
  {
    [v55 setObject:v58 forKey:@"TLSTrustedCertificates"];
  }

  payload = v56;
  iCopy = v57;
  LOBYTE(isHotspot) = v54;
  if (v54)
  {
    goto LABEL_26;
  }

LABEL_38:
  if (cf)
  {
    CFRelease(cf);
  }

  return isHotspot;
}

- (void)setAsideEAPConfig
{
  payload = [(MCNewPayloadHandler *)self payload];
  v4 = qword_100136A20;
  qword_100136A20 = 0;

  v5 = EAPOLClientConfigurationCreateWithAuthorization();
  if (v5)
  {
    v6 = v5;
    if ([payload isHotspot])
    {
      [payload domainName];
      ProfileWithWLANDomain = EAPOLClientConfigurationGetProfileWithWLANDomain();
      v8 = 1;
      if (ProfileWithWLANDomain)
      {
LABEL_4:
        if ([(MCNewWiFiPayloadHandler *)self _isMetadataValid:ProfileWithWLANDomain])
        {
          v9 = EAPOLClientProfileGetID();
          v10 = qword_100136A20;
          qword_100136A20 = v9;

          if (qword_100136A20)
          {
            if (v8)
            {
              EAPOLClientProfileSetWLANDomain();
            }

            else
            {
              EAPOLClientProfileSetWLANSSIDAndSecurityType();
            }

            if (EAPOLClientConfigurationSave())
            {
              goto LABEL_22;
            }

            v22 = _MCLogObjects[0];
            if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_22;
            }

            v17 = v22;
            v23 = 138543362;
            v24 = objc_opt_class();
            v18 = v24;
            v19 = "%{public}@ EAPOLClientConfigurationSave() failed";
            goto LABEL_21;
          }

          v21 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            v17 = v21;
            v23 = 138543362;
            v24 = objc_opt_class();
            v18 = v24;
            v19 = "%{public}@ EAPOLClientProfileGetID() returned NULL";
            goto LABEL_21;
          }

LABEL_22:
          CFRelease(v6);
          goto LABEL_23;
        }

        v20 = _MCLogObjects[0];
        if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        v17 = v20;
        v23 = 138543362;
        v24 = objc_opt_class();
        v18 = v24;
        v19 = "%{public}@ metadata validation failed";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v19, &v23, 0xCu);

        goto LABEL_22;
      }
    }

    else
    {
      ssid = [payload ssid];
      v15 = [ssid dataUsingEncoding:4];

      ProfileWithWLANDomain = EAPOLClientConfigurationGetProfileWithWLANSSID();
      v8 = v15 == 0;
      if (ProfileWithWLANDomain)
      {
        goto LABEL_4;
      }
    }

    v16 = _MCLogObjects[0];
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v17 = v16;
    v23 = 138543362;
    v24 = objc_opt_class();
    v18 = v24;
    v19 = "%{public}@ failed to find EAP Profile";
    goto LABEL_21;
  }

  v11 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v12 = v11;
    v23 = 138543362;
    v24 = objc_opt_class();
    v13 = v24;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientConfigurationCreateWithAuthorization() returned NULL", &v23, 0xCu);
  }

LABEL_23:
}

- (void)unsetAsideEAPConfig
{
  payload = [(MCNewPayloadHandler *)self payload];
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];
  v6 = qword_100136A20;

  if (isSetAside && v6)
  {
    v7 = EAPOLClientConfigurationCreateWithAuthorization();
    if (v7)
    {
      v8 = v7;
      ProfileWithID = EAPOLClientConfigurationGetProfileWithID();
      v10 = qword_100136A20;
      qword_100136A20 = 0;

      if (ProfileWithID)
      {
        if ([payload isHotspot])
        {
          [payload domainName];
          EAPOLClientProfileSetWLANDomain();
        }

        else
        {
          ssid = [payload ssid];
          v19 = [ssid dataUsingEncoding:4];
          [payload encryptionType];
          EAPOLClientProfileSetWLANSSIDAndSecurityType();
        }

        if (EAPOLClientConfigurationSave())
        {
          goto LABEL_16;
        }

        v20 = _MCLogObjects[0];
        if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v15 = v20;
        v21 = 138543362;
        v22 = objc_opt_class();
        v16 = v22;
        v17 = "%{public}@ EAPOLClientConfigurationSave() failed";
      }

      else
      {
        v14 = _MCLogObjects[0];
        if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
LABEL_16:
          CFRelease(v8);
          goto LABEL_17;
        }

        v15 = v14;
        v21 = 138543362;
        v22 = objc_opt_class();
        v16 = v22;
        v17 = "%{public}@ EAPOLClientConfigurationGetProfileWithID() returned NULL";
      }

      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v17, &v21, 0xCu);

      goto LABEL_16;
    }

    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v21 = 138543362;
      v22 = objc_opt_class();
      v13 = v22;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@ EAPOLClientConfigurationCreateWithAuthorization() returned NULL", &v21, 0xCu);
    }
  }

LABEL_17:
}

- (BOOL)_setEAPConfig:(id)config onNetwork:(__WiFiNetwork *)network
{
  configCopy = config;
  payload = [(MCNewPayloadHandler *)self payload];
  sub_10005F874();
  v7 = [configCopy mutableCopy];
  if (![payload usernameRequired])
  {
    goto LABEL_4;
  }

  username = [payload username];

  if (username)
  {
    username2 = [payload username];
    [v7 setObject:username2 forKey:@"UserName"];

LABEL_4:
    v10 = 1;
    goto LABEL_5;
  }

  v39 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler requires a username but a username is not available.", buf, 2u);
  }

  v10 = 0;
LABEL_5:
  v11 = [v7 objectForKey:@"TLSTrustedCertificates"];

  if (v11)
  {
    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v43 = v10;
    v44 = v7;
    v46 = configCopy;
    v20 = +[NSMutableArray array];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v45 = payload;
    payloadCertificateAnchorUUID = [payload payloadCertificateAnchorUUID];
    v48 = [payloadCertificateAnchorUUID countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v48)
    {
      v22 = *v51;
      v47 = *v51;
      do
      {
        for (i = 0; i != v48; i = i + 1)
        {
          if (*v51 != v22)
          {
            objc_enumerationMutation(payloadCertificateAnchorUUID);
          }

          v24 = *(*(&v50 + 1) + 8 * i);
          profileHandler = [(MCNewPayloadHandler *)self profileHandler];
          v26 = [profileHandler persistentIDForCertificateUUID:v24];

          if (v26)
          {
            profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
            profile = [profileHandler2 profile];
            isInstalledForSystem = [profile isInstalledForSystem];

            v30 = [MCKeychain copyCertificateWithPersistentID:v26 useSystemKeychain:isInstalledForSystem];
            if (v30)
            {
              v31 = v30;
              v32 = SecCertificateCopyData(v30);
              if (v32)
              {
                v33 = payloadCertificateAnchorUUID;
                selfCopy = self;
                v35 = v20;
                v36 = _MCLogObjects[0];
                if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  *&buf[4] = v24;
                  v55 = 1026;
                  v56 = isInstalledForSystem;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler adding trusted certificate UUID %{public}@ with system keychain? %{public}d", buf, 0x12u);
                }

                v20 = v35;
                [v35 addObject:v32];
                self = selfCopy;
                payloadCertificateAnchorUUID = v33;
                v22 = v47;
              }

              CFRelease(v31);
            }
          }

          else
          {
            v37 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v24;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler certificate UUID %{public}@ referenced by this payload does not exist, skipping.", buf, 0xCu);
            }
          }
        }

        v48 = [payloadCertificateAnchorUUID countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v48);
    }

    v7 = v44;
    if ([v20 count])
    {
      [v44 setObject:v20 forKey:@"TLSTrustedCertificates"];
    }

    payload = v45;
    configCopy = v46;
    LOBYTE(v10) = v43;
    if (v43)
    {
LABEL_7:
      certificateUUID = [payload certificateUUID];

      if (!certificateUUID)
      {
LABEL_43:
        v40 = [NSDictionary dictionaryWithObject:v7 forKey:@"EAPClientConfiguration"];
        WiFiNetworkSetProperty();
        v41 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v40;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler setEAPConfig succeeded with EAP profile: %{public}@", buf, 0xCu);
        }

        goto LABEL_46;
      }

      profileHandler3 = [(MCNewPayloadHandler *)self profileHandler];
      certificateUUID2 = [payload certificateUUID];
      v15 = [profileHandler3 persistentIDForCertificateUUID:certificateUUID2];

      v16 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        *&buf[4] = v15 != 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler handling identity certs? %{public}d", buf, 8u);
      }

      if (v15)
      {
        *buf = 0;
        EAPSecIdentityHandleCreateSecIdentity();
        if (*buf && (v17 = EAPSecIdentityHandleCreate(), CFRelease(*buf), v17))
        {
          [v7 setObject:v17 forKey:@"TLSIdentityHandle"];
          CFRelease(v17);
          v18 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
          {
            *v49 = 0;
            v19 = "MCNewWiFiPayloadHandler set identity handle.";
LABEL_41:
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, v49, 2u);
          }
        }

        else
        {
          [v7 setObject:v15 forKey:@"TLSIdentityHandle"];
          v18 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
          {
            *v49 = 0;
            v19 = "MCNewWiFiPayloadHandler set persistent ID as identity handle.";
            goto LABEL_41;
          }
        }
      }

      goto LABEL_43;
    }
  }

  v38 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler setEAPConfig failed.", buf, 2u);
  }

LABEL_46:

  return v10;
}

- (void)_updateWiFiCustomSetWithSetID:(id)d forSSID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v7 = WiFiManagerClientCopyProperty();
  v8 = v7;
  if (v7)
  {
    v9 = [v7 mutableCopy];
    [v9 setObject:dCopy forKey:iDCopy];
    WiFiManagerClientSetProperty();
    v10 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v9;
      v11 = "MCNewWiFiPayloadHandler updated custom settings: %{public}@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, &v12, 0xCu);
    }
  }

  else
  {
    v9 = [NSDictionary dictionaryWithObject:dCopy forKey:iDCopy];
    WiFiManagerClientSetProperty();
    v10 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = dCopy;
      v11 = "MCNewWiFiPayloadHandler set custom settings: %{public}@";
      goto LABEL_6;
    }
  }
}

- (BOOL)_applyProxyCredential:(id)credential
{
  credentialCopy = credential;
  payload = [(MCNewPayloadHandler *)self payload];
  proxyServer = [payload proxyServer];
  v7 = [proxyServer length];
  if (v7)
  {
    v8 = +[NSURLCredentialStorage sharedCredentialStorage];
    profileHandler = [(MCNewPayloadHandler *)self profileHandler];
    profile = [profileHandler profile];
    [v8 set_useSystemKeychain:{objc_msgSend(profile, "isInstalledForSystem")}];

    proxyServerPort = [payload proxyServerPort];
    if (proxyServerPort)
    {
      proxyServerPort2 = [payload proxyServerPort];
      intValue = [proxyServerPort2 intValue];
    }

    else
    {
      intValue = 80;
    }

    v15 = [NSURLProtectionSpace alloc];
    proxyServer2 = [payload proxyServer];
    v17 = [v15 initWithProxyHost:proxyServer2 port:intValue type:NSURLProtectionSpaceHTTP realm:0 authenticationMethod:NSURLAuthenticationMethodDefault];

    v18 = [NSURLProtectionSpace alloc];
    proxyServer3 = [payload proxyServer];
    v20 = [v18 initWithProxyHost:proxyServer3 port:intValue type:NSURLProtectionSpaceHTTPS realm:0 authenticationMethod:NSURLAuthenticationMethodDefault];

    [v8 setDefaultCredential:credentialCopy forProtectionSpace:v17];
    [v8 setDefaultCredential:credentialCopy forProtectionSpace:v20];
  }

  else
  {
    v14 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler requires a proxy server to be provided.", v22, 2u);
    }
  }

  return v7 != 0;
}

- (BOOL)_configureEncryptionTypeForWiFiNetwork:(__WiFiNetwork *)network payload:(id)payload outError:(id *)error
{
  payloadCopy = payload;
  eapClientConfig = [payloadCopy eapClientConfig];

  if (eapClientConfig)
  {
    [payloadCopy isWPA];
    WiFiNetworkSetWPA();
    [payloadCopy isWEP];
    WiFiNetworkSetWEP();
    eapClientConfig2 = [payloadCopy eapClientConfig];
    v11 = [(MCNewWiFiPayloadHandler *)self _setEAPConfig:eapClientConfig2 onNetwork:network];

    if (v11)
    {
      v37 = @"IE_KEY_WPA_AUTHSELS";
      v38 = &off_1001272F8;
      LOBYTE(error) = 1;
      [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      WiFiNetworkSetProperty();
    }

    else if (error)
    {
      v15 = MCWiFiErrorDomain;
      mCAppendGreenteaSuffix = [@"ERROR_WIFI_COULD_NOT_SETUP_EAP" MCAppendGreenteaSuffix];
      ssid = [payloadCopy ssid];
      v18 = MCErrorArray();
      *error = [NSError MCErrorWithDomain:v15 code:13004 descriptionArray:v18 errorType:MCErrorTypeFatal, ssid, 0];

      LOBYTE(error) = 0;
    }

    goto LABEL_24;
  }

  encryptionType = [payloadCopy encryptionType];
  v13 = [encryptionType isEqualToString:kMCWiFiEncryptionTypeWEP];

  if (v13)
  {
    v14 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler setting WEP network", buf, 2u);
    }

    LOBYTE(error) = 1;
    WiFiNetworkSetWEP();
    goto LABEL_24;
  }

  encryptionType2 = [payloadCopy encryptionType];
  v20 = [encryptionType2 isEqualToString:kMCWiFiEncryptionTypeWPA];

  if (v20)
  {
    v21 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler setting WPA network", buf, 2u);
    }

    LOBYTE(error) = 1;
    WiFiNetworkSetWPA();
    goto LABEL_24;
  }

  encryptionType3 = [payloadCopy encryptionType];
  v23 = [encryptionType3 isEqualToString:kMCWiFiEncryptionTypeWPA2];

  if (v23)
  {
    v24 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler setting WPA2 network", buf, 2u);
    }

    LOBYTE(error) = 1;
LABEL_23:
    WiFiNetworkSetSAE();
    goto LABEL_24;
  }

  encryptionType4 = [payloadCopy encryptionType];
  v26 = [encryptionType4 isEqualToString:kMCWiFiEncryptionTypeWPA3];

  if (v26)
  {
    v27 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler setting WPA3 network", buf, 2u);
    }

    LOBYTE(error) = 1;
    goto LABEL_23;
  }

  encryptionType5 = [payloadCopy encryptionType];
  v30 = [encryptionType5 isEqualToString:kMCWiFiEncryptionTypeAny];

  v31 = _MCLogObjects[0];
  v32 = os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT);
  if (v30)
  {
    if (v32)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler setting Any-secured network", buf, 2u);
    }

    LOBYTE(error) = 1;
    WiFiNetworkSetWEP();
    WiFiNetworkSetWPA();
    goto LABEL_23;
  }

  if (v32)
  {
    v33 = v31;
    encryptionType6 = [payloadCopy encryptionType];
    *buf = 138543362;
    v36 = encryptionType6;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler encryption type not recognized: %{public}@", buf, 0xCu);
  }

  LOBYTE(error) = 1;
LABEL_24:

  return error;
}

- (BOOL)_networkServiceRequired
{
  payload = [(MCNewPayloadHandler *)self payload];
  proxyType = [payload proxyType];
  qosMarkingConfig = [payload qosMarkingConfig];
  LOBYTE(proxyPassword) = 1;
  if (![qosMarkingConfig count] && proxyType - 1 >= 2)
  {
    proxyUsername = [payload proxyUsername];
    if (proxyUsername)
    {
    }

    else
    {
      proxyPassword = [payload proxyPassword];

      if (proxyPassword)
      {
        LOBYTE(proxyPassword) = 1;
      }

      else
      {
        v7 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          proxyPassword = v7;
          ssid = [payload ssid];
          v10 = 138543362;
          v11 = ssid;
          _os_log_impl(&_mh_execute_header, proxyPassword, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler custom service not required for SSID: %{public}@", &v10, 0xCu);

          LOBYTE(proxyPassword) = 0;
        }
      }
    }
  }

  return proxyPassword;
}

- (BOOL)_configureNetworkServiceForWiFiNetwork:(__WiFiNetwork *)network outError:(id *)error
{
  payload = [(MCNewPayloadHandler *)self payload];
  v8 = SCPreferencesCreateWithAuthorization(0, @"com.apple.settings.wi-fi", 0, 0);
  if (!v8)
  {
    v21 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot create system configuration preferences.", buf, 2u);
    }

    goto LABEL_137;
  }

  v9 = v8;
  v10 = WiFiManagerClientCopyProperty();
  if (!SCPreferencesLock(v9, 1u))
  {
    v22 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot lock system configuration preferences.", buf, 2u);
    }

    CFRelease(v9);
    goto LABEL_137;
  }

  SCPreferencesSynchronize(v9);
  v11 = SCNetworkSetCopyAll(v9);
  if (!v11)
  {
    v23 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot retrieve network sets from system configuration.", buf, 2u);
    }

    v24 = 0;
    v25 = 1;
    goto LABEL_132;
  }

  v140 = a2;
  name = [payload ssid];
  v12 = [v10 objectForKey:?];
  v147 = v10;
  if (v12)
  {
    v13 = v12;
    v146 = payload;
    if (CFArrayGetCount(v11) >= 1)
    {
      v14 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
        SetID = SCNetworkSetGetSetID(ValueAtIndex);
        if (SetID)
        {
          if (([(__CFString *)SetID isEqualToString:v13]& 1) != 0)
          {
            break;
          }
        }

        if (++v14 >= CFArrayGetCount(v11))
        {
          goto LABEL_10;
        }
      }

      if (ValueAtIndex)
      {
        v47 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v153 = v13;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler attempting to modify service for custom set ID: %{public}@...", buf, 0xCu);
        }

        v48 = SCNetworkSetCopyServices(ValueAtIndex);
        if (!v48)
        {
          v60 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot get existing services.", buf, 2u);
          }

          v24 = 0;
          v44 = 0;
          v37 = 0;
          v150 = 0;
          v45 = 0;
          v25 = 1;
          v58 = 1;
          payload = v146;
          goto LABEL_124;
        }

        v49 = v48;
        errorCopy2 = error;
        if (CFArrayGetCount(v48) <= 0)
        {
          CFRelease(v49);
          set = 0;
          v150 = 0;
          goto LABEL_112;
        }

        v142 = v13;
        v37 = 0;
        v50 = 0;
        while (1)
        {
          v51 = CFArrayGetValueAtIndex(v49, v50);
          Interface = SCNetworkServiceGetInterface(v51);
          if (Interface)
          {
            v53 = Interface;
            while (1)
            {
              InterfaceType = SCNetworkInterfaceGetInterfaceType(v53);
              if (CFEqual(InterfaceType, kSCNetworkInterfaceTypeIEEE80211))
              {
                break;
              }

              v53 = SCNetworkInterfaceGetInterface(v53);
              if (!v53)
              {
                goto LABEL_80;
              }
            }

            if (!v37)
            {
              v55 = _MCLogObjects[0];
              if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler creating a new service...", buf, 2u);
              }

              v56 = SCNetworkServiceCreate(v9, v53);
              v37 = v56;
              if (!v56)
              {
                v99 = _MCLogObjects[0];
                if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  v100 = "MCNewWiFiPayloadHandler cannot create new service.";
                  goto LABEL_183;
                }

LABEL_184:
                CFRelease(v49);

                v24 = 0;
                v44 = 0;
                v150 = 0;
                v45 = 0;
                v25 = 1;
                v58 = 1;
                payload = v146;
                error = errorCopy2;
                goto LABEL_124;
              }

              if (!SCNetworkServiceEstablishDefaultConfiguration(v56))
              {
                v99 = _MCLogObjects[0];
                if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_184;
                }

                *buf = 0;
                v100 = "MCNewWiFiPayloadHandler cannot establish new service.";
LABEL_183:
                _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, v100, buf, 2u);
                goto LABEL_184;
              }

              if (!SCNetworkServiceRemove(v51))
              {
                v99 = _MCLogObjects[0];
                if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_184;
                }

                *buf = 0;
                v100 = "MCNewWiFiPayloadHandler cannot remove old service.";
                goto LABEL_183;
              }

              if (!SCNetworkSetAddService(ValueAtIndex, v37))
              {
                v99 = _MCLogObjects[0];
                if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_184;
                }

                *buf = 0;
                v100 = "MCNewWiFiPayloadHandler cannot add new service.";
                goto LABEL_183;
              }
            }
          }

LABEL_80:
          if (++v50 >= CFArrayGetCount(v49))
          {
            CFRelease(v49);
            if (v37)
            {
              CFRelease(v37);
            }

            set = 0;
            v150 = 0;
            v13 = v142;
            goto LABEL_112;
          }
        }
      }
    }

LABEL_10:
    v17 = _MCLogObjects[0];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot retrieve custom network set from system configuration.", buf, 2u);
    }

    payload = v146;
  }

  v18 = _MCLogObjects[0];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler attempting to create a new set for the network...", buf, 2u);
  }

  if (CFArrayGetCount(v11) < 1)
  {
    goto LABEL_29;
  }

  v19 = 0;
  while (1)
  {
    v20 = CFArrayGetValueAtIndex(v11, v19);
    if ([(__CFString *)SCNetworkSetGetName(v20) isEqualToString:@"Automatic"])
    {
      break;
    }

    if (++v19 >= CFArrayGetCount(v11))
    {
      goto LABEL_29;
    }
  }

  set = CFRetain(v20);
  if (!set)
  {
LABEL_29:
    v26 = _MCLogObjects[0];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "MCNewWiFiPayloadHandler cannot get default set; using current set instead.", buf, 2u);
    }

    set = SCNetworkSetCopyCurrent(v9);
    if (!set)
    {
      v43 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot copy default set from system configuration.", buf, 2u);
      }

      v24 = 0;
      v44 = 0;
      v37 = 0;
      v150 = 0;
      v45 = 0;
      goto LABEL_93;
    }
  }

  v27 = SCNetworkSetCreate(v9);
  if (!v27)
  {
    v46 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot create new set.", buf, 2u);
    }

    v24 = 0;
    v44 = 0;
    v37 = 0;
    v150 = 0;
    goto LABEL_87;
  }

  v28 = v27;
  SCNetworkSetSetName(v27, name);
  v29 = SCNetworkSetCopyServices(set);
  v150 = v28;
  if (!v29)
  {
    v57 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot get default services.", buf, 2u);
    }

    v24 = 0;
    v44 = 0;
    v37 = 0;
LABEL_87:
    v25 = 1;
    v58 = 1;
    v45 = set;
    goto LABEL_124;
  }

  v30 = v29;
  v146 = payload;
  errorCopy2 = error;
  if (CFArrayGetCount(v29) < 1)
  {
    v31 = v30;
    goto LABEL_108;
  }

  v31 = 0;
  service = 0;
  v32 = 0;
  do
  {
    v33 = CFArrayGetValueAtIndex(v30, v32);
    v34 = SCNetworkServiceGetInterface(v33);
    if (!v34)
    {
LABEL_40:
      v37 = v33;
      goto LABEL_50;
    }

    v35 = v34;
    while (1)
    {
      v36 = SCNetworkInterfaceGetInterfaceType(v35);
      if (CFEqual(v36, kSCNetworkInterfaceTypeIEEE80211))
      {
        break;
      }

      v35 = SCNetworkInterfaceGetInterface(v35);
      if (!v35)
      {
        goto LABEL_40;
      }
    }

    v38 = _MCLogObjects[0];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler found WiFi interface.", buf, 2u);
    }

    if (v31)
    {
      v37 = v33;
      v28 = v150;
      goto LABEL_50;
    }

    v39 = _MCLogObjects[0];
    v28 = v150;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler creating new service...", buf, 2u);
    }

    v40 = SCNetworkServiceCreate(v9, v35);
    if (!v40)
    {
      v95 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot create new service.", buf, 2u);
      }

      v37 = 0;
LABEL_169:
      payload = v146;
      error = errorCopy2;
LABEL_92:
      v45 = set;
      CFRelease(v30);
      v24 = 0;
      v44 = 0;
LABEL_93:
      v25 = 1;
      v58 = 1;
      goto LABEL_124;
    }

    v37 = v40;
    if (!SCNetworkServiceEstablishDefaultConfiguration(v40))
    {
      v96 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot establish new service.", buf, 2u);
      }

      goto LABEL_169;
    }

    service = v33;
    v31 = v37;
LABEL_50:
    if (!SCNetworkSetAddService(v28, v37))
    {
      v59 = _MCLogObjects[0];
      error = errorCopy2;
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot add new service.", buf, 2u);
      }

      v37 = v31;
      payload = v146;
      goto LABEL_92;
    }

    ++v32;
  }

  while (v32 < CFArrayGetCount(v30));
  if (v31 && service)
  {
    ServiceOrder = SCNetworkSetGetServiceOrder(set);
    if (ServiceOrder)
    {
      MutableCopy = CFArrayCreateMutableCopy(0, 0, ServiceOrder);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    }

    v61 = MutableCopy;
    Count = CFArrayGetCount(MutableCopy);
    ServiceID = SCNetworkServiceGetServiceID(service);
    v156.location = 0;
    v156.length = Count;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v61, v156, ServiceID);
    if (FirstIndexOfValue == -1)
    {
      v67 = _MCLogObjects[0];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v153 = v61;
        v154 = 2114;
        v155 = ServiceOrder;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler failed to set service order: %{public}@. Maintaining old order: %{public}@", buf, 0x16u);
      }

      v28 = v150;
    }

    else
    {
      v65 = FirstIndexOfValue;
      v66 = SCNetworkServiceGetServiceID(v31);
      CFArraySetValueAtIndex(v61, v65, v66);
      v28 = v150;
      SCNetworkSetSetServiceOrder(v150, v61);
      v67 = _MCLogObjects[0];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v153 = v61;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler set service order: %{public}@", buf, 0xCu);
      }
    }

    CFRelease(v61);
    CFRelease(v30);
LABEL_108:
    CFRelease(v31);
  }

  else
  {
    CFRelease(v30);
    if (v31)
    {
      goto LABEL_108;
    }
  }

  v68 = SCNetworkSetGetSetID(v28);
  WiFiNetworkSetProperty();
  v69 = _MCLogObjects[0];
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v153 = v68;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler set system configuration set ID: %{public}@", buf, 0xCu);
  }

  v13 = 0;
  ValueAtIndex = v150;
LABEL_112:
  v70 = objc_opt_new();
  [v70 activate];
  servicea = [v70 interfaceName];
  v138 = v70;
  [v70 invalidate];
  v71 = SCNetworkSetCopyServices(ValueAtIndex);
  if (!v71)
  {
    goto LABEL_120;
  }

  v72 = v71;
  if (CFArrayGetCount(v71) < 1)
  {
LABEL_119:
    CFRelease(v72);
    goto LABEL_120;
  }

  v73 = 0;
  v143 = v13;
  while (1)
  {
    v74 = CFArrayGetValueAtIndex(v72, v73);
    v75 = SCNetworkServiceGetInterface(v74);
    if ([(__CFString *)SCNetworkInterfaceGetInterfaceType(v75) isEqualToString:kSCNetworkInterfaceTypeIEEE80211])
    {
      break;
    }

LABEL_118:
    if (++v73 >= CFArrayGetCount(v72))
    {
      goto LABEL_119;
    }
  }

  v76 = SCNetworkInterfaceGetBSDName(v75);
  if (![v76 isEqualToString:servicea])
  {

    v13 = v143;
    goto LABEL_118;
  }

  v87 = _MCLogObjects[0];
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v153 = servicea;
    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler found WiFi service matching interface name: %{public}@", buf, 0xCu);
  }

  v44 = CFRetain(v74);
  CFRelease(v72);
  v13 = v143;
  if (!v44)
  {
LABEL_120:
    v77 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler could not find WiFi service in system configuration.", buf, 2u);
    }

    v44 = 0;
    v24 = 0;
    v25 = 1;
    v58 = 1;
    payload = v146;
    error = errorCopy2;
    v45 = set;
    goto LABEL_123;
  }

  v88 = SCNetworkSetGetServiceOrder(ValueAtIndex);
  if (([v88 containsObject:SCNetworkServiceGetServiceID(v44)] & 1) == 0)
  {
    sub_1000C2910(v140, self, v44);
  }

  payload = v146;
  qosMarkingConfig = [v146 qosMarkingConfig];
  if ([qosMarkingConfig count] && !SCNetworkInterfaceSetQoSMarkingPolicy())
  {
    v98 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler could not set WiFi service QoS Marking Policy in system configuration.", buf, 2u);
    }

    v24 = 0;
    v25 = 1;
    v58 = 1;
    goto LABEL_228;
  }

  v24 = SCNetworkServiceCopyProtocol(v44, kSCEntNetProxies);
  if (v24)
  {
    proxyType = [v146 proxyType];
    if (proxyType == 1)
    {
      v90 = +[NSMutableDictionary dictionary];
      proxyPACURLString = [v146 proxyPACURLString];

      if (proxyPACURLString)
      {
        [v90 setObject:&off_100127228 forKeyedSubscript:kSCPropNetProxiesProxyAutoConfigEnable];
        proxyPACURLString2 = [v146 proxyPACURLString];
        [v90 setObject:proxyPACURLString2 forKeyedSubscript:kSCPropNetProxiesProxyAutoConfigURLString];
      }

      else
      {
        [v90 setObject:&off_100127228 forKeyedSubscript:kSCPropNetProxiesProxyAutoDiscoveryEnable];
      }

      if ([v146 proxyPACFallbackAllowed])
      {
        v109 = &off_100127228;
      }

      else
      {
        v109 = &off_100127240;
      }

      [v90 setObject:v109 forKeyedSubscript:kSCPropNetProxiesFallBackAllowed];
      v108 = 2;
      goto LABEL_198;
    }

    if (proxyType == 2)
    {
      v90 = +[NSMutableDictionary dictionary];
      proxyServer = [v146 proxyServer];

      if (proxyServer)
      {
        proxyServer2 = [v146 proxyServer];
        [v90 setObject:proxyServer2 forKey:kSCPropNetProxiesHTTPProxy];

        proxyServer3 = [v146 proxyServer];
        [v90 setObject:proxyServer3 forKey:kSCPropNetProxiesHTTPSProxy];
      }

      proxyServerPort = [v146 proxyServerPort];
      if (proxyServerPort)
      {
        [v90 setObject:proxyServerPort forKey:kSCPropNetProxiesHTTPPort];
      }

      else
      {
        v103 = [NSNumber numberWithInt:80];
        [v90 setObject:v103 forKey:kSCPropNetProxiesHTTPPort];
      }

      proxyServerPort2 = [v146 proxyServerPort];
      if (proxyServerPort2)
      {
        [v90 setObject:proxyServerPort2 forKey:kSCPropNetProxiesHTTPSPort];
      }

      else
      {
        v105 = [NSNumber numberWithInt:80];
        [v90 setObject:v105 forKey:kSCPropNetProxiesHTTPSPort];
      }

      v106 = [NSNumber numberWithInt:1];
      [v90 setObject:v106 forKey:kSCPropNetProxiesHTTPEnable];

      v107 = [NSNumber numberWithInt:1];
      [v90 setObject:v107 forKey:kSCPropNetProxiesHTTPSEnable];

      v108 = 1;
LABEL_198:
      v110 = [NSNumber numberWithInt:v108];
      [v90 setObject:v110 forKey:@"HTTPProxyType"];
    }

    else
    {
      v90 = [(__CFDictionary *)SCNetworkProtocolGetConfiguration(v24) mutableCopy];
    }

    proxyUsername = [v146 proxyUsername];
    if (proxyUsername)
    {

      goto LABEL_202;
    }

    proxyPassword = [v146 proxyPassword];

    if (proxyPassword)
    {
LABEL_202:
      v113 = [NSNumber numberWithInt:1];
      [v90 setObject:v113 forKey:@"HTTPProxyAuthenticated"];

      proxyUsername2 = [v146 proxyUsername];
      v115 = proxyUsername2;
      if (proxyUsername2)
      {
        v116 = proxyUsername2;
      }

      else
      {
        v116 = &stru_10011E740;
      }

      [v90 setObject:v116 forKey:@"HTTPProxyUsername"];

      [v90 setObject:&stru_10011E740 forKey:@"HTTPProxyPassword"];
    }

    SCNetworkProtocolSetConfiguration(v24, v90);
    v117 = _MCLogObjects[0];
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v153 = v90;
      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler set proxy protocol configuration: %{public}@", buf, 0xCu);
    }

    v13 = v143;
  }

  else
  {
    v97 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot find proxy protocol for the WiFi service.", buf, 2u);
    }
  }

  SCPreferencesCommitChanges(v9);
  SCPreferencesApplyChanges(v9);
  SCPreferencesSynchronize(v9);
  SCPreferencesUnlock(v9);
  proxyUsername3 = [v146 proxyUsername];

  if (!proxyUsername3)
  {
LABEL_225:
    Property = WiFiNetworkGetProperty();
    if (Property)
    {
      [(MCNewWiFiPayloadHandler *)self _updateWiFiCustomSetWithSetID:Property forSSID:name];
    }

    v25 = 0;
    v58 = 0;
    goto LABEL_228;
  }

  proxyUsername4 = [v146 proxyUsername];
  proxyPassword2 = [v146 proxyPassword];
  v121 = [NSURLCredential credentialWithUser:proxyUsername4 password:proxyPassword2 persistence:2];

  v13 = v143;
  if (![(MCNewWiFiPayloadHandler *)self _applyProxyCredential:v121])
  {
    goto LABEL_218;
  }

  proxyUsername5 = [v146 proxyUsername];
  proxyPassword3 = [v146 proxyPassword];
  v124 = CFURLCredentialCreate();

  if (!v124)
  {
LABEL_224:

    payload = v146;
    goto LABEL_225;
  }

  Archive = _CFURLCredentialCreateArchive();
  if (!Archive)
  {
LABEL_223:
    CFRelease(v124);
    goto LABEL_224;
  }

  v126 = Archive;
  Data = CFPropertyListCreateData(0, Archive, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  CFRelease(v126);
  if (!Data)
  {
    v134 = _MCLogObjects[0];
    if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot serialize credential. Ignoring.", buf, 2u);
    }

    goto LABEL_222;
  }

  v128 = +[NSString MCMakeUUID];
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  profile = [profileHandler profile];
  v151 = 0;
  v137 = v128;
  +[MCKeychain setData:forService:account:label:description:useSystemKeychain:outError:](MCKeychain, "setData:forService:account:label:description:useSystemKeychain:outError:", Data, @"MCWiFiCredential", v128, 0, 0, [profile isInstalledForSystem], &v151);
  v130 = v151;

  v131 = Data;
  v132 = v130;
  CFRelease(v131);
  if (!v130)
  {
    v134 = v137;
    [v146 setCredentialUUID:v137];
    v13 = v143;
LABEL_222:

    goto LABEL_223;
  }

  v133 = _MCLogObjects[0];
  v13 = v143;
  if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v153 = v132;
    _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot commit credential to keychain with error: %{public}@", buf, 0xCu);
  }

  CFRelease(v124);
  payload = v146;
LABEL_218:

  v58 = 0;
  v25 = 1;
LABEL_228:
  error = errorCopy2;
  v45 = set;

LABEL_123:
  v37 = 0;
LABEL_124:

  if (v37)
  {
    SCNetworkServiceRemove(v37);
    CFRelease(v37);
  }

  if (v150)
  {
    SCNetworkSetRemove(v150);
    CFRelease(v150);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (!v44)
  {
    if (!v58)
    {
      goto LABEL_133;
    }

LABEL_132:
    SCPreferencesUnlock(v9);
    goto LABEL_133;
  }

  CFRelease(v44);
  if (v58)
  {
    goto LABEL_132;
  }

LABEL_133:
  if (v11)
  {
    CFRelease(v11);
  }

  CFRelease(v9);
  if (v24)
  {
    CFRelease(v24);
    if (v25)
    {
      goto LABEL_137;
    }

LABEL_143:
    mCAppendGreenteaSuffix = _MCLogObjects[0];
    if (os_log_type_enabled(mCAppendGreenteaSuffix, OS_LOG_TYPE_DEFAULT))
    {
      ssid = [payload ssid];
      *buf = 138543362;
      v153 = ssid;
      _os_log_impl(&_mh_execute_header, mCAppendGreenteaSuffix, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler successfully configured WiFi for SSID: %{public}@", buf, 0xCu);
    }

    v84 = 1;
LABEL_146:

    goto LABEL_147;
  }

  if (!v25)
  {
    goto LABEL_143;
  }

LABEL_137:
  v78 = _MCLogObjects[0];
  if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
  {
    ssid2 = [payload ssid];
    *buf = 138543362;
    v153 = ssid2;
    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler failed to configure WiFi for SSID: %{public}@", buf, 0xCu);
  }

  if (error)
  {
    v80 = MCWiFiErrorDomain;
    mCAppendGreenteaSuffix = [@"ERROR_WIFI_COULD_NOT_SETUP_PROXY" MCAppendGreenteaSuffix];
    ssid3 = [payload ssid];
    v83 = MCErrorArray();
    *error = [NSError MCErrorWithDomain:v80 code:13005 descriptionArray:v83 errorType:MCErrorTypeFatal, ssid3, 0];

    v84 = 0;
    goto LABEL_146;
  }

  v84 = 0;
LABEL_147:

  return v84;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  optionsCopy = options;
  payload = [(MCNewPayloadHandler *)self payload];
  _isWiFiDaemonAvailable = [(MCNewWiFiPayloadHandler *)self _isWiFiDaemonAvailable];
  v10 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (_isWiFiDaemonAvailable)
    {
      v11 = @"YES";
    }

    *buf = 138543362;
    *v93 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler Wi-Fi daemon is available (install): %{public}@", buf, 0xCu);
  }

  v12 = WiFiNetworkCreate();
  if (!v12 || ((self->_manager != 0) & _isWiFiDaemonAvailable) == 0)
  {
    v25 = optionsCopy;
    v26 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v27 = self->_manager != 0;
      *buf = 67240704;
      *v93 = v12 != 0;
      *&v93[4] = 1026;
      *&v93[6] = v27;
      LOWORD(v94) = 1026;
      *(&v94 + 2) = _isWiFiDaemonAvailable;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler cannot create WiFi network. Network? %{public}d, Manager? %{public}d, wifid? %{public}d", buf, 0x14u);
    }

    v28 = MCWiFiErrorDomain;
    mCAppendGreenteaSuffix = [@"ERROR_WIFI_COULD_NOT_CREATE" MCAppendGreenteaSuffix];
    uUID = MCErrorArray();
    v24 = [NSError MCErrorWithDomain:v28 code:13003 descriptionArray:uUID errorType:MCErrorTypeFatal, 0];
    goto LABEL_24;
  }

  [payload ssid];
  WiFiNetworkSetProperty();
  [NSNumber numberWithInt:2];
  WiFiNetworkSetProperty();
  [payload isHidden];
  WiFiNetworkSetDirectedState();
  v13 = [optionsCopy objectForKey:kMCInstallProfileOptionFilterFlag];
  intValue = [v13 intValue];

  if ((intValue & 2) != 0)
  {
    WiFiNetworkSetProperty();
    v15 = [objc_opt_class() _originatorIdentifierFromInstallationOptions:optionsCopy];
    if (v15)
    {
      WiFiNetworkAddSIMIdentifier();
    }

    v16 = [objc_opt_class() _originatorNameFromInstallationOptions:optionsCopy];
    if (v16)
    {
      WiFiNetworkSetOriginatorName();
    }

    isFirstAutoJoinRestricted = [payload isFirstAutoJoinRestricted];
    v18 = isFirstAutoJoinRestricted;
    if (isFirstAutoJoinRestricted)
    {
      [isFirstAutoJoinRestricted BOOLValue];
      WiFiNetworkDisableAutoJoinUntilFirstUserJoin();
    }

    v19 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      [payload ssid];
      v22 = v21 = self;
      *buf = 138544130;
      *v93 = v22;
      *&v93[8] = 2114;
      v94 = v16;
      v95 = 2114;
      v96 = v15;
      v97 = 2114;
      v98 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler Carrier Profile WiFi originator properties: SSID=%{public}@, name=%{public}@, identifier=%{public}@, autojoin=%{public}@", buf, 0x2Au);

      self = v21;
    }
  }

  [payload UUID];
  WiFiNetworkSetProperty();
  [payload organization];
  WiFiNetworkSetProperty();
  [payload identifier];
  WiFiNetworkSetProperty();
  if (([payload isWEP] & 1) == 0 && !objc_msgSend(payload, "isWPA"))
  {
    v24 = 0;
LABEL_36:
    if ([payload captiveBypass])
    {
      WiFiNetworkSetProperty();
    }

    if ([payload isHotspot])
    {
      WiFiNetworkSetProperty();
    }

    domainName = [payload domainName];

    if (domainName)
    {
      domainName2 = [payload domainName];
      WiFiNetworkSetProperty();
    }

    hESSID = [payload HESSID];

    if (hESSID)
    {
      hESSID2 = [payload HESSID];
      WiFiNetworkSetProperty();
    }

    [payload isServiceProviderRoamingEnabled];
    WiFiNetworkSetProperty();
    roamingConsortiumOIs = [payload roamingConsortiumOIs];
    v42 = [roamingConsortiumOIs count];

    if (v42)
    {
      roamingConsortiumOIs2 = [payload roamingConsortiumOIs];
      WiFiNetworkSetProperty();
    }

    nAIRealmNames = [payload NAIRealmNames];
    v45 = [nAIRealmNames count];

    if (v45)
    {
      nAIRealmNames2 = [payload NAIRealmNames];
      WiFiNetworkSetProperty();
    }

    mCCAndMNCs = [payload MCCAndMNCs];
    v48 = [mCCAndMNCs count];

    selfCopy = self;
    if (v48)
    {
      v81 = optionsCopy;
      mCCAndMNCs2 = [payload MCCAndMNCs];
      v50 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [mCCAndMNCs2 count]);

      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      mCCAndMNCs3 = [payload MCCAndMNCs];
      v52 = [mCCAndMNCs3 countByEnumeratingWithState:&v86 objects:v91 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v87;
        do
        {
          for (i = 0; i != v53; i = i + 1)
          {
            if (*v87 != v54)
            {
              objc_enumerationMutation(mCCAndMNCs3);
            }

            v56 = *(*(&v86 + 1) + 8 * i);
            if ([v56 characterAtIndex:3] == 48)
            {
              v57 = [v56 mutableCopy];
              [v57 replaceCharactersInRange:3 withString:{1, @"F"}];
              [v50 addObject:v57];
            }

            else
            {
              [v50 addObject:v56];
            }
          }

          v53 = [mCCAndMNCs3 countByEnumeratingWithState:&v86 objects:v91 count:16];
        }

        while (v53);
      }

      WiFiNetworkSetProperty();
      optionsCopy = v81;
    }

    displayedOperatorName = [payload displayedOperatorName];

    if (displayedOperatorName)
    {
      displayedOperatorName2 = [payload displayedOperatorName];
      WiFiNetworkSetProperty();
    }

    disableAssociationMACRandomization = [payload disableAssociationMACRandomization];

    if (disableAssociationMACRandomization)
    {
      v61 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        v62 = v61;
        disableAssociationMACRandomization2 = [payload disableAssociationMACRandomization];
        *buf = 138543362;
        *v93 = disableAssociationMACRandomization2;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler setting MAC randomization disable to: %{public}@", buf, 0xCu);
      }

      disableAssociationMACRandomization3 = [payload disableAssociationMACRandomization];
      [disableAssociationMACRandomization3 BOOLValue];
      WiFiNetworkSetProperty();
    }

    sub_10005F874();
    password = [payload password];
    v66 = [password length];

    if (v66)
    {
      v67 = optionsCopy;
      password2 = [payload password];
      ssid = [payload ssid];
      allowJoinBeforeFirstUnlock = [payload allowJoinBeforeFirstUnlock];
      v71 = &kSecAttrAccessibleAlways;
      if (!allowJoinBeforeFirstUnlock)
      {
        v71 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
      }

      selfCopy2 = self;
      v73 = *v71;
      profileHandler = [(MCNewPayloadHandler *)selfCopy2 profileHandler];
      profile = [profileHandler profile];
      v85 = v24;
      LOWORD(v80) = [profile isInstalledForSystem];
      [MCKeychain setString:password2 forService:@"AirPort" account:ssid label:0 description:0 access:v73 group:0 useSystemKeychain:v80 sysBound:&v85 outError:?];
      v76 = v85;

      if (v76)
      {
        v24 = v76;
        optionsCopy = v67;
        goto LABEL_25;
      }

      v24 = 0;
      optionsCopy = v67;
      self = selfCopy;
    }

    if ([(MCNewWiFiPayloadHandler *)self _networkServiceRequired])
    {
      v84 = v24;
      [(MCNewWiFiPayloadHandler *)self _configureNetworkServiceForWiFiNetwork:v12 outError:&v84];
      v77 = v84;

      if (v77)
      {
        v24 = v77;
        goto LABEL_25;
      }

      v24 = 0;
    }

    else
    {
      WiFiManagerClientRemoveNetworkConfiguration();
    }

    WiFiManagerClientAddNetwork();
    if (([payload autoJoin] & 1) == 0)
    {
      WiFiManagerClientDisableNetwork();
      WiFiManagerClientEnable();
    }

    if (![payload allowJoinBeforeFirstUnlock])
    {
LABEL_25:
      if (!v12)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v25 = optionsCopy;
    mCAppendGreenteaSuffix = +[MCDependencyManager sharedManager];
    uUID = [payload UUID];
    profile2 = [payload profile];
    identifier = [profile2 identifier];
    [mCAppendGreenteaSuffix addDependent:uUID ofParent:identifier inDomain:kMCMDMProfileIdentifierToWiFiRecoveryNetworkPayloadUUIDDependencyKey];

LABEL_24:
    optionsCopy = v25;
    goto LABEL_25;
  }

  v90 = 0;
  v23 = [(MCNewWiFiPayloadHandler *)self _configureEncryptionTypeForWiFiNetwork:v12 payload:payload outError:&v90];
  v24 = v90;
  if (v23)
  {
    goto LABEL_36;
  }

LABEL_26:
  CFRelease(v12);
LABEL_27:
  v31 = _MCLogObjects[0];
  if (v24)
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *v93 = v24;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler failed installWithInstaller with error: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      v32 = MCWiFiErrorDomain;
      mCAppendGreenteaSuffix2 = [@"ERROR_WIFI_COULD_NOT_INSTALL" MCAppendGreenteaSuffix];
      ssid2 = [payload ssid];
      v35 = MCErrorArray();
      *error = [NSError MCErrorWithDomain:v32 code:13000 descriptionArray:v35 underlyingError:v24 errorType:MCErrorTypeFatal, ssid2, 0];
    }
  }

  else if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler successfully completed installWithInstaller with no errors.", buf, 2u);
  }

  return v24 == 0;
}

+ (id)_originatorIdentifierFromInstallationOptions:(id)options
{
  v3 = [options objectForKey:kMCInstallProfileOptionCarrierIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_originatorNameFromInstallationOptions:(id)options
{
  v3 = [options objectForKey:kMCInstallProfileOptionCarrierName];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isInstalled
{
  if (self->_manager && (v3 = WiFiManagerClientCopyNetworks()) != 0)
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    if (Count < 1)
    {
      v7 = 0;
    }

    else
    {
      v6 = Count;
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        if (CFArrayGetValueAtIndex(v4, i))
        {
          v9 = WiFiNetworkGetProperty();
          if (v9)
          {
            payload = [(MCNewPayloadHandler *)self payload];
            uUID = [payload UUID];
            v12 = [v9 isEqualToString:uUID] ^ 1;

            v7 |= v12;
          }

          else
          {
            v7 = 1;
          }
        }
      }
    }

    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)_isWiFiDaemonAvailable
{
  if (!self->_manager)
  {
    return 0;
  }

  v2 = WiFiManagerClientCopyDevices();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFArrayGetCount(v2) > 0;
  CFRelease(v3);
  return v4;
}

- (void)_removeProxyCredential
{
  payload = [(MCNewPayloadHandler *)self payload];
  proxyServer = [payload proxyServer];
  if (proxyServer)
  {
    v5 = proxyServer;
    proxyType = [payload proxyType];

    if (proxyType == 2)
    {
      proxyServerPort = [payload proxyServerPort];
      if (proxyServerPort)
      {
        proxyServerPort2 = [payload proxyServerPort];
        intValue = [proxyServerPort2 intValue];
      }

      else
      {
        intValue = 80;
      }

      v10 = +[NSURLCredentialStorage sharedCredentialStorage];
      profileHandler = [(MCNewPayloadHandler *)self profileHandler];
      profile = [profileHandler profile];
      [v10 set_useSystemKeychain:{objc_msgSend(profile, "isInstalledForSystem")}];

      v13 = [NSURLProtectionSpace alloc];
      proxyServer2 = [payload proxyServer];
      v15 = [v13 initWithProxyHost:proxyServer2 port:intValue type:NSURLProtectionSpaceHTTP realm:0 authenticationMethod:NSURLAuthenticationMethodDefault];

      v16 = [v10 defaultCredentialForProtectionSpace:v15];
      if (v16)
      {
        v25 = NSURLCredentialStorageRemoveSynchronizableCredentials;
        v26 = &__kCFBooleanTrue;
        v17 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        [v10 removeCredential:v16 forProtectionSpace:v15 options:v17];
      }

      v18 = [NSURLProtectionSpace alloc];
      proxyServer3 = [payload proxyServer];
      v20 = [v18 initWithProxyHost:proxyServer3 port:intValue type:NSURLProtectionSpaceHTTPS realm:0 authenticationMethod:NSURLAuthenticationMethodDefault];

      v21 = [v10 defaultCredentialForProtectionSpace:v20];
      if (v21)
      {
        v23 = NSURLCredentialStorageRemoveSynchronizableCredentials;
        v24 = &__kCFBooleanTrue;
        v22 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        [v10 removeCredential:v21 forProtectionSpace:v20 options:v22];
      }
    }
  }
}

- (void)_removeNetworkWithUUID:(id)d isAllowedBeforeFirstUnlock:(BOOL)unlock
{
  dCopy = d;
  v6 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler removing WiFi network with UUID: %{public}@", buf, 0xCu);
  }

  if (self->_manager)
  {
    v7 = WiFiManagerClientCopyNetworks();
    if (v7)
    {
      v8 = v7;
      Count = CFArrayGetCount(v7);
      v10 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v18) = Count;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler iterating over %d WiFi networks", buf, 8u);
      }

      if (Count >= 1)
      {
        v11 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(v8, v11);
          v12 = WiFiNetworkGetProperty();
          v13 = WiFiNetworkGetSSID();
          v14 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v18 = v13;
            v19 = 2114;
            v20 = v12;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "MCNewWiFiPayloadHandler considering WiFi network %{public}@ with payload UUID: %{public}@", buf, 0x16u);
          }

          if (v12 && [v12 isEqualToString:dCopy])
          {
            break;
          }

          if (Count == ++v11)
          {
            goto LABEL_20;
          }
        }

        v16 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v18 = v13;
          v19 = 2114;
          v20 = v12;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler calling WiFiManagerClientRemoveNetwork() for WiFi network %{public}@ with payload UUID: %{public}@", buf, 0x16u);
        }

        WiFiNetworkIsEAP();
        WiFiManagerClientRemoveNetwork();
      }

LABEL_20:
      CFRelease(v8);
    }

    else
    {
      v15 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler WiFiManagerClientCopyNetworks returned nil.", buf, 2u);
      }
    }

    sub_10005F874();
  }
}

- (void)setAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  if ([payload allowJoinBeforeFirstUnlock])
  {
    v3 = +[MCDependencyManager sharedManager];
    uUID = [payload UUID];
    profile = [payload profile];
    identifier = [profile identifier];
    [v3 removeDependent:uUID fromParent:identifier inDomain:kMCMDMProfileIdentifierToWiFiRecoveryNetworkPayloadUUIDDependencyKey];
  }

  if (self->_manager)
  {
    v7 = WiFiManagerClientCopyNetworks();
    if (v7)
    {
      v8 = v7;
      v18 = 32;
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        v10 = Count;
        v11 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(v8, v11);
          v12 = WiFiNetworkGetProperty();
          if (v12)
          {
            payload2 = [(MCNewPayloadHandler *)self payload];
            uUID2 = [payload2 UUID];
            v15 = [v12 isEqualToString:uUID2];

            if (v15)
            {
              break;
            }
          }

          if (v10 == ++v11)
          {
            goto LABEL_12;
          }
        }

        v16 = +[NSString MCMakeUUID];
        setAsideUUID = self->_setAsideUUID;
        self->_setAsideUUID = v16;

        WiFiNetworkSetProperty();
        WiFiManagerClientUpdateNetwork();
        WiFiNetworkIsEAP();
      }

LABEL_12:
      CFRelease(v8);
    }

    if ([payload proxyType] == 2)
    {
      [(MCNewWiFiPayloadHandler *)self _removeProxyCredential];
    }

    sub_10005F874();
  }
}

- (void)unsetAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  if ([payload allowJoinBeforeFirstUnlock])
  {
    v3 = +[MCDependencyManager sharedManager];
    uUID = [payload UUID];
    profile = [payload profile];
    identifier = [profile identifier];
    [v3 addDependent:uUID ofParent:identifier inDomain:kMCMDMProfileIdentifierToWiFiRecoveryNetworkPayloadUUIDDependencyKey];
  }

  if (self->_manager)
  {
    profileHandler = [(MCNewPayloadHandler *)self profileHandler];
    isSetAside = [profileHandler isSetAside];

    if (isSetAside)
    {
      v9 = WiFiManagerClientCopyNetworks();
      if (v9)
      {
        v10 = v9;
        Count = CFArrayGetCount(v9);
        if (Count >= 1)
        {
          v12 = Count;
          v13 = 0;
          while (1)
          {
            CFArrayGetValueAtIndex(v10, v13);
            v14 = WiFiNetworkGetProperty();
            v15 = v14;
            if (v14)
            {
              if ([v14 isEqualToString:self->_setAsideUUID])
              {
                break;
              }
            }

            if (v12 == ++v13)
            {
              goto LABEL_15;
            }
          }

          [payload UUID];
          WiFiNetworkSetProperty();
          WiFiManagerClientUpdateNetwork();
          Property = WiFiNetworkGetProperty();
          if (Property)
          {
            v17 = Property;
            ssid = [payload ssid];
            [(MCNewWiFiPayloadHandler *)self _updateWiFiCustomSetWithSetID:v17 forSSID:ssid];
          }

          WiFiNetworkIsEAP();
        }

LABEL_15:
        CFRelease(v10);
      }

      sub_10005F874();
      setAsideUUID = self->_setAsideUUID;
      self->_setAsideUUID = 0;
    }

    credentialUUID = [payload credentialUUID];
    if (credentialUUID)
    {
      profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
      profile2 = [profileHandler2 profile];
      v23 = +[MCKeychain dataFromService:account:label:description:useSystemKeychain:outError:](MCKeychain, "dataFromService:account:label:description:useSystemKeychain:outError:", @"MCWiFiCredential", credentialUUID, 0, 0, [profile2 isInstalledForSystem], 0);

      if (v23)
      {
        v24 = CFPropertyListCreateWithData(0, v23, 0, 0, 0);
        if (v24)
        {
          v25 = v24;
          v26 = _CFURLCredentialCreateFromArchive();
          if (v26)
          {
            v27 = v26;
            v28 = CFURLCredentialGetUsername();
            v29 = CFURLCredentialCopyPassword();
            v30 = [NSURLCredential credentialWithUser:v28 password:v29 persistence:2];
            [(MCNewWiFiPayloadHandler *)self _applyProxyCredential:v30];
            CFRelease(v27);
          }

          CFRelease(v25);
        }
      }
    }
  }
}

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];
  v5 = &stru_10011E740;
  if (isSetAside)
  {
    v5 = @"set-aside ";
  }

  v6 = v5;

  payload = [(MCNewPayloadHandler *)self payload];
  profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
  if ([profileHandler2 isSetAside])
  {
    uUID = self->_setAsideUUID;
  }

  else
  {
    payload2 = [(MCNewPayloadHandler *)self payload];
    uUID = [payload2 UUID];
  }

  v11 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 138543618;
    *&v31[4] = v6;
    *&v31[12] = 2114;
    *&v31[14] = uUID;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler removing %{public}@WiFi payload with UUID: %{public}@", v31, 0x16u);
  }

  _isWiFiDaemonAvailable = [(MCNewWiFiPayloadHandler *)self _isWiFiDaemonAvailable];
  v13 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    if (_isWiFiDaemonAvailable)
    {
      v14 = @"YES";
    }

    *v31 = 138543362;
    *&v31[4] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler Wi-Fi daemon is available (remove): %{public}@", v31, 0xCu);
  }

  if (!self->_manager)
  {
    v18 = _MCLogObjects[0];
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *v31 = 138543618;
    *&v31[4] = v6;
    *&v31[12] = 2114;
    *&v31[14] = uUID;
    v19 = "MCNewWiFiPayloadHandler unable to remove %{public}@WiFi payload with UUID: %{public}@ - no manager";
    goto LABEL_22;
  }

  if ((_isWiFiDaemonAvailable & 1) == 0)
  {
    v18 = _MCLogObjects[0];
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *v31 = 138543618;
    *&v31[4] = v6;
    *&v31[12] = 2114;
    *&v31[14] = uUID;
    v19 = "MCNewWiFiPayloadHandler unable to remove %{public}@WiFi payload with UUID: %{public}@ - wifid not available";
    goto LABEL_22;
  }

  if ([payload allowJoinBeforeFirstUnlock] && MKBDeviceUnlockedSinceBoot() != 1)
  {
    v18 = _MCLogObjects[0];
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *v31 = 138543618;
    *&v31[4] = v6;
    *&v31[12] = 2114;
    *&v31[14] = uUID;
    v19 = "MCNewWiFiPayloadHandler unable to remove %{public}@WiFi payload with UUID: %{public}@ - before first unlock";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, v31, 0x16u);
    goto LABEL_29;
  }

  profileHandler3 = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside2 = [profileHandler3 isSetAside];

  if (isSetAside2)
  {
    -[MCNewWiFiPayloadHandler _removeNetworkWithUUID:isAllowedBeforeFirstUnlock:](self, "_removeNetworkWithUUID:isAllowedBeforeFirstUnlock:", self->_setAsideUUID, [payload allowJoinBeforeFirstUnlock]);
    setAsideUUID = self->_setAsideUUID;
    self->_setAsideUUID = 0;
  }

  else
  {
    payload3 = [(MCNewPayloadHandler *)self payload];
    uUID2 = [payload3 UUID];
    -[MCNewWiFiPayloadHandler _removeNetworkWithUUID:isAllowedBeforeFirstUnlock:](self, "_removeNetworkWithUUID:isAllowedBeforeFirstUnlock:", uUID2, [payload allowJoinBeforeFirstUnlock]);

    [(MCNewWiFiPayloadHandler *)self _removeProxyCredential];
  }

  credentialUUID = [payload credentialUUID];
  if (credentialUUID)
  {
    v23 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 138543362;
      *&v31[4] = credentialUUID;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "MCNewWiFiPayloadHandler removing credential with UUID: %{public}@", v31, 0xCu);
    }

    profileHandler4 = [(MCNewPayloadHandler *)self profileHandler];
    profile = [profileHandler4 profile];
    +[MCKeychain removeItemForService:account:label:description:useSystemKeychain:group:](MCKeychain, "removeItemForService:account:label:description:useSystemKeychain:group:", @"MCWiFiCredential", credentialUUID, 0, 0, [profile isInstalledForSystem], 0);
  }

LABEL_29:
  v26 = [(MCNewPayloadHandler *)self profileHandler:*v31];
  if ([v26 isSetAside])
  {
LABEL_32:

    goto LABEL_33;
  }

  allowJoinBeforeFirstUnlock = [payload allowJoinBeforeFirstUnlock];

  if (allowJoinBeforeFirstUnlock)
  {
    v26 = +[MCDependencyManager sharedManager];
    uUID3 = [payload UUID];
    profile2 = [payload profile];
    identifier = [profile2 identifier];
    [v26 removeDependent:uUID3 fromParent:identifier inDomain:kMCMDMProfileIdentifierToWiFiRecoveryNetworkPayloadUUIDDependencyKey];

    goto LABEL_32;
  }

LABEL_33:
}

- (BOOL)canInstallPayloadWithJoinBeforeFirstUnlock:(id)unlock error:(id *)error
{
  v5 = +[MDMCloudConfiguration sharedConfiguration];
  [v5 refreshDetailsFromDisk];
  if ([v5 isRapidReturnToService])
  {
    mCAppendGreenteaSuffix2 = +[MCDependencyManager sharedReader];
    v7 = kMCMDMProfileIdentifierToWiFiRecoveryNetworkPayloadUUIDDependencyKey;
    v8 = [mCAppendGreenteaSuffix2 parentsInDomain:kMCMDMProfileIdentifierToWiFiRecoveryNetworkPayloadUUIDDependencyKey];
    if ([v8 count])
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [mCAppendGreenteaSuffix2 dependentsOfParent:v9 inDomain:v7];

      v11 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = [v10 objectAtIndexedSubscript:0];
        v14 = [v8 objectAtIndexedSubscript:0];
        *buf = 138543618;
        v25 = v13;
        v26 = 2114;
        v27 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler: another WiFi payload (%{public}@) in profile with identifier: %{public}@ already has auto join before first unlock set", buf, 0x16u);
      }

      v15 = MCWiFiErrorDomain;
      mCAppendGreenteaSuffix = [@"ERROR_WIFI_ONLY_ONE_RECOVERY_NETWORK" MCAppendGreenteaSuffix];
      v17 = MCErrorArray();
      v18 = [NSError MCErrorWithDomain:v15 code:13006 descriptionArray:v17 errorType:MCErrorTypeFatal, 0];
    }

    else
    {
      v18 = 0;
    }

    v21 = v18 == 0;
  }

  else
  {
    v19 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "MCNewWiFiPayloadHandler AutoJoinBeforeFirstUnlock not supported outside of RTS mode", buf, 2u);
    }

    v20 = MCWiFiErrorDomain;
    mCAppendGreenteaSuffix2 = [@"ERROR_WIFI_ONLY_ALLOWED_IN_RTS_MODE" MCAppendGreenteaSuffix];
    v8 = MCErrorArray();
    v18 = [NSError MCErrorWithDomain:v20 code:13007 descriptionArray:v8 errorType:MCErrorTypeFatal, 0];
    v21 = 0;
  }

  if (error && v18)
  {
    v22 = v18;
    *error = v18;
  }

  return v21;
}

+ (id)managedWiFiNetworkNames
{
  v2 = +[NSMutableArray array];
  if (qword_100136B90)
  {
    goto LABEL_5;
  }

  qword_100136B90 = WiFiManagerClientCreate();
  v3 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    v17 = 67109120;
    LODWORD(v18) = qword_100136B90 != 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "MCNewWiFiPayloadHandler attempted to create WiFiManagerClient and got success status: %d", &v17, 8u);
  }

  if (qword_100136B90)
  {
LABEL_5:
    v4 = WiFiManagerClientCopyNetworks();
    v5 = v4;
    if (v4)
    {
      Count = CFArrayGetCount(v4);
    }

    else
    {
      Count = 0;
    }

    v7 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      v17 = 134217984;
      v18 = Count;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "MCNewWiFiPayloadHandler checking %ld networks for profile-installed configurations...", &v17, 0xCu);
    }

    if (Count >= 1)
    {
      for (i = 0; Count != i; ++i)
      {
        if (CFArrayGetValueAtIndex(v5, i))
        {
          if (WiFiNetworkGetProperty())
          {
            SSID = WiFiNetworkGetSSID();
            if (SSID)
            {
              [v2 addObject:SSID];
            }

            else
            {
              v14 = _MCLogObjects[0];
              if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
              {
                LOWORD(v17) = 0;
                v11 = v14;
                v12 = "MCNewWiFiPayloadHandler skipped Wi-Fi network missing SSID";
                goto LABEL_22;
              }
            }
          }

          else
          {
            v13 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
            {
              LOWORD(v17) = 0;
              v11 = v13;
              v12 = "MCNewWiFiPayloadHandler skipped Wi-Fi network missing UUID";
              goto LABEL_22;
            }
          }
        }

        else
        {
          v10 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v17) = 0;
            v11 = v10;
            v12 = "MCNewWiFiPayloadHandler skipped non-existent Wi-Fi network";
LABEL_22:
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, v12, &v17, 2u);
          }
        }
      }
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  v15 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    v17 = 138543362;
    v18 = v2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "MCNewWiFiPayloadHandler managed Wi-Fi networks: %{public}@", &v17, 0xCu);
  }

  return v2;
}

@end