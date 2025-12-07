@interface URLSessionDelegate
- (id).cxx_construct;
- (shared_ptr<SessionTaskContext>)getContext:(int64_t)context;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)addCallbackHandler:(shared_ptr<ctu:(int64_t)handler :Http::HttpRequestCallbackHandler>)a3 for:;
- (void)dealloc;
- (void)removeCallbackFor:(int64_t)for;
@end

@implementation URLSessionDelegate

- (void)addCallbackHandler:(shared_ptr<ctu:(int64_t)handler :Http::HttpRequestCallbackHandler>)a3 for:
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = operator new(0x30uLL);
  v8 = v7;
  v9 = *var0;
  v10 = *(var0 + 1);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v7->~__shared_weak_count = v9;
    v7->~__shared_weak_count_0 = v10;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v7->~__shared_weak_count = v9;
    v7->~__shared_weak_count_0 = 0;
  }

  v7->__on_zero_shared_weak = 0;
  v7[1].~__shared_weak_count = 0;
  v7->__on_zero_shared = objc_opt_new();
  v8->__get_deleter = objc_opt_new();
  v11 = operator new(0x20uLL);
  v11->__shared_owners_ = 0;
  v11->__vftable = &unk_1F1CB4E10;
  v11->__shared_weak_owners_ = 0;
  v11[1].__vftable = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  p_end_node = &self->fTaskHandlers.__tree_.__end_node_;
  left = self->fTaskHandlers.__tree_.__end_node_.__left_;
  if (left)
  {
    while (1)
    {
      while (1)
      {
        v14 = left;
        v15 = left[4].__left_;
        if (v15 <= var1)
        {
          break;
        }

        left = v14->__left_;
        p_end_node = v14;
        if (!v14->__left_)
        {
          goto LABEL_14;
        }
      }

      if (v15 >= var1)
      {
        break;
      }

      left = v14[1].__left_;
      if (!left)
      {
        p_end_node = v14 + 1;
        goto LABEL_14;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  else
  {
    v14 = &self->fTaskHandlers.__tree_.__end_node_;
LABEL_14:
    v16 = operator new(0x38uLL);
    v16[4] = var1;
    v16[5] = v8;
    v16[6] = v11;
    *v16 = 0;
    v16[1] = 0;
    v16[2] = v14;
    p_end_node->__left_ = v16;
    v17 = *self->fTaskHandlers.__tree_.__begin_node_;
    if (v17)
    {
      self->fTaskHandlers.__tree_.__begin_node_ = v17;
      v16 = p_end_node->__left_;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(self->fTaskHandlers.__tree_.__end_node_.__left_, v16);
    ++self->fTaskHandlers.__tree_.__size_;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
}

- (void)removeCallbackFor:(int64_t)for
{
  left = self->fTaskHandlers.__tree_.__end_node_.__left_;
  if (!left)
  {
    return;
  }

  p_end_node = &self->fTaskHandlers.__tree_.__end_node_;
  v5 = self->fTaskHandlers.__tree_.__end_node_.__left_;
  do
  {
    v6 = *(v5 + 4);
    v7 = v6 >= for;
    v8 = v6 < for;
    if (v7)
    {
      p_end_node = v5;
    }

    v5 = *(v5 + v8);
  }

  while (v5);
  if (p_end_node == &self->fTaskHandlers.__tree_.__end_node_ || p_end_node[4].__left_ > for)
  {
    return;
  }

  v9 = p_end_node[1].__left_;
  if (v9)
  {
    do
    {
      v10 = v9;
      v9 = v9->__left_;
    }

    while (v9);
  }

  else
  {
    v11 = p_end_node;
    do
    {
      v10 = v11[2].__left_;
      v35 = *v10 == v11;
      v11 = v10;
    }

    while (!v35);
  }

  if (self->fTaskHandlers.__tree_.__begin_node_ == p_end_node)
  {
    self->fTaskHandlers.__tree_.__begin_node_ = v10;
  }

  --self->fTaskHandlers.__tree_.__size_;
  v12 = p_end_node->__left_;
  v13 = p_end_node;
  if (p_end_node->__left_)
  {
    v14 = p_end_node[1].__left_;
    if (!v14)
    {
      v13 = p_end_node;
      goto LABEL_24;
    }

    do
    {
      v13 = v14;
      v14 = v14->__left_;
    }

    while (v14);
  }

  v12 = v13[1].__left_;
  if (v12)
  {
LABEL_24:
    v16 = 0;
    v15 = v13[2].__left_;
    v12[2].__left_ = v15;
    goto LABEL_25;
  }

  v15 = v13[2].__left_;
  v16 = 1;
LABEL_25:
  v17 = *v15;
  if (*v15 == v13)
  {
    *v15 = v12;
    if (v13 == left)
    {
      v17 = 0;
      left = v12;
    }

    else
    {
      v17 = v15[1];
    }
  }

  else
  {
    v15[1] = v12;
  }

  left_low = LOBYTE(v13[3].__left_);
  if (v13 != p_end_node)
  {
    v19 = p_end_node[2].__left_;
    v13[2].__left_ = v19;
    v19[*v19 != p_end_node] = v13;
    v21 = p_end_node->__left_;
    v20 = p_end_node[1].__left_;
    v21[2] = v13;
    v13->__left_ = v21;
    v13[1].__left_ = v20;
    if (v20)
    {
      *(v20 + 2) = v13;
    }

    LOBYTE(v13[3].__left_) = p_end_node[3].__left_;
    if (left == p_end_node)
    {
      left = v13;
    }
  }

  if (!left || !left_low)
  {
    goto LABEL_88;
  }

  if (!v16)
  {
    LOBYTE(v12[3].__left_) = 1;
    goto LABEL_88;
  }

  while (1)
  {
    v22 = v17[2].__left_;
    v23 = *v22;
    if (*v22 == v17)
    {
      break;
    }

    if ((v17[3].__left_ & 1) == 0)
    {
      LOBYTE(v17[3].__left_) = 1;
      *(v22 + 24) = 0;
      v24 = v22[1];
      v25 = *v24;
      v22[1] = *v24;
      if (v25)
      {
        *(v25 + 16) = v22;
      }

      v26 = v22[2];
      v24[2] = v26;
      v26[*v26 != v22] = v24;
      *v24 = v22;
      v22[2] = v24;
      if (left == v17->__left_)
      {
        left = v17;
      }

      v17 = *(v17->__left_ + 1);
    }

    v27.__left_ = v17->__left_;
    if (v17->__left_ && *(v27.__left_ + 24) != 1)
    {
      v28 = v17[1].__left_;
      if (v28 && (v28[24] & 1) == 0)
      {
LABEL_74:
        v27.__left_ = v17;
      }

      else
      {
        *(v27.__left_ + 24) = 1;
        LOBYTE(v17[3].__left_) = 0;
        v36 = *(v27.__left_ + 1);
        v17->__left_ = v36;
        if (v36)
        {
          v36[2] = v17;
        }

        v37 = v17[2].__left_;
        *(v27.__left_ + 2) = v37;
        v37[*v37 != v17] = v27.__left_;
        *(v27.__left_ + 1) = v17;
        v17[2].__left_ = v27.__left_;
        v28 = v17;
      }

      v38 = *(v27.__left_ + 2);
      *(v27.__left_ + 24) = *(v38 + 24);
      *(v38 + 24) = 1;
      v28[24] = 1;
      v39 = *(v38 + 8);
      v40 = *v39;
      *(v38 + 8) = *v39;
      if (v40)
      {
        *(v40 + 16) = v38;
      }

      v41 = *(v38 + 16);
      v39[2] = v41;
      v41[*v41 != v38] = v39;
      *v39 = v38;
      goto LABEL_87;
    }

    v28 = v17[1].__left_;
    if (v28 && v28[24] != 1)
    {
      goto LABEL_74;
    }

    LOBYTE(v17[3].__left_) = 0;
    v29 = v17[2].__left_;
    if (v29 == left || (v29[3].__left_ & 1) == 0)
    {
      goto LABEL_68;
    }

LABEL_66:
    v17 = *(v29[2].__left_ + (*v29[2].__left_ == v29));
  }

  if ((v17[3].__left_ & 1) == 0)
  {
    LOBYTE(v17[3].__left_) = 1;
    *(v22 + 24) = 0;
    v30 = v23[1].__left_;
    *v22 = v30;
    if (v30)
    {
      v30[2].__left_ = v22;
    }

    v31 = v22[2];
    v23[2].__left_ = v31;
    v31[*v31 != v22] = v23;
    v23[1].__left_ = v22;
    v22[2] = v23;
    v32 = v17[1].__left_;
    if (left == v32)
    {
      left = v17;
    }

    v17 = v32->__left_;
  }

  v33.__left_ = v17->__left_;
  if (v17->__left_ && *(v33.__left_ + 24) != 1)
  {
    goto LABEL_83;
  }

  v34 = v17[1].__left_;
  if (!v34 || *(v34 + 24) == 1)
  {
    LOBYTE(v17[3].__left_) = 0;
    v29 = v17[2].__left_;
    v35 = LOBYTE(v29[3].__left_) != 1 || v29 == left;
    if (v35)
    {
LABEL_68:
      LOBYTE(v29[3].__left_) = 1;
      goto LABEL_88;
    }

    goto LABEL_66;
  }

  if (v33.__left_ && (*(v33.__left_ + 24) & 1) == 0)
  {
LABEL_83:
    v34 = v17;
    goto LABEL_84;
  }

  *(v34 + 24) = 1;
  LOBYTE(v17[3].__left_) = 0;
  v42 = *v34;
  v17[1].__left_ = *v34;
  if (v42)
  {
    *(v42 + 16) = v17;
  }

  v43 = v17[2].__left_;
  v34[2] = v43;
  v43[*v43 != v17] = v34;
  *v34 = v17;
  v17[2].__left_ = v34;
  v33.__left_ = v17;
LABEL_84:
  v38 = v34[2];
  *(v34 + 24) = *(v38 + 24);
  *(v38 + 24) = 1;
  *(v33.__left_ + 24) = 1;
  v39 = *v38;
  v44 = *(*v38 + 8);
  *v38 = v44;
  if (v44)
  {
    *(v44 + 16) = v38;
  }

  v45 = *(v38 + 16);
  v39[2] = v45;
  v45[*v45 != v38] = v39;
  v39[1] = v38;
LABEL_87:
  *(v38 + 16) = v39;
LABEL_88:
  v46 = p_end_node[6].__left_;
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  operator delete(p_end_node);
}

- (void)dealloc
{
  p_end_node = &self->fTaskHandlers.__tree_.__end_node_;
  std::__tree<std::__value_type<unsigned long,std::shared_ptr<SessionTaskContext>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<SessionTaskContext>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<SessionTaskContext>>>>::destroy(self->fTaskHandlers.__tree_.__end_node_.__left_, a2);
  self->fTaskHandlers.__tree_.__begin_node_ = p_end_node;
  self->fTaskHandlers.__tree_.__size_ = 0;
  p_end_node->__left_ = 0;
  v4.receiver = self;
  v4.super_class = URLSessionDelegate;
  [(URLSessionDelegate *)&v4 dealloc];
}

- (shared_ptr<SessionTaskContext>)getContext:(int64_t)context
{
  left = self->fTaskHandlers.__tree_.__end_node_.__left_;
  p_end_node = &self->fTaskHandlers.__tree_.__end_node_;
  v5 = left;
  if (!left)
  {
    goto LABEL_9;
  }

  v7 = p_end_node;
  do
  {
    v8 = v5[4].__left_;
    v9 = v8 >= context;
    v10 = v8 < context;
    if (v9)
    {
      v7 = v5;
    }

    v5 = v5[v10].__left_;
  }

  while (v5);
  if (v7 != p_end_node && v7[4].__left_ <= context)
  {
    v12 = v7[5].__left_;
    v11 = v7[6].__left_;
    *v3 = v12;
    v3[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_9:
    *v3 = 0;
    v3[1] = 0;
  }

  result.var1 = a2;
  result.var0 = p_end_node;
  return result;
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  [task taskIdentifier];
  if (self)
  {
    objc_msgSend_getContext_(self);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = operator new(0x68uLL);
      ctu::Http::HttpResponseConcrete::HttpResponseConcrete(v10, response);
      *(v10 + 48) = [task _TLSNegotiatedCipherSuite];
      std::shared_ptr<ctu::Http::HttpResponse>::reset[abi:ne200100]<ctu::Http::HttpResponseConcrete,0>(0xAAAAAAAAAAAAAACALL, v10);
    }
  }

  else
  {
    v11 = 0;
  }

  (*(handler + 2))(handler, 1);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  [task taskIdentifier];
  if (self)
  {
    objc_msgSend_getContext_(self);
    v7 = v23[1];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        v10 = *v23;
        if (*v23)
        {
          v11 = v23;
          v12 = v23[4];
          {
            v15 = v14;
            v16 = v11[5];
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (error)
            {
              domain = [error domain];
              if ([domain isEqualToString:*MEMORY[0x1E696A978]] && (v18 = objc_msgSend(error, "code"), (v18 + 1009) <= 9))
              {
                v19 = dword_1A9164B44[v18 + 1009];
              }

              else
              {
                v19 = 0;
              }

              *(v15 + 2) = v19;
              v15[6] = [error code];
              errorCopy = error;
              ctu::cf::CFSharedRef<__CFError>::operator=(v15 + 11, &errorCopy);
            }

            else
            {
              errorCopy = v11[2];
              ctu::cf::CFSharedRef<__CFData const>::operator=(v14 + 10, &errorCopy);
              *(v15 + 2) = 1;
            }
          }

          else
          {
            v16 = 0;
          }

          v20 = v23[5];
          v21 = v23[4];
          v22 = v20;
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v10 + 16))(v10, &v21);
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  [task taskIdentifier];
  if (self)
  {
    objc_msgSend_getContext_(self);
    if (data)
    {
      [MEMORY[0xAAAAAAAAAAAAAABA] appendData:data];
      if (MEMORY[0xAAAAAAAAAAAAAAB2])
      {
        v7 = std::__shared_weak_count::lock(MEMORY[0xAAAAAAAAAAAAAAB2]);
        if (v7)
        {
          v8 = v7;
          if (MEMORY[0xAAAAAAAAAAAAAAAA])
          {
            (*(*MEMORY[0xAAAAAAAAAAAAAAAA] + 32))(MEMORY[0xAAAAAAAAAAAAAAAA], [data length], objc_msgSend(MEMORY[0xAAAAAAAAAAAAAABA], "length"));
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  [task taskIdentifier];
  if (self)
  {
    objc_msgSend_getContext_(self);
    if (MEMORY[0xAAAAAAAAAAAAAAB2])
    {
      v11 = std::__shared_weak_count::lock(MEMORY[0xAAAAAAAAAAAAAAB2]);
      if (v11)
      {
        v12 = v11;
        if (MEMORY[0xAAAAAAAAAAAAAAAA])
        {
          (*(*MEMORY[0xAAAAAAAAAAAAAAAA] + 40))(MEMORY[0xAAAAAAAAAAAAAAAA], data, sent, send);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  theDict[1] = *MEMORY[0x1E69E9840];
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  [task taskIdentifier];
  if (!self)
  {
    Value = 0;
    v29 = 0;
    v30 = 0;
LABEL_21:
    v16 = 1;
    goto LABEL_22;
  }

  objc_msgSend_getContext_(self);
  v9 = [objc_msgSend(challenge "protectionSpace")];
  if ([v9 isEqualToString:*MEMORY[0x1E696A940]])
  {
    v10 = v29[1];
    if (v10)
    {
      v11 = std::__shared_weak_count::lock(v10);
      if (v11)
      {
        v12 = v11;
        v13 = *v29;
        if (*v29)
        {
          theDict[0] = 0xAAAAAAAAAAAAAAAALL;
          (*(*v13 + 48))(theDict);
          if (theDict[0])
          {
            Value = CFDictionaryGetValue(theDict[0], *MEMORY[0x1E697B0B8]);
            if (!Value)
            {
LABEL_26:
              v16 = 1;
              goto LABEL_27;
            }

            TypeID = SecIdentityGetTypeID();
            if (TypeID == CFGetTypeID(Value))
            {
              Value = [MEMORY[0x1E696AF30] credentialWithIdentity:Value certificates:0 persistence:0];
              v16 = 0;
LABEL_27:
              ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(theDict);
              goto LABEL_31;
            }
          }

          Value = 0;
          goto LABEL_26;
        }

        goto LABEL_30;
      }
    }

    goto LABEL_20;
  }

  if (![v9 isEqualToString:*MEMORY[0x1E696A968]] || (v17 = v29[1]) == 0 || (v18 = std::__shared_weak_count::lock(v17)) == 0)
  {
LABEL_20:
    Value = 0;
    goto LABEL_21;
  }

  v12 = v18;
  v19 = *v29;
  if (!*v29)
  {
    goto LABEL_30;
  }

  (*(*v19 + 56))(theDict, v19);
  if (!theDict[0])
  {
    ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(theDict);
    goto LABEL_30;
  }

  (*(*v19 + 56))(&theArray, v19);
  Count = CFArrayGetCount(theArray);
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&theArray);
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(theDict);
  if (!Count)
  {
LABEL_30:
    Value = 0;
    v16 = 1;
    goto LABEL_31;
  }

  v21 = [objc_msgSend(challenge "protectionSpace")];
  if (((*(*v19 + 64))(v19, v21) & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_30;
    }

    LOWORD(theDict[0]) = 0;
    v24 = MEMORY[0x1E69E9C10];
    v25 = "DEBUG: Failed to validate certs.";
    v26 = 2;
LABEL_40:
    _os_log_debug_impl(&dword_1A90E3000, v24, OS_LOG_TYPE_DEBUG, v25, theDict, v26);
    goto LABEL_30;
  }

  (*(*v19 + 56))(theDict, v19);
  v22 = SecTrustSetAnchorCertificates(v21, theDict[0]);
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(theDict);
  if (!v22)
  {
    LODWORD(theArray) = -1431655766;
    v23 = MEMORY[0x1AC580760](v21, &theArray);
    if (v23)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_30;
      }

      LODWORD(theDict[0]) = 67109120;
      HIDWORD(theDict[0]) = v23;
      v24 = MEMORY[0x1E69E9C10];
      v25 = "Server pinned certs' trust evaluation failed due to STATUS code: %d";
    }

    else
    {
      v27 = theArray;
      if (theArray == 4 || theArray == 1)
      {
        Value = [MEMORY[0x1E696AF30] credentialForTrust:{objc_msgSend(objc_msgSend(challenge, "protectionSpace"), "serverTrust")}];
        v16 = 0;
        goto LABEL_31;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_30;
      }

      LODWORD(theDict[0]) = 67109120;
      HIDWORD(theDict[0]) = v27;
      v24 = MEMORY[0x1E69E9C10];
      v25 = "DEBUG: Server pinned certs' trust evaluation failed due to RESULT code: %u";
    }

    v26 = 8;
    goto LABEL_40;
  }

  Value = 0;
  v16 = 2;
LABEL_31:
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_22:
  (*(handler + 2))(handler, v16, Value);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  [task taskIdentifier];
  if (self)
  {
    objc_msgSend_getContext_(self);
    if (MEMORY[0xAAAAAAAAAAAAAAB2] && (v11 = std::__shared_weak_count::lock(MEMORY[0xAAAAAAAAAAAAAAB2])) != 0)
    {
      v12 = v11;
      if (MEMORY[0xAAAAAAAAAAAAAAAA])
      {
        v13 = (*(*MEMORY[0xAAAAAAAAAAAAAAAA] + 24))(MEMORY[0xAAAAAAAAAAAAAAAA], request, redirection);
      }

      else
      {
        v13 = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  (*(handler + 2))(handler, v13);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end