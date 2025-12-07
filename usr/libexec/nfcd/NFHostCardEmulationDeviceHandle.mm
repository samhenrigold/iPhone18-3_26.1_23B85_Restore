@interface NFHostCardEmulationDeviceHandle
- (BOOL)sendAPDU:(id)u;
- (id)readApduAndReturnError:(id *)error;
- (void)readAPDUWithCompletion:(id)completion;
@end

@implementation NFHostCardEmulationDeviceHandle

- (id)readApduAndReturnError:(id *)error
{
  v3 = sub_100196C90(self->_driver, self->_devHandle, error);
  if (v3 && v3[1])
  {
    v4 = [[NSData alloc] initWithBytes:*v3 length:v3[1]];
  }

  else
  {
    v4 = 0;
  }

  NFDataRelease();

  return v4;
}

- (void)readAPDUWithCompletion:(id)completion
{
  completionCopy = completion;
  driver = self->_driver;
  devHandle = self->_devHandle;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100147014;
  v8[3] = &unk_100319690;
  v9 = completionCopy;
  v7 = completionCopy;
  sub_100197048(driver, devHandle, v8);
}

- (BOOL)sendAPDU:(id)u
{
  driver = self->_driver;
  devHandle = self->_devHandle;
  uCopy = u;
  uCopy2 = u;
  bytes = [uCopy2 bytes];
  v11 = [uCopy2 length];

  v12 = sub_100197918(driver, devHandle, bytes, v11);
  if ((v12 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v14 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v18 = 45;
      if (isMetaClass)
      {
        v18 = 43;
      }

      v14(3, "%c[%{public}s %{public}s]:%i Failed to initiate send of data", v18, ClassName, Name, 53);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = object_getClass(self);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      *buf = 67109890;
      v25 = v21;
      v26 = 2082;
      v27 = object_getClassName(self);
      v28 = 2082;
      v29 = sel_getName(a2);
      v30 = 1024;
      v31 = 53;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to initiate send of data", buf, 0x22u);
    }
  }

  return v12;
}

@end