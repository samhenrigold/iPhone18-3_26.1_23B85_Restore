@interface CSDIDSDualSession
- (CSDIDSDualSession)init;
- (CSDIDSDualSession)initWithSessionProvider:(id)provider isInitiator:(BOOL)initiator remoteProtocolVersion:(id)version;
- (CSDIDSDualSessionDelegate)delegate;
- (CSDIDSTransport)transport;
- (double)invitationTimeout;
- (id)initAsReceiverWithSessionProvider:(id)provider remoteProtocolVersion:(int)version;
- (id)propertiesDescription;
- (int)remoteProtocolVersion;
- (int64_t)underlyingErrorCode;
- (void)_acceptInvitationWithData:(id)data alwaysSendData:(BOOL)sendData;
- (void)_cancelInvitationWithData:(id)data reason:(int)reason alwaysSendData:(BOOL)sendData;
- (void)_declineInvitationWithData:(id)data alwaysSendData:(BOOL)sendData;
- (void)_sendInvitationWithData:(id)data declineOnError:(BOOL)error alwaysSendData:(BOOL)sendData;
- (void)acceptInvitation;
- (void)cancelInvitation;
- (void)declineInvitation;
- (void)end;
- (void)reconnectSession;
- (void)sendData:(id)data;
- (void)sendInvitation;
- (void)sessionProvider:(id)provider endedWithReason:(unsigned int)reason error:(id)error;
- (void)sessionProvider:(id)provider invitationSentToPushTokens:(id)tokens shouldBreakBeforeMake:(BOOL)make;
- (void)sessionProvider:(id)provider receivedInvitationAcceptFromID:(id)d withData:(id)data;
- (void)sessionProvider:(id)provider receivedInvitationCancelFromID:(id)d withData:(id)data;
- (void)sessionProvider:(id)provider receivedInvitationDeclineFromID:(id)d withData:(id)data;
- (void)sessionProvider:(id)provider receivedSessionMessageFromID:(id)d withData:(id)data;
- (void)sessionProviderStarted:(id)started;
- (void)setInvitationTimeout:(double)timeout;
- (void)setReceiverProtocolVersion:(int)version;
- (void)setState:(int)state;
@end

@implementation CSDIDSDualSession

- (CSDIDSDualSession)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CSDIDSDualSession.m" lineNumber:31 description:{@"%s is not available. Use a designated initializer instead.", "-[CSDIDSDualSession init]"}];

  return 0;
}

- (CSDIDSDualSession)initWithSessionProvider:(id)provider isInitiator:(BOOL)initiator remoteProtocolVersion:(id)version
{
  providerCopy = provider;
  versionCopy = version;
  v14.receiver = self;
  v14.super_class = CSDIDSDualSession;
  v11 = [(CSDIDSSession *)&v14 initWithSessionProvider:providerCopy];
  v12 = v11;
  if (v11)
  {
    v11->_state = 1;
    objc_storeStrong(&v11->_sessionProvider, provider);
    [(CSDIDSDualSessionProvider *)v12->_sessionProvider setDelegate:v12];
    [(CSDIDSDualSessionProvider *)v12->_sessionProvider setAudioEnabled:0];
    v12->_initiator = initiator;
    objc_storeStrong(&v12->_remoteProtocolVersionNumber, version);
  }

  return v12;
}

- (id)initAsReceiverWithSessionProvider:(id)provider remoteProtocolVersion:(int)version
{
  v4 = *&version;
  providerCopy = provider;
  v7 = [NSNumber numberWithInt:v4];
  v8 = [(CSDIDSDualSession *)self initWithSessionProvider:providerCopy isInitiator:0 remoteProtocolVersion:v7];

  return v8;
}

- (id)propertiesDescription
{
  v9.receiver = self;
  v9.super_class = CSDIDSDualSession;
  propertiesDescription = [(CSDIDSSession *)&v9 propertiesDescription];
  isInitiator = [(CSDIDSDualSession *)self isInitiator];
  state = [(CSDIDSDualSession *)self state];
  remoteProtocolVersionNumber = [(CSDIDSDualSession *)self remoteProtocolVersionNumber];
  v7 = [NSString stringWithFormat:@"%@ isInitiator=%d state=%d remoteProtocolVersion=%@>", propertiesDescription, isInitiator, state, remoteProtocolVersionNumber];

  return v7;
}

- (int64_t)underlyingErrorCode
{
  sessionProvider = [(CSDIDSDualSession *)self sessionProvider];
  endedReason = [sessionProvider endedReason];

  return endedReason;
}

- (int)remoteProtocolVersion
{
  remoteProtocolVersionNumber = [(CSDIDSDualSession *)self remoteProtocolVersionNumber];
  intValue = [remoteProtocolVersionNumber intValue];

  return intValue;
}

- (void)setState:(int)state
{
  if (self->_state < state)
  {
    self->_state = state;
    if (state == 3)
    {
      [(CSDIDSDualSession *)self setHasStartedConnecting:1];
      [(CSDIDSDualSession *)self setHasConnected:1];
    }

    else if (state == 2)
    {
      [(CSDIDSDualSession *)self setHasStartedConnecting:1];
    }

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"CSDIDSDualSessionStateChangedNotification" object:self];
  }
}

- (void)setReceiverProtocolVersion:(int)version
{
  v3 = *&version;
  isInitiator = [(CSDIDSDualSession *)self isInitiator];
  if (isInitiator && ([(CSDIDSDualSession *)self remoteProtocolVersionNumber], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v10 = [NSNumber numberWithInt:v3];
    [(CSDIDSDualSession *)self setRemoteProtocolVersionNumber:?];
  }

  else
  {
    v7 = sub_100004778(isInitiator);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = ![(CSDIDSDualSession *)self isInitiator];
      remoteProtocolVersionNumber = [(CSDIDSDualSession *)self remoteProtocolVersionNumber];
      *buf = 138412802;
      selfCopy = self;
      v13 = 1024;
      v14 = v8;
      v15 = 1024;
      v16 = remoteProtocolVersionNumber != 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] called for session %@ that was not the initiator (%d) or that already had a version set (%d)", buf, 0x18u);
    }
  }
}

- (CSDIDSTransport)transport
{
  sessionProvider = [(CSDIDSDualSession *)self sessionProvider];
  shouldUseSocketForTransport = [sessionProvider shouldUseSocketForTransport];

  v5 = [CSDIDSTransport alloc];
  sessionProvider2 = [(CSDIDSDualSession *)self sessionProvider];
  v7 = sessionProvider2;
  if (shouldUseSocketForTransport)
  {
    v8 = -[CSDIDSTransport initWithSocket:](v5, "initWithSocket:", [sessionProvider2 socket]);
  }

  else
  {
    destination = [sessionProvider2 destination];
    v8 = [(CSDIDSTransport *)v5 initWithDestination:destination];
  }

  sessionProvider3 = [(CSDIDSDualSession *)self sessionProvider];
  -[CSDIDSTransport setInitialLinkType:](v8, "setInitialLinkType:", [sessionProvider3 initialLinkType]);

  return v8;
}

- (double)invitationTimeout
{
  sessionProvider = [(CSDIDSDualSession *)self sessionProvider];
  invitationTimeout = [sessionProvider invitationTimeout];

  return invitationTimeout;
}

- (void)setInvitationTimeout:(double)timeout
{
  timeoutCopy = timeout;
  sessionProvider = [(CSDIDSDualSession *)self sessionProvider];
  [sessionProvider setInvitationTimeout:timeoutCopy];
}

- (void)sendData:(id)data
{
  dataCopy = data;
  v5 = sub_100004778(dataCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sendData self: %@", &v9, 0xCu);
  }

  state = [(CSDIDSDualSession *)self state];
  if ((state - 1) < 3)
  {
    v7 = sub_100004778(state);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Session %@ is connected. Sending data", &v9, 0xCu);
    }

    sessionProvider = [(CSDIDSDualSession *)self sessionProvider];
    [sessionProvider sendData:dataCopy];
LABEL_10:

    goto LABEL_11;
  }

  if ((state - 4) < 2)
  {
    sessionProvider = sub_100004778(state);
    if (os_log_type_enabled(sessionProvider, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, sessionProvider, OS_LOG_TYPE_DEFAULT, "Session %@ is ending/ended. Dropping data on the floor", &v9, 0xCu);
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)sendInvitation
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "sendInvitation self: %@", &v4, 0xCu);
  }

  [(CSDIDSDualSession *)self _sendInvitationWithData:0 declineOnError:0 alwaysSendData:0];
}

- (void)_sendInvitationWithData:(id)data declineOnError:(BOOL)error alwaysSendData:(BOOL)sendData
{
  sendDataCopy = sendData;
  errorCopy = error;
  dataCopy = data;
  state = [(CSDIDSDualSession *)self state];
  if ((state - 2) >= 4)
  {
    if (state == 1)
    {
      v10 = sub_100004778(state);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session %@ is waiting. Sending invitation", &v13, 0xCu);
      }

      sessionProvider = [(CSDIDSDualSession *)self sessionProvider];
      [sessionProvider sendInvitationWithData:dataCopy declineOnError:errorCopy];
    }
  }

  else if (dataCopy && sendDataCopy)
  {
    [(CSDIDSDualSession *)self sendData:dataCopy];
  }

  else
  {
    v12 = sub_100004778(state);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Session %@ is not waiting. Not sending invitation", &v13, 0xCu);
    }
  }
}

- (void)acceptInvitation
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "acceptInvitation self: %@", &v4, 0xCu);
  }

  [(CSDIDSDualSession *)self _acceptInvitationWithData:0 alwaysSendData:0];
}

- (void)_acceptInvitationWithData:(id)data alwaysSendData:(BOOL)sendData
{
  sendDataCopy = sendData;
  dataCopy = data;
  state = [(CSDIDSDualSession *)self state];
  if ((state - 2) >= 4)
  {
    if (state == 1)
    {
      v8 = sub_100004778(state);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Session %@ is waiting. Accepting invitation", &v11, 0xCu);
      }

      [(CSDIDSDualSession *)self setState:2];
      sessionProvider = [(CSDIDSDualSession *)self sessionProvider];
      [sessionProvider acceptInvitationWithData:dataCopy];
    }
  }

  else if (dataCopy && sendDataCopy)
  {
    [(CSDIDSDualSession *)self sendData:dataCopy];
  }

  else
  {
    v10 = sub_100004778(state);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session %@ is not waiting. Not accepting invitation", &v11, 0xCu);
    }
  }
}

- (void)cancelInvitation
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "cancelInvitation self: %@", &v4, 0xCu);
  }

  [(CSDIDSDualSession *)self _cancelInvitationWithData:0 reason:0 alwaysSendData:0];
}

- (void)_cancelInvitationWithData:(id)data reason:(int)reason alwaysSendData:(BOOL)sendData
{
  sendDataCopy = sendData;
  dataCopy = data;
  state = [(CSDIDSDualSession *)self state];
  if ((state - 2) >= 4)
  {
    if (state != 1)
    {
      goto LABEL_26;
    }

    v10 = sub_100004778(state);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session %@ is waiting. Canceling invitation", &v19, 0xCu);
    }

    v11 = [(CSDIDSDualSession *)self setState:4];
    if (dataCopy)
    {
      if (reason)
      {
        v12 = sub_100004778(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Asked to cancel invitation with non-nil data and a concrete cancel reason, but that combination is unsupported", &v19, 2u);
        }
      }

      sessionProvider = [(CSDIDSDualSession *)self sessionProvider];
      v14 = sessionProvider;
      v15 = dataCopy;
LABEL_14:
      [sessionProvider cancelInvitationWithData:v15];
LABEL_25:

      goto LABEL_26;
    }

    if (reason == 2)
    {
      sessionProvider2 = [(CSDIDSDualSession *)self sessionProvider];
      v14 = sessionProvider2;
      v18 = 30;
    }

    else
    {
      if (reason != 1)
      {
        if (reason)
        {
          goto LABEL_26;
        }

        sessionProvider = [(CSDIDSDualSession *)self sessionProvider];
        v14 = sessionProvider;
        v15 = 0;
        goto LABEL_14;
      }

      sessionProvider2 = [(CSDIDSDualSession *)self sessionProvider];
      v14 = sessionProvider2;
      v18 = 29;
    }

    [sessionProvider2 cancelInvitationWithRemoteEndedReasonOverride:v18];
    goto LABEL_25;
  }

  if (dataCopy && sendDataCopy)
  {
    [(CSDIDSDualSession *)self sendData:dataCopy];
  }

  else
  {
    v16 = sub_100004778(state);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Session %@ is not waiting. Not canceling invitation", &v19, 0xCu);
    }
  }

LABEL_26:
}

- (void)declineInvitation
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "declineInvitation self: %@", &v4, 0xCu);
  }

  [(CSDIDSDualSession *)self _declineInvitationWithData:0 alwaysSendData:0];
}

- (void)_declineInvitationWithData:(id)data alwaysSendData:(BOOL)sendData
{
  sendDataCopy = sendData;
  dataCopy = data;
  state = [(CSDIDSDualSession *)self state];
  if ((state - 2) >= 4)
  {
    if (state == 1)
    {
      v8 = sub_100004778(state);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Session %@ is waiting. Declining invitation", &v11, 0xCu);
      }

      [(CSDIDSDualSession *)self setState:4];
      sessionProvider = [(CSDIDSDualSession *)self sessionProvider];
      [sessionProvider declineInvitationWithData:dataCopy];
    }
  }

  else if (dataCopy && sendDataCopy)
  {
    [(CSDIDSDualSession *)self sendData:dataCopy];
  }

  else
  {
    v10 = sub_100004778(state);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session %@ is not waiting. Not declining invitation", &v11, 0xCu);
    }
  }
}

- (void)reconnectSession
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "reconnectSession self: %@", &v5, 0xCu);
  }

  sessionProvider = [(CSDIDSDualSession *)self sessionProvider];
  [sessionProvider reconnectSession];
}

- (void)end
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "end self: %@", &v5, 0xCu);
  }

  [(CSDIDSDualSession *)self setState:4];
  sessionProvider = [(CSDIDSDualSession *)self sessionProvider];
  [sessionProvider end];
}

- (void)sessionProviderStarted:(id)started
{
  startedCopy = started;
  v5 = sub_100004778(startedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    shouldUseSocketForTransport = [startedCopy shouldUseSocketForTransport];
    socket = [startedCopy socket];
    destination = [startedCopy destination];
    v10 = 138413058;
    selfCopy = self;
    v12 = 1024;
    v13 = shouldUseSocketForTransport;
    v14 = 1024;
    v15 = socket;
    v16 = 2112;
    v17 = destination;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Session %@ started (shouldUseSocketForTransport: %d socket: %d, destination: %@)", &v10, 0x22u);
  }

  [(CSDIDSDualSession *)self setState:3];
  delegate = [(CSDIDSDualSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate sessionStarted:self];
  }
}

- (void)sessionProvider:(id)provider invitationSentToPushTokens:(id)tokens shouldBreakBeforeMake:(BOOL)make
{
  makeCopy = make;
  tokensCopy = tokens;
  v8 = sub_100004778(tokensCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    selfCopy = self;
    v13 = 2112;
    v14 = tokensCopy;
    v15 = 1024;
    v16 = makeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received invitation SENT for session %@ with tokens %@ shouldBreakBeforeMake %d", &v11, 0x1Cu);
  }

  delegate = [(CSDIDSDualSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    allObjects = [tokensCopy allObjects];
    [delegate session:self invitationSentToPushTokens:allObjects shouldBreakBeforeMake:makeCopy];
  }
}

- (void)sessionProvider:(id)provider endedWithReason:(unsigned int)reason error:(id)error
{
  errorCopy = error;
  v8 = sub_100004778(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 138412802;
    *&v16[4] = self;
    *&v16[12] = 1024;
    *&v16[14] = reason;
    *&v16[18] = 2112;
    *&v16[20] = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Session %@ ended with reason %d: %@", v16, 0x1Cu);
  }

  v9 = [(CSDIDSDualSession *)self setState:5];
  switch(reason)
  {
    case 0u:
    case 0xBu:
      v10 = sub_100004778(v9);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *v16 = 138412546;
      *&v16[4] = self;
      *&v16[12] = 1024;
      *&v16[14] = reason;
      goto LABEL_18;
    case 1u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xEu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
      v10 = sub_100004778(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100474B84();
      }

      v11 = 6;
      goto LABEL_7;
    case 2u:
    case 7u:
    case 0xCu:
      v10 = sub_100004778(v9);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *v16 = 138412546;
      *&v16[4] = self;
      *&v16[12] = 1024;
      *&v16[14] = reason;
      goto LABEL_11;
    case 3u:
    case 4u:
      v10 = sub_100004778(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 138412546;
        *&v16[4] = self;
        *&v16[12] = 1024;
        *&v16[14] = reason;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session %@ appears to have ended with an unanswered reason: %d", v16, 0x12u);
      }

      v11 = 4;
      goto LABEL_7;
    case 5u:
      isInitiator = [(CSDIDSDualSession *)self isInitiator];
      v14 = isInitiator;
      v10 = sub_100004778(isInitiator);
      v15 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        if (v15)
        {
          *v16 = 138412546;
          *&v16[4] = self;
          *&v16[12] = 1024;
          *&v16[14] = 5;
LABEL_18:
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session %@ appears to have ended with a local hangup reason: %d", v16, 0x12u);
        }

LABEL_19:
        v11 = 0;
      }

      else
      {
        if (v15)
        {
          *v16 = 138412546;
          *&v16[4] = self;
          *&v16[12] = 1024;
          *&v16[14] = 5;
LABEL_11:
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session %@ appears to have ended with a remote hangup reason: %d", v16, 0x12u);
        }

LABEL_12:
        v11 = 1;
      }

LABEL_7:

LABEL_8:
      [(CSDIDSDualSession *)self setEndedReason:v11, *v16, *&v16[8]];
      delegate = [(CSDIDSDualSession *)self delegate];
      [delegate session:self endedWithReason:{-[CSDIDSDualSession endedReason](self, "endedReason")}];

      return;
    case 0xDu:
    case 0xFu:
      v10 = sub_100004778(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100474B1C();
      }

      v11 = 5;
      goto LABEL_7;
    case 0x1Du:
      v10 = sub_100004778(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 138412546;
        *&v16[4] = self;
        *&v16[12] = 1024;
        *&v16[14] = 29;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session %@ appears to have ended with an accepted elsewhere reason: %d", v16, 0x12u);
      }

      v11 = 2;
      goto LABEL_7;
    case 0x1Eu:
      v10 = sub_100004778(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 138412546;
        *&v16[4] = self;
        *&v16[12] = 1024;
        *&v16[14] = 30;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session %@ appears to have ended with a declined elsewhere reason: %d", v16, 0x12u);
      }

      v11 = 3;
      goto LABEL_7;
    default:
      v11 = 1;
      goto LABEL_8;
  }
}

- (void)sessionProvider:(id)provider receivedInvitationAcceptFromID:(id)d withData:(id)data
{
  dCopy = d;
  dataCopy = data;
  v9 = sub_100004778(dataCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received invitation ACCEPT with data for session %@ from %@", &v11, 0x16u);
  }

  delegate = [(CSDIDSDualSession *)self delegate];
  [delegate session:self receivedInvitationAcceptWithData:dataCopy];
}

- (void)sessionProvider:(id)provider receivedInvitationCancelFromID:(id)d withData:(id)data
{
  dCopy = d;
  dataCopy = data;
  v9 = sub_100004778(dataCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received invitation CANCEL with data for session %@ from %@", &v11, 0x16u);
  }

  delegate = [(CSDIDSDualSession *)self delegate];
  [delegate session:self receivedInvitationCancelWithData:dataCopy];
}

- (void)sessionProvider:(id)provider receivedInvitationDeclineFromID:(id)d withData:(id)data
{
  dCopy = d;
  dataCopy = data;
  v9 = sub_100004778(dataCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received invitation DECLINE with data for session %@ from %@", &v11, 0x16u);
  }

  delegate = [(CSDIDSDualSession *)self delegate];
  [delegate session:self receivedInvitationDeclineWithData:dataCopy];
}

- (void)sessionProvider:(id)provider receivedSessionMessageFromID:(id)d withData:(id)data
{
  dCopy = d;
  dataCopy = data;
  v9 = sub_100004778(dataCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received session MESSAGE for session %@ from %@", &v11, 0x16u);
  }

  delegate = [(CSDIDSDualSession *)self delegate];
  [delegate session:self receivedData:dataCopy];
}

- (CSDIDSDualSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end