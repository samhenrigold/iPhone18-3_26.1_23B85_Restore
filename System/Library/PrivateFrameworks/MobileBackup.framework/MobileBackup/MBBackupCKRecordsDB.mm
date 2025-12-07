@interface MBBackupCKRecordsDB
+ (id)openDatabaseIn:(id)in readOnly:(BOOL)only error:(id *)error;
+ (id)openOrCreateDatabaseIn:(id)in error:(id *)error;
- (BOOL)enumerateAssetRecordReferences:(id)references error:(id *)error block:(id)block;
- (BOOL)enumerateDomainRecords:(id)records error:(id *)error block:(id)block;
- (BOOL)enumerateSnapshotRecords:(id *)records block:(id)block;
- (BOOL)hasAssetReference:(id)reference error:(id *)error;
- (BOOL)insertAssetRecordReferenceForDomainRecordID:(id)d assetRecordID:(id)iD isDeletedAsset:(BOOL)asset error:(id *)error;
- (BOOL)insertDomainRecordForSnapshotID:(id)d domain:(id)domain error:(id *)error;
- (BOOL)insertSnapshotRecord:(id)record error:(id *)error;
- (MBBackupCKRecordsDB)initWithPath:(id)path readOnly:(BOOL)only error:(id *)error;
@end

@implementation MBBackupCKRecordsDB

+ (id)openOrCreateDatabaseIn:(id)in error:(id *)error
{
  v5 = [in stringByAppendingPathComponent:@"backup_ck_records.db"];
  v6 = [[MBBackupCKRecordsDB alloc] initWithPath:v5 readOnly:0 error:error];

  return v6;
}

+ (id)openDatabaseIn:(id)in readOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v7 = [in stringByAppendingPathComponent:@"backup_ck_records.db"];
  v8 = +[NSFileManager defaultManager];
  v9 = [v8 fileExistsAtPath:v7];

  if (v9)
  {
    v10 = [[MBBackupCKRecordsDB alloc] initWithPath:v7 readOnly:onlyCopy error:error];
  }

  else if (error)
  {
    [MBError errorWithCode:4 path:v7 format:@"Backup Records database not found"];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MBBackupCKRecordsDB)initWithPath:(id)path readOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = MBBackupCKRecordsDB;
  v9 = [(MBBackupCKRecordsDB *)&v17 init];
  if (v9)
  {
    v10 = [MBSQLiteDB alloc];
    v18[0] = @"CREATE TABLE IF NOT EXISTS SnapshotRecords(recordID TEXT NOT NULL,  commitID TEXT,  snapshotFormat INTEGER NOT NULL,  PRIMARY KEY (recordID));";
    v18[1] = @"CREATE TABLE IF NOT EXISTS DomainRecords(recordID TEXT NOT NULL,  parentSnapshotRecordID TEXT NOT NULL,  domainName TEXT NOT NULL,  PRIMARY KEY (recordID));";
    v18[2] = @"CREATE INDEX IF NOT EXISTS snapshotIDIdx ON DomainRecords (parentSnapshotRecordID);";
    v18[3] = @"CREATE TABLE IF NOT EXISTS AssetRecordReferences(recordID TEXT NOT NULL,  isDeletedAsset BOOL NOT NULL,  parentDomainRecordID TEXT NOT NULL,  PRIMARY KEY (recordID, isDeletedAsset));";
    v11 = [NSArray arrayWithObjects:v18 count:4];
    v12 = [MBPQLSchemaUpgrade upgradeWithVersion:1 shouldVacuum:0 statements:v11];
    v19 = v12;
    v13 = [NSArray arrayWithObjects:&v19 count:1];
    v14 = [(MBSQLiteDB *)v10 initWithPath:pathCopy readOnly:onlyCopy shouldDeleteOnFailureToOpen:1 usePQLBatching:0 schemaCurrentVersion:1 schemaMinDatabaseVersionForUpgrade:0xFFFFFFFFLL error:error schemaUpgrades:v13];
    db = v9->_db;
    v9->_db = v14;
  }

  return v9;
}

- (BOOL)insertSnapshotRecord:(id)record error:(id *)error
{
  recordCopy = record;
  if (!recordCopy)
  {
    __assert_rtn("[MBBackupCKRecordsDB insertSnapshotRecord:error:]", "MBBackupCKRecordsDB.m", 75, "snapshot");
  }

  v7 = recordCopy;
  db = self->_db;
  recordIDString = [recordCopy recordIDString];
  commitID = [v7 commitID];
  v11 = -[MBSQLiteDB executeWithError:sql:](db, "executeWithError:sql:", error, @"INSERT OR REPLACE INTO SnapshotRecords (recordID, commitID, snapshotFormat) VALUES (%@, %@, %d)", recordIDString, commitID, [v7 snapshotFormat]);

  return v11;
}

- (BOOL)insertDomainRecordForSnapshotID:(id)d domain:(id)domain error:(id *)error
{
  dCopy = d;
  domainCopy = domain;
  if (!dCopy)
  {
    __assert_rtn("[MBBackupCKRecordsDB insertDomainRecordForSnapshotID:domain:error:]", "MBBackupCKRecordsDB.m", 80, "snapshotRecordID");
  }

  v10 = domainCopy;
  if (!domainCopy)
  {
    __assert_rtn("[MBBackupCKRecordsDB insertDomainRecordForSnapshotID:domain:error:]", "MBBackupCKRecordsDB.m", 81, "domain");
  }

  db = self->_db;
  recordID = [domainCopy recordID];
  recordName = [recordID recordName];
  domainName = [v10 domainName];
  v15 = [(MBSQLiteDB *)db executeWithError:error sql:@"INSERT OR REPLACE INTO DomainRecords (recordID, parentSnapshotRecordID, domainName) VALUES (%@, %@, %@)", recordName, dCopy, domainName];

  return v15;
}

- (BOOL)insertAssetRecordReferenceForDomainRecordID:(id)d assetRecordID:(id)iD isDeletedAsset:(BOOL)asset error:(id *)error
{
  assetCopy = asset;
  dCopy = d;
  iDCopy = iD;
  if (!dCopy)
  {
    __assert_rtn("[MBBackupCKRecordsDB insertAssetRecordReferenceForDomainRecordID:assetRecordID:isDeletedAsset:error:]", "MBBackupCKRecordsDB.m", 86, "domainRecordID");
  }

  v12 = iDCopy;
  if (!iDCopy)
  {
    __assert_rtn("[MBBackupCKRecordsDB insertAssetRecordReferenceForDomainRecordID:assetRecordID:isDeletedAsset:error:]", "MBBackupCKRecordsDB.m", 87, "assetRecordID");
  }

  dCopy = [(MBSQLiteDB *)self->_db executeWithError:error sql:@"INSERT OR REPLACE INTO AssetRecordReferences (recordID, isDeletedAsset, parentDomainRecordID) VALUES (%@, %d, %@)", iDCopy, assetCopy, dCopy];

  return dCopy;
}

- (BOOL)hasAssetReference:(id)reference error:(id *)error
{
  referenceCopy = reference;
  if (!referenceCopy)
  {
    __assert_rtn("[MBBackupCKRecordsDB hasAssetReference:error:]", "MBBackupCKRecordsDB.m", 92, "assetRecordID");
  }

  v7 = referenceCopy;
  v8 = [(MBSQLiteDB *)self->_db fetchCountWithError:error sql:@"SELECT COUNT(*) FROM AssetRecordReferences WHERE recordID = %@ AND isDeletedAsset = FALSE", referenceCopy]!= 0;

  return v8;
}

- (BOOL)enumerateSnapshotRecords:(id *)records block:(id)block
{
  blockCopy = block;
  v7 = [(MBSQLiteDB *)self->_db fetchSQL:@"SELECT recordID, commitID, snapshotFormat FROM SnapshotRecords"];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000EE138;
  v10[3] = &unk_1003BE658;
  v11 = blockCopy;
  v8 = blockCopy;
  LOBYTE(records) = [v7 enumerateWithError:records block:v10];

  return records;
}

- (BOOL)enumerateDomainRecords:(id)records error:(id *)error block:(id)block
{
  blockCopy = block;
  records = [(MBSQLiteDB *)self->_db fetchSQL:@"SELECT recordID, domainName FROM DomainRecords WHERE parentSnapshotRecordID=%@ ORDER BY recordID", records];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000EE2B0;
  v12[3] = &unk_1003BE658;
  v13 = blockCopy;
  v10 = blockCopy;
  LOBYTE(error) = [records enumerateWithError:error block:v12];

  return error;
}

- (BOOL)enumerateAssetRecordReferences:(id)references error:(id *)error block:(id)block
{
  blockCopy = block;
  references = [(MBSQLiteDB *)self->_db fetchSQL:@"SELECT recordID, isDeletedAsset FROM AssetRecordReferences WHERE parentDomainRecordID=%@ ORDER BY recordID, isDeletedAsset", references];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000EE414;
  v12[3] = &unk_1003BE658;
  v13 = blockCopy;
  v10 = blockCopy;
  LOBYTE(error) = [references enumerateWithError:error block:v12];

  return error;
}

@end