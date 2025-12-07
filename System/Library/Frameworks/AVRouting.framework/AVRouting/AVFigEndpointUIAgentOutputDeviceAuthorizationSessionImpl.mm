@interface AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl
- (AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl)initWithFigEndpointUIAgent:(OpaqueFigEndpointUIAgent *)agent;
- (void)_notifyCurrentRequestOfTerminalStatus:(int64_t)status error:(id)error;
- (void)_showAuthPromptWithUniqueID:(id)d routeDescriptor:(__CFDictionary *)descriptor pinMode:(BOOL)mode reason:(__CFString *)reason;
- (void)_startNewRequest:(id)request impl:(id)impl;
- (void)dealloc;
- (void)outputDeviceAuthorizationRequestImpl:(id)impl didRespondWithAuthorizationToken:(id)token;
- (void)outputDeviceAuthorizationRequestImplDidCancel:(id)cancel;
@end

@implementation AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl

- (void)dealloc
{
  if (self->_weakObserver)
  {
    v3 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVOutputDeviceAuthorizationSessionShowAuthPrompt name:*MEMORY[0x1E69AF248] object:self->_agent];
    [v3 removeListenerWithWeakReference:self->_weakObserver callback:AVOutputDeviceAuthorizationSessionShowFinishedWithPrompt name:*MEMORY[0x1E69AF238] object:self->_agent];
  }

  agent = self->_agent;
  if (agent)
  {
    CFRelease(agent);
  }

  v5.receiver = self;
  v5.super_class = AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl;
  [(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)&v5 dealloc];
}

- (void)_showAuthPromptWithUniqueID:(id)d routeDescriptor:(__CFDictionary *)descriptor pinMode:(BOOL)mode reason:(__CFString *)reason
{
  modeCopy = mode;
  v23 = *MEMORY[0x1E69E9840];
  if (!reason && dword_1EB46D568)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (FigCFEqual())
  {
    v11 = [AVOutputDevice outputDeviceWithRouteDescriptor:descriptor withRoutingContext:0];
    v12 = [AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl alloc];
    v13 = &AVOutputDeviceAuthorizationTokenTypePIN;
    if (!modeCopy)
    {
      v13 = AVOutputDeviceAuthorizationTokenTypePassword;
    }

    v14 = [(AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl *)v12 initWithID:d outputDevice:v11 authorizationTokenType:*v13];
    v15 = [[AVOutputDeviceAuthorizationRequest alloc] initWithOutputDeviceAuthorizationRequestImpl:v14];
    [(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)self _startNewRequest:v15 impl:v14];
  }

  else if (FigCFEqual())
  {
    v16 = self->_currentRequest;
    if ([(AVOutputDeviceAuthorizationSession *)[(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)self parentAuthorizationSession] outputDeviceAuthorizationSessionImpl:self shouldRetryAuthorizationRequest:v16 reason:@"AVOutputDeviceAuthorizationRequestRetryReasonIncorrectAuthorizationToken"])
    {
      v17 = [[AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl alloc] initWithID:[(AVOutputDeviceAuthorizationRequest *)v16 ID] outputDevice:[(AVOutputDeviceAuthorizationRequest *)v16 outputDevice] authorizationTokenType:[(AVOutputDeviceAuthorizationRequest *)v16 authorizationTokenType]];
      v18 = [[AVOutputDeviceAuthorizationRequest alloc] initWithOutputDeviceAuthorizationRequestImpl:v17];
      [(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)self _notifyCurrentRequestOfTerminalStatus:2 error:0];
      [(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)self _startNewRequest:v18 impl:v17];
    }

    else
    {
      if ([(NSString *)[(AVOutputDeviceAuthorizationRequest *)v16 authorizationTokenType] isEqualToString:@"AVOutputDeviceAuthorizationTokenTypePIN"])
      {
        v20 = -11908;
      }

      else
      {
        v20 = -11909;
      }

      [(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)self _notifyCurrentRequestOfTerminalStatus:5 error:AVLocalizedError(@"AVFoundationErrorDomain", v20, 0)];
      agent = self->_agent;
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v22)
      {
        v22(agent, 0, 1);
      }
    }
  }

  else
  {
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)_startNewRequest:(id)request impl:(id)impl
{
  self->_currentRequest = request;
  implCopy = impl;
  self->_currentRequestImpl = implCopy;
  [(AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl *)implCopy setParentAuthorizationSessionImpl:self];
  parentAuthorizationSession = [(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)self parentAuthorizationSession];

  [(AVOutputDeviceAuthorizationSession *)parentAuthorizationSession outputDeviceAuthorizationSessionImpl:self didProvideAuthorizationRequest:request];
}

- (void)_notifyCurrentRequestOfTerminalStatus:(int64_t)status error:(id)error
{
  [(AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl *)self->_currentRequestImpl enterTerminalStatus:status error:error];

  self->_currentRequestImpl = 0;
  self->_currentRequest = 0;
}

- (void)outputDeviceAuthorizationRequestImpl:(id)impl didRespondWithAuthorizationToken:(id)token
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D568)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  agent = self->_agent;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v8)
  {
    v8(agent, token, 0);
  }
}

- (void)outputDeviceAuthorizationRequestImplDidCancel:(id)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D568)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  agent = self->_agent;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v6)
  {
    v6(agent, 0, 1);
  }
}

- (AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl)initWithFigEndpointUIAgent:(OpaqueFigEndpointUIAgent *)agent
{
  v5 = [AVRoutingCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  v14.receiver = self;
  v14.super_class = AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl;
  v6 = [(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)&v14 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  if (!agent)
  {
    v12 = 0;
    v6->_agent = 0;
    goto LABEL_8;
  }

  v8 = CFRetain(agent);
  v7->_agent = v8;
  if (!v8)
  {
LABEL_9:
    v12 = 0;
    goto LABEL_8;
  }

  v9 = [[AVRoutingWeakReference alloc] initWithReferencedObject:v7];
  v7->_weakObserver = v9;
  [v5 addListenerWithWeakReference:v9 callback:AVOutputDeviceAuthorizationSessionShowAuthPrompt name:*MEMORY[0x1E69AF248] object:v7->_agent flags:0];
  [v5 addListenerWithWeakReference:v7->_weakObserver callback:AVOutputDeviceAuthorizationSessionShowFinishedWithPrompt name:*MEMORY[0x1E69AF238] object:v7->_agent flags:0];
  agent = v7->_agent;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v11)
  {
    v11(agent, 1);
  }

  v12 = v7;
LABEL_8:

  return v12;
}

@end