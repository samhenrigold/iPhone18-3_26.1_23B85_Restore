@interface NRDevicePairingCriteria
- (NRDevicePairingCriteria)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRDevicePairingCriteria

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"Type %zu Transport %u", -[NRDevicePairingCriteria deviceType](self, "deviceType"), -[NRDevicePairingCriteria pairingTransport](self, "pairingTransport")];
  rssi = [(NRDevicePairingCriteria *)self rssi];

  if (rssi)
  {
    rssi2 = [(NRDevicePairingCriteria *)self rssi];
    [v3 appendFormat:@" RSSI %@", rssi2];
  }

  migrationPairing = [(NRDevicePairingCriteria *)self migrationPairing];
  v7 = "NO";
  if (migrationPairing)
  {
    v7 = "YES";
  }

  [v3 appendFormat:@" migrationPairing %s", v7];
  if ([(NRDevicePairingCriteria *)self migrationPairing])
  {
    nrDeviceIdentifiers = [(NRDevicePairingCriteria *)self nrDeviceIdentifiers];

    if (nrDeviceIdentifiers)
    {
      nrDeviceIdentifiers2 = [(NRDevicePairingCriteria *)self nrDeviceIdentifiers];
      [v3 appendFormat:@" nrDeviceIdentifiers %@", nrDeviceIdentifiers2];
    }
  }

  if ([(NRDevicePairingCriteria *)self psm])
  {
    [v3 appendFormat:@" psm %u", -[NRDevicePairingCriteria psm](self, "psm")];
  }

  serviceUUID = [(NRDevicePairingCriteria *)self serviceUUID];

  if (serviceUUID)
  {
    serviceUUID2 = [(NRDevicePairingCriteria *)self serviceUUID];
    [v3 appendFormat:@" service %@", serviceUUID2];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[NRDevicePairingCriteria deviceType](self forKey:{"deviceType"), @"deviceType"}];
  [coderCopy encodeInt32:-[NRDevicePairingCriteria pairingTransport](self forKey:{"pairingTransport"), @"pairingTransport"}];
  rssi = [(NRDevicePairingCriteria *)self rssi];
  [coderCopy encodeObject:rssi forKey:@"rssi"];

  [coderCopy encodeBool:-[NRDevicePairingCriteria migrationPairing](self forKey:{"migrationPairing"), @"migrationPairing"}];
  nrDeviceIdentifiers = [(NRDevicePairingCriteria *)self nrDeviceIdentifiers];
  [coderCopy encodeObject:nrDeviceIdentifiers forKey:@"nrDeviceIdentifiers"];

  [coderCopy encodeInt32:-[NRDevicePairingCriteria psm](self forKey:{"psm"), @"psm"}];
  serviceUUID = [(NRDevicePairingCriteria *)self serviceUUID];
  [coderCopy encodeObject:serviceUUID forKey:@"serviceUUID"];

  [coderCopy encodeInt64:-[NRDevicePairingCriteria bluetoothRole](self forKey:{"bluetoothRole"), @"bluetoothRole"}];
}

- (NRDevicePairingCriteria)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = NRDevicePairingCriteria;
  v5 = [(NRDevicePairingCriteria *)&v22 init];
  if (!v5)
  {
    v11 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v12 = v11;
      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (!v13)
      {
        goto LABEL_7;
      }
    }

    v14 = nrCopyLogObj_1529();
    _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDevicePairingCriteria initWithCoder:]"", 60);

LABEL_7:
    v15 = _os_log_pack_size();
    v17 = &v21 - ((MEMORY[0x28223BE20](v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(v17, v15, *v18, &dword_25B98C000, "%{public}s [super init] failed");
    *v19 = 136446210;
    *(v19 + 4) = "[NRDevicePairingCriteria initWithCoder:]";
    v20 = nrCopyLogObj_1529();
    _NRLogAbortWithPack(v20, v17);
  }

  v6 = v5;
  -[NRDevicePairingCriteria setDeviceType:](v5, "setDeviceType:", [coderCopy decodeInt64ForKey:@"deviceType"]);
  -[NRDevicePairingCriteria setPairingTransport:](v6, "setPairingTransport:", [coderCopy decodeInt32ForKey:@"pairingTransport"]);
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rssi"];
  [(NRDevicePairingCriteria *)v6 setRssi:v7];

  -[NRDevicePairingCriteria setMigrationPairing:](v6, "setMigrationPairing:", [coderCopy decodeBoolForKey:@"migrationPairing"]);
  v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"nrDeviceIdentifiers"];
  [(NRDevicePairingCriteria *)v6 setNrDeviceIdentifiers:v8];

  -[NRDevicePairingCriteria setPsm:](v6, "setPsm:", [coderCopy decodeInt32ForKey:@"psm"]);
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceUUID"];
  [(NRDevicePairingCriteria *)v6 setServiceUUID:v9];

  -[NRDevicePairingCriteria setBluetoothRole:](v6, "setBluetoothRole:", [coderCopy decodeInt64ForKey:@"bluetoothRole"]);
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setDeviceType:{-[NRDevicePairingCriteria deviceType](self, "deviceType")}];
  [v4 setPairingTransport:{-[NRDevicePairingCriteria pairingTransport](self, "pairingTransport")}];
  rssi = [(NRDevicePairingCriteria *)self rssi];
  [v4 setRssi:rssi];

  [v4 setMigrationPairing:{-[NRDevicePairingCriteria migrationPairing](self, "migrationPairing")}];
  nrDeviceIdentifiers = [(NRDevicePairingCriteria *)self nrDeviceIdentifiers];
  v7 = [nrDeviceIdentifiers copy];
  [v4 setNrDeviceIdentifiers:v7];

  [v4 setPsm:{-[NRDevicePairingCriteria psm](self, "psm")}];
  serviceUUID = [(NRDevicePairingCriteria *)self serviceUUID];
  v9 = [serviceUUID copy];
  [v4 setServiceUUID:v9];

  [v4 setBluetoothRole:{-[NRDevicePairingCriteria bluetoothRole](self, "bluetoothRole")}];
  return v4;
}

@end