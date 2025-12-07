@interface RMModelDeclarationBase
+ (BOOL)isDeclarationTypeKnown:(id)known;
+ (BOOL)isSupportedDeclaration:(id)declaration platform:(int64_t)platform scope:(int64_t)scope;
+ (id)load:(id)load serializationType:(signed __int16)type error:(id *)error;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)updateServerToken;
@end

@implementation RMModelDeclarationBase

+ (BOOL)isDeclarationTypeKnown:(id)known
{
  knownCopy = known;
  if ([RMModelClasses classForDeclarationType:knownCopy])
  {
    v4 = 1;
  }

  else
  {
    v5 = +[RMModelConfigurationSchema schemas];
    v6 = [v5 objectForKeyedSubscript:knownCopy];
    v4 = v6 != 0;
  }

  return v4;
}

+ (BOOL)isSupportedDeclaration:(id)declaration platform:(int64_t)platform scope:(int64_t)scope
{
  declarationCopy = declaration;
  v8 = [RMModelClasses classForDeclarationType:declarationCopy];
  if (v8)
  {
    if (([(objc_class *)v8 isSupportedForPlatform:platform scope:scope]& 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = +[RMModelConfigurationSchema schemas];
    v10 = [v9 objectForKeyedSubscript:declarationCopy];

    if (!v10 || ([v10 isSupportedForPlatform:platform scope:scope] & 1) == 0)
    {

LABEL_9:
      v11 = 0;
      goto LABEL_10;
    }
  }

  v11 = 1;
LABEL_10:

  return v11;
}

+ (id)load:(id)load serializationType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  loadCopy = load;
  v8 = [loadCopy objectForKey:@"Type"];
  v9 = v8;
  v10 = @"(nil)";
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  if (![RMModelClasses classForDeclarationType:v11])
  {
    v12 = +[RMModelConfigurationSchema schemas];
    v13 = [v12 objectForKeyedSubscript:v11];

    objc_opt_class();
  }

  v14 = objc_opt_new();
  v15 = [v14 loadFromDictionary:loadCopy serializationType:typeCopy error:error];

  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  v18[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Type" forKeyPath:@"declarationType" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Identifier" forKeyPath:@"declarationIdentifier" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ServerToken" forKeyPath:@"declarationServerToken" isRequired:1 defaultValue:0 error:error])
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
      LOBYTE(error) = [(RMModelDeclarationBase *)self loadPayloadFromDictionary:v12 serializationType:typeCopy error:error];
    }

    else if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid nested item in key: %@", @"Payload", *MEMORY[0x277CCA450]];
      v18[0] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      *error = [v14 errorWithDomain:@"error" code:1 userInfo:v16];

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
  declarationType = [(RMModelDeclarationBase *)self declarationType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Type" value:declarationType isRequired:1 defaultValue:0];

  declarationIdentifier = [(RMModelDeclarationBase *)self declarationIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Identifier" value:declarationIdentifier isRequired:1 defaultValue:0];

  declarationServerToken = [(RMModelDeclarationBase *)self declarationServerToken];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ServerToken" value:declarationServerToken isRequired:1 defaultValue:0];

  v9 = [(RMModelDeclarationBase *)self serializePayloadWithType:typeCopy];
  [v5 setObject:v9 forKeyedSubscript:@"Payload"];

  v10 = [v5 copy];

  return v10;
}

- (void)updateServerToken
{
  v3 = MEMORY[0x277CCAC58];
  v4 = [(RMModelDeclarationBase *)self serializePayloadWithType:0];
  v7 = [v3 dataWithPropertyList:v4 format:100 options:0 error:0];

  if (v7)
  {
    rMModelSHA1HexString = [v7 RMModelSHA1HexString];
  }

  else
  {
    rMModelSHA1HexString = &stru_287451740;
  }

  objc_storeStrong(&self->_declarationServerToken, rMModelSHA1HexString);
  v6 = v7;
  if (v7)
  {

    v6 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMModelDeclarationBase;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
  v5 = [(NSString *)self->_declarationType copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_declarationIdentifier copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_declarationServerToken copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(RMModelAnyPayload *)self->_declarationPayload copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end