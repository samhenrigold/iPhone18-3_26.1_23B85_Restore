@interface NFBackgroundTagReadingManager
- (BOOL)isActive;
- (NFBackgroundTagReadingManager)initWithQueue:(id)queue driverWrapper:(id)wrapper;
- (id)dumpState;
- (id)getECPFrame;
- (void)dealloc;
- (void)didCameraStateChange:(BOOL)change;
- (void)didScreenStateChange:(int64_t)change;
- (void)handleDetectedTags:(id)tags;
- (void)handleMessage:(id)message;
- (void)refreshUserDefaultsOverride;
- (void)releaseECPOption:(unint64_t)option;
- (void)retainECPOption:(unint64_t)option;
- (void)start;
- (void)stop;
- (void)touchSystemReady:(BOOL)ready;
@end

@implementation NFBackgroundTagReadingManager

- (void)start
{
  suspend = self->_suspend;
  if (self->_backgroundTagDetectState != 1)
  {
    if (suspend <= 0)
    {
      v12 = sub_1000068CC();
      if ((sub_100183200(v12, @"NFBackgroundTagReadingManager") & 1) == 0)
      {
        sub_1001822F0(v12, self, @"NFBackgroundTagReadingManager");
      }

      if (self->_userDefaultsOverride != 1)
      {
        self->_backgroundTagDetectState = 1;
        v18 = sub_10021A4A0(self->_driverWrapper, @"TagReader", 1uLL);

        if (v18)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v20 = Logger;
            Class = object_getClass(self);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(self);
            Name = sel_getName(a2);
            v24 = 45;
            if (isMetaClass)
            {
              v24 = 43;
            }

            v20(3, "%c[%{public}s %{public}s]:%i Fail background tag read configuration", v24, ClassName, Name, 657);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v25 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = object_getClass(self);
            if (class_isMetaClass(v26))
            {
              v27 = 43;
            }

            else
            {
              v27 = 45;
            }

            *buf = 67109890;
            v31 = v27;
            v32 = 2082;
            v33 = object_getClassName(self);
            v34 = 2082;
            v35 = sel_getName(a2);
            v36 = 1024;
            v37 = 657;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Fail background tag read configuration", buf, 0x22u);
          }

          self->_backgroundTagDetectState = 0;
        }

        else
        {
          sub_1001F0B80(&self->super.isa);
          sub_1001F0B18(self);
          v28 = sub_100005F24();
          sub_100185298(v28);
        }
      }

      goto LABEL_29;
    }

LABEL_5:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v5 = NFLogGetLogger();
    if (v5)
    {
      v6 = v5;
      v7 = object_getClass(self);
      v8 = class_isMetaClass(v7);
      v9 = object_getClassName(self);
      v10 = sel_getName(a2);
      v11 = 45;
      if (v8)
      {
        v11 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i suspend count = %d", v11, v9, v10, 631, self->_suspend);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(self);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(self);
      v16 = sel_getName(a2);
      v17 = self->_suspend;
      *buf = 67110146;
      v31 = v14;
      v32 = 2082;
      v33 = v15;
      v34 = 2082;
      v35 = v16;
      v36 = 1024;
      v37 = 631;
      v38 = 1024;
      v39 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i suspend count = %d", buf, 0x28u);
    }

LABEL_29:

    return;
  }

  if (suspend >= 1)
  {
    goto LABEL_5;
  }
}

- (id)getECPFrame
{
  if (self->_ecpCHEnableCount)
  {
    v3 = [[NSMutableData alloc] initWithBytes:&unk_100297B18 length:8];
    v4 = sub_100005F24();
    v5 = sub_10018510C(v4);

    [v3 appendData:v5];
    v6 = sub_100005F24();
    self->_ecpCHRandom = sub_100184DFC(v6);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isActive
{
  v4 = sub_100006848(self->_screenStateMonitor);
  v5 = sub_1000068CC();
  v6 = sub_100003478(v5);

  if (self->_backgroundTagDetectState != 1)
  {
    return 0;
  }

  v7 = self->_suspend <= 0 && v4;
  v8 = !v7;
  if (v8 || v6)
  {
    return 0;
  }

  touchSensorMonitor = self->_touchSensorMonitor;
  if (touchSensorMonitor && !self->_touchSystemReady)
  {
    if (touchSensorMonitor->_touchSystemAvailable)
    {
      return 0;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v12(4, "%c[%{public}s %{public}s]:%i Touch system has previously stopped; ignore touch system readiness.", v16, ClassName, Name, 262);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = object_getClass(self);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      *buf = 67109890;
      v22 = v19;
      v23 = 2082;
      v24 = object_getClassName(self);
      v25 = 2082;
      v26 = sel_getName(a2);
      v27 = 1024;
      v28 = 262;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Touch system has previously stopped; ignore touch system readiness.", buf, 0x22u);
    }
  }

  return 1;
}

- (NFBackgroundTagReadingManager)initWithQueue:(id)queue driverWrapper:(id)wrapper
{
  queueCopy = queue;
  wrapperCopy = wrapper;
  v69.receiver = self;
  v69.super_class = NFBackgroundTagReadingManager;
  v10 = [(NFBackgroundTagReadingManager *)&v69 init];
  if (!v10)
  {
LABEL_51:
    v51 = v10;
    goto LABEL_52;
  }

  if (!queueCopy || !wrapperCopy)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v22 = Logger;
      Class = object_getClass(v10);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v10);
      Name = sel_getName(a2);
      if (queueCopy)
      {
        v27 = &stru_10031EA18;
      }

      else
      {
        v27 = @"nil queue, ";
      }

      if (wrapperCopy)
      {
        v28 = &stru_10031EA18;
      }

      else
      {
        v28 = @"nil wrapper";
      }

      v68 = v27;
      v29 = 45;
      if (isMetaClass)
      {
        v29 = 43;
      }

      v22(3, "%c[%{public}s %{public}s]:%i %{public}@%{public}@", v29, ClassName, Name, 130, v68, v28);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v30 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    v31 = object_getClass(v10);
    if (class_isMetaClass(v31))
    {
      v32 = 43;
    }

    else
    {
      v32 = 45;
    }

    v33 = object_getClassName(v10);
    v34 = sel_getName(a2);
    *context = 67110402;
    v35 = @"nil queue, ";
    if (queueCopy)
    {
      v35 = &stru_10031EA18;
    }

    *&context[4] = v32;
    if (wrapperCopy)
    {
      v36 = &stru_10031EA18;
    }

    else
    {
      v36 = @"nil wrapper";
    }

    *&context[8] = 2082;
    *&context[10] = v33;
    *&context[18] = 2082;
    *&context[20] = v34;
    *&context[28] = 1024;
    *&context[30] = 130;
    *&context[34] = 2114;
    *&context[36] = v35;
    v73 = 2114;
    v74 = v36;
    v37 = "%c[%{public}s %{public}s]:%i %{public}@%{public}@";
    v38 = v30;
    v39 = OS_LOG_TYPE_ERROR;
    v40 = 54;
    goto LABEL_36;
  }

  if (wrapperCopy[173])
  {
    v11 = objc_opt_new();
    v71[0] = v11;
    v12 = objc_opt_new();
    v71[1] = v12;
    v13 = [NSArray arrayWithObjects:v71 count:2];
    localAppProcessors = v10->_localAppProcessors;
    v10->_localAppProcessors = v13;

    v10->_userDefaultsOverride = 0;
    objc_storeStrong(&v10->_driverWrapper, wrapper);
    objc_storeStrong(&v10->_workQueue, queue);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_USER_INITIATED, 0);
    v17 = dispatch_queue_create("com.apple.nfcd.background.scan.eventProcessing", v16);
    eventProcessingQueue = v10->_eventProcessingQueue;
    v10->_eventProcessingQueue = v17;

    v19 = SCPreferencesCreate(kCFAllocatorDefault, @"nfcd", @"com.apple.radios.plist");
    v10->_radiosPreferences = v19;
    if (v19)
    {
      sub_1001F0050(v10);
      memset(context, 0, 40);
      v20 = objc_initWeak(&location, v10);
      *&context[8] = v10;

      SCPreferencesSetCallback(v10->_radiosPreferences, sub_1001F0324, context);
      SCPreferencesSetDispatchQueue(v10->_radiosPreferences, v10->_workQueue);
      objc_destroyWeak(&location);
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v52 = NFLogGetLogger();
      if (v52)
      {
        v53 = v52;
        v54 = object_getClass(v10);
        v55 = class_isMetaClass(v54);
        v56 = object_getClassName(v10);
        v67 = sel_getName("listenForAirplaneMode");
        v57 = 45;
        if (v55)
        {
          v57 = 43;
        }

        v53(3, "%c[%{public}s %{public}s]:%i Failed to listen for Airplane mode", v57, v56, v67, 207);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v58 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = object_getClass(v10);
        if (class_isMetaClass(v59))
        {
          v60 = 43;
        }

        else
        {
          v60 = 45;
        }

        v61 = object_getClassName(v10);
        v62 = sel_getName("listenForAirplaneMode");
        *context = 67109890;
        *&context[4] = v60;
        *&context[8] = 2082;
        *&context[10] = v61;
        *&context[18] = 2082;
        *&context[20] = v62;
        *&context[28] = 1024;
        *&context[30] = 207;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to listen for Airplane mode", context, 0x22u);
      }
    }

    if (v10->_airplaneMode)
    {
      [(NFBackgroundTagReadingManager *)v10 suspend];
    }

    v63 = os_transaction_create();
    keepAliveAssertion = v10->_keepAliveAssertion;
    v10->_keepAliveAssertion = v63;

    [(NFBackgroundTagReadingManager *)v10 refreshUserDefaultsOverride];
    goto LABEL_51;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v41 = NFLogGetLogger();
  if (v41)
  {
    v42 = v41;
    v43 = object_getClass(v10);
    v44 = class_isMetaClass(v43);
    v45 = object_getClassName(v10);
    v66 = sel_getName(a2);
    v46 = 45;
    if (v44)
    {
      v46 = 43;
    }

    v42(6, "%c[%{public}s %{public}s]:%i No RF capabilites, no BG tag reading", v46, v45, v66, 136);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v30 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v47 = object_getClass(v10);
    if (class_isMetaClass(v47))
    {
      v48 = 43;
    }

    else
    {
      v48 = 45;
    }

    v49 = object_getClassName(v10);
    v50 = sel_getName(a2);
    *context = 67109890;
    *&context[4] = v48;
    *&context[8] = 2082;
    *&context[10] = v49;
    *&context[18] = 2082;
    *&context[20] = v50;
    *&context[28] = 1024;
    *&context[30] = 136;
    v37 = "%c[%{public}s %{public}s]:%i No RF capabilites, no BG tag reading";
    v38 = v30;
    v39 = OS_LOG_TYPE_DEFAULT;
    v40 = 34;
LABEL_36:
    _os_log_impl(&_mh_execute_header, v38, v39, v37, context, v40);
  }

LABEL_37:

  v51 = 0;
  v10->_backgroundTagDetectState = 2;
LABEL_52:

  return v51;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  if (self)
  {
    radiosPreferences = self->_radiosPreferences;
    if (radiosPreferences)
    {
      CFRelease(radiosPreferences);
      self->_radiosPreferences = 0;
    }
  }

  if (self->_backgroundTagDetectState != 2)
  {
    v5 = sub_1000068CC();
    sub_100182E00(v5, @"NFBackgroundTagReadingManager");
  }

  sub_1001EFFB4(self);
  sub_1001F000C(self);
  suspendTimer = self->_suspendTimer;
  self->_suspendTimer = 0;

  v7.receiver = self;
  v7.super_class = NFBackgroundTagReadingManager;
  [(NFBackgroundTagReadingManager *)&v7 dealloc];
}

- (void)handleDetectedTags:(id)tags
{
  v6 = 0xEEEEB0B5B2B2EEEELL;
  tagsCopy = tags;
  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LPCD_TAG_DETECTED", &unk_1002E8B7A, buf, 2u);
  }

  v9 = NFSharedSignpostLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "handleDetectedTags", &unk_1002E8B7A, buf, 2u);
  }

  v150 = 0;
  v151 = &v150;
  v152 = 0x2020000000;
  v153 = 0;
  if (self->_backgroundTagDetectState == 1)
  {
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v10 = tagsCopy;
    v11 = [v10 countByEnumeratingWithState:&v146 objects:v158 count:16];
    if (v11)
    {
      v6 = *v147;
      while (2)
      {
        for (i = 0; i != v11; i = (i + 1))
        {
          if (*v147 != v6)
          {
            objc_enumerationMutation(v10);
          }

          v12 = *(*(&v146 + 1) + 8 * i);
          if ([v12 type] != 10 && objc_msgSend(v12, "type"))
          {
            v11 = v12;
            goto LABEL_17;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v146 objects:v158 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
    v134 = a2;

    v13 = v11;
    if ([v13 type] == 5)
    {
      *buf = 0;
      tagB = [v13 tagB];
      pupi = [tagB pupi];
      v16 = [[NSData alloc] initWithBytes:buf length:4];
      v17 = [pupi isEqualToData:v16];

      if (v17)
      {
        suspendTimer = self->_suspendTimer;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        v20 = Logger;
        if (suspendTimer)
        {
          if (Logger)
          {
            Class = object_getClass(self);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(self);
            Name = sel_getName(v134);
            v24 = 45;
            if (isMetaClass)
            {
              v24 = 43;
            }

            v20(4, "%c[%{public}s %{public}s]:%i Timer has already started", v24, ClassName, Name, 447);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v25 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = object_getClass(self);
            if (class_isMetaClass(v26))
            {
              v27 = 43;
            }

            else
            {
              v27 = 45;
            }

            v28 = object_getClassName(self);
            v29 = sel_getName(v134);
            *buf = 67109890;
            *&buf[4] = v27;
            v160 = 2082;
            v161 = v28;
            v162 = 2082;
            v163 = v29;
            v164 = 1024;
            v165 = 447;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Timer has already started", buf, 0x22u);
          }
        }

        else
        {
          if (Logger)
          {
            v100 = object_getClass(self);
            v101 = class_isMetaClass(v100);
            v129 = object_getClassName(self);
            v133 = sel_getName(v134);
            v102 = 45;
            if (v101)
            {
              v102 = 43;
            }

            v20(6, "%c[%{public}s %{public}s]:%i Ignore non-compliant tag; suspend tag detect for %f", v102, v129, v133, 432, 0x3FF8000000000000);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v103 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            v104 = object_getClass(self);
            if (class_isMetaClass(v104))
            {
              v105 = 43;
            }

            else
            {
              v105 = 45;
            }

            v106 = object_getClassName(self);
            v107 = sel_getName(v134);
            *buf = 67110146;
            *&buf[4] = v105;
            v160 = 2082;
            v161 = v106;
            v162 = 2082;
            v163 = v107;
            v164 = 1024;
            v165 = 432;
            v166 = 2048;
            v167 = 0x3FF8000000000000;
            _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Ignore non-compliant tag; suspend tag detect for %f", buf, 0x2Cu);
          }

          objc_initWeak(buf, self);
          [(NFBackgroundTagReadingManager *)self suspend];
          v108 = [NFTimer alloc];
          v144[0] = _NSConcreteStackBlock;
          v144[1] = 3221225472;
          v144[2] = sub_1001F2698;
          v144[3] = &unk_100316610;
          objc_copyWeak(v145, buf);
          v145[1] = v134;
          v109 = [v108 initWithCallback:v144 queue:self->_workQueue];
          v110 = self->_suspendTimer;
          self->_suspendTimer = v109;

          [(NFTimer *)self->_suspendTimer startTimer:1.5];
          objc_destroyWeak(v145);
          objc_destroyWeak(buf);
        }

        v111 = NFSharedSignpostLog();
        if (os_signpost_enabled(v111))
        {
          v112 = *(v151 + 24);
          *buf = 67240192;
          *&buf[4] = v112;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v111, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "handleDetectedTags", "tagProcessed=%{public, signpost.description:attribute}u", buf, 8u);
        }

        goto LABEL_133;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_backgroundNDEFTag, v11);
    if (v13)
    {
      tagID = [v13 tagID];
      nF_asHexString = [tagID NF_asHexString];
      sub_10027EB14(v32);
      if (objc_opt_class() && (sub_10027EAF0(v33), objc_opt_class()))
      {
        keyPathForNFCTagIdentifiers = [*(v6 + 31) keyPathForNFCTagIdentifiers];
        if (keyPathForNFCTagIdentifiers)
        {
          userContext = [i[30] userContext];
          *buf = nF_asHexString;
          v36 = [NSArray arrayWithObjects:buf count:1];
          [userContext setObject:v36 forKeyedSubscript:keyPathForNFCTagIdentifiers];
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v37 = NFLogGetLogger();
        if (v37)
        {
          v38 = v37;
          v39 = object_getClass(self);
          v40 = class_isMetaClass(v39);
          v6 = object_getClassName(self);
          v131 = sel_getName("_updateLastNFCTag:");
          v41 = 45;
          if (v40)
          {
            v41 = 43;
          }

          v38(3, "%c[%{public}s %{public}s]:%i No Core Duet context", v41, v6, v131, 361);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        keyPathForNFCTagIdentifiers = NFSharedLogGetLogger();
        if (os_log_type_enabled(keyPathForNFCTagIdentifiers, OS_LOG_TYPE_ERROR))
        {
          v42 = object_getClass(self);
          if (class_isMetaClass(v42))
          {
            v43 = 43;
          }

          else
          {
            v43 = 45;
          }

          v6 = object_getClassName(self);
          v44 = sel_getName("_updateLastNFCTag:");
          *buf = 67109890;
          *&buf[4] = v43;
          v160 = 2082;
          v161 = v6;
          v162 = 2082;
          v163 = v44;
          v164 = 1024;
          v165 = 361;
          _os_log_impl(&_mh_execute_header, keyPathForNFCTagIdentifiers, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No Core Duet context", buf, 0x22u);
        }
      }

      sub_10027E748(v45);
      objc_opt_class();
      sub_10027E694(v46);
      if (*(v48 + 256) && v47)
      {
        v49 = [objc_alloc(*(v6 + 33)) initWithTagID:nF_asHexString];
        if (v49)
        {
          v51 = sub_10027E458(v50);
          device = [v51 Device];
          wireless = [device Wireless];
          nFCTag = [wireless NFCTag];

          source = [nFCTag source];
          [source sendEvent:v49];
        }
      }
    }

    v56 = sub_10024DC10(NFTagReadCALogger);
    sub_10024DCA4(v56, self->_backgroundNDEFTag);

    v140 = 0;
    v141 = &v140;
    v142 = 0x2020000000;
    v143 = 3;
    v57 = self->_backgroundNDEFTag;
    if (!v57)
    {
      goto LABEL_93;
    }

    v58 = +[_NFHardwareManager sharedHardwareManager];
    [v58 notifyReaderModeActivityStart];

    driverWrapper = self->_driverWrapper;
    if (driverWrapper)
    {
      v60 = sub_100190BD0(driverWrapper, v57, 0);
      if (v60)
      {
        if (v60 == 51)
        {
          sub_10021E364(self->_driverWrapper);
        }

        else
        {
          sub_100220F6C(self->_driverWrapper);
        }

        v92 = +[_NFHardwareManager sharedHardwareManager];
        [v92 notifyReaderModeActivityEnd];

        v143 = 5;
LABEL_93:

LABEL_94:
        v93 = sub_10024DC10(NFTagReadCALogger);
        sub_10024E378(v93, *(v141 + 6));

        v94 = *(v141 + 6);
        if (v94 <= 5)
        {
          [NFGeneralStatisticsCALogger updateDailyTagStatistic:off_10031B908[v94]];
        }

        v95 = sub_10024DC10(NFTagReadCALogger);
        sub_10024DD78(v95, self->_backgroundNDEFTag, [(NFTag *)self->_backgroundNDEFTag type]);

        _Block_object_dispose(&v140, 8);
        goto LABEL_97;
      }
    }

    v61 = NFSharedSignpostLog();
    if (os_signpost_enabled(v61))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LPCD_READ_NDEF", "start", buf, 2u);
    }

    v156[0] = 0;
    v156[1] = 0;
    v157 = 0;
    v62 = self->_driverWrapper;
    v155 = 0;
    v63 = sub_1001916A4(v62, v57, v156, &v155);
    v64 = v155;
    if (v63)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v65 = NFLogGetLogger();
      if (v65)
      {
        v66 = v65;
        v67 = object_getClass(self);
        v68 = class_isMetaClass(v67);
        v69 = object_getClassName(self);
        v70 = sel_getName("_readNDEFFromTag:readResult:");
        if (v157)
        {
          v71 = @"readable";
        }

        else
        {
          v71 = @"not readable";
        }

        v72 = 45;
        if (v68)
        {
          v72 = 43;
        }

        v66(6, "%c[%{public}s %{public}s]:%i NDEF tag %{public}@", v72, v69, v70, 791, v71);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v73 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v74 = object_getClass(self);
        if (class_isMetaClass(v74))
        {
          v75 = 43;
        }

        else
        {
          v75 = 45;
        }

        v76 = object_getClassName(self);
        v77 = sel_getName("_readNDEFFromTag:readResult:");
        v78 = @"not readable";
        if (v157)
        {
          v78 = @"readable";
        }

        *buf = 67110146;
        *&buf[4] = v75;
        v160 = 2082;
        v161 = v76;
        v162 = 2082;
        v163 = v77;
        v164 = 1024;
        v165 = 791;
        v166 = 2114;
        v167 = v78;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NDEF tag %{public}@", buf, 0x2Cu);
      }
    }

    if (v64)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v79 = NFLogGetLogger();
      if (v79)
      {
        v80 = v79;
        v81 = object_getClass(self);
        v82 = class_isMetaClass(v81);
        v128 = object_getClassName(self);
        v132 = sel_getName("_readNDEFFromTag:readResult:");
        v83 = 45;
        if (v82)
        {
          v83 = 43;
        }

        v80(6, "%c[%{public}s %{public}s]:%i Tag does not contain NDEF, status=%{public}@", v83, v128, v132, 795, v64);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v84 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v85 = object_getClass(self);
        if (class_isMetaClass(v85))
        {
          v86 = 43;
        }

        else
        {
          v86 = 45;
        }

        v87 = object_getClassName(self);
        v88 = sel_getName("_readNDEFFromTag:readResult:");
        *buf = 67110146;
        *&buf[4] = v86;
        v160 = 2082;
        v161 = v87;
        v162 = 2082;
        v163 = v88;
        v164 = 1024;
        v165 = 795;
        v166 = 2114;
        v167 = v64;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Tag does not contain NDEF, status=%{public}@", buf, 0x2Cu);
      }

      if ([v64 code] == 51 || objc_msgSend(v64, "code") == 15)
      {
        sub_10021E364(self->_driverWrapper);
      }

      else
      {
        if ([v64 code] != 28)
        {
          if ([v64 code] == 37)
          {
            sub_10019117C(self->_driverWrapper, v57, 1);
            [NFLPCDStatisticsCALogger postAnalyticsLPCDStatistic:&off_100339D78];
            v89 = 2;
          }

          else
          {
            if ([v64 code] != 64)
            {
LABEL_89:
              v90 = +[_NFHardwareManager sharedHardwareManager];
              [v90 notifyReaderModeActivityEnd];

              v91 = NFSharedSignpostLog();
              if (os_signpost_enabled(v91))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v91, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LPCD_READ_NDEF", "done", buf, 2u);
              }

              goto LABEL_130;
            }

            v89 = 4;
          }

LABEL_88:
          v143 = v89;
          goto LABEL_89;
        }

        sub_100220F6C(self->_driverWrapper);
      }

      v89 = 5;
      goto LABEL_88;
    }

    if (v157 == 1)
    {
      v113 = self->_driverWrapper;
      v154 = 0;
      v91 = sub_100193EC8(v113, v57, v156[0], &v154);
      v64 = v154;
    }

    else
    {
      v91 = 0;
      v64 = 0;
    }

    v114 = NFSharedSignpostLog();
    if (os_signpost_enabled(v114))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v114, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LPCD_READ_NDEF", "tag read", buf, 2u);
    }

    v115 = +[_NFHardwareManager sharedHardwareManager];
    [v115 notifyReaderModeActivityEnd];

    v116 = NFSharedSignpostLog();
    if (os_signpost_enabled(v116))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v116, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LPCD_READ_NDEF", "done", buf, 2u);
    }

    asData = [v91 asData];
    v118 = [asData length];

    v119 = sub_10024DC10(NFTagReadCALogger);
    sub_10024E250(v119, v118);

    if (v64)
    {
      if ([v64 code] == 51)
      {
        sub_10021E364(self->_driverWrapper);
LABEL_130:
        v122 = 0;
        goto LABEL_131;
      }

      code = [v64 code];
      v120 = self->_driverWrapper;
      if (code == 21)
      {
        sub_100220F6C(v120);
        goto LABEL_130;
      }
    }

    else
    {
      v120 = self->_driverWrapper;
    }

    sub_10019117C(v120, v57, 1);
    v91 = v91;
    v122 = v91;
LABEL_131:

    if (v122)
    {
      asData2 = [v122 asData];
      v124 = [asData2 length];

      v139[0] = _NSConcreteStackBlock;
      v139[1] = 3221225472;
      v139[2] = sub_1001F2878;
      v139[3] = &unk_10031B858;
      v139[4] = self;
      v139[5] = &v150;
      v139[6] = &v140;
      v139[7] = v134;
      v139[8] = v124;
      v125 = objc_retainBlock(v139);
      v135[0] = _NSConcreteStackBlock;
      v135[1] = 3221225472;
      v135[2] = sub_1001F2DA4;
      v135[3] = &unk_10031B880;
      v135[4] = self;
      v126 = v122;
      v136 = v126;
      v13 = v13;
      v137 = v13;
      v138 = v125;
      v127 = v125;
      sub_1001F12E8(self, v126, v13, v135);

      _Block_object_dispose(&v140, 8);
      goto LABEL_133;
    }

    goto LABEL_94;
  }

LABEL_97:
  v96 = NFSharedSignpostLog();
  if (os_signpost_enabled(v96))
  {
    v97 = *(v151 + 24);
    *buf = 67240192;
    *&buf[4] = v97;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v96, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "handleDetectedTags", "tagProcessed=%{public, signpost.description:attribute}u", buf, 8u);
  }

  sub_1001F2BF0(self);
  if (NFIsInternalBuild())
  {
    v98 = +[NSUserDefaults standardUserDefaults];
    v99 = [v98 BOOLForKey:@"postBackgroundTagEvents"];

    if (v99)
    {
      v13 = +[NSDistributedNotificationCenter defaultCenter];
      [v13 postNotificationName:@"com.apple.nfcd.backgroundTag.detect.event" object:0 userInfo:0 options:1];
LABEL_133:
    }
  }

  _Block_object_dispose(&v150, 8);
}

- (void)handleMessage:(id)message
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001F2F94;
  v5[3] = &unk_10031B8C8;
  selfCopy = self;
  messageCopy = message;
  v8 = [[NFTagInternal alloc] initWithDictionary:&off_100339D50];
  v3 = v8;
  v4 = messageCopy;
  sub_1001F12E8(selfCopy, v4, v3, v5);
}

- (void)stop
{
  if (self->_backgroundTagDetectState)
  {
    sub_1001EFFB4(self);
    sub_1001F000C(self);
    self->_backgroundTagDetectState = 0;
    sub_10021CC94(self->_driverWrapper, @"TagReader");
    backgroundNDEFTag = self->_backgroundNDEFTag;
    self->_backgroundNDEFTag = 0;
  }
}

- (void)refreshUserDefaultsOverride
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v7 = [v3 objectForKey:@"backgroundTagDetect"];

  v4 = v7;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v7 BOOLValue];
      v6 = 1;
      if (bOOLValue)
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 0;
    }

    v4 = v7;
  }

  else
  {
    v6 = 0;
  }

  self->_userDefaultsOverride = v6;
}

- (void)retainECPOption:(unint64_t)option
{
  if (option)
  {
    ecpCHEnableCount = self->_ecpCHEnableCount;
    if (ecpCHEnableCount < 0xB)
    {
      goto LABEL_6;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v19 = ecpCHEnableCount;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Unexpected retain count=%d", buf, 8u);
      ecpCHEnableCount = self->_ecpCHEnableCount;
    }

    if (ecpCHEnableCount == -1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v7(4, "%c[%{public}s %{public}s]:%i count overflow", v11, ClassName, Name, 748);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = object_getClass(self);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        v15 = object_getClassName(self);
        v16 = sel_getName(a2);
        *buf = 67109890;
        v19 = v14;
        v20 = 2082;
        v21 = v15;
        v22 = 2082;
        v23 = v16;
        v24 = 1024;
        v25 = 748;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i count overflow", buf, 0x22u);
      }
    }

    else
    {
LABEL_6:
      self->_ecpCHEnableCount = ecpCHEnableCount + 1;
    }
  }
}

- (void)releaseECPOption:(unint64_t)option
{
  if (option)
  {
    ecpCHEnableCount = self->_ecpCHEnableCount;
    if (ecpCHEnableCount)
    {
      self->_ecpCHEnableCount = ecpCHEnableCount - 1;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v7(4, "%c[%{public}s %{public}s]:%i count underflow", v11, ClassName, Name, 759);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = object_getClass(self);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        *buf = 67109890;
        v17 = v14;
        v18 = 2082;
        v19 = object_getClassName(self);
        v20 = 2082;
        v21 = sel_getName(a2);
        v22 = 1024;
        v23 = 759;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i count underflow", buf, 0x22u);
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Retain count underflow", buf, 2u);
      }
    }
  }
}

- (void)didScreenStateChange:(int64_t)change
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    if (change == 1)
    {
      v12 = "yes";
    }

    else
    {
      v12 = "no";
    }

    v21 = v12;
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i screenState=%ld -- allowBackgroundTagReading=%s", v13, ClassName, Name, 909, change, v21);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = object_getClass(self);
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    v17 = object_getClassName(self);
    v18 = sel_getName(a2);
    *buf = 67110402;
    if (change == 1)
    {
      v19 = "yes";
    }

    else
    {
      v19 = "no";
    }

    v25 = v16;
    v26 = 2082;
    v27 = v17;
    v28 = 2082;
    v29 = v18;
    v30 = 1024;
    v31 = 909;
    v32 = 2048;
    changeCopy = change;
    v34 = 2080;
    v35 = v19;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i screenState=%ld -- allowBackgroundTagReading=%s", buf, 0x36u);
  }

  dispatch_assert_queue_V2(self->_eventProcessingQueue);
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F37C4;
  block[3] = &unk_100315EB8;
  v23 = change == 1;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)didCameraStateChange:(BOOL)change
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F3930;
  block[3] = &unk_10031B8E8;
  changeCopy = change;
  dispatch_async(workQueue, block);
}

- (void)touchSystemReady:(BOOL)ready
{
  readyCopy = ready;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i Ready=%d", v10, ClassName, Name, 965, readyCopy);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(self);
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    *buf = 67110146;
    v20 = v13;
    v21 = 2082;
    v22 = object_getClassName(self);
    v23 = 2082;
    v24 = sel_getName(a2);
    v25 = 1024;
    v26 = 965;
    v27 = 1024;
    v28 = readyCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Ready=%d", buf, 0x28u);
  }

  dispatch_assert_queue_V2(self->_eventProcessingQueue);
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F3B88;
  block[3] = &unk_100315EB8;
  block[4] = self;
  v18 = readyCopy;
  dispatch_async(workQueue, block);
}

- (id)dumpState
{
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithUnsignedInteger:self->_backgroundTagDetectState];
  [v3 setObject:v4 forKeyedSubscript:@"State"];

  v5 = [NSNumber numberWithInteger:self->_suspend];
  [v3 setObject:v5 forKeyedSubscript:@"Suspend"];

  if (self->_backgroundNDEFTag)
  {
    v6 = &off_100335AF0;
  }

  else
  {
    v6 = &off_100335B38;
  }

  [v3 setObject:v6 forKeyedSubscript:@"Tag count"];
  v7 = [NSNumber numberWithUnsignedInteger:self->_userDefaultsOverride];
  [v3 setObject:v7 forKeyedSubscript:@"Defaults Override"];

  v8 = [NSNumber numberWithBool:self->_touchSystemReady];
  [v3 setObject:v8 forKeyedSubscript:@"Touch Ready"];

  v9 = [NSNumber numberWithBool:self->_airplaneMode];
  [v3 setObject:v9 forKeyedSubscript:@"Airplane mode"];

  v10 = [NSNumber numberWithUnsignedInt:self->_ecpCHEnableCount];
  [v3 setObject:v10 forKeyedSubscript:@"CH Enable Count"];

  return v3;
}

@end