@interface CSDExternalIDSDualSession
- (CSDExternalIDSDualSession)initWithSessionProvider:(id)provider isInitiator:(BOOL)initiator remoteFromID:(id)d remoteProtocolVersion:(id)version;
- (CSDExternalIDSDualSession)initWithSessionProvider:(id)provider isInitiator:(BOOL)initiator remoteProtocolVersion:(id)version;
- (id)initAsReceiverWithSessionProvider:(id)provider remoteFromID:(id)d remoteProtocolVersion:(int)version;
- (unint64_t)initialLinkType;
- (void)acceptInvitationWithData:(id)data;
- (void)cancelInvitationWithReason:(int)reason;
- (void)sendInvitationWithData:(id)data;
- (void)sessionProvider:(id)provider receivedInvitationAcceptFromID:(id)d withData:(id)data;
@end

@implementation CSDExternalIDSDualSession

- (CSDExternalIDSDualSession)initWithSessionProvider:(id)provider isInitiator:(BOOL)initiator remoteProtocolVersion:(id)version
{
  v7 = [NSAssertionHandler currentHandler:provider];
  [v7 handleFailureInMethod:a2 object:self file:@"CSDExternalIDSDualSession.m" lineNumber:29 description:@"Use another initializer instead"];

  return 0;
}

- (CSDExternalIDSDualSession)initWithSessionProvider:(id)provider isInitiator:(BOOL)initiator remoteFromID:(id)d remoteProtocolVersion:(id)version
{
  initiatorCopy = initiator;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = CSDExternalIDSDualSession;
  v11 = [(CSDIDSDualSession *)&v15 initWithSessionProvider:provider isInitiator:initiatorCopy remoteProtocolVersion:version];
  if (v11)
  {
    v12 = [dCopy copy];
    remoteFromID = v11->_remoteFromID;
    v11->_remoteFromID = v12;
  }

  return v11;
}

- (id)initAsReceiverWithSessionProvider:(id)provider remoteFromID:(id)d remoteProtocolVersion:(int)version
{
  v5 = *&version;
  dCopy = d;
  providerCopy = provider;
  v10 = [NSNumber numberWithInt:v5];
  v11 = [(CSDExternalIDSDualSession *)self initWithSessionProvider:providerCopy isInitiator:0 remoteFromID:dCopy remoteProtocolVersion:v10];

  return v11;
}

- (unint64_t)initialLinkType
{
  sessionProvider = [(CSDIDSDualSession *)self sessionProvider];
  initialLinkType = [sessionProvider initialLinkType];

  return initialLinkType;
}

- (void)sendInvitationWithData:(id)data
{
  dataCopy = data;
  v5 = sub_100004778(dataCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"non-nil";
    if (!dataCopy)
    {
      v6 = @"nil";
    }

    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ data: %@", &v7, 0x16u);
  }

  [(CSDIDSDualSession *)self _sendInvitationWithData:dataCopy declineOnError:0 alwaysSendData:0];
}

- (void)acceptInvitationWithData:(id)data
{
  dataCopy = data;
  v5 = sub_100004778(dataCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"non-nil";
    if (!dataCopy)
    {
      v6 = @"nil";
    }

    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ data: %@", &v7, 0x16u);
  }

  [(CSDIDSDualSession *)self _acceptInvitationWithData:dataCopy alwaysSendData:0];
}

- (void)cancelInvitationWithReason:(int)reason
{
  v3 = *&reason;
  v5 = sub_100004778(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ reason: %d", &v6, 0x12u);
  }

  [(CSDIDSDualSession *)self _cancelInvitationWithData:0 reason:v3 alwaysSendData:0];
}

- (void)sessionProvider:(id)provider receivedInvitationAcceptFromID:(id)d withData:(id)data
{
  providerCopy = provider;
  dCopy = d;
  dataCopy = data;
  receivedInvitationAccept = [(CSDExternalIDSDualSession *)self receivedInvitationAccept];
  if (receivedInvitationAccept)
  {
    v12 = sub_100004778(receivedInvitationAccept);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring invitation accept since we have previously processed one.", buf, 2u);
    }
  }

  else
  {
    [(CSDExternalIDSDualSession *)self setReceivedInvitationAccept:1];
    [(CSDExternalIDSDualSession *)self setRemoteFromID:dCopy];
    v13.receiver = self;
    v13.super_class = CSDExternalIDSDualSession;
    [(CSDIDSDualSession *)&v13 sessionProvider:providerCopy receivedInvitationAcceptFromID:dCopy withData:dataCopy];
  }
}

@end