@interface MCVPNPayloadBase
+ (id)NEAlwaysOnVPNPayloadBaseDelegateWithConfigurationDict:(id)dict;
+ (id)NEVPNPayloadBaseDelegateWithConfigurationDict:(id)dict;
- (MCVPNPayloadBase)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)installationWarnings;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)verboseDescription;
@end

@implementation MCVPNPayloadBase

+ (id)NEVPNPayloadBaseDelegateWithConfigurationDict:(id)dict
{
  dictCopy = dict;
  MCNEProfileIngestionClass(dictCopy);
  v4 = [objc_alloc(NSClassFromString(&cfstr_Neprofilepaylo_0.isa)) initWithPayload:dictCopy];

  return v4;
}

+ (id)NEAlwaysOnVPNPayloadBaseDelegateWithConfigurationDict:(id)dict
{
  dictCopy = dict;
  MCNEProfileIngestionClass(dictCopy);
  v4 = [objc_alloc(NSClassFromString(&cfstr_Neprofilepaylo.isa)) initWithPayload:dictCopy];

  return v4;
}

- (MCVPNPayloadBase)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v98[6] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v89.receiver = self;
  v89.super_class = MCVPNPayloadBase;
  v10 = [(MCPayload *)&v89 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (v10)
  {
    if ([profileCopy isStub])
    {
      v11 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ServiceName" isRequired:0 outError:0];
      serviceName = v10->_serviceName;
      v10->_serviceName = v11;

      v13 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"VPNType" isRequired:0 outError:0];
      vpnType = v10->_vpnType;
      v10->_vpnType = v13;
LABEL_10:

      goto LABEL_11;
    }

    v88 = 0;
    v15 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"VPNType" isRequired:1 outError:&v88];
    vpnType = v88;
    v16 = v10->_vpnType;
    v10->_vpnType = v15;

    if (vpnType)
    {
      goto LABEL_5;
    }

    v98[0] = @"VPN";
    v98[1] = @"L2TP";
    v98[2] = @"PPTP";
    v98[3] = @"IPSec";
    v98[4] = @"IKEv2";
    v98[5] = @"AlwaysOn";
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:6];
    v27 = [v26 containsObject:v10->_vpnType];

    if ((v27 & 1) == 0)
    {
      vpnType = [MCPayload badFieldTypeErrorWithField:@"VPNType"];
      if (!vpnType)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }

    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
    configurationDictionary = v10->_configurationDictionary;
    v10->_configurationDictionary = v28;

    displayName = v10->super._displayName;
    if (displayName)
    {
      [(NSMutableDictionary *)v10->_configurationDictionary setObject:displayName forKeyedSubscript:@"PayloadDisplayName"];
    }

    v80 = v10->_configurationDictionary;
    v96[0] = @"Enabled";
    v97[0] = objc_opt_class();
    v96[1] = @"VPNApplicationBundleID";
    v97[1] = objc_opt_class();
    v96[2] = @"VPNApplicationID";
    v97[2] = objc_opt_class();
    v96[3] = @"AppRules";
    v97[3] = objc_opt_class();
    v96[4] = @"PayloadCertificateHash";
    v97[4] = objc_opt_class();
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:5];
    v87 = 0;
    v32 = [dictionaryCopy MCMutableDictionaryContainingValidatedKeysAndClasses:v31 removeKeys:1 outError:&v87];
    vpnType = v87;
    [(NSMutableDictionary *)v80 addEntriesFromDictionary:v32];

    if (vpnType)
    {
      goto LABEL_5;
    }

    if ([(NSString *)v10->_vpnType isEqualToString:@"AlwaysOn"])
    {
      v33 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"UserDefinedName" isRequired:0 outError:0];
      v34 = v10->_serviceName;
      v10->_serviceName = v33;

      [(NSMutableDictionary *)v10->_configurationDictionary setObject:v10->_vpnType forKeyedSubscript:@"VPNType"];
      v35 = v10->_serviceName;
      if (v35)
      {
        [(NSMutableDictionary *)v10->_configurationDictionary setObject:v35 forKeyedSubscript:@"UserDefinedName"];
      }

      v86 = 0;
      v36 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"AlwaysOn" isRequired:1 outError:&v86];
      vpnType = v86;
      if (!vpnType)
      {
        [(NSMutableDictionary *)v10->_configurationDictionary setObject:v36 forKeyedSubscript:@"AlwaysOn"];
        v37 = [MCVPNPayloadBase NEAlwaysOnVPNPayloadBaseDelegateWithConfigurationDict:v10->_configurationDictionary];
        nePayloadBase = v10->_nePayloadBase;
        v10->_nePayloadBase = v37;

        validatePayload = [(NEProfilePayloadBaseDelegate *)v10->_nePayloadBase validatePayload];
        if (validatePayload)
        {
          v47 = validatePayload;
          v48 = MEMORY[0x1E696ABC0];
          v49 = MCErrorArray(@"ERROR_VPN_COULD_NOT_PARSE", v40, v41, v42, v43, v44, v45, v46, 0);
          vpnType = [v48 MCErrorWithDomain:@"MCVPNErrorDomain" code:15005 descriptionArray:v49 underlyingError:v47 errorType:@"MCFatalError"];
        }

        else
        {
          vpnType = 0;
        }
      }

      goto LABEL_46;
    }

    v50 = v10->_configurationDictionary;
    v94[0] = @"VendorConfig";
    v95[0] = objc_opt_class();
    v94[1] = @"OverridePrimary";
    v95[1] = objc_opt_class();
    v94[2] = @"OnDemandEnabled";
    v95[2] = objc_opt_class();
    v94[3] = @"OnDemandMatchDomainsAlways";
    v95[3] = objc_opt_class();
    v94[4] = @"OnDemandMatchDomainsNever";
    v95[4] = objc_opt_class();
    v94[5] = @"OnDemandMatchDomainsOnRetry";
    v95[5] = objc_opt_class();
    v94[6] = @"OnDemandRules";
    v95[6] = objc_opt_class();
    v94[7] = @"IPv4";
    v95[7] = objc_opt_class();
    v94[8] = @"PPP";
    v95[8] = objc_opt_class();
    v94[9] = @"IPSec";
    v95[9] = objc_opt_class();
    v94[10] = @"IKEv2";
    v95[10] = objc_opt_class();
    v94[11] = @"Proxies";
    v95[11] = objc_opt_class();
    v94[12] = @"DNS";
    v95[12] = objc_opt_class();
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v95 forKeys:v94 count:13];
    v85 = 0;
    v52 = [dictionaryCopy MCMutableDictionaryContainingValidatedKeysAndClasses:v51 removeKeys:1 outError:&v85];
    vpnType = v85;
    [(NSMutableDictionary *)v50 addEntriesFromDictionary:v52];

    if (vpnType || (-[NSMutableDictionary setObject:forKeyedSubscript:](v10->_configurationDictionary, "setObject:forKeyedSubscript:", v10->_vpnType, @"VPNType"), v84 = 0, [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"UserDefinedName" isRequired:0 outError:&v84], v53 = objc_claimAutoreleasedReturnValue(), vpnType = v84, v54 = v10->_serviceName, v10->_serviceName = v53, v54, vpnType))
    {
LABEL_5:
      v17 = [(MCPayload *)v10 malformedPayloadErrorWithError:vpnType];
      v18 = v17;
      if (error)
      {
        v19 = v17;
        *error = v18;
      }

      v20 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
        v22 = objc_opt_class();
        v23 = v22;
        mCVerboseDescription = [v18 MCVerboseDescription];
        *buf = 138543618;
        v91 = v22;
        v92 = 2114;
        v93 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v21, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_10;
    }

    v55 = v10->_serviceName;
    if (v55)
    {
      [(NSMutableDictionary *)v10->_configurationDictionary setObject:v55 forKeyedSubscript:@"UserDefinedName"];
    }

    v83 = 0;
    v56 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"VPN" isRequired:0 outError:&v83];
    vpnType = v83;
    v36 = [v56 mutableCopy];

    if (vpnType)
    {
LABEL_46:

      if (!vpnType)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }

    if (v36)
    {
      v57 = [v36 copy];
      [(NSMutableDictionary *)v10->_configurationDictionary setObject:v57 forKeyedSubscript:@"VPN"];
    }

    if ([(NSString *)v10->_vpnType isEqualToString:@"VPN"]|| [(NSString *)v10->_vpnType isEqualToString:@"IKEv2"])
    {
      v58 = [(NSString *)v10->_vpnType isEqualToString:@"VPN"];
      v82 = 0;
      v59 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"VPNSubType" isRequired:v58 outError:&v82];
      v60 = v82;
      if (v60)
      {
        vpnType = v60;
LABEL_45:

        goto LABEL_46;
      }

      if (v59)
      {
        [(NSMutableDictionary *)v10->_configurationDictionary setObject:v59 forKeyedSubscript:@"VPNSubType"];
      }

      type = [(MCPayload *)v10 type];
      v62 = +[MCAppLayerVPNPayload typeStrings];
      firstObject = [v62 firstObject];
      v64 = [type isEqualToString:firstObject];

      if (v64)
      {
        v81 = 0;
        v65 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"CellularSliceUUID" isRequired:0 outError:&v81];
        vpnType = v81;
        CellularSliceUUID = v10->_CellularSliceUUID;
        v10->_CellularSliceUUID = v65;

        if (vpnType)
        {
          goto LABEL_45;
        }

        v67 = v10->_CellularSliceUUID;
        if (v67)
        {
          [(NSMutableDictionary *)v10->_configurationDictionary setObject:v67 forKeyedSubscript:@"CellularSliceUUID"];
        }
      }
    }

    v68 = [MCVPNPayloadBase NEVPNPayloadBaseDelegateWithConfigurationDict:v10->_configurationDictionary];
    v69 = v10->_nePayloadBase;
    v10->_nePayloadBase = v68;

    vpnType = [(NEProfilePayloadBaseDelegate *)v10->_nePayloadBase validatePayload];
    if (!vpnType)
    {
      goto LABEL_46;
    }

    v77 = MEMORY[0x1E696ABC0];
    v59 = MCErrorArray(@"ERROR_VPN_COULD_NOT_PARSE", v70, v71, v72, v73, v74, v75, v76, 0);
    v78 = [v77 MCErrorWithDomain:@"MCVPNErrorDomain" code:15005 descriptionArray:v59 underlyingError:vpnType errorType:@"MCFatalError"];
    v79 = vpnType;
    vpnType = v78;

    goto LABEL_45;
  }

LABEL_11:

  return v10;
}

- (id)stubDictionary
{
  v9.receiver = self;
  v9.super_class = MCVPNPayloadBase;
  stubDictionary = [(MCPayload *)&v9 stubDictionary];
  serviceName = [(MCVPNPayloadBase *)self serviceName];

  if (serviceName)
  {
    serviceName2 = [(MCVPNPayloadBase *)self serviceName];
    [stubDictionary setObject:serviceName2 forKeyedSubscript:@"ServiceName"];
  }

  vpnType = [(MCVPNPayloadBase *)self vpnType];

  if (vpnType)
  {
    vpnType2 = [(MCVPNPayloadBase *)self vpnType];
    [stubDictionary setObject:vpnType2 forKeyedSubscript:@"VPNType"];
  }

  return stubDictionary;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v13.receiver = self;
  v13.super_class = MCVPNPayloadBase;
  verboseDescription = [(MCPayload *)&v13 verboseDescription];
  v5 = [v3 stringWithFormat:@"%@\n", verboseDescription];

  serviceName = [(MCVPNPayloadBase *)self serviceName];

  if (serviceName)
  {
    serviceName2 = [(MCVPNPayloadBase *)self serviceName];
    [v5 appendFormat:@"Service name: %@\n", serviceName2];
  }

  vpnType = [(MCVPNPayloadBase *)self vpnType];

  if (vpnType)
  {
    vpnType2 = [(MCVPNPayloadBase *)self vpnType];
    [v5 appendFormat:@"VPN Type: %@\n", vpnType2];
  }

  persistentResourceID = [(MCPayload *)self persistentResourceID];

  if (persistentResourceID)
  {
    persistentResourceID2 = [(MCPayload *)self persistentResourceID];
    [v5 appendFormat:@"  ConfigID : %@\n", persistentResourceID2];
  }

  return v5;
}

- (id)installationWarnings
{
  v3 = MCLocalizedStringByDevice(@"INSTALL_WARNING_VPN");
  vpnType = [(MCVPNPayloadBase *)self vpnType];
  v5 = [vpnType isEqualToString:@"PPTP"];

  if (v5)
  {
    v6 = MCLocalizedString(@"INSTALL_WARNING_PPTP_VPN");
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n%@", v3, v6];
  }

  else
  {
    v7 = v3;
  }

  v8 = MCLocalizedString(@"INSTALL_WARNING_VPN_TITLE");
  v9 = [MCProfileWarning warningWithLocalizedTitle:v8 localizedBody:v7 isLongForm:1];

  v10 = [MEMORY[0x1E695DEC8] arrayWithObject:v9];

  return v10;
}

- (id)payloadDescriptionKeyValueSections
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  serviceName = [(MCVPNPayloadBase *)self serviceName];

  if (serviceName)
  {
    v5 = [MCKeyValue alloc];
    serviceName2 = [(MCVPNPayloadBase *)self serviceName];
    v7 = MCLocalizedString(@"KEY_VPN_NAME");
    v8 = [(MCKeyValue *)v5 initWithLocalizedString:serviceName2 localizedKey:v7];

    [v3 addObject:v8];
  }

  vpnType = [(MCVPNPayloadBase *)self vpnType];

  if (vpnType)
  {
    v10 = [MCKeyValue alloc];
    vpnType2 = [(MCVPNPayloadBase *)self vpnType];
    v12 = MCLocalizedString(@"KEY_VPN_TYPE");
    v13 = [(MCKeyValue *)v10 initWithLocalizedString:vpnType2 localizedKey:v12];

    [v3 addObject:v13];
  }

  if ([v3 count] && (+[MCKeyValueSection sectionWithKeyValues:](MCKeyValueSection, "sectionWithKeyValues:", v3), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    v18[0] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end