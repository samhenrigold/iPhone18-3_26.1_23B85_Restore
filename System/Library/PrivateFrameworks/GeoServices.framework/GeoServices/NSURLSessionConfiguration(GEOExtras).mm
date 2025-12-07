@interface NSURLSessionConfiguration(GEOExtras)
- (void)_geo_setTLSMinimumSupportedProtocolVersion;
@end

@implementation NSURLSessionConfiguration(GEOExtras)

- (void)_geo_setTLSMinimumSupportedProtocolVersion
{
  v15 = *MEMORY[0x1E69E9840];
  UInteger = GEOConfigGetUInteger(76, &GeoServicesConfig_MinTLSVersion_Metadata);
  if (!UInteger)
  {
    return;
  }

  v3 = UInteger;
  v4 = BYTE1(UInteger);
  v5 = UInteger;
  if (BYTE1(UInteger) != 1)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v9 = 67109632;
    v10 = v3;
    v11 = 1024;
    v12 = v4;
    v13 = 1024;
    v14 = v5;
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_15;
  }

  if (UInteger == 3)
  {
    selfCopy2 = self;
    v7 = 772;
    goto LABEL_9;
  }

  if (UInteger != 2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v9 = 67109632;
    v10 = v3;
    v11 = 1024;
    v12 = 1;
    v13 = 1024;
    v14 = v5;
    v8 = MEMORY[0x1E69E9C10];
LABEL_15:
    _os_log_fault_impl(&dword_18660C000, v8, OS_LOG_TYPE_FAULT, "Invalid/Unsupported TLS version 0x%x, major: %u minor: %u", &v9, 0x14u);
    return;
  }

  selfCopy2 = self;
  v7 = 771;
LABEL_9:

  [selfCopy2 setTLSMinimumSupportedProtocolVersion:v7];
}

@end