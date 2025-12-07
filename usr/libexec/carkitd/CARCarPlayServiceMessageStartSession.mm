@interface CARCarPlayServiceMessageStartSession
- (CARCarPlayServiceMessageStartSession)initWithDictionaryRepresentation:(id)representation;
- (CARCarPlayServiceMessageStartSession)initWithSSID:(id)d passphrase:(id)passphrase channel:(id)channel securityType:(id)type wirelessIPs:(id)ps wiredIPs:(id)iPs port:(id)port deviceID:(id)self0 publicKey:(id)self1 sourceVersion:(id)self2 sdkVersion:(id)self3 assetIdentifier:(id)self4 assetVersion:(id)self5;
- (NSString)description;
- (id)dictionaryRepresentation;
@end

@implementation CARCarPlayServiceMessageStartSession

- (CARCarPlayServiceMessageStartSession)initWithSSID:(id)d passphrase:(id)passphrase channel:(id)channel securityType:(id)type wirelessIPs:(id)ps wiredIPs:(id)iPs port:(id)port deviceID:(id)self0 publicKey:(id)self1 sourceVersion:(id)self2 sdkVersion:(id)self3 assetIdentifier:(id)self4 assetVersion:(id)self5
{
  dCopy = d;
  passphraseCopy = passphrase;
  passphraseCopy2 = passphrase;
  channelCopy = channel;
  channelCopy2 = channel;
  typeCopy = type;
  typeCopy2 = type;
  psCopy = ps;
  psCopy2 = ps;
  iPsCopy = iPs;
  portCopy = port;
  iDCopy = iD;
  keyCopy = key;
  versionCopy = version;
  sdkVersionCopy = sdkVersion;
  identifierCopy = identifier;
  assetVersionCopy = assetVersion;
  v42.receiver = self;
  v42.super_class = CARCarPlayServiceMessageStartSession;
  v25 = [(CARCarPlayServiceMessageStartSession *)&v42 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_SSID, d);
    objc_storeStrong(&v26->_passphrase, passphraseCopy);
    objc_storeStrong(&v26->_channel, channelCopy);
    objc_storeStrong(&v26->_securityType, typeCopy);
    objc_storeStrong(&v26->_wirelessIPs, psCopy);
    objc_storeStrong(&v26->_wiredIPs, iPs);
    objc_storeStrong(&v26->_port, port);
    objc_storeStrong(&v26->_deviceID, iD);
    objc_storeStrong(&v26->_publicKey, key);
    objc_storeStrong(&v26->_sourceVersion, version);
    objc_storeStrong(&v26->_sdkVersion, sdkVersion);
    objc_storeStrong(&v26->_assetIdentifier, identifier);
    objc_storeStrong(&v26->_assetVersion, assetVersion);
  }

  return v26;
}

- (NSString)description
{
  v19.receiver = self;
  v19.super_class = CARCarPlayServiceMessageStartSession;
  v18 = [(CARCarPlayServiceMessageStartSession *)&v19 description];
  sSID = [(CARCarPlayServiceMessageStartSession *)self SSID];
  passphrase = [(CARCarPlayServiceMessageStartSession *)self passphrase];
  channel = [(CARCarPlayServiceMessageStartSession *)self channel];
  securityType = [(CARCarPlayServiceMessageStartSession *)self securityType];
  wirelessIPs = [(CARCarPlayServiceMessageStartSession *)self wirelessIPs];
  wiredIPs = [(CARCarPlayServiceMessageStartSession *)self wiredIPs];
  port = [(CARCarPlayServiceMessageStartSession *)self port];
  deviceID = [(CARCarPlayServiceMessageStartSession *)self deviceID];
  publicKey = [(CARCarPlayServiceMessageStartSession *)self publicKey];
  sourceVersion = [(CARCarPlayServiceMessageStartSession *)self sourceVersion];
  sdkVersion = [(CARCarPlayServiceMessageStartSession *)self sdkVersion];
  assetIdentifier = [(CARCarPlayServiceMessageStartSession *)self assetIdentifier];
  assetVersion = [(CARCarPlayServiceMessageStartSession *)self assetVersion];
  v15 = [NSString stringWithFormat:@"%@ {ssid: %@, pass: %@, channel: %@, security: %@, wirelessIPs: %@, wiredIPs: %@, port: %@, deviceID: %@, publicKey: %@, srcVersion: %@, sdkVersion: %@, assetID: %@, assetVersion: %@}", v18, sSID, passphrase, channel, securityType, wirelessIPs, wiredIPs, port, deviceID, publicKey, sourceVersion, sdkVersion, assetIdentifier, assetVersion];

  return v15;
}

- (CARCarPlayServiceMessageStartSession)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  if (representationCopy)
  {
    objc_opt_class();
    v5 = [representationCopy objectForKey:@"wireless"];
    if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      v8 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100085860();
      }

      selfCopy = 0;
      goto LABEL_127;
    }

    objc_opt_class();
    v7 = [v6 objectForKey:@"SSID"];
    if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      v11 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100085DD0();
      }

      selfCopy = 0;
      goto LABEL_126;
    }

    objc_opt_class();
    v10 = [v6 objectForKey:@"passphrase"];
    if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v13 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100085D5C();
      }

      selfCopy = 0;
      goto LABEL_125;
    }

    objc_opt_class();
    v12 = [v6 objectForKey:@"channel"];
    if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      v15 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100085CE8();
      }

      selfCopy = 0;
      goto LABEL_124;
    }

    objc_opt_class();
    v14 = [v6 objectForKey:@"securityType"];
    if (v14 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      objc_opt_class();
      v16 = [v6 objectForKey:@"ipAddresses"];
      if (v16 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        v72 = v15;
        v73 = v13;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        obj = v17;
        v18 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v80;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v80 != v20)
              {
                objc_enumerationMutation(obj);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v17 = obj;

                selfCopy = 0;
                v15 = v72;
                v13 = v73;
                goto LABEL_123;
              }
            }

            v19 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        objc_opt_class();
        v22 = [representationCopy objectForKey:@"wired"];
        if (v22 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        objc_opt_class();
        v25 = [v23 objectForKey:@"ipAddresses"];
        if (v25 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        v70 = v26;
        v71 = v23;
        if (!v26 && v23)
        {
          v27 = sub_100002A68(2uLL);
          v15 = v72;
          v13 = v73;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_100085C00();
          }

          selfCopy = 0;
          v17 = obj;
          goto LABEL_121;
        }

        v69 = v11;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v28 = v26;
        v29 = [v28 countByEnumeratingWithState:&v75 objects:v83 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v76;
          while (2)
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v76 != v31)
              {
                objc_enumerationMutation(v28);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                selfCopy = 0;
                v27 = v28;
                v15 = v72;
                v13 = v73;
                v17 = obj;
                v11 = v69;
                goto LABEL_121;
              }
            }

            v30 = [v28 countByEnumeratingWithState:&v75 objects:v83 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }
        }

        if (v71 && ![v28 count])
        {
          selfCopy = 0;
          v15 = v72;
          v13 = v73;
          v17 = obj;
          v11 = v69;
LABEL_122:

          goto LABEL_123;
        }

        v64 = v28;
        v33 = objc_opt_class();
        v34 = [representationCopy objectForKey:@"port"];
        v35 = sub_10003821C(v33, v34);

        v27 = v35;
        v13 = v73;
        v11 = v69;
        if (!v35)
        {
          v68 = sub_100002A68(2uLL);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            sub_100085B8C();
          }

          selfCopy = 0;
          v15 = v72;
          v17 = obj;
          goto LABEL_120;
        }

        v66 = v35;
        v36 = objc_opt_class();
        v37 = [representationCopy objectForKey:@"deviceID"];
        v38 = sub_10003821C(v36, v37);

        v68 = v38;
        if (!v38)
        {
          v67 = sub_100002A68(2uLL);
          v15 = v72;
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            sub_100085B18();
          }

          selfCopy = 0;
          v17 = obj;
          v27 = v66;
          goto LABEL_119;
        }

        v39 = objc_opt_class();
        v40 = [representationCopy objectForKey:@"publicKey"];
        v41 = sub_10003821C(v39, v40);

        v67 = v41;
        if (!v41)
        {
          v63 = sub_100002A68(2uLL);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            sub_100085AA4();
          }

          selfCopy = 0;
          v15 = v72;
          v17 = obj;
          v27 = v66;
          goto LABEL_118;
        }

        v42 = objc_opt_class();
        v43 = [representationCopy objectForKey:@"sourceVersion"];
        v44 = sub_10003821C(v42, v43);

        v63 = v44;
        if (!v44)
        {
          v62 = sub_100002A68(2uLL);
          v15 = v72;
          v17 = obj;
          v27 = v66;
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            sub_100085A30();
          }

          selfCopy = 0;
          goto LABEL_117;
        }

        v45 = objc_opt_class();
        v46 = [representationCopy objectForKey:@"sdkVersion"];
        v47 = sub_10003821C(v45, v46);

        v62 = v47;
        if (!v47)
        {
          v61 = sub_100002A68(2uLL);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            sub_1000859BC();
          }

          selfCopy = 0;
          v15 = v72;
          v17 = obj;
          v27 = v66;
          goto LABEL_116;
        }

        v48 = objc_opt_class();
        v49 = [representationCopy objectForKey:@"asset"];
        v50 = sub_10003821C(v48, v49);

        v61 = v50;
        if (v50)
        {
          v51 = objc_opt_class();
          v52 = [v50 objectForKey:@"id"];
          v53 = sub_10003821C(v51, v52);

          v60 = v53;
          if (!v53)
          {
            v60 = sub_100002A68(2uLL);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              sub_100085948();
            }

            selfCopy = 0;
            v15 = v72;
            v13 = v73;
            v17 = obj;
            v27 = v66;
            v11 = v69;
            goto LABEL_115;
          }

          v54 = objc_opt_class();
          v55 = [v50 objectForKey:@"version"];
          v56 = sub_10003821C(v54, v55);

          if (!v56)
          {
            v65 = sub_100002A68(2uLL);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              sub_1000858D4();
              v58 = v65;
              selfCopy = 0;
              v15 = v72;
              v13 = v73;
              v17 = obj;
              v27 = v66;
            }

            else
            {
              selfCopy = 0;
              v15 = v72;
              v13 = v73;
              v17 = obj;
              v58 = v65;
              v27 = v66;
            }

            v11 = v69;
            goto LABEL_111;
          }

          v15 = v72;
          v17 = obj;
          v27 = v66;
          v57 = v60;
        }

        else
        {
          v57 = 0;
          v56 = 0;
          v15 = v72;
          v17 = obj;
          v27 = v66;
        }

        v60 = v57;
        self = [(CARCarPlayServiceMessageStartSession *)self initWithSSID:v8 passphrase:v69 channel:v73 securityType:v15 wirelessIPs:v17 wiredIPs:v64 port:v27 deviceID:v68 publicKey:v67 sourceVersion:v63 sdkVersion:v62 assetIdentifier:v57 assetVersion:v56];
        v58 = v56;
        selfCopy = self;
LABEL_111:

LABEL_115:
LABEL_116:

LABEL_117:
LABEL_118:

LABEL_119:
LABEL_120:

LABEL_121:
        goto LABEL_122;
      }

      v24 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100085C00();
      }
    }

    else
    {
      v17 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100085C74();
      }
    }

    selfCopy = 0;
LABEL_123:

LABEL_124:
LABEL_125:

LABEL_126:
LABEL_127:

    goto LABEL_128;
  }

  selfCopy = 0;
LABEL_128:

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[NSMutableDictionary dictionary];
  sSID = [(CARCarPlayServiceMessageStartSession *)self SSID];
  [v4 cr_setSafeObject:sSID forKey:@"SSID"];

  passphrase = [(CARCarPlayServiceMessageStartSession *)self passphrase];
  [v4 cr_setSafeObject:passphrase forKey:@"passphrase"];

  channel = [(CARCarPlayServiceMessageStartSession *)self channel];
  [v4 cr_setSafeObject:channel forKey:@"channel"];

  securityType = [(CARCarPlayServiceMessageStartSession *)self securityType];
  [v4 cr_setSafeObject:securityType forKey:@"securityType"];

  wirelessIPs = [(CARCarPlayServiceMessageStartSession *)self wirelessIPs];
  [v4 cr_setSafeObject:wirelessIPs forKey:@"ipAddresses"];

  [v3 setObject:v4 forKey:@"wireless"];
  wiredIPs = [(CARCarPlayServiceMessageStartSession *)self wiredIPs];
  v11 = wiredIPs;
  if (wiredIPs)
  {
    v23 = @"ipAddresses";
    v24 = wiredIPs;
    v12 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [v3 setObject:v12 forKey:@"wired"];
  }

  port = [(CARCarPlayServiceMessageStartSession *)self port];
  [v3 cr_setSafeObject:port forKey:@"port"];

  deviceID = [(CARCarPlayServiceMessageStartSession *)self deviceID];
  [v3 cr_setSafeObject:deviceID forKey:@"deviceID"];

  publicKey = [(CARCarPlayServiceMessageStartSession *)self publicKey];
  [v3 cr_setSafeObject:publicKey forKey:@"publicKey"];

  sourceVersion = [(CARCarPlayServiceMessageStartSession *)self sourceVersion];
  [v3 cr_setSafeObject:sourceVersion forKey:@"sourceVersion"];

  sdkVersion = [(CARCarPlayServiceMessageStartSession *)self sdkVersion];
  [v3 cr_setSafeObject:sdkVersion forKey:@"sdkVersion"];

  assetIdentifier = [(CARCarPlayServiceMessageStartSession *)self assetIdentifier];
  assetVersion = [(CARCarPlayServiceMessageStartSession *)self assetVersion];
  v20 = assetVersion;
  if (assetIdentifier && assetVersion)
  {
    v21 = +[NSMutableDictionary dictionary];
    [v21 setObject:assetIdentifier forKey:@"id"];
    [v21 setObject:v20 forKey:@"version"];
    [v3 setObject:v21 forKey:@"asset"];
  }

  return v3;
}

@end