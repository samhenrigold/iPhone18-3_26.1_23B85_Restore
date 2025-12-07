@interface _SSBDatabaseUpdateV5FetchDataSessionHandler
- (_SSBDatabaseUpdateV5FetchDataSessionHandler)initWithCompletionHandler:(void *)handler provider:(int)provider;
- (id).cxx_construct;
- (id)initWithCompletionHandler:provider:;
- (uint64_t)initWithCompletionHandler:provider:;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)initWithCompletionHandler:provider:;
@end

@implementation _SSBDatabaseUpdateV5FetchDataSessionHandler

- (_SSBDatabaseUpdateV5FetchDataSessionHandler)initWithCompletionHandler:(void *)handler provider:(int)provider
{
  v25 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = _SSBDatabaseUpdateV5FetchDataSessionHandler;
  v6 = [(_SSBDatabaseUpdateV5FetchDataSessionHandler *)&v16 init];
  if (v6)
  {
    _ZNSt3__115allocate_sharedB8sn200100I12ByteProviderNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(from);
    v7 = *(v6 + 3);
    *(v6 + 1) = *from;
    from[0] = 0;
    from[1] = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v7);
      if (from[1])
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](from[1]);
      }
    }

    objc_initWeak(&location, v6);
    std::allocate_shared[abi:sn200100]<ReadStream,std::allocator<ReadStream>,std::shared_ptr<ByteProvider> &,0>(v6 + 2, &v14);
    objc_copyWeak(&to, &location);
    std::__function::__value_func<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&,NSError *)>::__value_func[abi:sn200100](v19, handler);
    v8 = operator new(8uLL);
    v17 = v14;
    v14 = 0uLL;
    objc_moveWeak(from, &to);
    if (v20)
    {
      if (v20 == v19)
      {
        v22 = &from[1];
        (*(*v20 + 3))();
      }

      else
      {
        v22 = v20;
        v20 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v24 = 0;
    v9 = operator new(0x30uLL);
    *v9 = &unk_2838CE010;
    objc_moveWeak(v9 + 1, from);
    v10 = v22;
    if (v22)
    {
      if (v22 == &from[1])
      {
        v9[5] = v9 + 2;
        (*(*v10 + 3))(v10);
      }

      else
      {
        v9[5] = v22;
        v22 = 0;
      }
    }

    else
    {
      v9[5] = 0;
    }

    v24 = v9;
    Backend::Google::HashListsBatchGetResponseParser::HashListsBatchGetResponseParser(v8, &v17, v23);
    std::__function::__value_func<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&)>::~__value_func[abi:sn200100](v23);
    std::__function::__value_func<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&,NSError *)>::~__value_func[abi:sn200100](&from[1]);
    objc_destroyWeak(from);
    if (*(&v17 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](*(&v17 + 1));
    }

    v11 = *(v6 + 1);
    *(v6 + 1) = v8;
    if (v11)
    {
      if (*v11)
      {
        (*(*v11 + 8))();
      }

      operator delete(v11);
    }

    std::__function::__value_func<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&,NSError *)>::~__value_func[abi:sn200100](v19);
    objc_destroyWeak(&to);
    if (*(&v14 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](*(&v14 + 1));
    }

    *(v6 + 12) = provider;
    v12 = v6;
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  handlerCopy[2](handlerCopy, [responseCopy statusCode] == 200);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  dataCopy = data;
  self->_receivedBytes += [dataCopy length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82___SSBDatabaseUpdateV5FetchDataSessionHandler_URLSession_dataTask_didReceiveData___block_invoke;
  v7[3] = &unk_278564EC8;
  v7[4] = self;
  [dataCopy enumerateByteRangesUsingBlock:v7];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  errorCopy = error;
  logDataLength(self->_receivedBytes, self->_provider);
  if (errorCopy)
  {
    objc_storeStrong(&self->_error, error);
    ByteProvider::readFailedWithError(self->_byteProvider.__ptr_);
  }

  else
  {
    ByteProvider::finishedReadingSuccessfully(self->_byteProvider.__ptr_);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (uint64_t)initWithCompletionHandler:provider:
{
  *a2 = &unk_2838CE010;
  v3 = a2 + 16;
  objc_copyWeak((a2 + 8), (self + 8));
  return std::__function::__value_func<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&,NSError *)>::__value_func[abi:sn200100](v3, self + 16);
}

- (void)initWithCompletionHandler:provider:
{
  WeakRetained = objc_loadWeakRetained((self + 8));
  v5 = WeakRetained;
  if (WeakRetained && (v6 = *(WeakRetained + 5)) != 0)
  {
    v7[0] = 0;
    v8 = 0;
    std::function<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&,NSError *)>::operator()(self + 16, v7, v6);
    if (v8 == 1)
    {
      v9 = v7;
      std::vector<Backend::Google::HashList>::__destroy_vector::operator()[abi:sn200100](&v9);
    }
  }

  else
  {
    std::function<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&,NSError *)>::operator()(self + 16, a2, 0);
  }
}

- (id)initWithCompletionHandler:provider:
{
  v2 = operator new(0x30uLL);
  *v2 = &unk_2838CE010;
  objc_copyWeak(v2 + 1, (self + 8));
  std::__function::__value_func<void ()(std::optional<Backend::Google::HashListsBatchGetResponse> &&,NSError *)>::__value_func[abi:sn200100]((v2 + 2), self + 16);
  return v2;
}

@end