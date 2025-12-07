@interface TVRViewServiceConfigContext
- (NSDictionary)userInfo;
- (TVRViewServiceConfigContext)initWithDeviceIdentifier:(id)identifier identifierType:(int64_t)type deviceType:(int64_t)deviceType launchContext:(int64_t)context launchMethod:(int64_t)method;
- (id)_initWithLaunchContext:(int64_t)context;
- (id)_initWithUserInfo:(id)info;
- (id)description;
@end

@implementation TVRViewServiceConfigContext

- (id)_initWithLaunchContext:(int64_t)context
{
  v7.receiver = self;
  v7.super_class = TVRViewServiceConfigContext;
  v4 = [(TVRViewServiceConfigContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TVRViewServiceConfigContext *)v4 _commonInit];
    v5->_deviceIdentifierType = TVRViewServiceDeviceIdentifierTypeNone;
    v5->_deviceType = 0;
    v5->_launchContext = context;
    v5->_launchMethod = 1;
  }

  return v5;
}

- (id)_initWithUserInfo:(id)info
{
  v41 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v38.receiver = self;
  v38.super_class = TVRViewServiceConfigContext;
  v5 = [(TVRViewServiceConfigContext *)&v38 init];
  v6 = v5;
  if (v5)
  {
    [(TVRViewServiceConfigContext *)v5 _commonInit];
    v7 = [infoCopy objectForKeyedSubscript:@"deviceIdentifier"];
    deviceIdentifier = v6->_deviceIdentifier;
    v6->_deviceIdentifier = v7;

    v10 = _TVRUIViewServiceLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v6->_deviceIdentifier;
      *buf = 138412290;
      v40 = v11;
      _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "Received device id %@", buf, 0xCu);
    }

    v12 = [infoCopy objectForKeyedSubscript:@"deviceIdentifierType"];
    integerValue = [v12 integerValue];
    v6->_deviceIdentifierType = integerValue;
    v14 = _TVRUIViewServiceLog(integerValue);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      deviceIdentifierType = v6->_deviceIdentifierType;
      *buf = 134217984;
      v40 = deviceIdentifierType;
      _os_log_impl(&dword_26CFEB000, v14, OS_LOG_TYPE_DEFAULT, "Received device id type %ld", buf, 0xCu);
    }

    v16 = [infoCopy objectForKeyedSubscript:@"deviceType"];
    integerValue2 = [v16 integerValue];
    v6->_deviceType = integerValue2;
    v18 = _TVRUIViewServiceLog(integerValue2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      deviceType = v6->_deviceType;
      *buf = 134217984;
      v40 = deviceType;
      _os_log_impl(&dword_26CFEB000, v18, OS_LOG_TYPE_DEFAULT, "Received device type %ld", buf, 0xCu);
    }

    v20 = [infoCopy objectForKeyedSubscript:@"launchContext"];
    integerValue3 = [v20 integerValue];
    v6->_launchContext = integerValue3;
    v22 = _TVRUIViewServiceLog(integerValue3);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      launchContext = v6->_launchContext;
      *buf = 134217984;
      v40 = launchContext;
      _os_log_impl(&dword_26CFEB000, v22, OS_LOG_TYPE_DEFAULT, "Received lauch context %ld", buf, 0xCu);
    }

    v24 = [infoCopy objectForKeyedSubscript:@"dismissalType"];
    unsignedIntegerValue = [v24 unsignedIntegerValue];
    v6->_dismissalType = unsignedIntegerValue;
    v26 = _TVRUIViewServiceLog(unsignedIntegerValue);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      dismissalType = v6->_dismissalType;
      *buf = 134217984;
      v40 = dismissalType;
      _os_log_impl(&dword_26CFEB000, v26, OS_LOG_TYPE_DEFAULT, "Received dismissal type %ld", buf, 0xCu);
    }

    v28 = [infoCopy objectForKeyedSubscript:@"lastActiveIdentifier"];
    lastActiveEndpointIdentifier = v6->_lastActiveEndpointIdentifier;
    v6->_lastActiveEndpointIdentifier = v28;

    v31 = _TVRUIViewServiceLog(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v6->_lastActiveEndpointIdentifier;
      *buf = 138412290;
      v40 = v32;
      _os_log_impl(&dword_26CFEB000, v31, OS_LOG_TYPE_DEFAULT, "Received last active endpoint id %@", buf, 0xCu);
    }

    v33 = [infoCopy objectForKeyedSubscript:@"launchMethod"];
    integerValue4 = [v33 integerValue];
    v6->_launchMethod = integerValue4;
    v35 = _TVRUIViewServiceLog(integerValue4);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      launchMethod = v6->_launchMethod;
      *buf = 134217984;
      v40 = launchMethod;
      _os_log_impl(&dword_26CFEB000, v35, OS_LOG_TYPE_DEFAULT, "Received launch method %ld", buf, 0xCu);
    }
  }

  return v6;
}

- (TVRViewServiceConfigContext)initWithDeviceIdentifier:(id)identifier identifierType:(int64_t)type deviceType:(int64_t)deviceType launchContext:(int64_t)context launchMethod:(int64_t)method
{
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = TVRViewServiceConfigContext;
  v13 = [(TVRViewServiceConfigContext *)&v18 init];
  v14 = v13;
  if (v13)
  {
    [(TVRViewServiceConfigContext *)v13 _commonInit];
    v15 = [identifierCopy copy];
    deviceIdentifier = v14->_deviceIdentifier;
    v14->_deviceIdentifier = v15;

    v14->_deviceIdentifierType = type;
    v14->_deviceType = deviceType;
    v14->_launchContext = context;
    v14->_launchMethod = method;
  }

  return v14;
}

- (NSDictionary)userInfo
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  deviceIdentifier = [(TVRViewServiceConfigContext *)self deviceIdentifier];
  v5 = [deviceIdentifier length];

  if (v5)
  {
    deviceIdentifier2 = [(TVRViewServiceConfigContext *)self deviceIdentifier];
    [dictionary setObject:deviceIdentifier2 forKeyedSubscript:@"deviceIdentifier"];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TVRViewServiceConfigContext deviceIdentifierType](self, "deviceIdentifierType")}];
  [dictionary setObject:v7 forKeyedSubscript:@"deviceIdentifierType"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TVRViewServiceConfigContext deviceType](self, "deviceType")}];
  [dictionary setObject:v8 forKeyedSubscript:@"deviceType"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TVRViewServiceConfigContext launchContext](self, "launchContext")}];
  [dictionary setObject:v9 forKeyedSubscript:@"launchContext"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TVRViewServiceConfigContext dismissalType](self, "dismissalType")}];
  [dictionary setObject:v10 forKeyedSubscript:@"dismissalType"];

  lastActiveEndpointIdentifier = [(TVRViewServiceConfigContext *)self lastActiveEndpointIdentifier];

  if (lastActiveEndpointIdentifier)
  {
    lastActiveEndpointIdentifier2 = [(TVRViewServiceConfigContext *)self lastActiveEndpointIdentifier];
    [dictionary setObject:lastActiveEndpointIdentifier2 forKeyedSubscript:@"lastActiveIdentifier"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TVRViewServiceConfigContext launchMethod](self, "launchMethod")}];
  [dictionary setObject:v13 forKeyedSubscript:@"launchMethod"];

  v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

  return v14;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  userInfo = [(TVRViewServiceConfigContext *)self userInfo];
  v4 = [v2 stringWithFormat:@"%@", userInfo];

  return v4;
}

@end