@interface VCDiskUtils
+ (BOOL)checkAttributesForDirectory:(id)directory;
+ (BOOL)createDefaultAttributeDirectoryIfNeeded:(id)needed;
+ (BOOL)createDefaultCacheDirectoryIfNeeded;
+ (BOOL)createDefaultLogDirectoryIfNeeded;
+ (BOOL)setAttributesForDirectory:(id)directory;
+ (id)getDefaultLogDumpPath;
@end

@implementation VCDiskUtils

+ (id)getDefaultLogDumpPath
{
  v2 = +[VCDiskUtils getCachesDirectoryPath];

  return [v2 stringByAppendingString:@"/logs/"];
}

+ (BOOL)createDefaultLogDirectoryIfNeeded
{
  getDefaultLogDumpPath = [self getDefaultLogDumpPath];

  return [self createDefaultAttributeDirectoryIfNeeded:getDefaultLogDumpPath];
}

+ (BOOL)createDefaultCacheDirectoryIfNeeded
{
  getCachesDirectoryPath = [self getCachesDirectoryPath];

  return [self createDefaultAttributeDirectoryIfNeeded:getCachesDirectoryPath];
}

+ (BOOL)createDefaultAttributeDirectoryIfNeeded:(id)needed
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = 0;
  if ([objc_msgSend(MEMORY[0x277CCAA08] "defaultManager")])
  {
    if ((v8 & 1) == 0)
    {
      [VCDiskUtils createDefaultAttributeDirectoryIfNeeded:needed];
      return buf[0];
    }

    if (([self checkAttributesForDirectory:needed] & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR(7u);
        v6 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v10 = v5;
          v11 = 2080;
          v12 = "+[VCDiskUtils createDefaultAttributeDirectoryIfNeeded:]";
          v13 = 1024;
          v14 = 60;
          _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Existing logs directory exists but has invalid attributes", buf, 0x1Cu);
        }
      }

      if (([self setAttributesForDirectory:needed] & 1) == 0)
      {
        +[VCDiskUtils createDefaultAttributeDirectoryIfNeeded:];
        return buf[0];
      }
    }
  }

  else
  {
    if ((VCDiskUtils_CreateDirectory([needed UTF8String]) & 1) == 0)
    {
      +[VCDiskUtils createDefaultAttributeDirectoryIfNeeded:];
      return buf[0];
    }

    if (([self setAttributesForDirectory:needed] & 1) == 0)
    {
      +[VCDiskUtils createDefaultAttributeDirectoryIfNeeded:];
      return buf[0];
    }
  }

  return 1;
}

+ (BOOL)checkAttributesForDirectory:(id)directory
{
  v11 = 0;
  v3 = [objc_msgSend(MEMORY[0x277CCAA08] "defaultManager")];
  if (v11)
  {
    +[VCDiskUtils checkAttributesForDirectory:];
    LOBYTE(v9) = v12;
  }

  else
  {
    v4 = v3;
    v5 = [objc_msgSend(v3 objectForKeyedSubscript:{*MEMORY[0x277CCA188]), "unsignedShortValue"}];
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA168]];
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA128]];
    if (v5 == 493)
    {
      v8 = v7;
      v9 = [v6 isEqualToString:@"mobile"];
      if (v9)
      {
        LOBYTE(v9) = [v8 isEqualToString:@"mobile"];
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

+ (BOOL)setAttributesForDirectory:(id)directory
{
  v9[3] = *MEMORY[0x277D85DE8];
  v9[2] = [MEMORY[0x277CCABA8] numberWithInt:{493, 0, *MEMORY[0x277CCA168], *MEMORY[0x277CCA128], *MEMORY[0x277CCA188], @"mobile", @"mobile"}];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:3];
  v5 = [objc_msgSend(MEMORY[0x277CCAA08] "defaultManager")];
  if ((v5 & 1) == 0)
  {
    +[VCDiskUtils setAttributesForDirectory:];
  }

  return v5;
}

+ (void)createDefaultAttributeDirectoryIfNeeded:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_4_1();
}

+ (void)createDefaultAttributeDirectoryIfNeeded:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_4_1();
}

+ (void)createDefaultAttributeDirectoryIfNeeded:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    v2 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_6_1();
      v4 = 2080;
      v5 = "+[VCDiskUtils createDefaultAttributeDirectoryIfNeeded:]";
      v6 = 1024;
      v7 = 57;
      v8 = 2112;
      v9 = a1;
      _os_log_error_impl(&dword_23D4DF000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cannot create logs directory, file exists at path=%@", v3, 0x26u);
    }
  }

  OUTLINED_FUNCTION_4_1();
}

+ (void)createDefaultAttributeDirectoryIfNeeded:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_4_1();
}

+ (void)checkAttributesForDirectory:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_4_1();
}

+ (void)setAttributesForDirectory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    v0 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_8_1();
      _os_log_error_impl(&dword_23D4DF000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to set owner for logs directory, error=%@", v1, 0x26u);
    }
  }
}

@end