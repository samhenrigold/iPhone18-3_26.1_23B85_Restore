@interface ProviderConfiguration
- (BOOL)isEqualToConfiguration:(id)configuration;
- (BOOL)providerOff;
- (BOOL)useV5ForConnection:(id)connection;
- (ProviderConfiguration)initWithConfiguration:(id)configuration;
- (void)_configureToBeOff;
- (void)_parseConfiguration:(id)configuration;
@end

@implementation ProviderConfiguration

- (ProviderConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = ProviderConfiguration;
  v5 = [(ProviderConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    [(ProviderConfiguration *)v5 _parseConfiguration:configurationCopy];
    v8 = v5;
  }

  return v5;
}

- (BOOL)providerOff
{
  if (self->_providerOff)
  {
    return 1;
  }

  else
  {
    return self->_socialEngineeringThreatTypeOff && self->_malwareThreatTypeOff && self->_unwantedSoftwareThreatTypeOff;
  }
}

- (void)_configureToBeOff
{
  *&self->_socialEngineeringThreatTypeOff = 257;
  self->_unwantedSoftwareThreatTypeOff = 1;
  self->_useV5 = 0;
}

- (void)_parseConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  self->_proxyOff = 0;
  if (configurationCopy)
  {
    v6 = [configurationCopy objectForKey:@"Proxy Versions To Turn Off"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = +[ProxyConfiguration currentVersion];
      v8 = [v6 containsObject:v7];

      if (v8)
      {
        self->_proxyOff = 1;
      }
    }

    v9 = [v5 objectForKey:@"Versions to use V5 Batch Get"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = +[ProxyConfiguration currentVersion];
      v11 = [v9 containsObject:v10];

      if (v11)
      {
        self->_useV5BatchGet = 1;
      }
    }

    v12 = [v5 objectForKey:@"Versions to use V5"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = +[ProxyConfiguration currentVersion];
      v14 = [v12 containsObject:v13];

      if (v14)
      {
        v17 = SSBOSLogRemoteConfiguration(v15, v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2255EE000, v17, OS_LOG_TYPE_INFO, "Using Safe Browsing V5 for provider.", buf, 2u);
        }

        self->_useV5 = 1;
      }
    }

    isKindOfClass = [v5 objectForKey:@"Regions To Turn Off"];
    v19 = isKindOfClass;
    if (isKindOfClass)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        [(ProviderConfiguration *)self _configureToUseDefaultValues];
LABEL_41:

        goto LABEL_42;
      }
    }

    v30 = v9;
    v31 = v6;
    v20 = Backend::Google::SSBUtilities::currentCountryCode(isKindOfClass);
    v29 = v20;
    if (v19)
    {
      v20 = [v19 containsObject:v20];
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = Backend::Google::SSBUtilities::currentPlatformName(v20);
    v23 = [v5 objectForKey:@"Platforms To Turn Off"];
    v24 = v23;
    if (v23)
    {
      v25 = [v23 containsObject:v22];
    }

    else
    {
      v25 = 0;
    }

    v26 = [v5 objectForKey:@"Web Browser Only"];
    v27 = v26;
    if (v26 && [v26 BOOLValue])
    {
      self->_isWebBrowserOnly = 1;
    }

    v28 = [v5 objectForKey:@"Threat Types To Turn Off"];
    if (v28)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v28 containsObject:@"Social Engineering"])
        {
          self->_socialEngineeringThreatTypeOff = 1;
        }

        if ([v28 containsObject:@"Malware"])
        {
          self->_malwareThreatTypeOff = 1;
        }

        if ([v28 containsObject:@"Unwanted Software"])
        {
          self->_unwantedSoftwareThreatTypeOff = 1;
        }

        goto LABEL_36;
      }

      [(ProviderConfiguration *)self _configureToUseDefaultValues];
    }

    else
    {
      if (!(((v19 | v24) == 0) | (v25 | v21) & 1))
      {
LABEL_36:
        if (self->_useV5 && ((v21 | v25) & 1) != 0)
        {
          self->_useV5 = 0;
        }

        goto LABEL_40;
      }

      [(ProviderConfiguration *)self _configureToBeOff];
    }

LABEL_40:

    v9 = v30;
    v6 = v31;
    goto LABEL_41;
  }

  [(ProviderConfiguration *)self _configureToUseDefaultValues];
LABEL_42:
}

- (BOOL)isEqualToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  configuration = self->_configuration;
  v6 = !(configurationCopy | configuration) || configurationCopy && [(NSDictionary *)configuration isEqualToDictionary:configurationCopy];

  return v6;
}

- (BOOL)useV5ForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = connectionCopy;
  v6 = self->_useV5 && (!self->_isWebBrowserOnly || Backend::Google::SSBUtilities::hasWebBrowserEntitlement(connectionCopy));

  return v6;
}

@end