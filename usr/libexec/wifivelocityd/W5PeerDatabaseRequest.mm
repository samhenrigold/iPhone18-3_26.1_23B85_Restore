@interface W5PeerDatabaseRequest
- (W5PeerDatabaseRequest)initWithPeer:(id)peer fetch:(id)fetch reply:(id)reply;
- (int64_t)controlFlags;
- (void)handleResponse:(id)response;
@end

@implementation W5PeerDatabaseRequest

- (W5PeerDatabaseRequest)initWithPeer:(id)peer fetch:(id)fetch reply:(id)reply
{
  peerCopy = peer;
  fetchCopy = fetch;
  replyCopy = reply;
  v22.receiver = self;
  v22.super_class = W5PeerDatabaseRequest;
  v12 = [(W5PeerDatabaseRequest *)&v22 init];
  v13 = v12;
  if (peerCopy && v12 && (objc_storeStrong(&v12->_peer, peer), fetchCopy) && (objc_storeStrong(&v13->_fetch, fetch), replyCopy))
  {
    v14 = objc_retainBlock(replyCopy);
    reply = v13->_reply;
    v13->_reply = v14;

    identifier = v13->_identifier;
    v13->_discoveryFlags = 1;
    v13->_identifier = @"com.apple.wifi.peer.dbQuery";

    v17 = objc_alloc_init(W5PeerDatabaseRequestPayload);
    requestPayload = v13->_requestPayload;
    v13->_requestPayload = v17;

    _currentVersion = [(W5PeerDatabaseRequest *)v13 _currentVersion];
    [(W5PeerDatabaseRequestPayload *)v13->_requestPayload setVersion:_currentVersion];

    [(W5PeerDatabaseRequestPayload *)v13->_requestPayload setFetchRequest:v13->_fetch];
  }

  else
  {

    v21 = sub_100098A04();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "[W5PeerDatabaseRequest initWithPeer:fetch:reply:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v21, 0, "[wifivelocity] %s: init error!", &v23);
    }

    v13 = 0;
  }

  return v13;
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  error = [responseCopy error];

  if (!error)
  {
    payload = [responseCopy payload];
    fetchedResults = [payload fetchedResults];
    if ([payload status] == 1)
    {
      v8 = sub_100098A04();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (fetchedResults)
      {
        if (v9)
        {
          v22 = 136316162;
          v23 = "[W5PeerDatabaseRequest handleResponse:]";
          v24 = 2080;
          v25 = "W5PeerDatabaseRequest.m";
          v26 = 1024;
          v27 = 69;
          v28 = 2080;
          v29 = "[W5PeerDatabaseRequest handleResponse:]";
          v30 = 2048;
          v31 = [fetchedResults count];
          LODWORD(v17) = 48;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) %s: peer fetched results count=%lu", &v22, v17, v18, v19, v20);
        }

        reply = [(W5PeerDatabaseRequest *)self reply];
        (reply)[2](reply, 0, fetchedResults);
        goto LABEL_15;
      }

      if (v9)
      {
        peer = [(W5PeerDatabaseRequest *)self peer];
        v22 = 136316162;
        v23 = "[W5PeerDatabaseRequest handleResponse:]";
        v24 = 2080;
        v25 = "W5PeerDatabaseRequest.m";
        v26 = 1024;
        v27 = 72;
        v28 = 2080;
        v29 = "[W5PeerDatabaseRequest handleResponse:]";
        v30 = 2112;
        v31 = peer;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) %s: peer fetch ok, but no results peer='%@'", &v22, 48);
      }

      reply = [(W5PeerDatabaseRequest *)self reply];
      v20 = NSLocalizedFailureReasonErrorKey;
      v21 = @"W5NoErr";
      v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v14 = 0;
    }

    else
    {
      v11 = sub_100098A04();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        peer2 = [(W5PeerDatabaseRequest *)self peer];
        v22 = 136316162;
        v23 = "[W5PeerDatabaseRequest handleResponse:]";
        v24 = 2080;
        v25 = "W5PeerDatabaseRequest.m";
        v26 = 1024;
        v27 = 76;
        v28 = 2080;
        v29 = "[W5PeerDatabaseRequest handleResponse:]";
        v30 = 2112;
        v31 = peer2;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v11, 0, "[wifivelocity] %s (%s:%u) %s: failed to retrieve status object from peer='%@'", &v22, 48);
      }

      reply = [(W5PeerDatabaseRequest *)self reply];
      v18 = NSLocalizedFailureReasonErrorKey;
      v19 = @"W5PeerDatabaseResponseUndefinedError";
      v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v14 = 14;
    }

    v16 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:v14 userInfo:v13];
    (reply)[2](reply, v16, 0);

LABEL_15:
    goto LABEL_16;
  }

  payload = [(W5PeerDatabaseRequest *)self reply];
  fetchedResults = [responseCopy error];
  (payload)[2](payload, fetchedResults, 0);
LABEL_16:
}

- (int64_t)controlFlags
{
  peer = [(W5PeerDatabaseRequest *)self peer];
  controlFlags = [peer controlFlags];

  return controlFlags;
}

@end