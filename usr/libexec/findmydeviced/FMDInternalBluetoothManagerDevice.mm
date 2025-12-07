@interface FMDInternalBluetoothManagerDevice
+ (id)externalAccessoryForMacAddress:(id)address;
- (BOOL)bluetoothConnected;
- (BOOL)isEqual:(id)equal;
- (BOOL)isTemporaryPaired;
- (FMDAccessoryStyleDescriptor)styleDescriptor;
- (FMDIdentifiable)accessoryIdentifier;
- (FMDInternalBluetoothManagerDevice)init;
- (NSArray)audioChannelInfo;
- (NSArray)beacons;
- (NSDate)rssiUpdateDate;
- (NSNumber)accessoryRSSI;
- (NSNumber)bluetoothColorCode;
- (NSString)address;
- (NSString)firmwareRevision;
- (NSString)hardwareRevision;
- (NSString)name;
- (NSString)scoUID;
- (id)primaryBeacon;
- (id)serialNumber;
- (unint64_t)hash;
- (unsigned)productID;
- (unsigned)vendorID;
- (void)addAudioChannelStatus:(id)status;
- (void)addBLEBeacon:(id)beacon;
@end

@implementation FMDInternalBluetoothManagerDevice

- (FMDInternalBluetoothManagerDevice)init
{
  v6.receiver = self;
  v6.super_class = FMDInternalBluetoothManagerDevice;
  v2 = [(FMDInternalBluetoothManagerDevice *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    [(FMDInternalBluetoothManagerDevice *)v2 setBeaconsByIdentifier:v3];

    v4 = +[NSMutableDictionary dictionary];
    [(FMDInternalBluetoothManagerDevice *)v2 setAudioChannelsByName:v4];
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      address = [(FMDInternalBluetoothManagerDevice *)v5 address];
      address2 = [(FMDInternalBluetoothManagerDevice *)self address];
      if ([address isEqualToString:address2])
      {
        audioChannelInfo = [(FMDInternalBluetoothManagerDevice *)self audioChannelInfo];
        audioChannelInfo2 = [(FMDInternalBluetoothManagerDevice *)v5 audioChannelInfo];
        v10 = [audioChannelInfo isEqualToArray:audioChannelInfo2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v12.receiver = self;
      v12.super_class = FMDInternalBluetoothManagerDevice;
      v10 = [(FMDInternalBluetoothManagerDevice *)&v12 isEqual:equalCopy];
    }
  }

  return v10;
}

- (unint64_t)hash
{
  address = [(FMDInternalBluetoothManagerDevice *)self address];
  v3 = [address hash];

  return v3;
}

- (FMDIdentifiable)accessoryIdentifier
{
  v3 = [FMDAccessoryIdentifier alloc];
  address = [(FMDInternalBluetoothManagerDevice *)self address];
  v5 = [v3 initWithAddress:address];

  return v5;
}

- (unsigned)vendorID
{
  bluetoothDevice = [(FMDInternalBluetoothManagerDevice *)self bluetoothDevice];
  vendorID = [bluetoothDevice vendorID];

  return vendorID;
}

- (unsigned)productID
{
  bluetoothDevice = [(FMDInternalBluetoothManagerDevice *)self bluetoothDevice];
  productID = [bluetoothDevice productID];

  return productID;
}

- (NSString)address
{
  bluetoothDevice = [(FMDInternalBluetoothManagerDevice *)self bluetoothDevice];
  btAddressData = [bluetoothDevice btAddressData];
  fm_MACAddressString = [btAddressData fm_MACAddressString];

  return fm_MACAddressString;
}

- (NSString)scoUID
{
  address = [(FMDInternalBluetoothManagerDevice *)self address];
  v3 = [NSString stringWithFormat:@"%@-tsco", address];

  return v3;
}

- (BOOL)bluetoothConnected
{
  bluetoothDevice = [(FMDInternalBluetoothManagerDevice *)self bluetoothDevice];
  v3 = ([bluetoothDevice discoveryFlags] >> 21) & 1;

  return v3;
}

- (NSString)name
{
  bluetoothDevice = [(FMDInternalBluetoothManagerDevice *)self bluetoothDevice];
  name = [bluetoothDevice name];

  return name;
}

- (BOOL)isTemporaryPaired
{
  bluetoothDevice = [(FMDInternalBluetoothManagerDevice *)self bluetoothDevice];
  v3 = ([bluetoothDevice deviceFlags] >> 25) & 1;

  return v3;
}

- (void)addBLEBeacon:(id)beacon
{
  beaconCopy = beacon;
  identifier = [beaconCopy identifier];
  isValid = [identifier isValid];

  if (isValid)
  {
    v8 = sub_100002880(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543874;
      v12 = objc_opt_class();
      v13 = 2050;
      selfCopy = self;
      v15 = 2050;
      v16 = beaconCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p> addBLEBeacon: <%{public}p>", &v11, 0x20u);
    }

    beaconsByIdentifier = [(FMDInternalBluetoothManagerDevice *)self beaconsByIdentifier];
    identifier2 = [beaconCopy identifier];
    [beaconsByIdentifier setObject:beaconCopy forKeyedSubscript:identifier2];
  }
}

- (void)addAudioChannelStatus:(id)status
{
  statusCopy = status;
  channelName = [statusCopy channelName];

  if (channelName)
  {
    v7 = sub_100002880(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138544130;
      v11 = objc_opt_class();
      v12 = 2050;
      selfCopy = self;
      v14 = 2050;
      v15 = statusCopy;
      v16 = 2112;
      v17 = statusCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p> addAudioChannelStatus: <%{public}p> %@", &v10, 0x2Au);
    }

    audioChannelsByName = [(FMDInternalBluetoothManagerDevice *)self audioChannelsByName];
    channelName2 = [statusCopy channelName];
    [audioChannelsByName setObject:statusCopy forKeyedSubscript:channelName2];
  }
}

- (NSNumber)accessoryRSSI
{
  primaryBeacon = [(FMDInternalBluetoothManagerDevice *)self primaryBeacon];
  rssi = [primaryBeacon rssi];

  return rssi;
}

- (NSDate)rssiUpdateDate
{
  primaryBeacon = [(FMDInternalBluetoothManagerDevice *)self primaryBeacon];
  updateDate = [primaryBeacon updateDate];

  return updateDate;
}

- (NSArray)audioChannelInfo
{
  audioChannelsByName = [(FMDInternalBluetoothManagerDevice *)self audioChannelsByName];
  allValues = [audioChannelsByName allValues];

  return allValues;
}

- (NSNumber)bluetoothColorCode
{
  primaryBeacon = [(FMDInternalBluetoothManagerDevice *)self primaryBeacon];
  colorCode = [primaryBeacon colorCode];

  return colorCode;
}

- (FMDAccessoryStyleDescriptor)styleDescriptor
{
  primaryBeacon = [(FMDInternalBluetoothManagerDevice *)self primaryBeacon];
  styleDescriptor = [primaryBeacon styleDescriptor];

  return styleDescriptor;
}

- (id)primaryBeacon
{
  beacons = [(FMDInternalBluetoothManagerDevice *)self beacons];
  v3 = [FMDBLEAudioAdvertisementParser primaryBeaconForBeacons:beacons];

  return v3;
}

- (NSArray)beacons
{
  beaconsByIdentifier = [(FMDInternalBluetoothManagerDevice *)self beaconsByIdentifier];
  allValues = [beaconsByIdentifier allValues];

  return allValues;
}

- (id)serialNumber
{
  v3 = objc_opt_class();
  address = [(FMDInternalBluetoothManagerDevice *)self address];
  v5 = [v3 externalAccessoryForMacAddress:address];

  serialNumber = [v5 serialNumber];

  return serialNumber;
}

- (NSString)firmwareRevision
{
  v3 = objc_opt_class();
  address = [(FMDInternalBluetoothManagerDevice *)self address];
  v5 = [v3 externalAccessoryForMacAddress:address];

  firmwareRevision = [v5 firmwareRevision];

  return firmwareRevision;
}

- (NSString)hardwareRevision
{
  v3 = objc_opt_class();
  address = [(FMDInternalBluetoothManagerDevice *)self address];
  v5 = [v3 externalAccessoryForMacAddress:address];

  hardwareRevision = [v5 hardwareRevision];

  return hardwareRevision;
}

+ (id)externalAccessoryForMacAddress:(id)address
{
  addressCopy = address;
  v4 = +[EAAccessoryManager sharedAccessoryManager];
  connectedAccessories = [v4 connectedAccessories];

  v7 = sub_100002880(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1002267BC(connectedAccessories, v7);
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10000A9A4;
  v18 = sub_100002A9C;
  v19 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10013A7E0;
  v11[3] = &unk_1002CD9E0;
  v8 = addressCopy;
  v12 = v8;
  v13 = &v14;
  [connectedAccessories enumerateObjectsUsingBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

@end