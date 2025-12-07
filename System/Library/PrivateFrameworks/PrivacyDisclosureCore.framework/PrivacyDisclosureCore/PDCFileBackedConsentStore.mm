@interface PDCFileBackedConsentStore
- (NSSet)consentedBundleIdentifiers;
- (PDCFileBackedConsentStore)initWithConsentStoreURL:(id)l;
- (id)userConsentedRegulatoryDisclosureVersionForBundleIdentifier:(id)identifier;
- (id)writeUserConsentedRegulatoryDisclosureVersion:(id)version forBundleIdentifier:(id)identifier;
@end

@implementation PDCFileBackedConsentStore

- (PDCFileBackedConsentStore)initWithConsentStoreURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = PDCFileBackedConsentStore;
  v6 = [(PDCFileBackedConsentStore *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeURL, l);
    v8 = v7;
  }

  return v7;
}

- (id)userConsentedRegulatoryDisclosureVersionForBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = [(PDCFileBackedConsentStore *)self consentRecordURLForBundleIdentifier:?];
    if (v3)
    {
      v11 = 0;
      v4 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v3 encoding:4 error:&v11];
      v5 = v11;
      v7 = v5;
      if (v5)
      {
        v8 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore(v5, v6);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(PDCFileBackedConsentStore *)v3 userConsentedRegulatoryDisclosureVersionForBundleIdentifier:v8];
        }

        v9 = 0;
      }

      else
      {
        v9 = v4;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)writeUserConsentedRegulatoryDisclosureVersion:(id)version forBundleIdentifier:(id)identifier
{
  versionCopy = version;
  identifierCopy = identifier;
  v8 = [(PDCFileBackedConsentStore *)self consentRecordURLForBundleIdentifier:identifierCopy];
  v9 = v8;
  if (versionCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    uRLByDeletingLastPathComponent = [v9 URLByDeletingLastPathComponent];
    v19 = 0;
    [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v19];
    v12 = v19;

    if (v12)
    {
      goto LABEL_9;
    }

    v18 = 0;
    [versionCopy writeToURL:v9 atomically:1 encoding:4 error:&v18];
  }

  else if (unlink([v8 fileSystemRepresentation]))
  {
    v13 = *__error();
    if (v13 != 2)
    {
      v17 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = [v17 initWithDomain:*MEMORY[0x277CCA5B8] code:v13 userInfo:0];
      goto LABEL_9;
    }
  }

  changeObserver = [(PDCFileBackedConsentStore *)self changeObserver];
  v15 = changeObserver;
  if (changeObserver)
  {
    (*(changeObserver + 16))(changeObserver, self, identifierCopy, versionCopy);
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (NSSet)consentedBundleIdentifiers
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{-[NSURL fileSystemRepresentation](self->_storeURL, "fileSystemRepresentation")}];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager contentsOfDirectoryAtPath:v2 error:0];

  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];

  return v5;
}

- (void)userConsentedRegulatoryDisclosureVersionForBundleIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25F701000, a2, OS_LOG_TYPE_ERROR, "Failed to read authorization record at %@", &v2, 0xCu);
}

@end