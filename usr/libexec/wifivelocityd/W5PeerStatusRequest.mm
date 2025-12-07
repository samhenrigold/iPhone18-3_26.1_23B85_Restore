@interface W5PeerStatusRequest
- (W5PeerStatusRequest)initWithPeer:(id)peer reply:(id)reply;
- (int64_t)controlFlags;
- (void)handleResponse:(id)response;
@end

@implementation W5PeerStatusRequest

- (W5PeerStatusRequest)initWithPeer:(id)peer reply:(id)reply
{
  peerCopy = peer;
  replyCopy = reply;
  v19.receiver = self;
  v19.super_class = W5PeerStatusRequest;
  v9 = [(W5PeerStatusRequest *)&v19 init];
  v10 = v9;
  if (peerCopy && v9 && (objc_storeStrong(&v9->_peer, peer), replyCopy))
  {
    v11 = objc_retainBlock(replyCopy);
    reply = v10->_reply;
    v10->_reply = v11;

    identifier = v10->_identifier;
    v10->_discoveryFlags = 1;
    v10->_identifier = @"com.apple.wifi.peer.connectionState";

    v14 = objc_alloc_init(W5PeerStatusRequestPayload);
    requestPayload = v10->_requestPayload;
    v10->_requestPayload = v14;

    _currentVersion = [(W5PeerStatusRequest *)v10 _currentVersion];
    [(W5PeerStatusRequestPayload *)v10->_requestPayload setVersion:_currentVersion];
  }

  else
  {

    _currentVersion = sub_100098A04();
    if (os_log_type_enabled(_currentVersion, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315650;
      v21 = "[W5PeerStatusRequest initWithPeer:reply:]";
      v22 = 2080;
      v23 = "W5PeerStatusRequest.m";
      v24 = 1024;
      v25 = 48;
      LODWORD(v18) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, _currentVersion, 0, "[wifivelocity] %s (%s:%u) init error!", &v20, v18, LODWORD(v19.receiver));
    }

    v10 = 0;
  }

  return v10;
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  error = [responseCopy error];

  if (error)
  {
    reply = [(W5PeerStatusRequest *)self reply];
    error2 = [responseCopy error];
    (reply)[2](reply, error2, 0);
  }

  else
  {
    reply = [responseCopy payload];
    error2 = [reply peerStatus];
    status = [reply status];
    v9 = sub_100098A04();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (status == 1 && error2)
    {
      if (v10)
      {
        v17 = 136315906;
        v18 = "[W5PeerStatusRequest handleResponse:]";
        v19 = 2080;
        v20 = "W5PeerStatusRequest.m";
        v21 = 1024;
        v22 = 62;
        v23 = 2114;
        v24 = error2;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v9, 0, "[wifivelocity] %s (%s:%u) peer status='%{public}@'", &v17, 38);
      }

      reply2 = [(W5PeerStatusRequest *)self reply];
      (reply2)[2](reply2, 0, error2);
    }

    else
    {
      if (v10)
      {
        peer = [(W5PeerStatusRequest *)self peer];
        v17 = 136315906;
        v18 = "[W5PeerStatusRequest handleResponse:]";
        v19 = 2080;
        v20 = "W5PeerStatusRequest.m";
        v21 = 1024;
        v22 = 65;
        v23 = 2114;
        v24 = peer;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v9, 0, "[wifivelocity] %s (%s:%u) failed to retrieve status object from peer='%{public}@'", &v17, 38);
      }

      reply2 = [(W5PeerStatusRequest *)self reply];
      v15 = NSLocalizedFailureReasonErrorKey;
      v16 = @"W5PeerStatusResponseUndefinedError";
      v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v14 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:15 userInfo:v13];
      (reply2)[2](reply2, v14, 0);
    }
  }
}

- (int64_t)controlFlags
{
  peer = [(W5PeerStatusRequest *)self peer];
  controlFlags = [peer controlFlags];

  return controlFlags;
}

@end