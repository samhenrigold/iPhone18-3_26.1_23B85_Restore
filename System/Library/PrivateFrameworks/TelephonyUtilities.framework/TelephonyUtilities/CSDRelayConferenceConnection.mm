@interface CSDRelayConferenceConnection
- (CSDRelayConferenceConnection)init;
- (CSDRelayConferenceConnection)initWithCall:(id)call;
- (CSDRelayConferenceConnection)initWithIdentifier:(id)identifier;
- (VCCapabilities)capabilities;
- (id)description;
- (int)deviceRole;
- (void)invokeDidPrepareIfNecessary:(id)necessary;
- (void)invokeDidStartIfNecessary:(BOOL)necessary error:(id)error;
- (void)invokeDidStopIfNecessary:(BOOL)necessary error:(id)error;
@end

@implementation CSDRelayConferenceConnection

- (CSDRelayConferenceConnection)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CSDRelayConferenceConnection;
  v6 = [(CSDRelayConferenceConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (CSDRelayConferenceConnection)initWithCall:(id)call
{
  callCopy = call;
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayConferenceConnection *)self initWithIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    -[CSDRelayConferenceConnection setHost:](v6, "setHost:", [callCopy isHostedOnCurrentDevice]);
    -[CSDRelayConferenceConnection setUsingBaseband:](v6, "setUsingBaseband:", [callCopy isUsingBaseband]);
    [(CSDRelayConferenceConnection *)v6 setCall:callCopy];
  }

  return v6;
}

- (CSDRelayConferenceConnection)init
{
  v4 = [NSString stringWithFormat:@"%s is unavailable, call another initializer instead.", "[CSDRelayConferenceConnection init]"];
  NSLog(@"** TUAssertion failure: %@", v4);

  if (_TUAssertShouldCrashApplication())
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"CSDRelayConferenceConnection.m" lineNumber:39 description:{@"%s is unavailable, call another initializer instead.", "-[CSDRelayConferenceConnection init]"}];
  }

  return 0;
}

- (void)invokeDidPrepareIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  didPrepareHandler = [(CSDRelayConferenceConnection *)self didPrepareHandler];

  if (didPrepareHandler)
  {
    didPrepareHandler2 = [(CSDRelayConferenceConnection *)self didPrepareHandler];
    [(CSDRelayConferenceConnection *)self setDidPrepareHandler:0];
    (didPrepareHandler2)[2](didPrepareHandler2, necessaryCopy);
  }
}

- (void)invokeDidStartIfNecessary:(BOOL)necessary error:(id)error
{
  necessaryCopy = necessary;
  errorCopy = error;
  didStartHandler = [(CSDRelayConferenceConnection *)self didStartHandler];

  if (didStartHandler)
  {
    [(CSDRelayConferenceConnection *)self setReceivedSuccessfulDidStart:necessaryCopy];
    didStartHandler2 = [(CSDRelayConferenceConnection *)self didStartHandler];
    [(CSDRelayConferenceConnection *)self setDidStartHandler:0];
    (didStartHandler2)[2](didStartHandler2, necessaryCopy, errorCopy);
  }
}

- (void)invokeDidStopIfNecessary:(BOOL)necessary error:(id)error
{
  necessaryCopy = necessary;
  errorCopy = error;
  didStopHandler = [(CSDRelayConferenceConnection *)self didStopHandler];

  if (didStopHandler)
  {
    didStopHandler2 = [(CSDRelayConferenceConnection *)self didStopHandler];
    [(CSDRelayConferenceConnection *)self setDidStopHandler:0];
    (didStopHandler2)[2](didStopHandler2, necessaryCopy, errorCopy);
  }
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  identifier = [(CSDRelayConferenceConnection *)self identifier];
  [v3 appendFormat:@" identifier=%@", identifier];

  transport = [(CSDRelayConferenceConnection *)self transport];

  if (transport)
  {
    transport2 = [(CSDRelayConferenceConnection *)self transport];
    [v3 appendFormat:@" transport=%@", transport2];
  }

  if ([(CSDRelayConferenceConnection *)self isHost])
  {
    [v3 appendFormat:@" isHost=%d", -[CSDRelayConferenceConnection isHost](self, "isHost")];
  }

  if ([(CSDRelayConferenceConnection *)self isUsingBaseband])
  {
    [v3 appendFormat:@" isUsingBaseband=%d", -[CSDRelayConferenceConnection isUsingBaseband](self, "isUsingBaseband")];
  }

  if ([(CSDRelayConferenceConnection *)self isAudioDisabled])
  {
    [v3 appendFormat:@" isAudioDisabled=%d", -[CSDRelayConferenceConnection isAudioDisabled](self, "isAudioDisabled")];
  }

  if ([(CSDRelayConferenceConnection *)self receivedSuccessfulDidStart])
  {
    [v3 appendFormat:@" receivedSuccessfulDidStart=%d", -[CSDRelayConferenceConnection receivedSuccessfulDidStart](self, "receivedSuccessfulDidStart")];
  }

  if ([(CSDRelayConferenceConnection *)self isPreparedToStop])
  {
    [v3 appendFormat:@" isPreparedToStop=%d", -[CSDRelayConferenceConnection isPreparedToStop](self, "isPreparedToStop")];
  }

  if ([(CSDRelayConferenceConnection *)self isTinCan])
  {
    [v3 appendFormat:@" isTinCan=%d", -[CSDRelayConferenceConnection isTinCan](self, "isTinCan")];
  }

  [v3 appendString:@">"];

  return v3;
}

- (int)deviceRole
{
  if ([(CSDRelayConferenceConnection *)self isHost])
  {
    if ([(CSDRelayConferenceConnection *)self isUsingBaseband])
    {
      return 2;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    call = [(CSDRelayConferenceConnection *)self call];
    if (call && (v5 = call, -[CSDRelayConferenceConnection call](self, "call"), v6 = objc_claimAutoreleasedReturnValue(), [v6 smartHoldingSession], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v7) && (-[CSDRelayConferenceConnection call](self, "call"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "smartHoldingSession"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "state"), v9, v8, v10 <= 3))
    {
      return dword_10057A290[v10];
    }

    else
    {
      return 1;
    }
  }
}

- (VCCapabilities)capabilities
{
  v3 = objc_alloc_init(VCCapabilities);
  [v3 setIsKeyExchangeEnabled:0];
  [v3 setIsAudioEnabled:1];
  [v3 setIsVideoEnabled:0];
  [v3 setIsDuplexAudioOnly:{objc_msgSend(v3, "isVideoEnabled") ^ 1}];
  [v3 setIsRelayForced:0];
  [v3 setIsRelayEnabled:1];
  [v3 setIsAudioPausedToStart:{-[CSDRelayConferenceConnection isAudioDisabled](self, "isAudioDisabled")}];
  [v3 setDeviceRole:{-[CSDRelayConferenceConnection deviceRole](self, "deviceRole")}];
  [v3 setIsHalfDuplexAudio:{-[CSDRelayConferenceConnection isTinCan](self, "isTinCan")}];

  return v3;
}

@end