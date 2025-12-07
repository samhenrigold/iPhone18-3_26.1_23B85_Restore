@interface BKCAContextDestination
- (BKCAContextDestination)initWithContextID:(unsigned int)d clientPort:(unsigned int)port;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)appendSuccinctDescriptionToFormatter:(id)formatter;
@end

@implementation BKCAContextDestination

- (unint64_t)hash
{
  v2 = [NSNumber numberWithUnsignedInt:self->_contextID];
  v3 = [v2 hash];

  return v3;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100034F08;
  v4[3] = &unk_1000FD128;
  selfCopy = self;
  formatterCopy = formatter;
  v3 = formatterCopy;
  [v3 appendProem:selfCopy block:v4];
}

- (void)appendSuccinctDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendUInt64:self->_contextID withName:@"contextID" format:1];
  v5 = [formatterCopy appendUInt64:self->_clientPort withName:@"clientPort" format:1];
  v6 = [formatterCopy appendObject:self->_inheritedSceneHostSettings withName:@"inheritedSceneHostSettings" skipIfNil:1];
}

- (id)succinctDescription
{
  v3 = objc_alloc_init(BSDescriptionStream);
  [(BKCAContextDestination *)self appendSuccinctDescriptionToFormatter:v3];
  v4 = [v3 description];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = v8 && self->_contextID == v8[2] && self->_clientPort == v8[3];
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  *(v4 + 2) = self->_contextID;
  *(v4 + 3) = self->_clientPort;
  objc_storeStrong(v4 + 2, self->_inheritedSceneHostSettings);
  return v4;
}

- (BKCAContextDestination)initWithContextID:(unsigned int)d clientPort:(unsigned int)port
{
  if (!d)
  {
    v9 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", *&port, @"contextID != 0"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v19 = v10;
      v20 = 2114;
      v21 = v12;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2114;
      v25 = @"BKCAContextDestination.m";
      v26 = 1024;
      v27 = 19;
      v28 = 2114;
      v29 = v9;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1000352ACLL);
  }

  if (port + 1 <= 1)
  {
    v13 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"(((clientPort) != 0) && ((clientPort) != ((mach_port_name_t) ~0)))"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v19 = v14;
      v20 = 2114;
      v21 = v16;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2114;
      v25 = @"BKCAContextDestination.m";
      v26 = 1024;
      v27 = 20;
      v28 = 2114;
      v29 = v13;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1000353A4);
  }

  v17.receiver = self;
  v17.super_class = BKCAContextDestination;
  result = [(BKCAContextDestination *)&v17 init];
  if (result)
  {
    result->_contextID = d;
    result->_clientPort = port;
  }

  return result;
}

@end