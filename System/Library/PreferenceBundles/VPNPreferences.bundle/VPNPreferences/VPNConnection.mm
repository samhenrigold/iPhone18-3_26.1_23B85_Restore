@interface VPNConnection
+ (id)statusTextForStatus:(unint64_t)status;
- (VPNConnection)initWithServiceID:(id)d options:(id)options;
- (__CFString)vpnType;
- (id)_fullOptions;
- (id)alertText;
- (id)connectTimeForSubConnection:(unint64_t)connection;
- (id)convertTimeToString:(unint64_t)string;
- (id)elapsedTimeLocalizedString;
- (id)elapsedTimeLocalizedStringForSubConnection:(unint64_t)connection;
- (id)interfaceTypeForSubConnection:(unint64_t)connection;
- (id)ipAddressesForSubConnection:(unint64_t)connection;
- (id)remoteAddressForSubConnection:(unint64_t)connection;
- (id)statusText;
- (id)tunnelType;
- (id)vpnTypeLocalizedString;
- (unint64_t)elapsedTimeSinceStartTime:(id)time;
- (unint64_t)status;
- (unint64_t)subConnectionCount;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
- (void)updateWithOptions:(id)options;
@end

@implementation VPNConnection

- (VPNConnection)initWithServiceID:(id)d options:(id)options
{
  dCopy = d;
  optionsCopy = options;
  v41.receiver = self;
  v41.super_class = VPNConnection;
  v9 = [(VPNConnection *)&v41 init];
  v10 = v9;
  if (v9)
  {
    objc_initWeak(&location, v9);
    v11 = [optionsCopy objectForKey:@"VPNEnabled"];
    v10->_enabled = [v11 BOOLValue];

    objc_storeStrong(&v10->_serviceID, d);
    v12 = [optionsCopy objectForKey:@"dispName"];
    displayName = v10->_displayName;
    v10->_displayName = v12;

    v14 = [optionsCopy objectForKey:@"VPNApplicationBundleID"];
    bundleID = v10->_bundleID;
    v10->_bundleID = v14;

    v16 = dispatch_queue_create("VPNConnection", 0);
    queue = v10->_queue;
    v10->_queue = v16;

    v18 = [optionsCopy objectForKey:@"VPNGrade"];
    v10->_grade = [v18 unsignedIntegerValue];

    if (v10->_grade == 3)
    {
      v19 = objc_alloc_init(NSMutableArray);
      subConnections = v10->_subConnections;
      v10->_subConnections = v19;
    }

    if (v10->_queue)
    {
      *buf = 0;
      *&buf[8] = 0;
      [(NSUUID *)v10->_serviceID getUUIDBytes:buf];
      v21 = ne_session_create();
      v10->_session = v21;
      v10->_session_status = 1;
      v22 = objc_loadWeakRetained(&location);
      sub_4760(v22);

      if (v10->_session)
      {
        objc_copyWeak(v39, &location);
        v39[1] = v21;
        ne_session_set_event_handler();
        objc_destroyWeak(v39);
      }
    }

    v23 = [optionsCopy objectForKey:@"VPNType"];
    v10->_vpnConnectionType = [v23 unsignedIntegerValue];

    v24 = [optionsCopy objectForKey:@"authorization"];
    accountName = v10->_accountName;
    v10->_accountName = v24;

    v26 = [optionsCopy objectForKey:@"server"];
    server = v10->_server;
    v10->_server = v26;

    v28 = [optionsCopy objectForKey:@"securID"];
    v10->_useRSASecurID = [v28 BOOLValue];

    v29 = [optionsCopy objectForKey:@"secret"];
    sharedSecret = v10->_sharedSecret;
    v10->_sharedSecret = v29;

    v31 = [optionsCopy objectForKey:@"password"];
    password = v10->_password;
    v10->_password = v31;

    v33 = [optionsCopy objectForKey:@"VPNCertificate"];
    certificate = v10->_certificate;
    v10->_certificate = v33;

    v10->_isProviderAvailable = 1;
    v35 = [optionsCopy objectForKey:@"VPNOnDemandUserOverrideDisabled"];
    v10->_onDemandUserOverrideDisabled = [v35 BOOLValue];

    v36 = [optionsCopy objectForKey:@"VPNIsPerApp"];
    v10->_isPerApp = [v36 BOOLValue];

    objc_destroyWeak(&location);
  }

  v37 = sub_46D8(v9);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = dCopy;
    v43 = 2112;
    v44 = optionsCopy;
    _os_log_debug_impl(&dword_0, v37, OS_LOG_TYPE_DEBUG, "New VPN service %@ for service %@, options %@", buf, 0x20u);
  }

  return v10;
}

- (void)updateWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKey:@"VPNEnabled"];
  self->_enabled = [v5 BOOLValue];

  v6 = [optionsCopy objectForKey:@"dispName"];
  displayName = self->_displayName;
  self->_displayName = v6;

  v8 = [optionsCopy objectForKey:@"VPNApplicationBundleID"];
  bundleID = self->_bundleID;
  self->_bundleID = v8;

  v10 = [optionsCopy objectForKey:@"authorization"];
  accountName = self->_accountName;
  self->_accountName = v10;

  v12 = [optionsCopy objectForKey:@"server"];
  server = self->_server;
  self->_server = v12;

  v14 = [optionsCopy objectForKey:@"securID"];
  self->_useRSASecurID = [v14 BOOLValue];

  v15 = [optionsCopy objectForKey:@"secret"];
  sharedSecret = self->_sharedSecret;
  self->_sharedSecret = v15;

  v17 = [optionsCopy objectForKey:@"password"];
  password = self->_password;
  self->_password = v17;

  v19 = [optionsCopy objectForKey:@"VPNCertificate"];

  certificate = self->_certificate;
  self->_certificate = v19;
}

- (void)dealloc
{
  if ([(VPNConnection *)self session])
  {
    [(VPNConnection *)self session];
    ne_session_cancel();
    [(VPNConnection *)self setSession:0];
  }

  v3.receiver = self;
  v3.super_class = VPNConnection;
  [(VPNConnection *)&v3 dealloc];
}

- (unint64_t)subConnectionCount
{
  subConnections = self->_subConnections;
  if (subConnections)
  {
    return [(NSMutableArray *)subConnections count];
  }

  else
  {
    return 1;
  }
}

- (id)ipAddressesForSubConnection:(unint64_t)connection
{
  subConnections = self->_subConnections;
  if (subConnections)
  {
    if ([(NSMutableArray *)subConnections count]<= connection)
    {
      sessionIPAddresses = &__NSArray0__struct;
    }

    else
    {
      v6 = [(NSMutableArray *)self->_subConnections objectAtIndexedSubscript:connection];
      sessionIPAddresses = [v6 objectForKeyedSubscript:off_49D60];
    }
  }

  else
  {
    sessionIPAddresses = [(VPNConnection *)self sessionIPAddresses];
  }

  return sessionIPAddresses;
}

- (id)remoteAddressForSubConnection:(unint64_t)connection
{
  subConnections = self->_subConnections;
  if (subConnections)
  {
    if ([(NSMutableArray *)subConnections count]<= connection)
    {
      sessionRemoteAddress = &stru_411E8;
    }

    else
    {
      v6 = [(NSMutableArray *)self->_subConnections objectAtIndexedSubscript:connection];
      sessionRemoteAddress = [v6 objectForKeyedSubscript:off_49D68];
    }
  }

  else
  {
    sessionRemoteAddress = [(VPNConnection *)self sessionRemoteAddress];
  }

  return sessionRemoteAddress;
}

- (id)connectTimeForSubConnection:(unint64_t)connection
{
  subConnections = self->_subConnections;
  if (subConnections)
  {
    if ([(NSMutableArray *)subConnections count]<= connection)
    {
      sessionConnectTime = &off_43548;
    }

    else
    {
      v6 = [(NSMutableArray *)self->_subConnections objectAtIndexedSubscript:connection];
      sessionConnectTime = [v6 objectForKeyedSubscript:off_49D70];
    }
  }

  else
  {
    sessionConnectTime = [(VPNConnection *)self sessionConnectTime];
  }

  return sessionConnectTime;
}

- (id)interfaceTypeForSubConnection:(unint64_t)connection
{
  subConnections = self->_subConnections;
  if (!subConnections || [(NSMutableArray *)subConnections count]<= connection)
  {
    v15 = &stru_411E8;
    goto LABEL_17;
  }

  v6 = [(NSMutableArray *)self->_subConnections objectAtIndexedSubscript:connection];
  v7 = [NWInterface alloc];
  v8 = [v6 objectForKeyedSubscript:off_49D78];
  v9 = [v7 initWithInterfaceName:v8];

  type = [v9 type];
  if (type == &dword_0 + 3)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = v12;
    v14 = @"ETHERNET";
    goto LABEL_15;
  }

  if (type == &dword_0 + 2)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = v12;
    v14 = @"CELLULAR";
LABEL_15:
    v15 = [v12 localizedStringForKey:v14 value:&stru_411E8 table:@"MobileVPN"];

    goto LABEL_16;
  }

  if (type == &dword_0 + 1)
  {
    if (qword_4A080 != -1)
    {
      sub_29C80();
    }

    v11 = byte_4A078;
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = v12;
    if (v11 == 1)
    {
      v14 = @"WLAN";
    }

    else
    {
      v14 = @"WIFI";
    }

    goto LABEL_15;
  }

  v15 = &stru_411E8;
LABEL_16:

LABEL_17:

  return v15;
}

- (id)elapsedTimeLocalizedStringForSubConnection:(unint64_t)connection
{
  v4 = [(VPNConnection *)self connectTimeForSubConnection:connection];
  v5 = [(VPNConnection *)self elapsedTimeSinceStartTime:v4];

  return [(VPNConnection *)self convertTimeToString:v5];
}

- (id)_fullOptions
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[NSMutableDictionary dictionary];
  v5 = +[NSMutableDictionary dictionary];
  vpnConnectionType = [(VPNConnection *)self vpnConnectionType];
  accountName = [(VPNConnection *)self accountName];
  if (vpnConnectionType == 2)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  v9 = &kSCPropNetIPSecXAuthName;
  if (vpnConnectionType == 2)
  {
    v10 = &kSCPropNetIPSecRemoteAddress;
  }

  else
  {
    v9 = &kSCPropNetPPPAuthName;
    v10 = &kSCPropNetPPPCommRemoteAddress;
  }

  [v8 setObject:accountName forKey:*v9];

  server = [(VPNConnection *)self server];
  [v8 setObject:server forKey:*v10];

  password = [(VPNConnection *)self password];
  v13 = [password length];

  if (v13)
  {
    password2 = [(VPNConnection *)self password];
    v15 = &kSCPropNetIPSecXAuthPassword;
    if (vpnConnectionType != 2)
    {
      v15 = &kSCPropNetPPPAuthPassword;
    }

    [v8 setValue:password2 forKey:*v15];
  }

  sharedSecret = [(VPNConnection *)self sharedSecret];
  v17 = [sharedSecret length];

  if (v17)
  {
    [v5 setObject:kSCValNetIPSecAuthenticationMethodSharedSecret forKey:kSCPropNetIPSecAuthenticationMethod];
    sharedSecret2 = [(VPNConnection *)self sharedSecret];
    [v5 setObject:sharedSecret2 forKey:kSCPropNetIPSecSharedSecret];
  }

  [v3 setObject:v4 forKey:kSCEntNetPPP];
  [v3 setObject:v5 forKey:kSCValNetL2TPTransportIPSec];

  return v3;
}

- (id)vpnTypeLocalizedString
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"UNKNOWN" value:&stru_411E8 table:@"MobileVPN"];

  if ([(VPNConnection *)self grade]== &dword_4 + 3 || [(VPNConnection *)self grade]== &dword_8)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"RELAY" value:&stru_411E8 table:@"MobileVPN"];

    goto LABEL_13;
  }

  vpnType = [(VPNConnection *)self vpnType];
  if (vpnType)
  {
    v8 = vpnType;
    if (CFStringCompare(vpnType, kSCEntNetPPTP, 0))
    {
      if (CFStringCompare(v8, kSCEntNetL2TP, 0))
      {
        v9 = v8;
LABEL_11:

        v4 = v9;
        goto LABEL_12;
      }

      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = v10;
      v12 = @"L2TP_IPSEC";
    }

    else
    {
      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = v10;
      v12 = @"PPTP";
    }

    v9 = [v10 localizedStringForKey:v12 value:&stru_411E8 table:@"MobileVPN"];

    v4 = v11;
    goto LABEL_11;
  }

LABEL_12:
  v4 = v4;
  v6 = v4;
LABEL_13:

  return v6;
}

- (__CFString)vpnType
{
  vpnConnectionType = [(VPNConnection *)self vpnConnectionType];

  return [VPNConnectionStore vpnTypeFromConnectionType:vpnConnectionType];
}

- (unint64_t)status
{
  if ([(VPNConnection *)self grade]== &dword_4 + 3 || [(VPNConnection *)self grade]== &dword_8)
  {
    if ([(VPNConnection *)self enabled])
    {
      return 6;
    }

    else
    {
      return 5;
    }
  }

  else if ([(VPNConnection *)self grade]== &dword_0 + 2 && ![(VPNConnection *)self enabled])
  {
    return 5;
  }

  else
  {
    session_status = [(VPNConnection *)self session_status];
    if (session_status > 5)
    {
      return 1;
    }

    else
    {
      return qword_3C318[session_status];
    }
  }
}

+ (id)statusTextForStatus:(unint64_t)status
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (status - 2 > 4)
  {
    v6 = @"NOT_CONNECTED";
  }

  else
  {
    v6 = off_40CA8[status - 2];
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_411E8 table:@"MobileVPN"];

  return v7;
}

- (id)alertText
{
  lastStopCause = [(VPNConnection *)self lastStopCause];
  intValue = [lastStopCause intValue];

  if ([(VPNConnection *)self grade]== &dword_8 || [(VPNConnection *)self grade]== &dword_4 + 3)
  {
    v5 = intValue - 17;
    if (intValue - 17 < 0xE && ((0x2D9Bu >> v5) & 1) != 0)
    {
      v6 = off_40CD0[v5];
LABEL_20:
      v13 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:v6 value:&stru_411E8 table:@"MobileVPN"];

      goto LABEL_24;
    }
  }

  if ([(VPNConnection *)self session_status]!= 1)
  {
    goto LABEL_23;
  }

  if (![(VPNConnection *)self isProviderAvailable])
  {
    v6 = @"MISSING_PROVIDER_ALERT";
    goto LABEL_20;
  }

  lastStopCause2 = [(VPNConnection *)self lastStopCause];

  if (!lastStopCause2)
  {
    goto LABEL_23;
  }

  vpnConnectionType = [(VPNConnection *)self vpnConnectionType];
  lastStopCause3 = [(VPNConnection *)self lastStopCause];
  intValue2 = [lastStopCause3 intValue];

  if (vpnConnectionType == 4)
  {
    if (intValue2 != 27)
    {
      lastStopCause4 = [(VPNConnection *)self lastStopCause];
      if ([lastStopCause4 intValue] == 25)
      {
LABEL_18:

LABEL_19:
        v6 = @"CERTIFICATE_ERROR";
        goto LABEL_20;
      }

      lastStopCause5 = [(VPNConnection *)self lastStopCause];
      if ([lastStopCause5 intValue] == 26)
      {
LABEL_13:

        goto LABEL_18;
      }

      goto LABEL_22;
    }

LABEL_16:
    v6 = @"CERTIFICATE_EXPIRED";
    goto LABEL_20;
  }

  if (intValue2 == 21)
  {
    goto LABEL_16;
  }

  lastStopCause4 = [(VPNConnection *)self lastStopCause];
  if ([lastStopCause4 intValue] == 13)
  {
    goto LABEL_18;
  }

  lastStopCause5 = [(VPNConnection *)self lastStopCause];
  if ([lastStopCause5 intValue] == 20)
  {
    goto LABEL_13;
  }

LABEL_22:
  lastStopCause6 = [(VPNConnection *)self lastStopCause];
  intValue3 = [lastStopCause6 intValue];

  if (intValue3 == 24)
  {
    goto LABEL_19;
  }

LABEL_23:
  v14 = &stru_411E8;
LABEL_24:

  return v14;
}

- (id)statusText
{
  v3 = [(VPNConnection *)self grade]== &dword_4 + 1 || [(VPNConnection *)self grade]== &dword_4 + 2 || [(VPNConnection *)self grade]== &dword_8 + 1;
  if ([(VPNConnection *)self grade]== &dword_4 + 3 || [(VPNConnection *)self grade]== &dword_8)
  {
    enabled = [(VPNConnection *)self enabled];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    if (enabled)
    {
      v6 = @"ON";
    }

    else
    {
      v6 = @"OFF";
    }

    goto LABEL_10;
  }

  if ([(VPNConnection *)self grade]!= &dword_0 + 2 || [(VPNConnection *)self enabled])
  {
    session_status = [(VPNConnection *)self session_status];
    if (session_status <= 2)
    {
      if (!session_status)
      {
        v5 = [NSBundle bundleForClass:objc_opt_class()];
        if (!v3)
        {
          v6 = @"INACTIVE";
          goto LABEL_10;
        }

        goto LABEL_32;
      }

      if (session_status == 2)
      {
LABEL_20:
        v5 = [NSBundle bundleForClass:objc_opt_class()];
        if (v3)
        {
          v6 = @"STARTING";
        }

        else
        {
          v6 = @"CONNECTING";
        }

        goto LABEL_10;
      }
    }

    else
    {
      switch(session_status)
      {
        case 3:
          v5 = [NSBundle bundleForClass:objc_opt_class()];
          if (v3)
          {
            v6 = @"RUNNING";
          }

          else
          {
            v6 = @"CONNECTED";
          }

          goto LABEL_10;
        case 5:
          v5 = [NSBundle bundleForClass:objc_opt_class()];
          if (v3)
          {
            v6 = @"STOPPING";
          }

          else
          {
            v6 = @"DISCONNECTING";
          }

          goto LABEL_10;
        case 4:
          goto LABEL_20;
      }
    }

    v5 = [NSBundle bundleForClass:objc_opt_class()];
    if (!v3)
    {
      v6 = @"NOT_CONNECTED";
LABEL_10:
      v7 = v5;
      goto LABEL_11;
    }

LABEL_32:
    v6 = @"INVALID";
    goto LABEL_10;
  }

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v7;
  v6 = @"INACTIVE";
LABEL_11:
  v8 = [v7 localizedStringForKey:v6 value:&stru_411E8 table:@"MobileVPN"];

  return v8;
}

- (void)connect
{
  [VPNConnection cancelPreviousPerformRequestsWithTarget:self];
  session = [(VPNConnection *)self session];

  _ne_session_start(session);
}

- (void)disconnect
{
  session = [(VPNConnection *)self session];

  _ne_session_stop(session);
}

- (id)elapsedTimeLocalizedString
{
  sessionConnectTime = [(VPNConnection *)self sessionConnectTime];
  v4 = [(VPNConnection *)self elapsedTimeSinceStartTime:sessionConnectTime];

  return [(VPNConnection *)self convertTimeToString:v4];
}

- (unint64_t)elapsedTimeSinceStartTime:(id)time
{
  if (!time)
  {
    return 0;
  }

  timeCopy = time;
  [timeCopy unsignedLongLongValue];
  if (qword_4A090 != -1)
  {
    sub_29C94();
  }

  v4 = (*&qword_4A088 * mach_absolute_time());
  unsignedLongLongValue = [timeCopy unsignedLongLongValue];

  return v4 - unsignedLongLongValue;
}

- (id)convertTimeToString:(unint64_t)string
{
  if (!string)
  {
    goto LABEL_24;
  }

  stringCopy = string;
  v4 = string % 0x3C;
  v5 = ((string / 0x3C * 0x888888888888889uLL) >> 64) >> 1;
  v6 = string / 0x3C - 60 * v5;
  v7 = string + 3599;
  if (string / 0x3C != 60 * v5 || v7 > 0x1C1E)
  {
    if (v6 > 9 || v7 > 0x1C1E)
    {
      if (v6 < 0xA || v7 > 0x1C1E)
      {
        v11 = (string / 3600);
        v12 = [NSBundle bundleForClass:objc_opt_class()];
        v14 = v12;
        if (stringCopy > 35999)
        {
          v13 = @"TIME_HHMS";
        }

        else
        {
          v13 = @"TIME_HMS";
        }

        v15 = [v12 localizedStringForKey:v13 value:&stru_411E8 table:@"MobileVPN"];
        [NSString stringWithFormat:v15, v11, v6, v4];
        goto LABEL_22;
      }

      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = v16;
      v17 = @"TIME_MMS";
    }

    else
    {
      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = v16;
      v17 = @"TIME_MS";
    }

    v15 = [v16 localizedStringForKey:v17 value:&stru_411E8 table:@"MobileVPN"];
    [NSString stringWithFormat:v15, v6, v4, v21];
  }

  else
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"TIME_S" value:&stru_411E8 table:@"MobileVPN"];
    [NSString stringWithFormat:v15, v4, v20, v21];
  }

  v18 = LABEL_22:;

  if ([(__CFString *)v18 length])
  {
    goto LABEL_25;
  }

LABEL_24:
  v18 = &stru_411E8;
LABEL_25:

  return v18;
}

- (id)tunnelType
{
  if ([(VPNConnection *)self grade]== &dword_0 + 1 || ![(VPNConnection *)self grade])
  {
    isPrimary = [(VPNConnection *)self isPrimary];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    if (isPrimary)
    {
      v7 = @"FULL_TUNNEL";
    }

    else
    {
      v7 = @"SPLIT_TUNNEL";
    }

    v3 = [v5 localizedStringForKey:v7 value:&stru_411E8 table:@"MobileVPN"];
  }

  else
  {
    v3 = &stru_411E8;
  }

  return v3;
}

@end