@interface REHTTPRequest
- (NSData)bodyData;
- (REHTTPRequest)initWithConnect:(id)connect request:(_CFHTTPServerRequest *)request;
- (id)responseWithStatusCode:(int64_t)code;
- (void)dealloc;
@end

@implementation REHTTPRequest

- (REHTTPRequest)initWithConnect:(id)connect request:(_CFHTTPServerRequest *)request
{
  connectCopy = connect;
  v22.receiver = self;
  v22.super_class = REHTTPRequest;
  v8 = [(REHTTPRequest *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, connect);
    v9->_request = CFRetain(request);
    v10 = _CFHTTPServerRequestCopyProperty();
    url = v9->_url;
    v9->_url = v10;

    v12 = _CFHTTPServerRequestCopyProperty();
    method = v9->_method;
    v9->_method = v12;

    v14 = _CFHTTPServerRequestCopyProperty();
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = [v14 objectForKey:*MEMORY[0x277CBAC20]];
    }

    else
    {
      v15 = MEMORY[0x277CBEC10];
    }

    headerFields = v9->_headerFields;
    v9->_headerFields = v15;

    v17 = _CFHTTPServerRequestCopyBodyStream();
    stream = v9->_stream;
    v9->_stream = v17;

    data = [MEMORY[0x277CBEB28] data];
    bodyData = v9->_bodyData;
    v9->_bodyData = data;
  }

  return v9;
}

- (void)dealloc
{
  request = self->_request;
  if (request)
  {
    CFRelease(request);
    self->_request = 0;
  }

  v4.receiver = self;
  v4.super_class = REHTTPRequest;
  [(REHTTPRequest *)&v4 dealloc];
}

- (id)responseWithStatusCode:(int64_t)code
{
  v3 = [[REHTTPResponse alloc] initWithRequest:self statusCode:code];

  return v3;
}

- (NSData)bodyData
{
  v2 = [(NSMutableData *)self->_bodyData copy];

  return v2;
}

@end