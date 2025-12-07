@interface SESConfigDCK
+ (BOOL)evaluateCondition:(id)condition operator:(id)operator value:(id)value brand:(id)brand uuid:(id)uuid deviceClass:(id)class productVersion:(id)version error:(id *)self0;
+ (BOOL)evaluateOperator:(id)operator valueFromDevice:(id)device valueFromConfig:(id)config error:(id *)error;
+ (BOOL)isConfigurationApplicable:(id)applicable brand:(id)brand uuid:(id)uuid deviceClass:(id)class productVersion:(id)version error:(id *)error;
+ (id)getResolvedSettingsFrom:(id)from brand:(id)brand uuid:(id)uuid deviceClass:(id)class productVersion:(id)version error:(id *)error;
- (BOOL)isDCKConfigurationAvailableFor:(id)for error:(id *)error;
- (SESConfigDCK)init;
- (id)BOOLValueForSetting:(unint64_t)setting manufacturer:(id)manufacturer brand:(id)brand uuid:(id)uuid error:(id *)error;
- (id)arrayValueForSetting:(unint64_t)setting manufacturer:(id)manufacturer brand:(id)brand uuid:(id)uuid error:(id *)error;
- (id)dictValueForSetting:(unint64_t)setting manufacturer:(id)manufacturer brand:(id)brand uuid:(id)uuid error:(id *)error;
- (id)getCertificate:(id)certificate manufacturer:(id)manufacturer environment:(id)environment region:(id)region prodSE:(id)e keyID:(id)d error:(id *)error;
- (id)getExternalCACertificateFor:(id)for environment:(id)environment prodSE:(BOOL)e error:(id *)error;
- (id)getSettingForKey:(id)key error:(id *)error;
- (id)getSettingsFor:(id)for brand:(id)brand uuid:(id)uuid error:(id *)error;
- (id)initAtPath:(id)path deviceClass:(id)class productVersion:(id)version;
- (id)intValueForSetting:(unint64_t)setting manufacturer:(id)manufacturer brand:(id)brand uuid:(id)uuid error:(id *)error;
@end

@implementation SESConfigDCK

- (SESConfigDCK)init
{
  v30 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = SESConfigDCK;
  v2 = [(SESConfigDCK *)&v27 init];
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = MGGetStringAnswer();
  mgDeviceClass = v2->_mgDeviceClass;
  v2->_mgDeviceClass = v3;

  if (!v2->_mgDeviceClass)
  {
    v10 = SESDefaultLogObject();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v16 = "Failed to read DeviceClass from device";
LABEL_13:
    _os_log_impl(&dword_1E0FCB000, v10, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_14;
  }

  v5 = MGGetStringAnswer();
  mgProductVersion = v2->_mgProductVersion;
  v2->_mgProductVersion = v5;

  v7 = v2->_mgProductVersion;
  if (!v7)
  {
    v10 = SESDefaultLogObject();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v16 = "Failed to read ProductVersion from device";
    goto LABEL_13;
  }

  v26 = 0;
  [SESConfigUtilities getVersion:v7 error:&v26];
  v9 = v8;
  v10 = v26;
  if (!v10)
  {
    v18 = [SESConfig alloc];
    LODWORD(v19) = v9;
    v20 = [(SESConfig *)v18 initWithDeviceClass:v2->_mgDeviceClass productVersion:v19];
    config = v2->_config;
    v2->_config = v20;

    if (!v2->_config)
    {
      v11 = SESDefaultLogObject();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      *buf = 0;
      v13 = "Failed to initialize SESConfig";
      v14 = v11;
      v15 = 2;
      goto LABEL_7;
    }

    vehicleBrand = v2->_vehicleBrand;
    v2->_vehicleBrand = 0;

    vehicleUUID = v2->_vehicleUUID;
    v2->_vehicleUUID = 0;

    settings = v2->_settings;
    v2->_settings = 0;

LABEL_17:
    v17 = v2;
    goto LABEL_18;
  }

  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = v2->_mgProductVersion;
    *buf = 138412290;
    v29 = v12;
    v13 = "Invalid ProductVersion value %@";
    v14 = v11;
    v15 = 12;
LABEL_7:
    _os_log_impl(&dword_1E0FCB000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
  }

LABEL_8:

LABEL_14:
  v17 = 0;
LABEL_18:

  return v17;
}

- (id)initAtPath:(id)path deviceClass:(id)class productVersion:(id)version
{
  v29 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  classCopy = class;
  versionCopy = version;
  v11 = [(SESConfigDCK *)self init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_8;
  }

  objc_storeStrong(&v11->_mgDeviceClass, class);
  objc_storeStrong(&v12->_mgProductVersion, version);
  v26 = 0;
  [SESConfigUtilities getVersion:versionCopy error:&v26];
  v14 = v13;
  v15 = v26;
  if (!v15)
  {
    v21 = [SESConfig alloc];
    LODWORD(v22) = v14;
    v23 = [(SESConfig *)v21 initWithDeviceClass:classCopy productVersion:pathCopy path:v22];
    config = v12->_config;
    v12->_config = v23;

    if (!v12->_config)
    {
      v16 = SESDefaultLogObject();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      *buf = 0;
      v17 = "Failed to initialize SESConfig";
      v18 = v16;
      v19 = 2;
      goto LABEL_5;
    }

LABEL_8:
    v20 = v12;
    goto LABEL_9;
  }

  v16 = SESDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v28 = versionCopy;
    v17 = "Invalid ProductVersion value %@";
    v18 = v16;
    v19 = 12;
LABEL_5:
    _os_log_impl(&dword_1E0FCB000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
  }

LABEL_6:

  v20 = 0;
LABEL_9:

  return v20;
}

- (id)getSettingForKey:(id)key error:(id *)error
{
  config = self->_config;
  v13 = 0;
  keyCopy = key;
  v7 = [(SESConfig *)config getContentsOfAssetFile:@"_settings" component:1 error:&v13];
  v8 = v13;
  v9 = v8;
  if (error)
  {
    v10 = v8;
    *error = v9;
  }

  v11 = [v7 objectForKeyedSubscript:keyCopy];

  return v11;
}

- (BOOL)isDCKConfigurationAvailableFor:(id)for error:(id *)error
{
  config = self->_config;
  v15 = 0;
  v6 = [(SESConfig *)config getConfigForManufacturer:for component:1 error:&v15];
  v7 = v15;
  v8 = v7;
  if (error && v7)
  {
    v9 = SESDefaultLogObject();
    *error = SESCreateAndLogError(v8, v9, SESErrorDomain, 0, @"Failed to retrieve configuration", v10, v11, v12, v14);
  }

  return v6 != 0;
}

- (id)getExternalCACertificateFor:(id)for environment:(id)environment prodSE:(BOOL)e error:(id *)error
{
  eCopy = e;
  v10 = MEMORY[0x1E696AD98];
  environmentCopy = environment;
  forCopy = for;
  v13 = [v10 numberWithBool:eCopy];
  v14 = [(SESConfigDCK *)self getCertificate:@"ExternalCA" manufacturer:forCopy environment:environmentCopy region:0 prodSE:v13 keyID:0 error:error];

  return v14;
}

- (id)getCertificate:(id)certificate manufacturer:(id)manufacturer environment:(id)environment region:(id)region prodSE:(id)e keyID:(id)d error:(id *)error
{
  v80 = *MEMORY[0x1E69E9840];
  certificateCopy = certificate;
  environmentCopy = environment;
  regionCopy = region;
  eCopy = e;
  dCopy = d;
  config = self->_config;
  v78 = 0;
  v21 = [(SESConfig *)config getConfigForManufacturer:manufacturer component:1 error:&v78];
  v22 = v78;
  if (v22)
  {
    v23 = v22;
    if (error)
    {
      v24 = SESDefaultLogObject();
      *error = SESCreateAndLogError(v23, v24, SESErrorDomain, 0, @"Failed to retrieve configuration", v25, v26, v27, v63);
    }

    goto LABEL_4;
  }

  v30 = [SESConfigUtilities validateKey:@"Certificates" expectedClass:objc_opt_class() dictionary:v21];
  if (v30)
  {
    v23 = v30;
    if (error)
    {
      v31 = v30;
      v28 = 0;
      *error = v23;
      goto LABEL_5;
    }

LABEL_4:
    v28 = 0;
    goto LABEL_5;
  }

  v32 = [v21 objectForKeyedSubscript:@"Certificates"];
  v33 = [SESConfigUtilities validateKey:certificateCopy expectedClass:objc_opt_class() dictionary:v32];
  if (v33)
  {
    v23 = v33;
    if (error)
    {
      v34 = v33;
      v28 = 0;
      *error = v23;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_53;
  }

  v67 = v32;
  v35 = [v32 objectForKeyedSubscript:certificateCopy];
  v36 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v35;
  v68 = v36;
  v71 = [obj countByEnumeratingWithState:&v74 objects:v79 count:16];
  if (!v71)
  {
    goto LABEL_35;
  }

  v72 = *v75;
  v66 = certificateCopy;
  v69 = dCopy;
  while (2)
  {
    for (i = 0; i != v71; ++i)
    {
      if (*v75 != v72)
      {
        objc_enumerationMutation(obj);
      }

      v38 = *(*(&v74 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v53 = SESDefaultLogObject();
          *error = SESCreateAndLogError(0, v53, SESErrorDomain, 0, @"Wrong class for certificate", v54, v55, v56, v63);
        }

        v23 = 0;
        goto LABEL_45;
      }

      if (!environmentCopy)
      {
        goto LABEL_57;
      }

      v39 = [SESConfigUtilities validateKey:@"Environment" expectedClass:objc_opt_class() dictionary:v38];
      if (v39)
      {
        goto LABEL_40;
      }

      v40 = [v38 objectForKeyedSubscript:@"Environment"];
      v41 = [environmentCopy isEqualToString:v40];

      if (v41)
      {
LABEL_57:
        if (!regionCopy)
        {
          goto LABEL_26;
        }

        v39 = [SESConfigUtilities validateKey:@"Region" expectedClass:objc_opt_class() dictionary:v38];
        if (v39)
        {
          goto LABEL_40;
        }

        v42 = [v38 objectForKeyedSubscript:@"Region"];
        v43 = [regionCopy isEqualToString:v42];

        if (v43)
        {
LABEL_26:
          if (!eCopy)
          {
            goto LABEL_29;
          }

          v39 = [SESConfigUtilities validateKey:@"ProdSE" expectedClass:objc_opt_class() dictionary:v38];
          if (v39)
          {
            goto LABEL_40;
          }

          bOOLValue = [eCopy BOOLValue];
          v45 = [v38 objectForKeyedSubscript:@"ProdSE"];
          bOOLValue2 = [v45 BOOLValue];

          if (bOOLValue == bOOLValue2)
          {
LABEL_29:
            if (!v69)
            {
LABEL_32:
              [v68 addObject:v38];
              continue;
            }

            v39 = [SESConfigUtilities validateKey:@"KeyID" expectedClass:objc_opt_class() dictionary:v38];
            if (!v39)
            {
              v47 = [v38 objectForKeyedSubscript:@"KeyID"];
              v48 = [v69 isEqualToData:v47];

              if (!v48)
              {
                continue;
              }

              goto LABEL_32;
            }

LABEL_40:
            v23 = v39;
            if (error)
            {
              v52 = v39;
              v28 = 0;
              *error = v23;
LABEL_46:
              dCopy = v69;
              firstObject = obj;
              certificateCopy = v66;
              goto LABEL_51;
            }

LABEL_45:
            v28 = 0;
            goto LABEL_46;
          }
        }
      }
    }

    certificateCopy = v66;
    v36 = v68;
    dCopy = v69;
    v71 = [obj countByEnumeratingWithState:&v74 objects:v79 count:16];
    if (v71)
    {
      continue;
    }

    break;
  }

LABEL_35:

  if ([v36 count] == 1)
  {
    firstObject = [v36 firstObject];
    v50 = [SESConfigUtilities validateKey:@"Certificate" expectedClass:objc_opt_class() dictionary:firstObject];
    v23 = v50;
    if (v50)
    {
      if (error)
      {
        v51 = v50;
        v28 = 0;
        *error = v23;
        goto LABEL_51;
      }

LABEL_49:
      v28 = 0;
    }

    else
    {
      v28 = [firstObject objectForKeyedSubscript:@"Certificate"];
    }

LABEL_51:
  }

  else
  {
    if (error)
    {
      firstObject = SESDefaultLogObject();
      v73 = SESErrorDomain;
      v57 = dCopy;
      v58 = certificateCopy;
      v59 = [v36 count];
      base64 = [v57 base64];
      v64 = v59;
      certificateCopy = v58;
      dCopy = v57;
      *error = SESCreateAndLogError(0, firstObject, v73, 0, @"%lu matches for type %@ environment %@ region %@ prodSE %@ keyID %@", v60, v61, v62, v64);

      v23 = 0;
      goto LABEL_49;
    }

    v23 = 0;
    v28 = 0;
  }

  v32 = v67;

LABEL_53:
LABEL_5:

  return v28;
}

- (id)BOOLValueForSetting:(unint64_t)setting manufacturer:(id)manufacturer brand:(id)brand uuid:(id)uuid error:(id *)error
{
  v20 = 0;
  v9 = [(SESConfigDCK *)self getSettingsFor:manufacturer brand:brand uuid:uuid error:&v20];
  v10 = v20;
  if (v10)
  {
    v11 = v10;
    if (error)
    {
LABEL_3:
      v12 = v11;
      v13 = 0;
      *error = v11;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (setting >= 0xB)
  {
    if (error)
    {
      v15 = SESDefaultLogObject();
      *error = SESCreateAndLogError(0, v15, SESErrorDomain, 1, @"Invalid BOOL setting input %lu", v16, v17, v18, setting);
    }

    v11 = 0;
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v14 = off_1E86FFBA0[setting];
  v11 = [SESConfigUtilities validateKey:v14 expectedClass:objc_opt_class() dictionary:v9];
  if (v11)
  {
    if (error)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  v13 = [v9 objectForKeyedSubscript:v14];
LABEL_12:

  return v13;
}

- (id)intValueForSetting:(unint64_t)setting manufacturer:(id)manufacturer brand:(id)brand uuid:(id)uuid error:(id *)error
{
  v25 = 0;
  v10 = [(SESConfigDCK *)self getSettingsFor:manufacturer brand:brand uuid:uuid error:&v25];
  v11 = v25;
  if (v11)
  {
    v12 = v11;
    if (error)
    {
LABEL_3:
      v13 = v12;
      v14 = 0;
      *error = v12;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (setting == 1)
  {
    if ([@"iPhone" isEqualToString:self->_mgDeviceClass])
    {
      v15 = @"RSSIFurtherPhone";
      goto LABEL_16;
    }

    if ([@"Watch" isEqualToString:self->_mgDeviceClass])
    {
      v15 = @"RSSIFurtherWatch";
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (setting)
  {
    if (error)
    {
      v16 = SESDefaultLogObject();
      *error = SESCreateAndLogError(0, v16, SESErrorDomain, 1, @"Invalid int setting input %lu", v17, v18, v19, setting);
    }

    goto LABEL_22;
  }

  if (([@"iPhone" isEqualToString:self->_mgDeviceClass] & 1) == 0)
  {
    if ([@"Watch" isEqualToString:self->_mgDeviceClass])
    {
      v15 = @"RSSICloserWatch";
      goto LABEL_16;
    }

LABEL_20:
    if (error)
    {
      v20 = SESDefaultLogObject();
      *error = SESCreateAndLogError(0, v20, SESErrorDomain, 1, @"Invalid DeviceClass %@", v21, v22, v23, self->_mgDeviceClass);
    }

LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  v15 = @"RSSICloserPhone";
LABEL_16:
  v12 = [SESConfigUtilities validateKey:v15 expectedClass:objc_opt_class() dictionary:v10];
  if (!v12)
  {
    v14 = [v10 objectForKeyedSubscript:v15];
    goto LABEL_24;
  }

  if (error)
  {
    goto LABEL_3;
  }

LABEL_23:
  v14 = 0;
LABEL_24:

  return v14;
}

- (id)arrayValueForSetting:(unint64_t)setting manufacturer:(id)manufacturer brand:(id)brand uuid:(id)uuid error:(id *)error
{
  v19 = 0;
  v9 = [(SESConfigDCK *)self getSettingsFor:manufacturer brand:brand uuid:uuid error:&v19];
  v10 = v19;
  if (v10)
  {
    v11 = v10;
    if (error)
    {
LABEL_3:
      v12 = v11;
      v13 = 0;
      *error = v11;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (setting)
  {
    if (error)
    {
      v14 = SESDefaultLogObject();
      *error = SESCreateAndLogError(0, v14, SESErrorDomain, 1, @"Invalid array setting input %lu", v15, v16, v17, setting);
    }

    v11 = 0;
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v11 = [SESConfigUtilities validateKey:@"RKEDisabledFunctions" expectedClass:objc_opt_class() dictionary:v9];
  if (v11)
  {
    if (error)
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  v13 = [v9 objectForKeyedSubscript:@"RKEDisabledFunctions"];
LABEL_9:

  return v13;
}

- (id)dictValueForSetting:(unint64_t)setting manufacturer:(id)manufacturer brand:(id)brand uuid:(id)uuid error:(id *)error
{
  v19 = 0;
  v9 = [(SESConfigDCK *)self getSettingsFor:manufacturer brand:brand uuid:uuid error:&v19];
  v10 = v19;
  if (v10)
  {
    v11 = v10;
    if (error)
    {
LABEL_3:
      v12 = v11;
      v13 = 0;
      *error = v11;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (setting)
  {
    if (error)
    {
      v14 = SESDefaultLogObject();
      *error = SESCreateAndLogError(0, v14, SESErrorDomain, 1, @"Invalid dict setting input %lu", v15, v16, v17, setting);
    }

    v11 = 0;
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v11 = [SESConfigUtilities validateKey:@"RKETimeout" expectedClass:objc_opt_class() dictionary:v9];
  if (v11)
  {
    if (error)
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  v13 = [v9 objectForKeyedSubscript:@"RKETimeout"];
LABEL_9:

  return v13;
}

- (id)getSettingsFor:(id)for brand:(id)brand uuid:(id)uuid error:(id *)error
{
  forCopy = for;
  brandCopy = brand;
  obj = uuid;
  uuidCopy = uuid;
  vehicleBrand = self->_vehicleBrand;
  v13 = (brandCopy | vehicleBrand) == 0;
  if (brandCopy && vehicleBrand)
  {
    v13 = [brandCopy isEqualToString:?];
  }

  vehicleUUID = self->_vehicleUUID;
  v15 = (uuidCopy | vehicleUUID) == 0;
  if (uuidCopy && vehicleUUID)
  {
    v15 = [uuidCopy isEqualToData:?];
  }

  cachedFileName = [(SESConfig *)self->_config cachedFileName];
  v17 = [cachedFileName isEqualToString:forCopy] & v13;

  if (v17 == 1 && v15 != 0)
  {
    v27 = self->_settings;
    goto LABEL_23;
  }

  config = self->_config;
  v38 = 0;
  v20 = [(SESConfig *)config getConfigForManufacturer:forCopy component:1 error:&v38];
  v21 = v38;
  if (!v21)
  {
    mgDeviceClass = self->_mgDeviceClass;
    mgProductVersion = self->_mgProductVersion;
    v37 = 0;
    v34 = v20;
    v23 = [SESConfigDCK getResolvedSettingsFrom:v20 brand:brandCopy uuid:uuidCopy deviceClass:mgDeviceClass productVersion:mgProductVersion error:&v37];
    v30 = v37;
    v22 = v30;
    if (v30)
    {
      if (error)
      {
        v31 = v30;
        v27 = 0;
        *error = v22;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      objc_storeStrong(&self->_vehicleBrand, brand);
      objc_storeStrong(&self->_vehicleUUID, obj);
      objc_storeStrong(&self->_settings, v23);
      v27 = self->_settings;
    }

    goto LABEL_21;
  }

  v22 = v21;
  if (error)
  {
    v34 = v20;
    v23 = SESDefaultLogObject();
    SESCreateAndLogError(v22, v23, SESErrorDomain, 0, @"Failed to retrieve configuration", v24, v25, v26, v33);
    *error = v27 = 0;
LABEL_21:

    v20 = v34;
    goto LABEL_22;
  }

  v27 = 0;
LABEL_22:

LABEL_23:

  return v27;
}

+ (id)getResolvedSettingsFrom:(id)from brand:(id)brand uuid:(id)uuid deviceClass:(id)class productVersion:(id)version error:(id *)error
{
  v79 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  brandCopy = brand;
  uuidCopy = uuid;
  classCopy = class;
  versionCopy = version;
  v17 = SESDefaultLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [fromCopy objectForKeyedSubscript:@"Manufacturer"];
    base64 = [uuidCopy base64];
    *buf = 138413314;
    v70 = v18;
    v71 = 2112;
    v72 = brandCopy;
    v73 = 2112;
    v74 = base64;
    v75 = 2112;
    v76 = classCopy;
    v77 = 2112;
    v78 = versionCopy;
    _os_log_impl(&dword_1E0FCB000, v17, OS_LOG_TYPE_INFO, "Resolving settings for manufacturer %@ brand %@ uuid %@ device class %@ product version %@", buf, 0x34u);
  }

  v20 = 0x1E695D000uLL;
  v21 = [SESConfigUtilities validateKey:@"DefaultSettings" expectedClass:objc_opt_class() dictionary:fromCopy];
  if (v21)
  {
    v22 = v21;
    if (error)
    {
      v23 = v21;
      v24 = 0;
      *error = v22;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_45;
  }

  v25 = [fromCopy objectForKeyedSubscript:@"DefaultSettings"];
  v26 = [v25 mutableCopy];

  v27 = SESDefaultLogObject();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v70 = v26;
    _os_log_impl(&dword_1E0FCB000, v27, OS_LOG_TYPE_INFO, "Default settings %@", buf, 0xCu);
  }

  v55 = v26;

  v28 = [SESConfigUtilities validateKey:@"Configurations" expectedClass:objc_opt_class() dictionary:fromCopy];
  v22 = v28;
  if (v28)
  {
    if (error)
    {
      v29 = v28;
      v24 = 0;
      *error = v22;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_44;
  }

  v57 = classCopy;
  v58 = uuidCopy;
  [fromCopy objectForKeyedSubscript:@"Configurations"];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v67 = 0u;
  v53 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (!v53)
  {
LABEL_40:
    v39 = obj;

    v49 = SESDefaultLogObject();
    classCopy = v57;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v70 = v26;
      _os_log_impl(&dword_1E0FCB000, v49, OS_LOG_TYPE_INFO, "Resolved settings %@", buf, 0xCu);
    }

    v24 = v26;
    uuidCopy = v58;
    goto LABEL_43;
  }

  v54 = *v65;
  v59 = versionCopy;
  v56 = brandCopy;
LABEL_14:
  v30 = 0;
  while (1)
  {
    if (*v65 != v54)
    {
      objc_enumerationMutation(obj);
    }

    v31 = *(*(&v64 + 1) + 8 * v30);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      brandCopy = v56;
      classCopy = v57;
      errorCopy2 = error;
      v39 = obj;
      if (!error)
      {
LABEL_36:

        v24 = 0;
        goto LABEL_43;
      }

      v40 = SESDefaultLogObject();
      v44 = SESCreateAndLogError(0, v40, SESErrorDomain, 0, @"Wrong class for configuration", v41, v42, v43, v51);
      goto LABEL_29;
    }

    v32 = [SESConfigUtilities validateKey:@"Conditions" expectedClass:objc_opt_class() dictionary:v31];
    if (v32)
    {
      v40 = v32;
      errorCopy2 = error;
      if (!error)
      {
        brandCopy = v56;
        classCopy = v57;
        v39 = obj;
        goto LABEL_35;
      }

      v44 = v32;
      brandCopy = v56;
      classCopy = v57;
      v39 = obj;
LABEL_29:
      *errorCopy2 = v44;
LABEL_35:

      versionCopy = v59;
      goto LABEL_36;
    }

    v33 = fromCopy;
    v34 = v20;
    v35 = [v31 objectForKeyedSubscript:@"Conditions"];
    v63 = 0;
    v36 = [SESConfigDCK isConfigurationApplicable:v35 brand:v56 uuid:uuidCopy deviceClass:v57 productVersion:v59 error:&v63];
    v37 = v63;
    if (v37)
    {
      goto LABEL_31;
    }

    if (v36)
    {
      break;
    }

    ++v30;
    versionCopy = v59;
    v20 = v34;
    fromCopy = v33;
    if (v53 == v30)
    {
      brandCopy = v56;
      v53 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
      if (v53)
      {
        goto LABEL_14;
      }

      goto LABEL_40;
    }
  }

  v37 = [SESConfigUtilities validateKey:@"Settings" expectedClass:objc_opt_class() dictionary:v31];
  if (!v37)
  {
    v47 = [v31 objectForKeyedSubscript:@"Settings"];
    v48 = SESDefaultLogObject();
    brandCopy = v56;
    fromCopy = v33;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v70 = v47;
      _os_log_impl(&dword_1E0FCB000, v48, OS_LOG_TYPE_INFO, "Configuration overrides %@", buf, 0xCu);
    }

    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __84__SESConfigDCK_getResolvedSettingsFrom_brand_uuid_deviceClass_productVersion_error___block_invoke;
    v61[3] = &unk_1E86FFB80;
    v62 = v26;
    [v47 enumerateKeysAndObjectsUsingBlock:v61];

    versionCopy = v59;
    goto LABEL_40;
  }

LABEL_31:
  v45 = v37;
  brandCopy = v56;
  v39 = obj;
  fromCopy = v33;
  if (error)
  {
    v46 = v37;
    *error = v45;
  }

  v24 = 0;
  classCopy = v57;
  versionCopy = v59;
LABEL_43:

LABEL_44:
LABEL_45:

  return v24;
}

void __84__SESConfigDCK_getResolvedSettingsFrom_brand_uuid_deviceClass_productVersion_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 mutableCopy];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __84__SESConfigDCK_getResolvedSettingsFrom_brand_uuid_deviceClass_productVersion_error___block_invoke_2;
      v12[3] = &unk_1E86FFB80;
      v13 = v10;
      v11 = v10;
      [v7 enumerateKeysAndObjectsUsingBlock:v12];
      [*(a1 + 32) setObject:v11 forKeyedSubscript:v5];
    }
  }

  else
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

+ (BOOL)isConfigurationApplicable:(id)applicable brand:(id)brand uuid:(id)uuid deviceClass:(id)class productVersion:(id)version error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  applicableCopy = applicable;
  brandCopy = brand;
  uuidCopy = uuid;
  classCopy = class;
  versionCopy = version;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = applicableCopy;
  v36 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v36)
  {
    errorCopy = 1;
    goto LABEL_24;
  }

  v14 = 0x1E86FF000uLL;
  v37 = *v43;
  v15 = @"Key";
  while (2)
  {
    for (i = 0; i != v36; ++i)
    {
      if (*v43 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v42 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy = error;
        if (!error)
        {
          goto LABEL_24;
        }

        v27 = SESDefaultLogObject();
        *error = SESCreateAndLogError(0, v27, SESErrorDomain, 0, @"Wrong class for condition", v29, v30, v31, v34);
        goto LABEL_22;
      }

      v18 = [*(v14 + 2360) validateKey:v15 expectedClass:objc_opt_class() dictionary:v17];
      if (v18 || ([*(v14 + 2360) validateKey:@"Operator" expectedClass:objc_opt_class() dictionary:v17], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v27 = v18;
        if (error)
        {
          v28 = v18;
          *error = v27;
        }

        goto LABEL_22;
      }

      v19 = v14;
      v20 = v15;
      v21 = [v17 objectForKeyedSubscript:v15];
      v22 = [v17 objectForKeyedSubscript:@"Operator"];
      v23 = [v17 objectForKeyedSubscript:@"Value"];
      v34 = versionCopy;
      v24 = [SESConfigDCK evaluateCondition:"evaluateCondition:operator:value:brand:uuid:deviceClass:productVersion:error:" operator:v21 value:v22 brand:v23 uuid:brandCopy deviceClass:uuidCopy productVersion:classCopy error:?];
      v25 = 0;
      if (v25)
      {
        v27 = v25;
        if (error)
        {
          v32 = v25;
          *error = v27;
        }

LABEL_22:
LABEL_23:
        errorCopy = 0;
        goto LABEL_24;
      }

      if (!v24)
      {
        goto LABEL_23;
      }

      v14 = v19;
      v15 = v20;
    }

    errorCopy = 1;
    v36 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v36)
    {
      continue;
    }

    break;
  }

LABEL_24:

  return errorCopy;
}

+ (BOOL)evaluateCondition:(id)condition operator:(id)operator value:(id)value brand:(id)brand uuid:(id)uuid deviceClass:(id)class productVersion:(id)version error:(id *)self0
{
  errorCopy = error;
  conditionCopy = condition;
  operatorCopy = operator;
  valueCopy = value;
  brandCopy = brand;
  uuidCopy = uuid;
  classCopy = class;
  versionCopy = version;
  if (![conditionCopy isEqualToString:@"DeviceClass"])
  {
    if ([conditionCopy isEqualToString:@"DeviceProductVersion"])
    {
      if ([&unk_1F5BEB900 containsObject:operatorCopy])
      {
        v23 = operatorCopy;
        v24 = versionCopy;
        goto LABEL_13;
      }
    }

    else if ([conditionCopy isEqualToString:@"VehicleBrand"])
    {
      if ([&unk_1F5BEB918 containsObject:operatorCopy])
      {
        v23 = operatorCopy;
        v24 = brandCopy;
        goto LABEL_13;
      }
    }

    else
    {
      if (![conditionCopy isEqualToString:@"VehicleUUID"])
      {
        if (!error)
        {
          goto LABEL_17;
        }

        v25 = SESDefaultLogObject();
        SESCreateAndLogError(0, v25, SESErrorDomain, 1, @"Invalid key for condition %@", v30, v31, v32, conditionCopy);
        goto LABEL_16;
      }

      if ([&unk_1F5BEB930 containsObject:operatorCopy])
      {
        v23 = operatorCopy;
        v24 = uuidCopy;
        goto LABEL_13;
      }
    }

LABEL_14:
    if (!error)
    {
      goto LABEL_17;
    }

    v25 = SESDefaultLogObject();
    SESCreateAndLogError(0, v25, SESErrorDomain, 1, @"Invalid operator %@ for key %@", v26, v27, v28, operatorCopy);
    *error = LABEL_16:;

    errorCopy = 0;
    goto LABEL_17;
  }

  if (([&unk_1F5BEB8E8 containsObject:operatorCopy] & 1) == 0)
  {
    goto LABEL_14;
  }

  v23 = operatorCopy;
  v24 = classCopy;
LABEL_13:
  errorCopy = [SESConfigDCK evaluateOperator:v23 valueFromDevice:v24 valueFromConfig:valueCopy error:error];
LABEL_17:

  return errorCopy;
}

+ (BOOL)evaluateOperator:(id)operator valueFromDevice:(id)device valueFromConfig:(id)config error:(id *)error
{
  operatorCopy = operator;
  deviceCopy = device;
  configCopy = config;
  if ([operatorCopy isEqualToString:@"Eq"])
  {
    v12 = [configCopy isEqual:deviceCopy];
LABEL_3:
    v13 = v12;
    goto LABEL_23;
  }

  if ([operatorCopy isEqualToString:@"In"])
  {
    if (!deviceCopy)
    {
LABEL_22:
      v13 = 0;
      goto LABEL_23;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [configCopy containsObject:deviceCopy];
      goto LABEL_3;
    }

LABEL_20:
    if (error)
    {
      v20 = SESDefaultLogObject();
      *error = SESCreateAndLogError(0, v20, SESErrorDomain, 0, @"Invalid value %@", v21, v22, v23, configCopy);
    }

    goto LABEL_22;
  }

  if ([operatorCopy isEqualToString:@"Present"])
  {
    v13 = deviceCopy != 0;
    goto LABEL_23;
  }

  v14 = [operatorCopy isEqualToString:@"Absent"];
  if (deviceCopy)
  {
    v13 = 0;
  }

  else
  {
    v13 = v14;
  }

  if ((v14 & 1) == 0 && deviceCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_20;
    }

    v31 = 0;
    [SESConfigUtilities getVersion:deviceCopy error:&v31];
    v16 = v15;
    v17 = v31;
    if (v17 || (v30 = 0, [SESConfigUtilities getVersion:configCopy error:&v30], v19 = v18, (v17 = v30) != 0))
    {
      if (error)
      {
        v17 = v17;
        v13 = 0;
        *error = v17;
LABEL_36:

        goto LABEL_23;
      }
    }

    else
    {
      if ([operatorCopy isEqualToString:@"GT"])
      {
        v17 = 0;
        v13 = v16 > v19;
        goto LABEL_36;
      }

      if ([operatorCopy isEqualToString:@"GE"])
      {
        v17 = 0;
        v13 = v16 >= v19;
        goto LABEL_36;
      }

      if ([operatorCopy isEqualToString:@"LT"])
      {
        v17 = 0;
        v13 = v16 < v19;
        goto LABEL_36;
      }

      if ([operatorCopy isEqualToString:@"LE"])
      {
        v17 = 0;
        v13 = v16 <= v19;
        goto LABEL_36;
      }

      if (error)
      {
        v25 = SESDefaultLogObject();
        *error = SESCreateAndLogError(0, v25, SESErrorDomain, 0, @"Invalid condition", v26, v27, v28, v29);
      }

      v17 = 0;
    }

    v13 = 0;
    goto LABEL_36;
  }

LABEL_23:

  return v13;
}

@end