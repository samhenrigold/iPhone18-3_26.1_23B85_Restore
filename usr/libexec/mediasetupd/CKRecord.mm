@interface CKRecord
+ (id)createRecordWithName:(id)name recordType:(id)type recordZone:(id)zone;
- (id)createMediaServiceObjectFromRecord;
- (id)recordFieldForKey:(id)key;
- (void)_attemptToLoadPublicInfoAgain;
- (void)populateCKRecordInfo:(id)info userInfo:(id)userInfo recordType:(id)type;
- (void)setRecordFieldForKey:(id)key value:(id)value;
@end

@implementation CKRecord

+ (id)createRecordWithName:(id)name recordType:(id)type recordZone:(id)zone
{
  zoneCopy = zone;
  typeCopy = type;
  nameCopy = name;
  v10 = [[CKRecordID alloc] initWithRecordName:nameCopy zoneID:zoneCopy];

  v11 = [[CKRecord alloc] initWithRecordType:typeCopy recordID:v10];

  return v11;
}

- (id)recordFieldForKey:(id)key
{
  keyCopy = key;
  encryptedValues = [(CKRecord *)self encryptedValues];
  v6 = [encryptedValues objectForKeyedSubscript:keyCopy];

  return v6;
}

- (void)setRecordFieldForKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  encryptedValues = [(CKRecord *)self encryptedValues];
  [encryptedValues setObject:valueCopy forKeyedSubscript:keyCopy];
}

- (void)populateCKRecordInfo:(id)info userInfo:(id)userInfo recordType:(id)type
{
  infoCopy = info;
  userInfoCopy = userInfo;
  typeCopy = type;
  v11 = sub_100030FE4(typeCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 138478339;
    v39 = typeCopy;
    v40 = 2113;
    v41 = infoCopy;
    v42 = 2113;
    v43 = userInfoCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Creating record RecordType: %{private}@ and ServiceInfo: %{private}@ \n and UserInfo %{private}@", &v38, 0x20u);
  }

  if ([typeCopy isEqualToString:MSServiceAccountRecordType])
  {
    v12 = MSHomeParticipantHomeIdentifier;
    v13 = [userInfoCopy objectForKey:kCKDatabaseAccessUserInfoHomeIDKey];
    [(CKRecord *)self setRecordFieldForKey:v12 value:v13];

    v14 = MSHomeParticipantHomeUserIdentifier;
    v15 = [userInfoCopy objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
    [(CKRecord *)self setRecordFieldForKey:v14 value:v15];

    v16 = MediaServiceIdentifier;
    serviceID = [infoCopy serviceID];
    uUIDString = [serviceID UUIDString];
    [(CKRecord *)self setRecordFieldForKey:v16 value:uUIDString];

    v19 = MediaServiceAccountName;
    accountName = [infoCopy accountName];
    [(CKRecord *)self setRecordFieldForKey:v19 value:accountName];

    v21 = MediaServiceConfigurationURL;
    configURL = [infoCopy configURL];
    absoluteString = [configURL absoluteString];
    [(CKRecord *)self setRecordFieldForKey:v21 value:absoluteString];

    v24 = MediaServiceUpdateListeningHistory;
    v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [infoCopy updateListeningHistoryEnabled]);
    [(CKRecord *)self setRecordFieldForKey:v24 value:v25];

    v26 = MediaServiceAuthFatalError;
    v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [infoCopy authFatalError]);
    [(CKRecord *)self setRecordFieldForKey:v26 value:v27];

    authConfiguration = [infoCopy authConfiguration];

    if (authConfiguration)
    {
      authConfiguration2 = [infoCopy authConfiguration];
      v30 = [NSKeyedArchiver archivedDataWithRootObject:authConfiguration2 requiringSecureCoding:1 error:0];

      if (v30)
      {
        [(CKRecord *)self setRecordFieldForKey:MediaServiceAuthConfiguration value:v30];
      }
    }

    authCredential = [infoCopy authCredential];

    if (authCredential)
    {
      authCredential2 = [infoCopy authCredential];
      serviceID2 = [NSKeyedArchiver archivedDataWithRootObject:authCredential2 requiringSecureCoding:1 error:0];

      if (serviceID2)
      {
        [(CKRecord *)self setRecordFieldForKey:MediaServiceAuthCredential value:serviceID2];
      }

      goto LABEL_13;
    }
  }

  else if ([typeCopy isEqualToString:MSDefaultServiceRecordType])
  {
    v34 = MSHomeParticipantHomeUserIdentifier;
    v35 = [userInfoCopy objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
    [(CKRecord *)self setRecordFieldForKey:v34 value:v35];

    v36 = MediaServiceIdentifier;
    serviceID2 = [infoCopy serviceID];
    uUIDString2 = [serviceID2 UUIDString];
    [(CKRecord *)self setRecordFieldForKey:v36 value:uUIDString2];

LABEL_13:
  }
}

- (id)createMediaServiceObjectFromRecord
{
  v3 = MediaServiceIdentifier;
  v4 = [(CKRecord *)self recordFieldForKey:MediaServiceIdentifier];
  if (!v4)
  {
    v5 = sub_100030FE4(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100023924(v5, v36, v37, v38, v39, v40, v41, v42);
    }

    goto LABEL_23;
  }

  v5 = [MSDPublicDBManager getCachedPublicInfoForServiceID:v4];
  if (!v5)
  {
    [(CKRecord *)self _attemptToLoadPublicInfoAgain];
    v5 = [MSDPublicDBManager getCachedPublicInfoForServiceID:v4];
    v6 = sub_100030FE4(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000237DC(v4, v6, v7, v8, v9, v10, v11, v12);
    }

    if (!v5)
    {
      v5 = sub_100030FE4(v13);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000238E0(v5);
      }

LABEL_23:
      v17 = 0;
      goto LABEL_24;
    }
  }

  recordType = [(CKRecord *)self recordType];
  v15 = [recordType isEqualToString:MSServiceAccountRecordType];

  if (!v15)
  {
    recordType2 = [(CKRecord *)self recordType];
    v44 = [recordType2 isEqualToString:MSDefaultServiceRecordType];

    if (v44)
    {
      v17 = [[MediaService alloc] initWithMediaServiceIdentifier:v4];
      goto LABEL_24;
    }

    v46 = sub_100030FE4(v45);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_100023848(self, v46);
    }

    goto LABEL_23;
  }

  v16 = [(CKRecord *)self recordFieldForKey:v3];
  v17 = [[MediaService alloc] initWithMediaServiceIdentifier:v16];
  v18 = [(CKRecord *)self recordFieldForKey:MediaServiceUpdateListeningHistory];
  [v17 setUpdateListeningHistoryEnabled:{objc_msgSend(v18, "BOOLValue")}];

  v19 = [(CKRecord *)self recordFieldForKey:MediaServiceAccountName];
  [v17 setAccountName:v19];

  v20 = [(CKRecord *)self recordFieldForKey:MediaServiceConfigurationURL];
  v21 = [NSURL URLWithString:v20];
  [v17 setConfigURL:v21];

  v22 = [(CKRecord *)self recordFieldForKey:MediaServiceAuthFatalError];
  [v17 setAuthFatalError:{objc_msgSend(v22, "BOOLValue")}];

  v23 = [(CKRecord *)self recordFieldForKey:MediaServiceAuthConfiguration];
  v24 = [(CKRecord *)self recordFieldForKey:MediaServiceAuthCredential];
  if (v23)
  {
    v25 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v23 error:0];
    [v17 setAuthConfiguration:v25];

    authConfiguration = [v17 authConfiguration];

    if (!authConfiguration)
    {
      v27 = [CMSAuthenticationConfiguration authConfigurationFromMSAuthData:v23];
      [v17 setAuthConfiguration:v27];
    }
  }

  if (v24)
  {
    v28 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v24 error:0];
    [v17 setAuthCredential:v28];

    authCredential = [v17 authCredential];

    if (!authCredential)
    {
      v30 = [CMSAuthenticationCredential authCredentialFromMSAuthData:v24];
      [v17 setAuthCredential:v30];
    }
  }

  v31 = [MSDTransactionTask createTransactionWithIdentifier:@"com.apple.mediasetupd.imageCaching"];
  v32 = [MSDArtworkManager alloc];
  serviceIconPath = [v5 serviceIconPath];
  v34 = [(MSDArtworkManager *)v32 initWithServiceID:v16 remoteImageURL:serviceIconPath];

  getLocalCachedImageURL = [(MSDArtworkManager *)v34 getLocalCachedImageURL];
  [v17 setIconImageURL:getLocalCachedImageURL];

  [v31 releaseTransaction];
LABEL_24:

  return v17;
}

- (void)_attemptToLoadPublicInfoAgain
{
  v2 = dispatch_semaphore_create(0);
  v3 = +[MSDPublicDBManager shared];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100023770;
  v15[3] = &unk_1000514E0;
  v4 = v2;
  v16 = v4;
  [v3 syncDataWithCloudKit:v15];

  v5 = dispatch_time(0, 1000000000 * MSMaxWaitInSecondsForFetchDataFromCloudKit);
  v6 = dispatch_semaphore_wait(v4, v5);
  if (v6)
  {
    v7 = sub_100030FE4(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10002399C(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

@end