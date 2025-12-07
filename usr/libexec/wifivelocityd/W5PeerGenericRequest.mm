@interface W5PeerGenericRequest
- (W5PeerRequestPayload)requestPayload;
- (void)handleResponse:(id)response;
@end

@implementation W5PeerGenericRequest

- (W5PeerRequestPayload)requestPayload
{
  v3 = objc_alloc_init(W5PeerGenericRequestPayload);
  requestInfo = [(W5PeerGenericRequest *)self requestInfo];
  [(W5PeerGenericRequestPayload *)v3 setInfo:requestInfo];

  return v3;
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  error = [responseCopy error];
  payload = [responseCopy payload];
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    info = [payload info];
    options = [responseCopy options];
    v15 = 136316162;
    v16 = "[W5PeerGenericRequest handleResponse:]";
    v17 = 2080;
    v18 = "W5PeerGenericRequest.m";
    v19 = 1024;
    v20 = 27;
    v21 = 2114;
    v22 = info;
    v23 = 2114;
    v24 = options;
    v14 = 48;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v7, 0, "[wifivelocity] %s (%s:%u) RECV RESPONSE (info=%{public}@, options=%{public}@)", &v15, v14);
  }

  responseHandler = [(W5PeerGenericRequest *)self responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [(W5PeerGenericRequest *)self responseHandler];
    info2 = [payload info];
    options2 = [responseCopy options];
    (responseHandler2)[2](responseHandler2, error, info2, options2);
  }
}

@end