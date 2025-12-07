@interface NFDriverWrapper
- (BOOL)enableHeadlessMode:(BOOL)mode shutdown:(BOOL)shutdown;
- (id)_getExtendedIdentifier:(id)identifier;
- (id)_refreshTagInfo:(id)info update:(_NFDriverRemoteTag *)update;
- (int)_ntag5DriverRateFromTagRate:(int)rate;
- (int)_typeADriverRateFromTagRate:(int)rate;
- (void)_cardRemovalDetect:(id)detect;
- (void)handleReaderBurnoutCleared:(BOOL)cleared;
- (void)handleReaderBurnoutTimer;
@end

@implementation NFDriverWrapper

- (id)_getExtendedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = arc4random();
  tagID = [identifierCopy tagID];
  v6 = [tagID hash];
  type = [identifierCopy type];

  v10 = (type + v6) | (v4 << 32);
  v8 = [[NSData alloc] initWithBytes:&v10 length:8];

  return v8;
}

- (id)_refreshTagInfo:(id)info update:(_NFDriverRemoteTag *)update
{
  infoCopy = info;
  v6 = [[NFTagInternal alloc] initWithNFTag:infoCopy];
  if (update && [infoCopy type] == 3 && update->var2.var0.var4)
  {
    v7 = [[NSData alloc] initWithBytes:update->var2.var6.var3 length:update->var2.var0.var4];
    [v6 _setHistoricalBytes:v7];
  }

  return v6;
}

- (void)_cardRemovalDetect:(id)detect
{
  sub_1001909EC(self, detect);
  while (![(NFReaderRestrictor *)self->_readerPolicy readerModeProtectionActive])
  {
    if (NFDriverRemoteDevCheckPresence())
    {
      return;
    }

    usleep(0x3D090u);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v6(4, "%c[%{public}s %{public}s]:%i Burnout occurred", v10, ClassName, Name, 139);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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

    *buf = 67109890;
    v16 = v13;
    v17 = 2082;
    v18 = object_getClassName(self);
    v19 = 2082;
    v20 = sel_getName(a2);
    v21 = 1024;
    v22 = 139;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Burnout occurred", buf, 0x22u);
  }
}

- (BOOL)enableHeadlessMode:(BOOL)mode shutdown:(BOOL)shutdown
{
  modeCopy = mode;
  if (shutdown)
  {
    v7 = 1;
    byte_10035DA91 = 1;
  }

  else
  {
    v7 = byte_10035DA91;
  }

  if (v7)
  {
    v8 = !mode;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v13(3, "%c[%{public}s %{public}s]:%i Something trying to turn LPM ON after user shutdown. Denying.", v17, ClassName, Name, 239);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    selfCopy = NFSharedLogGetLogger();
    if (!os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

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
    v56 = v19;
    v57 = 2082;
    v58 = object_getClassName(self);
    v59 = 2082;
    v60 = sel_getName(a2);
    v61 = 1024;
    v62 = 239;
    v20 = "%c[%{public}s %{public}s]:%i Something trying to turn LPM ON after user shutdown. Denying.";
LABEL_23:
    _os_log_impl(&_mh_execute_header, &selfCopy->super, OS_LOG_TYPE_ERROR, v20, buf, 0x22u);
LABEL_24:
    v11 = 0;
    goto LABEL_48;
  }

  if (mode)
  {
    v9 = sub_1002261A0(NFHeadlessModeController);

    if (!v9)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v43 = NFLogGetLogger();
      if (v43)
      {
        v44 = v43;
        v45 = object_getClass(self);
        v46 = class_isMetaClass(v45);
        v47 = object_getClassName(self);
        v54 = sel_getName(a2);
        v48 = 45;
        if (v46)
        {
          v48 = 43;
        }

        v44(3, "%c[%{public}s %{public}s]:%i LPEM not enabled", v48, v47, v54, 244);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      selfCopy = NFSharedLogGetLogger();
      if (!os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v49 = object_getClass(self);
      if (class_isMetaClass(v49))
      {
        v50 = 43;
      }

      else
      {
        v50 = 45;
      }

      *buf = 67109890;
      v56 = v50;
      v57 = 2082;
      v58 = object_getClassName(self);
      v59 = 2082;
      v60 = sel_getName(a2);
      v61 = 1024;
      v62 = 244;
      v20 = "%c[%{public}s %{public}s]:%i LPEM not enabled";
      goto LABEL_23;
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy && selfCopy->_isClosing)
  {
    v11 = 0;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    v22 = v21;
    if (modeCopy)
    {
      if (v21)
      {
        v23 = object_getClass(selfCopy);
        v24 = class_isMetaClass(v23);
        v25 = object_getClassName(selfCopy);
        v52 = sel_getName(a2);
        v26 = 45;
        if (v24)
        {
          v26 = 43;
        }

        v22(6, "%c[%{public}s %{public}s]:%i Enabling LPEM", v26, v25, v52, 254);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = object_getClass(selfCopy);
        if (class_isMetaClass(v28))
        {
          v29 = 43;
        }

        else
        {
          v29 = 45;
        }

        *buf = 67109890;
        v56 = v29;
        v57 = 2082;
        v58 = object_getClassName(selfCopy);
        v59 = 2082;
        v60 = sel_getName(a2);
        v61 = 1024;
        v62 = 254;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Enabling LPEM", buf, 0x22u);
      }

      v30 = sub_1002261A0(NFHeadlessModeController);
      sub_100229480(v30);

      v31 = sub_1002261A0(NFHeadlessModeController);
      v32 = sub_1002269CC(v31);
    }

    else
    {
      if (v21)
      {
        v33 = object_getClass(selfCopy);
        v34 = class_isMetaClass(v33);
        v35 = object_getClassName(selfCopy);
        v53 = sel_getName(a2);
        v36 = 45;
        if (v34)
        {
          v36 = 43;
        }

        v22(6, "%c[%{public}s %{public}s]:%i Disabling LPEM", v36, v35, v53, 258);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v37 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = object_getClass(selfCopy);
        if (class_isMetaClass(v38))
        {
          v39 = 43;
        }

        else
        {
          v39 = 45;
        }

        *buf = 67109890;
        v56 = v39;
        v57 = 2082;
        v58 = object_getClassName(selfCopy);
        v59 = 2082;
        v60 = sel_getName(a2);
        v61 = 1024;
        v62 = 258;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Disabling LPEM", buf, 0x22u);
      }

      v40 = sub_1002261A0(NFHeadlessModeController);
      sub_100229630(v40);

      v31 = sub_1002261A0(NFHeadlessModeController);
      v41 = sub_100226978(v31);
    }

    v11 = NFDriverSetHeadlessMode();
  }

  objc_sync_exit(selfCopy);
LABEL_48:

  return v11;
}

- (int)_ntag5DriverRateFromTagRate:(int)rate
{
  v3 = *&rate;
  if (rate > 211)
  {
    if (rate != 212)
    {
      if (rate != 424 && rate != 848)
      {
        return 0;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v10 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v10(6, "%c[%{public}s %{public}s]:%i NTAG5 rate %d is too high - using 212kbps", v13, ClassName, Name, 31, v3);
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

        *buf = 67110146;
        v20 = v16;
        v21 = 2082;
        v22 = object_getClassName(self);
        v23 = 2082;
        v24 = sel_getName(a2);
        v25 = 1024;
        v26 = 31;
        v27 = 1024;
        v28 = v3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NTAG5 rate %d is too high - using 212kbps", buf, 0x28u);
      }
    }

    return 4;
  }

  if (rate == 106)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (rate == 52)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  if (rate == 26)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (int)_typeADriverRateFromTagRate:(int)rate
{
  v3 = *&rate;
  if (rate > 211)
  {
    if (rate == 848)
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    if (rate == 424)
    {
      v8 = 3;
    }

    else
    {
      v8 = v7;
    }

    if (rate == 212)
    {
      return 2;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (rate == 26 || rate == 52)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v10 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v10(6, "%c[%{public}s %{public}s]:%i tag rate %d is too low for type A - using 106kbps", v13, ClassName, Name, 70, v3);
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

        *buf = 67110146;
        v20 = v16;
        v21 = 2082;
        v22 = object_getClassName(self);
        v23 = 2082;
        v24 = sel_getName(a2);
        v25 = 1024;
        v26 = 70;
        v27 = 1024;
        v28 = v3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i tag rate %d is too low for type A - using 106kbps", buf, 0x28u);
      }
    }

    else if (rate != 106)
    {
      return 0;
    }

    return 1;
  }
}

- (void)handleReaderBurnoutTimer
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Burnout timer elapsed.", v9, ClassName, Name, 2178);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    v16 = v12;
    v17 = 2082;
    v18 = object_getClassName(self);
    v19 = 2082;
    v20 = sel_getName(a2);
    v21 = 1024;
    v22 = 2178;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Burnout timer elapsed.", buf, 0x22u);
  }

  if (self)
  {
    delegate = self->_delegate;
  }

  else
  {
    delegate = 0;
  }

  [(NFDriverWrapperDelegate *)delegate handleReaderBurnoutTimer];
}

- (void)handleReaderBurnoutCleared:(BOOL)cleared
{
  clearedCopy = cleared;
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

    v7(6, "%c[%{public}s %{public}s]:%i Burnout cleared, coolOffTimerWasRunning=%d", v10, ClassName, Name, 2185, clearedCopy);
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
    v18 = v13;
    v19 = 2082;
    v20 = object_getClassName(self);
    v21 = 2082;
    v22 = sel_getName(a2);
    v23 = 1024;
    v24 = 2185;
    v25 = 1024;
    v26 = clearedCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Burnout cleared, coolOffTimerWasRunning=%d", buf, 0x28u);
  }

  if (self)
  {
    delegate = self->_delegate;
  }

  else
  {
    delegate = 0;
  }

  [(NFDriverWrapperDelegate *)delegate handleReaderBurnoutCleared];
  if (clearedCopy)
  {
    sub_10021CC94(self, @"Cooloff");
  }
}

@end