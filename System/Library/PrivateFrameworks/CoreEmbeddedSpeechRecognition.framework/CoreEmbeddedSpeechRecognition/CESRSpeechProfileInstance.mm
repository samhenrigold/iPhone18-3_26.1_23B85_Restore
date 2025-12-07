@interface CESRSpeechProfileInstance
+ (id)loadAllInstancesAtSpeechProfileSiteURL:(id)l error:(id *)error;
+ (id)loadInstanceAtSpeechProfileSiteURL:(id)l locale:(id)locale error:(id *)error;
+ (id)loadOrCreateInstanceAtSpeechProfileSiteURL:(id)l locale:(id)locale options:(unsigned __int8)options error:(id *)error;
- (BOOL)_updateOptions:(unsigned __int8)options error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInstance:(id)instance;
- (BOOL)remove:(id *)remove;
- (BOOL)updateOptions:(unsigned __int8)options error:(id *)error;
- (CESRSpeechProfileInstance)init;
- (CESRSpeechProfileInstance)initWithSpeechProfileSiteURL:(id)l create:(BOOL)create locale:(id)locale options:(unsigned __int8)options error:(id *)error;
- (id)_changeRegistryFilename;
- (id)_updateVersion:(id)version forKeys:(id)keys logKey:(id)key;
- (id)description;
- (id)lastCompletedVersionForSpeechCategory:(id)category;
- (id)lastRegisteredVersionForSpeechCategory:(id)category;
- (unint64_t)hash;
- (unsigned)options;
- (void)recordUpdateCompletedForSpeechCategories:(id)categories version:(id)version;
- (void)registerUpdateForSpeechCategories:(id)categories version:(id)version;
@end

@implementation CESRSpeechProfileInstance

- (unint64_t)hash
{
  v3 = [(NSLocale *)self->_locale hash];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CESRSpeechProfileInstance options](self, "options")}];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqualToInstance:(id)instance
{
  instanceCopy = instance;
  locale = self->_locale;
  locale = [instanceCopy locale];
  if ([(NSLocale *)locale isEqual:locale])
  {
    options = [(CESRSpeechProfileInstance *)self options];
    v8 = options == [instanceCopy options];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CESRSpeechProfileInstance *)self isEqualToInstance:v5];
  }

  return v6;
}

- (BOOL)updateOptions:(unsigned __int8)options error:(id *)error
{
  log = self->_log;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:options];
  LOBYTE(error) = [(CESRDictionaryLog *)log writeUpdatedObject:v6 forKey:@"options" error:error];

  return error;
}

- (unsigned)options
{
  v2 = [(CESRDictionaryLog *)self->_log objectForKey:@"options"];
  unsignedCharValue = [v2 unsignedCharValue];

  return unsignedCharValue;
}

- (id)lastCompletedVersionForSpeechCategory:(id)category
{
  log = self->_log;
  categoryCopy = category;
  v5 = [(CESRDictionaryLog *)log mutableDictionaryForKey:@"completed" error:0];
  v6 = [v5 objectForKey:categoryCopy];

  return v6;
}

- (id)lastRegisteredVersionForSpeechCategory:(id)category
{
  log = self->_log;
  categoryCopy = category;
  v5 = [(CESRDictionaryLog *)log mutableDictionaryForKey:@"registered" error:0];
  v6 = [v5 objectForKey:categoryCopy];

  return v6;
}

- (void)recordUpdateCompletedForSpeechCategories:(id)categories version:(id)version
{
  log = self->_log;
  v5 = [(CESRSpeechProfileInstance *)self _updateVersion:version forKeys:categories logKey:@"completed"];
  [(CESRDictionaryLog *)log writeUpdatedObject:v5 forKey:@"completed" error:0];
}

- (void)registerUpdateForSpeechCategories:(id)categories version:(id)version
{
  log = self->_log;
  v5 = [(CESRSpeechProfileInstance *)self _updateVersion:version forKeys:categories logKey:@"registered"];
  [(CESRDictionaryLog *)log writeUpdatedObject:v5 forKey:@"registered" error:0];
}

- (id)_updateVersion:(id)version forKeys:(id)keys logKey:(id)key
{
  v22 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  keysCopy = keys;
  v10 = [(CESRDictionaryLog *)self->_log mutableDictionaryForKey:key error:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = keysCopy;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v10 setObject:versionCopy forKey:{*(*(&v17 + 1) + 8 * i), v17}];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  return v10;
}

- (BOOL)_updateOptions:(unsigned __int8)options error:(id *)error
{
  log = self->_log;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:options];
  LOBYTE(error) = [(CESRDictionaryLog *)log writeUpdatedObject:v6 forKey:@"options" error:error];

  return error;
}

- (BOOL)remove:(id *)remove
{
  v5 = [(CCSetChangeRegistry *)self->_changeRegistry clearAllBookmarksAndCommit:?];
  if (v5)
  {
    log = self->_log;

    LOBYTE(v5) = [(CESRDictionaryLog *)log clear:remove];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
  v5 = CESRSpeechProfileInstanceOptionsDescription([(CESRSpeechProfileInstance *)self options]);
  v6 = [v3 stringWithFormat:@"%@:[%@]", localeIdentifier, v5];

  return v6;
}

- (id)_changeRegistryFilename
{
  localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
  v3 = [@"registry_" stringByAppendingString:localeIdentifier];

  return v3;
}

- (CESRSpeechProfileInstance)initWithSpeechProfileSiteURL:(id)l create:(BOOL)create locale:(id)locale options:(unsigned __int8)options error:(id *)error
{
  optionsCopy = options;
  createCopy = create;
  v35[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  localeCopy = locale;
  v33.receiver = self;
  v33.super_class = CESRSpeechProfileInstance;
  v14 = [(CESRSpeechProfileInstance *)&v33 init];
  if (!v14)
  {
    goto LABEL_7;
  }

  v14->_dataProtectionClass = SFProtectionClassForDataSiteURL();
  objc_storeStrong(&v14->_locale, locale);
  localeIdentifier = [(NSLocale *)v14->_locale localeIdentifier];

  if (!localeIdentifier)
  {
    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA050];
    v34 = *MEMORY[0x277CCA450];
    v27 = MEMORY[0x277CCACA8];
    localeIdentifier2 = [localeCopy localeIdentifier];
    lCopy = [v27 stringWithFormat:@"Invalid locale: %@ in speechProfileSite: %@", localeIdentifier2, lCopy];
    v35[0] = lCopy;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v31 = [v25 errorWithDomain:v26 code:-1000 userInfo:v30];
    if (error && v31)
    {
      v31 = v31;
      *error = v31;
    }

    goto LABEL_13;
  }

  localeIdentifier3 = [(NSLocale *)v14->_locale localeIdentifier];
  v17 = [@"instance_" stringByAppendingString:localeIdentifier3];

  v18 = [[CESRDictionaryLog alloc] initWithFilename:v17 protectionClass:v14->_dataProtectionClass directory:lCopy readOnly:0 create:createCopy error:error];
  log = v14->_log;
  v14->_log = v18;

  if (!v14->_log || createCopy && ![(CESRSpeechProfileInstance *)v14 _updateOptions:optionsCopy error:error])
  {

LABEL_13:
    v24 = 0;
    goto LABEL_14;
  }

  v20 = objc_alloc(MEMORY[0x277CF94F0]);
  _changeRegistryFilename = [(CESRSpeechProfileInstance *)v14 _changeRegistryFilename];
  v22 = [v20 initWithFilename:_changeRegistryFilename directory:lCopy protectionClass:v14->_dataProtectionClass error:error];
  changeRegistry = v14->_changeRegistry;
  v14->_changeRegistry = v22;

  v24 = v14->_changeRegistry;
  if (v24)
  {
LABEL_7:
    v24 = v14;
  }

LABEL_14:

  return v24;
}

- (CESRSpeechProfileInstance)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

+ (id)loadInstanceAtSpeechProfileSiteURL:(id)l locale:(id)locale error:(id *)error
{
  localeCopy = locale;
  lCopy = l;
  v9 = [[CESRSpeechProfileInstance alloc] initWithSpeechProfileSiteURL:lCopy create:0 locale:localeCopy options:0 error:error];

  return v9;
}

+ (id)loadOrCreateInstanceAtSpeechProfileSiteURL:(id)l locale:(id)locale options:(unsigned __int8)options error:(id *)error
{
  optionsCopy = options;
  localeCopy = locale;
  lCopy = l;
  v11 = [[CESRSpeechProfileInstance alloc] initWithSpeechProfileSiteURL:lCopy create:1 locale:localeCopy options:optionsCopy error:error];

  return v11;
}

+ (id)loadAllInstancesAtSpeechProfileSiteURL:(id)l error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  errorCopy = error;
  v8 = [defaultManager contentsOfDirectoryAtPath:path error:error];

  if (v8)
  {
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v34 = 1;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v25 = v8;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      v26 = *v31;
      v27 = v9;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14 relativeToURL:{lCopy, v25}];
          path2 = [v15 path];

          if ([defaultManager fileExistsAtPath:path2 isDirectory:&v34] && (v34 & 1) == 0 && objc_msgSend(v14, "hasPrefix:", @"instance_"))
          {
            v17 = [v14 substringFromIndex:{objc_msgSend(@"instance_", "length")}];
            v18 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v17];
            v19 = [CESRSpeechProfileInstance loadInstanceAtSpeechProfileSiteURL:lCopy locale:v18 error:errorCopy];
            if (!v19)
            {

              v23 = 0;
              v8 = v25;
              v22 = v28;
              goto LABEL_19;
            }

            v20 = v19;
            [v28 addObject:v19];

            v12 = v26;
            v9 = v27;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v21 = *MEMORY[0x277CEF0E8];
    v22 = v28;
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v36 = "+[CESRSpeechProfileInstance loadAllInstancesAtSpeechProfileSiteURL:error:]";
      v37 = 2112;
      v38 = v28;
      _os_log_impl(&dword_225EEB000, v21, OS_LOG_TYPE_INFO, "%s Managed profile instances: %@", buf, 0x16u);
    }

    v23 = v28;
    v8 = v25;
LABEL_19:
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end