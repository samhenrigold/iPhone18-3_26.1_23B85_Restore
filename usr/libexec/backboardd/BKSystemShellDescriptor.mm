@interface BKSystemShellDescriptor
+ (BKSystemShellDescriptor)new;
+ (id)build:(id)build;
- (BKSystemShellDescriptor)init;
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)stream;
@end

@implementation BKSystemShellDescriptor

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v4 = BSProcessDescriptionForPID();
  [streamCopy appendString:v4 withName:0];

  if (([streamCopy hasSuccinctStyle] & 1) == 0)
  {
    v5 = [streamCopy appendObject:self->_bundleIdentifier withName:@"bundleIdentifier"];
    v6 = [streamCopy appendObject:self->_bundlePath withName:@"bundlePath"];
    v7 = [streamCopy appendObject:self->_jobLabel withName:@"jobLabel"];
    v8 = [streamCopy appendDouble:@"systemIdleSleepInterval" withName:2 decimalPrecision:self->_systemIdleSleepInterval];
    watchdogType = self->_watchdogType;
    if (watchdogType)
    {
      if (watchdogType == 1)
      {
        v10 = @"shell";
      }

      else
      {
        v10 = [NSString stringWithFormat:@"<unknown:%lX>", self->_watchdogType];
      }
    }

    else
    {
      v10 = @"BackBoard";
    }

    [streamCopy appendString:v10 withName:@"watchdogType"];
  }
}

- (id)succinctDescription
{
  v3 = +[BSDescriptionStyle succinctStyle];
  v4 = [BSDescriptionStream descriptionForRootObject:self withStyle:v3];

  return v4;
}

- (NSString)debugDescription
{
  v3 = +[BSDescriptionStyle debugStyle];
  v4 = [BSDescriptionStream descriptionForRootObject:self withStyle:v3];

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKMutableSystemShellDescriptor alloc];

  return sub_100078790(v4, self);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSystemShellDescriptor alloc];

  return sub_100078790(v4, self);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && *(v5 + 8) == self->_pid && v5[5] == self->_systemIdleSleepInterval && *(v5 + 6) == self->_watchdogType;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleIdentifier hash];
  v4 = [(NSString *)self->_bundlePath hash]^ v3;
  v5 = v4 ^ [(NSString *)self->_jobLabel hash];
  v6 = [NSNumber numberWithInt:self->_pid];
  v7 = v5 ^ [v6 hash];

  v8 = [NSNumber numberWithDouble:self->_systemIdleSleepInterval];
  v9 = [v8 hash];

  v10 = [NSNumber numberWithInteger:self->_watchdogType];
  v11 = v7 ^ v9 ^ [v10 hash];

  v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
  return v12 ^ (v12 >> 31);
}

- (BKSystemShellDescriptor)init
{
  v4 = [NSString stringWithFormat:@"cannot directly allocate BKSystemShellDescriptor"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSystemShellDescriptor.m";
    v17 = 1024;
    v18 = 33;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (BKSystemShellDescriptor)new
{
  v4 = [NSString stringWithFormat:@"cannot directly allocate BKSystemShellDescriptor"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSystemShellDescriptor.m";
    v17 = 1024;
    v18 = 38;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)build:(id)build
{
  buildCopy = build;
  v4 = sub_100078828([BKMutableSystemShellDescriptor alloc]);
  buildCopy[2](buildCopy, v4);

  v5 = [v4 copy];

  return v5;
}

@end