@interface W5PeerSnifferRequest
- (W5PeerSnifferRequest)initWithPeer:(id)peer requestType:(int64_t)type duration:(double)duration uuid:(id)uuid channels:(id)channels config:(id)config reply:(id)reply;
- (int64_t)controlFlags;
- (void)handleResponse:(id)response;
@end

@implementation W5PeerSnifferRequest

- (W5PeerSnifferRequest)initWithPeer:(id)peer requestType:(int64_t)type duration:(double)duration uuid:(id)uuid channels:(id)channels config:(id)config reply:(id)reply
{
  peerCopy = peer;
  uuidCopy = uuid;
  channelsCopy = channels;
  configCopy = config;
  replyCopy = reply;
  v34.receiver = self;
  v34.super_class = W5PeerSnifferRequest;
  v22 = [(W5PeerSnifferRequest *)&v34 init];
  v23 = v22;
  if (!peerCopy || !v22 || (objc_storeStrong(&v22->_peer, peer), !replyCopy) || (v24 = objc_retainBlock(replyCopy), reply = v23->_reply, v23->_reply = v24, reply, type == 1) && (!channelsCopy || [channelsCopy count] > 2))
  {

    v31 = sub_100098A04();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 136315650;
      v36 = "[W5PeerSnifferRequest initWithPeer:requestType:duration:uuid:channels:config:reply:]";
      v37 = 2080;
      v38 = "W5PeerSnifferRequest.m";
      v39 = 1024;
      v40 = 63;
      LODWORD(v33) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v31, 0, "[wifivelocity] %s (%s:%u) init error!", &v35, v33, LODWORD(v34.receiver));
    }

    v23 = 0;
    goto LABEL_9;
  }

  identifier = v23->_identifier;
  v23->_discoveryFlags = 1;
  v23->_identifier = @"com.apple.wifi.peer.runSniffer";

  v27 = objc_alloc_init(W5PeerSnifferRequestPayload);
  requestPayload = v23->_requestPayload;
  v23->_requestPayload = v27;

  _currentVersion = [(W5PeerSnifferRequest *)v23 _currentVersion];
  [(W5PeerSnifferRequestPayload *)v23->_requestPayload setVersion:_currentVersion];

  [(W5PeerSnifferRequestPayload *)v23->_requestPayload setChannels:channelsCopy];
  [(W5PeerSnifferRequestPayload *)v23->_requestPayload setDuration:duration];
  [(W5PeerSnifferRequestPayload *)v23->_requestPayload setUuid:uuidCopy];
  [(W5PeerSnifferRequestPayload *)v23->_requestPayload setType:type];
  [(W5PeerSnifferRequestPayload *)v23->_requestPayload setNoAutoStop:0];
  if (configCopy)
  {
    v30 = [configCopy objectForKey:@"noAutoStop"];
    -[W5PeerSnifferRequestPayload setNoAutoStop:](v23->_requestPayload, "setNoAutoStop:", [v30 BOOLValue]);

    v31 = [configCopy objectForKey:@"rotationInterval"];
    [(W5PeerSnifferRequestPayload *)v23->_requestPayload setRotationInterval:[v31 integerValue]];
LABEL_9:
  }

  return v23;
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  error = [responseCopy error];

  if (error)
  {
    reply = [(W5PeerSnifferRequest *)self reply];
    error2 = [responseCopy error];
    reply[2](reply, error2, 0, 0, 0);
  }

  else
  {
    reply = [responseCopy payload];
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315906;
      v25 = "[W5PeerSnifferRequest handleResponse:]";
      v26 = 2080;
      v27 = "W5PeerSnifferRequest.m";
      v28 = 1024;
      v29 = 76;
      v30 = 2048;
      status = [reply status];
      LODWORD(v21) = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) Response Status: %ld", &v24, v21, v22, v23);
    }

    if ([reply status] == 1)
    {
      filePaths = [reply filePaths];
      if (filePaths && (v10 = filePaths, [reply uuid], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
      {
        v12 = sub_100098A04();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          filePaths2 = [reply filePaths];
          uuid = [reply uuid];
          v24 = 138543618;
          v25 = filePaths2;
          v26 = 2114;
          v27 = uuid;
          LODWORD(v21) = 22;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v12, 0, "[wifivelocity] Sniffer File Path(s) on Remote Peer: %{public}@, UUID: %{public}@", &v24, v21);
        }

        error2 = [(W5PeerSnifferRequest *)self reply];
        filePaths3 = [reply filePaths];
        uuid2 = [reply uuid];
        (error2)[2](error2, 0, 0, filePaths3, uuid2);
      }

      else
      {
        error2 = [(W5PeerSnifferRequest *)self reply];
        error2[2](error2, 0, 0, 0, 0);
      }
    }

    else
    {
      v17 = sub_100098A04();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        peer = [(W5PeerSnifferRequest *)self peer];
        v24 = 138543362;
        v25 = peer;
        LODWORD(v21) = 12;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v17, 0, "[wifivelocity] Error on Remote Peer: %{public}@", &v24, v21);
      }

      error2 = [(W5PeerSnifferRequest *)self reply];
      v22 = NSLocalizedFailureReasonErrorKey;
      v23 = @"W5PeerSnifferResponseUndefinedError";
      v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v20 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:13 userInfo:v19];
      (error2)[2](error2, v20, 0, 0, 0);
    }
  }
}

- (int64_t)controlFlags
{
  peer = [(W5PeerSnifferRequest *)self peer];
  controlFlags = [peer controlFlags];

  return controlFlags;
}

@end