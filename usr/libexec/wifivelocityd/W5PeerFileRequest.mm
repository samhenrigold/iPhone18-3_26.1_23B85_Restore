@interface W5PeerFileRequest
- (W5PeerFileRequest)initWithPeer:(id)peer requestType:(int64_t)type remotePath:(id)path transferManager:(id)manager reply:(id)reply;
- (int64_t)controlFlags;
- (void)handleResponse:(id)response;
@end

@implementation W5PeerFileRequest

- (W5PeerFileRequest)initWithPeer:(id)peer requestType:(int64_t)type remotePath:(id)path transferManager:(id)manager reply:(id)reply
{
  peerCopy = peer;
  pathCopy = path;
  managerCopy = manager;
  replyCopy = reply;
  v16 = NSRandomData();
  v17 = pathCopy;
  v18 = NSPrintF("%.3H", [v16 bytes], objc_msgSend(v16, "length"), objc_msgSend(v16, "length"));
  targetID = self->_targetID;
  self->_targetID = v18;

  v34.receiver = self;
  v34.super_class = W5PeerFileRequest;
  v20 = [(W5PeerFileRequest *)&v34 init];
  v21 = v20;
  if (peerCopy && v20 && (objc_storeStrong(&v20->_peer, peer), replyCopy) && (v22 = objc_retainBlock(replyCopy), reply = v21->_reply, v21->_reply = v22, reply, pathCopy) && managerCopy && (objc_storeStrong(&v21->_transferManager, manager), v21->_targetID))
  {
    identifier = v21->_identifier;
    v21->_discoveryFlags = 1;
    v21->_identifier = @"com.apple.wifi.peer.fileTransfer";

    v25 = objc_alloc_init(W5PeerFileTransferRequestPayload);
    requestPayload = v21->_requestPayload;
    v21->_requestPayload = v25;

    _currentVersion = [(W5PeerFileRequest *)v21 _currentVersion];
    [(W5PeerFileTransferRequestPayload *)v21->_requestPayload setVersion:_currentVersion];

    [(W5PeerFileTransferRequestPayload *)v21->_requestPayload setRemotePath:pathCopy];
    [(W5PeerFileTransferRequestPayload *)v21->_requestPayload setType:type];
    if (type == 1)
    {
      [(W5PeerFileTransferRequestPayload *)v21->_requestPayload setTargetID:v21->_targetID];
      publicKeySelf = [(W5FileTransferManager *)v21->_transferManager publicKeySelf];
      [(W5PeerFileTransferRequestPayload *)v21->_requestPayload setPublicKey:publicKeySelf];

      [(W5FileTransferManager *)v21->_transferManager initializeReceiverWithTargetID:v21->_targetID];
    }
  }

  else
  {

    v30 = sub_100098A04();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 136315650;
      v36 = "[W5PeerFileRequest initWithPeer:requestType:remotePath:transferManager:reply:]";
      v37 = 2080;
      v38 = "W5PeerFileRequest.m";
      v39 = 1024;
      v40 = 69;
      LODWORD(v31) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v30, 0, "[wifivelocity] %s (%s:%u) init error!", &v35, v31, v32);
    }

    v21 = 0;
  }

  return v21;
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  error = [responseCopy error];

  if (error)
  {
    reply = [(W5PeerFileRequest *)self reply];
    error2 = [responseCopy error];
    reply[2](reply, error2, 0);
LABEL_12:

    goto LABEL_13;
  }

  reply = [responseCopy payload];
  if ([reply status] != 1)
  {
    error3 = [reply error];

    error2 = [(W5PeerFileRequest *)self reply];
    if (!error3)
    {
      v20 = NSLocalizedFailureReasonErrorKey;
      v21 = @"W5PeerFileResponseUndefinedError";
      v17 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v18 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:12 userInfo:v17];
      (error2)[2](error2, v18, 0);

      goto LABEL_12;
    }

    error4 = [reply error];
    (error2)[2](error2, error4, 0);
    goto LABEL_10;
  }

  publicKey = [reply publicKey];

  if (publicKey)
  {
    transferManager = self->_transferManager;
    publicKey2 = [reply publicKey];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100014F9C;
    v19[3] = &unk_1000E1678;
    v19[4] = self;
    [(W5FileTransferManager *)transferManager startW5FileReceiverWithPeerPublicKey:publicKey2 reply:v19];

    v11 = [[NSURL alloc] initFileURLWithPath:@"/var/run/com.apple.wifivelocity"];
    v12 = [NSString stringWithFormat:@"%@.rpftd", self->_targetID];
    v13 = [v11 URLByAppendingPathComponent:v12 isDirectory:1];
  }

  files = [reply files];

  if (files)
  {
    error2 = [(W5PeerFileRequest *)self reply];
    error4 = [reply files];
    (error2)[2](error2, 0, error4);
LABEL_10:

    goto LABEL_12;
  }

LABEL_13:
}

- (int64_t)controlFlags
{
  peer = [(W5PeerFileRequest *)self peer];
  controlFlags = [peer controlFlags];

  return controlFlags;
}

@end