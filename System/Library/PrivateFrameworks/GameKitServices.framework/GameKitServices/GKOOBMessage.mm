@interface GKOOBMessage
- (GKOOBMessage)initWithBytes:(const void *)bytes length:(unint64_t)length;
- (GKOOBMessage)initWithMessageType:(unsigned __int16)type;
@end

@implementation GKOOBMessage

- (GKOOBMessage)initWithMessageType:(unsigned __int16)type
{
  v5.receiver = self;
  v5.super_class = GKOOBMessage;
  result = [(GKOOBMessage *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (GKOOBMessage)initWithBytes:(const void *)bytes length:(unint64_t)length
{
  v27 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v18 = v7;
      v19 = 2080;
      v20 = "[GKOOBMessage initWithBytes:length:]";
      v21 = 1024;
      v22 = 25;
      v23 = 2048;
      bytesCopy = bytes;
      v25 = 1024;
      lengthCopy = length;
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKOOBMessage initWithBytes (%p, %d)", buf, 0x2Cu);
    }
  }

  v16.receiver = self;
  v16.super_class = GKOOBMessage;
  v9 = [(GKOOBMessage *)&v16 init];
  v10 = v9;
  if (v9)
  {
    if (!bytes)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 4)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [GKOOBMessage initWithBytes:length:];
        }
      }

      goto LABEL_25;
    }

    if (length <= 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 4)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [GKOOBMessage initWithBytes:length:];
        }
      }

LABEL_25:

      return 0;
    }

    v11 = bswap32(*bytes) >> 16;
    if (![(GKOOBMessage *)v9 _checkType:v11])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x277CE5818];
        v14 = *MEMORY[0x277CE5818];
        if (*MEMORY[0x277CE5808] == 1)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v18 = v12;
            v19 = 2080;
            v20 = "[GKOOBMessage initWithBytes:length:]";
            v21 = 1024;
            v22 = 53;
            v23 = 1024;
            LODWORD(bytesCopy) = v11;
            _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKOOBMessage init: Message type mismatch - type = %d", buf, 0x22u);
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [(GKOOBMessage *)v12 initWithBytes:v11 length:v13];
        }
      }

      goto LABEL_25;
    }

    if (![(GKOOBMessage *)v10 _checkSize:length])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 4)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [GKOOBMessage initWithBytes:length:];
        }
      }

      goto LABEL_25;
    }

    v10->_type = v11;
  }

  return v10;
}

- (void)initWithBytes:(os_log_t)log length:.cold.1(uint64_t a1, unsigned __int16 a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[GKOOBMessage initWithBytes:length:]";
  v7 = 1024;
  v8 = 53;
  v9 = 1024;
  v10 = a2;
  _os_log_debug_impl(&dword_24E50C000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d GKOOBMessage init: Message type mismatch - type = %d", &v3, 0x22u);
}

- (void)initWithBytes:length:.cold.2()
{
  OUTLINED_FUNCTION_17();
  *&v4[4] = v0;
  *&v4[6] = "[GKOOBMessage initWithBytes:length:]";
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v1, v2, " [%s] %s:%d GKOOBMessage is the wrong size: %u", v3, *v4, "[GKOOBMessage initWithBytes:length:]" >> 16, 46);
}

- (void)initWithBytes:length:.cold.3()
{
  OUTLINED_FUNCTION_17();
  *&v4[4] = v0;
  *&v4[6] = "[GKOOBMessage initWithBytes:length:]";
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v1, v2, " [%s] %s:%d GKOOBMessage init: size is too small %d", v3, *v4, "[GKOOBMessage initWithBytes:length:]" >> 16, 36);
}

- (void)initWithBytes:length:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  v3 = v0;
  v4 = "[GKOOBMessage initWithBytes:length:]";
  v5 = 1024;
  v6 = 30;
  _os_log_error_impl(&dword_24E50C000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d GKOOBMessage init: null buffer", v2, 0x1Cu);
}

@end