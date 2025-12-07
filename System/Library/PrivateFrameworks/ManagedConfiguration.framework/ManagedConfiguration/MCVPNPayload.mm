@interface MCVPNPayload
- (MCVPNPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
@end

@implementation MCVPNPayload

- (MCVPNPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = MCVPNPayload;
  v9 = [(MCVPNPayloadBase *)&v14 initWithDictionary:dictionaryCopy profile:profile outError:error];
  if (v9)
  {
    if ([dictionaryCopy count])
    {
      v10 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v11 = v10;
        friendlyName = [(MCPayload *)v9 friendlyName];
        *buf = 138543618;
        v16 = friendlyName;
        v17 = 2114;
        v18 = dictionaryCopy;
        _os_log_impl(&dword_1A795B000, v11, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }
  }

  return v9;
}

@end