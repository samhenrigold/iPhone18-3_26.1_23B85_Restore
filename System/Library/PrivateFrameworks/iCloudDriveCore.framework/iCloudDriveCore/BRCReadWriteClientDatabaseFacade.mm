@interface BRCReadWriteClientDatabaseFacade
- (BOOL)saveAppLibrary:(id)library;
- (BOOL)saveAppLibrary:(id)library supportsEnhancedDrivePrivacy:(BOOL)privacy;
- (BOOL)updateClientStateData:(id)data;
- (BOOL)updateClientStateDictionary:(id)dictionary;
- (BRCReadWriteClientDatabaseFacade)initWithDB:(id)b workloop:(id)workloop;
- (void)captureSyncErrorForItemWithRowID:(unint64_t)d error:(id)error errorMessage:(id)message underlyingError:(id)underlyingError serviceCode:(int)code;
@end

@implementation BRCReadWriteClientDatabaseFacade

- (BRCReadWriteClientDatabaseFacade)initWithDB:(id)b workloop:(id)workloop
{
  v5.receiver = self;
  v5.super_class = BRCReadWriteClientDatabaseFacade;
  return [(BRCDatabaseFacade *)&v5 _initWithDB:b workloop:workloop];
}

- (BOOL)updateClientStateData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    [BRCReadWriteClientDatabaseFacade updateClientStateData:];
  }

  dataCopy = [(BRCPQLConnection *)self->super.super._db execute:@"UPDATE client_state SET v = %@", dataCopy];

  return dataCopy;
}

- (BOOL)updateClientStateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    [BRCReadWriteClientDatabaseFacade updateClientStateDictionary:];
  }

  dictionaryCopy = [(BRCPQLConnection *)self->super.super._db execute:@"UPDATE client_state SET v = %@", dictionaryCopy];

  return dictionaryCopy;
}

- (BOOL)saveAppLibrary:(id)library supportsEnhancedDrivePrivacy:(BOOL)privacy
{
  privacyCopy = privacy;
  libraryCopy = library;
  db = self->super.super._db;
  plist = [libraryCopy plist];
  zoneRowID = [libraryCopy zoneRowID];
  if (privacyCopy)
  {
    childBasehashSalt = [libraryCopy childBasehashSalt];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(libraryCopy, "saltingState")}];
    dbRowID = [libraryCopy dbRowID];
    v13 = [(BRCPQLConnection *)db execute:@"UPDATE app_libraries SET app_library_plist = %@, zone_rowid = %@, child_basehash_salt = %@, salting_state = %@ WHERE rowid = %@", plist, zoneRowID, childBasehashSalt, v11, dbRowID];
  }

  else
  {
    childBasehashSalt = [libraryCopy dbRowID];
    v13 = [(BRCPQLConnection *)db execute:@"UPDATE app_libraries SET app_library_plist = %@, zone_rowid = %@ WHERE rowid = %@", plist, zoneRowID, childBasehashSalt];
  }

  if (v13)
  {
    [libraryCopy setNeedsSave:0];
    v14 = 1;
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [BRCReadWriteClientDatabaseFacade saveAppLibrary:v15 supportsEnhancedDrivePrivacy:v16];
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)saveAppLibrary:(id)library
{
  libraryCopy = library;
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  LOBYTE(self) = -[BRCReadWriteClientDatabaseFacade saveAppLibrary:supportsEnhancedDrivePrivacy:](self, "saveAppLibrary:supportsEnhancedDrivePrivacy:", libraryCopy, [v5 supportsEnhancedDrivePrivacy]);

  return self;
}

- (void)captureSyncErrorForItemWithRowID:(unint64_t)d error:(id)error errorMessage:(id)message underlyingError:(id)underlyingError serviceCode:(int)code
{
  v7 = *&code;
  db = self->super.super._db;
  underlyingErrorCopy = underlyingError;
  messageCopy = message;
  errorCopy = error;
  domain = [errorCopy domain];
  code = [errorCopy code];

  domain2 = [underlyingErrorCopy domain];
  v17 = domain2;
  if (domain2)
  {
    v18 = domain2;
  }

  else
  {
    v18 = &stru_2837504F0;
  }

  code2 = [underlyingErrorCopy code];

  [(BRCPQLConnection *)db execute:@"INSERT OR REPLACE INTO item_errors (item_rowid, error_domain, error_code, error_message, underlying_error_domain, underlying_error_code, service) VALUES (%llu, %@, %ld, %@, %@, %ld, %d)", d, domain, code, messageCopy, v18, code2, v7];
}

@end