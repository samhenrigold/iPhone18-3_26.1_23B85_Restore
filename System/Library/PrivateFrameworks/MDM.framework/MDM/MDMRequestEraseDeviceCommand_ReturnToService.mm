@interface MDMRequestEraseDeviceCommand_ReturnToService
+ (NSSet)allowedCommandKeys;
+ (id)buildRequiredOnlyWithEnabled:(id)enabled;
+ (id)buildWithEnabled:(id)enabled wiFiProfileData:(id)data mdmProfileData:(id)profileData bootstrapToken:(id)token;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation MDMRequestEraseDeviceCommand_ReturnToService

+ (NSSet)allowedCommandKeys
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"Enabled";
  v6[1] = @"WiFiProfileData";
  v6[2] = @"MDMProfileData";
  v6[3] = @"BootstrapToken";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)buildWithEnabled:(id)enabled wiFiProfileData:(id)data mdmProfileData:(id)profileData bootstrapToken:(id)token
{
  tokenCopy = token;
  profileDataCopy = profileData;
  dataCopy = data;
  enabledCopy = enabled;
  v13 = objc_opt_new();
  [v13 setCommandEnabled:enabledCopy];

  [v13 setCommandWiFiProfileData:dataCopy];
  [v13 setCommandMDMProfileData:profileDataCopy];

  [v13 setCommandBootstrapToken:tokenCopy];

  return v13;
}

+ (id)buildRequiredOnlyWithEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = objc_opt_new();
  [v4 setCommandEnabled:enabledCopy];

  return v4;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  v18[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[MDMRequestEraseDeviceCommand_ReturnToService allowedCommandKeys];
  [v11 minusSet:v12];

  if ([v11 count])
  {
    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected payload keys: %@", v11, *MEMORY[0x277CCA450]];
      v18[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      *error = [v13 errorWithDomain:@"error" code:1 userInfo:v15];

LABEL_8:
      LOBYTE(error) = 0;
    }
  }

  else
  {
    if (![(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"Enabled" forKeyPath:@"commandEnabled" isRequired:1 defaultValue:0 error:error]|| ![(RMModelPayloadBase *)self loadDataFromDictionary:dictionaryCopy usingKey:@"WiFiProfileData" forKeyPath:@"commandWiFiProfileData" isRequired:0 defaultValue:0 serializationType:typeCopy error:error]|| ![(RMModelPayloadBase *)self loadDataFromDictionary:dictionaryCopy usingKey:@"MDMProfileData" forKeyPath:@"commandMDMProfileData" isRequired:0 defaultValue:0 serializationType:typeCopy error:error])
    {
      goto LABEL_8;
    }

    LOBYTE(error) = [(RMModelPayloadBase *)self loadDataFromDictionary:dictionaryCopy usingKey:@"BootstrapToken" forKeyPath:@"commandBootstrapToken" isRequired:0 defaultValue:0 serializationType:typeCopy error:error];
  }

  return error;
}

- (id)serializeWithType:(signed __int16)type
{
  typeCopy = type;
  v5 = objc_opt_new();
  commandEnabled = [(MDMRequestEraseDeviceCommand_ReturnToService *)self commandEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"Enabled" value:commandEnabled isRequired:1 defaultValue:0];

  commandWiFiProfileData = [(MDMRequestEraseDeviceCommand_ReturnToService *)self commandWiFiProfileData];
  [(RMModelPayloadBase *)self serializeDataIntoDictionary:v5 usingKey:@"WiFiProfileData" value:commandWiFiProfileData isRequired:0 defaultValue:0 serializationType:typeCopy];

  commandMDMProfileData = [(MDMRequestEraseDeviceCommand_ReturnToService *)self commandMDMProfileData];
  [(RMModelPayloadBase *)self serializeDataIntoDictionary:v5 usingKey:@"MDMProfileData" value:commandMDMProfileData isRequired:0 defaultValue:0 serializationType:typeCopy];

  commandBootstrapToken = [(MDMRequestEraseDeviceCommand_ReturnToService *)self commandBootstrapToken];
  [(RMModelPayloadBase *)self serializeDataIntoDictionary:v5 usingKey:@"BootstrapToken" value:commandBootstrapToken isRequired:0 defaultValue:0 serializationType:typeCopy];

  v10 = [v5 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = MDMRequestEraseDeviceCommand_ReturnToService;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
  v5 = [(NSNumber *)self->_commandEnabled copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSData *)self->_commandWiFiProfileData copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSData *)self->_commandMDMProfileData copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSData *)self->_commandBootstrapToken copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end