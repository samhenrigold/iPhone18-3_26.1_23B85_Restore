@interface WKURLSchemeTaskImpl
- (WKFrameInfo)_frame;
- (WKURLSchemeTaskImpl)init;
- (uint64_t)_didPerformRedirection:(WTF *)this newRequest:(void *)request;
- (uint64_t)_didPerformRedirection:(uint64_t)redirection newRequest:;
- (uint64_t)_willPerformRedirection:(uint64_t)redirection newRequest:completionHandler:;
- (uint64_t)_willPerformRedirection:newRequest:completionHandler:;
- (uint64_t)didFailWithError:(WTF *)this;
- (uint64_t)didFailWithError:(uint64_t)error;
- (uint64_t)didFinish;
- (uint64_t)didReceiveData:(WTF *)this;
- (uint64_t)didReceiveData:(uint64_t)data;
- (uint64_t)didReceiveResponse:(WTF *)this;
- (uint64_t)didReceiveResponse:(uint64_t)response;
- (void)_didPerformRedirection:(id)redirection newRequest:(id)request;
- (void)_didPerformRedirection:(void *)redirection newRequest:;
- (void)_willPerformRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)dealloc;
- (void)didFailWithError:(id)error;
- (void)didFailWithError:(void *)error;
- (void)didFinish;
- (void)didReceiveData:(id)data;
- (void)didReceiveData:(void *)data;
- (void)didReceiveResponse:(id)response;
- (void)didReceiveResponse:(void *)response;
@end

@implementation WKURLSchemeTaskImpl

- (WKURLSchemeTaskImpl)init
{
  result = 80;
  __break(0xC471u);
  return result;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    WebKit::WebURLSchemeTask::~WebURLSchemeTask(&self->_urlSchemeTask, v4);
    v5.receiver = self;
    v5.super_class = WKURLSchemeTaskImpl;
    [(WKURLSchemeTaskImpl *)&v5 dealloc];
  }
}

- (void)_willPerformRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  if (self)
  {
    selfCopy = self;
  }

  if (redirection)
  {
    redirectionCopy = redirection;
  }

  if (request)
  {
    requestCopy = request;
  }

  v12 = _Block_copy(handler);
  v14 = WTF::fastMalloc(v13, 0x30);
  *v14 = &unk_1F10F8828;
  v14[1] = self;
  v14[2] = self;
  v14[3] = redirection;
  v14[4] = request;
  v14[5] = v12;
  v17 = v14;
  ExceptionTypeFromMainRunLoop = getExceptionTypeFromMainRunLoop(&v17, v15);
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  raiseExceptionIfNecessary(ExceptionTypeFromMainRunLoop);

  _Block_release(0);
}

- (void)didReceiveResponse:(id)response
{
  if (self)
  {
    selfCopy = self;
  }

  if (response)
  {
    responseCopy = response;
  }

  v8 = WTF::fastMalloc(v3, 0x20);
  *v8 = &unk_1F10F8878;
  v8[1] = self;
  v8[2] = self;
  v8[3] = response;
  v11 = v8;
  ExceptionTypeFromMainRunLoop = getExceptionTypeFromMainRunLoop(&v11, v9);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  raiseExceptionIfNecessary(ExceptionTypeFromMainRunLoop);
}

- (void)didReceiveData:(id)data
{
  if (self)
  {
    selfCopy = self;
  }

  if (data)
  {
    dataCopy = data;
  }

  v8 = WTF::fastMalloc(v3, 0x20);
  *v8 = &unk_1F10F88A0;
  v8[1] = self;
  v8[2] = self;
  v8[3] = data;
  v11 = v8;
  ExceptionTypeFromMainRunLoop = getExceptionTypeFromMainRunLoop(&v11, v9);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  raiseExceptionIfNecessary(ExceptionTypeFromMainRunLoop);
}

- (void)didFinish
{
  v2 = self[1];
  *self = &unk_1F10F88C8;
  self[1] = 0;
  if (v2)
  {
  }

  return self;
}

- (void)didFailWithError:(id)error
{
  if (self)
  {
    selfCopy = self;
  }

  if (error)
  {
    errorCopy = error;
  }

  v7 = WTF::fastMalloc(v3, 0x20);
  *v7 = &unk_1F10F88F0;
  v7[1] = self;
  v7[2] = self;
  v7[3] = error;
  v11 = v7;
  ExceptionTypeFromMainRunLoop = getExceptionTypeFromMainRunLoop(&v11, v8);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  raiseExceptionIfNecessary(ExceptionTypeFromMainRunLoop);
}

- (void)_didPerformRedirection:(id)redirection newRequest:(id)request
{
  if (self)
  {
    selfCopy = self;
  }

  if (redirection)
  {
    redirectionCopy = redirection;
  }

  if (request)
  {
    requestCopy = request;
  }

  v11 = WTF::fastMalloc(v4, 0x28);
  *v11 = &unk_1F10F8918;
  v11[1] = self;
  v11[2] = self;
  v11[3] = redirection;
  v11[4] = request;
  v14 = v11;
  ExceptionTypeFromMainRunLoop = getExceptionTypeFromMainRunLoop(&v14, v12);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  raiseExceptionIfNecessary(ExceptionTypeFromMainRunLoop);
}

- (WKFrameInfo)_frame
{
  v2 = *(*&self[4]._urlSchemeTask.m_storage.data[32] + 8);
  if (!v2)
  {
    return v2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (uint64_t)_willPerformRedirection:(uint64_t)redirection newRequest:completionHandler:
{
  v2 = *(redirection + 16);
  WebCore::ResourceResponse::ResourceResponse(v13, *(redirection + 24));
  MEMORY[0x19EB06210](v12, *(redirection + 32));
  v3 = *(redirection + 40);
  *(redirection + 40) = 0;
  v5 = WTF::fastMalloc(v4, 0x10);
  *v5 = &unk_1F10F8850;
  v5[1] = v3;
  v11 = v5;
  v6 = WebKit::WebURLSchemeTask::willPerformRedirection(v2 + 8, v13, v12, &v11);
  v7 = v11;
  v11 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Block_release(0);
  WebCore::ResourceRequest::~ResourceRequest(v12);
  v9 = v14;
  v14 = 0;
  if (v9)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v13, v8);
  return v6;
}

- (uint64_t)_willPerformRedirection:newRequest:completionHandler:
{
  v2 = *(self + 8);
  v3 = WebCore::ResourceRequest::nsURLRequest();
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)didReceiveResponse:(void *)response
{
  *response = &unk_1F10F8878;
  v2 = response[3];
  response[3] = 0;
  if (v2)
  {
  }

  v3 = response[1];
  response[1] = 0;
  if (v3)
  {
  }

  return response;
}

- (uint64_t)didReceiveResponse:(WTF *)this
{
  *this = &unk_1F10F8878;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)didReceiveResponse:(uint64_t)response
{
  v1 = *(response + 16);
  WebCore::ResourceResponse::ResourceResponse(v6, *(response + 24));
  v3 = WebKit::WebURLSchemeTask::didReceiveResponse(v1 + 8, v6);
  v4 = v7;
  v7 = 0;
  if (v4)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v6, v2);
  return v3;
}

- (void)didReceiveData:(void *)data
{
  *data = &unk_1F10F88A0;
  v2 = data[3];
  data[3] = 0;
  if (v2)
  {
  }

  v3 = data[1];
  data[1] = 0;
  if (v3)
  {
  }

  return data;
}

- (uint64_t)didReceiveData:(WTF *)this
{
  *this = &unk_1F10F88A0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)didReceiveData:(uint64_t)data
{
  v2 = *(data + 16);
  v6 = *(data + 24);
  WebCore::SharedBuffer::create<NSData *>(&v6, a2, &v7);
  v3 = WebKit::WebURLSchemeTask::didReceiveData(v2 + 8, &v7);
  v4 = v7;
  v7 = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return v3;
}

- (uint64_t)didFinish
{
  v1 = *(self + 16);
  WebCore::ResourceErrorBase::ResourceErrorBase(&v9, 0);
  v12 = 0;
  v13 = 1;
  v3 = WebKit::WebURLSchemeTask::didComplete((v1 + 8), &v9);
  v4 = v12;
  v12 = 0;
  if (v4)
  {
  }

  v5 = v11;
  v11 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v2);
  }

  v6 = v10;
  v10 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v2);
  }

  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v2);
  }

  return v3;
}

- (void)didFailWithError:(void *)error
{
  *error = &unk_1F10F88F0;
  v2 = error[3];
  error[3] = 0;
  if (v2)
  {
  }

  v3 = error[1];
  error[1] = 0;
  if (v3)
  {
  }

  return error;
}

- (uint64_t)didFailWithError:(WTF *)this
{
  *this = &unk_1F10F88F0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)didFailWithError:(uint64_t)error
{
  v1 = *(error + 16);
  MEMORY[0x19EB04D40](&v9, *(error + 24));
  v3 = WebKit::WebURLSchemeTask::didComplete((v1 + 8), &v9);
  v4 = v12;
  v12 = 0;
  if (v4)
  {
  }

  v5 = v11;
  v11 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v2);
  }

  v6 = v10;
  v10 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v2);
  }

  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v2);
  }

  return v3;
}

- (void)_didPerformRedirection:(void *)redirection newRequest:
{
  *redirection = &unk_1F10F8918;
  v2 = redirection[4];
  redirection[4] = 0;
  if (v2)
  {
  }

  v3 = redirection[3];
  redirection[3] = 0;
  if (v3)
  {
  }

  v4 = redirection[1];
  redirection[1] = 0;
  if (v4)
  {
  }

  return redirection;
}

- (uint64_t)_didPerformRedirection:(WTF *)this newRequest:(void *)request
{
  *this = &unk_1F10F8918;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
  }

  return WTF::fastFree(this, request);
}

- (uint64_t)_didPerformRedirection:(uint64_t)redirection newRequest:
{
  v2 = *(redirection + 16);
  WebCore::ResourceResponse::ResourceResponse(v8, *(redirection + 24));
  MEMORY[0x19EB06210](v7, *(redirection + 32));
  v3 = WebKit::WebURLSchemeTask::didPerformRedirection(v2 + 8, v8, v7);
  WebCore::ResourceRequest::~ResourceRequest(v7);
  v5 = v9;
  v9 = 0;
  if (v5)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v8, v4);
  return v3;
}

@end