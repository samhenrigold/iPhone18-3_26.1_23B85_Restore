@interface MBMissedEncryptionKeysDB
+ (id)openDatabaseIn:(id)in commitID:(id)d readOnly:(BOOL)only error:(id *)error;
+ (id)openOrCreateDatabaseIn:(id)in commitID:(id)d error:(id *)error;
- (BOOL)enumerateInodesMissingEncryptionKeys:(id *)keys block:(id)block;
- (BOOL)setFoundEncryptionKey:(id)key forVolumeMountPoint:(id)point inode:(unint64_t)inode error:(id *)error;
- (MBMissedEncryptionKeysDB)initWithPath:(id)path readOnly:(BOOL)only;
- (id)fetchEncryptionKeyForInode:(unint64_t)inode volumeMountPoint:(id)point error:(id *)error;
@end

@implementation MBMissedEncryptionKeysDB

+ (id)openOrCreateDatabaseIn:(id)in commitID:(id)d error:(id *)error
{
  v5 = sub_1002086F0(in, d);
  v6 = [[MBMissedEncryptionKeysDB alloc] initWithPath:v5 readOnly:0];

  return v6;
}

+ (id)openDatabaseIn:(id)in commitID:(id)d readOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v8 = sub_1002086F0(in, d);
  v9 = +[NSFileManager defaultManager];
  v10 = [v9 fileExistsAtPath:v8];

  if (v10)
  {
    v11 = [[MBMissedEncryptionKeysDB alloc] initWithPath:v8 readOnly:onlyCopy];
  }

  else if (error)
  {
    [MBError errorWithCode:4 path:v8 format:@"Missed encryption key database not found"];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (MBMissedEncryptionKeysDB)initWithPath:(id)path readOnly:(BOOL)only
{
  onlyCopy = only;
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = MBMissedEncryptionKeysDB;
  v7 = [(MBMissedEncryptionKeysDB *)&v15 init];
  if (v7)
  {
    v8 = [MBSQLiteDB alloc];
    v16[0] = @"CREATE TABLE IF NOT EXISTS EncryptionKeys(volumeMountPoint TEXT NOT NULL,  inode INTGER NOT NULL,  encryptionKey BLOB,  PRIMARY KEY (volumeMountPoint, inode))";
    v16[1] = @"CREATE INDEX IF NOT EXISTS EncryptionKeyIsNull ON EncryptionKeys (encryptionKey) WHERE encryptionKey IS NULL";
    v9 = [NSArray arrayWithObjects:v16 count:2];
    v10 = [MBPQLSchemaUpgrade upgradeWithVersion:1 shouldVacuum:0 statements:v9];
    v17 = v10;
    v11 = [NSArray arrayWithObjects:&v17 count:1];
    v12 = [(MBSQLiteDB *)v8 initWithPath:pathCopy readOnly:onlyCopy shouldDeleteOnFailureToOpen:0 usePQLBatching:0 schemaCurrentVersion:1 schemaMinDatabaseVersionForUpgrade:0xFFFFFFFFLL error:0 schemaUpgrades:v11];
    db = v7->_db;
    v7->_db = v12;
  }

  return v7;
}

- (BOOL)setFoundEncryptionKey:(id)key forVolumeMountPoint:(id)point inode:(unint64_t)inode error:(id *)error
{
  keyCopy = key;
  pointCopy = point;
  if (!keyCopy)
  {
    __assert_rtn("[MBMissedEncryptionKeysDB setFoundEncryptionKey:forVolumeMountPoint:inode:error:]", "MBMissedEncryptionKeysDB.m", 84, "encryptionKey");
  }

  v12 = pointCopy;
  keyCopy = [(MBSQLiteDB *)self->_db executeWithError:error sql:@"INSERT OR REPLACE INTO EncryptionKeys (volumeMountPoint, inode, encryptionKey) VALUES (%@, %llu, %@)", pointCopy, inode, keyCopy];

  return keyCopy;
}

- (id)fetchEncryptionKeyForInode:(unint64_t)inode volumeMountPoint:(id)point error:(id *)error
{
  db = self->_db;
  pointCopy = point;
  inode = [(MBSQLiteDB *)db fetchObjectOfClass:objc_opt_class() error:error sql:@"SELECT encryptionKey FROM EncryptionKeys WHERE volumeMountPoint=%@ AND inode=%llu", pointCopy, inode];

  return inode;
}

- (BOOL)enumerateInodesMissingEncryptionKeys:(id *)keys block:(id)block
{
  blockCopy = block;
  v7 = [(MBSQLiteDB *)self->_db fetchSQL:@"SELECT volumeMountPoint, inode FROM EncryptionKeys WHERE encryptionKey IS NULL"];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100208C14;
  v10[3] = &unk_1003BE658;
  v11 = blockCopy;
  v8 = blockCopy;
  LOBYTE(keys) = [v7 enumerateWithError:keys block:v10];

  return keys;
}

@end