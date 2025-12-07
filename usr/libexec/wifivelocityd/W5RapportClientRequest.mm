@interface W5RapportClientRequest
- (NSString)description;
- (W5RapportClientRequest)initWithPayload:(id)payload options:(id)options handler:(id)handler;
@end

@implementation W5RapportClientRequest

- (W5RapportClientRequest)initWithPayload:(id)payload options:(id)options handler:(id)handler
{
  payloadCopy = payload;
  optionsCopy = options;
  handlerCopy = handler;
  v12 = sub_100098A04();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_retainBlock(handlerCopy);
    v24 = 136316418;
    v25 = "[W5RapportClientRequest initWithPayload:options:handler:]";
    v26 = 2080;
    v27 = "W5RapportClientRequest.m";
    v28 = 1024;
    v29 = 18;
    v30 = 2114;
    v31 = optionsCopy;
    v32 = 2114;
    v33 = payloadCopy;
    v34 = 2114;
    v35 = v13;
    v22 = 58;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v12, 0, "[wifivelocity] %s (%s:%u) options=%{public}@, response=%{public}@, handler=%{public}@", &v24, v22);
  }

  v23.receiver = self;
  v23.super_class = W5RapportClientRequest;
  v14 = [(W5RapportClientRequest *)&v23 init];
  v15 = v14;
  if (v14 && (objc_storeStrong(&v14->_payload, payload), v16 = objc_retainBlock(handlerCopy), handler = v15->_handler, v15->_handler = v16, handler, v15->_handler))
  {
    v18 = optionsCopy;
    p_super = &v15->_options->super;
    v15->_options = v18;
  }

  else
  {

    p_super = sub_100098A04();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315650;
      v25 = "[W5RapportClientRequest initWithPayload:options:handler:]";
      v26 = 2080;
      v27 = "W5RapportClientRequest.m";
      v28 = 1024;
      v29 = 34;
      LODWORD(v21) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, p_super, 0, "[wifivelocity] %s (%s:%u) init error!", &v24, v21, LODWORD(v23.receiver));
    }

    v15 = 0;
  }

  return v15;
}

- (NSString)description
{
  v3 = [NSMutableString stringWithCapacity:0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ : %p", v5, self];

  payload = [(W5RapportClientRequest *)self payload];
  [v3 appendFormat:@" payload='%@'", payload];

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

@end