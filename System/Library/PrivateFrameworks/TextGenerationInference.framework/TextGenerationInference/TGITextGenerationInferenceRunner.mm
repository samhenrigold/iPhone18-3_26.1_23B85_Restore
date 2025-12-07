@interface TGITextGenerationInferenceRunner
- (TGITextGenerationInferenceRunner)initWithQueue:(id)queue executionUUID:(id)d operation:(id)operation session:(id)session;
- (TGITextGenerationInferenceWordFragment)runIncrementalInferenceWithTokenIDs:(TGITextGenerationInferenceWordFragment *__return_ptr)retstr;
- (id).cxx_construct;
- (shared_ptr<TGITextGenerationInferenceDecodingPolicy>)decodingPolicy;
- (shared_ptr<TGITextGenerationInferenceModelInterface>)model;
- (void)cancel;
- (void)run;
@end

@implementation TGITextGenerationInferenceRunner

- (TGITextGenerationInferenceRunner)initWithQueue:(id)queue executionUUID:(id)d operation:(id)operation session:(id)session
{
  queueCopy = queue;
  dCopy = d;
  operationCopy = operation;
  sessionCopy = session;
  v21.receiver = self;
  v21.super_class = TGITextGenerationInferenceRunner;
  v15 = [(TGITextGenerationInferenceRunner *)&v21 init];
  if (v15)
  {
    v16 = [operationCopy copy];
    operation = v15->_operation;
    v15->_operation = v16;

    objc_storeStrong(&v15->_session, session);
    objc_storeStrong(&v15->_workQueue, queue);
    *&v15->_canceled = 256;
    v18 = [dCopy copy];
    executionUUID = v15->_executionUUID;
    v15->_executionUUID = v18;

    TGITextGenerationInferenceDecodingPolicy::create();
  }

  return 0;
}

- (void)run
{
  *buf = 138412290;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_26D3C1000, log, OS_LOG_TYPE_ERROR, "Failed to run operation: %@, model is nil", buf, 0xCu);
}

- (TGITextGenerationInferenceWordFragment)runIncrementalInferenceWithTokenIDs:(TGITextGenerationInferenceWordFragment *__return_ptr)retstr
{
  v3 = v2;
  v4 = v1;
  workQueue = [v1 workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (!v3[1])
  {
    [TGITextGenerationInferenceRunner runIncrementalInferenceWithTokenIDs:];
  }

  if ([v4 shouldDoCacheLookUp])
  {
    session = [v4 session];
    v8 = session;
    if (session)
    {
      objc_msgSend_stateCache(session);
      session = __p[0];
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
    }

    TGITextGenerationInferenceSessionStateCache::cacheEntryForTokenIDs(session, v3, &v25);
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
    }

    if (v27)
    {
      v9 = *v28;
      objc_msgSend_model(v4);
      (*(*v23 + 8))(__p);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      retstr->var0 = v9;
      if (SHIBYTE(v22) < 0)
      {
        std::string::__init_copy_ctor_external(&retstr->var1, __p[0], __p[1]);
      }

      else
      {
        *retstr->var1.var0.var0.var0 = *__p;
        *(&retstr->var1.var0.var1 + 2) = v22;
      }

      objc_msgSend_model(v4);
      (*(*v23 + 2))(v23, v3[1], &v25);
      result = v24;
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (SHIBYTE(v22) < 0)
      {
        v18 = __p[0];
        goto LABEL_38;
      }

      return result;
    }

    [v4 setShouldDoCacheLookUp:0];
  }

  v10 = *(*v3 + 4 * v3[1] - 4);
  objc_msgSend_model(v4);
  (*(*v25 + 48))(v25, v10);
  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
  }

  objc_msgSend_decodingPolicy(v4);
  v11 = v23;
  objc_msgSend_model(v4);
  (*(*v19 + 32))(&v25);
  TGITextGenerationInferenceDecodingPolicy::stateWithLogits(__p, v11, v25, *(&v25 + 1));
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  session2 = [v4 session];
  v13 = session2;
  if (session2)
  {
    objc_msgSend_stateCache(session2);
    v14 = v23;
  }

  else
  {
    v14 = 0;
    v23 = 0;
    v24 = 0;
  }

  objc_msgSend_model(v4);
  (*(*v19 + 24))(&v25);
  TGITextGenerationInferenceSessionStateCache::addCacheEntryForStepState(v14, &v25, __p);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v15 = *__p[0];
  objc_msgSend_model(v4);
  (*(*v23 + 8))(&v25);
  result = v24;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  retstr->var0 = v15;
  p_var1 = &retstr->var1;
  if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    *&p_var1->__r_.__value_.__l.__data_ = v25;
    p_var1->__r_.__value_.__r.__words[2] = v26;
    return result;
  }

  std::string::__init_copy_ctor_external(p_var1, v25, *(&v25 + 1));
  if (SHIBYTE(v26) < 0)
  {
    v18 = v25;
LABEL_38:
    operator delete(v18);
  }

  return result;
}

- (void)cancel
{
  workQueue = [(TGITextGenerationInferenceRunner *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  [(TGITextGenerationInferenceRunner *)self setCanceled:1];
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:89 userInfo:0];
  session = [(TGITextGenerationInferenceRunner *)self session];
  delegate = [session delegate];
  executionUUID = [(TGITextGenerationInferenceRunner *)self executionUUID];
  [delegate operationWithExecutionUUID:executionUUID didFailWithError:v7];
}

- (shared_ptr<TGITextGenerationInferenceModelInterface>)model
{
  objc_copyCppObjectAtomic(v2, &self->_model, __copy_helper_atomic_property_);
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

- (shared_ptr<TGITextGenerationInferenceDecodingPolicy>)decodingPolicy
{
  objc_copyCppObjectAtomic(v2, &self->_decodingPolicy, __copy_helper_atomic_property__11);
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  return self;
}

@end