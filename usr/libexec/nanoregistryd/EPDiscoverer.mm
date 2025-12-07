@interface EPDiscoverer
- (EPDiscoverer)initWithManager:(id)manager withDelegate:(id)delegate;
- (NSDictionary)devices;
- (NSMutableSet)displayableDevices;
- (NSMutableSet)proximateDevices;
- (id)initBase;
- (void)collection:(id)collection deviceDidAppear:(id)appear;
- (void)collection:(id)collection deviceDidBecomeDisplayable:(id)displayable;
- (void)collection:(id)collection deviceDidBecomeProximate:(id)proximate;
- (void)collection:(id)collection deviceDidBecomeUndisplayable:(id)undisplayable;
- (void)collection:(id)collection deviceDidBecomeUnproximate:(id)unproximate;
- (void)collection:(id)collection deviceDidDisappear:(id)disappear;
- (void)collection:(id)collection deviceDidUpdate:(id)update;
- (void)dealloc;
- (void)discovererBluetoothIsWorking:(id)working;
- (void)discovererBluetoothMayHaveFailed:(id)failed;
@end

@implementation EPDiscoverer

- (id)initBase
{
  v3.receiver = self;
  v3.super_class = EPDiscoverer;
  return [(EPDiscoverer *)&v3 init];
}

- (void)dealloc
{
  [(EPDiscovererManager *)self->_manager removeDiscoverer:self];
  v3.receiver = self;
  v3.super_class = EPDiscoverer;
  [(EPDiscoverer *)&v3 dealloc];
}

- (EPDiscoverer)initWithManager:(id)manager withDelegate:(id)delegate
{
  managerCopy = manager;
  delegateCopy = delegate;
  initBase = [(EPDiscoverer *)self initBase];
  v10 = initBase;
  if (initBase)
  {
    objc_storeWeak(initBase + 2, delegateCopy);
    objc_storeStrong(&v10->_manager, manager);
  }

  return v10;
}

- (NSDictionary)devices
{
  deviceCollection = [(EPDiscovererManager *)self->_manager deviceCollection];
  devicesDictionary = [deviceCollection devicesDictionary];
  v4 = [devicesDictionary copy];

  return v4;
}

- (NSMutableSet)displayableDevices
{
  deviceCollection = [(EPDiscovererManager *)self->_manager deviceCollection];
  displayableDevices = [deviceCollection displayableDevices];
  v4 = [displayableDevices copy];

  return v4;
}

- (NSMutableSet)proximateDevices
{
  deviceCollection = [(EPDiscovererManager *)self->_manager deviceCollection];
  proximateDevices = [deviceCollection proximateDevices];
  v4 = [proximateDevices copy];

  return v4;
}

- (void)collection:(id)collection deviceDidAppear:(id)appear
{
  appearCopy = appear;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 discoverer:self deviceDidAppear:appearCopy];
  }
}

- (void)collection:(id)collection deviceDidBecomeDisplayable:(id)displayable
{
  displayableCopy = displayable;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = sub_1000A98C0(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v12 = sub_1000A98C0(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = objc_loadWeakRetained(&self->_delegate);
        v18 = 138412802;
        v19 = displayableCopy;
        v20 = 2112;
        v21 = v15;
        v22 = 2048;
        v23 = v16;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Calling discoverer:deviceDidBecomeDisplayable: with device %@ on object %@[%p]", &v18, 0x20u);
      }
    }

    v17 = objc_loadWeakRetained(&self->_delegate);
    [v17 discoverer:self deviceDidBecomeDisplayable:displayableCopy];
  }
}

- (void)collection:(id)collection deviceDidBecomeProximate:(id)proximate
{
  proximateCopy = proximate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = sub_1000A98C0(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v12 = sub_1000A98C0(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = objc_loadWeakRetained(&self->_delegate);
        v18 = 138412802;
        v19 = proximateCopy;
        v20 = 2112;
        v21 = v15;
        v22 = 2048;
        v23 = v16;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Calling discoverer:deviceDidBecomeProximate: with device %@ on object %@[%p]", &v18, 0x20u);
      }
    }

    v17 = objc_loadWeakRetained(&self->_delegate);
    [v17 discoverer:self deviceDidBecomeProximate:proximateCopy];
  }
}

- (void)collection:(id)collection deviceDidUpdate:(id)update
{
  updateCopy = update;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = sub_1000A98C0(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v12 = sub_1000A98C0(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = objc_loadWeakRetained(&self->_delegate);
        v18 = 138412802;
        v19 = updateCopy;
        v20 = 2112;
        v21 = v15;
        v22 = 2048;
        v23 = v16;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Calling discoverer:deviceDidUpdate: with device %@ on object %@[%p]", &v18, 0x20u);
      }
    }

    v17 = objc_loadWeakRetained(&self->_delegate);
    [v17 discoverer:self deviceDidUpdate:updateCopy];
  }
}

- (void)collection:(id)collection deviceDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 discoverer:self deviceDidDisappear:disappearCopy];
  }
}

- (void)collection:(id)collection deviceDidBecomeUndisplayable:(id)undisplayable
{
  undisplayableCopy = undisplayable;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = sub_1000A98C0(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v12 = sub_1000A98C0(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = objc_loadWeakRetained(&self->_delegate);
        v18 = 138412802;
        v19 = undisplayableCopy;
        v20 = 2112;
        v21 = v15;
        v22 = 2048;
        v23 = v16;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Calling discoverer:deviceDidBecomeUndisplayable: with device %@ on object %@[%p]", &v18, 0x20u);
      }
    }

    v17 = objc_loadWeakRetained(&self->_delegate);
    [v17 discoverer:self deviceDidBecomeUndisplayable:undisplayableCopy];
  }
}

- (void)collection:(id)collection deviceDidBecomeUnproximate:(id)unproximate
{
  unproximateCopy = unproximate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = sub_1000A98C0(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v12 = sub_1000A98C0(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = objc_loadWeakRetained(&self->_delegate);
        v18 = 138412802;
        v19 = unproximateCopy;
        v20 = 2112;
        v21 = v15;
        v22 = 2048;
        v23 = v16;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Calling discoverer:deviceDidBecomeUnproximate: with device %@ on object %@[%p]", &v18, 0x20u);
      }
    }

    v17 = objc_loadWeakRetained(&self->_delegate);
    [v17 discoverer:self deviceDidBecomeUnproximate:unproximateCopy];
  }
}

- (void)discovererBluetoothMayHaveFailed:(id)failed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = sub_1000A98C0(v6);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v10 = sub_1000A98C0(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_loadWeakRetained(&self->_delegate);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = objc_loadWeakRetained(&self->_delegate);
        v16 = 138412546;
        v17 = v13;
        v18 = 2048;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling discovererBluetoothMayHaveFailed: on object %@[%p]", &v16, 0x16u);
      }
    }

    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 discovererBluetoothMayHaveFailed:self];
  }
}

- (void)discovererBluetoothIsWorking:(id)working
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = sub_1000A98C0(v6);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v10 = sub_1000A98C0(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_loadWeakRetained(&self->_delegate);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = objc_loadWeakRetained(&self->_delegate);
        v16 = 138412546;
        v17 = v13;
        v18 = 2048;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling discovererBluetoothIsWorking: on object %@[%p]", &v16, 0x16u);
      }
    }

    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 discovererBluetoothIsWorking:self];
  }
}

@end