@interface DeviceRecoveryEnvironmentWorker
+ (id)sharedWorker;
- (DeviceRecoveryEnvironmentWorker)init;
- (id)DREEntryDescription;
- (id)DREStringFromEntryReason:(int)reason;
- (id)getObjectFromInternalCookie:(id)cookie;
- (int)DREEntryReasonEnum;
- (void)CreateCookieAndCleanup;
- (void)populateDREDescription:(id)description;
- (void)populateDREReason;
- (void)setupPopulateDREDescription;
@end

@implementation DeviceRecoveryEnvironmentWorker

+ (id)sharedWorker
{
  if (qword_10003A2D8 != -1)
  {
    sub_1000215CC();
  }

  v3 = qword_10003A2D0;

  return v3;
}

- (DeviceRecoveryEnvironmentWorker)init
{
  v13.receiver = self;
  v13.super_class = DeviceRecoveryEnvironmentWorker;
  v2 = [(DeviceRecoveryEnvironmentWorker *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_initially_inactive(0);
    v4 = dispatch_get_global_queue(33, 0);
    v5 = dispatch_queue_create_with_target_V2("com.apple.DeviceRecovery.DREnvironmentServiceQueue", v3, v4);
    serviceQueue = v2->_serviceQueue;
    v2->_serviceQueue = v5;

    v2->_entryReason = 0;
    entryDescription = v2->_entryDescription;
    v2->_entryDescription = 0;

    v2->_isInternalBuild = os_variant_allows_internal_security_policies();
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v4);
    timer = v2->_timer;
    v2->_timer = v8;

    v2->_timerCount = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100010B78;
    block[3] = &unk_100034AE8;
    v12 = v2;
    dispatch_async(v4, block);
  }

  return v2;
}

- (void)populateDREReason
{
  v20 = 0;
  v3 = sub_1000102E0("IODeviceTree:/chosen", @"recovery-reason", &v20);
  v4 = v20;
  v5 = v4;
  if (v4)
  {
    sub_1000215E0(v4);
  }

  else if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v3 length] > 3)
      {
        bytes = [v3 bytes];
        v7 = *bytes;
        if (*bytes > 5)
        {
          v9 = sub_1000118BC(bytes);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_100021850(self);
          }

          v7 = 0;
          goto LABEL_21;
        }

        if (((1 << v7) & 0x3A) != 0)
        {
LABEL_22:
          self->_entryReason = v7;
          goto LABEL_23;
        }

        v8 = sub_100010688("IODeviceTree:/options", @"device-recovery-boot-reason");

        if (!v8)
        {
          v9 = [(DeviceRecoveryEnvironmentWorker *)self getObjectFromInternalCookie:@"entryReason"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 unsignedIntValue]== 5)
          {
            v7 = 5;
          }

          goto LABEL_21;
        }

LABEL_13:
        v7 = 5;
        goto LABEL_22;
      }

      sub_100021918(v3);
    }

    else
    {
      sub_10002171C(v3);
    }
  }

  else
  {
    v10 = sub_100010688("IODeviceTree:/options", @"device-recovery-boot-reason");

    if (v10)
    {
      goto LABEL_13;
    }

    v9 = [(DeviceRecoveryEnvironmentWorker *)self getObjectFromInternalCookie:@"entryReason"];
    if (v9)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        unsignedIntValue = [v9 unsignedIntValue];
        if (unsignedIntValue == 5)
        {
          v7 = 5;
LABEL_21:

          goto LABEL_22;
        }

        v18 = sub_1000118BC(unsignedIntValue);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100021B8C();
        }

        v15 = sub_1000118BC(v19);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100021C3C(v9);
        }
      }

      else
      {
        v16 = sub_1000118BC(isKindOfClass);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100021A44();
        }

        v15 = sub_1000118BC(v17);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100021AF4(v9);
        }
      }
    }

    else
    {
      sub_100021CD4(buf);
      v15 = *buf;
    }
  }

LABEL_23:
  v13 = sub_1000118BC(bytes);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    entryReason = self->_entryReason;
    *buf = 136446466;
    *&buf[4] = "[DeviceRecoveryEnvironmentWorker populateDREReason]";
    v22 = 1024;
    v23 = entryReason;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: Entry reason: %d", buf, 0x12u);
  }
}

- (void)setupPopulateDREDescription
{
  entryReason = self->_entryReason;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:@"/var/run/com.apple.DumpPanic.finishedThisBoot"];

  if ((v5 & 1) != 0 || entryReason != 3)
  {
    v7 = [NSDictionary dictionaryWithContentsOfFile:@"/var/db/com.apple.DumpPanic.panicLogPathBreadcrumb"];
    [(DeviceRecoveryEnvironmentWorker *)self populateDREDescription:v7];
  }

  else
  {
    dispatch_source_set_timer(self->_timer, 0, 0x3B9ACA00uLL, 0x1DCD6500uLL);
    timer = self->_timer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100011048;
    handler[3] = &unk_100034AE8;
    handler[4] = self;
    dispatch_source_set_event_handler(timer, handler);
    dispatch_resume(self->_timer);
  }
}

- (void)populateDREDescription:(id)description
{
  descriptionCopy = description;
  v5 = sub_100010688("IODeviceTree:/options", @"device-recovery-boot-reason");
  v6 = v5;
  if (!v5)
  {
    v10 = [(DeviceRecoveryEnvironmentWorker *)self getObjectFromInternalCookie:@"entryDescription"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v10;
    }

    else
    {
      v6 = 0;
    }

    if (descriptionCopy)
    {
      goto LABEL_3;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (!descriptionCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  v7 = [descriptionCopy objectForKey:@"PanicReason"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v11 = sub_1000118BC(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100021E04();
    }
  }

LABEL_14:
  if (v6 | v8)
  {
    if (v6 && v8)
    {
      v12 = [v6 stringByAppendingFormat:@" | PanicMedic: %@", v8];
    }

    else
    {
      if (v6)
      {
        v13 = v6;
      }

      else
      {
        v13 = v8;
      }

      v12 = v13;
    }

    v14 = v12;
  }

  else
  {
    sub_100021E98(v5);
    v14 = 0;
  }

  objc_storeStrong(&self->_entryDescription, v14);
  v16 = sub_1000118BC(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    entryDescription = self->_entryDescription;
    *buf = 136446466;
    v19 = "[DeviceRecoveryEnvironmentWorker populateDREDescription:]";
    v20 = 2114;
    v21 = entryDescription;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: Entry description: %{public}@", buf, 0x16u);
  }

  dispatch_activate(self->_serviceQueue);
}

- (id)getObjectFromInternalCookie:(id)cookie
{
  cookieCopy = cookie;
  v4 = [NSDictionary dictionaryWithContentsOfFile:@"/var/db/com.apple.DeviceRecovery.entryInfo"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:cookieCopy];
    if (v6)
    {
      goto LABEL_7;
    }

    v7 = sub_1000118BC(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100021FC4();
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (int)DREEntryReasonEnum
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serviceQueue = self->_serviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100011458;
  v5[3] = &unk_100034FC8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serviceQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)DREEntryDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100011564;
  v10 = sub_100011574;
  v11 = &stru_100035AE0;
  serviceQueue = self->_serviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001157C;
  v5[3] = &unk_100034FC8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serviceQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)DREStringFromEntryReason:(int)reason
{
  v4 = @"Unknown Entry Reason";
  if ((reason - 1) <= 4)
  {
    v5 = *(&off_100035140)[reason - 1];

    v4 = v5;
  }

  return v4;
}

- (void)CreateCookieAndCleanup
{
  serviceQueue = self->_serviceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011678;
  block[3] = &unk_100034AE8;
  block[4] = self;
  dispatch_sync(serviceQueue, block);
}

@end