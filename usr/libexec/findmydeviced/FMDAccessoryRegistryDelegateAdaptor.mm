@interface FMDAccessoryRegistryDelegateAdaptor
- (FMDAccessoryRegistryDelegateAdaptor)initWithAccessoryRegistry:(id)registry;
- (void)beaconsChanged;
- (void)bluetoothManagerDidConnectDevice:(id)device;
- (void)bluetoothManagerDidDisconnectDevice:(id)device;
- (void)bluetoothManagerDidUnpairDevice:(id)device;
- (void)bluetoothManagerDidUpdateDevice:(id)device;
- (void)companionRegistryDidUpdateAccessories:(id)accessories;
@end

@implementation FMDAccessoryRegistryDelegateAdaptor

- (FMDAccessoryRegistryDelegateAdaptor)initWithAccessoryRegistry:(id)registry
{
  registryCopy = registry;
  v8.receiver = self;
  v8.super_class = FMDAccessoryRegistryDelegateAdaptor;
  v5 = [(FMDAccessoryRegistryDelegateAdaptor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FMDAccessoryRegistryDelegateAdaptor *)v5 setRegistry:registryCopy];
  }

  return v6;
}

- (void)companionRegistryDidUpdateAccessories:(id)accessories
{
  registry = [(FMDAccessoryRegistryDelegateAdaptor *)self registry];
  [registry reloadData];
}

- (void)bluetoothManagerDidConnectDevice:(id)device
{
  deviceCopy = device;
  isTemporaryPaired = [deviceCopy isTemporaryPaired];
  if (isTemporaryPaired)
  {
    v6 = sub_100002880(isTemporaryPaired);
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = deviceCopy;
      _os_log_impl(&_mh_execute_header, &v6->super, OS_LOG_TYPE_DEFAULT, "BluetoothManager.DidConnectDevice Ignoring shared device %@", &v10, 0xCu);
    }
  }

  else
  {
    v6 = [[FMDBluetoothAccessory alloc] initWithBluetoothManagerDevice:deviceCopy];
    v7 = sub_100002880(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      accessoryIdentifier = [(FMDBluetoothAccessory *)v6 accessoryIdentifier];
      v10 = 138412290;
      v11 = accessoryIdentifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry bluetoothManagerDidConnectDevice %@", &v10, 0xCu);
    }

    registry = [(FMDAccessoryRegistryDelegateAdaptor *)self registry];
    [registry updateAccessory:v6];
  }
}

- (void)bluetoothManagerDidDisconnectDevice:(id)device
{
  deviceCopy = device;
  isTemporaryPaired = [deviceCopy isTemporaryPaired];
  if (isTemporaryPaired)
  {
    v6 = sub_100002880(isTemporaryPaired);
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = deviceCopy;
      _os_log_impl(&_mh_execute_header, &v6->super, OS_LOG_TYPE_DEFAULT, "BluetoothManager.DidDisconnectDevice Ignoring shared device %@", &v10, 0xCu);
    }
  }

  else
  {
    v6 = [[FMDBluetoothAccessory alloc] initWithBluetoothManagerDevice:deviceCopy];
    v7 = sub_100002880(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      accessoryIdentifier = [(FMDBluetoothAccessory *)v6 accessoryIdentifier];
      v10 = 138412290;
      v11 = accessoryIdentifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry bluetoothManagerDidDisconnectDevice %@", &v10, 0xCu);
    }

    registry = [(FMDAccessoryRegistryDelegateAdaptor *)self registry];
    [registry updateAccessory:v6];
  }
}

- (void)bluetoothManagerDidUnpairDevice:(id)device
{
  deviceCopy = device;
  isTemporaryPaired = [deviceCopy isTemporaryPaired];
  if (isTemporaryPaired)
  {
    v6 = sub_100002880(isTemporaryPaired);
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = deviceCopy;
      _os_log_impl(&_mh_execute_header, &v6->super, OS_LOG_TYPE_DEFAULT, "BluetoothManager.DidUnpairDevice Ignoring shared device %@", &v10, 0xCu);
    }
  }

  else
  {
    v6 = [[FMDBluetoothAccessory alloc] initWithBluetoothManagerDevice:deviceCopy];
    v7 = sub_100002880(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      accessoryIdentifier = [(FMDBluetoothAccessory *)v6 accessoryIdentifier];
      v10 = 138412290;
      v11 = accessoryIdentifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistry bluetoothManagerDidUnpairDevice %@", &v10, 0xCu);
    }

    registry = [(FMDAccessoryRegistryDelegateAdaptor *)self registry];
    [registry removeAccessory:v6];
  }
}

- (void)bluetoothManagerDidUpdateDevice:(id)device
{
  deviceCopy = device;
  isTemporaryPaired = [deviceCopy isTemporaryPaired];
  if (isTemporaryPaired)
  {
    v6 = sub_100002880(isTemporaryPaired);
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = deviceCopy;
      _os_log_impl(&_mh_execute_header, &v6->super, OS_LOG_TYPE_DEFAULT, "BluetoothManager.DidUpdateDevice Ignoring shared device %@", &v10, 0xCu);
    }
  }

  else
  {
    v6 = [[FMDBluetoothAccessory alloc] initWithBluetoothManagerDevice:deviceCopy];
    v7 = sub_100002880(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      name = [(FMDBluetoothAccessory *)v6 name];
      v10 = 138412802;
      v11 = name;
      v12 = 1024;
      vendorID = [(FMDBluetoothAccessory *)v6 vendorID];
      v14 = 1024;
      productID = [(FMDBluetoothAccessory *)v6 productID];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDAccessoryRegistryDelegateAdaptor bluetoothManagerDidUpdateDevice device (name: %@, vendorID: %d, productID: %d)", &v10, 0x18u);
    }

    registry = [(FMDAccessoryRegistryDelegateAdaptor *)self registry];
    [registry updateAccessory:v6];
  }
}

- (void)beaconsChanged
{
  registry = [(FMDAccessoryRegistryDelegateAdaptor *)self registry];
  [registry reloadData];
}

@end