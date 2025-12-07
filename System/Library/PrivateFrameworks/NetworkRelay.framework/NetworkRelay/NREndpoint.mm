@interface NREndpoint
- (id)copyEndpoint;
- (id)copyNWEndpoint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initInternalWithDeviceIdentifier:(void *)identifier portString:(int)string dataProtectionClass:(void *)class service:;
@end

@implementation NREndpoint

- (id)copyNWEndpoint
{
  copyEndpoint = [(NREndpoint *)self copyEndpoint];
  if (copyEndpoint)
  {
    v3 = [MEMORY[0x277CD91C8] endpointWithCEndpoint:copyEndpoint];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)copyEndpoint
{
  v30[4] = *MEMORY[0x277D85DE8];
  service = [(NREndpoint *)self service];
  if (service)
  {
    v4 = service;
    usesASQUIC = [(NREndpoint *)self usesASQUIC];

    if (usesASQUIC)
    {
      v30[0] = 0;
      v30[1] = 0;
      MEMORY[0x25F8744B0](v30);
      service2 = [(NREndpoint *)self service];
      [service2 UTF8String];
      application_service = nw_endpoint_create_application_service();
      deviceIdentifier = [(NREndpoint *)self deviceIdentifier];
      nrDeviceIdentifier = [deviceIdentifier nrDeviceIdentifier];
      v10 = NREndpointCopyDictionary(nrDeviceIdentifier, [(NREndpoint *)self dataProtectionClass]);
      v11 = v10;
      if (v10)
      {
        v12 = [v10 objectForKeyedSubscript:@"deviceID"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = 0;
LABEL_27:

          if (v13)
          {
            [v13 UTF8String];
            nw_endpoint_set_device_id();
          }

          return application_service;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v12 = v13;
      goto LABEL_27;
    }
  }

  deviceIdentifier2 = [(NREndpoint *)self deviceIdentifier];
  nrDeviceIdentifier2 = [deviceIdentifier2 nrDeviceIdentifier];
  dataProtectionClass = [(NREndpoint *)self dataProtectionClass];
  portString = [(NREndpoint *)self portString];
  v18 = nrDeviceIdentifier2;
  v19 = portString;
  v20 = dataProtectionClass;
  v21 = NREndpointCopyDictionary(v18, dataProtectionClass);
  v22 = v21;
  if (v21)
  {
    v23 = [v21 objectForKeyedSubscript:@"AddrData"];
  }

  else
  {
    v23 = 0;
  }

  if ([v23 length] == 16)
  {
    if (v19)
    {
      v24 = bswap32([v19 intValue]) >> 16;
    }

    else
    {
      LOWORD(v24) = 0;
    }

    *(&v30[1] + 4) = 0;
    *(v30 + 4) = 0;
    *(&v30[2] + 4) = 0;
    LOWORD(v30[0]) = 7708;
    WORD1(v30[0]) = v24;
    [v23 getBytes:&v30[1] length:16];
    v27 = [MEMORY[0x277CD91B8] endpointWithAddress:v30];
  }

  else
  {
    if (nrCopyLogObj_onceToken != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken, &__block_literal_global);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj, OS_LOG_TYPE_ERROR))
    {
      v25 = nrCopyLogObj_sNRLogObj;
      if (v20 < 5 && ((0x1Bu >> v20) & 1) != 0)
      {
        v26 = off_27996ADB0[v20];
      }

      else
      {
        v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown[%lld]", v20];
      }

      _NRLogWithArgs(v25, 16, "%s%.30s:%-4d Failed to resolve endpoint for %@ %@", ", "NREndpointResolve"", 169, v18, v26);
    }

    v27 = [MEMORY[0x277CD91B8] endpointWithHostname:@"::" port:v19];
  }

  v28 = v27;

  application_service = [v28 copyCEndpoint];
  return application_service;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  deviceIdentifier = [(NREndpoint *)self deviceIdentifier];
  portString = [(NREndpoint *)self portString];
  dataProtectionClass = [(NREndpoint *)self dataProtectionClass];
  if (dataProtectionClass < 5 && ((0x1Bu >> dataProtectionClass) & 1) != 0)
  {
    v7 = off_27996ADB0[dataProtectionClass];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown[%lld]", dataProtectionClass];
  }

  v8 = [v3 initWithFormat:@"NREndpoint[%@ port:%@ %@]", deviceIdentifier, portString, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  deviceIdentifier = [(NREndpoint *)self deviceIdentifier];
  portString = [(NREndpoint *)self portString];
  v7 = [v4 initWithDeviceIdentifier:deviceIdentifier portString:portString dataProtectionClass:{-[NREndpoint dataProtectionClass](self, "dataProtectionClass")}];

  return v7;
}

- (id)initInternalWithDeviceIdentifier:(void *)identifier portString:(int)string dataProtectionClass:(void *)class service:
{
  v58 = *MEMORY[0x277D85DE8];
  v9 = a2;
  identifierCopy = identifier;
  classCopy = class;
  if (!self)
  {
    goto LABEL_10;
  }

  if (!v9)
  {
    v24 = nrCopyLogObj();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v28 = v24;
      v29 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v29)
      {
LABEL_21:
        v31 = _os_log_pack_size();
        v33 = &v56 - ((MEMORY[0x28223BE20](v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
        v34 = *__error();
        v35 = _os_log_pack_fill(v33, v31, v34, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceIdentifier");
LABEL_28:
        *v35 = 136446466;
        *(v35 + 4) = "[NREndpoint initInternalWithDeviceIdentifier:portString:dataProtectionClass:service:]";
        *(v35 + 12) = 2080;
        *(v35 + 14) = "[NREndpoint initInternalWithDeviceIdentifier:portString:dataProtectionClass:service:]";
        goto LABEL_32;
      }
    }

    v30 = nrCopyLogObj();
    _NRLogWithArgs(v30, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceIdentifier", ", "[NREndpoint initInternalWithDeviceIdentifier:portString:dataProtectionClass:service:]", 227, "[NREndpoint initInternalWithDeviceIdentifier:portString:dataProtectionClass:service:]"");

    goto LABEL_21;
  }

  if (!identifierCopy)
  {
    v25 = nrCopyLogObj();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v36 = v25;
      v37 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

      if (!v37)
      {
LABEL_24:
        v39 = _os_log_pack_size();
        v33 = &v56 - ((MEMORY[0x28223BE20](v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
        v41 = *__error();
        v35 = _os_log_pack_fill(v33, v39, v41, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL portString");
        goto LABEL_28;
      }
    }

    v38 = nrCopyLogObj();
    _NRLogWithArgs(v38, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL portString", ", "[NREndpoint initInternalWithDeviceIdentifier:portString:dataProtectionClass:service:]", 228, "[NREndpoint initInternalWithDeviceIdentifier:portString:dataProtectionClass:service:]"");

    goto LABEL_24;
  }

  if ((string - 5) <= 0xFFFFFFFD)
  {
    v26 = nrCopyLogObj();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v42 = v26;
      v43 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

      if (!v43)
      {
LABEL_27:
        v45 = _os_log_pack_size();
        v33 = &v56 - ((MEMORY[0x28223BE20](v45, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
        v47 = *__error();
        v35 = _os_log_pack_fill(v33, v45, v47, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL dataProtectionClass == NRDataProtectionClassC || dataProtectionClass == NRDataProtectionClassD");
        goto LABEL_28;
      }
    }

    v44 = nrCopyLogObj();
    _NRLogWithArgs(v44, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL dataProtectionClass == NRDataProtectionClassC || dataProtectionClass == NRDataProtectionClassD", ", "[NREndpoint initInternalWithDeviceIdentifier:portString:dataProtectionClass:service:]", 229, "[NREndpoint initInternalWithDeviceIdentifier:portString:dataProtectionClass:service:]"");

    goto LABEL_27;
  }

  v57.receiver = self;
  v57.super_class = NREndpoint;
  v12 = objc_msgSendSuper2(&v57, sel_init);
  if (!v12)
  {
    v27 = nrCopyLogObj();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v48 = v27;
      v49 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

      if (!v49)
      {
LABEL_31:
        v51 = _os_log_pack_size();
        v33 = &v56 - ((MEMORY[0x28223BE20](v51, v52) + 15) & 0xFFFFFFFFFFFFFFF0);
        v53 = __error();
        v54 = _os_log_pack_fill(v33, v51, *v53, &dword_25B98C000, "%{public}s [super init] failed");
        *v54 = 136446210;
        *(v54 + 4) = "[NREndpoint initInternalWithDeviceIdentifier:portString:dataProtectionClass:service:]";
LABEL_32:
        v55 = nrCopyLogObj();
        _NRLogAbortWithPack(v55, v33);
      }
    }

    v50 = nrCopyLogObj();
    _NRLogWithArgs(v50, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NREndpoint initInternalWithDeviceIdentifier:portString:dataProtectionClass:service:]"", 230);

    goto LABEL_31;
  }

  self = v12;
  v13 = [v9 copy];
  v14 = self[2];
  self[2] = v13;

  v15 = [identifierCopy copy];
  v16 = self[3];
  self[3] = v15;

  *(self + 8) = string;
  objc_storeStrong(self + 4, class);
  deviceIdentifier = [self deviceIdentifier];
  nrDeviceIdentifier = [deviceIdentifier nrDeviceIdentifier];
  v19 = NREndpointCopyDictionary(nrDeviceIdentifier, [self dataProtectionClass]);
  v20 = v19;
  if (v19)
  {
    v21 = [v19 objectForKeyedSubscript:@"UseASQUIC"];
  }

  else
  {
    v21 = 0;
  }

  bOOLValue = [v21 BOOLValue];

  *(self + 9) = bOOLValue;
LABEL_10:

  return self;
}

@end