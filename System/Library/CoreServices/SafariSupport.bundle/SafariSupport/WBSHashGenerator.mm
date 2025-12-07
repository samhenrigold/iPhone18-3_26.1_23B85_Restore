@interface WBSHashGenerator
- (BOOL)verifyIdentityHashInBookmarkRecord:(id)record configuration:(id)configuration;
- (WBSHashGenerator)initWithEncryptionInfoRecord:(id)record;
- (id)encryptionInfoRecordWithZone:(id)zone;
@end

@implementation WBSHashGenerator

- (WBSHashGenerator)initWithEncryptionInfoRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy safari_isEncryptionInfoRecord])
  {
    safari_encryptedValues = [recordCopy safari_encryptedValues];
    v6 = [safari_encryptedValues objectForKeyedSubscript:@"Key"];

    v7 = [recordCopy objectForKeyedSubscript:@"KeyID"];
    self = [(WBSHashGenerator *)self initWithKey:v6 keyID:v7];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)verifyIdentityHashInBookmarkRecord:(id)record configuration:(id)configuration
{
  recordCopy = record;
  configurationCopy = configuration;
  safari_minimumAPIVersion = [recordCopy safari_minimumAPIVersion];
  if (safari_minimumAPIVersion <= 4)
  {
    safari_recordName = [recordCopy safari_recordName];
    if ([safari_recordName isEqualToString:WBSCloudBookmarkListRecordNameTopBookmark])
    {
      LOBYTE(v12) = 1;
LABEL_13:

      goto LABEL_14;
    }

    v16 = [configurationCopy identityHashComponentsForRecord:recordCopy];
    v17 = [(WBSHashGenerator *)self generateHashWithComponents:v16];
    v18 = [recordCopy objectForKeyedSubscript:@"IdentityHash"];
    v12 = [v17 isEqualToData:v18];
    v20 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v12, v19);
    v21 = v20;
    if (v12)
    {
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
LABEL_12:

        goto LABEL_13;
      }

      log = v21;
      v47 = [(WBSHashGenerator *)self key];
      safari_descriptionWithoutSpaces = [v47 safari_descriptionWithoutSpaces];
      keyID = [(WBSHashGenerator *)self keyID];
      safari_descriptionWithoutSpaces2 = [keyID safari_descriptionWithoutSpaces];
      safari_descriptionWithoutSpaces3 = [v18 safari_descriptionWithoutSpaces];
      [v16 componentsJoinedByString:{@", "}];
      *buf = 138544387;
      v51 = safari_recordName;
      v52 = 2114;
      v53 = safari_descriptionWithoutSpaces;
      v54 = 2114;
      v55 = safari_descriptionWithoutSpaces2;
      v56 = 2114;
      v57 = safari_descriptionWithoutSpaces3;
      v59 = v58 = 2113;
      v23 = v59;
      _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Valid identity hash for remote record with name: %{public}@, key: %{public}@, keyID: %{public}@, identityHash: %{public}@, components: %{private}@", buf, 0x34u);

      v24 = safari_descriptionWithoutSpaces;
    }

    else
    {
      v25 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
      if (v25)
      {
        v42 = v21;
        loga = [(WBSHashGenerator *)self key];
        safari_descriptionWithoutSpaces4 = [loga safari_descriptionWithoutSpaces];
        keyID2 = [(WBSHashGenerator *)self keyID];
        safari_descriptionWithoutSpaces5 = [keyID2 safari_descriptionWithoutSpaces];
        safari_descriptionWithoutSpaces6 = [v18 safari_descriptionWithoutSpaces];
        [v17 safari_descriptionWithoutSpaces];
        *buf = 138544386;
        v51 = safari_recordName;
        v52 = 2114;
        v53 = safari_descriptionWithoutSpaces4;
        v54 = 2114;
        v55 = safari_descriptionWithoutSpaces5;
        v56 = 2114;
        v57 = safari_descriptionWithoutSpaces6;
        v59 = v58 = 2114;
        v29 = v59;
        _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Identity hash is invalid for remote record with name: %{public}@, key: %{public}@, keyID: %{public}@, identity hash actual: %{public}@, expected: %{public}@", buf, 0x34u);
      }

      v27 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v25, v26);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_12;
      }

      v43 = v27;
      logb = [(WBSHashGenerator *)self key];
      safari_descriptionWithoutSpaces7 = [logb safari_descriptionWithoutSpaces];
      keyID3 = [(WBSHashGenerator *)self keyID];
      safari_descriptionWithoutSpaces8 = [keyID3 safari_descriptionWithoutSpaces];
      safari_descriptionWithoutSpaces9 = [v18 safari_descriptionWithoutSpaces];
      safari_descriptionWithoutSpaces10 = [v17 safari_descriptionWithoutSpaces];
      v31 = [v16 componentsJoinedByString:{@", "}];
      *buf = 138544643;
      v51 = safari_recordName;
      v52 = 2114;
      v53 = safari_descriptionWithoutSpaces7;
      v54 = 2114;
      v55 = safari_descriptionWithoutSpaces8;
      v56 = 2114;
      v57 = safari_descriptionWithoutSpaces9;
      v58 = 2114;
      v59 = safari_descriptionWithoutSpaces10;
      v60 = 2113;
      v61 = v31;
      v32 = v31;
      _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Identity hash is invalid for remote record with name: %{public}@, key: %{public}@, keyID: %{public}@, identity hash actual: %{public}@, expected: %{public}@, components: %{private}@", buf, 0x3Eu);

      v24 = safari_descriptionWithoutSpaces7;
    }

    goto LABEL_12;
  }

  v10 = safari_minimumAPIVersion;
  v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(safari_minimumAPIVersion, v9);
  LOBYTE(v12) = 1;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = v11;
    safari_recordName2 = [recordCopy safari_recordName];
    *buf = 138543874;
    v51 = safari_recordName2;
    v52 = 2048;
    v53 = v10;
    v54 = 2048;
    v55 = 4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Cannot verify identity hash of CKRecord with name %{public}@ because its minimumAPIVersion %zd is more recent than the version %zd of the client.", buf, 0x20u);
  }

LABEL_14:

  return v12;
}

- (id)encryptionInfoRecordWithZone:(id)zone
{
  zoneCopy = zone;
  v5 = [[CKRecordID alloc] initWithRecordName:@"EncryptionInfo" zoneID:zoneCopy];

  v6 = [[CKRecord alloc] initWithRecordType:@"EncryptionInfo" recordID:v5];
  v7 = [(WBSHashGenerator *)self key];
  safari_encryptedValues = [v6 safari_encryptedValues];
  [safari_encryptedValues setObject:v7 forKeyedSubscript:@"Key"];

  keyID = [(WBSHashGenerator *)self keyID];
  [v6 setObject:keyID forKeyedSubscript:@"KeyID"];

  return v6;
}

@end