@interface BKAcquireSlotRequest
- (BKAcquireSlotRequest)init;
- (void)_acquireSlotWithURL:(id)l;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)handler;
@end

@implementation BKAcquireSlotRequest

- (BKAcquireSlotRequest)init
{
  v7.receiver = self;
  v7.super_class = BKAcquireSlotRequest;
  v2 = [(BKAcquireSlotRequest *)&v7 init];
  if (v2)
  {
    v3 = [ICStoreRequestContext alloc];
    ae_initWithActiveAccountAllowAuthenticationOnceADay = [v3 ae_initWithActiveAccountAllowAuthenticationOnceADay];
    requestContext = v2->_requestContext;
    v2->_requestContext = ae_initWithActiveAccountAllowAuthenticationOnceADay;
  }

  return v2;
}

- (void)performRequestWithResponseHandler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FD518;
  v5[3] = &unk_100A060C0;
  handlerCopy = handler;
  v4 = handlerCopy;
  [(BKAcquireSlotRequest *)self performRequestWithCompletionHandler:v5];
}

- (void)execute
{
  v3 = +[BUBag defaultBag];
  objc_initWeak(&location, self);
  acquireSlotURL = [v3 acquireSlotURL];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FD620;
  v5[3] = &unk_100A07340;
  objc_copyWeak(&v6, &location);
  [acquireSlotURL valueWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_acquireSlotWithURL:(id)l
{
  lCopy = l;
  additionalParams = [(BKAcquireSlotRequest *)self additionalParams];

  v7 = lCopy;
  if (additionalParams)
  {
    if (lCopy)
    {
      v8 = [[NSURLComponents alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];
      additionalParams2 = [(BKAcquireSlotRequest *)self additionalParams];
      [v8 setQuery:additionalParams2];

      v7 = [v8 URL];
    }

    else
    {
      v10 = sub_1000AC6E8(v6);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Nil url, can't add additional query parms.", buf, 2u);
      }

      v7 = 0;
    }
  }

  v11 = [[NSMutableURLRequest alloc] initWithURL:v7];
  [v11 setHTTPMethod:@"GET"];
  objc_initWeak(buf, self);
  v12 = [[ICStoreURLRequest alloc] initWithURLRequest:v11 requestContext:self->_requestContext];
  v13 = +[ICURLSessionManager highPrioritySession];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000FD8FC;
  v14[3] = &unk_100A07368;
  objc_copyWeak(&v15, buf);
  [v13 enqueueDataRequest:v12 withCompletionHandler:v14];
  objc_destroyWeak(&v15);

  objc_destroyWeak(buf);
}

@end