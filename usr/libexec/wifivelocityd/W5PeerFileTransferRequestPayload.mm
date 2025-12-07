@interface W5PeerFileTransferRequestPayload
+ (id)payloadFromDictionary:(id)dictionary;
- (W5PeerFileTransferRequestPayload)initWithRequest:(id)request;
- (id)encode;
@end

@implementation W5PeerFileTransferRequestPayload

+ (id)payloadFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:dictionaryCopy];

  return v4;
}

- (W5PeerFileTransferRequestPayload)initWithRequest:(id)request
{
  requestCopy = request;
  v24.receiver = self;
  v24.super_class = W5PeerFileTransferRequestPayload;
  v5 = [(W5PeerFileTransferRequestPayload *)&v24 init];
  if (!v5 || (v6 = [requestCopy objectForKey:@"version"], (v5->_version = v6) == 0) || (v7 = [NSURL alloc], objc_msgSend(requestCopy, "objectForKey:", @"url"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "initWithString:", v8), remotePath = v5->_remotePath, v5->_remotePath = v9, remotePath, v8, !v5->_remotePath))
  {
    v14 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  v11 = [requestCopy objectForKey:@"type"];
  v12 = [NSSet setWithObjects:objc_opt_class(), 0];
  v23 = 0;
  v13 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v12 fromData:v11 error:&v23];
  v14 = v23;
  v5->_type = [v13 integerValue];

  type = v5->_type;
  if (type == 1)
  {
    v16 = [requestCopy objectForKey:@"targetID"];
    targetID = v5->_targetID;
    v5->_targetID = v16;

    if (v5->_targetID)
    {
      v18 = [requestCopy objectForKey:@"publicKey"];
      p_super = &v5->_publicKey->super;
      v5->_publicKey = v18;
LABEL_9:

      goto LABEL_10;
    }

LABEL_12:

    p_super = sub_100098A04();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136315650;
      v26 = "[W5PeerFileTransferRequestPayload initWithRequest:]";
      v27 = 2080;
      v28 = "W5PeerFileTransferRequestPayload.m";
      v29 = 1024;
      v30 = 53;
      LODWORD(v21) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, p_super, 0, "[wifivelocity] %s (%s:%u) init error some objects were not found in request", &v25, v21, v22);
    }

    v5 = 0;
    goto LABEL_9;
  }

  if (!type)
  {
    goto LABEL_12;
  }

LABEL_10:

  return v5;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  version = [(W5PeerFileTransferRequestPayload *)self version];

  if (version && (-[W5PeerFileTransferRequestPayload version](self, "version"), v5 = objc_claimAutoreleasedReturnValue(), [v3 setObject:v5 forKey:@"version"], v5, -[W5PeerFileTransferRequestPayload remotePath](self, "remotePath"), version = objc_claimAutoreleasedReturnValue(), version, version))
  {
    remotePath = [(W5PeerFileTransferRequestPayload *)self remotePath];
    absoluteString = [remotePath absoluteString];
    [v3 setObject:absoluteString forKey:@"url"];

    if ([(W5PeerFileTransferRequestPayload *)self type])
    {
      v8 = [[NSNumber alloc] initWithInteger:{-[W5PeerFileTransferRequestPayload type](self, "type")}];
      v20 = 0;
      version = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v20];
      v9 = v20;

      [v3 setObject:version forKey:@"type"];
      if ([(W5PeerFileTransferRequestPayload *)self type]== 1)
      {
        targetID = [(W5PeerFileTransferRequestPayload *)self targetID];

        if (!targetID)
        {
          goto LABEL_12;
        }

        targetID2 = [(W5PeerFileTransferRequestPayload *)self targetID];
        [v3 setObject:targetID2 forKey:@"targetID"];
      }

      publicKey = [(W5PeerFileTransferRequestPayload *)self publicKey];

      if (publicKey)
      {
        publicKey2 = [(W5PeerFileTransferRequestPayload *)self publicKey];
        [v3 setObject:publicKey2 forKey:@"publicKey"];
      }

      v14 = sub_100098A04();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315906;
        v22 = "[W5PeerFileTransferRequestPayload encode]";
        v23 = 2080;
        v24 = "W5PeerFileTransferRequestPayload.m";
        v25 = 1024;
        v26 = 85;
        v27 = 2114;
        v28 = v3;
        v19 = 38;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v14, 0, "[wifivelocity] %s (%s:%u) Payload: %{public}@", &v21, v19);
      }
    }

    else
    {
      v9 = 0;
      version = 0;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_12:
  if (![v3 count])
  {
    v16 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerFileTransferRequestPayload encode]"];
    v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
    v18 = v17;

    objc_exception_throw(v17);
  }

  return v3;
}

@end