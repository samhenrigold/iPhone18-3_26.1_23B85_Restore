@interface MCConferenceRoomDisplayPayload
+ (id)typeStrings;
- (MCConferenceRoomDisplayPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)configuration;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
@end

@implementation MCConferenceRoomDisplayPayload

+ (id)typeStrings
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.conferenceroomdisplay";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (MCConferenceRoomDisplayPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = MCConferenceRoomDisplayPayload;
  v9 = [(MCPayload *)&v26 initWithDictionary:dictionaryCopy profile:profile outError:error];
  if (v9)
  {
    v25 = 0;
    v10 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"Message" isRequired:0 outError:&v25];
    v11 = v25;
    customMessage = v9->_customMessage;
    v9->_customMessage = v10;

    if (v11)
    {
      v13 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
      v14 = v13;
      if (error)
      {
        v15 = v13;
        *error = v14;
      }

      v16 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v18 = objc_opt_class();
        v19 = v18;
        mCVerboseDescription = [v14 MCVerboseDescription];
        *buf = 138543618;
        v28 = v18;
        v29 = 2114;
        v30 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v9 = 0;
    }

    if ([dictionaryCopy count])
    {
      v21 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v22 = v21;
        friendlyName = [(MCPayload *)v9 friendlyName];
        *buf = 138543618;
        v28 = friendlyName;
        v29 = 2114;
        v30 = dictionaryCopy;
        _os_log_impl(&dword_1A795B000, v22, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }
  }

  return v9;
}

- (id)configuration
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  customMessage = [(MCConferenceRoomDisplayPayload *)self customMessage];
  [dictionary setObject:customMessage forKeyedSubscript:@"Message"];

  return dictionary;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCConferenceRoomDisplayPayload;
  stubDictionary = [(MCPayload *)&v6 stubDictionary];
  configuration = [(MCConferenceRoomDisplayPayload *)self configuration];
  [stubDictionary addEntriesFromDictionary:configuration];

  return stubDictionary;
}

- (id)payloadDescriptionKeyValueSections
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  customMessage = [(MCConferenceRoomDisplayPayload *)self customMessage];
  v5 = [customMessage length];

  if (v5)
  {
    v6 = [MCKeyValue alloc];
    customMessage2 = [(MCConferenceRoomDisplayPayload *)self customMessage];
    v8 = MCLocalizedString(@"CONFERENCE_ROOM_DISPLAY_CUSTOM_MESSAGE");
    v9 = [(MCKeyValue *)v6 initWithLocalizedString:customMessage2 localizedKey:v8];

    [v3 addObject:v9];
  }

  if ([v3 count])
  {
    v10 = [MCKeyValueSection sectionWithKeyValues:v3];
    v13[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end