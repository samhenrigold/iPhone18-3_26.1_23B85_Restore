@interface RMModelCommandBase
+ (id)load:(id)load serializationType:(signed __int16)type error:(id *)error;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelCommandBase

+ (id)load:(id)load serializationType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  v18[1] = *MEMORY[0x277D85DE8];
  loadCopy = load;
  v8 = [loadCopy objectForKey:@"Type"];
  v9 = v8;
  v10 = @"(nil)";
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  if ([RMModelClasses classForCommandType:v11])
  {
    v12 = objc_opt_new();
    if ([v12 loadFromDictionary:loadCopy serializationType:typeCopy error:error])
    {
      error = v12;
    }

    else
    {
      error = 0;
    }
  }

  else if (error)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not match command type: %@", v11, *MEMORY[0x277CCA450]];
    v18[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *error = [v13 errorWithDomain:@"error" code:1 userInfo:v15];

    error = 0;
  }

  return error;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  v18[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Type" forKeyPath:@"commandType" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Identifier" forKeyPath:@"commandIdentifier" isRequired:1 defaultValue:0 error:error])
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"Payload"];
    v10 = v9;
    v11 = MEMORY[0x277CBEC10];
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LOBYTE(error) = [(RMModelCommandBase *)self loadPayloadFromDictionary:v12 serializationType:typeCopy error:error];
    }

    else if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid nested item in key: %@", @"Payload", *MEMORY[0x277CCA450]];
      v18[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      *error = [v13 errorWithDomain:@"error" code:1 userInfo:v15];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = 0;
  }

  return error;
}

- (id)serializeWithType:(signed __int16)type
{
  typeCopy = type;
  v5 = objc_opt_new();
  commandType = [(RMModelCommandBase *)self commandType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Type" value:commandType isRequired:1 defaultValue:0];

  commandIdentifier = [(RMModelCommandBase *)self commandIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Identifier" value:commandIdentifier isRequired:1 defaultValue:0];

  v8 = [(RMModelCommandBase *)self serializePayloadWithType:typeCopy];
  if ([v8 count])
  {
    [v5 setObject:v8 forKeyedSubscript:@"Payload"];
  }

  v9 = [v5 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMModelCommandBase;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:zone];
  v5 = [(NSString *)self->_commandType copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_commandIdentifier copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(RMModelAnyPayload *)self->_commandPayload copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end