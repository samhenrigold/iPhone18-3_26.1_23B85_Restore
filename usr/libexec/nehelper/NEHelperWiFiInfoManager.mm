@interface NEHelperWiFiInfoManager
- (NEHelperWiFiInfoManager)initWithFirstMessage:(id)message;
- (OS_dispatch_queue)handlerQueue;
- (void)dealloc;
- (void)handleMessage:(id)message;
@end

@implementation NEHelperWiFiInfoManager

- (void)handleMessage:(id)message
{
  messageCopy = message;
  string = xpc_dictionary_get_string(messageCopy, "interface-name");
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = "(nil)";
    if (string)
    {
      v8 = string;
    }

    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ processing Wi-Fi information request for %s", buf, 0x16u);
  }

  v10 = messageCopy;
  v11 = v10;
  if (self)
  {
    self->_isLegacyAPICaller = xpc_dictionary_get_BOOL(v10, "LegacyAPI");
    memset(buf, 0, sizeof(buf));
    xpc_dictionary_get_audit_token();
    v91 = 0;
    *v96 = *buf;
    *&v96[16] = *&buf[16];
    v12 = [LSBundleRecord bundleRecordForAuditToken:v96 error:&v91];
    v13 = v91;
    if (v12)
    {
      sDKVersion = [v12 SDKVersion];
    }

    else
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v96 = 138412546;
        *&v96[4] = self;
        *&v96[12] = 2112;
        *&v96[14] = v13;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ failed to get bundle record, error: %@", v96, 0x16u);
      }

      sDKVersion = 0;
    }

    v16 = self->_connection;
    if (qword_100046B08 != -1)
    {
      dispatch_once(&qword_100046B08, &stru_10003CE30);
    }

    if (byte_100046B00 == 1)
    {
      if (nelog_is_debug_logging_enabled())
      {
        pid = xpc_connection_get_pid(v16);
        proc_name(pid, buf, 0x40u);
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *v96 = 136315138;
          *&v96[4] = buf;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Process [%s] is requesting current Wi-Fi network information", v96, 0xCu);
        }
      }

      v19 = xpc_connection_copy_entitlement_value();
      v20 = v19;
      if (v19 && xpc_get_type(v19) == &_xpc_type_BOOL && xpc_BOOL_get_value(v20))
      {

        sub_100009A3C(self, v11);
        v21 = ne_log_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v22 = objc_opt_class();
          *buf = 138412290;
          *&buf[4] = v22;
          v23 = v22;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%@ calling process has private entitlement", buf, 0xCu);
        }

LABEL_29:

LABEL_83:
        sub_100009730(self, v11);
LABEL_84:

        goto LABEL_85;
      }
    }

    if (self->_isLegacyAPICaller)
    {
      if (sDKVersion)
      {
        v24 = +[LSApplicationWorkspace defaultWorkspace];
        v25 = [v24 isVersion:sDKVersion greaterThanOrEqualToVersion:@"26.0"];

        if (v25)
        {
          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            bundleID = self->_bundleID;
            *buf = 138412290;
            *&buf[4] = bundleID;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%@] is denied Wi-Fi information access since it's linked with iOS SDK 26.0 or later. Use replacement API [NEHotspotNetwork fetchCurrentWithCompletionHandler:]", buf, 0xCu);
          }

          goto LABEL_29;
        }
      }
    }

    sub_100009A3C(self, v11);
    v27 = ne_log_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v78 = objc_opt_class();
      v79 = self->_bundleID;
      *buf = 138412802;
      *&buf[4] = v78;
      *&buf[12] = 2112;
      *&buf[14] = v79;
      *&buf[22] = 2112;
      *&buf[24] = sDKVersion;
      v80 = v78;
      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%@ [%@] is built with SDK version [%@]", buf, 0x20u);
    }

    if (!sDKVersion)
    {
LABEL_40:
      v37 = ne_log_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = objc_opt_class();
        v39 = self->_bundleID;
        *buf = 138412546;
        *&buf[4] = v38;
        *&buf[12] = 2112;
        *&buf[14] = v39;
        v40 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%@ [%@] is not entitled", buf, 0x16u);
      }

      sub_10000A098(self, v11, 1);
      goto LABEL_84;
    }

    v28 = sDKVersion;
    v29 = +[LSApplicationWorkspace defaultWorkspace];
    v30 = [v29 isVersion:v28 greaterThanOrEqualToVersion:@"12.0"];

    if (v30)
    {
      v31 = xpc_connection_copy_entitlement_value();
      v32 = v31;
      if (!v31 || xpc_get_type(v31) != &_xpc_type_BOOL || !xpc_BOOL_get_value(v32))
      {

        v33 = ne_log_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = objc_opt_class();
          v35 = self->_bundleID;
          *buf = 138412802;
          *&buf[4] = v34;
          *&buf[12] = 2112;
          *&buf[14] = v35;
          *&buf[22] = 2080;
          *&buf[24] = "com.apple.developer.networking.wifi-info";
          v36 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%@ [%@] missing %s entitlement", buf, 0x20u);
        }

        goto LABEL_40;
      }
    }

    else
    {
      v32 = ne_log_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v41 = objc_opt_class();
        v42 = self->_bundleID;
        *buf = 138412546;
        *&buf[4] = v41;
        *&buf[12] = 2112;
        *&buf[14] = v42;
        v43 = v41;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%@ [%@] linked before iOS 12.0", buf, 0x16u);
      }
    }

    v44 = ne_log_obj();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = objc_opt_class();
      v46 = self->_bundleID;
      *buf = 138412546;
      *&buf[4] = v45;
      *&buf[12] = 2112;
      *&buf[14] = v46;
      v47 = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "%@ [%@] is entitled", buf, 0x16u);
    }

    if (objc_opt_class())
    {
      v48 = self->_bundleID;
      *v96 = 0;
      v49 = [CLLocationManager _checkAndExerciseAuthorizationForBundleID:v48 error:v96];
      v50 = *v96;
      if (v50)
      {
        v51 = ne_log_obj();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = objc_opt_class();
          v53 = self->_bundleID;
          *buf = 138412802;
          *&buf[4] = v52;
          *&buf[12] = 2112;
          *&buf[14] = v53;
          *&buf[22] = 2112;
          *&buf[24] = v50;
          v54 = v52;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "%@ failed to find location authorization for [%@] [%@]", buf, 0x20u);
        }

        v49 = 0;
      }
    }

    else
    {
      v49 = 0;
    }

    v55 = ne_log_obj();
    v56 = os_log_type_enabled(v55, OS_LOG_TYPE_INFO);
    if (v49)
    {
      if (v56)
      {
        v57 = objc_opt_class();
        v58 = self->_bundleID;
        *buf = 138412546;
        *&buf[4] = v57;
        *&buf[12] = 2112;
        *&buf[14] = v58;
        v59 = v57;
        v60 = "%@ [%@] is authorized to access the location";
LABEL_81:
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, v60, buf, 0x16u);
      }
    }

    else
    {
      if (v56)
      {
        v61 = objc_opt_class();
        v62 = self->_bundleID;
        *buf = 138412546;
        *&buf[4] = v61;
        *&buf[12] = 2112;
        *&buf[14] = v62;
        v63 = v61;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "%@ [%@] is not authorized to access the location", buf, 0x16u);
      }

      if (self->_network && (BundleIdentifier = WiFiNetworkGetBundleIdentifier()) != 0)
      {
        v65 = [(NSString *)self->_bundleID isEqual:BundleIdentifier];
      }

      else
      {
        v65 = 0;
      }

      v55 = ne_log_obj();
      v66 = os_log_type_enabled(v55, OS_LOG_TYPE_INFO);
      if (!v65)
      {
        if (v66)
        {
          v69 = objc_opt_class();
          v70 = self->_bundleID;
          *buf = 138412546;
          *&buf[4] = v69;
          *&buf[12] = 2112;
          *&buf[14] = v70;
          v71 = v69;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "%@ [%@] has not configured the current network", buf, 0x16u);
        }

        v72 = xpc_connection_copy_entitlement_value();
        if ((NEGetEntitlement() & 3) != 0)
        {
          v74 = [LSPlugInKitProxy pluginKitProxyForIdentifier:objc_getProperty(self, v73, 32, 1)];
          v75 = v74;
          if (v74)
          {
            protocol = [v74 protocol];
            v77 = ([protocol isEqualToString:@"com.apple.networkextension.app-proxy"] & 1) != 0 || objc_msgSend(protocol, "isEqualToString:", @"com.apple.networkextension.packet-tunnel");
          }

          else
          {
            v77 = 0;
          }
        }

        else
        {
          v77 = 0;
        }

        v55 = ne_log_obj();
        v81 = os_log_type_enabled(v55, OS_LOG_TYPE_INFO);
        if (!v77)
        {
          if (v81)
          {
            v84 = objc_opt_class();
            v85 = self->_bundleID;
            *buf = 138412546;
            *&buf[4] = v84;
            *&buf[12] = 2112;
            *&buf[14] = v85;
            v86 = v84;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "%@ [%@] is not a VPN provider", buf, 0x16u);
          }

          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_100009BB4;
          *&buf[24] = &unk_10003D360;
          selfCopy = self;
          v94 = v11;
          v95 = v28;
          v87 = buf;
          v88 = +[NEConfigurationManager sharedManagerForAllUsers];
          queue = self->_queue;
          *v96 = _NSConcreteStackBlock;
          *&v96[8] = 3221225472;
          *&v96[16] = sub_10000A1C0;
          *&v96[24] = &unk_10003CE10;
          selfCopy2 = self;
          v90 = v87;
          v98 = v90;
          [v88 loadConfigurations:0 withFilter:0 completionQueue:queue completionHandler:v96];

          goto LABEL_84;
        }

        if (!v81)
        {
          goto LABEL_82;
        }

        v82 = objc_opt_class();
        v83 = self->_bundleID;
        *buf = 138412546;
        *&buf[4] = v82;
        *&buf[12] = 2112;
        *&buf[14] = v83;
        v59 = v82;
        v60 = "%@ [%@] is a VPN provider";
        goto LABEL_81;
      }

      if (v66)
      {
        v67 = objc_opt_class();
        v68 = self->_bundleID;
        *buf = 138412546;
        *&buf[4] = v67;
        *&buf[12] = 2112;
        *&buf[14] = v68;
        v59 = v67;
        v60 = "%@ [%@] has configured the current network";
        goto LABEL_81;
      }
    }

LABEL_82:

    goto LABEL_83;
  }

LABEL_85:
}

- (void)dealloc
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@ dealloc()", buf, 0xCu);
  }

  myCFRelease();
  v5.receiver = self;
  v5.super_class = NEHelperWiFiInfoManager;
  [(NEHelperWiFiInfoManager *)&v5 dealloc];
}

- (OS_dispatch_queue)handlerQueue
{
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
    v2 = vars8;
  }

  return self;
}

- (NEHelperWiFiInfoManager)initWithFirstMessage:(id)message
{
  messageCopy = message;
  v19.receiver = self;
  v19.super_class = NEHelperWiFiInfoManager;
  v5 = [(NEHelperWiFiInfoManager *)&v19 init];
  if (v5)
  {
    v6 = NECopySigningIdentifierForXPCMessage();
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("NEHelperWiFiInfoManagerMainTaskQueue", v8);
    queue = v5->_queue;
    v5->_queue = v9;

    v11 = xpc_dictionary_get_remote_connection(messageCopy);
    connection = v5->_connection;
    v5->_connection = v11;

    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = v5->_bundleID;
      *buf = 138412546;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@ Created new WiFi Info Helper delegate for [%@]", buf, 0x16u);
    }

    v17 = v5;
  }

  return v5;
}

@end