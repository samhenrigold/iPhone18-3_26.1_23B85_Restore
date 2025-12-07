@interface MBPowerAssertion
- (MBPowerAssertion)initWithName:(id)name timeout:(double)timeout;
- (void)_drop;
- (void)dealloc;
- (void)drop;
- (void)hold;
@end

@implementation MBPowerAssertion

- (MBPowerAssertion)initWithName:(id)name timeout:(double)timeout
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = MBPowerAssertion;
  v8 = [(MBPowerAssertion *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_timeout = timeout;
    v10 = objc_opt_class();
    Name = class_getName(v10);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(Name, v12);
    queue = v9->_queue;
    v9->_queue = v13;

    v9->_assertionID = 0;
  }

  return v9;
}

- (void)dealloc
{
  [(MBPowerAssertion *)self _drop];
  v3.receiver = self;
  v3.super_class = MBPowerAssertion;
  [(MBPowerAssertion *)&v3 dealloc];
}

- (void)hold
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002678C0;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_drop
{
  assertionID = self->_assertionID;
  if (assertionID)
  {
    v4 = IOPMAssertionRelease(assertionID);
    v5 = MBGetDefaultLog();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        name = self->_name;
        v8 = self->_assertionID;
        *buf = 138413058;
        v12 = @"NoIdleSleepAssertion";
        v13 = 2112;
        v14 = name;
        v15 = 1024;
        v16 = v8;
        v17 = 1024;
        v18 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to drop %@, n:%@, id:%i - IOPMAssertionRelease() returned %#x", buf, 0x22u);
        _MBLog(@"E ", "Failed to drop %@, n:%@, id:%i - IOPMAssertionRelease() returned %#x", @"NoIdleSleepAssertion", self->_name, self->_assertionID, v4);
      }
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = self->_name;
        v10 = self->_assertionID;
        *buf = 138412802;
        v12 = @"NoIdleSleepAssertion";
        v13 = 2112;
        v14 = v9;
        v15 = 1024;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Dropped %@, n:%@, id:%i", buf, 0x1Cu);
        _MBLog(@"I ", "Dropped %@, n:%@, id:%i", @"NoIdleSleepAssertion", self->_name, self->_assertionID);
      }

      self->_assertionID = 0;
    }
  }
}

- (void)drop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100267DAC;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_sync(queue, block);
}

@end