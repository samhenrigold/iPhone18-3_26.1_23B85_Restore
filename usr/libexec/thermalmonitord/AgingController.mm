@interface AgingController
+ (id)allocDefaults;
+ (id)log;
- (AgingController)initWithParams:(id)params currentWRa:(int)ra currentUPOCount:(int)count;
- (id)currentBootSessionUUID;
- (void)dealloc;
- (void)migrateDefaultsPlist;
- (void)notifyPPMOfMitigationState:(unint64_t)state;
- (void)takeActionOnUPO:(int)o forWRa:(int)ra;
- (void)updateMitigationStateAndNotify:(unint64_t)notify;
- (void)xpcNotifyForMitigationsUI;
@end

@implementation AgingController

+ (id)log
{
  if (qword_1000AABE8 != -1)
  {
    sub_100052840();
  }

  return qword_1000AABF0;
}

+ (id)allocDefaults
{
  v2 = [objc_opt_class() log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = @"/var/MobileSoftwareUpdate/Hardware/Battery";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Allocating defaults at %@", &v5, 0xCu);
  }

  v3 = [[NSUserDefaults alloc] _initWithSuiteName:@"com.apple.thermalmonitor.agingcontroller" container:{+[NSURL URLWithString:](NSURL, "URLWithString:", @"/var/MobileSoftwareUpdate/Hardware/Battery"}];
  [v3 synchronize];
  return v3;
}

- (void)migrateDefaultsPlist
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.thermalmonitor.agingcontroller"];
  dictionaryRepresentation = [v3 dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        -[NSUserDefaults setObject:forKey:](self->_defaults, "setObject:forKey:", [dictionaryRepresentation objectForKey:*(*(&v10 + 1) + 8 * v9)], *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(NSUserDefaults *)self->_defaults setBool:1 forKey:@"DataMigrated"];
}

- (AgingController)initWithParams:(id)params currentWRa:(int)ra currentUPOCount:(int)count
{
  v5 = *&count;
  v6 = *&ra;
  v37.receiver = self;
  v37.super_class = AgingController;
  v8 = [(AgingController *)&v37 init];
  if (!v8)
  {
    v21 = [objc_opt_class() log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100052A1C();
    }

    return 0;
  }

  v9 = sub_100032A18();
  v10 = [params objectForKey:@"UPOMitigationsThresholdWRa"];
  v11 = [v10 objectForKey:{-[NSNumber stringValue](+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v9), "stringValue")}];
  if (!v11)
  {
    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "<Warning> No upo mitigations start threshold found. Falling back to default value\n", buf, 2u);
    }

    v11 = [v10 objectForKey:{objc_msgSend(&off_10008D200, "stringValue")}];
    if (!v11)
    {
      v31 = [objc_opt_class() log];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000529E0();
      }

      return 0;
    }
  }

  v8->_UPOAgingMitigationsThreshold = [v11 intValue];
  v13 = [objc_opt_class() log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    UPOAgingMitigationsThreshold = v8->_UPOAgingMitigationsThreshold;
    *buf = 136315394;
    *&buf[4] = "[AgingController initWithParams:currentWRa:currentUPOCount:]";
    *&buf[12] = 1024;
    *&buf[14] = UPOAgingMitigationsThreshold;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s UpoAgingMitigationsThreshold %d\n", buf, 0x12u);
  }

  v15 = +[AgingController allocDefaults];
  v8->_defaults = v15;
  if (![(NSUserDefaults *)v15 BOOLForKey:@"DataMigrated"])
  {
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[AgingController initWithParams:currentWRa:currentUPOCount:]";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s Need data migration to new persistent location. Initiating migration...\n", buf, 0xCu);
    }

    [(AgingController *)v8 migrateDefaultsPlist];
    v17 = [objc_opt_class() log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[AgingController initWithParams:currentWRa:currentUPOCount:]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Migration complete\n", buf, 0xCu);
    }
  }

  v18 = [objc_opt_class() log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    dictionaryRepresentation = [(NSUserDefaults *)v8->_defaults dictionaryRepresentation];
    *buf = 136315394;
    *&buf[4] = "[AgingController initWithParams:currentWRa:currentUPOCount:]";
    *&buf[12] = 2112;
    *&buf[14] = dictionaryRepresentation;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Current defaults %@\n", buf, 0x16u);
  }

  v20 = [(NSUserDefaults *)v8->_defaults integerForKey:@"MitigationState"];
  if (v20)
  {
    v8->_mitigationState = v20;
  }

  else
  {
    v8->_mitigationState = 2;
    v22 = [objc_opt_class() log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[AgingController initWithParams:currentWRa:currentUPOCount:]";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s Unknown previous mitigation state. Disabling mitigations\n", buf, 0xCu);
    }
  }

  v23 = [objc_opt_class() log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_100052854();
  }

  v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8->_queue = dispatch_queue_create("com.apple.thermalmonitor.agingcontrollerqueue", v24);
  v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8->_connQueue = dispatch_queue_create("com.apple.thermalmonitor.agingcontrollerConQueue", v25);
  v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8->_notifyQueue = dispatch_queue_create("com.apple.thermalmonitor.agingcontrollerNotifyQueue", v26);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  v43 = sub_1000223E0;
  v44 = sub_1000223F0;
  v45 = v8;
  uTF8String = [@"com.apple.thermalmonitor.ageAwareMitigationsDisabled" UTF8String];
  queue = v8->_queue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000223FC;
  handler[3] = &unk_100085B48;
  handler[4] = buf;
  if (notify_register_dispatch(uTF8String, &v8->_mitigationsDisabledToken, queue, handler))
  {
    v29 = [objc_opt_class() log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1000528E0();
    }
  }

  else
  {
    if (!notify_register_check([@"com.apple.thermalmonitor.ageAwareMitigationState" UTF8String], &v8->_mitigationStateToken))
    {
      if ([(NSUserDefaults *)v8->_defaults stringForKey:@"BootUUID"])
      {
        [(AgingController *)v8 notifyPPMOfMitigationState:[(AgingController *)v8 mitigationState]];
      }

      else
      {
        [(NSUserDefaults *)v8->_defaults setInteger:v5 forKey:@"UPOCount"];
        [(NSUserDefaults *)v8->_defaults setObject:[(AgingController *)v8 currentBootSessionUUID] forKey:@"BootUUID"];
        [(NSUserDefaults *)v8->_defaults setInteger:[(AgingController *)v8 mitigationState] forKey:@"MitigationState"];
      }

      notify_set_state(v8->_mitigationStateToken, [(AgingController *)v8 mitigationState]);
      notify_post([@"com.apple.thermalmonitor.ageAwareMitigationState" UTF8String]);
      [(AgingController *)v8 takeActionOnUPO:v5 forWRa:v6];
      v33 = [objc_opt_class() log];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        *v38 = 136315394;
        v39 = "[AgingController initWithParams:currentWRa:currentUPOCount:]";
        v40 = 2112;
        v41 = v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s %@ initialized successfully\n", v38, 0x16u);
      }

      goto LABEL_30;
    }

    v30 = [objc_opt_class() log];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100052960();
    }
  }

  v8 = 0;
LABEL_30:
  _Block_object_dispose(buf, 8);
  return v8;
}

- (void)dealloc
{
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[AgingController dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Dealloc\n", buf, 0xCu);
  }

  ppmService = self->_ppmService;
  if (ppmService)
  {
    IOObjectRelease(ppmService);
  }

  v5.receiver = self;
  v5.super_class = AgingController;
  [(AgingController *)&v5 dealloc];
}

- (void)takeActionOnUPO:(int)o forWRa:(int)ra
{
  v7 = [(NSUserDefaults *)self->_defaults stringForKey:@"BootUUID"];
  currentBootSessionUUID = [(AgingController *)self currentBootSessionUUID];
  v9 = [(NSUserDefaults *)self->_defaults integerForKey:@"UPOCount"];
  v10 = [objc_opt_class() log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138413058;
    v20 = v7;
    v21 = 2112;
    v22 = currentBootSessionUUID;
    v23 = 1024;
    v24 = v9;
    v25 = 1024;
    oCopy = o;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "savedBootUUID %@ currentBootUUID %@ savedUPOCount %d currentUPOCount %d\n", &v19, 0x22u);
  }

  if (ra <= 0)
  {
    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100052DF8();
    }
  }

  else
  {
    if ([currentBootSessionUUID isEqualToString:v7])
    {
      v11 = [objc_opt_class() log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_100052D84();
      }

      return;
    }

    [(NSUserDefaults *)self->_defaults setObject:currentBootSessionUUID forKey:@"BootUUID"];
    if (v9 < o)
    {
      [(NSUserDefaults *)self->_defaults setInteger:o forKey:@"UPOCount"];
      p_UPOAgingMitigationsThreshold = &self->_UPOAgingMitigationsThreshold;
      selfCopy2 = self;
      if (self->_UPOAgingMitigationsThreshold > ra)
      {
        v15 = [objc_opt_class() log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          sub_100052CF8(p_UPOAgingMitigationsThreshold, ra, v15);
        }

        return;
      }

      v18 = 1;
LABEL_20:
      [(AgingController *)selfCopy2 updateMitigationStateAndNotify:v18];
      return;
    }

    v16 = [objc_opt_class() log];
    v17 = v16;
    if (v9 != o)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100052BFC(v9, o, v17);
      }

      [(NSUserDefaults *)self->_defaults setInteger:o forKey:@"UPOCount"];
      selfCopy2 = self;
      v18 = 2;
      goto LABEL_20;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100052C84();
    }
  }
}

- (void)updateMitigationStateAndNotify:(unint64_t)notify
{
  mitigationState = [(AgingController *)self mitigationState];
  v6 = [objc_opt_class() log];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (mitigationState == notify)
  {
    if (v7)
    {
      sub_100052F94(self);
    }
  }

  else
  {
    if (v7)
    {
      sub_100052E78(self);
    }

    [(AgingController *)self setMitigationState:notify];
    [(NSUserDefaults *)self->_defaults setInteger:[(AgingController *)self mitigationState] forKey:@"MitigationState"];
    notify_set_state(self->_mitigationStateToken, [(AgingController *)self mitigationState]);
    notify_post([@"com.apple.thermalmonitor.ageAwareMitigationState" UTF8String]);
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[AgingController updateMitigationStateAndNotify:]";
      v12 = 1024;
      mitigationState2 = [(AgingController *)self mitigationState];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Notification posted for state %d\n", &v10, 0x12u);
    }

    [(AgingController *)self notifyPPMOfMitigationState:[(AgingController *)self mitigationState]];
    if ([(AgingController *)self mitigationState]== 1)
    {
      v9 = [objc_opt_class() log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_100052F14();
      }

      [(AgingController *)self xpcNotifyForMitigationsUI];
    }
  }
}

- (void)notifyPPMOfMitigationState:(unint64_t)state
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022C6C;
  block[3] = &unk_100085260;
  block[4] = self;
  if (qword_1000AABF8 != -1)
  {
    dispatch_once(&qword_1000AABF8, block);
  }

  if (self->_ppmService)
  {
    valuePtr = state == 1;
    v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_class() log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_100053024();
      }

      v8 = IORegistryEntrySetCFProperty(self->_ppmService, @"EnableBatteryAgingModel", v6);
      v9 = [objc_opt_class() log];
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10005309C();
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1000530D8();
      }

      CFRelease(v6);
    }
  }
}

- (void)xpcNotifyForMitigationsUI
{
  notifyQueue = self->_notifyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022D5C;
  block[3] = &unk_100085260;
  block[4] = self;
  dispatch_async(notifyQueue, block);
}

- (id)currentBootSessionUUID
{
  size = 0;
  v2 = 0;
  if (!sysctlbyname("kern.bootsessionuuid", 0, &size, 0, 0))
  {
    v3 = malloc_type_malloc(size, 0xB316259FuLL);
    if (sysctlbyname("kern.bootsessionuuid", v3, &size, 0, 0))
    {
      v2 = 0;
    }

    else
    {
      v2 = strdup(v3);
      qword_1000AAC00 = v2;
      free(v3);
      if (v2)
      {
        v2 = [NSString stringWithUTF8String:v2];
        v3 = qword_1000AAC00;
      }

      else
      {
        v3 = 0;
      }
    }

    free(v3);
  }

  return v2;
}

@end