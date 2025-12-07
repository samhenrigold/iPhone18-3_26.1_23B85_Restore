@interface AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl
- (AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl)initWithRemoteControlSession:(OpaqueFigEndpointRemoteControlSession *)session;
- (void)_didCloseCommunicationChannel;
- (void)_didReceiveData:(id)data;
- (void)close;
- (void)dealloc;
- (void)sendData:(id)data completionHandler:(id)handler;
@end

@implementation AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl

- (void)dealloc
{
  [(AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl *)self close];
  remoteControlSession = self->_remoteControlSession;
  if (remoteControlSession)
  {
    CFRelease(remoteControlSession);
  }

  v4.receiver = self;
  v4.super_class = AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl;
  [(AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl *)&v4 dealloc];
}

- (void)_didReceiveData:(id)data
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVOutputDeviceCommunicationChannel *)[(AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl *)self parentChannel] communicationChannelImpl:self didReceiveData:data];
}

- (void)_didCloseCommunicationChannel
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVOutputDeviceCommunicationChannel *)[(AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl *)self parentChannel] communicationChannelImplDidClose:self];
}

- (void)sendData:(id)data completionHandler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = [handler copy];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  remoteControlSession = self->_remoteControlSession;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v9)
  {
    v9(remoteControlSession, data, AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImplSendDataCompletion, v6);
  }
}

- (void)close
{
  remoteControlSession = self->_remoteControlSession;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v4)
  {
    v4(remoteControlSession, 0, 0);
  }

  v5 = self->_remoteControlSession;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v6)
  {

    v6(v5);
  }
}

- (AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl)initWithRemoteControlSession:(OpaqueFigEndpointRemoteControlSession *)session
{
  v8.receiver = self;
  v8.super_class = AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl;
  v4 = [(AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl *)&v8 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (!session)
  {
    v4->_remoteControlSession = 0;
    goto LABEL_9;
  }

  session = CFRetain(session);
  v5->_remoteControlSession = session;
  if (session)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v6 && !v6(session, AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImplHandleEvent, v5))
    {
      session = v5;
      goto LABEL_9;
    }

LABEL_7:
    session = 0;
  }

LABEL_9:

  return session;
}

@end