@interface HRCPowerAssertion
- (HRCPowerAssertion)initWithName:(id)name reason:(id)reason;
- (void)dealloc;
@end

@implementation HRCPowerAssertion

- (HRCPowerAssertion)initWithName:(id)name reason:(id)reason
{
  nameCopy = name;
  reasonCopy = reason;
  v19.receiver = self;
  v19.super_class = HRCPowerAssertion;
  v8 = [(HRCPowerAssertion *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v10 = sub_10000132C(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v21 = nameCopy;
      v22 = 2114;
      v23 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "creating a %{public}@ power assertion to prevent system sleep, reason : %{public}@", buf, 0x16u);
    }

    v11 = [(__CFString *)nameCopy copy];
    name = v9->_name;
    v9->_name = v11;

    v13 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", nameCopy, reasonCopy, 0, 0, 0.0, @"TimeoutActionTurnOff", &v9->_powerAssertion);
    v14 = v13;
    v15 = sub_10000132C(v13);
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        sub_100011BF8(v14, v16);
      }

      v17 = 0;
      v9->_powerAssertion = 0;
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v21 = nameCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "successfully acquired power assertion %{public}@", buf, 0xCu);
      }

      v17 = v9;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)dealloc
{
  if (self->_powerAssertion)
  {
    v3 = sub_10000132C(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      name = self->_name;
      *buf = 138543362;
      v7 = name;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "releasing %{public}@ power assertion", buf, 0xCu);
    }

    IOPMAssertionRelease(self->_powerAssertion);
  }

  v5.receiver = self;
  v5.super_class = HRCPowerAssertion;
  [(HRCPowerAssertion *)&v5 dealloc];
}

@end