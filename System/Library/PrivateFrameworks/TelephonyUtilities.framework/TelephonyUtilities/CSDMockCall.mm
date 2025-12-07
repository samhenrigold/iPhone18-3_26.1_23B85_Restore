@interface CSDMockCall
+ (id)mockCall;
+ (id)mockCallFromBlock:(id)block;
+ (id)mockCallWithNotificationCenter:(id)center fromBlock:(id)block;
- (CSDMockCall)initWithUniqueProxyIdentifier:(id)identifier endpointOnCurrentDevice:(BOOL)device notificationCenter:(id)center;
- (TUCallDisplayContext)displayContext;
- (void)answerWithRequest:(id)request;
- (void)dialWithRequest:(id)request displayContext:(id)context;
- (void)disconnectWithReason:(int)reason;
- (void)performUplinkMuted:(BOOL)muted;
- (void)setMockCallStatus:(int)status;
- (void)setSharingScreen:(BOOL)screen attributes:(id)attributes;
- (void)updateWithCall:(id)call;
@end

@implementation CSDMockCall

+ (id)mockCall
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = [self mockCallWithNotificationCenter:v3 fromBlock:0];

  return v4;
}

+ (id)mockCallFromBlock:(id)block
{
  blockCopy = block;
  v5 = +[NSNotificationCenter defaultCenter];
  v6 = [self mockCallWithNotificationCenter:v5 fromBlock:blockCopy];

  return v6;
}

+ (id)mockCallWithNotificationCenter:(id)center fromBlock:(id)block
{
  blockCopy = block;
  centerCopy = center;
  v8 = [[self alloc] initWithNotificationCenter:centerCopy];

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v8);
  }

  return v8;
}

- (CSDMockCall)initWithUniqueProxyIdentifier:(id)identifier endpointOnCurrentDevice:(BOOL)device notificationCenter:(id)center
{
  deviceCopy = device;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = CSDMockCall;
  v10 = [(CSDCall *)&v15 initWithUniqueProxyIdentifier:identifierCopy endpointOnCurrentDevice:deviceCopy notificationCenter:center];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_mockUniqueProxyIdentifier, identifier);
    v11->_mockShouldSuppressRingtone = 1;
    v11->_mockHostedOnCurrentDevice = 1;
    v11->_mockEndpointOnCurrentDevice = 1;
    v11->_mockAudioInterruptionProviderType = 1;
    [(CSDCall *)v11 setIsCallRecordingEnabled:1];
    [(CSDMockCall *)v11 setIsAppleIntelligenceEnabled:&stru_10061F248];
    v12 = objc_alloc_init(TUMutableCallDisplayContext);
    [v12 setName:@"name"];
    mockDisplayContext = v11->_mockDisplayContext;
    v11->_mockDisplayContext = v12;
  }

  return v11;
}

- (void)updateWithCall:(id)call
{
  v18.receiver = self;
  v18.super_class = CSDMockCall;
  callCopy = call;
  [(CSDMockCall *)&v18 updateWithCall:callCopy];
  provider = [callCopy provider];
  [(CSDMockCall *)self setMockProvider:provider];

  handle = [callCopy handle];
  [(CSDMockCall *)self setMockHandle:handle];

  -[CSDMockCall setMockCallStatus:](self, "setMockCallStatus:", [callCopy callStatus]);
  -[CSDCall setTransitionStatus:](self, "setTransitionStatus:", [callCopy transitionStatus]);
  -[CSDCall setDisconnectedReason:](self, "setDisconnectedReason:", [callCopy disconnectedReason]);
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  [(CSDMockCall *)self setMockUniqueProxyIdentifier:uniqueProxyIdentifier];

  callUUID = [callCopy callUUID];
  [(CSDMockCall *)self setMockCallUUID:callUUID];

  -[CSDMockCall setMockHostedOnCurrentDevice:](self, "setMockHostedOnCurrentDevice:", [callCopy isHostedOnCurrentDevice]);
  -[CSDMockCall setMockScreening:](self, "setMockScreening:", [callCopy isScreening]);
  -[CSDMockCall setMockWasScreened:](self, "setMockWasScreened:", [callCopy wasScreened]);
  -[CSDMockCall setMockScreeningAnnouncementHasFinished:](self, "setMockScreeningAnnouncementHasFinished:", [callCopy screeningAnnouncementHasFinished]);
  -[CSDMockCall setEndpointOnCurrentDevice:](self, "setEndpointOnCurrentDevice:", [callCopy isEndpointOnCurrentDevice]);
  callerNameFromNetwork = [callCopy callerNameFromNetwork];
  [(CSDMockCall *)self setMockCallerNameFromNetwork:callerNameFromNetwork];

  sourceIdentifier = [callCopy sourceIdentifier];
  [(CSDMockCall *)self setSourceIdentifier:sourceIdentifier];

  -[CSDMockCall setMockUsingBaseband:](self, "setMockUsingBaseband:", [callCopy isUsingBaseband]);
  -[CSDMockCall setMockVoicemail:](self, "setMockVoicemail:", [callCopy isVoicemail]);
  contactIdentifiers = [callCopy contactIdentifiers];
  [(CSDMockCall *)self setMockContactIdentifiers:contactIdentifiers];

  -[CSDMockCall setMockNeedsManualInCallSounds:](self, "setMockNeedsManualInCallSounds:", [callCopy needsManualInCallSounds]);
  -[CSDMockCall setMockPrefersExclusiveAccessToCellularNetwork:](self, "setMockPrefersExclusiveAccessToCellularNetwork:", [callCopy prefersExclusiveAccessToCellularNetwork]);
  -[CSDMockCall setMockTTYType:](self, "setMockTTYType:", [callCopy ttyType]);
  -[CSDMockCall setMockSupportsTTYWithVoice:](self, "setMockSupportsTTYWithVoice:", [callCopy supportsTTYWithVoice]);
  -[CSDMockCall setMockIsThirdPartyVideo:](self, "setMockIsThirdPartyVideo:", [callCopy isThirdPartyVideo]);
  -[CSDMockCall setMockVideoStreamToken:](self, "setMockVideoStreamToken:", [callCopy videoStreamToken]);
  -[CSDMockCall setMockConversation:](self, "setMockConversation:", [callCopy isConversation]);
  -[CSDMockCall setMockFailureExpected:](self, "setMockFailureExpected:", [callCopy isFailureExpected]);
  -[CSDMockCall setMockSupportsEmergencyFallback:](self, "setMockSupportsEmergencyFallback:", [callCopy supportsEmergencyFallback]);
  -[CSDMockCall setMockSharingScreen:](self, "setMockSharingScreen:", [callCopy isSharingScreen]);
  screenShareAttributes = [callCopy screenShareAttributes];
  [(CSDMockCall *)self setMockScreenShareAttributes:screenShareAttributes];

  -[CSDMockCall setMockHasBeenRedirected:](self, "setMockHasBeenRedirected:", [callCopy hasBeenRedirected]);
  -[CSDMockCall setMockShouldSuppressRingtone:](self, "setMockShouldSuppressRingtone:", [callCopy shouldSuppressRingtone]);
  blockedByExtension = [callCopy blockedByExtension];
  [(CSDMockCall *)self setMockBlockedByExtension:blockedByExtension];

  callDirectoryIdentityExtension = [callCopy callDirectoryIdentityExtension];
  [(CSDMockCall *)self setMockCallDirectoryIdentityExtension:callDirectoryIdentityExtension];

  -[CSDMockCall setMockFilteredOutReason:](self, "setMockFilteredOutReason:", [callCopy filteredOutReason]);
  -[CSDMockCall setMockMixesVoiceWithMedia:](self, "setMockMixesVoiceWithMedia:", [callCopy mixesVoiceWithMedia]);
  -[CSDMockCall setMockNearbyMode:](self, "setMockNearbyMode:", [callCopy nearbyMode]);
  recordingSession = [callCopy recordingSession];
  [(CSDMockCall *)self setMockRecordingSession:recordingSession];

  translationSession = [callCopy translationSession];
  [(CSDMockCall *)self setMockTranslationSession:translationSession];

  smartHoldingSession = [callCopy smartHoldingSession];

  [(CSDMockCall *)self setMockSmartHoldingSession:smartHoldingSession];
  [(CSDCall *)self propertiesChanged];
}

- (TUCallDisplayContext)displayContext
{
  mockDisplayContext = self->_mockDisplayContext;
  if (mockDisplayContext)
  {
    displayContext = mockDisplayContext;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CSDMockCall;
    displayContext = [(CSDCall *)&v5 displayContext];
  }

  return displayContext;
}

- (void)setMockCallStatus:(int)status
{
  self->_mockCallStatus = status;
  if (status == 1)
  {
    dateConnected = [(CSDMockCall *)self dateConnected];

    if (!dateConnected)
    {
      v5 = +[NSDate date];
      [(CSDMockCall *)self setMockDateConnected:v5];
    }
  }
}

- (void)answerWithRequest:(id)request
{
  v6.receiver = self;
  v6.super_class = CSDMockCall;
  [(CSDMockCall *)&v6 answerWithRequest:request];
  [(CSDMockCall *)self setMockCallStatus:1];
  v4 = +[NSDate date];
  [(CSDCall *)self setDateStartedConnecting:v4];

  v5 = +[NSDate date];
  [(CSDCall *)self setDateConnected:v5];

  [(CSDCall *)self propertiesChanged];
}

- (void)performUplinkMuted:(BOOL)muted
{
  mutedCopy = muted;
  [(CSDMockCall *)self setUplinkMuted:?];
  didPerformUplinkMuted = [(CSDMockCall *)self didPerformUplinkMuted];

  if (didPerformUplinkMuted)
  {
    didPerformUplinkMuted2 = [(CSDMockCall *)self didPerformUplinkMuted];
    didPerformUplinkMuted2[2](didPerformUplinkMuted2, mutedCopy);
  }
}

- (void)dialWithRequest:(id)request displayContext:(id)context
{
  v11.receiver = self;
  v11.super_class = CSDMockCall;
  requestCopy = request;
  [(CSDCall *)&v11 dialWithRequest:requestCopy displayContext:context];
  [(CSDMockCall *)self setMockCallStatus:1, v11.receiver, v11.super_class];
  provider = [requestCopy provider];
  [(CSDMockCall *)self setMockProvider:provider];

  handle = [requestCopy handle];
  [(CSDMockCall *)self setMockHandle:handle];

  -[CSDMockCall setMockHostedOnCurrentDevice:](self, "setMockHostedOnCurrentDevice:", [requestCopy hostOnCurrentDevice]);
  endpointOnCurrentDevice = [requestCopy endpointOnCurrentDevice];

  [(CSDMockCall *)self setMockEndpointOnCurrentDevice:endpointOnCurrentDevice];
  v10 = +[NSDate date];
  [(CSDCall *)self setDateStartedConnecting:v10];

  [(CSDCall *)self setSoundRegion:1];
  [(CSDMockCall *)self setMockNeedsManualInCallSounds:0];
  [(CSDCall *)self propertiesChanged];
}

- (void)disconnectWithReason:(int)reason
{
  v4.receiver = self;
  v4.super_class = CSDMockCall;
  [(CSDMockCall *)&v4 disconnectWithReason:*&reason];
  [(CSDMockCall *)self setMockCallStatus:6];
  [(CSDCall *)self propertiesChanged];
}

- (void)setSharingScreen:(BOOL)screen attributes:(id)attributes
{
  screenCopy = screen;
  attributesCopy = attributes;
  [(CSDMockCall *)self setMockSharingScreen:screenCopy];
  [(CSDMockCall *)self setMockScreenShareAttributes:attributesCopy];

  [(CSDCall *)self propertiesChanged];
}

@end