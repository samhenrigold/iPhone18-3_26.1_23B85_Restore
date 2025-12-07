@interface CCTypeIdentifierRegistryBase
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
+ (unsigned)itemTypeForFieldType:(unsigned __int16)type error:(id *)error;
@end

@implementation CCTypeIdentifierRegistryBase

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  identifierCopy = identifier;
  v4 = [self itemMessageSubclassForIdentifier:?];
  if (v4)
  {
    v4 = [v4 descriptionForTypeIdentifier:identifierCopy];
  }

  return v4;
}

+ (unsigned)itemTypeForFieldType:(unsigned __int16)type error:(id *)error
{
  typeCopy = type;
  v6 = [self itemMessageSubclassForFieldType:?];
  if (v6)
  {

    return [v6 itemType];
  }

  else
  {
    typeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided type identifer %hu is not a valid field type", typeCopy];
    v9 = CCUnrecognizedIdentifierErrorForDescription(typeCopy);
    CCSetError(error, v9);

    return CCTypeIdentifierUnknown;
  }
}

@end