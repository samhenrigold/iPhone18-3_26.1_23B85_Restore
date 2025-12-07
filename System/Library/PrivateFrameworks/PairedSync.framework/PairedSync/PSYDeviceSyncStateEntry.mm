@interface PSYDeviceSyncStateEntry
- (BOOL)hasCompletedInitialOrMigrationSync;
- (BOOL)hasCompletedInitialSync;
- (BOOL)hasCompletedSync;
- (BOOL)isEqual:(id)equal;
- (PSYDeviceSyncStateEntry)initWithCoder:(id)coder;
- (PSYDeviceSyncStateEntry)initWithPairingID:(id)d syncState:(unint64_t)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSYDeviceSyncStateEntry

- (PSYDeviceSyncStateEntry)initWithPairingID:(id)d syncState:(unint64_t)state
{
  dCopy = d;
  v14.receiver = self;
  v14.super_class = PSYDeviceSyncStateEntry;
  v8 = [(PSYDeviceSyncStateEntry *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pairingID, d);
    v9->_initialSyncState = state;
    v10 = +[PSYRegistrySingleton registry];
    v11 = [v10 deviceForPairingID:dCopy];

    if (!v11)
    {

      v12 = 0;
      goto LABEL_6;
    }

    v9->_syncSwitchIndex = [v10 lastSyncSwitchIndex];
    v9->_migrationIndex = [v10 migrationCountForPairingID:dCopy];
  }

  v12 = v9;
LABEL_6:

  return v12;
}

- (BOOL)hasCompletedInitialSync
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = psy_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = psy_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromPSYDeviceSyncState(self->_initialSyncState);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_25DF25000, v6, OS_LOG_TYPE_DEFAULT, "NRPDR has completed initial sync %@", &v9, 0xCu);
    }
  }

  return self->_initialSyncState == 3;
}

- (BOOL)hasCompletedInitialOrMigrationSync
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = +[PSYRegistrySingleton registry];
  v4 = [v3 deviceForPairingID:self->_pairingID];
  v5 = [v4 valueForProperty:*MEMORY[0x277D37BD0]];
  integerValue = [v5 integerValue];

  v8 = self->_initialSyncState == 3 && self->_migrationIndex == integerValue;
  v9 = psy_log(v7);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = psy_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromPSYDeviceSyncState(self->_initialSyncState);
      migrationIndex = self->_migrationIndex;
      v15 = @"NO";
      v17 = 138413058;
      v18 = v13;
      if (v8)
      {
        v15 = @"YES";
      }

      v19 = 1024;
      v20 = migrationIndex;
      v21 = 1024;
      v22 = integerValue;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_25DF25000, v12, OS_LOG_TYPE_DEFAULT, "NRPDR initial sync state %@;           migration index: %d;           nr migration index: %d           hasCompletedInitialOrMigrationSync %@;", &v17, 0x22u);
    }
  }

  return v8;
}

- (BOOL)hasCompletedSync
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = +[PSYRegistrySingleton registry];
  v4 = psy_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = psy_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [(NSUUID *)self->_pairingID UUIDString];
      switchIndex = [v3 switchIndex];
      syncSwitchIndex = self->_syncSwitchIndex;
      v14 = 138412802;
      v15 = uUIDString;
      v16 = 2048;
      v17 = switchIndex;
      v18 = 2048;
      v19 = syncSwitchIndex;
      _os_log_impl(&dword_25DF25000, v7, OS_LOG_TYPE_DEFAULT, "NRPDR %@ syncSwitchIndex: %ld prefs switchIndex: %ld", &v14, 0x20u);
    }
  }

  if ([(PSYDeviceSyncStateEntry *)self hasCompletedInitialOrMigrationSync])
  {
    v11 = self->_syncSwitchIndex;
    v12 = [v3 switchIndex] == v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  pairingID = self->_pairingID;
  coderCopy = coder;
  [coderCopy encodeObject:pairingID forKey:@"pairingID"];
  [coderCopy encodeInteger:self->_initialSyncState forKey:@"syncState"];
  [coderCopy encodeInt32:self->_syncSwitchIndex forKey:@"syncSwitchIndex"];
  [coderCopy encodeInt32:self->_migrationIndex forKey:@"migrationIndex"];
}

- (PSYDeviceSyncStateEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PSYDeviceSyncStateEntry;
  v5 = [(PSYDeviceSyncStateEntry *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingID"];
    pairingID = v5->_pairingID;
    v5->_pairingID = v6;

    v5->_initialSyncState = [coderCopy decodeIntegerForKey:@"syncState"];
    v5->_syncSwitchIndex = [coderCopy decodeInt32ForKey:@"syncSwitchIndex"];
    v5->_migrationIndex = [coderCopy decodeInt32ForKey:@"migrationIndex"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uUIDString = [(NSUUID *)self->_pairingID UUIDString];
  v7 = NSStringFromPSYDeviceSyncState(self->_initialSyncState);
  syncSwitchIndex = self->_syncSwitchIndex;
  migrationIndex = self->_migrationIndex;
  hasCompletedSync = [(PSYDeviceSyncStateEntry *)self hasCompletedSync];
  v11 = @"Not Completed";
  if (hasCompletedSync)
  {
    v11 = @"Completed";
  }

  v12 = [v3 stringWithFormat:@"<%@ %p pairingID=%@ initialSyncState=%@ syncSwitchIndex=%lu migrationIndex=%lu syncState=%@>", v5, self, uUIDString, v7, syncSwitchIndex, migrationIndex, v11];;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (equalCopy == self)
  {
    v6 = 1;
    goto LABEL_13;
  }

  if (equalCopy)
  {
    v5 = equalCopy;
    v6 = [(NSUUID *)self->_pairingID isEqual:v5->_pairingID]&& self->_initialSyncState == v5->_initialSyncState && self->_syncSwitchIndex == v5->_syncSwitchIndex && self->_migrationIndex == v5->_migrationIndex;
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

LABEL_13:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_pairingID hash];
  v4 = self->_initialSyncState - v3 + 32 * v3;
  v5 = self->_syncSwitchIndex - v4 + 32 * v4;
  return self->_migrationIndex - v5 + 32 * v5 + 923521;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v4 + 16), self->_pairingID);
  *(v4 + 24) = self->_initialSyncState;
  *(v4 + 8) = self->_syncSwitchIndex;
  *(v4 + 12) = self->_migrationIndex;
  return v4;
}

@end