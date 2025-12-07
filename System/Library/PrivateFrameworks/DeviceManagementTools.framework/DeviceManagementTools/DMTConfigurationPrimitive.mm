@interface DMTConfigurationPrimitive
- (DMTConfigurationPrimitive)initWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation DMTConfigurationPrimitive

- (DMTConfigurationPrimitive)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = DMTConfigurationPrimitive;
  v7 = [(DMTConfigurationPrimitive *)&v29 init];
  if (v7 && (v8 = [dictionaryCopy copy], rawDictionary = v7->_rawDictionary, v7->_rawDictionary = v8, rawDictionary, v28 = 0, DMTValidateProfileString(dictionaryCopy, @"PayloadDisplayName", 1, &v28), v10 = objc_claimAutoreleasedReturnValue(), v11 = v28, displayName = v7->_displayName, v7->_displayName = v10, displayName, v27 = v11, DMTValidateProfileString(dictionaryCopy, @"PayloadIdentifier", 0, &v27), v13 = objc_claimAutoreleasedReturnValue(), v14 = v27, v11, identifier = v7->_identifier, v7->_identifier = v13, identifier, v26 = v14, DMTValidateProfileString(dictionaryCopy, @"PayloadType", 0, &v26), v16 = objc_claimAutoreleasedReturnValue(), v17 = v26, v14, type = v7->_type, v7->_type = v16, type, v25 = v17, DMTValidateProfileString(dictionaryCopy, @"PayloadUUID", 0, &v25), v19 = objc_claimAutoreleasedReturnValue(), v20 = v25, v17, uuid = v7->_uuid, v7->_uuid = v19, uuid, v20))
  {
    if (error)
    {
      v22 = v20;
      v23 = 0;
      *error = v20;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = v7;
    v20 = 0;
  }

  return v23;
}

@end