@interface W5PeerStatusRequestPayload
+ (id)payloadFromDictionary:(id)dictionary;
- (W5PeerStatusRequestPayload)initWithRequest:(id)request;
- (id)encode;
@end

@implementation W5PeerStatusRequestPayload

+ (id)payloadFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:dictionaryCopy];

  return v4;
}

- (W5PeerStatusRequestPayload)initWithRequest:(id)request
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = W5PeerStatusRequestPayload;
  v5 = [(W5PeerStatusRequestPayload *)&v10 init];
  if (!v5 || (v6 = [requestCopy objectForKey:@"version"], (v5->_version = v6) == 0))
  {

    v7 = sub_100098A04();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = "[W5PeerStatusRequestPayload initWithRequest:]";
      v13 = 2080;
      v14 = "W5PeerStatusRequestPayload.m";
      v15 = 1024;
      v16 = 37;
      v17 = 2114;
      v18 = 0;
      v9 = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v7, 0, "[wifivelocity] %s (%s:%u) init error (error='%{public}@'", &v11, v9);
    }

    v5 = 0;
  }

  return v5;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  if (self->_version)
  {
    version = [(W5PeerStatusRequestPayload *)self version];
    [v3 setObject:version forKey:@"version"];
  }

  if (![v3 count])
  {
    v6 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerStatusRequestPayload encode]"];
    v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
    v8 = v7;

    objc_exception_throw(v7);
  }

  return v3;
}

@end