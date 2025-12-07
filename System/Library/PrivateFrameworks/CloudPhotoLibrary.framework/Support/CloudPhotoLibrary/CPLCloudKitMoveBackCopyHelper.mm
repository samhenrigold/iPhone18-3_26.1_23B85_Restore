@interface CPLCloudKitMoveBackCopyHelper
- (BOOL)shouldCopyForCKRecordID:(id)d fromCKRecord:(id)record;
- (CPLCloudKitMoveBackCopyHelper)initWithUserRecordID:(id)d scopeProvider:(id)provider;
- (id)baseDestinationCKRecordForSourceCKRecord:(id)record destinationCKRecordID:(id)d error:(id *)error;
- (id)finalizedDestinationCKRecordFromProposedCKRecord:(id)record error:(id *)error;
- (void)prepareCopyForCKRecordID:(id)d fromCKRecord:(id)record;
@end

@implementation CPLCloudKitMoveBackCopyHelper

- (CPLCloudKitMoveBackCopyHelper)initWithUserRecordID:(id)d scopeProvider:(id)provider
{
  dCopy = d;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = CPLCloudKitMoveBackCopyHelper;
  v9 = [(CPLCloudKitMoveBackCopyHelper *)&v15 init];
  if (v9)
  {
    v10 = +[CPLCKRecordPropertyMapping sharedInstance];
    mapping = v9->_mapping;
    v9->_mapping = v10;

    v12 = +[NSDate date];
    recordModificationDate = v9->_recordModificationDate;
    v9->_recordModificationDate = v12;

    objc_storeStrong(&v9->_userRecordID, d);
    objc_storeStrong(&v9->_scopeProvider, provider);
  }

  return v9;
}

- (void)prepareCopyForCKRecordID:(id)d fromCKRecord:(id)record
{
  recordType = [record recordType];
  self->_recordClass = CPLRecordChangeClassForCKRecordType(recordType);
}

- (id)finalizedDestinationCKRecordFromProposedCKRecord:(id)record error:(id *)error
{
  recordCopy = record;
  [recordCopy setObject:self->_recordModificationDate forKey:@"recordModificationDate"];
  [recordCopy setObject:0 forKey:@"linkedShareZoneName"];
  [recordCopy setObject:0 forKey:@"linkedShareZoneOwner"];
  [recordCopy setObject:0 forKey:@"linkedShareRecordName"];

  return recordCopy;
}

- (BOOL)shouldCopyForCKRecordID:(id)d fromCKRecord:(id)record
{
  sub_10002B0F4();
  v6 = v5;
  v7 = [v6 objectForKeyedSubscript:@"remappedRef"];

  if (v7 && (_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_100003B84(v8);
    if (sub_100003424(v9))
    {
      recordType = [v6 recordType];
      recordID = [v6 recordID];
      cplFullDescription = [recordID cplFullDescription];
      sub_100013990();
      _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
    }
  }

  return v7 == 0;
}

- (id)baseDestinationCKRecordForSourceCKRecord:(id)record destinationCKRecordID:(id)d error:(id *)error
{
  recordCopy = record;
  dCopy = d;
  v9 = [recordCopy cpl_destinationRecordIDInPrivateScopeWithCurrentUserRecordID:self->_userRecordID proposedDestinationRecordID:dCopy];
  v10 = [v9 isEqual:dCopy];
  if ((v10 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v11 = sub_100003B84(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      recordID = [recordCopy recordID];
      cplFullDescription = [recordID cplFullDescription];
      cplFullDescription2 = [v9 cplFullDescription];
      cplFullDescription3 = [dCopy cplFullDescription];
      v20 = 138412802;
      v21 = cplFullDescription;
      v22 = 2112;
      v23 = cplFullDescription2;
      v24 = 2112;
      v25 = cplFullDescription3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Moving %@ to %@ instead of %@", &v20, 0x20u);
    }
  }

  v16 = [CKRecord alloc];
  recordType = [recordCopy recordType];
  v18 = [v16 initWithRecordType:recordType recordID:v9];

  return v18;
}

@end