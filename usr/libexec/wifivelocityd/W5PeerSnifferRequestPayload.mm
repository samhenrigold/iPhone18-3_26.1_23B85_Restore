@interface W5PeerSnifferRequestPayload
+ (id)payloadFromDictionary:(id)dictionary;
- (W5PeerSnifferRequestPayload)initWithRequest:(id)request;
- (id)encode;
@end

@implementation W5PeerSnifferRequestPayload

+ (id)payloadFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:dictionaryCopy];

  return v4;
}

- (W5PeerSnifferRequestPayload)initWithRequest:(id)request
{
  requestCopy = request;
  v46.receiver = self;
  v46.super_class = W5PeerSnifferRequestPayload;
  v5 = [(W5PeerSnifferRequestPayload *)&v46 init];
  if (v5)
  {
    v6 = sub_100098A04();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v59 = 136315906;
      v60 = "[W5PeerSnifferRequestPayload initWithRequest:]";
      v61 = 2080;
      v62 = "W5PeerSnifferRequestPayload.m";
      v63 = 1024;
      v64 = 36;
      v65 = 2114;
      v66 = requestCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v6, 0, "[wifivelocity] %s (%s:%u) Request Data: %{public}@", &v59, 38);
    }

    v7 = [requestCopy objectForKey:@"version"];
    v5->_version = v7;
    if (v7)
    {
      v8 = [requestCopy objectForKey:@"type"];
      v9 = [NSSet setWithObjects:objc_opt_class(), 0];
      v45 = 0;
      v10 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v9 fromData:v8 error:&v45];
      v11 = v45;
      v5->_type = [v10 integerValue];

      type = v5->_type;
      if (type != 1)
      {
        if (type != 2)
        {
          if (type)
          {
            v13 = 0;
            v14 = 0;
            v15 = 0;
LABEL_16:
            v24 = [requestCopy objectForKey:@"noAutoStop"];
            v5->_noAutoStop = [v24 BOOLValue];

            if (!v5->_noAutoStop)
            {
              v26 = 0;
              goto LABEL_20;
            }

            v25 = [requestCopy objectForKey:@"rorationInterval"];
            if (v25)
            {
              v26 = v25;
              v5->_rotationInterval = [v25 intValue];
              goto LABEL_20;
            }

            v38 = [NSError alloc];
            v47 = NSLocalizedDescriptionKey;
            v42 = +[NSBundle mainBundle];
            v43 = [v42 localizedStringForKey:@"nil rotation interval" value:&stru_1000E4788 table:0];
            v48 = v43;
            v30 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
            v32 = [v38 initWithDomain:@"com.apple.wifivelocty.sniffer" code:-1 userInfo:v30];

            goto LABEL_29;
          }

          v31 = [NSError alloc];
          v55 = NSLocalizedDescriptionKey;
          v42 = +[NSBundle mainBundle];
          v43 = [v42 localizedStringForKey:@"nil type" value:&stru_1000E4788 table:0];
          v56 = v43;
          v30 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          v32 = [v31 initWithDomain:@"com.apple.wifivelocty.sniffer" code:-2 userInfo:v30];

          v13 = 0;
LABEL_24:
          v14 = 0;
          v15 = 0;
LABEL_29:
          v11 = v32;
          v29 = v42;
          goto LABEL_30;
        }

        v13 = [requestCopy objectForKey:@"uuid"];
        if (!v13)
        {
          v40 = [NSError alloc];
          v49 = NSLocalizedDescriptionKey;
          v42 = +[NSBundle mainBundle];
          v43 = [v42 localizedStringForKey:@"nil UUID" value:&stru_1000E4788 table:0];
          v50 = v43;
          v30 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          v32 = [v40 initWithDomain:@"com.apple.wifivelocty.sniffer" code:-1 userInfo:v30];

          goto LABEL_24;
        }

        v14 = 0;
        v15 = 0;
LABEL_15:
        v22 = [[NSUUID alloc] initWithUUIDString:v13];
        uuid = v5->_uuid;
        v5->_uuid = v22;

        goto LABEL_16;
      }

      v15 = [requestCopy objectForKey:@"channels"];
      v16 = objc_opt_class();
      v17 = [NSSet setWithObjects:v16, objc_opt_class(), 0];
      v44 = v11;
      v18 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v17 fromData:v15 error:&v44];
      v19 = v44;

      channels = v5->_channels;
      v5->_channels = v18;

      if (v5->_channels)
      {
        v21 = [requestCopy objectForKey:@"duration"];
        if (v21)
        {
          v14 = v21;
          v5->_duration = [v21 longValue];
          v13 = [requestCopy objectForKey:@"uuid"];
          v11 = v19;
          if (!v13)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        v37 = [NSError alloc];
        v51 = NSLocalizedDescriptionKey;
        v34 = +[NSBundle mainBundle];
        v43 = [v34 localizedStringForKey:@"nil duration" value:&stru_1000E4788 table:0];
        v52 = v43;
        v30 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        v35 = v37;
        v36 = -1;
      }

      else
      {
        v33 = [NSError alloc];
        v53 = NSLocalizedDescriptionKey;
        v34 = +[NSBundle mainBundle];
        v43 = [v34 localizedStringForKey:@"nil channel" value:&stru_1000E4788 table:0];
        v54 = v43;
        v30 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v35 = v33;
        v36 = -3;
      }

      v11 = [v35 initWithDomain:@"com.apple.wifivelocty.sniffer" code:v36 userInfo:v30];

      v29 = v34;
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v28 = [NSError alloc];
      v57 = NSLocalizedDescriptionKey;
      v29 = +[NSBundle mainBundle];
      v43 = [v29 localizedStringForKey:@"nil version" value:&stru_1000E4788 table:0];
      v58 = v43;
      v30 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v11 = [v28 initWithDomain:@"com.apple.wifivelocty.sniffer" code:-1 userInfo:v30];
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v8 = 0;
    }

LABEL_30:

    goto LABEL_31;
  }

  v13 = 0;
  v11 = 0;
  v14 = 0;
  v15 = 0;
  v8 = 0;
LABEL_31:

  v39 = sub_100098A04();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v59 = 136315906;
    v60 = "[W5PeerSnifferRequestPayload initWithRequest:]";
    v61 = 2080;
    v62 = "W5PeerSnifferRequestPayload.m";
    v63 = 1024;
    v64 = 77;
    v65 = 2114;
    v66 = v11;
    LODWORD(v41) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v39, 0, "[wifivelocity] %s (%s:%u) init error (error='%{public}@')", &v59, v41);
  }

  v26 = 0;
  v5 = 0;
LABEL_20:

  return v5;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  version = [(W5PeerSnifferRequestPayload *)self version];

  if (!version)
  {
    goto LABEL_22;
  }

  version2 = [(W5PeerSnifferRequestPayload *)self version];
  [v3 setObject:version2 forKey:@"version"];

  if (![(W5PeerSnifferRequestPayload *)self type])
  {
    version = 0;
LABEL_22:
    v9 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  v6 = [[NSNumber alloc] initWithInteger:{-[W5PeerSnifferRequestPayload type](self, "type")}];
  v25 = 0;
  version = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v25];
  v7 = v25;

  [v3 setObject:version forKey:@"type"];
  if ([(W5PeerSnifferRequestPayload *)self type]!= 1)
  {
    v9 = 0;
    v10 = v7;
    goto LABEL_8;
  }

  channels = [(W5PeerSnifferRequestPayload *)self channels];
  v24 = v7;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:channels requiringSecureCoding:1 error:&v24];
  v10 = v24;

  if (v9)
  {
    [v3 setObject:v9 forKey:@"channels"];
    [(W5PeerSnifferRequestPayload *)self duration];
    if (v11 == 0.0)
    {
      goto LABEL_17;
    }

    [(W5PeerSnifferRequestPayload *)self duration];
    v12 = [NSNumber numberWithDouble:?];
    [v3 setObject:v12 forKey:@"duration"];

LABEL_8:
    type = [(W5PeerSnifferRequestPayload *)self type];
    uuid = [(W5PeerSnifferRequestPayload *)self uuid];
    v15 = uuid;
    if (type == 2)
    {

      if (!v15)
      {
        goto LABEL_17;
      }
    }

    else
    {

      if (!v15)
      {
        goto LABEL_13;
      }
    }

    uuid2 = [(W5PeerSnifferRequestPayload *)self uuid];
    uUIDString = [uuid2 UUIDString];
    [v3 setObject:uUIDString forKey:@"uuid"];

LABEL_13:
    if ([(W5PeerSnifferRequestPayload *)self noAutoStop])
    {
      [v3 setObject:&__kCFBooleanTrue forKey:@"noAutoStop"];
      if ([(W5PeerSnifferRequestPayload *)self rotationInterval])
      {
        v18 = [NSNumber numberWithInteger:[(W5PeerSnifferRequestPayload *)self rotationInterval]];
        [v3 setObject:v18 forKey:@"rorationInterval"];
      }
    }

    else
    {
      [v3 setObject:&__kCFBooleanFalse forKey:@"noAutoStop"];
    }

    goto LABEL_17;
  }

  v20 = sub_100098A04();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136315906;
    v27 = "[W5PeerSnifferRequestPayload encode]";
    v28 = 2080;
    v29 = "W5PeerSnifferRequestPayload.m";
    v30 = 1024;
    v31 = 102;
    v32 = 2114;
    v33 = v10;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v20, 0, "[wifivelocity] %s (%s:%u) failed to encode channels with error='%{public}@'", &v26, 38);
  }

  v9 = 0;
LABEL_17:
  if (![v3 count])
  {
    v21 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerSnifferRequestPayload encode]"];
    v22 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v21 userInfo:0];
    v23 = v22;

    objc_exception_throw(v22);
  }

  return v3;
}

@end