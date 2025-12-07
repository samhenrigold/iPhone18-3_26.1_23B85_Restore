@interface CESRSpeechProfileSite
+ (id)_existingSpeechProfileSiteAtURL:(id)l readOnly:(BOOL)only error:(id *)error;
+ (id)_speechProfileSiteAtRootDirectoryURL:(id)l userId:(id)id readOnly:(BOOL)only error:(id *)error;
+ (id)_speechProfileSiteAtURL:(id)l userId:(id)id userIdHash:(id)hash readOnly:(BOOL)only error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSpeechProfileSite:(id)site;
- (BOOL)isEquivalentSpeechProfileSiteURL:(id)l;
- (BOOL)recordMaintenance:(id *)maintenance;
- (BOOL)recordRebuild:(id *)rebuild;
- (BOOL)recordReset:(id *)reset;
- (BOOL)removeInstance:(id)instance error:(id *)error;
- (CESRSpeechProfileSite)init;
- (CESRSpeechProfileSite)initWithSpeechProfileSiteURL:(id)l readOnly:(BOOL)only create:(BOOL)create userId:(id)id userIdHash:(id)hash error:(id *)error;
- (id)instanceWithLocale:(id)locale options:(unsigned __int8)options error:(id *)error;
@end

@implementation CESRSpeechProfileSite

- (BOOL)isEquivalentSpeechProfileSiteURL:(id)l
{
  speechProfileSiteURL = self->_speechProfileSiteURL;
  lCopy = l;
  path = [(NSURL *)speechProfileSiteURL path];
  path2 = [lCopy path];

  LOBYTE(lCopy) = [path isEqual:path2];
  return lCopy;
}

- (BOOL)isEqualToSpeechProfileSite:(id)site
{
  speechProfileSiteURL = [site speechProfileSiteURL];
  LOBYTE(self) = [(CESRSpeechProfileSite *)self isEquivalentSpeechProfileSiteURL:speechProfileSiteURL];

  return self;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CESRSpeechProfileSite *)self isEqualToSpeechProfileSite:v5];
  }

  return v6;
}

- (BOOL)removeInstance:(id)instance error:(id *)error
{
  instanceCopy = instance;
  v7 = [instanceCopy remove:error];
  if (v7)
  {
    [(NSMutableArray *)self->_instances removeObject:instanceCopy];
  }

  return v7;
}

- (id)instanceWithLocale:(id)locale options:(unsigned __int8)options error:(id *)error
{
  optionsCopy = options;
  v24 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_instances;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        locale = [v13 locale];
        if ([locale isEqual:localeCopy])
        {
          options = [v13 options];

          if (options == optionsCopy)
          {
            v16 = v13;

            goto LABEL_14;
          }
        }

        else
        {
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [CESRSpeechProfileInstance loadOrCreateInstanceAtSpeechProfileSiteURL:self->_speechProfileSiteURL locale:localeCopy options:optionsCopy error:error];
  if (v16)
  {
    [(NSMutableArray *)self->_instances addObject:v16];
  }

LABEL_14:

  return v16;
}

- (BOOL)recordReset:(id *)reset
{
  log = self->_log;
  v5 = [MEMORY[0x277CBEAA8] now];
  LOBYTE(reset) = [(CESRDictionaryLog *)log writeUpdatedObject:v5 forKey:@"lastReset" error:reset];

  return reset;
}

- (BOOL)recordMaintenance:(id *)maintenance
{
  log = self->_log;
  v5 = [MEMORY[0x277CBEAA8] now];
  LOBYTE(maintenance) = [(CESRDictionaryLog *)log writeUpdatedObject:v5 forKey:@"lastMaintenance" error:maintenance];

  return maintenance;
}

- (BOOL)recordRebuild:(id *)rebuild
{
  log = self->_log;
  v5 = [MEMORY[0x277CBEAA8] now];
  LOBYTE(rebuild) = [(CESRDictionaryLog *)log writeUpdatedObject:v5 forKey:@"lastRebuild" error:rebuild];

  return rebuild;
}

- (CESRSpeechProfileSite)initWithSpeechProfileSiteURL:(id)l readOnly:(BOOL)only create:(BOOL)create userId:(id)id userIdHash:(id)hash error:(id *)error
{
  createCopy = create;
  onlyCopy = only;
  lCopy = l;
  idCopy = id;
  hashCopy = hash;
  v37.receiver = self;
  v37.super_class = CESRSpeechProfileSite;
  v18 = [(CESRSpeechProfileSite *)&v37 init];
  if (v18 && ((SFPersonaIdFromSiteURL(), v19 = objc_claimAutoreleasedReturnValue(), personaId = v18->_personaId, v18->_personaId = v19, personaId, [MEMORY[0x277CDCEE0] sharedInstance], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "personaForContainerRelativeURL:", lCopy), v22 = objc_claimAutoreleasedReturnValue(), v18->_isInUserVault = v22 != 0, v22, v21, objc_storeStrong(&v18->_speechProfileSiteURL, l), v18->_dataProtectionClass = SFProtectionClassForDataSiteURL(), createCopy) && (SFGetOrCreateDirectoryURL(), v23 = objc_claimAutoreleasedReturnValue(), v23, !v23) || (v24 = -[CESRDictionaryLog initWithFilename:protectionClass:directory:readOnly:create:error:]([CESRDictionaryLog alloc], "initWithFilename:protectionClass:directory:readOnly:create:error:", @"Site", v18->_dataProtectionClass, v18->_speechProfileSiteURL, onlyCopy, createCopy, error), log = v18->_log, v18->_log = v24, log, (v26 = v18->_log) == 0) || idCopy && createCopy && !-[CESRDictionaryLog writeUpdatedObject:forKey:error:](v26, "writeUpdatedObject:forKey:error:", idCopy, @"userId", error) || ((objc_storeStrong(&v18->_userIdHash, hash), v27 = MEMORY[0x277CCACA8], SFSpeechProfileSiteDescription(), v28 = objc_claimAutoreleasedReturnValue(), v29 = v28, !v18->_isInUserVault) ? (v30 = &stru_283946208) : (v30 = @" [UV]"), objc_msgSend(v27, "stringWithFormat:", @"%@%@", v28, v30), v31 = objc_claimAutoreleasedReturnValue(), description = v18->_description, v18->_description = v31, description, v29, +[CESRSpeechProfileInstance loadAllInstancesAtSpeechProfileSiteURL:error:](CESRSpeechProfileInstance, "loadAllInstancesAtSpeechProfileSiteURL:error:", v18->_speechProfileSiteURL, error), v33 = objc_claimAutoreleasedReturnValue(), instances = v18->_instances, v18->_instances = v33, instances, !v18->_instances)))
  {
    v35 = 0;
  }

  else
  {
    v35 = v18;
  }

  return v35;
}

- (CESRSpeechProfileSite)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

+ (id)_existingSpeechProfileSiteAtURL:(id)l readOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v26[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v9 = SFUserIdHashFromDataSiteURL();
  v10 = [objc_alloc(objc_opt_class()) initWithSpeechProfileSiteURL:lCopy readOnly:onlyCopy create:0 userId:0 userIdHash:v9 error:error];

  if (!v10)
  {
LABEL_13:
    v23 = 0;
    goto LABEL_16;
  }

  if (!v9)
  {
    self = [v10 userId];
    v11 = SFUserIdHash();
    if (!v11)
    {

      goto LABEL_15;
    }

    lCopy = v11;
  }

  userId = [v10 userId];
  v13 = SFUserIdHash();
  v14 = [v9 isEqual:v13];

  if (v9)
  {
    if (v14)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if ((v14 & 1) == 0)
  {
LABEL_9:
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA050];
    v25 = *MEMORY[0x277CCA450];
    v17 = MEMORY[0x277CCACA8];
    v18 = SFUserIdHashToString();
    speechProfileSiteURL = [v10 speechProfileSiteURL];
    v20 = [v17 stringWithFormat:@"Speech profile site: %@ does not match userIdHash: %@ at speechProfileSiteURL: %@", v10, v18, speechProfileSiteURL, v25];
    v26[0] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v22 = [v15 errorWithDomain:v16 code:-1000 userInfo:v21];
    if (error && v22)
    {
      v22 = v22;
      *error = v22;
    }

    goto LABEL_13;
  }

LABEL_15:
  v23 = v10;
LABEL_16:

  return v23;
}

+ (id)_speechProfileSiteAtURL:(id)l userId:(id)id userIdHash:(id)hash readOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v27[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  hashCopy = hash;
  lCopy = l;
  v14 = [objc_alloc(objc_opt_class()) initWithSpeechProfileSiteURL:lCopy readOnly:onlyCopy create:onlyCopy ^ 1 userId:idCopy userIdHash:hashCopy error:error];

  if (v14)
  {
    if (!idCopy)
    {
      hashCopy = [v14 userId];
      if (!hashCopy)
      {
        goto LABEL_6;
      }
    }

    userId = [v14 userId];
    v16 = [idCopy isEqual:userId];

    if (idCopy)
    {
      if (v16)
      {
LABEL_6:
        v17 = v14;
        goto LABEL_13;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_6;
      }
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA050];
    v26 = *MEMORY[0x277CCA450];
    v20 = MEMORY[0x277CCACA8];
    speechProfileSiteURL = [v14 speechProfileSiteURL];
    v22 = [v20 stringWithFormat:@"Speech profile site: %@ does not match userId: %@ at speechProfileSiteURL: %@", v14, idCopy, speechProfileSiteURL];
    v27[0] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v24 = [v18 errorWithDomain:v19 code:-1000 userInfo:v23];
    if (error && v24)
    {
      v24 = v24;
      *error = v24;
    }
  }

  v17 = 0;
LABEL_13:

  return v17;
}

+ (id)_speechProfileSiteAtRootDirectoryURL:(id)l userId:(id)id readOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  idCopy = id;
  lCopy = l;
  v12 = SFUserIdHash();
  v13 = SFDataSiteURL();

  v14 = [self _speechProfileSiteAtURL:v13 userId:idCopy userIdHash:v12 readOnly:onlyCopy error:error];

  return v14;
}

@end