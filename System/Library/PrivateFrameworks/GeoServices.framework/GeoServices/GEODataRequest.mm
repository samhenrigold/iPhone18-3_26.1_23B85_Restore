@interface GEODataRequest
- (id)newURLRequest;
- (id)publicLogDescription;
@end

@implementation GEODataRequest

- (id)publicLogDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:&stru_1EF7F3698];
  v4 = [(GEODataRequest *)self URL];

  if (v4)
  {
    v5 = [(GEODataRequest *)self URL];
    [v3 appendFormat:@" URL: %@", v5];

    if (self->_options)
    {
      [v3 appendString:@" POST"];
    }

    bodyData = [(GEODataRequest *)self bodyData];

    if (bodyData)
    {
      bodyData2 = [(GEODataRequest *)self bodyData];
      [v3 appendFormat:@" body (%zu bytes)", objc_msgSend(bodyData2, "length")];
    }
  }

  v8 = objc_msgSend_auditToken(self);

  if (v8)
  {
    v9 = objc_msgSend_auditToken(self);
    publicLogDescription = [v9 publicLogDescription];
    [v3 appendFormat:@" audit token: %@", publicLogDescription];
  }

  return v3;
}

- (id)newURLRequest
{
  v3 = objc_alloc(MEMORY[0x1E696AD68]);
  v4 = [(GEODataRequest *)self URL];
  v5 = [v3 initWithURL:v4];

  [v5 setCachePolicy:1];
  [v5 setHTTPShouldHandleCookies:0];
  [v5 setAllowsExpensiveNetworkAccess:{-[GEODataRequest requireInexpensiveNetwork](self, "requireInexpensiveNetwork") ^ 1}];
  [v5 setAllowsConstrainedNetworkAccess:{-[GEODataRequest requireUnconstrainedNetwork](self, "requireUnconstrainedNetwork") ^ 1}];
  if ([(GEODataRequest *)self useHTTPPost])
  {
    [v5 setHTTPMethod:@"POST"];
  }

  backgroundSessionIdentifier = [(GEODataRequest *)self backgroundSessionIdentifier];
  if (backgroundSessionIdentifier)
  {
  }

  else
  {
    [(GEODataRequest *)self timeoutInterval];
    if (v7 > 0.0)
    {
      [(GEODataRequest *)self timeoutInterval];
      [v5 setTimeoutInterval:?];
    }
  }

  bodyData = [(GEODataRequest *)self bodyData];
  [v5 setHTTPBody:bodyData];

  additionalHTTPHeaders = self->_additionalHTTPHeaders;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__GEODataRequest_Task__newURLRequest__block_invoke;
  v12[3] = &unk_1E7070C30;
  v10 = v5;
  v13 = v10;
  [(NSDictionary *)additionalHTTPHeaders enumerateKeysAndObjectsUsingBlock:v12];

  return v10;
}

@end