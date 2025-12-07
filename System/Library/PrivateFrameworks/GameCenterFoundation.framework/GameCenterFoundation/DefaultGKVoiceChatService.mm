@interface DefaultGKVoiceChatService
- (BOOL)acceptCallID:(int64_t)d error:(id *)error;
- (BOOL)isInputMeteringEnabled;
- (BOOL)isMicrophoneMuted;
- (BOOL)isOutputMeteringEnabled;
- (BOOL)startVoiceChatWithParticipantID:(id)d error:(id *)error;
- (float)inputMeterLevel;
- (float)outputMeterLevel;
- (float)remoteParticipantVolume;
- (id)getClient;
- (void)denyCallID:(int64_t)d;
- (void)receivedData:(id)data fromParticipantID:(id)d;
- (void)setClient:(id)client gkVoiceChatService:(id)service;
- (void)setInputMeteringEnabled:(BOOL)enabled;
- (void)setMicrophoneMuted:(BOOL)muted;
- (void)setOutputMeteringEnabled:(BOOL)enabled;
- (void)setRemoteParticipantVolume:(float)volume;
- (void)stopVoiceChatWithParticipantID:(id)d;
@end

@implementation DefaultGKVoiceChatService

- (BOOL)isInputMeteringEnabled
{
  service = [(DefaultGKVoiceChatService *)self service];
  isInputMeteringEnabled = [service isInputMeteringEnabled];

  return isInputMeteringEnabled;
}

- (void)setInputMeteringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  service = [(DefaultGKVoiceChatService *)self service];
  [service setInputMeteringEnabled:enabledCopy];
}

- (float)inputMeterLevel
{
  service = [(DefaultGKVoiceChatService *)self service];
  [service inputMeterLevel];
  v4 = v3;

  return v4;
}

- (BOOL)isMicrophoneMuted
{
  service = [(DefaultGKVoiceChatService *)self service];
  isMicrophoneMuted = [service isMicrophoneMuted];

  return isMicrophoneMuted;
}

- (void)setMicrophoneMuted:(BOOL)muted
{
  mutedCopy = muted;
  service = [(DefaultGKVoiceChatService *)self service];
  [service setMicrophoneMuted:mutedCopy];
}

- (BOOL)isOutputMeteringEnabled
{
  service = [(DefaultGKVoiceChatService *)self service];
  isOutputMeteringEnabled = [service isOutputMeteringEnabled];

  return isOutputMeteringEnabled;
}

- (void)setOutputMeteringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  service = [(DefaultGKVoiceChatService *)self service];
  [service setOutputMeteringEnabled:enabledCopy];
}

- (float)outputMeterLevel
{
  service = [(DefaultGKVoiceChatService *)self service];
  [service outputMeterLevel];
  v4 = v3;

  return v4;
}

- (float)remoteParticipantVolume
{
  service = [(DefaultGKVoiceChatService *)self service];
  [service remoteParticipantVolume];
  v4 = v3;

  return v4;
}

- (void)setRemoteParticipantVolume:(float)volume
{
  service = [(DefaultGKVoiceChatService *)self service];
  *&v4 = volume;
  [service setRemoteParticipantVolume:v4];
}

- (BOOL)acceptCallID:(int64_t)d error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
    v7 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = v7;
    service = [(DefaultGKVoiceChatService *)self service];
    v14 = 138412290;
    v15 = service;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "[DefaultGKVoiceChatService] acceptCallID with %@", &v14, 0xCu);
  }

  service2 = [(DefaultGKVoiceChatService *)self service];
  v12 = [service2 acceptCallID:d error:error];

  return v12;
}

- (void)denyCallID:(int64_t)d
{
  service = [(DefaultGKVoiceChatService *)self service];
  [service denyCallID:d];
}

- (id)getClient
{
  service = [(DefaultGKVoiceChatService *)self service];
  client = [service client];

  return client;
}

- (void)receivedData:(id)data fromParticipantID:(id)d
{
  dCopy = d;
  dataCopy = data;
  service = [(DefaultGKVoiceChatService *)self service];
  [service receivedData:dataCopy fromParticipantID:dCopy];
}

- (void)setClient:(id)client gkVoiceChatService:(id)service
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D0C940];
  serviceCopy = service;
  clientCopy = client;
  defaultVoiceChatService = [v6 defaultVoiceChatService];
  service = self->_service;
  self->_service = defaultVoiceChatService;

  v11 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
    v11 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = v11;
    service = [(DefaultGKVoiceChatService *)self service];
    v17 = 138412290;
    v18 = service;
    _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_INFO, "[DefaultGKVoiceChatService] initWithGKVoiceChatServicePrivate  = %@", &v17, 0xCu);
  }

  service2 = [(DefaultGKVoiceChatService *)self service];
  [service2 setWrapperService:serviceCopy];

  service3 = [(DefaultGKVoiceChatService *)self service];
  [service3 setClient:clientCopy];
}

- (BOOL)startVoiceChatWithParticipantID:(id)d error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
    v7 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = v7;
    service = [(DefaultGKVoiceChatService *)self service];
    v14 = 138412546;
    v15 = service;
    v16 = 2112;
    v17 = dCopy;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "[DefaultGKVoiceChatService] %@: startVoiceChatWithParticipantID with %@", &v14, 0x16u);
  }

  service2 = [(DefaultGKVoiceChatService *)self service];
  v12 = [service2 startVoiceChatWithParticipantID:dCopy error:error];

  return v12;
}

- (void)stopVoiceChatWithParticipantID:(id)d
{
  dCopy = d;
  service = [(DefaultGKVoiceChatService *)self service];
  [service stopVoiceChatWithParticipantID:dCopy];
}

@end