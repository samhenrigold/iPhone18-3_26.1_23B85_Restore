@interface CMSExtensionQueuesContentProtectionEndpointConfiguration
- (CMSExtensionQueuesContentProtectionEndpointConfiguration)init;
- (CMSExtensionQueuesContentProtectionEndpointConfiguration)initWithDictionary:(id)dictionary endpoint:(id)endpoint baseURL:(id)l groupHeaders:(id)headers;
- (id)description;
@end

@implementation CMSExtensionQueuesContentProtectionEndpointConfiguration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  endpointURL = [(CMSExtensionEndpointConfiguration *)self endpointURL];
  groupHeaders = [(CMSExtensionEndpointConfiguration *)self groupHeaders];
  headers = [(CMSExtensionEndpointConfiguration *)self headers];
  v7 = [v3 stringWithFormat:@"<CMSExtensionQueuesContentProtectionEndpointConfiguration: endpointURL:%@ groupHeaders:%@ headers:%@ keySystem:%@ certURL:%@>", endpointURL, groupHeaders, headers, self->_keySystemIdentifier, self->_fairPlayKeySystemCertificateUrl];

  return v7;
}

- (CMSExtensionQueuesContentProtectionEndpointConfiguration)init
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:&stru_2856A7BB0];
  v4 = [(CMSExtensionQueuesContentProtectionEndpointConfiguration *)self initWithDictionary:MEMORY[0x277CBEC10] endpoint:&stru_2856A7BB0 baseURL:v3 groupHeaders:MEMORY[0x277CBEC10]];

  return v4;
}

- (CMSExtensionQueuesContentProtectionEndpointConfiguration)initWithDictionary:(id)dictionary endpoint:(id)endpoint baseURL:(id)l groupHeaders:(id)headers
{
  dictionaryCopy = dictionary;
  endpointCopy = endpoint;
  lCopy = l;
  v24.receiver = self;
  v24.super_class = CMSExtensionQueuesContentProtectionEndpointConfiguration;
  v13 = [(CMSExtensionEndpointConfiguration *)&v24 initWithDictionary:dictionaryCopy endpoint:endpointCopy baseURL:lCopy groupHeaders:headers];
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = [dictionaryCopy cmsOptionalDictionaryForKey:@"cks"];
  if (!v14)
  {
    v15 = _CMSILogingFacility(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CMSExtensionQueuesContentProtectionEndpointConfiguration initWithDictionary:endpoint:baseURL:groupHeaders:];
    }

    goto LABEL_13;
  }

  v15 = v14;
  v16 = [v14 cmsOptionalStringForKey:@"keySystem"];
  v17 = v16;
  if (!v16 || (v16 = [v16 isEqualToString:@"ContentKeySystemFairPlayStreaming"], (v16 & 1) == 0))
  {
    v18 = _CMSILogingFacility(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CMSExtensionQueuesContentProtectionEndpointConfiguration initWithDictionary:endpoint:baseURL:groupHeaders:];
    }

    goto LABEL_10;
  }

  objc_storeStrong(&v13->_keySystemIdentifier, *MEMORY[0x277CE5D20]);
  v18 = [v15 cmsOptionalStringForKey:@"certUrl"];
  if (![v18 length])
  {
    v23 = _CMSILogingFacility(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CMSExtensionQueuesContentProtectionEndpointConfiguration initWithDictionary:endpoint:baseURL:groupHeaders:];
    }

LABEL_10:
LABEL_13:

    v21 = 0;
    goto LABEL_14;
  }

  v19 = [MEMORY[0x277CBEBC0] URLWithString:v18 relativeToURL:lCopy];
  fairPlayKeySystemCertificateUrl = v13->_fairPlayKeySystemCertificateUrl;
  v13->_fairPlayKeySystemCertificateUrl = v19;

LABEL_7:
  v21 = v13;
LABEL_14:

  return v21;
}

- (void)initWithDictionary:endpoint:baseURL:groupHeaders:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2114;
  v4 = v0;
}

@end