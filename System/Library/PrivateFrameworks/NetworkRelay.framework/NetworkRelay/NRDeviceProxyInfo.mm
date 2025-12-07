@interface NRDeviceProxyInfo
- (BOOL)isEqual:(id)equal;
- (NRDeviceProxyInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRDeviceProxyInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      proxyProviderType = [(NRDeviceProxyInfo *)self proxyProviderType];
      if (proxyProviderType != [v5 proxyProviderType])
      {
        goto LABEL_26;
      }

      httpConnectURLs = [(NRDeviceProxyInfo *)self httpConnectURLs];
      if (httpConnectURLs)
      {
      }

      else
      {
        httpConnectURLs2 = [v5 httpConnectURLs];

        if (!httpConnectURLs2)
        {
          goto LABEL_9;
        }
      }

      httpConnectURLs3 = [(NRDeviceProxyInfo *)self httpConnectURLs];
      httpConnectURLs4 = [v5 httpConnectURLs];
      v12 = [httpConnectURLs3 isEqual:httpConnectURLs4];

      if (!v12)
      {
        goto LABEL_26;
      }

LABEL_9:
      httpConnectUserName = [(NRDeviceProxyInfo *)self httpConnectUserName];
      if (httpConnectUserName)
      {
      }

      else
      {
        httpConnectUserName2 = [v5 httpConnectUserName];

        if (!httpConnectUserName2)
        {
          goto LABEL_13;
        }
      }

      httpConnectUserName3 = [(NRDeviceProxyInfo *)self httpConnectUserName];
      httpConnectUserName4 = [v5 httpConnectUserName];
      v17 = [httpConnectUserName3 isEqual:httpConnectUserName4];

      if (!v17)
      {
        goto LABEL_26;
      }

LABEL_13:
      httpConnectPassword = [(NRDeviceProxyInfo *)self httpConnectPassword];
      if (httpConnectPassword)
      {
      }

      else
      {
        httpConnectPassword2 = [v5 httpConnectPassword];

        if (!httpConnectPassword2)
        {
          goto LABEL_17;
        }
      }

      httpConnectPassword3 = [(NRDeviceProxyInfo *)self httpConnectPassword];
      httpConnectPassword4 = [v5 httpConnectPassword];
      v22 = [httpConnectPassword3 isEqual:httpConnectPassword4];

      if (!v22)
      {
        goto LABEL_26;
      }

LABEL_17:
      httpConnectPSKIdentity = [(NRDeviceProxyInfo *)self httpConnectPSKIdentity];
      if (httpConnectPSKIdentity)
      {
      }

      else
      {
        httpConnectPSKIdentity2 = [v5 httpConnectPSKIdentity];

        if (!httpConnectPSKIdentity2)
        {
LABEL_21:
          httpConnectPSK = [(NRDeviceProxyInfo *)self httpConnectPSK];
          if (httpConnectPSK)
          {
          }

          else
          {
            httpConnectPSK2 = [v5 httpConnectPSK];

            if (!httpConnectPSK2)
            {
LABEL_25:
              v8 = 1;
LABEL_27:

              goto LABEL_28;
            }
          }

          httpConnectPSK3 = [(NRDeviceProxyInfo *)self httpConnectPSK];
          httpConnectPSK4 = [v5 httpConnectPSK];
          v32 = [httpConnectPSK3 isEqual:httpConnectPSK4];

          if (v32)
          {
            goto LABEL_25;
          }

LABEL_26:
          v8 = 0;
          goto LABEL_27;
        }
      }

      httpConnectPSKIdentity3 = [(NRDeviceProxyInfo *)self httpConnectPSKIdentity];
      httpConnectPSKIdentity4 = [v5 httpConnectPSKIdentity];
      v27 = [httpConnectPSKIdentity3 isEqual:httpConnectPSKIdentity4];

      if (!v27)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }
  }

  v8 = 0;
LABEL_28:

  return v8;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"NRDeviceProxyInfo["];
  if (_NRIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&_NRIsAppleInternal_onceToken, &__block_literal_global_435);
  }

  if (_NRIsAppleInternal_internal == 1)
  {
    proxyProviderType = self->_proxyProviderType;
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    if (proxyProviderType > 1)
    {
      if (proxyProviderType == 2)
      {
        v6 = "SHOES";
        goto LABEL_14;
      }

      if (proxyProviderType == 3)
      {
        v6 = "HTTPConnect";
        goto LABEL_14;
      }
    }

    else
    {
      if (!proxyProviderType)
      {
        v6 = "Default";
        goto LABEL_14;
      }

      if (proxyProviderType == 1)
      {
        v6 = "MASQUE";
LABEL_14:
        proxyProviderType = [v5 initWithUTF8String:v6];
        goto LABEL_15;
      }
    }

    proxyProviderType = [v5 initWithFormat:@"Unknown(%llu)", proxyProviderType];
LABEL_15:
    v8 = proxyProviderType;
    [v3 appendFormat:@"type:%@, ", proxyProviderType];

    if (self->_httpConnectURLs)
    {
      [v3 appendFormat:@"urls:%@, ", self->_httpConnectURLs];
    }

    if (self->_httpConnectUserName)
    {
      [v3 appendFormat:@"username:%@, ", self->_httpConnectUserName];
    }

    if (self->_httpConnectPSKIdentity)
    {
      [v3 appendFormat:@"identity:%@, ", self->_httpConnectPSKIdentity];
    }

    httpConnectPSK = self->_httpConnectPSK;
    if (httpConnectPSK)
    {
      LogString = _NRKeyCreateLogString(httpConnectPSK);
      [v3 appendFormat:@"psk: %@, ", LogString];
    }

    httpConnectPassword = self->_httpConnectPassword;
    if (httpConnectPassword)
    {
      v12 = [(NSString *)httpConnectPassword dataUsingEncoding:4];
      v13 = _NRKeyCreateLogString(v12);
      [v3 appendFormat:@"password: %@ ", v13];
    }
  }

  [v3 appendString:@"]"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[NRDeviceProxyInfo proxyProviderType](self forKey:{"proxyProviderType"), @"proxyProviderType"}];
  httpConnectURLs = [(NRDeviceProxyInfo *)self httpConnectURLs];
  [coderCopy encodeObject:httpConnectURLs forKey:@"httpConnectURLs"];

  httpConnectPSKIdentity = [(NRDeviceProxyInfo *)self httpConnectPSKIdentity];
  [coderCopy encodeObject:httpConnectPSKIdentity forKey:@"httpConnectPSKIdentity"];

  httpConnectPSK = [(NRDeviceProxyInfo *)self httpConnectPSK];
  [coderCopy encodeObject:httpConnectPSK forKey:@"httpConnectPSK"];

  httpConnectUserName = [(NRDeviceProxyInfo *)self httpConnectUserName];
  [coderCopy encodeObject:httpConnectUserName forKey:@"httpConnectUserName"];

  httpConnectPassword = [(NRDeviceProxyInfo *)self httpConnectPassword];
  [coderCopy encodeObject:httpConnectPassword forKey:@"httpConnectPassword"];
}

- (NRDeviceProxyInfo)initWithCoder:(id)coder
{
  v25 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = NRDeviceProxyInfo;
  v5 = [(NRDeviceProxyInfo *)&v24 init];
  if (!v5)
  {
    v13 = nrCopyLogObj_966();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v14 = v13;
      v15 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

      if (!v15)
      {
        goto LABEL_7;
      }
    }

    v16 = nrCopyLogObj_966();
    _NRLogWithArgs(v16, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDeviceProxyInfo initWithCoder:]"", 36);

LABEL_7:
    v17 = _os_log_pack_size();
    v19 = &v23 - ((MEMORY[0x28223BE20](v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = __error();
    v21 = _os_log_pack_fill(v19, v17, *v20, &dword_25B98C000, "%{public}s [super init] failed");
    *v21 = 136446210;
    *(v21 + 4) = "[NRDeviceProxyInfo initWithCoder:]";
    v22 = nrCopyLogObj_966();
    _NRLogAbortWithPack(v22, v19);
  }

  v6 = v5;
  -[NRDeviceProxyInfo setProxyProviderType:](v5, "setProxyProviderType:", [coderCopy decodeInt64ForKey:@"proxyProviderType"]);
  v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"httpConnectURLs"];
  [(NRDeviceProxyInfo *)v6 setHttpConnectURLs:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"httpConnectPSKIdentity"];
  [(NRDeviceProxyInfo *)v6 setHttpConnectPSKIdentity:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"httpConnectPSK"];
  [(NRDeviceProxyInfo *)v6 setHttpConnectPSK:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"httpConnectUserName"];
  [(NRDeviceProxyInfo *)v6 setHttpConnectUserName:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"httpConnectPassword"];
  [(NRDeviceProxyInfo *)v6 setHttpConnectPassword:v11];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setProxyProviderType:{-[NRDeviceProxyInfo proxyProviderType](self, "proxyProviderType")}];
  httpConnectURLs = [(NRDeviceProxyInfo *)self httpConnectURLs];
  v6 = [httpConnectURLs copy];
  [v4 setHttpConnectURLs:v6];

  httpConnectPSKIdentity = [(NRDeviceProxyInfo *)self httpConnectPSKIdentity];
  v8 = [httpConnectPSKIdentity copy];
  [v4 setHttpConnectPSKIdentity:v8];

  httpConnectPSK = [(NRDeviceProxyInfo *)self httpConnectPSK];
  v10 = [httpConnectPSK copy];
  [v4 setHttpConnectPSK:v10];

  httpConnectUserName = [(NRDeviceProxyInfo *)self httpConnectUserName];
  v12 = [httpConnectUserName copy];
  [v4 setHttpConnectUserName:v12];

  httpConnectPassword = [(NRDeviceProxyInfo *)self httpConnectPassword];
  v14 = [httpConnectPassword copy];
  [v4 setHttpConnectPassword:v14];

  return v4;
}

@end