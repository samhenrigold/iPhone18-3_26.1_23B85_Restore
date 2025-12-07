@interface NetworkQualityRemoteConfiguration
- (NetworkQualityRemoteConfiguration)initWithData:(id)data andConfig:(id)config;
- (NetworkQualityRemoteConfiguration)initWithDictionary:(id)dictionary andConfig:(id)config;
- (id)URLForURLType:(int)type;
- (id)portForURLType:(int)type;
- (id)testEndpoint:(int)endpoint;
@end

@implementation NetworkQualityRemoteConfiguration

- (NetworkQualityRemoteConfiguration)initWithData:(id)data andConfig:(id)config
{
  configCopy = config;
  v13 = 0;
  v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:&v13];
  v8 = v13;
  v10 = v8;
  if (v7)
  {
    self = [(NetworkQualityRemoteConfiguration *)self initWithDictionary:v7 andConfig:configCopy];
    selfCopy = self;
  }

  else
  {
    netqual_log_init(v8, v9);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [NetworkQualityRemoteConfiguration initWithData:andConfig:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (NetworkQualityRemoteConfiguration)initWithDictionary:(id)dictionary andConfig:(id)config
{
  v81 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  configCopy = config;
  v72.receiver = self;
  v72.super_class = NetworkQualityRemoteConfiguration;
  v6 = [(NetworkQualityRemoteConfiguration *)&v72 init];
  v62 = v6;
  v8 = v6;
  if (!v6)
  {
    goto LABEL_58;
  }

  netqual_log_init(v6, v7);
  v9 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v76 = "[NetworkQualityRemoteConfiguration initWithDictionary:andConfig:]";
    v77 = 1024;
    v78 = 50;
    v79 = 2112;
    v80 = dictionaryCopy;
    _os_log_impl(&dword_25B962000, v9, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Got configuration: %@", buf, 0x1Cu);
  }

  config = [(NSString *)dictionaryCopy objectForKeyedSubscript:@"version", config];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {

LABEL_33:
    netqual_log_init(isKindOfClass, v11);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [NetworkQualityRemoteConfiguration initWithDictionary:andConfig:];
    }

    goto LABEL_41;
  }

  if (!config)
  {
    goto LABEL_33;
  }

  v12 = [(NSString *)dictionaryCopy objectForKeyedSubscript:@"urls"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v12 = 0;
  }

  if (![v12 count])
  {
    netqual_log_init(0, v13);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [NetworkQualityRemoteConfiguration initWithDictionary:andConfig:];
    }

LABEL_41:
    v37 = 0;
    goto LABEL_59;
  }

  v63 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v14 = [&unk_286D22D40 countByEnumeratingWithState:&v68 objects:v74 count:16];
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = *v69;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v69 != v15)
      {
        objc_enumerationMutation(&unk_286D22D40);
      }

      v17 = *(*(&v68 + 1) + 8 * i);
      v18 = [v12 objectForKeyedSubscript:v17];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!v18)
        {
          continue;
        }

        v19 = [&unk_286D22D40 objectForKeyedSubscript:v17];
        v20 = [MEMORY[0x277CBEBC0] URLWithString:v18];
        [v63 setObject:v20 forKeyedSubscript:v19];
      }
    }

    v14 = [&unk_286D22D40 countByEnumeratingWithState:&v68 objects:v74 count:16];
  }

  while (v14);
LABEL_20:
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v21 = [&unk_286D22D68 countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v21)
  {
    v22 = *v65;
    while (2)
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v65 != v22)
        {
          objc_enumerationMutation(&unk_286D22D68);
        }

        v24 = [v63 objectForKeyedSubscript:*(*(&v64 + 1) + 8 * j)];
        v25 = v24 == 0;

        if (v25)
        {
          netqual_log_init(v26, v27);
          if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
          {
            [NetworkQualityRemoteConfiguration initWithDictionary:andConfig:];
          }

          goto LABEL_41;
        }
      }

      v21 = [&unk_286D22D68 countByEnumeratingWithState:&v64 objects:v73 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  objc_storeStrong(&v62->_urls, v63);
  v28 = [(NSString *)dictionaryCopy objectForKeyedSubscript:@"test_endpoint"];
  objc_opt_class();
  v29 = objc_opt_isKindOfClass();
  if ((v29 & 1) == 0)
  {

LABEL_43:
    netqual_log_init(v29, v30);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
    {
      [NetworkQualityRemoteConfiguration initWithDictionary:andConfig:];
    }

    v38 = MEMORY[0x277CBEBC0];
    configuration = [configCopy configuration];
    v40 = [v38 URLWithString:configuration];

    port = [v40 port];
    v42 = port == 0;

    if (v42)
    {
      scheme = [v40 scheme];
      v47 = [scheme isEqualToString:@"https"];

      if (v47)
      {
        v48 = v62;
        port = v62->_port;
        v49 = @"443";
      }

      else
      {
        scheme2 = [v40 scheme];
        v51 = [scheme2 isEqualToString:@"http"];

        if (!v51)
        {
LABEL_53:

          v28 = 0;
          goto LABEL_54;
        }

        v48 = v62;
        port = v62->_port;
        v49 = @"80";
      }

      v48->_port = &v49->isa;
    }

    else
    {
      port = [v40 port];
      stringValue = [port stringValue];
      v45 = v62->_port;
      v62->_port = stringValue;
    }

    goto LABEL_53;
  }

  if (!v28)
  {
    goto LABEL_43;
  }

  v31 = v62->_port;
  v62->_port = @"443";

  netqual_log_init(v32, v33);
  v34 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
  {
    v35 = v62;
    v36 = v62->_port;
    *buf = 136315650;
    v76 = "[NetworkQualityRemoteConfiguration initWithDictionary:andConfig:]";
    v77 = 1024;
    v78 = 103;
    v79 = 2112;
    v80 = v36;
    _os_log_impl(&dword_25B962000, v34, OS_LOG_TYPE_INFO, "%s:%u - Assuming port %@", buf, 0x1Cu);
    goto LABEL_55;
  }

LABEL_54:
  v35 = v62;
LABEL_55:
  v52 = [(NetworkQualityRemoteConfiguration *)v35 setTestEndpoint:v28];
  netqual_log_init(v52, v53);
  v54 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
  {
    v55 = v54;
    testEndpoint = [(NetworkQualityRemoteConfiguration *)v62 testEndpoint];
    *buf = 136315650;
    v76 = "[NetworkQualityRemoteConfiguration initWithDictionary:andConfig:]";
    v77 = 1024;
    v78 = 107;
    v79 = 2112;
    v80 = testEndpoint;
    _os_log_impl(&dword_25B962000, v55, OS_LOG_TYPE_INFO, "%s:%u - test endpoint: %@", buf, 0x1Cu);
  }

  objc_storeStrong(&v62->_config, obj);

  v8 = v62;
LABEL_58:
  v37 = v8;
LABEL_59:

  return v37;
}

- (id)URLForURLType:(int)type
{
  urls = self->_urls;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&type];
  v5 = [(NSDictionary *)urls objectForKeyedSubscript:v4];

  return v5;
}

- (id)portForURLType:(int)type
{
  if (type > 2)
  {
    v4 = @"0";
  }

  else
  {
    v4 = self->_port;
  }

  return v4;
}

- (id)testEndpoint:(int)endpoint
{
  v3 = *&endpoint;
  if ([(NetworkQualityConfiguration *)self->_config edgeRelay]|| [(NetworkQualityConfiguration *)self->_config edgeRelayRemote])
  {
    goto LABEL_3;
  }

  hostOverride = [(NetworkQualityConfiguration *)self->_config hostOverride];

  if (hostOverride)
  {
    hostOverride2 = [(NetworkQualityConfiguration *)self->_config hostOverride];
  }

  else
  {
    testEndpoint = [(NetworkQualityRemoteConfiguration *)self testEndpoint];

    if (!testEndpoint)
    {
LABEL_3:
      host = 0;
      goto LABEL_9;
    }

    hostOverride2 = [(NetworkQualityRemoteConfiguration *)self testEndpoint];
  }

  v9 = hostOverride2;
  uTF8String = [hostOverride2 UTF8String];
  v11 = [(NetworkQualityRemoteConfiguration *)self portForURLType:v3];
  host = nw_endpoint_create_host(uTF8String, [v11 UTF8String]);

LABEL_9:

  return host;
}

- (void)initWithData:andConfig:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)initWithDictionary:andConfig:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)initWithDictionary:andConfig:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)initWithDictionary:andConfig:.cold.3()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_1();
  *(&v1[3] + 2) = 90;
  _os_log_debug_impl(&dword_25B962000, v0, OS_LOG_TYPE_DEBUG, "%s:%u - server response without test_endpoint specified", v1, 0x12u);
}

- (void)initWithDictionary:andConfig:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)initWithDictionary:andConfig:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end