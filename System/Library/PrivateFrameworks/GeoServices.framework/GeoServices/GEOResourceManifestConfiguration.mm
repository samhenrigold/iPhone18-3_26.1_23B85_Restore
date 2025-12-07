@interface GEOResourceManifestConfiguration
+ (id)defaultConfiguration;
- (GEOResourceManifestConfiguration)init;
- (NSString)applicationIdentifier;
- (NSString)applicationVersion;
- (NSString)countryCode;
- (NSString)environment;
- (NSString)hardwareIdentifier;
- (NSString)os;
- (NSString)osBuild;
- (NSString)osVersion;
- (NSString)urlTemplate;
- (id)manifestDictionaryRepresentation;
@end

@implementation GEOResourceManifestConfiguration

- (GEOResourceManifestConfiguration)init
{
  v9.receiver = self;
  v9.super_class = GEOResourceManifestConfiguration;
  v2 = [(GEOResourceManifestConfiguration *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_tileGroupIdentifier = 0;
    v4 = +[GEOPlatform sharedPlatform];
    [v4 deviceScreenScale];
    if (v5 <= 1.0)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (v5 > 2.0)
    {
      v6 = 3;
    }

    v3->_defaultScale = v6;

    v7 = v3;
  }

  return v3;
}

+ (id)defaultConfiguration
{
  v2 = objc_alloc_init(GEOResourceManifestConfiguration);

  return v2;
}

- (NSString)environment
{
  environment = self->_environment;
  if (environment)
  {
    v3 = environment;
  }

  else
  {
    v4 = _getValue(51, &GeoServicesConfig_CustomEnvironmentConfiguration_Metadata, 1, 0, 0, 0);
    v5 = [v4 objectForKey:@"GEOResourceManifestEnvironment"];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = _getValue(71, &GeoServicesConfig_ResourceManifestEnvironment_Metadata, 1, 0, 0, 0);
    }

    v3 = v7;
  }

  return v3;
}

- (id)manifestDictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(GEOResourceManifestConfiguration *)self os];
  [dictionary setObject:v4 forKeyedSubscript:@"os"];

  osVersion = [(GEOResourceManifestConfiguration *)self osVersion];
  [dictionary setObject:osVersion forKeyedSubscript:@"os_version"];

  osBuild = [(GEOResourceManifestConfiguration *)self osBuild];
  [dictionary setObject:osBuild forKeyedSubscript:@"os_build"];

  countryCode = [(GEOResourceManifestConfiguration *)self countryCode];
  [dictionary setObject:countryCode forKeyedSubscript:@"country_code"];

  hardwareIdentifier = [(GEOResourceManifestConfiguration *)self hardwareIdentifier];
  [dictionary setObject:hardwareIdentifier forKeyedSubscript:@"hardware"];

  applicationIdentifier = [(GEOResourceManifestConfiguration *)self applicationIdentifier];
  [dictionary setObject:applicationIdentifier forKeyedSubscript:@"application"];

  applicationVersion = [(GEOResourceManifestConfiguration *)self applicationVersion];
  [dictionary setObject:applicationVersion forKeyedSubscript:@"application_version"];

  return dictionary;
}

- (NSString)os
{
  os = self->_os;
  if (os)
  {
    v4 = os;
  }

  else
  {
    v4 = @"ios";
  }

  return v4;
}

- (NSString)osVersion
{
  osVersion = self->_osVersion;
  if (osVersion)
  {
    osVersion = osVersion;
  }

  else
  {
    v4 = +[GEOPlatform sharedPlatform];
    osVersion = [v4 osVersion];
  }

  return osVersion;
}

- (NSString)osBuild
{
  osBuild = self->_osBuild;
  if (osBuild)
  {
    buildVersion = osBuild;
  }

  else
  {
    v4 = +[GEOPlatform sharedPlatform];
    buildVersion = [v4 buildVersion];
  }

  return buildVersion;
}

- (NSString)applicationIdentifier
{
  if (self->_applicationIdentifier)
  {
    return self->_applicationIdentifier;
  }

  else
  {
    return @"geod";
  }
}

- (NSString)countryCode
{
  countryCode = self->_countryCode;
  if (countryCode)
  {
    v3 = countryCode;
  }

  else
  {
    v4 = +[GEOCountryConfiguration sharedConfiguration];
    countryCode = [v4 countryCode];

    if (countryCode)
    {
      v3 = countryCode;
    }

    else
    {
      v3 = @"unknown";
    }
  }

  return v3;
}

- (NSString)hardwareIdentifier
{
  hardwareIdentifier = self->_hardwareIdentifier;
  if (hardwareIdentifier)
  {
    hardwareIdentifier = hardwareIdentifier;
  }

  else
  {
    v4 = +[GEOPlatform sharedPlatform];
    hardwareIdentifier = [v4 hardwareIdentifier];
  }

  return hardwareIdentifier;
}

- (NSString)applicationVersion
{
  if (self->_applicationVersion)
  {
    return self->_applicationVersion;
  }

  else
  {
    return @"1";
  }
}

- (NSString)urlTemplate
{
  urlTemplate = self->_urlTemplate;
  if (urlTemplate)
  {
    v3 = urlTemplate;
  }

  else
  {
    v3 = _GEOGetURLWithSource(1, 0, 1, 0);
  }

  return v3;
}

@end