@interface SOKerberosServer
+ (id)serverWithString:(id)string;
- (SOKerberosServer)initWithHost:(id)host port:(id)port protocol:(id)protocol path:(id)path;
@end

@implementation SOKerberosServer

+ (id)serverWithString:(id)string
{
  lowercaseString = [string lowercaseString];
  if ([lowercaseString hasPrefix:@"tcp/"])
  {
    v4 = @"tcp";
LABEL_5:
    v5 = 4;
    goto LABEL_6;
  }

  if ([lowercaseString hasPrefix:@"udp/"])
  {
    v4 = @"udp";
    goto LABEL_5;
  }

  if ([lowercaseString hasPrefix:@"http://"])
  {
    v4 = @"http";
    v5 = 7;
    goto LABEL_6;
  }

  if ([lowercaseString hasPrefix:@"http/"])
  {
    v4 = @"http";
    v5 = 5;
    goto LABEL_6;
  }

  if ([lowercaseString hasPrefix:@"kkdcp://"])
  {
    v4 = @"kkdcp";
    v5 = 8;
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  v17 = 0;
  if (([lowercaseString containsString:@"://"] & 1) == 0)
  {
LABEL_6:
    v6 = [lowercaseString length];
    if (v6 <= v5)
    {
      host5 = SO_LOG_SOKerberosServer(v6);
      if (os_log_type_enabled(host5, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosServer serverWithString:host5];
      }

      v17 = 0;
      goto LABEL_38;
    }

    v54 = v4;
    v7 = [lowercaseString substringFromIndex:v5];
    v8 = objc_alloc(MEMORY[0x277CCACE0]);
    v9 = [@"host://" stringByAppendingString:v7];
    v10 = [v8 initWithString:v9];

    host = [v10 host];
    if ([host hasPrefix:@"["])
    {
      host2 = [v10 host];
      v13 = [host2 hasSuffix:@"]"];

      if (v13)
      {
        host3 = [v10 host];
        host4 = [v10 host];
        host5 = [host3 substringWithRange:{1, objc_msgSend(host4, "length") - 2}];

        goto LABEL_17;
      }
    }

    else
    {
    }

    host5 = [v10 host];
LABEL_17:
    port = [v10 port];
    stringValue = [port stringValue];

    path = [v10 path];
    if ([path isEqualToString:&stru_285206D08])
    {
      path2 = 0;
    }

    else
    {
      path2 = [v10 path];
    }

    uRLHostAllowedCharacterSet = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
    invertedSet = [uRLHostAllowedCharacterSet invertedSet];
    v24 = [host5 rangeOfCharacterFromSet:invertedSet];

    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (stringValue && ([MEMORY[0x277CCA900] decimalDigitCharacterSet], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "invertedSet"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(stringValue, "rangeOfCharacterFromSet:", v27), v27, v26, v28 != 0x7FFFFFFFFFFFFFFFLL))
      {
        v34 = SO_LOG_SOKerberosServer(v29);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [(SOKerberosServer *)stringValue serverWithString:v34, v41, v42, v43, v44, v45, v46];
        }
      }

      else
      {
        if (!path2 || ([MEMORY[0x277CCA900] URLPathAllowedCharacterSet], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "invertedSet"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(path2, "rangeOfCharacterFromSet:", v31), v31, v30, v32 == 0x7FFFFFFFFFFFFFFFLL))
        {
          v17 = [[SOKerberosServer alloc] initWithHost:host5 port:stringValue protocol:v54 path:path2];
LABEL_37:

LABEL_38:
          goto LABEL_39;
        }

        v34 = SO_LOG_SOKerberosServer(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [(SOKerberosServer *)path2 serverWithString:v34, v47, v48, v49, v50, v51, v52];
        }
      }
    }

    else
    {
      v34 = SO_LOG_SOKerberosServer(v25);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [(SOKerberosServer *)host5 serverWithString:v34, v35, v36, v37, v38, v39, v40];
      }
    }

    v17 = 0;
    goto LABEL_37;
  }

LABEL_39:

  return v17;
}

- (SOKerberosServer)initWithHost:(id)host port:(id)port protocol:(id)protocol path:(id)path
{
  hostCopy = host;
  portCopy = port;
  protocolCopy = protocol;
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = SOKerberosServer;
  v15 = [(SOKerberosServer *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_host, host);
    objc_storeStrong(&v16->_port, port);
    objc_storeStrong(&v16->_protocol, protocol);
    objc_storeStrong(&v16->_path, path);
  }

  return v16;
}

+ (void)serverWithString:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_1(&dword_24006C000, a2, a3, "host contains invalid characters: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)serverWithString:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_1(&dword_24006C000, a2, a3, "port contains invalid characters: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)serverWithString:(uint64_t)a3 .cold.4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_1(&dword_24006C000, a2, a3, "path contains invalid characters: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end