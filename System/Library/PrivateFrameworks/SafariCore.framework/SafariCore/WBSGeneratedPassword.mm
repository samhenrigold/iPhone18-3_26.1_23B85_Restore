@interface WBSGeneratedPassword
+ (id)keychainDictionaryRepresentationWithPassword:(id)password;
- (WBSGeneratedPassword)initWithKeychainItemDictionary:(id)dictionary;
- (id)_initWithPassword:(id)password protectionSpace:(id)space generationDate:(id)date wasGeneratedInPrivateBrowsingSession:(BOOL)session keychainPersistentReference:(id)reference originalDictionary:(id)dictionary;
- (id)keychainDictionaryRepresentationWithPassword:(id)password;
@end

@implementation WBSGeneratedPassword

+ (id)keychainDictionaryRepresentationWithPassword:(id)password
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (password)
  {
    v7 = @"pwd";
    v8[0] = password;
    v3 = MEMORY[0x1E695DF20];
    passwordCopy = password;
    v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (WBSGeneratedPassword)initWithKeychainItemDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697AC30]];
  [v5 doubleValue];
  v7 = v6;

  v8 = *MEMORY[0x1E697AE80];
  v9 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697AE80]];
  v10 = [v9 isEqualToString:@"Saved In Private Browsing"];
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E696AF20]);
    v13 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697AE00]];
    v14 = WBSHTTPProtocolFromSecAttrProtocolValue(v13);
    [v12 setScheme:v14];

    v15 = [dictionaryCopy objectForKeyedSubscript:v8];
    [v12 setHost:v15];

    v16 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697ADF8]];
    [v12 setPort:v16];

    v17 = MEMORY[0x1E695AC58];
    v18 = [v12 URL];
    v11 = [v17 safari_HTMLFormProtectionSpaceForURL:v18];
  }

  v20 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
  if (v20)
  {
    v34 = 0;
    v21 = [MEMORY[0x1E696AE40] propertyListWithData:v20 options:0 format:0 error:&v34];
    v22 = v34;
    v24 = v22;
    if (v21)
    {
      v25 = [v21 objectForKeyedSubscript:@"pwd"];
      v26 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v7];
      v27 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697B3C8]];
      selfCopy = self;
      v29 = v27;
      v30 = [(WBSGeneratedPassword *)selfCopy _initWithPassword:v25 protectionSpace:v11 generationDate:v26 wasGeneratedInPrivateBrowsingSession:v10 keychainPersistentReference:v27 originalDictionary:v21];

      self = v30;
    }

    else
    {
      v32 = WBS_LOG_CHANNEL_PREFIXPasswords(v22, v23);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [(WBSGeneratedPassword *)v32 initWithKeychainItemDictionary:v24];
      }

      v30 = 0;
    }
  }

  else
  {
    v31 = WBS_LOG_CHANNEL_PREFIXPasswords(0, v19);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [WBSGeneratedPassword initWithKeychainItemDictionary:v31];
    }

    v30 = 0;
  }

  return v30;
}

- (id)_initWithPassword:(id)password protectionSpace:(id)space generationDate:(id)date wasGeneratedInPrivateBrowsingSession:(BOOL)session keychainPersistentReference:(id)reference originalDictionary:(id)dictionary
{
  passwordCopy = password;
  spaceCopy = space;
  dateCopy = date;
  referenceCopy = reference;
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = WBSGeneratedPassword;
  v19 = [(WBSGeneratedPassword *)&v31 init];
  if (v19)
  {
    v20 = [dictionaryCopy copy];
    originalKeychainDictionary = v19->_originalKeychainDictionary;
    v19->_originalKeychainDictionary = v20;

    v22 = [passwordCopy copy];
    password = v19->_password;
    v19->_password = v22;

    v24 = [spaceCopy copy];
    protectionSpace = v19->_protectionSpace;
    v19->_protectionSpace = v24;

    objc_storeStrong(&v19->_generationDate, date);
    v19->_wasGeneratedInPrivateBrowsingSession = session;
    objc_storeStrong(&v19->_keychainPersistentReference, reference);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v19->_identifier;
    v19->_identifier = uUIDString;

    v29 = v19;
  }

  return v19;
}

- (id)keychainDictionaryRepresentationWithPassword:(id)password
{
  if (self->_originalKeychainDictionary)
  {
    originalKeychainDictionary = self->_originalKeychainDictionary;
  }

  else
  {
    originalKeychainDictionary = MEMORY[0x1E695E0F8];
  }

  passwordCopy = password;
  v5 = [(NSDictionary *)originalKeychainDictionary mutableCopy];
  [v5 setObject:passwordCopy forKeyedSubscript:@"pwd"];

  return v5;
}

- (void)initWithKeychainItemDictionary:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1B8447000, v3, OS_LOG_TYPE_ERROR, "Unable to unarchive data blob from generated password item: %@", &v5, 0xCu);
}

- (void)initWithKeychainItemDictionary:(void *)a1 .cold.2(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1B8447000, v1, OS_LOG_TYPE_ERROR, "Found non-Data object in data field of generated password item: %@", &v4, 0xCu);
}

@end