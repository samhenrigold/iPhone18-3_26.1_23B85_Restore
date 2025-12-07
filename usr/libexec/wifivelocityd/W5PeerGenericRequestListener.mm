@interface W5PeerGenericRequestListener
- (BOOL)handleClientRequest:(id)request;
@end

@implementation W5PeerGenericRequestListener

- (BOOL)handleClientRequest:(id)request
{
  requestCopy = request;
  payload = [requestCopy payload];
  if (payload)
  {
    v6 = sub_100098A04();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      info = [payload info];
      options = [requestCopy options];
      v17 = 136316162;
      v18 = "[W5PeerGenericRequestListener handleClientRequest:]";
      v19 = 2080;
      v20 = "W5PeerGenericRequestListener.m";
      v21 = 1024;
      v22 = 21;
      v23 = 2114;
      v24 = info;
      v25 = 2114;
      v26 = options;
      v14 = 48;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v6, 0, "[wifivelocity] %s (%s:%u) RECV REQUEST (info=%{public}@, options=%{public}@)", &v17, v14);
    }

    requestHandler = [(W5PeerGenericRequestListener *)self requestHandler];

    if (requestHandler)
    {
      requestHandler2 = [(W5PeerGenericRequestListener *)self requestHandler];
      info2 = [payload info];
      options2 = [requestCopy options];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000940C4;
      v15[3] = &unk_1000E3600;
      v16 = requestCopy;
      (requestHandler2)[2](requestHandler2, info2, options2, v15);
    }
  }

  return 1;
}

@end