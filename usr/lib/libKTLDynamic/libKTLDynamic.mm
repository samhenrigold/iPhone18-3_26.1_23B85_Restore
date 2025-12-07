uint64_t ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

double trace::ARICommandDriver::ARICommandDriver(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

uint64_t trace::ARICommandDriver::TraceConfig(uint64_t a1, uint64_t a2, AriSdk::ARI_TraceSetConfigRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  if (!v6 && *(v5 + 16))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__15;
    v32 = __Block_byref_object_dispose__16;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v20 = v29;
      v21 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v20[5], v21))
      {
        v22 = 1;
        _Block_object_dispose(&v28, 8);
        v23 = object;
        if (!object)
        {
LABEL_29:
          if ((v22 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_30;
        }

LABEL_28:
        dispatch_release(v23);
        goto LABEL_29;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v22 = 0;
    _Block_object_dispose(&v28, 8);
    v23 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = MEMORY[0];
  v8 = MEMORY[8] - MEMORY[0];
  v9 = *(v5 + 20);
  LODWORD(v28) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", MEMORY[8] - MEMORY[0], v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v6;
  if (!*v6 || ((v11 = v10(v6, v7, v8, &v28, 1, v9, 0), LODWORD(v10) = v28, v28 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
LABEL_15:
    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_16;
  }

  v28 = 0;
  v13 = KTLUTACopyReceiveData(*(a1 + 16), &v28);
  v14 = v28;
  if (v28)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = operator new(0x48uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_TraceSetConfigRspCb_SDK::ARI_TraceSetConfigRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_TraceSetConfigRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_TraceSetConfigRspCb_SDK::unpack(v25))
    {
      v18 = 1;
      goto LABEL_19;
    }
  }

  else if (AriSdk::MsgBase::getMergedGMID(v25) == 67600384)
  {
    _KTLErrorPrint("perform", "Received NACK\n", v26, v27, 0, 0);
  }

  else
  {
    AriSdk::MsgBase::getMergedGMID(*a3);
    _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
  }

LABEL_16:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v18 = 0;
  *a3 = 0;
LABEL_19:
  if ((v18 & 1) == 0)
  {
    _KTLErrorPrint("TraceConfig", "Failed to run TraceSetConfigReq\n");
  }

  return v18;
}

void sub_297A27FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void trace::ARICommandDriver::TraceFlush(float *a1, uint64_t a2, AriSdk::ARI_TraceFlushRspCb_SDK **a3)
{
  _KTLDebugPrint("TraceFlush", "Flushing trace");
  v61 = 0;
  v62 = 0;
  AriSdk::MsgBase::getRawBytes();
  v55 = 0;
  v56 = &v55;
  v57 = 0x3002000000;
  v58 = __Block_byref_object_copy_;
  v59 = __Block_byref_object_dispose_;
  v5 = operator new(0x90uLL);
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = 850045863;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 10) = 0;
  *(v5 + 11) = 1018212795;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 124) = 0u;
  *v5 = &unk_2A1E624A0;
  v60 = v5;
  v6 = *a1;
  v7 = *(a1 + 1);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN5trace16ARICommandDriver10TraceFlushEPN6AriSdk21ARI_TraceFlushReq_SDKEPPNS1_23ARI_TraceFlushRspCb_SDKE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_1;
  aBlock[5] = a1;
  aBlock[6] = v6;
  v54 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  aBlock[4] = &v55;
  _KTLDebugPrint("TraceFlush", "Registering for trace flush complete indication");
  v52 = _Block_copy(aBlock);
  ktl::CommandDriver::registerIndication(a1, 0x5D810000, &v52);
  if (v52)
  {
    _Block_release(v52);
  }

  v8 = operator new(0x90uLL);
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 850045863;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 10) = 0;
  *(v8 + 11) = 1018212795;
  *(v8 + 6) = 0u;
  *(v8 + 7) = 0u;
  *(v8 + 124) = 0u;
  *v8 = &unk_2A1E624A0;
  v63.__ptr_ = 0;
  __lk.__m_ = v56[5];
  v56[5] = v8;
  std::promise<BOOL>::~promise(&__lk);
  std::promise<BOOL>::~promise(&v63);
  v9 = v56[5];
  if (!v9)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::mutex::lock((v9 + 24));
  v10 = *(v9 + 136);
  if ((v10 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  *(v9 + 136) = v10 | 2;
  std::mutex::unlock((v9 + 24));
  _KTLDebugPrint("TraceFlush", "Perform trace flush");
  v12 = v61;
  v11 = v62;
  v50 = v61;
  v51 = v62;
  if (v62)
  {
    atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a3 = 0;
  v13 = *(a1 + 2);
  v14 = *(v13 + 8);
  if (v14 || !*(v13 + 16))
  {
    v15 = *v12;
    v16 = v12[1] - *v12;
    v17 = *(v13 + 20);
    LODWORD(__lk.__m_) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v16, v17);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v15, v16);
    }

    v18 = *v14;
    if (*v14 && ((v19 = v18(v14, v15, v16, &__lk, 1, v17, 0), LODWORD(v18) = __lk.__m_, LODWORD(__lk.__m_) == v16) ? (v20 = v19) : (v20 = 0), (v20 & 1) != 0))
    {
      __lk.__m_ = 0;
      v21 = KTLUTACopyReceiveData(*(a1 + 2), &__lk);
      m = __lk.__m_;
      if (__lk.__m_)
      {
        v23 = v21;
      }

      else
      {
        v23 = 0;
      }

      if (v23 == 1)
      {
        v24 = operator new(0x48uLL);
        v25 = (*(m->__m_.__sig + 16))(m);
        AriSdk::ARI_TraceFlushRspCb_SDK::ARI_TraceFlushRspCb_SDK(v24, v25);
        *a3 = v24;
        (*(m->__m_.__sig + 8))(m);
        goto LABEL_93;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v18);
    }

    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_26;
  }

  __lk.__m_ = 0;
  *&__lk.__owns_ = &__lk;
  v70 = 0x3002000000;
  v71 = __Block_byref_object_copy__15;
  v72 = __Block_byref_object_dispose__16;
  v73 = 0xAAAAAAAAAAAAAAAALL;
  v73 = dispatch_semaphore_create(0);
  v63.__ptr_ = MEMORY[0x29EDCA5F8];
  v64 = 1107296256;
  v65 = ___ZN3ktl13CommandDriver7performIN6AriSdk23ARI_TraceFlushRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke;
  v66 = &__block_descriptor_tmp_26;
  p_lk = &__lk;
  v68 = a3;
  if (AriHost::Send())
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    goto LABEL_90;
  }

  v41 = *&__lk.__owns_;
  v42 = dispatch_time(0, 1000000 * *(*(a1 + 2) + 20));
  if (dispatch_semaphore_wait(*(v41 + 40), v42))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n");
LABEL_90:
    v43 = 0;
    _Block_object_dispose(&__lk, 8);
    v44 = v73;
    if (!v73)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  v43 = 1;
  _Block_object_dispose(&__lk, 8);
  v44 = v73;
  if (v73)
  {
LABEL_91:
    dispatch_release(v44);
  }

LABEL_92:
  if ((v43 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_93:
  hasDeclaredGmid = AriSdk::ARI_TraceFlushRspCb_SDK::hasDeclaredGmid(*a3);
  v46 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v46) == 67600384)
    {
      _KTLErrorPrint("perform", "Received NACK\n", v48, v49, v50, v51);
    }

    else
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
    }

LABEL_26:
    if (*a3)
    {
      (*(**a3 + 16))(*a3);
    }

    v26 = 0;
    *a3 = 0;
    if (!v11)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (AriSdk::ARI_TraceFlushRspCb_SDK::unpack(v46))
  {
    goto LABEL_26;
  }

  v26 = 1;
  if (v11)
  {
LABEL_29:
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_31:
  if (v26)
  {
    _KTLDebugPrint("TraceFlush", "Successfully flushed trace");
  }

  else
  {
    _KTLErrorPrint("TraceFlush", "Failed to flush trace");
  }

  v27.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  __lk.__m_ = (v9 + 24);
  *&__lk.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock((v9 + 24));
  v28 = *(v9 + 136);
  if ((v28 & 8) != 0)
  {
    v30 = 2;
    v31 = (v9 + 24);
    goto LABEL_62;
  }

  if ((v28 & 4) != 0)
  {
    v30 = 0;
    v31 = (v9 + 24);
    goto LABEL_62;
  }

  v29 = v27.__d_.__rep_ + 5000000000;
  while (std::chrono::steady_clock::now().__d_.__rep_ < v29)
  {
    if (v29 <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      goto LABEL_44;
    }

    v34.__d_.__rep_ = v29 - std::chrono::steady_clock::now().__d_.__rep_;
    if (v34.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v35.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v35.__d_.__rep_)
      {
        v36 = 0;
        goto LABEL_57;
      }

      if (v35.__d_.__rep_ < 1)
      {
        if (v35.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v32.__d_.__rep_ = v34.__d_.__rep_ + 0x8000000000000000;
          goto LABEL_42;
        }
      }

      else if (v35.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v36 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v34.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_57:
          v32.__d_.__rep_ = v36 + v34.__d_.__rep_;
          goto LABEL_42;
        }

LABEL_41:
        v32.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_42:
        std::condition_variable::__do_timed_wait((v9 + 88), &__lk, v32);
        std::chrono::steady_clock::now();
        goto LABEL_43;
      }

      v36 = 1000 * v35.__d_.__rep_;
      if (1000 * v35.__d_.__rep_ <= (v34.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_57;
      }

      goto LABEL_41;
    }

LABEL_43:
    std::chrono::steady_clock::now();
LABEL_44:
    v33 = *(v9 + 136);
    if ((v33 & 4) != 0)
    {
      goto LABEL_60;
    }
  }

  v33 = *(v9 + 136);
LABEL_60:
  v30 = ((v33 >> 2) & 1) == 0;
  if (__lk.__owns_)
  {
    v31 = __lk.__m_;
LABEL_62:
    std::mutex::unlock(v31);
  }

  if (v30 == 1)
  {
    _KTLErrorPrint("TraceFlush", "Timeout while waiting for trace flush indication");
    goto LABEL_73;
  }

  if (v30)
  {
    _KTLErrorPrint("TraceFlush", "Unexpected status while waiting for trace flush indication");
LABEL_73:
    v39 = v54;
    if (!v54)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  __lk.__m_ = (v9 + 24);
  *&__lk.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock((v9 + 24));
  std::__assoc_sub_state::__sub_wait(v9, &__lk);
  v37 = *(v9 + 16);
  v63.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v63);
  if (v37)
  {
    std::exception_ptr::exception_ptr(&v63, (v9 + 16));
    v47.__ptr_ = &v63;
    std::rethrow_exception(v47);
    __break(1u);
  }

  else
  {
    v38 = *(v9 + 140);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
      if (!atomic_fetch_add((v9 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_68;
      }

LABEL_85:
      if (v38)
      {
        goto LABEL_86;
      }

LABEL_69:
      _KTLErrorPrint("TraceFlush", "Error while receiving trace flush indication");
      v9 = 0;
      v39 = v54;
      if (!v54)
      {
        goto LABEL_75;
      }

LABEL_74:
      std::__shared_weak_count::__release_weak(v39);
      goto LABEL_75;
    }

    if (atomic_fetch_add((v9 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_85;
    }

LABEL_68:
    (*(*v9 + 16))(v9);
    if (!v38)
    {
      goto LABEL_69;
    }

LABEL_86:
    _KTLDebugPrint("TraceFlush", "Trace flush indication received successfully");
    v9 = 0;
    v39 = v54;
    if (v54)
    {
      goto LABEL_74;
    }

LABEL_75:
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    if (v9 && !atomic_fetch_add((v9 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v9 + 16))(v9);
    }

    _Block_object_dispose(&v55, 8);
    std::promise<BOOL>::~promise(&v60);
    v40 = v62;
    if (v62)
    {
      if (!atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v40->__on_zero_shared)(v40);
        std::__shared_weak_count::__release_weak(v40);
      }
    }
  }
}

void sub_297A28A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *aBlock, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::exception_ptr a30)
{
  _Block_object_dispose((v32 - 152), 8);
  v34 = *(v32 - 112);
  if (v34)
  {
    dispatch_release(v34);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
    if (!v30)
    {
LABEL_5:
      if (!v31)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else if (!v30)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_weak(v30);
  if (!v31)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!atomic_fetch_add(v31 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v31 + 16))(v31);
  }

LABEL_11:
  _Block_object_dispose(&a22, 8);
  std::promise<BOOL>::~promise(&a27);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ___ZN5trace16ARICommandDriver10TraceFlushEPN6AriSdk21ARI_TraceFlushReq_SDKEPPNS1_23ARI_TraceFlushRspCb_SDKE_block_invoke(void *a1, const unsigned __int8 *a2, unsigned int a3)
{
  v4 = a1[7];
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = std::__shared_weak_count::lock(v4);
  v22 = v6;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if (!a1[6])
  {
    result = 0xFFFFFFFFLL;
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_21;
    }

    return result;
  }

  _KTLDebugPrint("TraceFlush_block_invoke", "Received trace flush indication callback");
  v20 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[2] = v8;
  v19[3] = v8;
  v19[0] = v8;
  v19[1] = v8;
  AriSdk::ARI_TraceFlushCompleteInd_SDK::ARI_TraceFlushCompleteInd_SDK(v19, a2);
  GMID = AriSdk::MsgBase::getGMID(v19);
  v10 = AriSdk::MsgBase::getGMID(v19);
  if (((v10 >> 17) & 0xFFFF8000 | (v10 << 26)) != 0x5D810000)
  {
    _KTLErrorPrint("TraceFlush_block_invoke", "[ind] Got unexpected message 0x%0x, expected trace flush complete indication (0x%0x)", (GMID >> 17) & 0xFFFF8000 | (GMID << 26), 1568735232);
    v11 = *(*(a1[4] + 8) + 40);
    if (!v11)
    {
      std::__throw_future_error[abi:ne200100](3u);
    }

    v12 = (v11 + 24);
    std::mutex::lock((v11 + 24));
    if ((*(v11 + 136) & 1) != 0 || (v23.__ptr_ = 0, v15 = *(v11 + 16), std::exception_ptr::~exception_ptr(&v23), v15))
    {
      std::__throw_future_error[abi:ne200100](2u);
    }

    goto LABEL_19;
  }

  if (AriSdk::ARI_TraceFlushCompleteInd_SDK::unpack(v19) || *v20)
  {
    _KTLDebugPrint("TraceFlush_block_invoke", "[ind] Error while unpacking trace flush complete indication");
    v11 = *(*(a1[4] + 8) + 40);
    if (!v11)
    {
      std::__throw_future_error[abi:ne200100](3u);
    }

    v12 = (v11 + 24);
    std::mutex::lock((v11 + 24));
    if ((*(v11 + 136) & 1) != 0 || (v23.__ptr_ = 0, v13 = *(v11 + 16), std::exception_ptr::~exception_ptr(&v23), v13))
    {
      std::__throw_future_error[abi:ne200100](2u);
    }

LABEL_19:
    v16 = 0;
    goto LABEL_20;
  }

  _KTLDebugPrint("TraceFlush_block_invoke", "[ind] Trace flush complete indication success");
  v11 = *(*(a1[4] + 8) + 40);
  if (!v11)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  v12 = (v11 + 24);
  std::mutex::lock((v11 + 24));
  if ((*(v11 + 136) & 1) != 0 || (v23.__ptr_ = 0, v18 = *(v11 + 16), std::exception_ptr::~exception_ptr(&v23), v18))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  v16 = 1;
LABEL_20:
  *(v11 + 140) = v16;
  *(v11 + 136) |= 5u;
  std::condition_variable::notify_all((v11 + 88));
  std::mutex::unlock(v12);
  MEMORY[0x29C279F10](v19);
  result = 0;
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_21:
    v17 = result;
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return v17;
  }

  return result;
}

void sub_297A28EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::mutex::unlock(v10);
  MEMORY[0x29C279F10](va);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](v11 - 56);
  _Unwind_Resume(a1);
}

void sub_297A28F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x29C279F10](va, a2, a3);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](v5 - 56);
  _Unwind_Resume(a1);
}

BOOL trace::ARICommandDriver::isARIResponseValid(trace::ARICommandDriver *this, const AriSdk::MsgBase *a2, int a3)
{
  GMID = AriSdk::MsgBase::getGMID(a2);
  v5 = (GMID >> 17) & 0xFFFF8000 | (GMID << 26);
  return v5 != 67600384 && v5 == a3;
}

void __copy_helper_block_e8_32r48c44_ZTSNSt3__18weak_ptrIN3ktl13CommandDriverEEE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 8);
  v4 = *(a2 + 56);
  a1[6] = *(a2 + 48);
  a1[7] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_32r48c44_ZTSNSt3__18weak_ptrIN3ktl13CommandDriverEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__16(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk27ARI_TraceSetConfigRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x48uLL);
  AriSdk::ARI_TraceSetConfigRspCb_SDK::ARI_TraceSetConfigRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

void std::__assoc_state<BOOL>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete(v3);
}

void *std::promise<BOOL>::~promise(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v12.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v12);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x29C27A720](v10, 4, v4);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v6 = std::logic_error::logic_error(exception, v10);
        exception->__vftable = (MEMORY[0x29EDC9548] + 16);
        exception[1] = v10[1];
        std::exception_ptr::__from_native_exception_pointer(&v11, v6, v7);
        v8.__ptr_ = &v11;
        std::__assoc_sub_state::set_exception(v1, v8);
        std::exception_ptr::~exception_ptr(&v11);
        MEMORY[0x29C27A730](v10);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (*(*v1 + 16))(v1);
      return v9;
    }
  }

  return result;
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x29C27A720](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x29EDC9430], MEMORY[0x29EDC9390]);
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk23ARI_TraceFlushRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x48uLL);
  AriSdk::ARI_TraceFlushRspCb_SDK::ARI_TraceFlushRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

__n128 KTLDebugRegisterDelegate(__n128 *a1)
{
  result = *a1;
  off_2A18991C8 = a1[1].n128_u64[0];
  *&gDelegate = result;
  return result;
}

double KTLDebugSetDefaults()
{
  result = *&gDelegateDefault;
  *&gDelegate = gDelegateDefault;
  off_2A18991C8 = off_2A1E62518;
  _KTLDebugFlags = 15;
  return result;
}

uint64_t KTLDebugSetOutputFile(uint64_t a1)
{
  result = _MergedGlobals_0;
  if (_MergedGlobals_0)
  {
    result = fclose(_MergedGlobals_0);
  }

  _MergedGlobals_0 = a1;
  return result;
}

uint64_t _KTLDebugPrint(uint64_t result, const char *a2, ...)
{
  va_start(va, a2);
  if (_KTLDebugFlags)
  {
    return gDelegate(result, a2, va);
  }

  return result;
}

uint64_t _KTLErrorPrint(uint64_t result, const char *a2, ...)
{
  va_start(va, a2);
  if ((_KTLDebugFlags & 4) != 0)
  {
    return (*(&gDelegate + 1))(result, a2, va);
  }

  return result;
}

void _KTLDebugPrintOsLog(uint64_t a1, const char *a2, va_list a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    memset(__b, 170, sizeof(__b));
    vsnprintf(__b, 0x400uLL, a2, a3);
    if (qword_2A13A4F68 == -1)
    {
      v5 = qword_2A13A4F60;
      if (!os_log_type_enabled(qword_2A13A4F60, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }
    }

    else
    {
      dispatch_once(&qword_2A13A4F68, &__block_literal_global);
      v5 = qword_2A13A4F60;
      if (!os_log_type_enabled(qword_2A13A4F60, OS_LOG_TYPE_DEFAULT))
      {
LABEL_5:
        if (_MergedGlobals_0)
        {
          fprintf(_MergedGlobals_0, "%s\n", __b);
        }

        return;
      }
    }

    *buf = 136315138;
    v7 = __b;
    _os_log_impl(&dword_297A27000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    goto LABEL_5;
  }
}

const char *_KTLDebugPrintBinaryOsLog(const char *result, int a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a3 && _MergedGlobals_0)
  {
    v4 = a4;
    v5 = result;
    v6 = "misc";
    if (a2 == 1)
    {
      v6 = "recv";
    }

    if (a2)
    {
      v7 = v6;
    }

    else
    {
      v7 = "send";
    }

    bzero(v8, 0x400uLL);
    TelephonyUtilLogBinaryToBuffer();
    return fprintf(_MergedGlobals_0, "[%s:%u] %s\n%s\n", v7, v4, v5, v8);
  }

  return result;
}

uint64_t GetBBIPCLogs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x29EDCA608];
  v42 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41[3] = v5;
  v41[4] = v5;
  v41[1] = v5;
  v41[2] = v5;
  v41[0] = v5;
  v63 = 0xAAAAAAAAAAAAAAAALL;
  v62[10] = v5;
  v62[11] = v5;
  v62[8] = v5;
  v62[9] = v5;
  v62[6] = v5;
  v62[7] = v5;
  v62[4] = v5;
  v62[5] = v5;
  v62[2] = v5;
  v62[3] = v5;
  v62[0] = v5;
  v62[1] = v5;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  v6 = *(a1 + 16);
  v61 = v6;
  if (*(a1 + 8) || !v6)
  {
    v60 = 0;
    v56 = 0;
    LODWORD(v52) = v6;
    *__dst = 0;
    *&v76 = 0;
    if (!ARI_CsiIpcGetLogBufferListReq_ENC())
    {
      v12 = operator new(0x18uLL);
      v13 = v76;
      v12[2] = *__dst;
      *(v12 + 2) = v13;
      *v12 = &unk_2A1E625B0;
      if (KTLUTASendAndReleaseData(a1, v12))
      {
        if (KTLUTACopyReceiveData(a1, &v56))
        {
          v14 = v56;
          (*(*v56 + 16))(v56);
          v15 = ARI_CsiIpcGetLogBufferListRsp_Extract();
          (*(*v14 + 8))(v14);
          if (!(v15 | v60))
          {
LABEL_25:
            v20 = 0;
            LOBYTE(v16) = 0;
            v39 = 0;
            for (i = &v64 | 0xC; ; i += 24)
            {
              strncpy(__dst, i, 8uLL);
              LOBYTE(v73) = 0;
              _KTLDebugPrint("GetBBIPCLogs", "Fetching log buffer entry: filename=%s size=%d level=%d next=%d buf_p=%d\n", __dst, *(i - 4), *(i - 8), *(i - 12), *(i + 8));
              if (!*(i - 4) || !*(i + 8))
              {
                goto LABEL_27;
              }

              if (strstr(__dst, "..") || strchr(__dst, 47))
              {
                _KTLErrorPrint("GetBBIPCLogs", "Skipping potentially dangerous filename %s\n", __dst);
              }

              else
              {
                if (a2)
                {
                  snprintf(v62, 0xC8uLL, "%s/%s.bin");
                }

                else
                {
                  snprintf(v62, 0xC8uLL, "%s.bin");
                }

                v22 = open(v62, 1537, 420);
                v23 = v22;
                v24 = "Failure";
                if (v22 >= 0)
                {
                  v24 = "Success";
                }

                _KTLDebugPrint("GetBBIPCLogs", "File Open: %s (name=%s descriptor=%d)\n", v24, v62, v22);
                if ((v23 & 0x80000000) == 0)
                {
                  v16 = TelephonyUtilTransportCreateWithFD();
                  v25 = "Failure";
                  if (v16)
                  {
                    v25 = "Success";
                  }

                  _KTLDebugPrint("GetBBIPCLogs", "TelephonyUtilTransportCreateWithFD: %s (filedesc=%d)\n", v25, v23);
                  if (!v16)
                  {
                    goto LABEL_27;
                  }

                  v26 = *(a1 + 16);
                  v60 = v26;
                  if (*(a1 + 8) || !v26)
                  {
                    v51 = 0;
                    LODWORD(v52) = v26;
                    v56 = 0;
                    v61 = 0;
                    v43 = 0;
                    if (!ARI_CsiIpcGetLogBufferReq_ENC())
                    {
                      v35 = operator new(0x18uLL);
                      v36 = v43;
                      v35[2] = v61;
                      *(v35 + 2) = v36;
                      *v35 = &unk_2A1E625B0;
                      if (KTLUTASendAndReleaseData(a1, v35))
                      {
                        if (KTLUTACopyReceiveData(a1, &v56))
                        {
                          v37 = v56;
                          (*(*v56 + 16))(v56);
                          v38 = ARI_CsiIpcGetLogBufferRsp_Extract();
                          (*(*v37 + 8))(v37);
                          if (!(v38 | v51))
                          {
                            _KTLDebugPrint("GetBBIPCLogs", "KTLGetIPCLogBuffer: %s\n", "Success");
                            goto LABEL_56;
                          }
                        }
                      }
                    }

                    _KTLDebugPrint("GetBBIPCLogs", "KTLGetIPCLogBuffer: %s\n", "Failure");
                  }

                  else
                  {
                    v43 = 0;
                    v44 = &v43;
                    v45 = 0x2000000000;
                    LODWORD(v46) = -1;
                    v56 = 0;
                    v57 = &v56;
                    v58 = 0x2000000000;
                    LODWORD(v59) = -1431655766;
                    v52 = 0;
                    v53 = &v52;
                    v54 = 0x2000000000;
                    v55 = 0;
                    v27 = dispatch_semaphore_create(0);
                    *&v76 = MEMORY[0x29EDCA5F8];
                    *(&v76 + 1) = 1174405120;
                    *&v77 = ___ZL18KTLGetIPCLogBufferP10KTLOptionsjjjPi_block_invoke;
                    *(&v77 + 1) = &__block_descriptor_tmp_22;
                    *&v78 = &v43;
                    *(&v78 + 1) = &v56;
                    *&v79 = &v52;
                    v28 = v27;
                    *(&v79 + 1) = v27;
                    if (v27)
                    {
                      dispatch_retain(v27);
                    }

                    LogBufferReq_BLK = ARI_CsiIpcGetLogBufferReq_BLK();
                    _KTLDebugPrint("KTLGetIPCLogBuffer", "sendRet=%d\n", LogBufferReq_BLK);
                    if (LogBufferReq_BLK)
                    {
LABEL_48:
                      v31 = 0;
                      v39 = *(v53 + 6);
                    }

                    else
                    {
                      v30 = dispatch_time(0, 1000000 * *(a1 + 20));
                      if (dispatch_semaphore_wait(v28, v30))
                      {
                        _KTLErrorPrint("KTLGetIPCLogBuffer", "Timeout waiting for response.\n");
                        goto LABEL_48;
                      }

                      v39 = *(v53 + 6);
                      if (*(v44 + 24))
                      {
                        v31 = 0;
                      }

                      else
                      {
                        v31 = *(v57 + 6) == 0;
                      }
                    }

                    _KTLDebugPrint("KTLGetIPCLogBuffer", "ret=%d\n", v31);
                    if (*(&v79 + 1))
                    {
                      dispatch_release(*(&v79 + 1));
                    }

                    if (v28)
                    {
                      dispatch_release(v28);
                    }

                    _Block_object_dispose(&v52, 8);
                    _Block_object_dispose(&v56, 8);
                    _Block_object_dispose(&v43, 8);
                    v32 = "Failure";
                    if (v31)
                    {
                      v32 = "Success";
                    }

                    _KTLDebugPrint("GetBBIPCLogs", "KTLGetIPCLogBuffer: %s\n", v32);
                    if (v31)
                    {
LABEL_56:
                      v33 = ICE_FILER_read(a1, 0, v41, *(i - 4), v39, 0, a3);
                      LOBYTE(v16) = v33 > 0;
                      v34 = "Failure";
                      if (v33 > 0)
                      {
                        v34 = "Success";
                      }

                      _KTLDebugPrint("GetBBIPCLogs", "ICE_FILER_read: %s (return code=%d)\n", v34, v33);
                      goto LABEL_67;
                    }
                  }

                  LOBYTE(v16) = 0;
LABEL_67:
                  close(v23);
                  TelephonyUtilTransportFree();
                  goto LABEL_27;
                }

                LOBYTE(v16) = 0;
              }

LABEL_27:
              if (++v20 == 5)
              {
                return v16 & 1;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v83 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v81 = v7;
    v82 = v7;
    v79 = v7;
    v80 = v7;
    v77 = v7;
    v78 = v7;
    v76 = v7;
    v56 = 0;
    v57 = &v56;
    v58 = 0x2000000000;
    v59 = &v76;
    v52 = 0;
    v53 = &v52;
    v54 = 0x2000000000;
    v55 = -1;
    *__dst = 0;
    v73 = __dst;
    v74 = 0x2000000000;
    v75 = -1431655766;
    v8 = dispatch_semaphore_create(0);
    v9 = v8;
    v43 = MEMORY[0x29EDCA5F8];
    v44 = 1174405120;
    v45 = ___ZL22KTLGetIPCLogBufferListP10KTLOptionsP22CsiIceIpcLogBufferList_block_invoke;
    v46 = &__block_descriptor_tmp_2;
    v47 = &v52;
    v48 = __dst;
    v49 = &v56;
    object = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    LogBufferListReq_BLK = ARI_CsiIpcGetLogBufferListReq_BLK();
    _KTLDebugPrint("KTLGetIPCLogBufferList", "sendRet=%d\n", LogBufferListReq_BLK);
    if (LogBufferListReq_BLK)
    {
      v11 = 0;
      v71 = v83;
      v68 = v80;
      v69 = v81;
      v70 = v82;
      v64 = v76;
      v65 = v77;
      v66 = v78;
      v67 = v79;
    }

    else
    {
      v18 = dispatch_time(0, 1000000 * *(a1 + 20));
      v19 = dispatch_semaphore_wait(v9, v18);
      if (v19)
      {
        _KTLErrorPrint("KTLGetIPCLogBufferList", "Timeout waiting for response.\n");
      }

      if (v61)
      {
        AriHost::ExitTrx(v61);
      }

      v68 = v80;
      v69 = v81;
      v70 = v82;
      v71 = v83;
      v64 = v76;
      v65 = v77;
      v66 = v78;
      v67 = v79;
      v11 = !v19 && !*(v53 + 6) && *(v73 + 6) == 0;
    }

    _KTLDebugPrint("KTLGetIPCLogBufferList", "ret=%d list size=%lu\n", v11, 120);
    if (object)
    {
      dispatch_release(object);
    }

    if (v9)
    {
      dispatch_release(v9);
    }

    _Block_object_dispose(__dst, 8);
    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(&v56, 8);
    if (v11)
    {
      goto LABEL_25;
    }
  }

  _KTLDebugPrint("GetBBIPCLogs", "KTLGetIPCLogBufferList returned false\n");
  LOBYTE(v16) = 0;
  return v16 & 1;
}

void sub_297A2A130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  v46 = *(v44 - 184);
  if (v46)
  {
    dispatch_release(v46);
  }

  if (v43)
  {
    dispatch_release(v43);
  }

  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_297A2A178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, NSObject *object, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v44)
  {
    dispatch_release(v44);
  }

  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL22KTLGetIPCLogBufferListP10KTLOptionsP22CsiIceIpcLogBufferList_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIpcGetLogBufferListRsp_Extract();
  _KTLDebugPrint("KTLGetIPCLogBufferList_block_invoke", "blockRet=%d\n", *(*(*(a1 + 32) + 8) + 24));
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

void __copy_helper_block_e8_32r40r48r56c25_ZTSN8dispatch9semaphoreE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 8);
  _Block_object_assign(a1 + 5, *(a2 + 40), 8);
  _Block_object_assign(a1 + 6, *(a2 + 48), 8);
  v4 = *(a2 + 56);
  a1[7] = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r40r48r56c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

void ktl::KTLARIPacket::~KTLARIPacket(AriMsg **this, unsigned __int8 *a2)
{
  *this = &unk_2A1E625B0;
  AriMsg::ReleaseEncodedMessage(this[2], a2);
}

{
  *this = &unk_2A1E625B0;
  AriMsg::ReleaseEncodedMessage(this[2], a2);

  operator delete(this);
}

uint64_t ___ZL18KTLGetIPCLogBufferP10KTLOptionsjjjPi_block_invoke(uint64_t a1, AriMsg *a2, uint64_t a3)
{
  v3 = a3;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIpcGetLogBufferRsp_Extract();
  *(*(*(a1 + 48) + 8) + 24) = AriMsg::GetBufCtx(a2, v3);
  _KTLDebugPrint("KTLGetIPCLogBuffer_block_invoke", "blockRet=%d blockCtxId=%d\n", *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 48) + 8) + 24));
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t eUICC::VinylCommandDriver::VinylCommandDriver(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 1065353216;
  _KTLDebugFlags = 15;
  if (*(a2 + 20) >> 4 <= 0x270u)
  {
    *(a2 + 20) = 10000;
  }

  return result;
}

{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 1065353216;
  _KTLDebugFlags = 15;
  if (*(a2 + 20) >> 4 <= 0x270u)
  {
    *(a2 + 20) = 10000;
  }

  return result;
}

uint64_t eUICC::VinylCommandDriver::GetVinylType(eUICC::VinylCommandDriver *this, AriSdk::ARI_IBISimAccessGetSimDataReq_SDK *a2, AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK **a3)
{
  v12 = 0;
  v13 = 0;
  AriSdk::MsgBase::getRawBytes();
  v10 = 0;
  v11 = 0;
  SimDataRspCb = ktl::CommandDriver::perform<AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK>(this, 755040256, &v10, a3);
  v6 = SimDataRspCb;
  v7 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if ((SimDataRspCb & 1) == 0)
  {
LABEL_4:
    _KTLErrorPrint("GetVinylType", "%s \n", "VinylCommandDriver GetVinylType perform failure");
  }

LABEL_5:
  v8 = v13;
  if (!v13 || atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return v6;
}

void sub_297A2A664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_297A2A680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ktl::CommandDriver::perform<AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK>(uint64_t a1, uint64_t a2, uint64_t **a3, AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK **a4)
{
  *a4 = 0;
  v6 = *(a1 + 16);
  v7 = *(v6 + 8);
  if (!v7 && *(v6 + 16))
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3002000000;
    v35 = __Block_byref_object_copy__0;
    v36 = __Block_byref_object_dispose__0;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    v26 = MEMORY[0x29EDCA5F8];
    v27 = 1107296256;
    v28 = ___ZN3ktl13CommandDriver7performIN6AriSdk35ARI_IBISimAccessGetSimDataRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke;
    v29 = &__block_descriptor_tmp_3;
    v30 = &v32;
    v31 = a4;
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v18 = v33;
      v19 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v18[5], v19))
      {
        v20 = 1;
        _Block_object_dispose(&v32, 8);
        v21 = object;
        if (!object)
        {
LABEL_24:
          if ((v20 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_25;
        }

LABEL_23:
        dispatch_release(v21);
        goto LABEL_24;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v20 = 0;
    _Block_object_dispose(&v32, 8);
    v21 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v8 = **a3;
  v9 = (*a3)[1] - v8;
  v10 = *(v6 + 20);
  LODWORD(v32) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v9, v10);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v8, v9);
  }

  v11 = *v7;
  if (!*v7 || ((v12 = v11(v7, v8, v9, &v32, 1, v10, 0), LODWORD(v11) = v32, v12) ? (v13 = v32 == v9) : (v13 = 0), !v13))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v9, v11);
LABEL_10:
    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_11;
  }

  v32 = 0;
  if (!KTLUTACopyReceiveData(*(a1 + 16), &v32))
  {
    goto LABEL_10;
  }

  v15 = v32;
  if (!v32)
  {
    goto LABEL_10;
  }

  v16 = operator new(0xD8uLL);
  v17 = (*(*v15 + 16))(v15);
  AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK::ARI_IBISimAccessGetSimDataRspCb_SDK(v16, v17);
  *a4 = v16;
  (*(*v15 + 8))(v15);
LABEL_25:
  hasDeclaredGmid = AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK::hasDeclaredGmid(*a4);
  v23 = *a4;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK::unpack(v23))
    {
      return 1;
    }
  }

  else if (AriSdk::MsgBase::getMergedGMID(v23) == 67600384)
  {
    _KTLErrorPrint("perform", "Received NACK\n", v24, v25, v26, v27, v28, v29, v30, v31);
  }

  else
  {
    AriSdk::MsgBase::getMergedGMID(*a4);
    _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
  }

LABEL_11:
  if (*a4)
  {
    (*(**a4 + 16))(*a4);
  }

  result = 0;
  *a4 = 0;
  return result;
}

void sub_297A2AA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, dispatch_object_t object)
{
  _Block_object_dispose(&a17, 8);
  if (object)
  {
    dispatch_release(object);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::GetData(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylGetDataRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  if (!v6 && *(v5 + 16))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v20 = v29;
      v21 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v20[5], v21))
      {
        v22 = 1;
        _Block_object_dispose(&v28, 8);
        v23 = object;
        if (!object)
        {
LABEL_29:
          if ((v22 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_30;
        }

LABEL_28:
        dispatch_release(v23);
        goto LABEL_29;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v22 = 0;
    _Block_object_dispose(&v28, 8);
    v23 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = MEMORY[0];
  v8 = MEMORY[8] - MEMORY[0];
  v9 = *(v5 + 20);
  LODWORD(v28) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", MEMORY[8] - MEMORY[0], v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v6;
  if (!*v6 || ((v11 = v10(v6, v7, v8, &v28, 1, v9, 0), LODWORD(v10) = v28, v28 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
LABEL_15:
    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_16;
  }

  v28 = 0;
  v13 = KTLUTACopyReceiveData(*(a1 + 16), &v28);
  v14 = v28;
  if (v28)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = operator new(0x210uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_IBIVinylGetDataRspCb_SDK::ARI_IBIVinylGetDataRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylGetDataRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIVinylGetDataRspCb_SDK::unpack(v25))
    {
      v18 = 1;
      goto LABEL_19;
    }
  }

  else if (AriSdk::MsgBase::getMergedGMID(v25) == 67600384)
  {
    _KTLErrorPrint("perform", "Received NACK\n", v26, v27, 0, 0);
  }

  else
  {
    AriSdk::MsgBase::getMergedGMID(*a3);
    _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
  }

LABEL_16:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v18 = 0;
  *a3 = 0;
LABEL_19:
  if ((v18 & 1) == 0)
  {
    _KTLErrorPrint("GetData", "%s \n", "VinylCommandDriver GetData perform failure");
  }

  return v18;
}

void sub_297A2AEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::InstallVad(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylInstallVadRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  if (!v6 && *(v5 + 16))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v20 = v29;
      v21 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v20[5], v21))
      {
        v22 = 1;
        _Block_object_dispose(&v28, 8);
        v23 = object;
        if (!object)
        {
LABEL_29:
          if ((v22 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_30;
        }

LABEL_28:
        dispatch_release(v23);
        goto LABEL_29;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v22 = 0;
    _Block_object_dispose(&v28, 8);
    v23 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = MEMORY[0];
  v8 = MEMORY[8] - MEMORY[0];
  v9 = *(v5 + 20);
  LODWORD(v28) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", MEMORY[8] - MEMORY[0], v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v6;
  if (!*v6 || ((v11 = v10(v6, v7, v8, &v28, 1, v9, 0), LODWORD(v10) = v28, v28 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
LABEL_15:
    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_16;
  }

  v28 = 0;
  v13 = KTLUTACopyReceiveData(*(a1 + 16), &v28);
  v14 = v28;
  if (v28)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = operator new(0x58uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_IBIVinylInstallVadRspCb_SDK::ARI_IBIVinylInstallVadRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylInstallVadRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIVinylInstallVadRspCb_SDK::unpack(v25))
    {
      v18 = 1;
      goto LABEL_19;
    }
  }

  else if (AriSdk::MsgBase::getMergedGMID(v25) == 67600384)
  {
    _KTLErrorPrint("perform", "Received NACK\n", v26, v27, 0, 0);
  }

  else
  {
    AriSdk::MsgBase::getMergedGMID(*a3);
    _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
  }

LABEL_16:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v18 = 0;
  *a3 = 0;
LABEL_19:
  if ((v18 & 1) == 0)
  {
    _KTLErrorPrint("InstallVad", "%s \n", "VinylCommandDriver InstallVad perform failure");
  }

  return v18;
}

void sub_297A2B410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::StreamFW(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylInstallFwRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  _KTLDebugFlags = 13;
  *a3 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  if (!v6 && *(v5 + 16))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v20 = v29;
      v21 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v20[5], v21))
      {
        v22 = 1;
        _Block_object_dispose(&v28, 8);
        v23 = object;
        if (!object)
        {
LABEL_29:
          if ((v22 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_30;
        }

LABEL_28:
        dispatch_release(v23);
        goto LABEL_29;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v22 = 0;
    _Block_object_dispose(&v28, 8);
    v23 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = MEMORY[0];
  v8 = MEMORY[8] - MEMORY[0];
  v9 = *(v5 + 20);
  LODWORD(v28) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", MEMORY[8] - MEMORY[0], v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v6;
  if (!*v6 || ((v11 = v10(v6, v7, v8, &v28, 1, v9, 0), LODWORD(v10) = v28, v28 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
LABEL_15:
    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_16;
  }

  v28 = 0;
  v13 = KTLUTACopyReceiveData(*(a1 + 16), &v28);
  v14 = v28;
  if (v28)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = operator new(0x58uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_IBIVinylInstallFwRspCb_SDK::ARI_IBIVinylInstallFwRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylInstallFwRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIVinylInstallFwRspCb_SDK::unpack(v25))
    {
      v18 = 1;
      goto LABEL_19;
    }
  }

  else if (AriSdk::MsgBase::getMergedGMID(v25) == 67600384)
  {
    _KTLErrorPrint("perform", "Received NACK\n", v26, v27, 0, 0);
  }

  else
  {
    AriSdk::MsgBase::getMergedGMID(*a3);
    _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
  }

LABEL_16:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v18 = 0;
  *a3 = 0;
LABEL_19:
  if ((v18 & 1) == 0)
  {
    _KTLErrorPrint("StreamFW", "%s \n", "VinylCommandDriver StreamFW perform failure");
  }

  _KTLDebugFlags = 15;
  return v18;
}

void sub_297A2B930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::SwitchCardMode(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  if (!v6 && *(v5 + 16))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v20 = v29;
      v21 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v20[5], v21))
      {
        v22 = 1;
        _Block_object_dispose(&v28, 8);
        v23 = object;
        if (!object)
        {
LABEL_29:
          if ((v22 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_30;
        }

LABEL_28:
        dispatch_release(v23);
        goto LABEL_29;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v22 = 0;
    _Block_object_dispose(&v28, 8);
    v23 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = MEMORY[0];
  v8 = MEMORY[8] - MEMORY[0];
  v9 = *(v5 + 20);
  LODWORD(v28) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", MEMORY[8] - MEMORY[0], v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v6;
  if (!*v6 || ((v11 = v10(v6, v7, v8, &v28, 1, v9, 0), LODWORD(v10) = v28, v28 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
LABEL_15:
    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_16;
  }

  v28 = 0;
  v13 = KTLUTACopyReceiveData(*(a1 + 16), &v28);
  v14 = v28;
  if (v28)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = operator new(0x58uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK::ARI_IBIVinylSwitchModeRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK::unpack(v25))
    {
      v18 = 1;
      goto LABEL_19;
    }
  }

  else if (AriSdk::MsgBase::getMergedGMID(v25) == 67600384)
  {
    _KTLErrorPrint("perform", "Received NACK\n", v26, v27, 0, 0);
  }

  else
  {
    AriSdk::MsgBase::getMergedGMID(*a3);
    _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
  }

LABEL_16:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v18 = 0;
  *a3 = 0;
LABEL_19:
  if ((v18 & 1) == 0)
  {
    _KTLErrorPrint("SwitchCardMode", "%s \n", "VinylCommandDriver SwitchCardMode perform failure");
  }

  return v18;
}

void sub_297A2BE40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::GetEid(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylGetEidRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  if (!v6 && *(v5 + 16))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v20 = v29;
      v21 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v20[5], v21))
      {
        v22 = 1;
        _Block_object_dispose(&v28, 8);
        v23 = object;
        if (!object)
        {
LABEL_29:
          if ((v22 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_30;
        }

LABEL_28:
        dispatch_release(v23);
        goto LABEL_29;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v22 = 0;
    _Block_object_dispose(&v28, 8);
    v23 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = MEMORY[0];
  v8 = MEMORY[8] - MEMORY[0];
  v9 = *(v5 + 20);
  LODWORD(v28) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", MEMORY[8] - MEMORY[0], v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v6;
  if (!*v6 || ((v11 = v10(v6, v7, v8, &v28, 1, v9, 0), LODWORD(v10) = v28, v28 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
LABEL_15:
    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_16;
  }

  v28 = 0;
  v13 = KTLUTACopyReceiveData(*(a1 + 16), &v28);
  v14 = v28;
  if (v28)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = operator new(0x68uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_IBIVinylGetEidRspCb_SDK::ARI_IBIVinylGetEidRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylGetEidRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIVinylGetEidRspCb_SDK::unpack(v25))
    {
      v18 = 1;
      goto LABEL_19;
    }
  }

  else if (AriSdk::MsgBase::getMergedGMID(v25) == 67600384)
  {
    _KTLErrorPrint("perform", "Received NACK\n", v26, v27, 0, 0);
  }

  else
  {
    AriSdk::MsgBase::getMergedGMID(*a3);
    _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
  }

LABEL_16:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v18 = 0;
  *a3 = 0;
LABEL_19:
  if ((v18 & 1) == 0)
  {
    _KTLErrorPrint("GetEid", "%s \n", "VinylCommandDriver GetEid perform failure");
  }

  return v18;
}

void sub_297A2C354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::DeleteProfile(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylTapeRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  if (!v6 && *(v5 + 16))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v20 = v29;
      v21 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v20[5], v21))
      {
        v22 = 1;
        _Block_object_dispose(&v28, 8);
        v23 = object;
        if (!object)
        {
LABEL_29:
          if ((v22 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_30;
        }

LABEL_28:
        dispatch_release(v23);
        goto LABEL_29;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v22 = 0;
    _Block_object_dispose(&v28, 8);
    v23 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = MEMORY[0];
  v8 = MEMORY[8] - MEMORY[0];
  v9 = *(v5 + 20);
  LODWORD(v28) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", MEMORY[8] - MEMORY[0], v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v6;
  if (!*v6 || ((v11 = v10(v6, v7, v8, &v28, 1, v9, 0), LODWORD(v10) = v28, v28 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
LABEL_15:
    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_16;
  }

  v28 = 0;
  v13 = KTLUTACopyReceiveData(*(a1 + 16), &v28);
  v14 = v28;
  if (v28)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = operator new(0x90uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_IBIVinylTapeRspCb_SDK::ARI_IBIVinylTapeRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylTapeRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIVinylTapeRspCb_SDK::unpack(v25))
    {
      v18 = 1;
      goto LABEL_19;
    }
  }

  else if (AriSdk::MsgBase::getMergedGMID(v25) == 67600384)
  {
    _KTLErrorPrint("perform", "Received NACK\n", v26, v27, 0, 0);
  }

  else
  {
    AriSdk::MsgBase::getMergedGMID(*a3);
    _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
  }

LABEL_16:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v18 = 0;
  *a3 = 0;
LABEL_19:
  if ((v18 & 1) == 0)
  {
    _KTLErrorPrint("DeleteProfile", "%s \n", "VinylCommandDriver DeleteProfile perform failure");
  }

  return v18;
}

void sub_297A2C864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::GetHwIdSimConfig(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  if (!v6 && *(v5 + 16))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v20 = v29;
      v21 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v20[5], v21))
      {
        v22 = 1;
        _Block_object_dispose(&v28, 8);
        v23 = object;
        if (!object)
        {
LABEL_29:
          if ((v22 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_30;
        }

LABEL_28:
        dispatch_release(v23);
        goto LABEL_29;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v22 = 0;
    _Block_object_dispose(&v28, 8);
    v23 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = MEMORY[0];
  v8 = MEMORY[8] - MEMORY[0];
  v9 = *(v5 + 20);
  LODWORD(v28) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", MEMORY[8] - MEMORY[0], v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v6;
  if (!*v6 || ((v11 = v10(v6, v7, v8, &v28, 1, v9, 0), LODWORD(v10) = v28, v28 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
LABEL_15:
    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_16;
  }

  v28 = 0;
  v13 = KTLUTACopyReceiveData(*(a1 + 16), &v28);
  v14 = v28;
  if (v28)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = operator new(0x60uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::ARI_IBIVinylHwIdSimConfigRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::unpack(v25))
    {
      v18 = 1;
      goto LABEL_19;
    }
  }

  else if (AriSdk::MsgBase::getMergedGMID(v25) == 67600384)
  {
    _KTLErrorPrint("perform", "Received NACK\n", v26, v27, 0, 0);
  }

  else
  {
    AriSdk::MsgBase::getMergedGMID(*a3);
    _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
  }

LABEL_16:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v18 = 0;
  *a3 = 0;
LABEL_19:
  if ((v18 & 1) == 0)
  {
    _KTLErrorPrint("GetHwIdSimConfig", "%s \n", "VinylCommandDriver GetHwIdSimConfig perform failure");
  }

  return v18;
}

void sub_297A2CD78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::InitPerso(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylInitPsoRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  if (!v6 && *(v5 + 16))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v20 = v29;
      v21 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v20[5], v21))
      {
        v22 = 1;
        _Block_object_dispose(&v28, 8);
        v23 = object;
        if (!object)
        {
LABEL_29:
          if ((v22 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_30;
        }

LABEL_28:
        dispatch_release(v23);
        goto LABEL_29;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v22 = 0;
    _Block_object_dispose(&v28, 8);
    v23 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = MEMORY[0];
  v8 = MEMORY[8] - MEMORY[0];
  v9 = *(v5 + 20);
  LODWORD(v28) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", MEMORY[8] - MEMORY[0], v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v6;
  if (!*v6 || ((v11 = v10(v6, v7, v8, &v28, 1, v9, 0), LODWORD(v10) = v28, v28 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
LABEL_15:
    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_16;
  }

  v28 = 0;
  v13 = KTLUTACopyReceiveData(*(a1 + 16), &v28);
  v14 = v28;
  if (v28)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = operator new(0x78uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_IBIVinylInitPsoRspCb_SDK::ARI_IBIVinylInitPsoRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylInitPsoRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIVinylInitPsoRspCb_SDK::unpack(v25))
    {
      v18 = 1;
      goto LABEL_19;
    }
  }

  else if (AriSdk::MsgBase::getMergedGMID(v25) == 67600384)
  {
    _KTLErrorPrint("perform", "Received NACK\n", v26, v27, 0, 0);
  }

  else
  {
    AriSdk::MsgBase::getMergedGMID(*a3);
    _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
  }

LABEL_16:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v18 = 0;
  *a3 = 0;
LABEL_19:
  if ((v18 & 1) == 0)
  {
    _KTLErrorPrint("InitPerso", "%s \n", "VinylCommandDriver InitPerso perform failure");
  }

  return v18;
}

void sub_297A2D28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::AuthPerso(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  if (!v6 && *(v5 + 16))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v20 = v29;
      v21 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v20[5], v21))
      {
        v22 = 1;
        _Block_object_dispose(&v28, 8);
        v23 = object;
        if (!object)
        {
LABEL_29:
          if ((v22 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_30;
        }

LABEL_28:
        dispatch_release(v23);
        goto LABEL_29;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v22 = 0;
    _Block_object_dispose(&v28, 8);
    v23 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = MEMORY[0];
  v8 = MEMORY[8] - MEMORY[0];
  v9 = *(v5 + 20);
  LODWORD(v28) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", MEMORY[8] - MEMORY[0], v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v6;
  if (!*v6 || ((v11 = v10(v6, v7, v8, &v28, 1, v9, 0), LODWORD(v10) = v28, v28 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
LABEL_15:
    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_16;
  }

  v28 = 0;
  v13 = KTLUTACopyReceiveData(*(a1 + 16), &v28);
  v14 = v28;
  if (v28)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = operator new(0x78uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK::ARI_IBIVinylAuthPsoRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK::unpack(v25))
    {
      v18 = 1;
      goto LABEL_19;
    }
  }

  else if (AriSdk::MsgBase::getMergedGMID(v25) == 67600384)
  {
    _KTLErrorPrint("perform", "Received NACK\n", v26, v27, 0, 0);
  }

  else
  {
    AriSdk::MsgBase::getMergedGMID(*a3);
    _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
  }

LABEL_16:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v18 = 0;
  *a3 = 0;
LABEL_19:
  if ((v18 & 1) == 0)
  {
    _KTLErrorPrint("AuthPerso", "%s \n", "VinylCommandDriver AuthPerso perform failure");
  }

  return v18;
}

void sub_297A2D79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::FinalizePerso(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  if (!v6 && *(v5 + 16))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v20 = v29;
      v21 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v20[5], v21))
      {
        v22 = 1;
        _Block_object_dispose(&v28, 8);
        v23 = object;
        if (!object)
        {
LABEL_29:
          if ((v22 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_30;
        }

LABEL_28:
        dispatch_release(v23);
        goto LABEL_29;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v22 = 0;
    _Block_object_dispose(&v28, 8);
    v23 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = MEMORY[0];
  v8 = MEMORY[8] - MEMORY[0];
  v9 = *(v5 + 20);
  LODWORD(v28) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", MEMORY[8] - MEMORY[0], v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v6;
  if (!*v6 || ((v11 = v10(v6, v7, v8, &v28, 1, v9, 0), LODWORD(v10) = v28, v28 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
LABEL_15:
    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_16;
  }

  v28 = 0;
  v13 = KTLUTACopyReceiveData(*(a1 + 16), &v28);
  v14 = v28;
  if (v28)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = operator new(0x58uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK::ARI_IBIVinylFinalizePsoRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK::unpack(v25))
    {
      v18 = 1;
      goto LABEL_19;
    }
  }

  else if (AriSdk::MsgBase::getMergedGMID(v25) == 67600384)
  {
    _KTLErrorPrint("perform", "Received NACK\n", v26, v27, 0, 0);
  }

  else
  {
    AriSdk::MsgBase::getMergedGMID(*a3);
    _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
  }

LABEL_16:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v18 = 0;
  *a3 = 0;
LABEL_19:
  if ((v18 & 1) == 0)
  {
    _KTLErrorPrint("FinalizePerso", "%s \n", "VinylCommandDriver FinalizePerso perform failure");
  }

  return v18;
}

void sub_297A2DCB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::ValidatePerso(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  if (!v6 && *(v5 + 16))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v20 = v29;
      v21 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v20[5], v21))
      {
        v22 = 1;
        _Block_object_dispose(&v28, 8);
        v23 = object;
        if (!object)
        {
LABEL_29:
          if ((v22 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_30;
        }

LABEL_28:
        dispatch_release(v23);
        goto LABEL_29;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v22 = 0;
    _Block_object_dispose(&v28, 8);
    v23 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = MEMORY[0];
  v8 = MEMORY[8] - MEMORY[0];
  v9 = *(v5 + 20);
  LODWORD(v28) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", MEMORY[8] - MEMORY[0], v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v6;
  if (!*v6 || ((v11 = v10(v6, v7, v8, &v28, 1, v9, 0), LODWORD(v10) = v28, v28 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
LABEL_15:
    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_16;
  }

  v28 = 0;
  v13 = KTLUTACopyReceiveData(*(a1 + 16), &v28);
  v14 = v28;
  if (v28)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = operator new(0x78uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK::ARI_IBIVinylValidatePsoRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK::unpack(v25))
    {
      v18 = 1;
      goto LABEL_19;
    }
  }

  else if (AriSdk::MsgBase::getMergedGMID(v25) == 67600384)
  {
    _KTLErrorPrint("perform", "Received NACK\n", v26, v27, 0, 0);
  }

  else
  {
    AriSdk::MsgBase::getMergedGMID(*a3);
    _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
  }

LABEL_16:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v18 = 0;
  *a3 = 0;
LABEL_19:
  if ((v18 & 1) == 0)
  {
    _KTLErrorPrint("ValidatePerso", "%s \n", "VinylCommandDriver ValidatePerso perform failure");
  }

  return v18;
}

void sub_297A2E1C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::ManagePairing(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylPairingRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  if (!v6 && *(v5 + 16))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v20 = v29;
      v21 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v20[5], v21))
      {
        v22 = 1;
        _Block_object_dispose(&v28, 8);
        v23 = object;
        if (!object)
        {
LABEL_29:
          if ((v22 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_30;
        }

LABEL_28:
        dispatch_release(v23);
        goto LABEL_29;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v22 = 0;
    _Block_object_dispose(&v28, 8);
    v23 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = MEMORY[0];
  v8 = MEMORY[8] - MEMORY[0];
  v9 = *(v5 + 20);
  LODWORD(v28) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", MEMORY[8] - MEMORY[0], v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v6;
  if (!*v6 || ((v11 = v10(v6, v7, v8, &v28, 1, v9, 0), LODWORD(v10) = v28, v28 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
LABEL_15:
    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_16;
  }

  v28 = 0;
  v13 = KTLUTACopyReceiveData(*(a1 + 16), &v28);
  v14 = v28;
  if (v28)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = operator new(0x90uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_IBIVinylPairingRspCb_SDK::ARI_IBIVinylPairingRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylPairingRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIVinylPairingRspCb_SDK::unpack(v25))
    {
      v18 = 1;
      goto LABEL_19;
    }
  }

  else if (AriSdk::MsgBase::getMergedGMID(v25) == 67600384)
  {
    _KTLErrorPrint("perform", "Received NACK\n", v26, v27, 0, 0);
  }

  else
  {
    AriSdk::MsgBase::getMergedGMID(*a3);
    _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
  }

LABEL_16:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v18 = 0;
  *a3 = 0;
LABEL_19:
  if ((v18 & 1) == 0)
  {
    _KTLErrorPrint("ManagePairing", "%s \n", "VinylCommandDriver Manage pairing failure");
  }

  return v18;
}

void sub_297A2E6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::ResetSimCard(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  if (!v6 && *(v5 + 16))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__0;
    v32 = __Block_byref_object_dispose__0;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v20 = v29;
      v21 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v20[5], v21))
      {
        v22 = 1;
        _Block_object_dispose(&v28, 8);
        v23 = object;
        if (!object)
        {
LABEL_29:
          if ((v22 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_30;
        }

LABEL_28:
        dispatch_release(v23);
        goto LABEL_29;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v22 = 0;
    _Block_object_dispose(&v28, 8);
    v23 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = MEMORY[0];
  v8 = MEMORY[8] - MEMORY[0];
  v9 = *(v5 + 20);
  LODWORD(v28) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", MEMORY[8] - MEMORY[0], v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v6;
  if (!*v6 || ((v11 = v10(v6, v7, v8, &v28, 1, v9, 0), LODWORD(v10) = v28, v28 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
LABEL_15:
    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_16;
  }

  v28 = 0;
  v13 = KTLUTACopyReceiveData(*(a1 + 16), &v28);
  v14 = v28;
  if (v28)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = operator new(0x50uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK::ARI_IBIVinylSimCardResetRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK::unpack(v25))
    {
      v18 = 1;
      goto LABEL_19;
    }
  }

  else if (AriSdk::MsgBase::getMergedGMID(v25) == 67600384)
  {
    _KTLErrorPrint("perform", "Received NACK\n", v26, v27, 0, 0);
  }

  else
  {
    AriSdk::MsgBase::getMergedGMID(*a3);
    _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
  }

LABEL_16:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v18 = 0;
  *a3 = 0;
LABEL_19:
  if ((v18 & 1) == 0)
  {
    _KTLErrorPrint("ResetSimCard", "%s \n", "VinylCommandDriver Reset Sim Card failure");
  }

  return v18;
}

void sub_297A2EBE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void eUICC::VinylCommandDriver::~VinylCommandDriver(eUICC::VinylCommandDriver *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk35ARI_IBISimAccessGetSimDataRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0xD8uLL);
  AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK::ARI_IBISimAccessGetSimDataRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk28ARI_IBIVinylGetDataRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x210uLL);
  AriSdk::ARI_IBIVinylGetDataRspCb_SDK::ARI_IBIVinylGetDataRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk31ARI_IBIVinylInstallVadRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x58uLL);
  AriSdk::ARI_IBIVinylInstallVadRspCb_SDK::ARI_IBIVinylInstallVadRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk30ARI_IBIVinylInstallFwRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x58uLL);
  AriSdk::ARI_IBIVinylInstallFwRspCb_SDK::ARI_IBIVinylInstallFwRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk31ARI_IBIVinylSwitchModeRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x58uLL);
  AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK::ARI_IBIVinylSwitchModeRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk27ARI_IBIVinylGetEidRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x68uLL);
  AriSdk::ARI_IBIVinylGetEidRspCb_SDK::ARI_IBIVinylGetEidRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk25ARI_IBIVinylTapeRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x90uLL);
  AriSdk::ARI_IBIVinylTapeRspCb_SDK::ARI_IBIVinylTapeRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk34ARI_IBIVinylHwIdSimConfigRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x60uLL);
  AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::ARI_IBIVinylHwIdSimConfigRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk28ARI_IBIVinylInitPsoRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x78uLL);
  AriSdk::ARI_IBIVinylInitPsoRspCb_SDK::ARI_IBIVinylInitPsoRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk28ARI_IBIVinylAuthPsoRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x78uLL);
  AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK::ARI_IBIVinylAuthPsoRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk32ARI_IBIVinylFinalizePsoRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x58uLL);
  AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK::ARI_IBIVinylFinalizePsoRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk32ARI_IBIVinylValidatePsoRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x78uLL);
  AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK::ARI_IBIVinylValidatePsoRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk28ARI_IBIVinylPairingRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x90uLL);
  AriSdk::ARI_IBIVinylPairingRspCb_SDK::ARI_IBIVinylPairingRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk33ARI_IBIVinylSimCardResetRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x50uLL);
  AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK::ARI_IBIVinylSimCardResetRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t KTLCalculate8bitXor(int8x16_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 8)
  {
    if (a2 >= 0x20)
    {
      v2 = a2 & 0xFFFFFFE0;
      v5 = a1 + 1;
      v6 = 0uLL;
      v7 = v2;
      v8 = 0uLL;
      do
      {
        v6 = veorq_s8(v5[-1], v6);
        v8 = veorq_s8(*v5, v8);
        v5 += 2;
        v7 -= 32;
      }

      while (v7);
      v9 = veorq_s8(v8, v6);
      *v9.i8 = veor_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
      v10 = v9.i64[0] ^ HIDWORD(v9.i64[0]) ^ ((v9.i64[0] ^ HIDWORD(v9.i64[0])) >> 16);
      v3 = v10 ^ BYTE1(v10);
      if (v2 == a2)
      {
        return v3;
      }

      if ((a2 & 0x18) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v3 = 0;
      v2 = 0;
    }

    v11 = v2;
    v2 = a2 & 0xFFFFFFF8;
    v12 = v3;
    v13 = &a1->i8[v11];
    v14 = v11 - v2;
    do
    {
      v15 = *v13++;
      v12 = veor_s8(v15, v12);
      v14 += 8;
    }

    while (v14);
    v16 = *&v12 ^ HIDWORD(*&v12) ^ ((*&v12 ^ HIDWORD(*&v12)) >> 16);
    v3 = v16 ^ BYTE1(v16);
    if (v2 == a2)
    {
      return v3;
    }

    goto LABEL_14;
  }

  v2 = 0;
  v3 = 0;
LABEL_14:
  v17 = a2 - v2;
  v18 = &a1->i8[v2];
  do
  {
    v19 = *v18++;
    v3 ^= v19;
    --v17;
  }

  while (v17);
  return v3;
}

uint64_t ktl::CommandDriver::perform(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (!v3 && *(v2 + 16))
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3002000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v12 = v17;
      v13 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v12[5], v13))
      {
        v14 = 1;
        _Block_object_dispose(&v16, 8);
        v15 = object;
        if (!object)
        {
          return v14;
        }

        goto LABEL_17;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v14 = 0;
    _Block_object_dispose(&v16, 8);
    v15 = object;
    if (!object)
    {
      return v14;
    }

LABEL_17:
    dispatch_release(v15);
    return v14;
  }

  v4 = **a2;
  v5 = (*a2)[1] - v4;
  v6 = *(v2 + 20);
  LODWORD(v16) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v4, v5);
  }

  v7 = *v3;
  if (*v3)
  {
    v8 = v7(v3, v4, v5, &v16, 1, v6, 0);
    LODWORD(v7) = v16;
    if (v8 && v16 == v5)
    {
      return 1;
    }
  }

  _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v5, v7);
  _KTLErrorPrint("perform", "error sending\n");
  return 0;
}

void sub_297A2F798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, dispatch_object_t object)
{
  _Block_object_dispose(&a17, 8);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void ktl::CommandDriver::registerIndication(float *a1, Ari *a2, const void **a3)
{
  v19 = a2;
  v6 = a2 >> 26;
  v7 = (a2 >> 15) & 0x3FF;
  if (*(Ari::MsgDefById((a2 >> 26)) + 8) == 2)
  {
    v8 = *(*(a1 + 2) + 16);
    v9 = Ari::MsgNameById(a2);
    _KTLDebugPrint("registerIndication", "Command driver with ariId=%d registering for indication: %s (%u, 0x%x)", v8, v9, v6, v7);
    v10 = *(a1 + 1);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = AriHost::RegIndication();
    v12 = *(*(a1 + 2) + 16);
    if (v11)
    {
      v13 = Ari::MsgNameById(a2);
      _KTLErrorPrint("registerIndication", "Command driver with ariId=%d failed to register indication: %s (%u, 0x%x)", v12, v13, v6, v7);
    }

    else
    {
      v15 = Ari::MsgNameById(a2);
      _KTLDebugPrint("registerIndication", "Command driver with ariId=%d successfully registered for indication: %s (%u, 0x%x)", v12, v15, v6, v7);
      if (*a3)
      {
        v16 = _Block_copy(*a3);
      }

      else
      {
        v16 = 0;
      }

      v17 = std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 6, a2, &v19);
      v18 = v17[3];
      v17[3] = v16;
      if (v18)
      {
        _Block_release(v18);
      }
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  else
  {
    v14 = Ari::MsgNameById(a2);
    _KTLErrorPrint("registerIndication", "%s is not an indication, not registering it", v14);
  }
}

void sub_297A2F9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (v20)
  {
    _Block_release(v20);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
    if (!v19)
    {
LABEL_5:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v19)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_weak(v19);
  _Unwind_Resume(exception_object);
}

uint64_t ___ZN3ktl13CommandDriver18registerIndicationEjN8dispatch5blockIU13block_pointerFiPhjEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  if (*(a1 + 40))
  {
    v7 = *(a1 + 56);
    v6 = (a1 + 56);
    v8 = std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v3 + 24), v7, v6)[3];
    v9 = *v6;
    if (v8)
    {
      v10 = Ari::MsgNameById(v9);
      _KTLErrorPrint("registerIndication_block_invoke", "%s indication received; calling indication handler", v10);
      v11 = std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v3 + 24), *v6, v6);
      (*(v11[3] + 16))();
      result = 0;
      if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        return result;
      }

      goto LABEL_6;
    }

    v14 = Ari::MsgNameById(v9);
    _KTLErrorPrint("registerIndication_block_invoke", "%s indication received but no indication handler exists", v14);
  }

  result = 0xFFFFFFFFLL;
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_6:
    v13 = result;
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    return v13;
  }

  return result;
}

void sub_297A2FBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrIN3ktl13CommandDriverEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrIN3ktl13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ktl::CommandDriver::deregisterIndication(ktl::CommandDriver *this, Ari *a2)
{
  v25 = a2;
  v4 = Ari::MsgNameById(a2);
  if (*(Ari::MsgDefById((a2 >> 26)) + 8) != 2)
  {
    _KTLErrorPrint("deregisterIndication", "%s is not an indication, not deregistering it");
    return;
  }

  if (!std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 6, a2, &v25)[3])
  {
    _KTLErrorPrint("deregisterIndication", "Indication %s is not currently registered, no need to deregister it");
    return;
  }

  _KTLDebugPrint("deregisterIndication", "Command driver with ariId=%d deregistering for indication: %s (%u, 0x%x)", *(*(this + 2) + 16), v4, a2 >> 26, (a2 >> 15) & 0x3FF);
  v5 = AriHost::DeregIndication(a2);
  v6 = *(*(this + 2) + 16);
  v7 = Ari::MsgNameById(a2);
  if (v5)
  {
    _KTLErrorPrint("deregisterIndication", "Command driver with ariId=%d failed to deregister indication: %s (%u, 0x%x)", v6, v7, a2 >> 26, (a2 >> 15) & 0x3FF);
    return;
  }

  _KTLDebugPrint("deregisterIndication", "Command driver with ariId=%d successfully deregistered for indication: %s (%u, 0x%x)", v6, v7, a2 >> 26, (a2 >> 15) & 0x3FF);
  v8 = *(this + 4);
  if (v8)
  {
    v9 = a2;
    v10 = vcnt_s8(v8);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = a2;
      if (v8 <= a2)
      {
        v11 = a2 % v8;
      }
    }

    else
    {
      v11 = (v8 - 1) & a2;
    }

    v12 = *(this + 3);
    v13 = *(v12 + 8 * v11);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = v8 - 1;
        if (v10.u32[0] < 2uLL)
        {
          while (1)
          {
            v16 = *(v14 + 1);
            if (v16 == a2)
            {
              if (v14[4] == a2)
              {
                goto LABEL_30;
              }
            }

            else if ((v16 & v15) != v11)
            {
              return;
            }

            v14 = *v14;
            if (!v14)
            {
              return;
            }
          }
        }

        do
        {
          v17 = *(v14 + 1);
          if (v17 == a2)
          {
            if (v14[4] == a2)
            {
LABEL_30:
              if (v10.u32[0] > 1uLL)
              {
                if (v8 <= a2)
                {
                  v9 = a2 % v8;
                }
              }

              else
              {
                v9 = v15 & a2;
              }

              v18 = *(v12 + 8 * v9);
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18 != v14);
              if (v19 == (this + 40))
              {
                goto LABEL_47;
              }

              v20 = v19[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v20 >= v8)
                {
                  v20 %= v8;
                }
              }

              else
              {
                v20 &= v15;
              }

              if (v20 != v9)
              {
LABEL_47:
                if (!*v14)
                {
                  goto LABEL_48;
                }

                v21 = *(*v14 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v21 >= v8)
                  {
                    v21 %= v8;
                  }
                }

                else
                {
                  v21 &= v15;
                }

                if (v21 != v9)
                {
LABEL_48:
                  *(v12 + 8 * v9) = 0;
                }
              }

              v22 = *v14;
              if (*v14)
              {
                v23 = *(v22 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v23 >= v8)
                  {
                    v23 %= v8;
                  }
                }

                else
                {
                  v23 &= v15;
                }

                if (v23 != v9)
                {
                  *(v12 + 8 * v23) = v19;
                  v22 = *v14;
                }
              }

              *v19 = v22;
              *v14 = 0;
              --*(this + 6);
              v24 = *(v14 + 3);
              if (v24)
              {
                _Block_release(v24);
              }

              operator delete(v14);
              return;
            }
          }

          else
          {
            if (v17 >= v8)
            {
              v17 %= v8;
            }

            if (v17 != v11)
            {
              return;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD *a3)
{
  v5 = a2;
  v6 = *(a1 + 1);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = a2;
      if (v6 <= a2)
      {
        v8 = a2 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & a2;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v11 = v10[1];
            if (v11 == a2)
            {
              if (*(v10 + 4) == a2)
              {
                return v10;
              }
            }

            else if ((v11 & (v6 - 1)) != v8)
            {
              goto LABEL_22;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_22;
            }
          }
        }

        do
        {
          v12 = v10[1];
          if (v12 == a2)
          {
            if (*(v10 + 4) == a2)
            {
              return v10;
            }
          }

          else
          {
            if (v12 >= v6)
            {
              v12 %= v6;
            }

            if (v12 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_22:
  v10 = operator new(0x20uLL);
  *v10 = 0;
  v10[1] = v5;
  *(v10 + 4) = *a3;
  v10[3] = 0;
  v13 = (*(a1 + 3) + 1);
  v14 = a1[8];
  if (v6 && (v14 * v6) >= v13)
  {
    v5 = v8;
    v15 = *a1;
    v16 = *(*a1 + 8 * v8);
    if (!v16)
    {
      goto LABEL_85;
    }

LABEL_70:
    *v10 = *v16;
    goto LABEL_71;
  }

  v17 = 1;
  if (v6 >= 3)
  {
    v17 = (v6 & (v6 - 1)) != 0;
  }

  v18 = v17 | (2 * v6);
  v19 = vcvtps_u32_f32(v13 / v14);
  if (v18 <= v19)
  {
    prime = v19;
  }

  else
  {
    prime = v18;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v6 = *(a1 + 1);
  }

  if (prime > v6)
  {
LABEL_36:
    if (prime >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v21 = operator new(8 * prime);
    v22 = *a1;
    *a1 = v21;
    if (v22)
    {
      operator delete(v22);
      v21 = *a1;
    }

    *(a1 + 1) = prime;
    bzero(v21, 8 * prime);
    v24 = a1 + 4;
    v23 = *(a1 + 2);
    if (!v23)
    {
      goto LABEL_66;
    }

    v25 = v23[1];
    v26 = prime - 1;
    if ((prime & (prime - 1)) == 0)
    {
      v27 = v25 & v26;
      *(v21 + v27) = v24;
      for (i = *v23; *v23; i = *v23)
      {
        v29 = i[1] & v26;
        if (v29 == v27)
        {
          v23 = i;
        }

        else if (*(v21 + v29))
        {
          *v23 = *i;
          *i = **(v21 + v29);
          **(v21 + v29) = i;
        }

        else
        {
          *(v21 + v29) = v23;
          v23 = i;
          v27 = v29;
        }
      }

      goto LABEL_66;
    }

    if (v25 >= prime)
    {
      v25 %= prime;
    }

    *(v21 + v25) = v24;
    v33 = *v23;
    if (!*v23)
    {
LABEL_66:
      v6 = prime;
      if ((prime & (prime - 1)) != 0)
      {
        goto LABEL_67;
      }

      goto LABEL_84;
    }

    while (1)
    {
      v34 = v33[1];
      if (v34 >= prime)
      {
        v34 %= prime;
      }

      if (v34 == v25)
      {
        goto LABEL_60;
      }

      if (*(v21 + v34))
      {
        *v23 = *v33;
        *v33 = **(v21 + v34);
        **(v21 + v34) = v33;
        v33 = v23;
LABEL_60:
        v23 = v33;
        v33 = *v33;
        if (!v33)
        {
          goto LABEL_66;
        }
      }

      else
      {
        *(v21 + v34) = v23;
        v23 = v33;
        v33 = *v33;
        v25 = v34;
        if (!v33)
        {
          goto LABEL_66;
        }
      }
    }
  }

  if (prime < v6)
  {
    v30 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
    if (v6 < 3 || (v31 = vcnt_s8(v6), v31.i16[0] = vaddlv_u8(v31), v31.u32[0] > 1uLL))
    {
      v30 = std::__next_prime(v30);
    }

    else
    {
      v32 = 1 << -__clz(v30 - 1);
      if (v30 >= 2)
      {
        v30 = v32;
      }
    }

    if (prime <= v30)
    {
      prime = v30;
    }

    if (prime < v6)
    {
      if (!prime)
      {
        v36 = *a1;
        *a1 = 0;
        if (v36)
        {
          operator delete(v36);
        }

        v6 = 0;
        *(a1 + 1) = 0;
        goto LABEL_84;
      }

      goto LABEL_36;
    }

    v6 = *(a1 + 1);
  }

  if ((v6 & (v6 - 1)) != 0)
  {
LABEL_67:
    if (v6 <= v5)
    {
      v5 %= v6;
    }

    v15 = *a1;
    v16 = *(*a1 + 8 * v5);
    if (!v16)
    {
      goto LABEL_85;
    }

    goto LABEL_70;
  }

LABEL_84:
  v5 = (v6 - 1) & v5;
  v15 = *a1;
  v16 = *(*a1 + 8 * v5);
  if (v16)
  {
    goto LABEL_70;
  }

LABEL_85:
  *v10 = *(a1 + 2);
  *(a1 + 2) = v10;
  *(v15 + 8 * v5) = a1 + 4;
  if (!*v10)
  {
    goto LABEL_72;
  }

  v37 = *(*v10 + 8);
  if ((v6 & (v6 - 1)) != 0)
  {
    if (v37 >= v6)
    {
      v37 %= v6;
    }

    v16 = (v15 + 8 * v37);
  }

  else
  {
    v16 = (v15 + 8 * (v37 & (v6 - 1)));
  }

LABEL_71:
  *v16 = v10;
LABEL_72:
  ++*(a1 + 3);
  return v10;
}

void sub_297A303F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[3];
      if (v3)
      {
        _Block_release(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

BOOL KTLAudioEnableHWLoopback(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v26 = v3;
  if (*(a1 + 8))
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v18 = 0;
    v27 = 0;
    v28 = v3;
    v22 = 0;
    if (ARI_CsiIceAudEnableLoopbackHWReq_ENC() || (v5 = operator new(0x18uLL), v6 = v22, v5[2] = v27, *(v5 + 2) = v6, *v5 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v5)))
    {
      v10 = 0;
      v7 = -1;
    }

    else
    {
      v7 = -1;
      if (KTLUTACopyReceiveData(a1, &v18))
      {
        v8 = v18;
        LODWORD(v22) = -1;
        (*(*v18 + 16))(v18);
        v9 = ARI_CsiIceAudEnableLoopbackHWRespCb_Extract();
        (*(*v8 + 8))(v8);
        v10 = v9 == 0;
        v7 = v22;
        if (!v22)
        {
          return !v7 && v10;
        }
      }

      else
      {
        v10 = 0;
      }
    }

LABEL_27:
    _KTLErrorPrint("KTLAudioEnableHWLoopback", "Error on the result: %d\n", v7);
    return !v7 && v10;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = -1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = -1;
  v11 = dispatch_semaphore_create(0);
  v12 = v11;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  if (ARI_CsiIceAudEnableLoopbackHWReq_BLK())
  {
    v10 = 0;
    v7 = *(v23 + 6);
    v13 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v14 = dispatch_time(0, 1000000 * *(a1 + 20));
  v15 = dispatch_semaphore_wait(v12, v14);
  if (v15)
  {
    _KTLErrorPrint("KTLAudioEnableHWLoopback", "Timeout waiting for response.\n");
  }

  if (v26)
  {
    AriHost::ExitTrx(v26);
  }

  v7 = *(v23 + 6);
  if (v15)
  {
    v10 = 0;
    v13 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v10 = *(v19 + 6) == 0;
  v13 = object;
  if (object)
  {
LABEL_23:
    dispatch_release(v13);
  }

LABEL_24:
  if (v12)
  {
    dispatch_release(v12);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  if (v7)
  {
    goto LABEL_27;
  }

  return !v7 && v10;
}

void sub_297A30788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    dispatch_release(v20);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLAudioEnableHWLoopback_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceAudEnableLoopbackHWRespCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

void __copy_helper_block_e8_32r40r48c25_ZTSN8dispatch9semaphoreE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 8);
  _Block_object_assign(a1 + 5, *(a2 + 40), 8);
  v4 = *(a2 + 48);
  a1[6] = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r40r48c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Block_object_dispose(*(a1 + 40), 8);
  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

BOOL KTLAudioDisableHWLoopback(uint64_t a1)
{
  v2 = *(a1 + 16);
  v25 = v2;
  if (*(a1 + 8))
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (v3)
  {
    v17 = 0;
    v26 = 0;
    v27 = v2;
    v21 = 0;
    if (ARI_CsiIceAudDisableLoopbackHWReq_ENC() || (v4 = operator new(0x18uLL), v5 = v21, v4[2] = v26, *(v4 + 2) = v5, *v4 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v4)))
    {
      v9 = 0;
      v6 = -1;
    }

    else
    {
      v6 = -1;
      if (KTLUTACopyReceiveData(a1, &v17))
      {
        v7 = v17;
        LODWORD(v21) = -1;
        (*(*v17 + 16))(v17);
        v8 = ARI_CsiIceAudDisableLoopbackHWRespCb_Extract();
        (*(*v7 + 8))(v7);
        v9 = v8 == 0;
        v6 = v21;
      }

      else
      {
        v9 = 0;
      }
    }

    return !v6 && v9;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = -1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = -1;
  v10 = dispatch_semaphore_create(0);
  v11 = v10;
  object = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  if (ARI_CsiIceAudDisableLoopbackHWReq_BLK())
  {
    v9 = 0;
    v6 = *(v22 + 6);
    v12 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v13 = dispatch_time(0, 1000000 * *(a1 + 20));
  v14 = dispatch_semaphore_wait(v11, v13);
  if (v14)
  {
    _KTLErrorPrint("KTLAudioDisableHWLoopback", "Timeout waiting for response.\n");
  }

  if (v25)
  {
    AriHost::ExitTrx(v25);
  }

  v6 = *(v22 + 6);
  if (!v14)
  {
    v9 = *(v18 + 6) == 0;
    v12 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v9 = 0;
  v12 = object;
  if (object)
  {
LABEL_22:
    dispatch_release(v12);
  }

LABEL_23:
  if (v11)
  {
    dispatch_release(v11);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return !v6 && v9;
}

void sub_297A30B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, ...)
{
  va_start(va, object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    dispatch_release(v16);
  }

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLAudioDisableHWLoopback_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceAudDisableLoopbackHWRespCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLStartProvision(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 16);
  v24 = v5;
  if (*(a1 + 8))
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = -1;
    v27 = 0;
    v28 = &v27;
    v29 = 0x4F002000000;
    v30 = __Block_byref_object_copy__2;
    v31 = __Block_byref_object_dispose__2;
    memset(v32, 170, sizeof(v32));
    v12 = dispatch_semaphore_create(0);
    v13 = v12;
    v18 = MEMORY[0x29EDCA5F8];
    object = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    if (ARI_CsiIceStartProvisionReq_BLK())
    {
      memcpy(a3, v28 + 5, 0x4C4uLL);
      v14 = 0;
      v15 = object;
      if (!object)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v16 = dispatch_time(0, 1000000 * *(a1 + 20));
      v17 = dispatch_semaphore_wait(v13, v16);
      if (v17)
      {
        _KTLErrorPrint("KTLStartProvision", "Timeout waiting for response.\n", v18, 1174405120, __KTLStartProvision_block_invoke, &__block_descriptor_tmp_6, &v20, &v27);
      }

      if (v24)
      {
        AriHost::ExitTrx(v24);
      }

      memcpy(a3, v28 + 5, 0x4C4uLL);
      if (v17)
      {
        v14 = 0;
        v15 = object;
        if (!object)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v14 = *(v21 + 6) == 0;
        v15 = object;
        if (!object)
        {
LABEL_23:
          if (v13)
          {
            dispatch_release(v13);
          }

          _Block_object_dispose(&v27, 8);
          _Block_object_dispose(&v20, 8);
          if (v14)
          {
            return a3[1] == 0;
          }

          return 0;
        }
      }
    }

    dispatch_release(v15);
    goto LABEL_23;
  }

  v20 = 0;
  v25 = 0;
  v26 = v5;
  v27 = 0;
  if (ARI_CsiIceStartProvisionReq_ENC())
  {
    return 0;
  }

  v7 = operator new(0x18uLL);
  v8 = v27;
  v7[2] = v25;
  *(v7 + 2) = v8;
  *v7 = &unk_2A1E625B0;
  if (!KTLUTASendAndReleaseData(a1, v7))
  {
    return 0;
  }

  if ((KTLUTACopyReceiveData(a1, &v20) & 1) == 0)
  {
    return 0;
  }

  v9 = v20;
  (*(*v20 + 16))(v20);
  v10 = ARI_CsiIceStartProvisionResp_Extract();
  (*(*v9 + 8))(v9);
  if (v10)
  {
    return 0;
  }

  return a3[1] == 0;
}

void sub_297A30F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a16, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLStartProvision_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceStartProvisionResp_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLFinishProvision(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 16);
  v42 = v5;
  if (*(a1 + 8))
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2000000000;
    v41 = -1;
    v45 = 0;
    v46 = &v45;
    v47 = 0xD802000000;
    v48 = __Block_byref_object_copy__2;
    v49 = __Block_byref_object_dispose__3;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v50 = v12;
    v51 = v12;
    v52 = v12;
    v53 = v12;
    v54 = v12;
    v55 = v12;
    v56 = v12;
    v57 = v12;
    v58 = v12;
    v59[0] = v12;
    *(v59 + 12) = v12;
    v13 = dispatch_semaphore_create(0);
    v14 = v13;
    object = v13;
    if (v13)
    {
      dispatch_retain(v13);
    }

    if (ARI_CsiIceFinishProvisionReq_BLK())
    {
      v15 = 0;
      v16 = v46;
      v17 = *(v46 + 9);
      v18 = *(v46 + 7);
      *a3 = *(v46 + 5);
      *(a3 + 16) = v18;
      *(a3 + 32) = v17;
      v19 = *(v16 + 13);
      v20 = *(v16 + 17);
      v21 = *(v16 + 11);
      *(a3 + 80) = *(v16 + 15);
      *(a3 + 96) = v20;
      *(a3 + 48) = v21;
      *(a3 + 64) = v19;
      v22 = *(v16 + 21);
      v23 = *(v16 + 23);
      v24 = *(v16 + 19);
      *(a3 + 156) = *(v16 + 196);
      *(a3 + 128) = v22;
      *(a3 + 144) = v23;
      *(a3 + 112) = v24;
      v25 = object;
      if (!object)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v26 = dispatch_time(0, 1000000 * *(a1 + 20));
    v27 = dispatch_semaphore_wait(v14, v26);
    if (v27)
    {
      _KTLErrorPrint("KTLFinishProvision", "Timeout waiting for response.\n");
    }

    if (v42)
    {
      AriHost::ExitTrx(v42);
    }

    v28 = v46;
    v29 = *(v46 + 9);
    v30 = *(v46 + 7);
    *a3 = *(v46 + 5);
    *(a3 + 16) = v30;
    *(a3 + 32) = v29;
    v31 = *(v28 + 13);
    v32 = *(v28 + 17);
    v33 = *(v28 + 11);
    *(a3 + 80) = *(v28 + 15);
    *(a3 + 96) = v32;
    *(a3 + 48) = v33;
    *(a3 + 64) = v31;
    v34 = *(v28 + 21);
    v35 = *(v28 + 23);
    v36 = *(v28 + 19);
    *(a3 + 156) = *(v28 + 196);
    *(a3 + 128) = v34;
    *(a3 + 144) = v35;
    *(a3 + 112) = v36;
    if (v27)
    {
      v15 = 0;
      v25 = object;
      if (!object)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v15 = *(v39 + 6) == 0;
      v25 = object;
      if (!object)
      {
LABEL_16:
        if (v14)
        {
          dispatch_release(v14);
        }

        _Block_object_dispose(&v45, 8);
        _Block_object_dispose(&v38, 8);
        if (v15)
        {
          return *(a3 + 20) == 0;
        }

        return 0;
      }
    }

LABEL_15:
    dispatch_release(v25);
    goto LABEL_16;
  }

  v38 = 0;
  v43 = 0;
  v44 = v5;
  v45 = 0;
  if (ARI_CsiIceFinishProvisionReq_ENC())
  {
    return 0;
  }

  v7 = operator new(0x18uLL);
  v8 = v45;
  v7[2] = v43;
  *(v7 + 2) = v8;
  *v7 = &unk_2A1E625B0;
  if (!KTLUTASendAndReleaseData(a1, v7))
  {
    return 0;
  }

  if ((KTLUTACopyReceiveData(a1, &v38) & 1) == 0)
  {
    return 0;
  }

  v9 = v38;
  (*(*v38 + 16))(v38);
  v10 = ARI_CsiIceFinishProvisionResp_Extract();
  (*(*v9 + 8))(v9);
  if (v10)
  {
    return 0;
  }

  return *(a3 + 20) == 0;
}

void sub_297A3142C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (object)
  {
    dispatch_release(object);
  }

  if (v22)
  {
    dispatch_release(v22);
  }

  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = v2;
  v4 = *(a2 + 88);
  v5 = *(a2 + 104);
  v6 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v6;
  *(a1 + 104) = v5;
  *(a1 + 88) = v4;
  result = *(a2 + 152);
  v8 = *(a2 + 168);
  v9 = *(a2 + 184);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 184) = v9;
  *(a1 + 168) = v8;
  *(a1 + 152) = result;
  return result;
}

uint64_t __KTLFinishProvision_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceFinishProvisionResp_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLGetManifestStatus(uint64_t a1, _DWORD *a2)
{
  v48 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 16);
  v23 = v4;
  if (*(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    v22 = -1;
    v26 = 0;
    v27 = &v26;
    v28 = 0x13802000000;
    v29 = __Block_byref_object_copy__7;
    v30 = __Block_byref_object_dispose__8;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v45 = v11;
    v46 = v11;
    v47 = v11;
    v31 = v11;
    v32 = v11;
    v33 = v11;
    v34 = v11;
    v35 = v11;
    v36 = v11;
    v37 = v11;
    v38 = v11;
    v39 = v11;
    v40 = v11;
    v41 = v11;
    v42 = v11;
    v43 = v11;
    v44 = v11;
    v12 = dispatch_semaphore_create(0);
    v13 = v12;
    object = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    if (ARI_CsiIceGetManifestStatusReq_BLK())
    {
      memcpy(a2, v27 + 5, 0x110uLL);
      v14 = 0;
      v15 = object;
      if (!object)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v16 = dispatch_time(0, 1000000 * *(a1 + 20));
      v17 = dispatch_semaphore_wait(v13, v16);
      if (v17)
      {
        _KTLErrorPrint("KTLGetManifestStatus", "Timeout waiting for response.\n");
      }

      if (v23)
      {
        AriHost::ExitTrx(v23);
      }

      memcpy(a2, v27 + 5, 0x110uLL);
      if (v17)
      {
        v14 = 0;
        v15 = object;
        if (!object)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v14 = *(v20 + 6) == 0;
        v15 = object;
        if (!object)
        {
LABEL_23:
          if (v13)
          {
            dispatch_release(v13);
          }

          _Block_object_dispose(&v26, 8);
          _Block_object_dispose(&v19, 8);
          if (v14)
          {
            return *a2 == 0;
          }

          return 0;
        }
      }
    }

    dispatch_release(v15);
    goto LABEL_23;
  }

  v19 = 0;
  v24 = 0;
  v25 = v4;
  v26 = 0;
  if (ARI_CsiIceGetManifestStatusReq_ENC())
  {
    return 0;
  }

  v6 = operator new(0x18uLL);
  v7 = v26;
  v6[2] = v24;
  *(v6 + 2) = v7;
  *v6 = &unk_2A1E625B0;
  if (!KTLUTASendAndReleaseData(a1, v6))
  {
    return 0;
  }

  if ((KTLUTACopyReceiveData(a1, &v19) & 1) == 0)
  {
    return 0;
  }

  v8 = v19;
  (*(*v19 + 16))(v19);
  v9 = ARI_CsiIceGetManifestStatusResp_Extract();
  (*(*v8 + 8))(v8);
  if (v9)
  {
    return 0;
  }

  return *a2 == 0;
}

void sub_297A318A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (object)
  {
    dispatch_release(object);
  }

  if (v22)
  {
    dispatch_release(v22);
  }

  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLGetManifestStatus_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceGetManifestStatusResp_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

double Bsp::BspCommandDriver::BspCommandDriver(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

uint64_t Bsp::BspCommandDriver::GetIMEIInfo(Bsp::BspCommandDriver *this, AriSdk::ARI_CsiMsCpsReadImeiReq_SDK *a2, AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK **a3)
{
  v12 = 0;
  v13 = 0;
  AriSdk::MsgBase::getRawBytes();
  v10 = 0;
  v11 = 0;
  v5 = ktl::CommandDriver::perform<AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK>(this, 83918848, &v10, a3);
  v6 = v5;
  v7 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if ((v5 & 1) == 0)
  {
LABEL_4:
    _KTLErrorPrint("GetIMEIInfo", "Failed request\n", v10);
  }

LABEL_5:
  v8 = v13;
  if (!v13 || atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return v6;
}

void sub_297A31AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297A31B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ktl::CommandDriver::perform<AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK>(uint64_t a1, uint64_t a2, uint64_t **a3, AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK **a4)
{
  *a4 = 0;
  v6 = *(a1 + 16);
  v7 = *(v6 + 8);
  if (!v7 && *(v6 + 16))
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3002000000;
    v35 = __Block_byref_object_copy__3;
    v36 = __Block_byref_object_dispose__3;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    v26 = MEMORY[0x29EDCA5F8];
    v27 = 1107296256;
    v28 = ___ZN3ktl13CommandDriver7performIN6AriSdk29ARI_CsiMsCpsReadImeiRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke;
    v29 = &__block_descriptor_tmp_7;
    v30 = &v32;
    v31 = a4;
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v18 = v33;
      v19 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v18[5], v19))
      {
        v20 = 1;
        _Block_object_dispose(&v32, 8);
        v21 = object;
        if (!object)
        {
LABEL_24:
          if ((v20 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_25;
        }

LABEL_23:
        dispatch_release(v21);
        goto LABEL_24;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v20 = 0;
    _Block_object_dispose(&v32, 8);
    v21 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v8 = **a3;
  v9 = (*a3)[1] - v8;
  v10 = *(v6 + 20);
  LODWORD(v32) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v9, v10);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v8, v9);
  }

  v11 = *v7;
  if (!*v7 || ((v12 = v11(v7, v8, v9, &v32, 1, v10, 0), LODWORD(v11) = v32, v12) ? (v13 = v32 == v9) : (v13 = 0), !v13))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v9, v11);
LABEL_10:
    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_11;
  }

  v32 = 0;
  if (!KTLUTACopyReceiveData(*(a1 + 16), &v32))
  {
    goto LABEL_10;
  }

  v15 = v32;
  if (!v32)
  {
    goto LABEL_10;
  }

  v16 = operator new(0x60uLL);
  v17 = (*(*v15 + 16))(v15);
  AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK::ARI_CsiMsCpsReadImeiRspCb_SDK(v16, v17);
  *a4 = v16;
  (*(*v15 + 8))(v15);
LABEL_25:
  hasDeclaredGmid = AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK::hasDeclaredGmid(*a4);
  v23 = *a4;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK::unpack(v23))
    {
      return 1;
    }
  }

  else if (AriSdk::MsgBase::getMergedGMID(v23) == 67600384)
  {
    _KTLErrorPrint("perform", "Received NACK\n", v24, v25, v26, v27, v28, v29, v30, v31);
  }

  else
  {
    AriSdk::MsgBase::getMergedGMID(*a4);
    _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
  }

LABEL_11:
  if (*a4)
  {
    (*(**a4 + 16))(*a4);
  }

  result = 0;
  *a4 = 0;
  return result;
}

void sub_297A31EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, dispatch_object_t object)
{
  _Block_object_dispose(&a17, 8);
  if (object)
  {
    dispatch_release(object);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t Bsp::BspCommandDriver::GetBBWakeReason(uint64_t a1, uint64_t a2, AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK **a3)
{
  _KTLErrorPrint("GetBBWakeReason", "Getting Baseband wake reason");
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  if (!v6 && *(v5 + 16))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__3;
    v32 = __Block_byref_object_dispose__3;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v20 = v29;
      v21 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v20[5], v21))
      {
        v22 = 1;
        _Block_object_dispose(&v28, 8);
        v23 = object;
        if (!object)
        {
LABEL_29:
          if ((v22 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_30;
        }

LABEL_28:
        dispatch_release(v23);
        goto LABEL_29;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v22 = 0;
    _Block_object_dispose(&v28, 8);
    v23 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = MEMORY[0];
  v8 = MEMORY[8] - MEMORY[0];
  v9 = *(v5 + 20);
  LODWORD(v28) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", MEMORY[8] - MEMORY[0], v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v6;
  if (!*v6 || ((v11 = v10(v6, v7, v8, &v28, 1, v9, 0), LODWORD(v10) = v28, v28 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
LABEL_15:
    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_16;
  }

  v28 = 0;
  v13 = KTLUTACopyReceiveData(*(a1 + 16), &v28);
  v14 = v28;
  if (v28)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = operator new(0x50uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK::ARI_CsiIceWakeupReasonRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK::unpack(v25))
    {
      v18 = 1;
      goto LABEL_19;
    }
  }

  else if (AriSdk::MsgBase::getMergedGMID(v25) == 67600384)
  {
    _KTLErrorPrint("perform", "Received NACK\n", v26, v27, 0, 0);
  }

  else
  {
    AriSdk::MsgBase::getMergedGMID(*a3);
    _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
  }

LABEL_16:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v18 = 0;
  *a3 = 0;
LABEL_19:
  if ((v18 & 1) == 0)
  {
    _KTLErrorPrint("GetBBWakeReason", "Failed request\n");
  }

  return v18;
}

void sub_297A32390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t Bsp::BspCommandDriver::SwTrap(uint64_t a1, uint64_t *a2)
{
  v58 = *MEMORY[0x29EDCA608];
  v43 = 0;
  v44 = 0;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v4;
  *v42 = v4;
  v39[3] = v4;
  *__p = v4;
  v39[1] = v4;
  v39[2] = v4;
  v39[0] = v4;
  AriSdk::ARI_CsiBspSwTrapReq_v3_SDK::ARI_CsiBspSwTrapReq_v3_SDK(v39);
  v5 = operator new(8uLL);
  *v5 = 0x600DC0FFEELL;
  v6 = __p[0];
  __p[0] = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  if (!v9)
  {
    v11 = 0;
    v13 = 0;
    goto LABEL_18;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v10 = operator new(v9);
  v11 = v10;
  if (v9 < 0x20)
  {
    v12 = v8;
    v13 = v10;
    do
    {
LABEL_22:
      v18 = *v12;
      v12 = (v12 + 1);
      *v13++ = v18;
    }

    while (v12 != (v8 + v9));
    goto LABEL_23;
  }

  v12 = v8;
  v13 = v10;
  if ((v10 - v8) < 0x20)
  {
    goto LABEL_22;
  }

  v12 = (v8 + (v9 & 0x7FFFFFFFFFFFFFE0));
  v13 = v10 + (v9 & 0x7FFFFFFFFFFFFFE0);
  v14 = (v10 + 16);
  v15 = (v8 + 2);
  v16 = v9 & 0x7FFFFFFFFFFFFFE0;
  do
  {
    v17 = *v15;
    *(v14 - 1) = *(v15 - 1);
    *v14 = v17;
    v14 += 2;
    v15 += 2;
    v16 -= 32;
  }

  while (v16);
  if (v9 != (v9 & 0x7FFFFFFFFFFFFFE0))
  {
    goto LABEL_22;
  }

LABEL_23:
  v9 += v10;
  v19 = v13 - v10;
  if ((v13 - v10) >= 0x201)
  {
    LogLevels = Ari::GetLogLevels(v10);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v45, "/AppleInternal/Library/BuildRoots/4~CAp9ugB6BN4_7o5_ni_nqpzR2zaN46Dzo_3IlW4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v22);
        v36 = v46 >= 0 ? v45 : v45[0];
        *buf = 136316418;
        *&buf[4] = "ari";
        v48 = 2080;
        v49 = v36;
        v50 = 1024;
        v51 = 360;
        v52 = 2048;
        v53 = &__p[1];
        v54 = 2048;
        v55 = v19;
        v56 = 2048;
        v57 = 512;
        _os_log_error_impl(&dword_297A27000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", buf, 0x3Au);
        if (v46 < 0)
        {
          operator delete(v45[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/AppleInternal/Library/BuildRoots/4~CAp9ugB6BN4_7o5_ni_nqpzR2zaN46Dzo_3IlW4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v22);
      if (v50 >= 0)
      {
        v24 = buf;
      }

      else
      {
        v24 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v23, v24, 360, &__p[1], v19, 512);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(*buf);
      }
    }

    if (v11)
    {
      operator delete(v11);
    }

    goto LABEL_33;
  }

LABEL_18:
  if (__p[1])
  {
    *&v41 = __p[1];
    operator delete(__p[1]);
  }

  __p[1] = v11;
  *&v41 = v13;
  *(&v41 + 1) = v9;
LABEL_33:
  v26 = __p[1];
  v25 = v41;
  v27 = operator new(4uLL);
  *v27 = v25 - v26;
  v28 = v42[0];
  v42[0] = v27;
  if (v28)
  {
    operator delete(v28);
  }

  v29 = operator new(4uLL);
  *v29 = 0;
  v30 = v42[1];
  v42[1] = v29;
  if (v30)
  {
    operator delete(v30);
  }

  AriSdk::MsgBase::getRawBytes();
  v37 = v43;
  v38 = v44;
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = ktl::CommandDriver::perform(a1, &v37);
  v32 = v31;
  v33 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
    if (v32)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if ((v31 & 1) == 0)
  {
LABEL_42:
    _KTLErrorPrint("SwTrap", "Failed to send request (this message does not expect a response)\n");
  }

LABEL_43:
  MEMORY[0x29C279C10](v39);
  v34 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
  }

  return v32;
}

void sub_297A32840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  if (*(v32 - 121) < 0)
  {
    operator delete(*(v32 - 144));
  }

  if (v31)
  {
    operator delete(v31);
    MEMORY[0x29C279C10](&a17);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
    _Unwind_Resume(a1);
  }

  MEMORY[0x29C279C10](&a17, a2, a3, a4, a5, a6, a7, a8);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE84410, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk29ARI_CsiMsCpsReadImeiRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x60uLL);
  AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK::ARI_CsiMsCpsReadImeiRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk31ARI_CsiIceWakeupReasonRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x50uLL);
  AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK::ARI_CsiIceWakeupReasonRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

BOOL KTLGetFirmwareVersion(uint64_t a1, char *a2, int *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  memset(v9, 170, sizeof(v9));
  result = KTLSysGetInfo(a1, 4, v9);
  if (result)
  {
    if (v9[128] < *a3)
    {
      v7 = v9[128] + 1;
    }

    else
    {
      v7 = *a3;
    }

    *a3 = v7;
    v8 = result;
    memcpy(a2, v9, (v7 - 1));
    result = v8;
    a2[*a3 - 1] = 0;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t KTLGetIMEI(uint64_t a1, _BYTE *a2, _DWORD *a3, uint64_t a4)
{
  v15[3] = *MEMORY[0x29EDCA608];
  memset(v15, 170, 24);
  if (*a3 < 0xFu)
  {
    return 0;
  }

  v7 = KTLGetIMEIInfo(a1, a4, v15);
  result = 0;
  if (a2)
  {
    if (v7)
    {
      bzero(a2, *a3);
      *a2 = (BYTE4(v15[0]) >> 4) | 0x30;
      v8 = BYTE5(v15[0]);
      a2[1] = BYTE5(v15[0]) & 0xF | 0x30;
      a2[2] = (v8 >> 4) | 0x30;
      v9 = BYTE6(v15[0]);
      a2[3] = BYTE6(v15[0]) & 0xF | 0x30;
      a2[4] = (v9 >> 4) | 0x30;
      v10 = HIBYTE(v15[0]);
      a2[5] = HIBYTE(v15[0]) & 0xF | 0x30;
      a2[6] = (v10 >> 4) | 0x30;
      v11 = LOBYTE(v15[1]);
      a2[7] = v15[1] & 0xF | 0x30;
      a2[8] = (v11 >> 4) | 0x30;
      v12 = BYTE1(v15[1]);
      a2[9] = BYTE1(v15[1]) & 0xF | 0x30;
      a2[10] = (v12 >> 4) | 0x30;
      v13 = BYTE2(v15[1]);
      a2[11] = BYTE2(v15[1]) & 0xF | 0x30;
      a2[12] = (v13 >> 4) | 0x30;
      v14 = BYTE3(v15[1]);
      a2[13] = BYTE3(v15[1]) & 0xF | 0x30;
      a2[14] = (v14 >> 4) | 0x30;
      a2[15] = 0;
      result = 1;
      *a3 = 16;
    }
  }

  return result;
}

uint64_t KTLGetIMEI_V2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v20 = 0;
  v21 = 0;
  v22 = a1;
  *v23 = 0u;
  *v24 = 0u;
  v25 = 0xAAAAAAAA3F800000;
  _KTLDebugFlags = 15;
  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[2] = v3;
  v18[3] = v3;
  v18[0] = v3;
  v18[1] = v3;
  AriSdk::ARI_CsiMsCpsReadImeiReq_SDK::ARI_CsiMsCpsReadImeiReq_SDK(v18);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(4uLL);
  *v4 = 0;
  v5 = __p;
  __p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  IMEIInfo = Bsp::BspCommandDriver::GetIMEIInfo(&v20, v18, &v17);
  if (IMEIInfo)
  {
    *(a2 + 36) = 16;
    *(a2 + 16) = 16;
    *(a2 + 84) = 17;
    *(a2 + 60) = 17;
    v7 = v17;
    v8 = *(v17 + 9);
    *a2 = 0;
    *(a2 + 8) = 0;
    *a2 = (v8[4] >> 4) | 0x30;
    *(a2 + 1) = v8[5] & 0xF | 0x30;
    *(a2 + 2) = (v8[5] >> 4) | 0x30;
    *(a2 + 3) = v8[6] & 0xF | 0x30;
    *(a2 + 4) = (v8[6] >> 4) | 0x30;
    *(a2 + 5) = v8[7] & 0xF | 0x30;
    *(a2 + 6) = (v8[7] >> 4) | 0x30;
    *(a2 + 7) = v8[8] & 0xF | 0x30;
    *(a2 + 8) = (v8[8] >> 4) | 0x30;
    *(a2 + 9) = v8[9] & 0xF | 0x30;
    *(a2 + 10) = (v8[9] >> 4) | 0x30;
    *(a2 + 11) = v8[10] & 0xF | 0x30;
    *(a2 + 12) = (v8[10] >> 4) | 0x30;
    *(a2 + 13) = v8[11] & 0xF | 0x30;
    *(a2 + 14) = (v8[11] >> 4) | 0x30;
    *(a2 + 15) = 0;
    *(a2 + 16) = 16;
    v9 = *(v7 + 9);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = (v9[12] >> 4) | 0x30;
    *(a2 + 41) = v9[13] & 0xF | 0x30;
    *(a2 + 42) = (v9[13] >> 4) | 0x30;
    *(a2 + 43) = v9[14] & 0xF | 0x30;
    *(a2 + 44) = (v9[14] >> 4) | 0x30;
    *(a2 + 45) = v9[15] & 0xF | 0x30;
    *(a2 + 46) = (v9[15] >> 4) | 0x30;
    *(a2 + 47) = v9[16] & 0xF | 0x30;
    *(a2 + 48) = (v9[16] >> 4) | 0x30;
    *(a2 + 49) = v9[17] & 0xF | 0x30;
    *(a2 + 50) = (v9[17] >> 4) | 0x30;
    *(a2 + 51) = v9[18] & 0xF | 0x30;
    *(a2 + 52) = (v9[18] >> 4) | 0x30;
    *(a2 + 53) = v9[19] & 0xF | 0x30;
    *(a2 + 54) = (v9[19] >> 4) | 0x30;
    *(a2 + 55) = v9[20] & 0xF | 0x30;
    *(a2 + 56) = 0;
    *(a2 + 60) = 17;
    v10 = *(v7 + 10);
    if (v10)
    {
      *(a2 + 28) = 0;
      *(a2 + 20) = 0;
      *(a2 + 20) = (*v10 >> 4) | 0x30;
      *(a2 + 21) = v10[1] & 0xF | 0x30;
      *(a2 + 22) = (v10[1] >> 4) | 0x30;
      *(a2 + 23) = v10[2] & 0xF | 0x30;
      *(a2 + 24) = (v10[2] >> 4) | 0x30;
      *(a2 + 25) = v10[3] & 0xF | 0x30;
      *(a2 + 26) = (v10[3] >> 4) | 0x30;
      *(a2 + 27) = v10[4] & 0xF | 0x30;
      *(a2 + 28) = (v10[4] >> 4) | 0x30;
      *(a2 + 29) = v10[5] & 0xF | 0x30;
      *(a2 + 30) = (v10[5] >> 4) | 0x30;
      *(a2 + 31) = v10[6] & 0xF | 0x30;
      *(a2 + 32) = (v10[6] >> 4) | 0x30;
      *(a2 + 33) = v10[7] & 0xF | 0x30;
      *(a2 + 34) = (v10[7] >> 4) | 0x30;
      *(a2 + 35) = 0;
      *(a2 + 36) = 16;
      v11 = *(v7 + 10);
      *(a2 + 80) = 0;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(a2 + 64) = (v11[8] >> 4) | 0x30;
      *(a2 + 65) = v11[9] & 0xF | 0x30;
      *(a2 + 66) = (v11[9] >> 4) | 0x30;
      *(a2 + 67) = v11[10] & 0xF | 0x30;
      *(a2 + 68) = (v11[10] >> 4) | 0x30;
      *(a2 + 69) = v11[11] & 0xF | 0x30;
      *(a2 + 70) = (v11[11] >> 4) | 0x30;
      *(a2 + 71) = v11[12] & 0xF | 0x30;
      *(a2 + 72) = (v11[12] >> 4) | 0x30;
      *(a2 + 73) = v11[13] & 0xF | 0x30;
      *(a2 + 74) = (v11[13] >> 4) | 0x30;
      *(a2 + 75) = v11[14] & 0xF | 0x30;
      *(a2 + 76) = (v11[14] >> 4) | 0x30;
      *(a2 + 77) = v11[15] & 0xF | 0x30;
      *(a2 + 78) = (v11[15] >> 4) | 0x30;
      *(a2 + 79) = v11[16] & 0xF | 0x30;
      *(a2 + 84) = 17;
      MEMORY[0x29C279C70](v18);
      v12 = v24[0];
      if (!v24[0])
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(a2 + 84) = 0;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 28) = 0;
      *(a2 + 20) = 0;
      *(a2 + 36) = 0;
      MEMORY[0x29C279C70](v18);
      v12 = v24[0];
      if (!v24[0])
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    *(a2 + 84) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 41) = 0u;
    *(a2 + 68) = 0;
    *(a2 + 60) = 0;
    *(a2 + 73) = 0;
    MEMORY[0x29C279C70](v18);
    v12 = v24[0];
    if (!v24[0])
    {
      goto LABEL_13;
    }
  }

  do
  {
    v15 = *v12;
    v16 = v12[3];
    if (v16)
    {
      _Block_release(v16);
    }

    operator delete(v12);
    v12 = v15;
  }

  while (v15);
LABEL_13:
  v14 = v23[0];
  v23[0] = 0;
  if (v14)
  {
    operator delete(v14);
  }

  if (!v21)
  {
    return IMEIInfo;
  }

  std::__shared_weak_count::__release_weak(v21);
  return IMEIInfo;
}

void sub_297A332C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  Bsp::BspCommandDriver::~BspCommandDriver(va);
  _Unwind_Resume(a1);
}

uint64_t KTLGetMEID(uint64_t a1, _BYTE *a2, _DWORD *a3, uint64_t a4)
{
  v15[3] = *MEMORY[0x29EDCA608];
  memset(v15, 170, 24);
  if (*a3 < 0xEu)
  {
    return 0;
  }

  v7 = KTLGetMEIDInfo(a1, a4, v15);
  result = 0;
  if (a2)
  {
    if (v7)
    {
      bzero(a2, *a3);
      v8 = BYTE4(v15[0]);
      *a2 = BYTE4(v15[0]) & 0xF | 0x30;
      a2[1] = (v8 >> 4) | 0x30;
      v9 = BYTE5(v15[0]);
      a2[2] = BYTE5(v15[0]) & 0xF | 0x30;
      a2[3] = (v9 >> 4) | 0x30;
      v10 = BYTE6(v15[0]);
      a2[4] = BYTE6(v15[0]) & 0xF | 0x30;
      a2[5] = (v10 >> 4) | 0x30;
      v11 = HIBYTE(v15[0]);
      a2[6] = HIBYTE(v15[0]) & 0xF | 0x30;
      a2[7] = (v11 >> 4) | 0x30;
      v12 = LOBYTE(v15[1]);
      a2[8] = v15[1] & 0xF | 0x30;
      a2[9] = (v12 >> 4) | 0x30;
      v13 = BYTE1(v15[1]);
      a2[10] = BYTE1(v15[1]) & 0xF | 0x30;
      a2[11] = (v13 >> 4) | 0x30;
      v14 = BYTE2(v15[1]);
      a2[12] = BYTE2(v15[1]) & 0xF | 0x30;
      a2[13] = (v14 >> 4) | 0x30;
      a2[14] = 0;
      result = 1;
      *a3 = 14;
    }
  }

  return result;
}

uint64_t KTLIsValidIMEIString(const char *a1)
{
  result = strncmp(a1, "00000000000000", 0xFuLL);
  if (result)
  {
    return strncmp(a1, "00499901064000", 0xFuLL) != 0;
  }

  return result;
}

uint64_t KTLGetIMEISV(uint64_t a1, _BYTE *a2, _DWORD *a3, uint64_t a4)
{
  v15[3] = *MEMORY[0x29EDCA608];
  memset(v15, 170, 24);
  if (*a3 < 0x10u)
  {
    return 0;
  }

  v7 = KTLGetIMEIInfo(a1, a4, v15);
  result = 0;
  if (a2)
  {
    if (v7)
    {
      bzero(a2, *a3);
      *a2 = (BYTE4(v15[1]) >> 4) | 0x30;
      v8 = BYTE5(v15[1]);
      a2[1] = BYTE5(v15[1]) & 0xF | 0x30;
      a2[2] = (v8 >> 4) | 0x30;
      v9 = BYTE6(v15[1]);
      a2[3] = BYTE6(v15[1]) & 0xF | 0x30;
      a2[4] = (v9 >> 4) | 0x30;
      v10 = HIBYTE(v15[1]);
      a2[5] = HIBYTE(v15[1]) & 0xF | 0x30;
      a2[6] = (v10 >> 4) | 0x30;
      v11 = LOBYTE(v15[2]);
      a2[7] = v15[2] & 0xF | 0x30;
      a2[8] = (v11 >> 4) | 0x30;
      v12 = BYTE1(v15[2]);
      a2[9] = BYTE1(v15[2]) & 0xF | 0x30;
      a2[10] = (v12 >> 4) | 0x30;
      v13 = BYTE2(v15[2]);
      a2[11] = BYTE2(v15[2]) & 0xF | 0x30;
      a2[12] = (v13 >> 4) | 0x30;
      v14 = BYTE3(v15[2]);
      a2[13] = BYTE3(v15[2]) & 0xF | 0x30;
      a2[14] = (v14 >> 4) | 0x30;
      a2[15] = BYTE4(v15[2]) & 0xF | 0x30;
      a2[16] = 0;
      result = 1;
      *a3 = 17;
    }
  }

  return result;
}

uint64_t KTLGetSIMInfo(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  if (!a1 || !a2)
  {
    return v3;
  }

  v23 = 0;
  v24 = 0;
  v25 = a1;
  *v26 = 0u;
  *v27 = 0u;
  v28 = 0xAAAAAAAA3F800000;
  _KTLDebugFlags = 15;
  if (*(a1 + 20) >> 4 <= 0x270u)
  {
    *(a1 + 20) = 10000;
  }

  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[2] = v6;
  v21[3] = v6;
  v21[0] = v6;
  v21[1] = v6;
  AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::ARI_IBISimAccessGetSimDataReq_SDK(v21);
  v20 = 0;
  v7 = operator new(4uLL);
  *v7 = a3;
  v8 = __p;
  __p = v7;
  if (v8)
  {
    operator delete(v8);
  }

  *(a2 + 4) = 0;
  *a2 = 0;
  VinylType = eUICC::VinylCommandDriver::GetVinylType(&v23, v21, &v20);
  if (!VinylType)
  {
    MEMORY[0x29C27A140](v21);
    v10 = v27[0];
    if (!v27[0])
    {
      goto LABEL_23;
    }

    do
    {
LABEL_30:
      v18 = *v10;
      v19 = v10[3];
      if (v19)
      {
        _Block_release(v19);
      }

      operator delete(v10);
      v10 = v18;
    }

    while (v18);
    goto LABEL_23;
  }

  v11 = v20;
  v12 = **(v20 + 9);
  if (!v12 || v12 == 6 && **(v20 + 16) == 2)
  {
    *(a2 + 4) = 0;
    goto LABEL_22;
  }

  v13 = 1;
  *(a2 + 4) = 1;
  v14 = *(v11 + 17);
  if (!v14)
  {
    goto LABEL_21;
  }

  v15 = *v14;
  if (v15 == 2)
  {
    v13 = 3;
    goto LABEL_21;
  }

  if (v15 == 1)
  {
    v13 = 2;
    goto LABEL_21;
  }

  if (!*v14)
  {
    v13 = 1;
LABEL_21:
    *a2 = v13;
    goto LABEL_22;
  }

  *a2 = 0;
LABEL_22:
  (*(*v11 + 16))(v11);
  MEMORY[0x29C27A140](v21);
  v10 = v27[0];
  if (v27[0])
  {
    goto LABEL_30;
  }

LABEL_23:
  v16 = v26[0];
  v26[0] = 0;
  if (v16)
  {
    operator delete(v16);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  return VinylType;
}

void sub_297A33868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  MEMORY[0x29C27A140](va, a2, a3);
  eUICC::VinylCommandDriver::~VinylCommandDriver(va1);
  _Unwind_Resume(a1);
}

void sub_297A33888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  eUICC::VinylCommandDriver::~VinylCommandDriver(va);
  _Unwind_Resume(a1);
}

uint64_t KTLGetSimSlotMapping(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v9 = 0;
  memset(v8, 170, sizeof(v8));
  *a2 = 0x100000000;
  if (!KTLIsBBSimStackMappingEnabled(a1, &v9))
  {
    _KTLDebugPrint("KTLGetSimSlotMapping", "Treating BB as single-SIM. Using default SIM stack mapping in KTL.\n");
    return 1;
  }

  if (v9)
  {
    _KTLDebugPrint("KTLGetSimSlotMapping", "BB internal SIM slot -> stack instance mapping enabled. Using default SIM stack mapping in KTL.\n");
    return 1;
  }

  _KTLDebugPrint("KTLGetSimSlotMapping", "BB internal SIM slot -> stack instance mapping disabled. Retrieveing SIM stack mapping from BB.\n.");
  if (KTLGetSimStackMapping(a1, v8))
  {
    if (v8[0])
    {
      v6 = *&v8[4];
    }

    else
    {
      v6 = 255;
    }

    *a2 = v6;
    _KTLDebugPrint("KTLGetSimSlotMapping", "simSlotMapping->slot_instance_id[%lu] = %d\n", 0, v6);
    if (v8[0] <= 1u)
    {
      v7 = 255;
    }

    else
    {
      v7 = *&v8[8];
    }

    *(a2 + 4) = v7;
    _KTLDebugPrint("KTLGetSimSlotMapping", "simSlotMapping->slot_instance_id[%lu] = %d\n", 1, v7);
    return 1;
  }

  else
  {
    _KTLErrorPrint("KTLGetSimSlotMapping", "Failed to retrieve SIM stack mapping from BB.\n");
    return 0;
  }
}

uint64_t KTLGetSimSlotInstance(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  result = 0;
  if (a1 && a3)
  {
    if (a2 < 2)
    {
      v7 = 0xAAAAAAAAAAAAAAAALL;
      result = KTLGetSimSlotMapping(a1, &v7);
      if (result)
      {
        *a3 = *(&v7 + a2);
      }
    }

    else
    {
      _KTLErrorPrint("KTLGetSimSlotInstance", "simSlot parameter: %d is >= KTL max number of supported SIMs: %d\n", a2, 2);
      return 0;
    }
  }

  return result;
}

uint64_t KTLGetSIMSummary(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v6 = 0xAAAAAAAAAAAAAAAALL;
    result = KTLGetSimSlotMapping(a1, &v6);
    if (result)
    {
      v5 = result;
      KTLGetSIMInfo(a1, a2, v6);
      KTLGetSIMInfo(a1, a2 + 8, SHIDWORD(v6));
      return v5;
    }
  }

  return result;
}

const char *asString(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "unknown SIM type";
  }

  else
  {
    return off_29EE84438[a1 - 1];
  }
}

uint64_t KTLEFICheckSIMReady(uint64_t a1, BOOL *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      *a2 = 0;
      v5 = KTLPing(a1, a2);
      result = 0;
      if (v5)
      {
        if (*a2)
        {
          result = KTLIsSIMSlotReady(a1, a2, 0);
          v8 = 0;
          if (result && *a2)
          {
            v6 = result;
            v7 = KTLIsSIMSlotReady(a1, &v8, 1);
            result = v6;
            if (v7)
            {
              *a2 = v8;
            }
          }
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t KTLIsSIMSlotReady(uint64_t a1, char *a2, int a3)
{
  v20 = 0;
  v21 = 0;
  v22 = a1;
  *v23 = 0u;
  *v24 = 0u;
  v25 = 0xAAAAAAAA3F800000;
  _KTLDebugFlags = 15;
  if (*(a1 + 20) >> 4 <= 0x270u)
  {
    *(a1 + 20) = 10000;
  }

  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[2] = v5;
  v18[3] = v5;
  v18[0] = v5;
  v18[1] = v5;
  AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::ARI_IBISimAccessGetSimDataReq_SDK(v18);
  v17 = 0;
  v6 = operator new(4uLL);
  *v6 = a3;
  v7 = __p;
  __p = v6;
  if (v7)
  {
    operator delete(v7);
  }

  VinylType = eUICC::VinylCommandDriver::GetVinylType(&v20, v18, &v17);
  if (!VinylType)
  {
    *a2 = 0;
    goto LABEL_15;
  }

  v9 = v17;
  v10 = **(v17 + 9);
  v11 = 1;
  if (v10 <= 6)
  {
    if (((1 << v10) & 0x6D) == 0)
    {
      goto LABEL_12;
    }

LABEL_13:
    *a2 = v11;
LABEL_14:
    (*(*v9 + 16))(v9);
    goto LABEL_15;
  }

  if (v10 - 128 < 3)
  {
    goto LABEL_13;
  }

  if (v10 == 254)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  _KTLErrorPrint("KTLIsSIMSlotReady", "Unknown sim state 0x%x\n", **(v17 + 9));
  v9 = v17;
  *a2 = 0;
  if (v9)
  {
    goto LABEL_14;
  }

LABEL_15:
  MEMORY[0x29C27A140](v18);
  v12 = v24[0];
  if (v24[0])
  {
    do
    {
      v15 = *v12;
      v16 = v12[3];
      if (v16)
      {
        _Block_release(v16);
      }

      operator delete(v12);
      v12 = v15;
    }

    while (v15);
  }

  v13 = v23[0];
  v23[0] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  return VinylType;
}

void sub_297A33DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  MEMORY[0x29C27A140](va, a2, a3);
  eUICC::VinylCommandDriver::~VinylCommandDriver(va1);
  _Unwind_Resume(a1);
}

void sub_297A33E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  eUICC::VinylCommandDriver::~VinylCommandDriver(va);
  _Unwind_Resume(a1);
}

void Bsp::BspCommandDriver::~BspCommandDriver(Bsp::BspCommandDriver *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

BOOL KTLNVMReadGroupEnumList(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 16);
  v28 = v4;
  if (*(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    v24 = 0;
    LODWORD(v20) = v4;
    v29 = 0;
    v30 = 0;
    if (ARI_CsiBspNvmGroupEnumListReq_ENC() || (v6 = operator new(0x18uLL), v7 = v30, v6[2] = v29, *(v6 + 2) = v7, *v6 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v6)) || !KTLUTACopyReceiveData(a1, &v24))
    {
      v11 = 0;
      v10 = 0;
      return v11 == 1 && v10;
    }

    v8 = v24;
    (*(*v24 + 16))(v24);
    v9 = ARI_CsiBspNvmGroupEnumListRespCb_Extract();
    (*(*v8 + 8))(v8);
    v10 = v9 == 0;
    v11 = HIDWORD(v28);
    if (v10)
    {
      goto LABEL_27;
    }

    return v11 == 1 && v10;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0xDD802000000;
  v33 = __Block_byref_object_copy__4;
  v34 = __Block_byref_object_dispose__4;
  memset(v35, 170, sizeof(v35));
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = -1;
  v12 = dispatch_semaphore_create(0);
  v13 = v12;
  v18 = MEMORY[0x29EDCA5F8];
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  if (ARI_CsiBspNvmGroupEnumListReq_BLK())
  {
    v11 = *(v25 + 6);
    HIDWORD(v28) = v11;
    memcpy(a2, v31 + 5, 0xDB0uLL);
    v10 = 0;
    v14 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v15 = dispatch_time(0, 1000000 * *(a1 + 20));
  v16 = dispatch_semaphore_wait(v13, v15);
  if (v16)
  {
    _KTLErrorPrint("KTLNVMReadGroupEnumList", "Timeout waiting for response.\n", v18, 1174405120, __KTLNVMReadGroupEnumList_block_invoke, &__block_descriptor_tmp_8, &v20, &v24, &v30);
  }

  if (v28)
  {
    AriHost::ExitTrx(v28);
  }

  v11 = *(v25 + 6);
  HIDWORD(v28) = v11;
  memcpy(a2, v31 + 5, 0xDB0uLL);
  if (v16)
  {
    v10 = 0;
    v14 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v10 = *(v21 + 6) == 0;
  v14 = object;
  if (object)
  {
LABEL_23:
    dispatch_release(v14);
  }

LABEL_24:
  if (v13)
  {
    dispatch_release(v13);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  if (v10)
  {
LABEL_27:
    if (v11 != 1)
    {
      _KTLErrorPrint("KTLNVMReadGroupEnumList", "Error: CsiBspNvmGroupEnumListRespCb Failure\n");
      v11 = HIDWORD(v28);
    }
  }

  return v11 == 1 && v10;
}

void sub_297A3423C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (object)
  {
    dispatch_release(object);
  }

  if (v26)
  {
    dispatch_release(v26);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLNVMReadGroupEnumList_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiBspNvmGroupEnumListRespCb_Extract();
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLNVMReadGroupStart(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v26 = v3;
  if (*(a1 + 8))
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v18 = 0;
    v27 = 0;
    v28 = v3;
    v22 = 0;
    if (ARI_CsiBspNvmReadGroupReq_ENC() || (v5 = operator new(0x18uLL), v6 = v22, v5[2] = v27, *(v5 + 2) = v6, *v5 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v5)) || !KTLUTACopyReceiveData(a1, &v18))
    {
      v10 = 0;
      v9 = 0;
      return v10 == 1 && v9;
    }

    v7 = v18;
    (*(*v18 + 16))(v18);
    v8 = ARI_CsiBspNvmReadGroupRespCb_Extract();
    (*(*v7 + 8))(v7);
    v9 = v8 == 0;
    v10 = HIDWORD(v26);
    if (v9)
    {
      goto LABEL_27;
    }

    return v10 == 1 && v9;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = -1;
  v11 = dispatch_semaphore_create(0);
  v12 = v11;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  if (ARI_CsiBspNvmReadGroupReq_BLK())
  {
    v9 = 0;
    v10 = *(v23 + 6);
    HIDWORD(v26) = v10;
    v13 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v14 = dispatch_time(0, 1000000 * *(a1 + 20));
  v15 = dispatch_semaphore_wait(v12, v14);
  if (v15)
  {
    _KTLErrorPrint("KTLNVMReadGroupStart", "Timeout waiting for response.\n");
  }

  if (v26)
  {
    AriHost::ExitTrx(v26);
  }

  v10 = *(v23 + 6);
  HIDWORD(v26) = v10;
  if (v15)
  {
    v9 = 0;
    v13 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v9 = *(v19 + 6) == 0;
  v13 = object;
  if (object)
  {
LABEL_23:
    dispatch_release(v13);
  }

LABEL_24:
  if (v12)
  {
    dispatch_release(v12);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  if (v9)
  {
LABEL_27:
    if (v10 != 1)
    {
      _KTLErrorPrint("KTLNVMReadGroupStart", "Error: CsiBspNvmReadGroupRespCb Failure\n");
      v10 = HIDWORD(v26);
    }
  }

  return v10 == 1 && v9;
}

void sub_297A345F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    dispatch_release(v20);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLNVMReadGroupStart_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiBspNvmReadGroupRespCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLNVMReadGroupBlock(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  v42 = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 16);
  v35 = v9;
  if (*(a1 + 8))
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2000000000;
    v34 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0xDD802000000;
    v39 = __Block_byref_object_copy__4;
    v40 = __Block_byref_object_dispose__4;
    memset(v41, 170, sizeof(v41));
    v27 = 0;
    v28 = &v27;
    v29 = 0x2000000000;
    v30 = -1431655766;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = -1;
    v15 = dispatch_semaphore_create(0);
    v16 = v15;
    object = v15;
    if (v15)
    {
      dispatch_retain(v15);
    }

    if (!ARI_CsiBspNvmReadGroupBlockReq_BLK())
    {
      v17 = dispatch_time(0, 1000000 * *(a1 + 20));
      if (!dispatch_semaphore_wait(v16, v17))
      {
        v18 = 1;
LABEL_17:
        *a3 = *(v32 + 6);
        memcpy(a4, v37 + 5, 0xDB0uLL);
        *a5 = *(v28 + 6);
        if (v18)
        {
          v19 = *(v24 + 6) == 0;
          v20 = object;
          if (!object)
          {
LABEL_23:
            if (v16)
            {
              dispatch_release(v16);
            }

            _Block_object_dispose(&v23, 8);
            _Block_object_dispose(&v27, 8);
            _Block_object_dispose(&v36, 8);
            _Block_object_dispose(&v31, 8);
            if (v19)
            {
              goto LABEL_26;
            }

            goto LABEL_28;
          }
        }

        else
        {
          v19 = 0;
          v20 = object;
          if (!object)
          {
            goto LABEL_23;
          }
        }

        dispatch_release(v20);
        goto LABEL_23;
      }

      _KTLErrorPrint("KTLNVMReadGroupBlock", "Timeout waiting for response.\n");
    }

    v18 = 0;
    goto LABEL_17;
  }

  v31 = 0;
  LODWORD(v27) = v9;
  LODWORD(v23) = 0;
  v36 = 0;
  if (ARI_CsiBspNvmReadGroupBlockReq_ENC() || (v11 = operator new(0x18uLL), v12 = v36, v11[2] = v23, *(v11 + 2) = v12, *v11 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v11)) || (KTLUTACopyReceiveData(a1, &v31) & 1) == 0)
  {
    *a5 = 0;
    goto LABEL_28;
  }

  v13 = v31;
  (*(*v31 + 16))(v31);
  v14 = ARI_CsiBspNvmReadGroupBlockRespCb_Extract();
  (*(*v13 + 8))(v13);
  *a5 = 0;
  if (v14)
  {
LABEL_28:
    _KTLErrorPrint("KTLNVMReadGroupBlock", "Error: CsiBspNvmReadGroupBlockRespCb Failure\n");
    return 0;
  }

LABEL_26:
  if (*a3)
  {
    return 1;
  }

  _KTLErrorPrint("KTLNVMReadGroupBlock", "Error: CsiBspNvmReadGroupBlockRespCb Failure\n");
  return *a3 != 0;
}

void sub_297A34A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  if (object)
  {
    dispatch_release(object);
  }

  if (v31)
  {
    dispatch_release(v31);
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLNVMReadGroupBlock_block_invoke(void *a1, AriMsg *a2, uint64_t a3)
{
  v3 = a3;
  *(*(a1[4] + 8) + 24) = ARI_CsiBspNvmReadGroupBlockRespCb_Extract();
  BufCtx = AriMsg::GetBufCtx(a2, v3);
  v7 = a1[8];
  *(*(a1[7] + 8) + 24) = BufCtx;
  dispatch_semaphore_signal(v7);
  return *(*(a1[4] + 8) + 24);
}

void __copy_helper_block_e8_32r40r48r56r64c25_ZTSN8dispatch9semaphoreE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 8);
  _Block_object_assign(a1 + 5, *(a2 + 40), 8);
  _Block_object_assign(a1 + 6, *(a2 + 48), 8);
  _Block_object_assign(a1 + 7, *(a2 + 56), 8);
  v4 = *(a2 + 64);
  a1[8] = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r40r48r56r64c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

BOOL KTLNVMSendRegister(uint64_t a1)
{
  v2 = *(a1 + 16);
  v26 = v2;
  v27 = 14;
  if (*(a1 + 8))
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (v3)
  {
    v18 = 0;
    v28 = 0;
    v29 = v2;
    v22 = 0;
    if (ARI_CsiFpRegister_ENC() || (v4 = operator new(0x18uLL), v5 = v22, v4[2] = v28, *(v4 + 2) = v5, *v4 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v4)) || !KTLUTACopyReceiveData(a1, &v18))
    {
      v8 = 0;
      v9 = 14;
      return !v9 && v8;
    }

    v6 = v18;
    (*(*v18 + 16))(v18);
    v7 = ARI_CsiFpRegisterRsp_Extract();
    (*(*v6 + 8))(v6);
    v8 = v7 == 0;
    v9 = v27;
    if (v8)
    {
      goto LABEL_27;
    }

    return !v9 && v8;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 14;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = -1;
  v10 = dispatch_semaphore_create(0);
  v11 = v10;
  object = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  if (ARI_CsiFpRegister_BLK())
  {
    v8 = 0;
    v9 = *(v23 + 6);
    v27 = v9;
    v12 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v13 = dispatch_time(0, 1000000 * *(a1 + 20));
  v14 = dispatch_semaphore_wait(v11, v13);
  if (v14)
  {
    _KTLErrorPrint("KTLNVMSendRegister", "Timeout waiting for response.\n");
  }

  if (v26)
  {
    AriHost::ExitTrx(v26);
  }

  v9 = *(v23 + 6);
  v27 = v9;
  if (v14)
  {
    v8 = 0;
    v12 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v8 = *(v19 + 6) == 0;
  v12 = object;
  if (object)
  {
LABEL_23:
    dispatch_release(v12);
  }

LABEL_24:
  if (v11)
  {
    dispatch_release(v11);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  if (v8)
  {
LABEL_27:
    if (v9)
    {
      if (v9 > 0xE)
      {
        v15 = "Unknown";
      }

      else
      {
        v15 = off_29EE844C8[v9 - 1];
      }

      _KTLErrorPrint("KTLNVMSendRegister", "Error: CsiFpRegisterRsp Failure (%s)\n", v15);
      v9 = v27;
    }
  }

  return !v9 && v8;
}

void sub_297A34F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, ...)
{
  va_start(va, object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    dispatch_release(v16);
  }

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLNVMSendRegister_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiFpRegisterRsp_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

const char *KTLFlashPluginGetResultString(unsigned int a1)
{
  if (a1 > 0xE)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE84450[a1];
  }
}

BOOL KTLNVMSendDeregister(uint64_t a1)
{
  v2 = *(a1 + 16);
  v26 = v2;
  v27 = 14;
  if (*(a1 + 8))
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (v3)
  {
    v18 = 0;
    v28 = 0;
    v29 = v2;
    v22 = 0;
    if (ARI_CsiFpRegister_ENC() || (v4 = operator new(0x18uLL), v5 = v22, v4[2] = v28, *(v4 + 2) = v5, *v4 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v4)) || !KTLUTACopyReceiveData(a1, &v18))
    {
      v8 = 0;
      v9 = 14;
      return !v9 && v8;
    }

    v6 = v18;
    (*(*v18 + 16))(v18);
    v7 = ARI_CsiFpRegisterRsp_Extract();
    (*(*v6 + 8))(v6);
    v8 = v7 == 0;
    v9 = v27;
    if (v8)
    {
      goto LABEL_27;
    }

    return !v9 && v8;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 14;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = -1;
  v10 = dispatch_semaphore_create(0);
  v11 = v10;
  object = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  if (ARI_CsiFpRegister_BLK())
  {
    v8 = 0;
    v9 = *(v23 + 6);
    v27 = v9;
    v12 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v13 = dispatch_time(0, 1000000 * *(a1 + 20));
  v14 = dispatch_semaphore_wait(v11, v13);
  if (v14)
  {
    _KTLErrorPrint("KTLNVMSendDeregister", "Timeout waiting for response.\n");
  }

  if (v26)
  {
    AriHost::ExitTrx(v26);
  }

  v9 = *(v23 + 6);
  v27 = v9;
  if (v14)
  {
    v8 = 0;
    v12 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v8 = *(v19 + 6) == 0;
  v12 = object;
  if (object)
  {
LABEL_23:
    dispatch_release(v12);
  }

LABEL_24:
  if (v11)
  {
    dispatch_release(v11);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  if (v8)
  {
LABEL_27:
    if (v9)
    {
      if (v9 > 0xE)
      {
        v15 = "Unknown";
      }

      else
      {
        v15 = off_29EE844C8[v9 - 1];
      }

      _KTLErrorPrint("KTLNVMSendDeregister", "Error: CsiFpRegisterRsp Failure (%s)\n", v15);
      v9 = v27;
    }
  }

  return !v9 && v8;
}

void sub_297A35348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, ...)
{
  va_start(va, object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    dispatch_release(v16);
  }

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLNVMSendDeregister_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiFpRegisterRsp_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLNVMSendGetStatus(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v47 = v4;
  v48 = 14;
  if (*(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    v33 = 0;
    LODWORD(v29) = v4;
    v49 = 0;
    v37 = 0;
    if (ARI_CsiFpGetStatus_ENC() || (v6 = operator new(0x18uLL), v7 = v37, v6[2] = v49, *(v6 + 2) = v7, *v6 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v6)) || !KTLUTACopyReceiveData(a1, &v33))
    {
      v10 = 0;
      v11 = 14;
      return !v11 && v10;
    }

    v8 = v33;
    (*(*v33 + 16))(v33);
    v9 = ARI_CsiFpGetStatusRsp_Extract();
    (*(*v8 + 8))(v8);
    v10 = v9 == 0;
    v11 = v48;
    if (!v9)
    {
      goto LABEL_27;
    }

    return !v11 && v10;
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x7002000000;
  v40 = __Block_byref_object_copy__14;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42 = v12;
  v43 = v12;
  v44 = v12;
  v45 = v12;
  v41 = __Block_byref_object_dispose__15;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 14;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = -1;
  v13 = dispatch_semaphore_create(0);
  v14 = v13;
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  if (ARI_CsiFpGetStatus_BLK())
  {
    v10 = 0;
    v11 = *(v34 + 6);
    v48 = v11;
    v15 = v38;
    *a2 = *(v38 + 5);
    v16 = *(v15 + 9);
    v17 = *(v15 + 11);
    v18 = *(v15 + 7);
    *(a2 + 64) = v15[13];
    *(a2 + 32) = v16;
    *(a2 + 48) = v17;
    *(a2 + 16) = v18;
    v19 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v20 = dispatch_time(0, 1000000 * *(a1 + 20));
  v21 = dispatch_semaphore_wait(v14, v20);
  if (v21)
  {
    _KTLErrorPrint("KTLNVMSendGetStatus", "Timeout waiting for response.\n");
  }

  if (v47)
  {
    AriHost::ExitTrx(v47);
  }

  v11 = *(v34 + 6);
  v48 = v11;
  v22 = v38;
  *a2 = *(v38 + 5);
  v23 = *(v22 + 9);
  v24 = *(v22 + 11);
  v25 = *(v22 + 7);
  *(a2 + 64) = v22[13];
  *(a2 + 32) = v23;
  *(a2 + 48) = v24;
  *(a2 + 16) = v25;
  if (v21)
  {
    v10 = 0;
    v19 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v10 = *(v30 + 6) == 0;
  v19 = object;
  if (object)
  {
LABEL_23:
    dispatch_release(v19);
  }

LABEL_24:
  if (v14)
  {
    dispatch_release(v14);
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  if (v10)
  {
LABEL_27:
    if (v11)
    {
      if (v11 > 0xE)
      {
        v26 = "Unknown";
      }

      else
      {
        v26 = off_29EE844C8[v11 - 1];
      }

      _KTLErrorPrint("KTLNVMSendGetStatus", "Error: CsiFpGetStatusRsp Failure (%s)\n", v26);
      v11 = v48;
    }
  }

  return !v11 && v10;
}

void sub_297A357BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (object)
  {
    dispatch_release(object);
  }

  if (v26)
  {
    dispatch_release(v26);
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__14(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 56);
  v3 = *(a2 + 72);
  v4 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v4;
  *(a1 + 72) = v3;
  *(a1 + 56) = result;
  return result;
}

uint64_t __KTLNVMSendGetStatus_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiFpGetStatusRsp_Extract();
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLNVMSendSnapshot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  v36 = 0;
  v7 = *(a1 + 16);
  v35 = v7;
  if (*(a1 + 8))
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (v8)
  {
    v27 = 0;
    ++KTLNVMSendSnapshot::seqId;
    LODWORD(v23) = v7;
    v37 = 0;
    v31 = 0;
    if (ARI_CsiFpSnapshot_ENC() || (v9 = operator new(0x18uLL), v10 = v31, v9[2] = v37, *(v9 + 2) = v10, *v9 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v9)) || !KTLUTACopyReceiveData(a1, &v27))
    {
      v14 = 0;
      v13 = 0;
      goto LABEL_32;
    }

    v11 = v27;
    (*(*v27 + 16))(v27);
    v12 = ARI_CsiFpSnapshotRsp_Extract();
    (*(*v11 + 8))(v11);
    v13 = v12 == 0;
    v14 = HIDWORD(v36);
    if (v13)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 14;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = -1431655766;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = -1;
  v15 = dispatch_semaphore_create(0);
  v16 = v15;
  ++KTLNVMSendSnapshot::seqId;
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  if (ARI_CsiFpSnapshot_BLK())
  {
    v13 = 0;
    v14 = *(v32 + 6);
    LODWORD(v36) = *(v28 + 6);
    HIDWORD(v36) = v14;
    v17 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v18 = dispatch_time(0, 1000000 * *(a1 + 20));
  v19 = dispatch_semaphore_wait(v16, v18);
  if (v19)
  {
    _KTLErrorPrint("KTLNVMSendSnapshot", "Timeout waiting for response.\n");
  }

  if (v35)
  {
    AriHost::ExitTrx(v35);
  }

  v14 = *(v32 + 6);
  LODWORD(v36) = *(v28 + 6);
  HIDWORD(v36) = v14;
  if (v19)
  {
    v13 = 0;
    v17 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v13 = *(v24 + 6) == 0;
  v17 = object;
  if (object)
  {
LABEL_23:
    dispatch_release(v17);
  }

LABEL_24:
  if (v16)
  {
    dispatch_release(v16);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  if (v13)
  {
LABEL_27:
    if (v14)
    {
      if (v14 > 0xE)
      {
        v20 = "Unknown";
      }

      else
      {
        v20 = off_29EE844C8[v14 - 1];
      }

      _KTLErrorPrint("KTLNVMSendSnapshot", "Error: CsiFpSnapshotRsp Failure (%s)\n", v20);
      v14 = HIDWORD(v36);
    }
  }

LABEL_32:
  *a5 = v36 != 0;
  return !v14 && v13;
}

void sub_297A35C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_object_t object, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  if (object)
  {
    dispatch_release(object);
  }

  if (v25)
  {
    dispatch_release(v25);
  }

  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLNVMSendSnapshot_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiFpSnapshotRsp_Extract();
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLNVMReadUpdateHeader(uint64_t a1, _OWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v57 = *MEMORY[0x29EDCA608];
  v46 = 0;
  v8 = *(a1 + 16);
  v45 = v8;
  if (*(a1 + 8))
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (v9)
  {
    v41 = 0;
    LODWORD(v37) = v8;
    LODWORD(v33) = 0;
    v47 = 0;
    if (ARI_CsiFpUpdateHeader_ENC() || (v10 = operator new(0x18uLL), v11 = v47, v10[2] = v33, *(v10 + 2) = v11, *v10 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v10)) || !KTLUTACopyReceiveData(a1, &v41))
    {
      v15 = 0;
      v14 = 0;
      *a4 = 0;
      return !v15 && v14;
    }

    v12 = v41;
    (*(*v41 + 16))(v41);
    v13 = ARI_CsiFpUpdateHeaderData_Extract();
    (*(*v12 + 8))(v12);
    v14 = v13 == 0;
    v15 = v46;
    *a4 = 0;
    if (v14)
    {
      goto LABEL_26;
    }

    return !v15 && v14;
  }

  v47 = 0;
  v48 = &v47;
  v49 = 0x7802000000;
  v50 = __Block_byref_object_copy__24;
  v51 = __Block_byref_object_dispose__25;
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v52 = v16;
  v53 = v16;
  v54 = v16;
  v55 = v16;
  v56 = v16;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2000000000;
  v44 = 14;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = -1431655766;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = -1;
  v17 = dispatch_semaphore_create(0);
  v18 = v17;
  object = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  if (ARI_CsiFpUpdateHeader_BLK())
  {
    goto LABEL_16;
  }

  v19 = dispatch_time(0, 1000000 * *(a1 + 20));
  if (dispatch_semaphore_wait(v18, v19))
  {
    _KTLErrorPrint("KTLNVMReadUpdateHeader", "Timeout waiting for response.\n");
LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  v20 = 1;
LABEL_17:
  v15 = *(v42 + 6);
  v46 = v15;
  v21 = v48;
  *a2 = *(v48 + 5);
  v22 = *(v21 + 9);
  v23 = *(v21 + 13);
  v24 = *(v21 + 7);
  a2[3] = *(v21 + 11);
  a2[4] = v23;
  a2[1] = v24;
  a2[2] = v22;
  *a3 = *(v38 + 6);
  *a4 = *(v34 + 6);
  if (!v20)
  {
    v14 = 0;
    v25 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v14 = *(v30 + 6) == 0;
  v25 = object;
  if (object)
  {
LABEL_22:
    dispatch_release(v25);
  }

LABEL_23:
  if (v18)
  {
    dispatch_release(v18);
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);
  if (v14)
  {
LABEL_26:
    if (v15)
    {
      if (v15 > 0xE)
      {
        v26 = "Unknown";
      }

      else
      {
        v26 = off_29EE844C8[v15 - 1];
      }

      _KTLErrorPrint("KTLNVMReadUpdateHeader", "Error: CsiFpUpdateHeaderData Failure (%s)\n", v26);
      v15 = v46;
    }
  }

  return !v15 && v14;
}

void sub_297A36128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, dispatch_object_t object, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  if (object)
  {
    dispatch_release(object);
  }

  if (v32)
  {
    dispatch_release(v32);
  }

  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 216), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__24(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 56);
  v3 = *(a2 + 72);
  v4 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v4;
  *(a1 + 72) = v3;
  *(a1 + 56) = result;
  return result;
}

uint64_t __KTLNVMReadUpdateHeader_block_invoke(void *a1, AriMsg *a2, uint64_t a3)
{
  v3 = a3;
  *(*(a1[4] + 8) + 24) = ARI_CsiFpUpdateHeaderData_Extract();
  BufCtx = AriMsg::GetBufCtx(a2, v3);
  v7 = a1[9];
  *(*(a1[8] + 8) + 24) = BufCtx;
  dispatch_semaphore_signal(v7);
  return *(*(a1[4] + 8) + 24);
}

void __copy_helper_block_e8_32r40r48r56r64r72c25_ZTSN8dispatch9semaphoreE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 8);
  _Block_object_assign(a1 + 5, *(a2 + 40), 8);
  _Block_object_assign(a1 + 6, *(a2 + 48), 8);
  _Block_object_assign(a1 + 7, *(a2 + 56), 8);
  _Block_object_assign(a1 + 8, *(a2 + 64), 8);
  v4 = *(a2 + 72);
  a1[9] = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r40r48r56r64r72c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

BOOL KTLNVMSendUpdateAck(uint64_t a1, BOOL *a2)
{
  v33 = 0;
  v4 = *(a1 + 16);
  v32 = v4;
  if (*(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    v24 = 0;
    LODWORD(v20) = v4;
    v34 = 0;
    v28 = 0;
    if (ARI_CsiFpUpdateAck_ENC() || (v6 = operator new(0x18uLL), v7 = v28, v6[2] = v34, *(v6 + 2) = v7, *v6 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v6)) || !KTLUTACopyReceiveData(a1, &v24))
    {
      v11 = 0;
      v10 = 0;
      goto LABEL_32;
    }

    v8 = v24;
    (*(*v24 + 16))(v24);
    v9 = ARI_CsiFpUpdateAckRsp_Extract();
    (*(*v8 + 8))(v8);
    v10 = v9 == 0;
    v11 = HIDWORD(v33);
    if (v10)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 14;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = -1431655766;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = -1;
  v12 = dispatch_semaphore_create(0);
  v13 = v12;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  if (ARI_CsiFpUpdateAck_BLK())
  {
    v10 = 0;
    v11 = *(v29 + 6);
    LODWORD(v33) = *(v25 + 6);
    HIDWORD(v33) = v11;
    v14 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v15 = dispatch_time(0, 1000000 * *(a1 + 20));
  v16 = dispatch_semaphore_wait(v13, v15);
  if (v16)
  {
    _KTLErrorPrint("KTLNVMSendUpdateAck", "Timeout waiting for response.\n");
  }

  if (v32)
  {
    AriHost::ExitTrx(v32);
  }

  v11 = *(v29 + 6);
  LODWORD(v33) = *(v25 + 6);
  HIDWORD(v33) = v11;
  if (v16)
  {
    v10 = 0;
    v14 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v10 = *(v21 + 6) == 0;
  v14 = object;
  if (object)
  {
LABEL_23:
    dispatch_release(v14);
  }

LABEL_24:
  if (v13)
  {
    dispatch_release(v13);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  if (v10)
  {
LABEL_27:
    if (v11)
    {
      if (v11 > 0xE)
      {
        v17 = "Unknown";
      }

      else
      {
        v17 = off_29EE844C8[v11 - 1];
      }

      _KTLErrorPrint("KTLNVMSendUpdateAck", "Error: CsiFpUpdateAckRsp Failure (%s)\n", v17);
      v11 = HIDWORD(v33);
    }
  }

LABEL_32:
  *a2 = v33 != 0;
  return !v11 && v10;
}

void sub_297A366C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (object)
  {
    dispatch_release(object);
  }

  if (v22)
  {
    dispatch_release(v22);
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLNVMSendUpdateAck_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiFpUpdateAckRsp_Extract();
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

double nvm::ARICommandDriver::ARICommandDriver(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

uint64_t nvm::ARICommandDriver::NVMSnapshot(uint64_t a1, uint64_t a2, AriSdk::ARI_IBINvmSnapshotRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  if (!v6 && *(v5 + 16))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__47;
    v32 = __Block_byref_object_dispose__48;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v20 = v29;
      v21 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v20[5], v21))
      {
        v22 = 1;
        _Block_object_dispose(&v28, 8);
        v23 = object;
        if (!object)
        {
LABEL_29:
          if ((v22 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_30;
        }

LABEL_28:
        dispatch_release(v23);
        goto LABEL_29;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n");
    }

    v22 = 0;
    _Block_object_dispose(&v28, 8);
    v23 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = MEMORY[0];
  v8 = MEMORY[8] - MEMORY[0];
  v9 = *(v5 + 20);
  LODWORD(v28) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", MEMORY[8] - MEMORY[0], v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v6;
  if (!*v6 || ((v11 = v10(v6, v7, v8, &v28, 1, v9, 0), LODWORD(v10) = v28, v28 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
LABEL_15:
    _KTLErrorPrint("perform", "error while trying to get response from device \n");
    goto LABEL_16;
  }

  v28 = 0;
  v13 = KTLUTACopyReceiveData(*(a1 + 16), &v28);
  v14 = v28;
  if (v28)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = operator new(0x50uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_IBINvmSnapshotRspCb_SDK::ARI_IBINvmSnapshotRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBINvmSnapshotRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBINvmSnapshotRspCb_SDK::unpack(v25))
    {
      v18 = 1;
      goto LABEL_19;
    }
  }

  else if (AriSdk::MsgBase::getMergedGMID(v25) == 67600384)
  {
    _KTLErrorPrint("perform", "Received NACK\n", v26, v27, 0, 0);
  }

  else
  {
    AriSdk::MsgBase::getMergedGMID(*a3);
    _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n");
  }

LABEL_16:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v18 = 0;
  *a3 = 0;
LABEL_19:
  if ((v18 & 1) == 0)
  {
    _KTLErrorPrint("NVMSnapshot", "Failed IBINvmSnapshotReq\n");
  }

  return v18;
}

void sub_297A36C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void nvm::ARICommandDriver::~ARICommandDriver(nvm::ARICommandDriver *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__48(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk27ARI_IBINvmSnapshotRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x50uLL);
  AriSdk::ARI_IBINvmSnapshotRspCb_SDK::ARI_IBINvmSnapshotRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t KTLCDSendStartCoredumpCommand(void *a1, _WORD *a2, uint64_t a3, uint64_t a4, void *a5)
{
  __size = 0;
  if (a3 <= 8)
  {
    _KTLDebugPrint("KTLCDSendStartCoredumpCommand", "maxLen( %u) is less than sizeof command(%lu)\n");
    return 0;
  }

  *a2 = a3;
  a2[2] = 16;
  a2[3] = a3 ^ WORD1(a3) ^ 0x10;
  __size_4 = 0;
  _KTLDebugPrint("KTLPSISendEnhancedCommand", "Sending PSI enhanced command: command %d, param %d\n", 16, a3);
  if (!*a1 || !(*a1)(a1, a2, 8, &__size_4, 1, a4, 0) || __size_4 != 8)
  {
    _KTLDebugPrint("KTLCDSendStartCoredumpCommand", "Failed to send PSI\n", v15, v16);
    return 0;
  }

  v10 = a1[1];
  if (!v10 || (v10(a1, a2, a3, &__size, 1, a4, 0) & 1) == 0)
  {
    _KTLDebugPrint("KTLCDSendStartCoredumpCommand", "Failed to read coredump list table\n");
    return 0;
  }

  v11 = __size;
  if (__size < 8 || __size > a3)
  {
    _KTLDebugPrint("KTLCDSendStartCoredumpCommand", "read byte (%u) is less than the dump list size (%lu) or more than maxlen(%u)\n");
    return 0;
  }

  v12 = malloc(__size);
  if (!v12)
  {
    _KTLDebugPrint("KTLCDSendStartCoredumpCommand", "Failed to allocate memory for core dump lists\n");
    return 1;
  }

  v13 = v12;
  memcpy(v12, a2, v11);
  if (!v13[1] || *v13 < 0x10000u)
  {
    _KTLDebugPrint("KTLCDSendStartCoredumpCommand", "Failed after checking of core dump lists:\n");
    _KTLDebugPrint("KTLCDSendStartCoredumpCommand", "Number of entries: %u\n", v13[1]);
    _KTLDebugPrint("KTLCDSendStartCoredumpCommand", "Version: %u\n", *v13);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Read Buffer as CoreDump Header List:", 1, a2, __size);
    }

    free(v13);
    return 0;
  }

  *a5 = v13;
  return 1;
}

void *KTLCDProcessCoredumpEntry(void *a1, void *a2, uint64_t a3, unsigned int *a4, size_t __size, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  if (!__size)
  {
    _KTLDebugPrint("KTLCDProcessCoredumpEntry", "Chunk size cannot be zero\n", a3, a4, __size, a6, a7, a8);
    return 0;
  }

  v11 = __size;
  v13 = a3;
  v32 = 0;
  v33 = 0xAAAA0011AAAAAAAALL;
  result = malloc(__size);
  if (!result)
  {
    return result;
  }

  v17 = result;
  LODWORD(v33) = v13;
  HIWORD(v33) = v13 ^ HIWORD(v13) ^ 0x11;
  if (!*a1)
  {
    goto LABEL_31;
  }

  v18 = (*a1)(a1, &v33, 8, &v32 + 4, 1, a8, 0);
  v19 = 0;
  if (!v18)
  {
    goto LABEL_32;
  }

  v31 = a7;
  if (HIDWORD(v32) != 8)
  {
    goto LABEL_32;
  }

  v20 = *a4;
  a6[1] = *a4;
  v21 = a6[2];
  if (!v21)
  {
    v21 = 1;
    a6[2] = 1;
  }

  v22 = v20 / v21;
  if (v22 < v11)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22 / v11;
  }

  if (v20)
  {
    v30 = v23;
    while (1)
    {
      v24 = v11 >= v20 ? v20 : v11;
      v25 = a1[1];
      if (!v25)
      {
        break;
      }

      v26 = v25(a1, v17, v24, &v32, 0, a8, 0);
      v27 = v32;
      if (v26)
      {
        v28 = v32 == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        goto LABEL_30;
      }

      v20 -= v32;
      if (!--v23)
      {
        *a6 = *a4 - v20;
        (*(v31 + 16))(v31, a6, a4);
        v23 = v30;
      }

      if (!*a2)
      {
        goto LABEL_31;
      }

      v19 = (*a2)(a2, v17, v32, &v32 + 4, 1, a8, 0);
      if (!v20 || (v19 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v27 = v32;
LABEL_30:
    _KTLDebugPrint("KTLCDProcessCoredumpEntry", "Read failed. success = %u, read %u of %u\n", 0, v27, v24);
LABEL_31:
    v19 = 0;
    goto LABEL_32;
  }

  v19 = 1;
LABEL_32:
  v29 = v19;
  free(v17);
  return v29;
}

uint64_t KTLCDSendEndCoredumpCommand(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  if (!a2 || a3 <= 8)
  {
    _KTLDebugPrint("KTLCDSendEndCoredumpCommand", "maxLen( %u) is less than sizeof command(%lu)\n");
    return 0;
  }

  *a2 = a3;
  *(a2 + 4) = 18;
  *(a2 + 6) = a3 ^ WORD1(a3) ^ 0x12;
  v14 = 0;
  _KTLDebugPrint("KTLPSISendEnhancedCommand", "Sending PSI enhanced command: command %d, param %d\n", 18, a3);
  if (!*a1 || !(*a1)(a1, a2, 8, &v14, 1, a4, 0) || v14 != 8)
  {
    _KTLDebugPrint("KTLCDSendEndCoredumpCommand", "Failed to send PSI command\n");
    return 0;
  }

  v8 = a1[1];
  if (!v8 || (v9 = v8(a1, a2, a3, &v13, 1, a4, 0), result = 1, (v9 & 1) == 0))
  {
    _KTLDebugPrint("KTLCDSendEndCoredumpCommand", "Failed to read response\n", v11, v12);
    return 0;
  }

  return result;
}

BOOL KTLGetAntennaPort(uint64_t a1, int *a2)
{
  if (!a1 || !a2)
  {
    _KTLErrorPrint("KTLGetAntennaPort", "These parameters cannot be NULL: opt: %p, antennaPort: %p\n", a1, a2);
    return 0;
  }

  v40 = 0x7FFFFFFF;
  v41 = -1;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38[2] = v4;
  v38[3] = v4;
  v38[0] = v4;
  v38[1] = v4;
  AriSdk::ARI_CsiIceGetTxAntennaReq_SDK::ARI_CsiIceGetTxAntennaReq_SDK(v38);
  v36 = 0;
  v37 = 0;
  AriSdk::MsgBase::getRawBytes();
  v5 = *(a1 + 8);
  if (!v5 && *(a1 + 16))
  {
    v19 = dispatch_semaphore_create(0);
    v20 = v19;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2000000000;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2000000000;
    v31 = -1;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2000000000;
    v27 = 0x7FFFFFFF;
    object = v19;
    if (v19)
    {
      dispatch_retain(v19);
    }

    if (AriHost::Send())
    {
      _KTLErrorPrint("KTLGetAntennaPort", "Failed to send the message of CsiIceGetTxAntennaReq.\n");
    }

    else
    {
      v21 = dispatch_time(0, 1000000 * *(a1 + 20));
      if (dispatch_semaphore_wait(v20, v21))
      {
        _KTLErrorPrint("KTLGetAntennaPort", "Timeout waiting for response.\n");
      }

      else if (*(v33 + 24) == 1)
      {
        v14 = *(v29 + 6);
        v15 = *(v25 + 6);
        v40 = v15;
        v41 = v14;
        v13 = 1;
        v22 = object;
        if (!object)
        {
LABEL_33:
          _Block_object_dispose(&v24, 8);
          _Block_object_dispose(&v28, 8);
          _Block_object_dispose(&v32, 8);
          if (v20)
          {
            dispatch_release(v20);
          }

          goto LABEL_16;
        }

LABEL_32:
        dispatch_release(v22);
        goto LABEL_33;
      }
    }

    v13 = 0;
    v14 = -1;
    v15 = 0x7FFFFFFF;
    v22 = object;
    if (!object)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v7 = *v36;
  v6 = v36[1];
  v8 = v6 - *v36;
  v9 = *(a1 + 20);
  LODWORD(v32) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v6 - v7, v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v5;
  if (!*v5 || ((v11 = v10(v5, v7, v8, &v32, 1, v9, 0), LODWORD(v10) = v32, v32 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
    goto LABEL_15;
  }

  v32 = 0;
  if (!KTLUTACopyReceiveData(a1, &v32))
  {
LABEL_15:
    v13 = 0;
    v14 = -1;
    v15 = 0x7FFFFFFF;
    goto LABEL_16;
  }

  v13 = KTLGetAntennaPortParseAndRelease(v32, &v41, &v40);
  v15 = v40;
  v14 = v41;
LABEL_16:
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  *a2 = v15;
  v17 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  MEMORY[0x29C279E00](v38);
  return v16;
}

void sub_297A3778C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  if (v26)
  {
    dispatch_release(v26);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](v27 - 160);
    MEMORY[0x29C279E00](v27 - 144);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](v27 - 160);
  MEMORY[0x29C279E00](v27 - 144);
  _Unwind_Resume(a1);
}

uint64_t ___Z17KTLGetAntennaPortP10KTLOptionsP14KTLAntennaPort_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = operator new(0x30uLL);
  v7 = operator new[](a3);
  v6[2] = a3;
  *(v6 + 2) = v7;
  *v6 = &unk_2A1E62D20;
  v6[6] = a3;
  *(v6 + 4) = v7;
  *(v6 + 5) = 0;
  memcpy(v7, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = KTLGetAntennaPortParseAndRelease(v6, (*(*(a1 + 40) + 8) + 24), (*(*(a1 + 48) + 8) + 24));
  dispatch_semaphore_signal(*(a1 + 56));
  return 0;
}

BOOL KTLGetAntennaPortParseAndRelease(unsigned int *a1, _DWORD *a2, _DWORD *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[3] = v6;
  v12 = v6;
  v11[1] = v6;
  v11[2] = v6;
  v11[0] = v6;
  v7 = (*(*a1 + 16))(a1);
  AriSdk::ARI_CsiIceGetTxAntennaRspCb_SDK::ARI_CsiIceGetTxAntennaRspCb_SDK(v11, v7);
  if (AriSdk::MsgBase::getMergedGMID(v11) == 67600384)
  {
    _KTLErrorPrint("KTLGetAntennaPortParseAndRelease", "NACK Received\n");
  }

  v8 = AriSdk::ARI_CsiIceGetTxAntennaRspCb_SDK::unpack(v11);
  if (v8)
  {
    _KTLErrorPrint("KTLGetAntennaPortParseAndRelease", "Failed to unpack response.\n");
  }

  else
  {
    v9 = *(&v12 + 1);
    *a2 = *v12;
    *a3 = *v9;
  }

  (*(*a1 + 8))(a1);
  MEMORY[0x29C279FA0](v11);
  return v8 == 0;
}