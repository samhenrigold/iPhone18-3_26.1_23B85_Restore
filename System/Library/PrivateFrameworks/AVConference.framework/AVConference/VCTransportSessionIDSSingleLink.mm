@interface VCTransportSessionIDSSingleLink
- (VCTransportSessionIDSSingleLink)initWithNotificationQueue:(id)queue reportingAgent:(opaqueRTCReporting *)agent;
- (id)copyActiveConnection;
- (int)createVFD:(int *)d forStreamType:(unsigned int)type;
- (int)onStart;
- (int)updateTransportStream:(OpaqueVCTransportStream *)stream;
- (void)dealloc;
- (void)handleLinkConnectedWithInfo:(id)info;
- (void)handleLinkDisconnectedWithInfo:(id)info;
- (void)onStart;
@end

@implementation VCTransportSessionIDSSingleLink

- (VCTransportSessionIDSSingleLink)initWithNotificationQueue:(id)queue reportingAgent:(opaqueRTCReporting *)agent
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCTransportSessionIDSSingleLink;
  return [(VCTransportSessionIDS *)&v5 initWithCallID:0 requireEncryptionInfo:0 reportingAgent:agent notificationQueue:queue];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCTransportSessionIDSSingleLink;
  [(VCTransportSessionIDS *)&v3 dealloc];
}

- (void)handleLinkDisconnectedWithInfo:(id)info
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCTransportSessionIDSSingleLink handleLinkDisconnectedWithInfo:]";
      v9 = 1024;
      v10 = 51;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d IDS channel disconnected", &v5, 0x1Cu);
    }
  }
}

- (int)onStart
{
  v10 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->super.super._stateLock);
  v3 = [(NSMutableArray *)self->super.super._streams count];
  if (v3 < 1)
  {
    v7 = 0;
LABEL_7:
    [(VCTransportSession *)self callEventHandlerWithEvent:1 info:0];
  }

  else
  {
    v4 = 0;
    v5 = v3 & 0x7FFFFFFF;
    while (1)
    {
      v6 = [(NSMutableArray *)self->super.super._streams objectAtIndexedSubscript:v4];
      v7 = [(VCTransportSessionIDSSingleLink *)self updateTransportStream:v6];
      if (v7 < 0)
      {
        break;
      }

      if (v5 == ++v4)
      {
        goto LABEL_7;
      }
    }

    [(VCTransportSessionIDSSingleLink *)v6 onStart];
    v7 = v9;
  }

  pthread_mutex_unlock(&self->super.super._stateLock);
  return v7;
}

- (int)updateTransportStream:(OpaqueVCTransportStream *)stream
{
  v26 = *MEMORY[0x1E69E9840];
  v15 = 0;
  VCPacketFilterGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = v7(v6, @"UnderlyingVFD", *MEMORY[0x1E695E480], &v15);
    if ((v8 & 0x80000000) == 0)
    {
      intValue = [v15 intValue];
      v11 = VCDatagramChannelIDS_Token(self->super._datagramChannel, v10);
      if (VTP_SetSourceDestinationWithToken(intValue, v11) == -1)
      {
        [VCTransportSessionIDSSingleLink updateTransportStream:buf];
        v8 = *buf;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v8 = -12782;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v17 = v12;
      v18 = 2080;
      v19 = "[VCTransportSessionIDSSingleLink updateTransportStream:]";
      v20 = 1024;
      v21 = 96;
      v22 = 2112;
      v23 = @"UnderlyingVFD";
      v24 = 2112;
      streamCopy = stream;
      _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d Could not get property '%@' for transport stream '%@'", buf, 0x30u);
    }
  }

LABEL_9:

  return v8;
}

- (id)copyActiveConnection
{
  connection = [(VCTransportSessionIDSSingleLink *)self connection];

  return connection;
}

- (void)handleLinkConnectedWithInfo:(id)info
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_23_7())
    {
      OUTLINED_FUNCTION_0_30();
      v13 = 1024;
      v14 = 37;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d IDS channel connected", v12, 0x1Cu);
    }
  }

  v6 = [info objectForKeyedSubscript:*MEMORY[0x1E69A46B0]];
  if (v6)
  {
    firstObject = [v6 firstObject];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_23_7())
      {
        if (firstObject)
        {
          [objc_msgSend(firstObject "description")];
        }

        OUTLINED_FUNCTION_0_30();
        v13 = 1024;
        v14 = 42;
        v15 = v8;
        v16 = v9;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: new link established with link context=%s", v12, 0x26u);
      }
    }

    if (firstObject)
    {
      v10 = [VCConnectionIDS alloc];
      self->_connection = [(VCConnectionIDS *)v10 initWithLinkContext:firstObject dataChannelToken:VCDatagramChannelIDS_Token(self->super._datagramChannel, v11)];
    }
  }
}

- (int)createVFD:(int *)d forStreamType:(unsigned int)type
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = -2144665599;
  v19 = -1;
  if (d)
  {
    v7 = [VCTransportSession vtpPacketTypeForStreamType:*&type];
    if (v7)
    {
      v4 = VCCreateVFDForIDS(v7, 43, &v19);
      if ((v4 & 0x80000000) == 0)
      {
        v9 = v19;
        v10 = VCDatagramChannelIDS_Token(self->super._datagramChannel, v8);
        if (VTP_SetSourceDestinationWithToken(v9, v10) != -1)
        {
          *d = v19;
          v19 = -1;
          goto LABEL_6;
        }

        v4 = *__error() | 0xC02B0000;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v21 = v17;
            v22 = 2080;
            v23 = "[VCTransportSessionIDSSingleLink createVFD:forStreamType:]";
            v24 = 1024;
            v25 = 84;
            v26 = 1024;
            v27 = v4;
            v14 = " [%s] %s:%d VTP_SetSourceDestinationWithToken failed %x";
            v15 = v18;
            v16 = 34;
            goto LABEL_13;
          }
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = v12;
      v22 = 2080;
      v23 = "[VCTransportSessionIDSSingleLink createVFD:forStreamType:]";
      v24 = 1024;
      v25 = 75;
      v14 = " [%s] %s:%d NULL vfd";
      v15 = v13;
      v16 = 28;
LABEL_13:
      _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    }
  }

LABEL_6:
  VCCloseVFDIfValid(v19);
  return v4;
}

- (void)onStart
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = v6;
      v10 = 2080;
      v11 = "[VCTransportSessionIDSSingleLink onStart]";
      v12 = 1024;
      v13 = 62;
      v14 = 2112;
      selfCopy = self;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to update transport stream '%@'", &v8, 0x26u);
    }
  }

  *a3 = a2;
}

- (void)updateTransportStream:(unsigned int *)a1 .cold.1(unsigned int *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *__error() | 0xC02B0000;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCTransportSessionIDSSingleLink updateTransportStream:]";
      v9 = 1024;
      v10 = 100;
      v11 = 1024;
      v12 = v2;
      _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, " [%s] %s:%d VTP_SetSourceDestinationWithToken failed %x", &v5, 0x22u);
    }
  }

  *a1 = v2;
}

@end