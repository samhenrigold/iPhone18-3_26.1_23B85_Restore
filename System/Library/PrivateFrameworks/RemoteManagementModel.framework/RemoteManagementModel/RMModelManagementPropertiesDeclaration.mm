@interface RMModelManagementPropertiesDeclaration
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier;
+ (id)buildWithIdentifier:(id)identifier;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelManagementPropertiesDeclaration

+ (id)buildWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  [v4 setDeclarationType:@"com.apple.management.properties"];
  if (identifierCopy)
  {
    [v4 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v4 setDeclarationIdentifier:uUIDString];
  }

  [v4 updateServerToken];

  return v4;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  [v4 setDeclarationType:@"com.apple.management.properties"];
  if (identifierCopy)
  {
    [v4 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v4 setDeclarationIdentifier:uUIDString];
  }

  [v4 updateServerToken];

  return v4;
}

+ (id)supportedOS
{
  v29[6] = *MEMORY[0x277D85DE8];
  v28[0] = &unk_28746B3C0;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466F68];
  v27[0] = v21;
  v20 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466F80];
  v27[1] = v20;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v29[0] = v19;
  v28[1] = &unk_28746B3D8;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466F98];
  v26[0] = v18;
  v17 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466FB0];
  v26[1] = v17;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v29[1] = v16;
  v28[2] = &unk_28746B3F0;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466FC8];
  v25[0] = v15;
  v14 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466FE0];
  v25[1] = v14;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v29[2] = v13;
  v28[3] = &unk_28746B408;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466FF8];
  v24[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467010];
  v24[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v29[3] = v4;
  v28[4] = &unk_28746B420;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467028];
  v23[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467040];
  v23[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v29[4] = v7;
  v28[5] = &unk_28746B438;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467058];
  v22[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467070];
  v22[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v29[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v7 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v9 = [v7 setWithArray:allKeys];

  v10 = +[RMModelManagementPropertiesDeclaration allowedPayloadKeys];
  [v9 minusSet:v10];

  v11 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = dictionaryCopy;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if ([v9 containsObject:{v17, v21}])
        {
          v18 = [v12 objectForKeyedSubscript:v17];
          [v11 setObject:v18 forKeyedSubscript:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    v19 = [v11 copy];
    [(RMModelManagementPropertiesDeclaration *)self setPayloadANY:v19];
  }

  return 1;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  payloadANY = [(RMModelManagementPropertiesDeclaration *)self payloadANY];
  v6 = [payloadANY countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(payloadANY);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        payloadANY2 = [(RMModelManagementPropertiesDeclaration *)self payloadANY];
        v12 = [payloadANY2 objectForKeyedSubscript:v10];
        [v4 setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [payloadANY countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = RMModelManagementPropertiesDeclaration;
  v4 = [(RMModelDeclarationBase *)&v8 copyWithZone:zone];
  v5 = [(NSDictionary *)self->_payloadANY copy];
  v6 = v4[6];
  v4[6] = v5;

  return v4;
}

@end