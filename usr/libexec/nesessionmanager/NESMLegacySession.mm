@interface NESMLegacySession
- (BOOL)handleSleep;
- (BOOL)handleUpdateConfiguration:(id)configuration;
- (int)type;
- (void)dealloc;
- (void)handleChangeEventForInterface:(id)interface newFlags:(unint64_t)flags previousFlags:(unint64_t)previousFlags;
- (void)handleDeviceLock;
- (void)handleDeviceUnlock;
- (void)handleGetInfoMessage:(id)message withType:(int)type;
- (void)handleInitializeState;
- (void)handleInstalledAppsChanged;
- (void)handleSecuritySessionInfoRequest:(id)request;
- (void)handleSleepTime:(double)time;
- (void)handleStartMessage:(id)message;
- (void)handleStopMessageWithReason:(int)reason;
- (void)handleUserLogout;
- (void)handleUserSwitch;
- (void)handleWakeup;
- (void)install;
- (void)uninstall;
@end

@implementation NESMLegacySession

- (void)handleInitializeState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  configuration = [(NESMSession *)selfCopy configuration];
  identifier = [configuration identifier];
  uUIDString = [identifier UUIDString];
  v6 = [NSString stringWithFormat:@"%@:%d", uUIDString, objc_msgSend_type(selfCopy)];
  [(NESMSession *)selfCopy setAuxiliaryDataKey:v6];

  [(NESMSession *)selfCopy setupFromAuxiliaryData];
  lastDisconnectError = [(NESMSession *)selfCopy lastDisconnectError];
  v8 = lastDisconnectError;
  if (lastDisconnectError)
  {
    domain = [lastDisconnectError domain];
    v10 = [domain isEqualToString:@"NEVPNConnectionErrorDomainIPSec"];

    if (v10)
    {
      v16 = @"LastCause";
      v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
      v17 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10006EEDC;
      v14[3] = &unk_1000EB198;
      v14[4] = selfCopy;
      v13 = v12;
      v15 = v13;
      sub_10006EF70(selfCopy, v14);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)handleInstalledAppsChanged
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100070E40;
  v2[3] = &unk_1000EB1C0;
  v2[4] = self;
  sub_10006EF70(self, v2);
}

- (void)handleDeviceUnlock
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10007165C;
  v2[3] = &unk_1000EB1C0;
  v2[4] = self;
  sub_10006EF70(self, v2);
}

- (void)handleDeviceLock
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100071758;
  v2[3] = &unk_1000EB1C0;
  v2[4] = self;
  sub_10006EF70(self, v2);
}

- (void)handleUserSwitch
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100071854;
  v2[3] = &unk_1000EB1C0;
  v2[4] = self;
  sub_10006EF70(self, v2);
}

- (void)handleUserLogout
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100071950;
  v2[3] = &unk_1000EB1C0;
  v2[4] = self;
  sub_10006EF70(self, v2);
}

- (BOOL)handleUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [configurationCopy VPN];
      *buf = 138412546;
      selfCopy = self;
      v17 = 1024;
      isEnabled = [v6 isEnabled];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@: enabled = %d", buf, 0x12u);
    }

    v14.receiver = self;
    v14.super_class = NESMLegacySession;
    if ([(NESMSession *)&v14 handleUpdateConfiguration:configurationCopy])
    {
      if (self && self->_sessionType == 2)
      {
        configuration = [(NESMSession *)self configuration];
        appVPN = [configuration appVPN];
        protocol = [appVPN protocol];
      }

      else
      {
        configuration = [(NESMSession *)self configuration];
        appVPN = [configuration VPN];
        protocol = [appVPN protocol];
        if (!self)
        {
LABEL_11:

          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_100071BE0;
          v13[3] = &unk_1000EB1C0;
          v13[4] = self;
          sub_10006EF70(self, v13);
          v11 = 1;
          goto LABEL_12;
        }
      }

      objc_setProperty_atomic(self, v9, protocol, 360);
      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (void)uninstall
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100071CDC;
  v2[3] = &unk_1000EB1C0;
  v2[4] = self;
  sub_10006EF70(self, v2);
}

- (void)install
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100071EDC;
  v2[3] = &unk_1000EB1C0;
  v2[4] = self;
  sub_10006EF70(self, v2);
}

- (void)handleGetInfoMessage:(id)message withType:(int)type
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007369C;
  v6[3] = &unk_1000EB360;
  typeCopy = type;
  messageCopy = message;
  selfCopy = self;
  v5 = messageCopy;
  sub_10006EF70(self, v6);
}

- (void)handleSecuritySessionInfoRequest:(id)request
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100073A60;
  v5[3] = &unk_1000EB198;
  requestCopy = request;
  selfCopy = self;
  v4 = requestCopy;
  sub_10006EF70(self, v5);
}

- (void)handleChangeEventForInterface:(id)interface newFlags:(unint64_t)flags previousFlags:(unint64_t)previousFlags
{
  interfaceCopy = interface;
  v13.receiver = self;
  v13.super_class = NESMLegacySession;
  [(NESMSession *)&v13 handleChangeEventForInterface:interfaceCopy newFlags:flags previousFlags:previousFlags];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100073C28;
  v10[3] = &unk_1000EABA0;
  v10[4] = self;
  v11 = interfaceCopy;
  flagsCopy = flags;
  v9 = interfaceCopy;
  sub_10006EF70(self, v10);
}

- (void)handleWakeup
{
  queue = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100074148;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(queue, block);

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100074154;
  v4[3] = &unk_1000EB1C0;
  v4[4] = self;
  sub_10006EF70(self, v4);
}

- (void)handleSleepTime:(double)time
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100074244;
  v3[3] = &unk_1000EB0D8;
  v3[4] = self;
  *&v3[5] = time;
  sub_10006EF70(self, v3);
}

- (BOOL)handleSleep
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100074338;
  v3[3] = &unk_1000EB1C0;
  v3[4] = self;
  sub_10006EF70(self, v3);
  return 1;
}

- (void)handleStopMessageWithReason:(int)reason
{
  v5.receiver = self;
  v5.super_class = NESMLegacySession;
  [(NESMSession *)&v5 handleStopMessageWithReason:*&reason];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100074488;
  v4[3] = &unk_1000EB1C0;
  v4[4] = self;
  sub_10006EF70(self, v4);
}

- (void)handleStartMessage:(id)message
{
  messageCopy = message;
  v5 = xpc_dictionary_get_value(messageCopy, "SessionOptions");
  if (qword_1000FD550 != -1)
  {
    dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
  }

  v67.receiver = self;
  v67.super_class = NESMLegacySession;
  [(NESMSession *)&v67 handleStartMessage:messageCopy, qword_1000FD548];
  v6 = CTBundle_ptr;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    v7 = _CFXPCCreateCFObjectFromXPCObject();
    if (isa_nsdictionary())
    {
      v8 = [[NSMutableDictionary alloc] initWithDictionary:v7];

      if (v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to convert the XPC options dictionary to a CFDictionary", buf, 2u);
      }
    }
  }

  v8 = objc_alloc_init(NSMutableDictionary);
LABEL_12:
  v60 = v5;
  server2 = [v8 objectForKeyedSubscript:@"OutgoingInterface"];
  if ((isa_nsstring() & 1) == 0)
  {
    server = [(NESMSession *)self server];
    primaryPhysicalInterface = [server primaryPhysicalInterface];

    if (!primaryPhysicalInterface)
    {
      goto LABEL_16;
    }

    server2 = [(NESMSession *)self server];
    primaryPhysicalInterface2 = [server2 primaryPhysicalInterface];
    interfaceName = [primaryPhysicalInterface2 interfaceName];
    [v8 setObject:interfaceName forKeyedSubscript:@"OutgoingInterface"];
  }

LABEL_16:
  v15 = v8;
  v17 = v15;
  v61 = messageCopy;
  if (!self)
  {

    v52 = 0;
    v55 = objc_msgSend_type(0);
    goto LABEL_73;
  }

  Property = objc_getProperty(self, v16, 360, 1);
  v19 = objc_msgSend_type(Property);
  v21 = [objc_getProperty(self v20];
  v63 = [objc_getProperty(self v22];
  if (v17)
  {
    v23 = [v17 objectForKeyedSubscript:kSCEntNetIPSec];
    if (isa_nsdictionary())
    {
      v24 = [v23 mutableCopy];
    }

    else
    {
      v24 = 0;
    }

    v26 = [v17 objectForKeyedSubscript:kSCEntNetPPP];

    if (isa_nsdictionary())
    {
      v25 = [v26 mutableCopy];
    }

    else
    {
      v25 = 0;
    }

    v6 = CTBundle_ptr;
    if (v24)
    {
      if (v25)
      {
        goto LABEL_27;
      }

LABEL_30:
      v25 = objc_alloc_init(v6[181]);
      if (v21)
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v25 = 0;
  }

  v24 = objc_alloc_init(v6[181]);
  if (!v25)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (v21)
  {
LABEL_28:
    copyPassword = [v21 copyPassword];
    goto LABEL_32;
  }

LABEL_31:
  copyPassword = 0;
LABEL_32:
  if ((v19 - 1) <= 1)
  {
    v28 = [objc_getProperty(self v27];

    v21 = v28;
  }

  if (v21)
  {
    copyPassword2 = [v21 copyPassword];
  }

  else
  {
    copyPassword2 = 0;
  }

  if (v63)
  {
    if (v19 == 1)
    {
      v30 = kSCPropNetIPSecXAuthName;
      v31 = [v24 objectForKeyedSubscript:kSCPropNetIPSecXAuthName];
      v32 = isa_nsstring();

      if (v32)
      {
        goto LABEL_45;
      }

      v33 = v24;
      goto LABEL_44;
    }

    if (v19 == 2)
    {
      v30 = kSCPropNetPPPAuthName;
      v34 = [v25 objectForKeyedSubscript:kSCPropNetPPPAuthName];
      v35 = isa_nsstring();

      if ((v35 & 1) == 0)
      {
        v33 = v25;
LABEL_44:
        [v33 setObject:v63 forKeyedSubscript:v30];
      }
    }
  }

LABEL_45:
  if (copyPassword)
  {
    if (v19 == 1)
    {
      v36 = kSCPropNetIPSecXAuthPassword;
      v37 = [v24 objectForKeyedSubscript:kSCPropNetIPSecXAuthPassword];
      v38 = isa_nsstring();

      if ((v38 & 1) == 0)
      {
        v39 = v24;
LABEL_52:
        [v39 setObject:copyPassword forKeyedSubscript:v36];
      }
    }

    else if (v19 == 2)
    {
      v36 = kSCPropNetPPPAuthPassword;
      v40 = [v25 objectForKeyedSubscript:kSCPropNetPPPAuthPassword];
      v41 = isa_nsstring();

      if ((v41 & 1) == 0)
      {
        v39 = v25;
        goto LABEL_52;
      }
    }
  }

  if (copyPassword2)
  {
    v42 = [v24 objectForKeyedSubscript:kSCPropNetIPSecSharedSecret];
    v43 = isa_nsstring();

    if ((v43 & 1) == 0)
    {
      [v24 setObject:copyPassword2 forKeyedSubscript:kSCPropNetIPSecSharedSecret];
    }
  }

  if (v17 && v19 == 1)
  {
    if (!v24)
    {
      v24 = objc_alloc_init(NSMutableDictionary);
    }

    v44 = [v17 objectForKeyedSubscript:NEVPNConnectionStartOptionUsername];
    v45 = isa_nsstring();

    if (v45)
    {
      v46 = [v17 objectForKeyedSubscript:NEVPNConnectionStartOptionUsername];
      [v24 setObject:v46 forKeyedSubscript:kSCPropNetIPSecXAuthName];
    }

    v47 = [v17 objectForKeyedSubscript:NEVPNConnectionStartOptionPassword];
    v48 = isa_nsstring();

    if (v48)
    {
      v49 = [v17 objectForKeyedSubscript:NEVPNConnectionStartOptionPassword];
      [v24 setObject:v49 forKeyedSubscript:kSCPropNetIPSecXAuthName];
    }

    *buf = NEVPNConnectionStartOptionPassword;
    v69 = NEVPNConnectionStartOptionUsername;
    v50 = [NSArray arrayWithObjects:buf count:2];
    [v17 removeObjectsForKeys:v50];
  }

  else if (!v17)
  {
    if ([v24 count] || objc_msgSend(v25, "count"))
    {
      v51 = objc_alloc_init(NSMutableDictionary);
    }

    else
    {
      v51 = 0;
    }

    goto LABEL_67;
  }

  v51 = v17;
LABEL_67:
  if ([v25 count])
  {
    [v51 setObject:v25 forKeyedSubscript:kSCEntNetPPP];
  }

  if (v24 && [v24 count])
  {
    [v51 setObject:v24 forKeyedSubscript:kSCEntNetIPSec];
  }

  v52 = v51;

  v54 = objc_getProperty(self, v53, 360, 1);
  v55 = objc_msgSend_type(v54);
LABEL_73:
  if (v55 == 2)
  {
    v57 = xpc_dictionary_copy_mach_send();
    v58 = xpc_dictionary_copy_mach_send();
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  if (self)
  {
    objc_setProperty_atomic(self, v56, v52, 384);
  }

  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_100074CE4;
  v64[3] = &unk_1000EA5A8;
  v64[4] = self;
  v64[5] = v59;
  v65 = v57;
  v66 = v58;
  sub_10006EF70(self, v64);
}

- (void)dealloc
{
  if (self && self->_bridge)
  {
    if (qword_1000FD550 != -1)
    {
      dispatch_once(&qword_1000FD550, &stru_1000EA5C8);
    }

    (*(qword_1000FD548 + 8))(self->_bridge);
    self->_bridge = 0;
  }

  v3.receiver = self;
  v3.super_class = NESMLegacySession;
  [(NESMSession *)&v3 dealloc];
}

- (int)type
{
  if (self)
  {
    LODWORD(self) = self->_sessionType;
  }

  return self;
}

@end