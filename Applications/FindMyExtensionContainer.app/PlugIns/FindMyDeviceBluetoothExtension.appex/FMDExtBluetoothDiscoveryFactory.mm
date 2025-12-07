@interface FMDExtBluetoothDiscoveryFactory
+ (id)configurationDictWithBleDevice:(id)device;
- (BOOL)isDiscoveryActive;
- (FMDExtBluetoothDiscoveryFactory)init;
- (id)newDiscovery;
- (void)didDiscoverDevice:(id)device;
- (void)didLoseDevice:(id)device;
- (void)setAllAudioChannelsActive:(BOOL)active;
- (void)setupDiscovery;
@end

@implementation FMDExtBluetoothDiscoveryFactory

- (FMDExtBluetoothDiscoveryFactory)init
{
  v5.receiver = self;
  v5.super_class = FMDExtBluetoothDiscoveryFactory;
  v2 = [(FMDExtBluetoothDiscoveryFactory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMDExtBluetoothDiscoveryFactory *)v2 setupDiscovery];
  }

  return v3;
}

- (id)newDiscovery
{
  discoveryCoordinator = [(FMDExtBluetoothDiscoveryFactory *)self discoveryCoordinator];
  newDiscovery = [discoveryCoordinator newDiscovery];

  return newDiscovery;
}

- (BOOL)isDiscoveryActive
{
  discoveryCoordinator = [(FMDExtBluetoothDiscoveryFactory *)self discoveryCoordinator];
  isDiscoveryActive = [discoveryCoordinator isDiscoveryActive];

  return isDiscoveryActive;
}

- (void)setupDiscovery
{
  v3 = objc_alloc_init(FMDBluetoothDiscoveryXPCProxy);
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.icloud.FindMyDevice.FindMyExtensionContainer.FindMyDeviceBluetoothExtension.bluetoothdiscoveryqueue", v4);
  [(FMDExtBluetoothDiscoveryFactory *)self setBluetoothDiscoveryQueue:v5];

  v6 = [[FMDBluetoothDiscoveryCoordinator alloc] initWithDiscovery:v3];
  [(FMDExtBluetoothDiscoveryFactory *)self setDiscoveryCoordinator:v6];

  inited = objc_initWeak(&location, self);
  v8 = sub_100003F1C(inited);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "starting up discovery %@", buf, 0xCu);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100009E6C;
  v19[3] = &unk_10001D3E0;
  objc_copyWeak(&v20, &location);
  discoveryCoordinator = [(FMDExtBluetoothDiscoveryFactory *)self discoveryCoordinator];
  [discoveryCoordinator setDidDiscoverDevice:v19];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100009FDC;
  v17[3] = &unk_10001D3E0;
  objc_copyWeak(&v18, &location);
  discoveryCoordinator2 = [(FMDExtBluetoothDiscoveryFactory *)self discoveryCoordinator];
  [discoveryCoordinator2 setDidLoseDevice:v17];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000A14C;
  v15[3] = &unk_10001D430;
  objc_copyWeak(&v16, &location);
  discoveryCoordinator3 = [(FMDExtBluetoothDiscoveryFactory *)self discoveryCoordinator];
  [discoveryCoordinator3 setDidEndDiscovery:v15];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000A260;
  v13[3] = &unk_10001D330;
  objc_copyWeak(&v14, &location);
  discoveryCoordinator4 = [(FMDExtBluetoothDiscoveryFactory *)self discoveryCoordinator];
  [discoveryCoordinator4 setDidStartDiscovery:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)setAllAudioChannelsActive:(BOOL)active
{
  activeCopy = active;
  delegate = [(FMDExtBluetoothDiscoveryFactory *)self delegate];
  accessoryId = [(FMDExtBluetoothDiscoveryFactory *)self accessoryId];
  if (activeCopy)
  {
    v6 = &off_1000207A8;
    v7 = &stru_10001D450;
  }

  else
  {
    v6 = &off_1000207D0;
    v7 = &stru_10001D470;
  }

  [delegate availabilitydidChangeFor:accessoryId status:v6 withCompletion:v7];
}

- (void)didDiscoverDevice:(id)device
{
  deviceCopy = device;
  bluetoothAddress = [deviceCopy bluetoothAddress];
  fm_MACAddressString = [bluetoothAddress fm_MACAddressString];
  address = [(FMDExtBluetoothDiscoveryFactory *)self address];
  v8 = [fm_MACAddressString isEqualToString:address];

  if (v8)
  {
    v9 = [objc_opt_class() configurationDictWithBleDevice:deviceCopy];
    v10 = sub_100003F1C(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      advertisementFields = [deviceCopy advertisementFields];
      v14 = 138412546;
      v15 = advertisementFields;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didDiscoverDevice = %@ %@", &v14, 0x16u);
    }

    if (v9)
    {
      delegate = [(FMDExtBluetoothDiscoveryFactory *)self delegate];
      accessoryId = [(FMDExtBluetoothDiscoveryFactory *)self accessoryId];
      [delegate availabilitydidChangeFor:accessoryId status:v9 withCompletion:&stru_10001D490];
    }
  }
}

- (void)didLoseDevice:(id)device
{
  deviceCopy = device;
  bluetoothAddress = [deviceCopy bluetoothAddress];
  fm_MACAddressString = [bluetoothAddress fm_MACAddressString];
  address = [(FMDExtBluetoothDiscoveryFactory *)self address];
  v8 = [fm_MACAddressString isEqualToString:address];

  if (v8)
  {
    v9 = [objc_opt_class() configurationDictWithBleDevice:deviceCopy];
    v10 = sub_100003F1C(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      advertisementFields = [deviceCopy advertisementFields];
      v14 = 138412546;
      v15 = advertisementFields;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "didLoseDevice = %@ %@", &v14, 0x16u);
    }

    if (v9)
    {
      delegate = [(FMDExtBluetoothDiscoveryFactory *)self delegate];
      accessoryId = [(FMDExtBluetoothDiscoveryFactory *)self accessoryId];
      [delegate availabilitydidChangeFor:accessoryId status:v9 withCompletion:&stru_10001D4B0];
    }
  }
}

+ (id)configurationDictWithBleDevice:(id)device
{
  advertisementFields = [device advertisementFields];
  v4 = [advertisementFields objectForKeyedSubscript:@"aState"];
  v5 = v4;
  v6 = &off_1000207F8;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v33 = [v7 isEqualToNumber:&off_100020810];
  v8 = [advertisementFields objectForKeyedSubscript:@"hsStatus"];
  unsignedIntValue = [v8 unsignedIntValue];
  v10 = dword_10002873C & unsignedIntValue;
  v11 = dword_100028720 & unsignedIntValue;
  v12 = dword_100028724 & unsignedIntValue;
  v13 = dword_100028730 & unsignedIntValue;
  v14 = dword_100028728 & unsignedIntValue;
  v15 = dword_100028734 & unsignedIntValue;
  v16 = dword_100028740 & unsignedIntValue;
  v17 = sub_100003BEC(unsignedIntValue);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110656;
    v37 = v10 != 0;
    v38 = 1024;
    v39 = v16 != 0;
    v40 = 1024;
    v41 = v11 != 0;
    v42 = 1024;
    v43 = v12 != 0;
    v44 = 1024;
    v45 = v13 != 0;
    v46 = 1024;
    v47 = v14 != 0;
    v48 = 1024;
    v49 = v15 != 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "MainHSSTATUS L %i P %i U %i C %i OC %i E %i OE %i", buf, 0x2Cu);
  }

  if (v16)
  {
    v19 = v12 != 0;
    if (!v13)
    {
      v19 = 0;
    }

    if (!(v12 | v13))
    {
      v19 = 1;
    }

    if (v14 | v15)
    {
      v20 = 1;
    }

    else
    {
      v20 = v11 == 0;
    }

    v21 = !v20 && v19;
    if (v13)
    {
      v22 = v21;
    }

    else
    {
      v22 = 1;
    }

    if (v10)
    {
      v23 = @"right";
    }

    else
    {
      v23 = @"left";
    }

    if (v10)
    {
      v24 = @"left";
    }

    else
    {
      v24 = @"right";
    }

    v25 = v23;
    v26 = v24;
    v27 = objc_alloc_init(NSMutableArray);
    v28 = v27;
    if ((v21 & 1) != 0 || !v12)
    {
      [v27 addObject:v26];
    }

    if (((v11 != 0) & v22) == 1)
    {
      [v28 addObject:v25];
    }

    if (v33)
    {
      v29 = v28;
    }

    else
    {
      v29 = &__NSArray0__struct;
    }

    v34[0] = @"components";
    v34[1] = @"playing";
    v35[0] = v28;
    v35[1] = v29;
    v34[2] = @"statusUpdateTime";
    v31 = +[NSDate date];
    v35[2] = v31;
    v30 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];
  }

  else
  {
    v25 = sub_100003F1C(v18);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "ignoring advertisement from non primary bud", buf, 2u);
    }

    v30 = 0;
  }

  return v30;
}

@end