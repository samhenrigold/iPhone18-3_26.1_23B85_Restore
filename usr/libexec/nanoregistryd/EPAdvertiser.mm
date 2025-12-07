@interface EPAdvertiser
- (NSDictionary)devices;
- (void)advertiser:(id)advertiser receivedData:(id)data;
- (void)advertiser:(id)advertiser receivedPairingRequestForDevice:(id)device;
- (void)collection:(id)collection deviceDidAppear:(id)appear;
- (void)collection:(id)collection deviceDidDisappear:(id)disappear;
@end

@implementation EPAdvertiser

- (NSDictionary)devices
{
  manager = [(EPAdvertiser *)self manager];
  devicesDictionary = [manager devicesDictionary];
  v4 = [devicesDictionary copy];

  return v4;
}

- (void)collection:(id)collection deviceDidAppear:(id)appear
{
  appearCopy = appear;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v7 = objc_opt_respondsToSelector();
  if (v7)
  {
    v8 = sub_1000A98C0(v7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v11 = sub_1000A98C0(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = 138412802;
        v15 = appearCopy;
        v16 = 2112;
        v17 = v13;
        v18 = 2048;
        v19 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling advertiser:deviceDidAppear: with device %@ on %@[%p]", &v14, 0x20u);
      }
    }

    [ownerDelegate advertiser:self deviceDidAppear:appearCopy];
  }
}

- (void)collection:(id)collection deviceDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v7 = objc_opt_respondsToSelector();
  if (v7)
  {
    v8 = sub_1000A98C0(v7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v11 = sub_1000A98C0(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = 138412802;
        v15 = disappearCopy;
        v16 = 2112;
        v17 = v13;
        v18 = 2048;
        v19 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling advertiser:deviceDidDisappear: with device %@ on %@[%p]", &v14, 0x20u);
      }
    }

    [ownerDelegate advertiser:self deviceDidDisappear:disappearCopy];
  }
}

- (void)advertiser:(id)advertiser receivedPairingRequestForDevice:(id)device
{
  advertiserCopy = advertiser;
  deviceCopy = device;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v9 = objc_opt_respondsToSelector();
  if (v9)
  {
    v10 = sub_1000A98C0(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = sub_1000A98C0(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = 138412802;
        v17 = deviceCopy;
        v18 = 2112;
        v19 = v15;
        v20 = 2048;
        v21 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calling advertiser:receivedPairingRequestForDevice: with device %@ on %@[%p]", &v16, 0x20u);
      }
    }

    [ownerDelegate advertiser:advertiserCopy receivedPairingRequestForDevice:deviceCopy];
  }
}

- (void)advertiser:(id)advertiser receivedData:(id)data
{
  advertiserCopy = advertiser;
  dataCopy = data;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v9 = objc_opt_respondsToSelector();
  if (v9)
  {
    v10 = sub_1000A98C0(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = sub_1000A98C0(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = 138412546;
        v17 = v15;
        v18 = 2048;
        v19 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calling advertiser:receivedData: on %@[%p]", &v16, 0x16u);
      }
    }

    [ownerDelegate advertiser:advertiserCopy receivedData:dataCopy];
  }
}

@end