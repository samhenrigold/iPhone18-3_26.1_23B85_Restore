uint64_t KTLSetAntennaPort(uint64_t a1, int a2)
{
  v2 = a1;
  if (!a1)
  {
    _KTLErrorPrint("KTLSetAntennaPort", "These parameters cannot be NULL: opt: %p\n", 0);
    return v2;
  }

  v34 = -1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32[3] = v4;
  v33 = v4;
  v32[1] = v4;
  v32[2] = v4;
  v32[0] = v4;
  AriSdk::ARI_CsiIceSetTxAntennaReq_SDK::ARI_CsiIceSetTxAntennaReq_SDK(v32);
  v5 = operator new(4uLL);
  *v5 = a2;
  v6 = v33;
  *&v33 = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v30 = 0;
  v31 = 0;
  AriSdk::MsgBase::getRawBytes();
  v7 = *(v2 + 8);
  if (!v7 && *(v2 + 16))
  {
    v17 = dispatch_semaphore_create(0);
    v18 = v17;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2000000000;
    v29 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v25 = -1;
    object = v17;
    if (v17)
    {
      dispatch_retain(v17);
    }

    if (AriHost::Send())
    {
      _KTLErrorPrint("KTLSetAntennaPort", "Failed to send the message of CsiIceSetTxAntennaReq.\n");
    }

    else
    {
      v19 = dispatch_time(0, 1000000 * *(v2 + 20));
      if (dispatch_semaphore_wait(v18, v19))
      {
        _KTLErrorPrint("KTLSetAntennaPort", "Timeout waiting for response.\n");
      }

      else if (*(v27 + 24) == 1)
      {
        v14 = *(v23 + 6);
        v34 = v14;
        LODWORD(v2) = 1;
        v20 = object;
        if (!object)
        {
LABEL_34:
          _Block_object_dispose(&v22, 8);
          _Block_object_dispose(&v26, 8);
          if (v18)
          {
            dispatch_release(v18);
          }

          goto LABEL_17;
        }

LABEL_33:
        dispatch_release(v20);
        goto LABEL_34;
      }
    }

    LODWORD(v2) = 0;
    v14 = -1;
    v20 = object;
    if (!object)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v8 = *v30;
  v9 = v30[1] - *v30;
  v10 = *(v2 + 20);
  LODWORD(v26) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v9, v10);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v8, v9);
  }

  v11 = *v7;
  if (!*v7 || ((v12 = v11(v7, v8, v9, &v26, 1, v10, 0), LODWORD(v11) = v26, v26 == v9) ? (v13 = v12) : (v13 = 0), (v13 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v9, v11);
    goto LABEL_16;
  }

  v26 = 0;
  if (!KTLUTACopyReceiveData(v2, &v26))
  {
LABEL_16:
    LODWORD(v2) = 0;
    v14 = -1;
    goto LABEL_17;
  }

  LODWORD(v2) = KTLSetAntennaPortParseAndRelease(v26, &v34);
  v14 = v34;
LABEL_17:
  if (v14)
  {
    v2 = 0;
  }

  else
  {
    v2 = v2;
  }

  v15 = v31;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  MEMORY[0x29C279E40](v32);
  return v2;
}

void sub_297A37D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  if (v26)
  {
    dispatch_release(v26);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
    MEMORY[0x29C279E40](v27 - 144);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x29C279E40](v27 - 144);
  _Unwind_Resume(a1);
}

uint64_t ___Z17KTLSetAntennaPortP10KTLOptions14KTLAntennaPort_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
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
  *(*(*(a1 + 32) + 8) + 24) = KTLSetAntennaPortParseAndRelease(v6, (*(*(a1 + 40) + 8) + 24));
  dispatch_semaphore_signal(*(a1 + 48));
  return 0;
}

BOOL KTLSetAntennaPortParseAndRelease(ktl::KTLPacket *a1, unsigned int *a2)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[2] = v4;
  v8[3] = v4;
  v8[0] = v4;
  v8[1] = v4;
  v5 = (*(*a1 + 16))(a1);
  AriSdk::ARI_CsiIceSetTxAntennaRspCb_SDK::ARI_CsiIceSetTxAntennaRspCb_SDK(v8, v5);
  if (AriSdk::MsgBase::getMergedGMID(v8) == 67600384)
  {
    _KTLErrorPrint("KTLSetAntennaPortParseAndRelease", "NACK Received\n");
  }

  v6 = AriSdk::ARI_CsiIceSetTxAntennaRspCb_SDK::unpack(v8);
  if (v6)
  {
    _KTLErrorPrint("KTLSetAntennaPortParseAndRelease", "Failed to unpack response.\n");
  }

  else
  {
    *a2 = *v9;
  }

  (*(*a1 + 8))(a1);
  MEMORY[0x29C279FF0](v8);
  return v6 == 0;
}

BOOL KTLGetRxDiversity(uint64_t a1, uint64_t a2, int *a3)
{
  if (!a1 || !a3)
  {
    _KTLErrorPrint("KTLGetRxDiversity", "These parameters cannot be NULL: opt: %p, rxDiversity: %p\n", a1, a3);
    return 0;
  }

  v5 = a2;
  v6 = *(a1 + 16);
  v39 = -1;
  v40 = v6;
  v37 = 0x7FFFFFFF;
  v38 = a2;
  if (*(a1 + 8))
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2000000000;
    v36 = -1;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2000000000;
    v32 = -1;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2000000000;
    v28 = a2;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v24 = 0x7FFFFFFF;
    v14 = dispatch_semaphore_create(0);
    v15 = v14;
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    if (ARI_CsiIceGetRxDiversityReq_BLK())
    {
      _KTLErrorPrint("KTLGetRxDiversity", "Failed to send request.\n");
      v16 = 0;
      v12 = -1;
      goto LABEL_25;
    }

    v17 = dispatch_time(0, 1000000 * *(a1 + 20));
    if (dispatch_semaphore_wait(v15, v17))
    {
      _KTLErrorPrint("KTLGetRxDiversity", "Timeout waiting for response.\n");
      v16 = 0;
      v12 = -1;
      v18 = v40;
      if (!v40)
      {
        goto LABEL_25;
      }
    }

    else if (*(v34 + 6))
    {
      v16 = 0;
      v12 = -1;
      v18 = v40;
      if (!v40)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v12 = *(v30 + 6);
      v19 = *(v26 + 6);
      v37 = *(v22 + 6);
      v38 = v19;
      v16 = 1;
      v18 = v40;
      if (!v40)
      {
LABEL_25:
        if (object)
        {
          dispatch_release(object);
        }

        if (v15)
        {
          dispatch_release(v15);
        }

        _Block_object_dispose(&v21, 8);
        _Block_object_dispose(&v25, 8);
        _Block_object_dispose(&v29, 8);
        _Block_object_dispose(&v33, 8);
        result = 0;
        if (!v16)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }
    }

    AriHost::ExitTrx(v18);
    goto LABEL_25;
  }

  v29 = 0;
  LODWORD(v25) = v6;
  LODWORD(v21) = 0;
  v33 = 0;
  if (!ARI_CsiIceGetRxDiversityReq_ENC() && (v8 = operator new(0x18uLL), v9 = v33, v8[2] = v21, *(v8 + 2) = v9, *v8 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v8)) && KTLUTACopyReceiveData(a1, &v29))
  {
    v10 = v29;
    (*(*v29 + 16))(v29);
    v11 = ARI_CsiIceGetRxDiversityRspCb_Extract();
    (*(*v10 + 8))(v10);
    v12 = v39;
    result = 0;
    if (!v11)
    {
LABEL_30:
      if (!v12)
      {
        result = v38 == v5;
      }
    }
  }

  else
  {
    result = 0;
  }

LABEL_32:
  *a3 = v37;
  return result;
}

void sub_297A3838C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, dispatch_object_t object, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (object)
  {
    dispatch_release(object);
  }

  if (v28)
  {
    dispatch_release(v28);
  }

  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z17KTLGetRxDiversityP10KTLOptions13KTLAntennaRATP14KTLRxDiversity_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceGetRxDiversityRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 64));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLSetRxDiversity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    _KTLErrorPrint("KTLSetRxDiversity", "These parameters cannot be NULL: opt: %p\n", 0);
    return 0;
  }

  v4 = *(a1 + 16);
  v26 = -1;
  v27 = v4;
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
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v25 = -1;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = -1;
    v13 = dispatch_semaphore_create(0);
    v14 = v13;
    object = v13;
    if (v13)
    {
      dispatch_retain(v13);
    }

    if (ARI_CsiIceRxDiversityReq_BLK())
    {
      _KTLErrorPrint("KTLSetRxDiversity", "Failed to send request.\n");
      v10 = 0;
      v11 = -1;
LABEL_23:
      if (object)
      {
        dispatch_release(object);
      }

      if (v14)
      {
        dispatch_release(v14);
      }

      _Block_object_dispose(&v18, 8);
      _Block_object_dispose(&v22, 8);
      return !v11 && v10;
    }

    v15 = dispatch_time(0, 1000000 * *(a1 + 20));
    if (dispatch_semaphore_wait(v14, v15))
    {
      _KTLErrorPrint("KTLSetRxDiversity", "Timeout waiting for response.\n");
      v10 = 0;
      v11 = -1;
      v16 = v27;
      if (!v27)
      {
        goto LABEL_23;
      }
    }

    else if (*(v23 + 6))
    {
      v10 = 0;
      v11 = -1;
      v16 = v27;
      if (!v27)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = *(v19 + 6);
      v10 = 1;
      v16 = v27;
      if (!v27)
      {
        goto LABEL_23;
      }
    }

    AriHost::ExitTrx(v16);
    goto LABEL_23;
  }

  v18 = 0;
  v28 = 0;
  v29 = v4;
  v22 = 0;
  if (!ARI_CsiIceRxDiversityReq_ENC() && (v6 = operator new(0x18uLL), v7 = v22, v6[2] = v28, *(v6 + 2) = v7, *v6 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v6)) && KTLUTACopyReceiveData(a1, &v18))
  {
    v8 = v18;
    (*(*v18 + 16))(v18);
    v9 = ARI_CsiIceRxDiversityRspCb_Extract();
    (*(*v8 + 8))(v8);
    v10 = v9 == 0;
    v11 = v26;
  }

  else
  {
    v10 = 0;
    v11 = -1;
  }

  return !v11 && v10;
}

void sub_297A38770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
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

uint64_t ___Z17KTLSetRxDiversityP10KTLOptions13KTLAntennaRAT14KTLRxDiversity_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceRxDiversityRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t KTLRFFilePushReq(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  if (!a1 || !a4)
  {
    _KTLErrorPrint("KTLRFFilePushReq", "Parameters are not correct: opt: %p, filerID: %p\n", a1, a4);
    v25 = 0;
    return v25 & 1;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48[3] = v8;
  v49 = v8;
  v48[1] = v8;
  v48[2] = v8;
  v48[0] = v8;
  AriSdk::ARI_CsiIceRFFilerWriteReq_SDK::ARI_CsiIceRFFilerWriteReq_SDK(v48);
  v9 = operator new(4uLL);
  *v9 = a2;
  v10 = v49;
  *&v49 = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = operator new(4uLL);
  *v11 = a3;
  v12 = *(&v49 + 1);
  *(&v49 + 1) = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v46 = 0;
  v47 = 0;
  AriSdk::MsgBase::getRawBytes();
  if (MEMORY[0] == MEMORY[8])
  {
    _KTLErrorPrint("KTLRFFilePushReq", "Failed to setup CsiIceRFFilerWriteReq\n");
    v25 = 0;
LABEL_47:
    MEMORY[0x29C279E20](v48);
    return v25 & 1;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2000000000;
  v45 = 0;
  v13 = *(a1 + 8);
  if (!v13 && *(a1 + 16))
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2000000000;
    v41 = 0;
    v26 = dispatch_semaphore_create(0);
    v27 = v26;
    v34[1] = MEMORY[0x29EDCA5F8];
    v34[2] = 1174405120;
    v34[3] = ___Z16KTLRFFilePushReqP10KTLOptionsjjPi_block_invoke;
    v34[4] = &__block_descriptor_tmp_21;
    v36 = a2;
    v37 = a3;
    v34[5] = &v42;
    v34[6] = &v38;
    object = v26;
    if (v26)
    {
      dispatch_retain(v26);
    }

    started = AriHost::StartStream();
    v29 = dispatch_time(0, 1000000 * *(a1 + 20));
    if (dispatch_semaphore_wait(v27, v29))
    {
      _KTLErrorPrint("KTLRFFilePushReq", "Timeout waiting for response.\n");
      *(v43 + 24) = 0;
    }

    else
    {
      v31 = v43[3] & (started == 0);
      *(v43 + 24) = v31;
      if (v31 == 1)
      {
        *a4 = *(v39 + 6);
      }
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v27)
    {
      dispatch_release(v27);
    }

    _Block_object_dispose(&v38, 8);
LABEL_44:
    v25 = *(v43 + 24);
    _Block_object_dispose(&v42, 8);
    v32 = v47;
    if (v47)
    {
      if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v32->__on_zero_shared)(v32);
        std::__shared_weak_count::__release_weak(v32);
      }
    }

    goto LABEL_47;
  }

  v15 = *v46;
  v14 = v46[1];
  v16 = v14 - *v46;
  v17 = *(a1 + 20);
  LODWORD(v38) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v14 - v15, v17);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v15, v16);
  }

  v18 = *v13;
  if (*v13)
  {
    v19 = v18(v13, v15, v16, &v38, 1, v17, 0);
    LODWORD(v18) = v38;
    v20 = v38 == v16 ? v19 : 0;
    if (v20)
    {
      *(v43 + 24) = 1;
      v34[0] = 0;
      v21 = KTLUTACopyReceiveData(a1, v34);
      v22 = v34[0];
      *(v43 + 24) = v21;
      v38 = 0xAAAAAAAAAAAAAAAALL;
      v39 = 0xAAAAAAAAAAAAAAAALL;
      v23 = (*(*v22 + 16))(v22);
      getResponse<AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK>(&v38, v23, v22[2]);
      v24 = v38;
      if (*(v43 + 24) == 1)
      {
        if (v38)
        {
          if (**(v38 + 8) != a2)
          {
            *(v43 + 24) = 0;
LABEL_33:
            _KTLErrorPrint("KTLRFFilePushReq", "Response in error. response->instance_t1: %d(expecting nInstance: %d), response->result_t2: %d(expecting %d), \n");
            goto LABEL_34;
          }

          **(v38 + 9) = a3;
          *(v43 + 24) = a3 != 0;
          if (!a3)
          {
            goto LABEL_33;
          }

LABEL_34:
          *a4 = 0;
          v30 = v39;
          if (v39 && !atomic_fetch_add(v39 + 1, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v30->__on_zero_shared)(v30);
            std::__shared_weak_count::__release_weak(v30);
          }

          goto LABEL_44;
        }

        *(v43 + 24) = 0;
      }

      else
      {
        *(v43 + 24) = 0;
        if (v24)
        {
          goto LABEL_33;
        }
      }

      _KTLErrorPrint("KTLRFFilePushReq", "Failed to get response!\n");
      goto LABEL_34;
    }
  }

  result = _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v18);
  __break(1u);
  return result;
}

void sub_297A38CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, dispatch_object_t object, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  if (object)
  {
    dispatch_release(object);
  }

  if (v30)
  {
    dispatch_release(v30);
  }

  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x29C279E20](v31 - 160);
  _Unwind_Resume(a1);
}

void sub_297A38D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x29C279E20](v30 - 160);
  _Unwind_Resume(a1);
}

uint64_t ___Z16KTLRFFilePushReqP10KTLOptionsjjPi_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = operator new(0x30uLL);
  v7 = operator new[](v3);
  v6[2] = v3;
  *(v6 + 2) = v7;
  *v6 = &unk_2A1E62D20;
  v6[6] = v3;
  *(v6 + 4) = v7;
  *(v6 + 5) = 0;
  memcpy(v7, a2, v3);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    getResponse<AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK>(&v13, v7, v3);
    v8 = v13;
    v9 = v13 && **(v13 + 8) == *(a1 + 56) && **(v13 + 9) == *(a1 + 60);
    *(*(*(a1 + 32) + 8) + 24) = v9;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 40) + 8) + 24) = AriMsg::GetBufCtx(a2, v3);
      _KTLDebugPrint("KTLRFFilePushReq_block_invoke", "Filer ID: %d (0x%x)\n", *(*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 40) + 8) + 24));
      v10 = 0;
      v11 = v14;
      if (!v14)
      {
        goto LABEL_16;
      }
    }

    else if (v8)
    {
      _KTLErrorPrint("KTLRFFilePushReq_block_invoke", "Response in error. response->instance_t1: %d(expecting nInstance: %d), response->result_t2: %d(expecting %d), \n", **(v8 + 8), *(a1 + 56), **(v8 + 9), *(a1 + 60));
      v10 = 0xFFFFFFFFLL;
      v11 = v14;
      if (!v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      _KTLErrorPrint("KTLRFFilePushReq_block_invoke", "Failed to get response!\n");
      v10 = 0xFFFFFFFFLL;
      v11 = v14;
      if (!v14)
      {
        goto LABEL_16;
      }
    }

    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  else
  {
    _KTLErrorPrint("KTLRFFilePushReq_block_invoke", "Failed to allocate packet memory\n");
    v10 = 0xFFFFFFFFLL;
  }

LABEL_16:
  dispatch_semaphore_signal(*(a1 + 48));
  return v10;
}

void sub_297A38FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void getResponse<AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK>(AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK **a1, const unsigned __int8 *a2, unsigned int a3)
{
  if (a2)
  {
    v5 = operator new(0x68uLL);
    v5->__shared_owners_ = 0;
    v5->__shared_weak_owners_ = 0;
    v5->__vftable = &unk_2A1E62D60;
    v6 = &v5[1];
    AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK::ARI_CsiIceRFFilerWriteRspCb_SDK(&v5[1], a2);
    if (AriSdk::MsgBase::getMergedGMID(&v5[1]) == 67600384 || AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK::unpack(v6))
    {
      *a1 = 0;
      a1[1] = 0;
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);

        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      *a1 = v6;
      a1[1] = v5;
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

void sub_297A39134(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void ktl::KTLReceivePacket::~KTLReceivePacket(void **this)
{
  *this = &unk_2A1E62D20;
  if (this[2])
  {
    operator delete[](this[2]);
  }
}

{
  *this = &unk_2A1E62D20;
  if (this[2])
  {
    v2 = this;
    operator delete[](this[2]);
    this = v2;
    v1 = vars8;
  }

  operator delete(this);
}

void std::__shared_ptr_emplace<AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E62D60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

BOOL KTLSecGetFusingState(uint64_t a1, int *a2)
{
  v35 = 0;
  v36 = -1;
  v2 = *(a1 + 16);
  v34 = v2;
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = v2 == 0;
  }

  if (!v5)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2000000000;
    v33 = -1;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2000000000;
    v29 = -1431655766;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v25 = -1;
    v14 = dispatch_semaphore_create(0);
    v15 = v14;
    v20 = MEMORY[0x29EDCA5F8];
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    if (ARI_CsiSecGetFusingStateReq_BLK())
    {
      v10 = 0;
      v12 = *(v31 + 6);
      v11 = *(v27 + 6);
      v16 = object;
      if (!object)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v17 = dispatch_time(0, 1000000 * *(a1 + 20));
      v18 = dispatch_semaphore_wait(v15, v17);
      if (v18)
      {
        _KTLErrorPrint("KTLSecGetFusingState", "Timeout waiting for response.\n", v20, 1174405120, __KTLSecGetFusingState_block_invoke, &__block_descriptor_tmp_10, &v22, &v30, &v26);
      }

      if (v34)
      {
        AriHost::ExitTrx(v34);
      }

      v12 = *(v31 + 6);
      v11 = *(v27 + 6);
      if (v18)
      {
        v10 = 0;
        v16 = object;
        if (!object)
        {
LABEL_25:
          if (v15)
          {
            dispatch_release(v15);
          }

          _Block_object_dispose(&v22, 8);
          _Block_object_dispose(&v26, 8);
          _Block_object_dispose(&v30, 8);
          goto LABEL_28;
        }
      }

      else
      {
        v10 = *(v23 + 6) == 0;
        v16 = object;
        if (!object)
        {
          goto LABEL_25;
        }
      }
    }

    dispatch_release(v16);
    goto LABEL_25;
  }

  v26 = 0;
  LODWORD(v22) = v2;
  v37 = 0;
  v30 = 0;
  if (!ARI_CsiSecGetFusingStateReq_ENC() && (v6 = operator new(0x18uLL), v7 = v30, v6[2] = v37, *(v6 + 2) = v7, *v6 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v6)) && KTLUTACopyReceiveData(a1, &v26))
  {
    v8 = v26;
    (*(*v26 + 16))(v26);
    v9 = ARI_CsiSecGetFusingStateRspCb_Extract();
    (*(*v8 + 8))(v8);
    v10 = v9 == 0;
    v11 = v35;
    v12 = v36;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v12 = -1;
  }

LABEL_28:
  if (v11)
  {
    v19 = 3;
  }

  else
  {
    v19 = 1;
  }

  *a2 = v19;
  return !v12 && v10;
}

void sub_297A395D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
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
  _Block_object_dispose((v21 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLSecGetFusingState_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiSecGetFusingStateRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t KTLSecGetRandomNum(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v11[0] = 0;
  v11[1] = 0;
  v11[2] = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0xAAAAAAAA3F800000;
  _KTLDebugFlags = 15;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[2] = v3;
  v10[3] = v3;
  v10[0] = v3;
  v10[1] = v3;
  AriSdk::ARI_CsiSecGetRandomNumReq_SDK::ARI_CsiSecGetRandomNumReq_SDK(v10);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  RandomNum = security::ARICommandDriver::GetRandomNum(v11, v10, &v9);
  if ((RandomNum & 1) == 0)
  {
    _KTLErrorPrint("KTLSecGetRandomNum", "Failed GetRandomNum ARI command\n");
  }

  v5 = *(v9 + 8);
  v6 = *(v5 + 32);
  v7 = *(v5 + 16);
  *a2 = *v5;
  *(a2 + 16) = v7;
  *(a2 + 32) = v6;
  MEMORY[0x29C279E90](v10);
  return RandomNum;
}

double security::ARICommandDriver::ARICommandDriver(uint64_t a1, uint64_t a2)
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

uint64_t security::ARICommandDriver::GetRandomNum(security::ARICommandDriver *this, AriSdk::ARI_CsiSecGetRandomNumReq_SDK *a2, AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v5 = *(this + 2);
  v6 = *(v5 + 8);
  if (!v6 && *(v5 + 16))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__23;
    v32 = __Block_byref_object_dispose__24;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v20 = v29;
      v21 = dispatch_time(0, 1000000 * *(*(this + 2) + 20));
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
  v13 = KTLUTACopyReceiveData(*(this + 2), &v28);
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
  AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK::ARI_CsiSecGetRandomNumRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK::unpack(v25))
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
    _KTLErrorPrint("GetRandomNum", "Failed CsiSecGetRandomNumReq\n");
  }

  return v18;
}

void sub_297A39C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
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

void security::ARICommandDriver::~ARICommandDriver(security::ARICommandDriver *this)
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

uint64_t KTLSecGetSNUM(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 16);
  v25 = v2;
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = v2 == 0;
  }

  if (!v5)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x4002000000;
    v31 = __Block_byref_object_copy__5;
    v32 = __Block_byref_object_dispose__5;
    memset(v33, 170, 24);
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v24 = -1;
    v7 = dispatch_semaphore_create(0);
    v8 = v7;
    v19 = MEMORY[0x29EDCA5F8];
    object = v7;
    if (v7)
    {
      dispatch_retain(v7);
    }

    if (ARI_CsiSecGetSNUMReq_BLK())
    {
      v9 = 0;
      v10 = v29[7];
      *a2 = *(v29 + 5);
      *(a2 + 16) = v10;
      v11 = object;
      if (!object)
      {
LABEL_14:
        if (v8)
        {
          dispatch_release(v8);
        }

        _Block_object_dispose(&v21, 8);
        _Block_object_dispose(&v28, 8);
        return v9;
      }
    }

    else
    {
      v16 = dispatch_time(0, 1000000 * *(a1 + 20));
      v17 = dispatch_semaphore_wait(v8, v16);
      if (v17)
      {
        _KTLErrorPrint("KTLSecGetSNUM", "Timeout waiting for response.\n", v19, 1174405120, __KTLSecGetSNUM_block_invoke, &__block_descriptor_tmp_3_0, &v21, &v28);
      }

      if (v25)
      {
        AriHost::ExitTrx(v25);
      }

      v18 = v29[7];
      *a2 = *(v29 + 5);
      *(a2 + 16) = v18;
      if (v17)
      {
        v9 = 0;
        v11 = object;
        if (!object)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v9 = *(v22 + 6) == 0;
        v11 = object;
        if (!object)
        {
          goto LABEL_14;
        }
      }
    }

    dispatch_release(v11);
    goto LABEL_14;
  }

  v21 = 0;
  v26 = 0;
  v27 = v2;
  v28 = 0;
  if (ARI_CsiSecGetSNUMReq_ENC())
  {
    return 0;
  }

  v12 = operator new(0x18uLL);
  v13 = v28;
  v12[2] = v26;
  *(v12 + 2) = v13;
  *v12 = &unk_2A1E625B0;
  result = KTLUTASendAndReleaseData(a1, v12);
  if (result)
  {
    result = KTLUTACopyReceiveData(a1, &v21);
    if (result)
    {
      v14 = v21;
      (*(*v21 + 16))(v21);
      v15 = ARI_CsiSecGetSNUMRspCb_Extract();
      (*(*v14 + 8))(v14);
      return v15 == 0;
    }
  }

  return result;
}

void sub_297A3A064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
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

  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t __KTLSecGetSNUM_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiSecGetSNUMRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLSecGetChipId(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 16);
  v26 = v4;
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
    v18 = 0;
    v27 = 0;
    v28 = v4;
    v22 = 0;
    if (ARI_CsiSecGetChipIdReq_ENC())
    {
      return 0;
    }

    v6 = operator new(0x18uLL);
    v7 = v22;
    v6[2] = v27;
    *(v6 + 2) = v7;
    *v6 = &unk_2A1E625B0;
    if (!KTLUTASendAndReleaseData(a1, v6) || !KTLUTACopyReceiveData(a1, &v18))
    {
      return 0;
    }

    v8 = v18;
    (*(*v18 + 16))(v18);
    v9 = ARI_CsiSecGetChipIdRspCb_Extract();
    (*(*v8 + 8))(v8);
    return v9 == 0;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = -1431655766;
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

  if (!ARI_CsiSecGetChipIdReq_BLK())
  {
    v15 = dispatch_time(0, 1000000 * *(a1 + 20));
    v16 = dispatch_semaphore_wait(v12, v15);
    if (v16)
    {
      _KTLErrorPrint("KTLSecGetChipId", "Timeout waiting for response.\n");
    }

    if (v26)
    {
      AriHost::ExitTrx(v26);
    }

    *a2 = *(v23 + 6);
    if (v16)
    {
      v10 = 0;
      v13 = object;
      if (!object)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = *(v19 + 6) == 0;
      v13 = object;
      if (!object)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  v10 = 0;
  *a2 = *(v23 + 6);
  v13 = object;
  if (object)
  {
LABEL_14:
    dispatch_release(v13);
  }

LABEL_15:
  if (v12)
  {
    dispatch_release(v12);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v10;
}

void sub_297A3A3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
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

uint64_t __KTLSecGetChipId_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiSecGetChipIdRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLSecGetPkHash(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x29EDCA608];
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

  if (!v5)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x5002000000;
    v34 = __Block_byref_object_copy__7_0;
    v35 = __Block_byref_object_dispose__8_0;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36 = v11;
    v37 = v11;
    v38 = -21846;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2000000000;
    v27 = -1;
    v12 = dispatch_semaphore_create(0);
    v13 = v12;
    v22 = MEMORY[0x29EDCA5F8];
    object = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    if (ARI_CsiSecGetPkHashReq_BLK())
    {
      v10 = 0;
      v14 = *(v32 + 36);
      v15 = *(v32 + 7);
      *a2 = *(v32 + 5);
      *(a2 + 16) = v15;
      *(a2 + 32) = v14;
      v16 = object;
      if (!object)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v18 = dispatch_time(0, 1000000 * *(a1 + 20));
    v19 = dispatch_semaphore_wait(v13, v18);
    if (v19)
    {
      _KTLErrorPrint("KTLSecGetPkHash", "Timeout waiting for response.\n", v22, 1174405120, __KTLSecGetPkHash_block_invoke, &__block_descriptor_tmp_11_0, &v24, &v31);
    }

    if (v28)
    {
      AriHost::ExitTrx(v28);
    }

    v20 = *(v32 + 36);
    v21 = *(v32 + 7);
    *a2 = *(v32 + 5);
    *(a2 + 16) = v21;
    *(a2 + 32) = v20;
    if (v19)
    {
      v10 = 0;
      v16 = object;
      if (!object)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = *(v25 + 6) == 0;
      v16 = object;
      if (!object)
      {
LABEL_16:
        if (v13)
        {
          dispatch_release(v13);
        }

        _Block_object_dispose(&v24, 8);
        _Block_object_dispose(&v31, 8);
        if (!*(a2 + 32))
        {
          goto LABEL_19;
        }

        return v10;
      }
    }

LABEL_15:
    dispatch_release(v16);
    goto LABEL_16;
  }

  v24 = 0;
  v29 = 0;
  v30 = v4;
  v31 = 0;
  if (ARI_CsiSecGetPkHashReq_ENC() || (v6 = operator new(0x18uLL), v7 = v31, v6[2] = v29, *(v6 + 2) = v7, *v6 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v6)) || !KTLUTACopyReceiveData(a1, &v24))
  {
    v10 = 0;
    if (*(a2 + 32))
    {
      return v10;
    }

    goto LABEL_19;
  }

  v8 = v24;
  (*(*v24 + 16))(v24);
  v9 = ARI_CsiSecGetPkHashRspCb_Extract();
  (*(*v8 + 8))(v8);
  v10 = v9 == 0;
  if (!*(a2 + 32))
  {
LABEL_19:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 32;
  }

  return v10;
}

void sub_297A3A7D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
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

  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__7_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

uint64_t __KTLSecGetPkHash_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiSecGetPkHashRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t KTLGetPersonalizationInfo(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v14 = -1431655766;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __src[0] = v4;
  __src[1] = v4;
  memset(v12, 170, sizeof(v12));
  v9 = 0;
  v11 = -21846;
  v10[0] = v4;
  v10[1] = v4;
  result = KTLSecGetRandomNum(a1, __src);
  if (result)
  {
    result = KTLSecGetSNUM(a1, v12);
    if (result)
    {
      result = KTLSecGetChipId(a1, &v9);
      if (result)
      {
        result = KTLSecGetPkHash(a1, v10);
        if (result)
        {
          v6 = v14;
          v7 = LOWORD(v12[2]);
          v8 = v11;
          if (v14 > 0x20 || LOWORD(v12[2]) > 0x10u || v11 >= 0x21u)
          {
            _KTLErrorPrint("KTLGetPersonalizationInfo", "Invalid buffer size(s) returned from baseband:\nnonce(%u)\tnonce_max(%u)\nsnum(%u)\tsnum_max(%u)\npkhash(%u)\tpkhash_max(%u)\n", v14, 32, LOWORD(v12[2]), 16, v11, 32);
            return 0;
          }

          else
          {
            *(a2 + 80) = 0u;
            *(a2 + 64) = 0u;
            *(a2 + 48) = 0u;
            *(a2 + 16) = 0u;
            *(a2 + 32) = 0u;
            *a2 = v9;
            *(a2 + 4) = v6;
            *(a2 + 8) = v7;
            *(a2 + 12) = v8;
            memcpy((a2 + 16), __src, v6);
            memcpy((a2 + 48), v12, v7);
            memcpy((a2 + 64), v10, v8);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL KTLSecGetFactoryDebugEnabled(uint64_t a1, _DWORD *a2)
{
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
    v18 = 0;
    v29 = 0;
    v30 = v4;
    v22 = 0;
    if (ARI_CsiIceGetFactoryDebugEnabledReq_ENC())
    {
      return 0;
    }

    v6 = operator new(0x18uLL);
    v7 = v22;
    v6[2] = v29;
    *(v6 + 2) = v7;
    *v6 = &unk_2A1E625B0;
    if (!KTLUTASendAndReleaseData(a1, v6) || !KTLUTACopyReceiveData(a1, &v18))
    {
      return 0;
    }

    v8 = v18;
    (*(*v18 + 16))(v18);
    v9 = ARI_CsiIceGetFactoryDebugEnabledResp_Extract();
    (*(*v8 + 8))(v8);
    return v9 == 0;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3002000000;
  v25 = __Block_byref_object_copy__13;
  v26 = __Block_byref_object_dispose__14;
  v27 = -1431655766;
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

  if (!ARI_CsiIceGetFactoryDebugEnabledReq_BLK())
  {
    v15 = dispatch_time(0, 1000000 * *(a1 + 20));
    v16 = dispatch_semaphore_wait(v12, v15);
    if (v16)
    {
      _KTLErrorPrint("KTLSecGetFactoryDebugEnabled", "Timeout waiting for response.\n");
    }

    if (v28)
    {
      AriHost::ExitTrx(v28);
    }

    *a2 = *(v23 + 10);
    if (v16)
    {
      v10 = 0;
      v13 = object;
      if (!object)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = *(v19 + 6) == 0;
      v13 = object;
      if (!object)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  v10 = 0;
  *a2 = *(v23 + 10);
  v13 = object;
  if (object)
  {
LABEL_14:
    dispatch_release(v13);
  }

LABEL_15:
  if (v12)
  {
    dispatch_release(v12);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v10;
}

void sub_297A3ACF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
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

uint64_t __KTLSecGetFactoryDebugEnabled_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceGetFactoryDebugEnabledResp_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t security::ARICommandDriver::GetPersonalizationParams(uint64_t a1, uint64_t a2, AriSdk::ARI_GetPersonalizationParametersRspCb_SDK **a3)
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
    v31 = __Block_byref_object_copy__23;
    v32 = __Block_byref_object_dispose__24;
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

  v16 = operator new(0xA8uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_GetPersonalizationParametersRspCb_SDK::ARI_GetPersonalizationParametersRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_GetPersonalizationParametersRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_GetPersonalizationParametersRspCb_SDK::unpack(v25))
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
    _KTLErrorPrint("GetPersonalizationParams", "Failed GetPersonalizationParametersReq\n");
  }

  return v18;
}

void sub_297A3B24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
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

uint64_t security::ARICommandDriver::CsiSecCollectScrtBlob(uint64_t a1, uint64_t a2, AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK **a3)
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
    v31 = __Block_byref_object_copy__23;
    v32 = __Block_byref_object_dispose__24;
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
  AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK::ARI_CsiSecCollectScrtBlobRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK::unpack(v25))
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
    _KTLErrorPrint("CsiSecCollectScrtBlob", "Failed CsiSecCollectScrtBlobReq\n");
  }

  return v18;
}

void sub_297A3B750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
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

uint64_t security::ARICommandDriver::CsiSecReadSikPKey(uint64_t a1, uint64_t a2, AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK **a3)
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
    v31 = __Block_byref_object_copy__23;
    v32 = __Block_byref_object_dispose__24;
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
  AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK::ARI_CsiSecReadSikPKeyRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK::unpack(v25))
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
    _KTLErrorPrint("CsiSecReadSikPKey", "Failed CsiSecReadSikPKeyReq\n");
  }

  return v18;
}

void sub_297A3BC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
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

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__24(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk31ARI_CsiSecGetRandomNumRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x48uLL);
  AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK::ARI_CsiSecGetRandomNumRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk41ARI_GetPersonalizationParametersRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0xA8uLL);
  AriSdk::ARI_GetPersonalizationParametersRspCb_SDK::ARI_GetPersonalizationParametersRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk34ARI_CsiSecCollectScrtBlobRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x60uLL);
  AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK::ARI_CsiSecCollectScrtBlobRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk30ARI_CsiSecReadSikPKeyRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x60uLL);
  AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK::ARI_CsiSecReadSikPKeyRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t getRestoreOSMode(void)
{
  {
    return getRestoreOSMode(void)::restoreOS;
  }

  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A1899218;
  if (!off_2A1899218)
  {
    ctu::Gestalt::create_default_global(&v5, v1);
    std::shared_ptr<ctu::Gestalt>::operator=[abi:ne200100](&off_2A1899218, &v5);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&v5);
    v2 = off_2A1899218;
  }

  v4[0] = v2;
  v4[1] = qword_2A1899220;
  if (qword_2A1899220)
  {
    atomic_fetch_add_explicit((qword_2A1899220 + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v3 = (*(*v2 + 96))(v2);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](v4);
  getRestoreOSMode(void)::restoreOS = v3;
  return getRestoreOSMode(void)::restoreOS;
}

void sub_297A3C060(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t std::shared_ptr<ctu::Gestalt>::operator=[abi:ne200100](uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0uLL;
  v3 = *(result + 8);
  *result = v2;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance, &dword_297A27000);
  }

  return result;
}

uint64_t KTLPSIFormatEnhancedCommand(uint64_t a1, __int16 a2, int a3)
{
  *a1 = a3;
  *(a1 + 4) = a2;
  *(a1 + 6) = a2 ^ HIWORD(a3) ^ a3;
  return 1;
}

uint64_t KTLPSIFormatEnhancedCommandMrcData(uint64_t a1, __int16 a2, int a3)
{
  *a1 = a3;
  *(a1 + 4) = a2;
  *(a1 + 6) = a2 ^ HIWORD(a3) ^ a3;
  return 1;
}

uint64_t KTLPSISendEnhancedCommand(uint64_t a1, uint64_t (**a2)(void, uint64_t, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a3, uint64_t a4)
{
  v10 = 0;
  _KTLDebugPrint("KTLPSISendEnhancedCommand", "Sending PSI enhanced command: command %d, param %d\n", *(a1 + 4), *a1);
  v8 = *a2;
  if (*a2)
  {
    LODWORD(result) = v8(a2, a1, a3, &v10, 1, a4, 0);
    LODWORD(v8) = v10;
  }

  else
  {
    LODWORD(result) = 0;
  }

  if (v8 == a3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t KTLPSISendMrcTrainingCommand(uint64_t a1, uint64_t (**a2)(void, uint64_t, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v12 = 0;
  _KTLDebugPrint("KTLPSISendMrcTrainingCommand", "Sending PSI enhanced command: command %d, param %d, length = %u\n", *(a1 + 4), *a1, a3);
  v10 = *a2;
  if (*a2)
  {
    LODWORD(result) = v10(a2, a1, a3, &v12, 1, a4, 0);
    LODWORD(v10) = v12;
  }

  else
  {
    LODWORD(result) = 0;
  }

  if (v10 == a3)
  {
    result = result;
  }

  else
  {
    result = 0;
  }

  *a5 = v10;
  return result;
}

uint64_t KTLPSIReadResponse(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  _KTLDebugPrint("KTLPSIReadResponse", "Reading response from PSI\n");
  v13 = 0;
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = v8(a1, a4, a2, &v13, 0, a3, 0);
    v10 = v13;
    if (v13 && (_KTLDebugFlags & 2) != 0)
    {
      v11 = v9;
      off_2A18991C8("Rx:", 1, a4, v13);
      v10 = v13;
      if ((v11 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (!v9)
    {
      goto LABEL_11;
    }

    if (v10 >= 2 && v10 <= a2)
    {
      _KTLDebugPrint("KTLPSIReadResponse", "Read response from PSI: code = %u\n", *a4);
      return 1;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_11:
  _KTLDebugPrint("KTLPSIReadResponse", "Failed reading response from PSI: bytesRead = %u\n", v10);
  return 0;
}

uint64_t KTLPSIReadMrcResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _KTLDebugPrint("KTLPSIReadMrcResponse", "Reading response from PSI, maxLength = %u\n", a2);
  v14 = 0;
  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8(a1, a4, a2, &v14, 0, a3, 0);
  v10 = v14;
  if (v14 && (_KTLDebugFlags & 2) != 0)
  {
    v11 = v9;
    off_2A18991C8("Rx:", 1, a4, v14);
    v10 = v14;
    if ((v11 & 1) == 0)
    {
LABEL_11:
      v12 = 0;
      _KTLDebugPrint("KTLPSIReadMrcResponse", "Failed reading response from PSI: bytesRead = %u\n");
      return v12;
    }
  }

  else if (!v9)
  {
    goto LABEL_11;
  }

  if (v10 < 2 || v10 > a2)
  {
    goto LABEL_11;
  }

  v12 = 1;
  _KTLDebugPrint("KTLPSIReadMrcResponse", "Successful Read response from PSI,bytesRead = %u\n");
  return v12;
}

uint64_t KTLSendEBLImage(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = a4;
  v10 = 0;
  if (!*a2)
  {
    return 0;
  }

  v7 = a3;
  if (!(*a2)(a2, a1, a3, &v10, 1, a5, 0) || v10 != v7)
  {
    return 0;
  }

  if (*a2)
  {
    LODWORD(result) = (*a2)(a2, &v11, 1, &v10, 1, a5, 0);
    v7 = v10;
  }

  else
  {
    LODWORD(result) = 0;
  }

  if (v7 == 1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t KTLSendEBLImageNoXor(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v6 = 0;
  if (!*a2)
  {
    return 0;
  }

  LODWORD(result) = (*a2)(a2, a1, a3, &v6, 1, a4, 0);
  if (v6 == v4)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

const char *PSIModeDescription(int a1)
{
  if (a1 <= 52479)
  {
    if (a1 == 462)
    {
      return "Secure";
    }

    if (a1 == 43520)
    {
      return "Normal";
    }
  }

  else
  {
    switch(a1)
    {
      case 52480:
        return "Coredump";
      case 61166:
        return "BadEEPROM";
      case 56577:
        return "Enhanced";
    }
  }

  return "Unknown";
}

uint64_t KTLParsePSIRunning(unsigned __int16 *a1, int *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *a1;
    if (v4 > 0xEEEE)
    {
      return 0;
    }

    *a2 = v4;
    if (v4 <= 52479)
    {
      if (v4 == 462)
      {
        v5 = "Secure";
        goto LABEL_17;
      }

      if (v4 == 43520)
      {
        v5 = "Normal";
        goto LABEL_17;
      }
    }

    else
    {
      switch(v4)
      {
        case 52480:
          v5 = "Coredump";
          goto LABEL_17;
        case 61166:
          v5 = "BadEEPROM";
          goto LABEL_17;
        case 56577:
          v5 = "Enhanced";
LABEL_17:
          _KTLDebugPrint("KTLParsePSIRunning", "PSI is running in %s mode\n", v5);
          return 1;
      }
    }

    v5 = "Unknown";
    goto LABEL_17;
  }

  return result;
}

uint64_t KTLParsePSIICEPersonalizionInfo(_OWORD *a1, unsigned int a2, uint64_t *a3)
{
  result = 0;
  if (a1)
  {
    if (a2 >= 0x4C)
    {
      result = malloc(0x4CuLL);
      if (result)
      {
        v6 = a1[1];
        *result = *a1;
        *(result + 16) = v6;
        v7 = a1[3];
        *(result + 32) = a1[2];
        *(result + 48) = v7;
        *(result + 60) = *(a1 + 60);
        if (*result == 3777)
        {
          *a3 = result;
          return 1;
        }

        else
        {
          free(result);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t KTLParsePSIICEPersonalizionInfoSha384(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  result = 0;
  if (a1)
  {
    if (a2 >= 0x78)
    {
      result = malloc(0x78uLL);
      if (result)
      {
        v6 = *(a1 + 80);
        *(result + 64) = *(a1 + 64);
        *(result + 80) = v6;
        *(result + 96) = *(a1 + 96);
        *(result + 112) = *(a1 + 112);
        v7 = *(a1 + 16);
        *result = *a1;
        *(result + 16) = v7;
        v8 = *(a1 + 48);
        *(result + 32) = *(a1 + 32);
        *(result + 48) = v8;
        if (*result == 3777)
        {
          *a3 = result;
          return 1;
        }

        else
        {
          free(result);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t KTLParsePSIICEHashResponse(const void *a1, size_t __size, void *a3)
{
  result = 0;
  if (a1)
  {
    if (__size >= 8)
    {
      v6 = __size;
      result = malloc(__size);
      if (result)
      {
        v7 = result;
        memcpy(result, a1, v6);
        if (*v7 == 3777 && 96 * *(v7 + 1) <= v7[1])
        {
          *a3 = v7;
          return 1;
        }

        else
        {
          free(v7);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t KTLParsePSIICEHashResponseSha384(const void *a1, size_t __size, void *a3)
{
  result = 0;
  if (a1)
  {
    if (__size >= 8)
    {
      v6 = __size;
      result = malloc(__size);
      if (result)
      {
        v7 = result;
        memcpy(result, a1, v6);
        if (*v7 == 3777 && 112 * *(v7 + 1) <= v7[1])
        {
          *a3 = v7;
          return 1;
        }

        else
        {
          free(v7);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t KTLParsePSIICETestModeResponse(const void *a1, size_t __size, unsigned __int16 **a3)
{
  result = 0;
  if (a1)
  {
    if (__size >= 4)
    {
      v6 = __size;
      result = malloc(__size);
      if (result)
      {
        v7 = result;
        memcpy(result, a1, v6);
        if (v6 - 4 == v7[1])
        {
          *a3 = v7;
          return 1;
        }

        else
        {
          free(v7);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t KTLEBLReceivePacket(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 && (v2() & 1) != 0)
  {
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Received:", 1, a2, 0);
    }

    _KTLDebugPrint("KTLEBLReceivePacket", "Packet read < Minimum size (%d < %ld)\n", 0, 8);
    return 0;
  }

  else
  {
    _KTLDebugPrint("KTLEBLReceivePacket", "Packet read failed.\n");
    return 0;
  }
}

uint64_t KTLEBLSendReadfileData(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v6 = 0;
  if (!*a1)
  {
    return 0;
  }

  LODWORD(result) = (*a1)(a1, a2, a3, &v6, 1, a4, 0);
  if (v6 == v4)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t KTLEBLSendPacket(uint64_t (**a1)(void, _DWORD *, uint64_t, int *, uint64_t, uint64_t, void), _DWORD *a2, uint64_t a3)
{
  v10 = 0;
  v6 = a2[1];
  v7 = (v6 + 8);
  _KTLDebugPrint("KTLEBLSendPacket", "Sending command of length %u, type %u\n", v6 + 8, *a2);
  v8 = *a1;
  if (*a1)
  {
    LODWORD(result) = v8(a1, a2, v7, &v10, 1, a3, 0);
    LODWORD(v8) = v10;
  }

  else
  {
    LODWORD(result) = 0;
  }

  if (v8 == v7)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t KTLEBLParseStartInfo(int *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 > 2)
  {
    if (v2 == 3)
    {
      v3 = "Readfile";
      goto LABEL_14;
    }

    if (v2 == 4)
    {
      v3 = "Done";
      goto LABEL_14;
    }

LABEL_8:
    v3 = "Unknown-type";
    if (v2 == 5)
    {
      v3 = "DoneAck";
    }

    goto LABEL_14;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      v3 = "StartAck";
LABEL_14:
      _KTLDebugPrint("KTLEBLParseStartInfo", "Error: packet id mismatch (expected=%d (%s), got=%d (%s))\n", 1, "Start", *a1, v3);
      return 0;
    }

    goto LABEL_8;
  }

  v4 = a1[1];
  if (v4 > 0xB)
  {
    if (v4 == 12)
    {
      v6 = *(a1 + 1);
      *(a2 + 8) = a1[4];
      *a2 = v6;
      return 1;
    }

    else
    {
      _KTLDebugPrint("KTLEBLParseStartInfo", "Error: packet malformed, payload too large for StartInfo.\n");
      return 0;
    }
  }

  else
  {
    _KTLDebugPrint("KTLEBLParseStartInfo", "Error: packet malformed, payload too small for StartInfo.\n");
    return 0;
  }
}

uint64_t KTLEBLCreateStartACKPacket(uint64_t a1, _DWORD *a2)
{
  *a1 = 0x1000000002;
  *(a1 + 8) = *a2;
  *(a1 + 12) = a2[1];
  *(a1 + 16) = a2[2];
  *(a1 + 20) = a2[3];
  return 1;
}

uint64_t KTLEBLParseReadfileExt(uint64_t a1, void *a2, size_t a3, _DWORD *a4, _DWORD *a5)
{
  if (!a1 || !a2 || !a4 || !a5)
  {
    _KTLDebugPrint("KTLEBLParseReadfileExt", "Error: one of given parameter got null.(pkt: %p, fname: %p, offset: %p, length: %p)\n", a3);
    return 0;
  }

  if (*a1 <= 2 || *a1 != 3)
  {
    _KTLDebugPrint("KTLEBLParseReadfileExt", "Error: packet id mismatch (expected=%d (%s), got=%d (%s))\n", a3);
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 4);
  if (v7 < v6 + 12)
  {
    _KTLDebugPrint("KTLEBLParseReadfileExt", "Error: packet malformed, payload too small for Readfile.\n", a3);
    return 0;
  }

  if (v7 > v6 + 12)
  {
    _KTLDebugPrint("KTLEBLParseReadfileExt", "Error: packet malformed, payload too large for Readfile.\n", a3);
    return 0;
  }

  if (v6 > a3)
  {
    _KTLDebugPrint("KTLEBLParseReadfileExt", "Error: given filename size (%lu) is too small to copy. We need %d size.\n", a3);
    return 0;
  }

  bzero(a2, a3);
  strncpy(a2, (a1 + 20), *(a1 + 16));
  *a4 = *(a1 + 8);
  *a5 = *(a1 + 12);
  return 1;
}

uint64_t KTLEBLParseDone(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1;
  if (*a1 <= 2)
  {
    if (v2 == 1)
    {
      v3 = "Start";
      goto LABEL_14;
    }

    if (v2 == 2)
    {
      v3 = "StartAck";
LABEL_14:
      _KTLDebugPrint("KTLEBLParseDone", "Error: packet id mismatch (expected=%d (%s), got=%d (%s))\n", 4, "Done", *a1, v3);
      return 0;
    }

LABEL_9:
    v3 = "Unknown-type";
    if (v2 == 5)
    {
      v3 = "DoneAck";
    }

    goto LABEL_14;
  }

  if (v2 == 3)
  {
    v3 = "Readfile";
    goto LABEL_14;
  }

  if (v2 != 4)
  {
    goto LABEL_9;
  }

  v4 = a1[1];
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      *a2 = a1[2];
      return 1;
    }

    else
    {
      _KTLDebugPrint("KTLEBLParseDone", "Error: packet malformed, payload too large for Done.\n");
      return 0;
    }
  }

  else
  {
    _KTLDebugPrint("KTLEBLParseDone", "Error: packet malformed, payload too small for Done.\n");
    return 0;
  }
}

uint64_t KTLInitOptions(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = a4 != 0;
  v7 = a5 != 0;
  v8 = v6 ^ v7;
  if ((v6 ^ v7))
  {
    *a1 = a2;
    *(a1 + 4) = a3;
    *(a1 + 8) = a4;
    *(a1 + 16) = a5;
    *(a1 + 20) = a6;
    return v6 ^ v7;
  }

  else
  {
    *(a1 + 4) = 3;
    _KTLErrorPrint("KTLInitOptions", "Provide either transport or ARI id, not both\n", a3);
    return v8;
  }
}

uint64_t KTLOpenChannel(uint64_t a1)
{
  *(a1 + 24) = 0;
  v3 = *(a1 + 4);
  if (v3 < 3)
  {
    return 1;
  }

  if (v3 == 3)
  {
    _KTLErrorPrint("KTLOpenChannel", "Invalid transport option selected.  See previous error.  Abort!\n", v1, v2);
  }

  return 0;
}

uint64_t KTLCloseChannel(uint64_t a1)
{
  v1 = *(a1 + 4);
  if ((v1 - 1) < 2)
  {
    return 1;
  }

  if (v1)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return 1;
  }

  do
  {
    v4 = v3[5];
    (*(*v3 + 8))(v3);
    v3 = v4;
  }

  while (v4);
  return 1;
}

uint64_t KTLEFISendData(uint64_t a1, _DWORD *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a3;
  v17 = *MEMORY[0x29EDCA608];
  if ((*a2 | 0x20) == 0x61)
  {
    if (a3 > 0xC00)
    {
      _KTLErrorPrint("KTLEFISendData", "AT string size (%u) larger than max size (%u).\n", a3, 3072);
      goto LABEL_25;
    }

    if (*(a2 + (a3 - 1)) == 10)
    {
      if (*(a2 + (a3 - 2)) == 13)
      {
        v7 = a2;
        goto LABEL_24;
      }

      if (a3 != 3072)
      {
        *(a2 + a3) = 10;
        v7 = a2;
        *(a2 + (a3 - 1)) = 13;
        LODWORD(v5) = a3 + 1;
LABEL_24:
        bzero(__dst, 0xC00uLL);
        __dst[768] = v5;
        memcpy(__dst, v7, v5);
        __dst[769] = *(a1 + 20);
        __dst[770] = 1;
        if (!ARI_CsiIceAtExtReq_ENC())
        {
          v15 = operator new(0x18uLL);
          v15[2] = 0;
          *(v15 + 2) = 0;
          *v15 = &unk_2A1E625B0;
          result = KTLUTASendAndReleaseData(a1, v15);
          goto LABEL_26;
        }

LABEL_25:
        result = 0;
LABEL_26:
        *a4 = 1;
        return result;
      }
    }

    else if (a3 <= 0xBFE)
    {
      v7 = a2;
      *(a2 + a3) = 2573;
      LODWORD(v5) = a3 + 2;
      goto LABEL_24;
    }

    v7 = a2;
    _KTLErrorPrint("KTLEFISendData", "Not enough space left to append \\r\\n to AT string.\n");
    goto LABEL_24;
  }

  if (a3 >= 0xC && *a2 == -1417756450)
  {
    v9 = *(a1 + 8);
    v10 = *(a1 + 20);
    __dst[0] = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", a3, v10);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, a2, v5);
    }

    v11 = *v9;
    if (*v9 && ((v12 = v11(v9, a2, v5, __dst, 1, v10, 0), LODWORD(v11) = __dst[0], __dst[0] == v5) ? (v13 = v12) : (v13 = 0), (v13 & 1) != 0))
    {
      result = 1;
      *a4 = 0;
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v5, v11);
      result = 0;
      *a4 = 0;
    }
  }

  else
  {
    _KTLErrorPrint("KTLEFISendData", "Unrecognized message type.\n");
    return 0;
  }

  return result;
}

uint64_t KTLRawSendData(uint64_t (**a1)(void, uint64_t, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", a3, a4);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, a2, a3);
  }

  v8 = *a1;
  if (!*a1 || ((v9 = 1, v10 = v8(a1, a2, a3, &v13, 1, a4, 0), LODWORD(v8) = v13, v10) ? (v11 = v13 == a3) : (v11 = 0), !v11))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", a3, v8);
    return 0;
  }

  return v9;
}

uint64_t KTLEFIReceiveData(uint64_t a1, char *a2, _DWORD *a3, unsigned int a4, int a5)
{
  *(&__b[385] + 4) = *MEMORY[0x29EDCA608];
  v28 = 0;
  *a3 = 0;
  if (!a5)
  {
    result = KTLUTACopyReceiveData(a1, &v28);
    if (result)
    {
      v22 = v28;
      v23 = v28[2];
      v24 = v23 <= a4;
      if (v23 > a4)
      {
        _KTLErrorPrint("KTLEFIReceiveData", "Receved message of size %u, but caller provided buffer size %u\n", v28[2], a4);
      }

      else
      {
        v25 = (*(*v28 + 16))(v28);
        memcpy(a2, v25, v22[2]);
        *a3 = v22[2];
      }

      (*(*v22 + 8))(v22);
      return v24;
    }

    return result;
  }

  result = KTLUTACopyReceiveData(a1, &v28);
  if (!result)
  {
    return result;
  }

  while (1)
  {
    v10 = v28;
    v11 = (*(*v28 + 16))(v28);
    BufGmid = AriMsg::GetBufGmid(v11, v10[2]);
    if (BufGmid != -116752384)
    {
      _KTLErrorPrint("KTLEFIReceiveData", "EFI receive expected AT response (%u) but found (%u)\n", -116752384, BufGmid);
      v20 = 0;
LABEL_19:
      (*(*v10 + 8))(v10);
      v28 = 0;
      if (v20)
      {
        return 1;
      }

      goto LABEL_20;
    }

    v27 = 0xAAAAAAAAAAAAAAAALL;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26[2] = v13;
    v26[3] = v13;
    v26[0] = v13;
    v26[1] = v13;
    v14 = (*(*v10 + 16))(v10);
    MEMORY[0x29C279B30](v26, v14, v10[2]);
    memset(__b, 170, 0xC0CuLL);
    if (a4 - *a3 < 0xAAAAAAAA)
    {
      break;
    }

    v15 = 0;
    do
    {
      v16 = *(__b + v15);
      if (!v16)
      {
        v16 = 32;
      }

      *(__b + v15++) = v16;
    }

    while (v15 < LODWORD(__b[384]));
    memcpy(a2, __b, LODWORD(__b[384]));
    v17 = *a3;
    if (v17)
    {
      if (v17 < 8)
      {
        v18 = &a2[-v17];
        v19 = LODWORD(__b[384]) + v17;
      }

      else
      {
        v18 = a2 - 8;
        v19 = LODWORD(__b[384]) + 8;
      }
    }

    else
    {
      v19 = __b[384];
      v18 = a2;
    }

    v21 = v19;
    if (strnstr(v18, "\r\nOK\r\n", v19))
    {
      v20 = 1;
    }

    else
    {
      v20 = strnstr(v18, "\r\nERROR\r\n", v21) != 0;
    }

    a2 += LODWORD(__b[384]);
    *a3 += LODWORD(__b[384]);
    AriMsg::~AriMsg(v26);
    v10 = v28;
    if (v28)
    {
      goto LABEL_19;
    }

    if (v20)
    {
      return 1;
    }

LABEL_20:
    if ((KTLUTACopyReceiveData(a1, &v28) & 1) == 0)
    {
      return 0;
    }
  }

  _KTLErrorPrint("KTLEFIReceiveData", "Received AT string size %u, but caller provided buffer size %u\n", *a3 - 1431655766, a4);
  (*(*v10 + 8))(v10);
  AriMsg::~AriMsg(v26);
  return 0;
}

void sub_297A3DAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriMsg::~AriMsg(va);
  _Unwind_Resume(a1);
}

uint64_t KTLUTACopyReceiveData(uint64_t a1, uint64_t *a2)
{
  v4 = dispatch_time(0, 1000000 * *(a1 + 20));
  while (1)
  {
    result = ktl::KTLReceivePacket::fetchARIMsgFromTransport(a1);
    *a2 = result;
    if (!result)
    {
      break;
    }

    v6 = (*(*result + 16))(result);
    v7 = (*(**a2 + 16))();
    result = AriMsg::GetBufMsgDir(v7, *(*a2 + 8));
    if (result == 1)
    {
      break;
    }

    _KTLDebugPrint("KTLUTACopyReceiveData", "Skipping unexpected message (groupId=%d, msgId=0x%x) with unexpected direction (%d) and retrying receive.\n", (*v6 >> 35) & 0x3F, *(v6 + 8) >> 6, result);
    if (*a2)
    {
      (*(**a2 + 8))(*a2);
    }

    *a2 = 0;
    if (dispatch_time(0, 0) > v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t KTLUTASendAndReleaseData(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v5 = (*(*a2 + 16))(a2);
  v6 = a2[2];
  v7 = *(a1 + 20);
  v13 = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v6, v7);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v5, v6);
  }

  v8 = *v4;
  if (!*v4 || ((v9 = 1, v10 = v8(v4, v5, v6, &v13, 1, v7, 0), LODWORD(v8) = v13, v10) ? (v11 = v13 == v6) : (v11 = 0), !v11))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v6, v8);
    v9 = 0;
  }

  (*(*a2 + 8))(a2);
  return v9;
}

BOOL KTLUTACopyReceiveNextMessage(uint64_t a1, uint64_t *a2)
{
  ARIMsgFromTransport = ktl::KTLReceivePacket::fetchARIMsgFromTransport(a1);
  *a2 = ARIMsgFromTransport;
  return ARIMsgFromTransport != 0;
}

uint64_t KTLRawReceiveData(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  result = v3();
  v7 = *a3;
  if (v7)
  {
    if ((_KTLDebugFlags & 2) != 0)
    {
      v8 = result;
      off_2A18991C8("Rx:", 1, a2, v7);
      return v8;
    }
  }

  return result;
}

uint64_t KTLRawReceiveDataExact(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  *a3 = 0;
  if (!a4)
  {
    return 1;
  }

  v6 = a4;
  v10 = a2;
  do
  {
    v15 = 0;
    v11 = *(a1 + 8);
    if (!v11 || (v11(a1, v10, v6, &v15, 1, a5, 0) & 1) == 0)
    {
      return 0;
    }

    v12 = v15;
    v13 = *a3 + v15;
    *a3 = v13;
    v10 += v12;
    v6 = (v6 - v12);
  }

  while (v6);
  if (v13)
  {
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Rx:", 1, a2, v13);
    }
  }

  return 1;
}

uint64_t ICE_FILER_write(uint64_t a1, uint64_t a2, uint64_t a3, AriHost *a4, uint64_t a5)
{
  if (a2)
  {

    return ICE_FILER_write(a1, 0, a2, a3, a4, a5);
  }

  else
  {
    _KTLErrorPrint("ICE_FILER_write", "Error: %s. Invalid Parameter.\n", "ICE_FILER_write");
    return 0xFFFFFFFFLL;
  }
}

uint64_t ICE_FILER_write(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, AriHost *a5, uint64_t a6)
{
  v72 = *MEMORY[0x29EDCA608];
  if (!a1 || !a4 || (a2 == 0) == (a3 == 0))
  {
    _KTLErrorPrint("ICE_FILER_write", "Error: ICE_FILER_write. Invalid Parameter.\n");
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 8) && !a5 && *(a1 + 16))
  {
    _KTLErrorPrint("ICE_FILER_write", "Missing required transaction ID: context_id=%x\n", a3, a4, a5, a6);
    return 0xFFFFFFFFLL;
  }

  v10 = a4;
  if (pthread_mutex_lock(&_MergedGlobals))
  {
LABEL_6:
    _KTLErrorPrint("ICE_FILER_write", "Error: ICE_FILER_write. Context Already Exists.\n");
    return 4294967291;
  }

  v13 = off_2A13A4F40;
  if (off_2A13A4F40 != &dword_2A13A4EF0)
  {
    v14 = off_2A13A4F40;
    while (*v14 != a5)
    {
      v14 = *(v14 + 10);
      if (v14 == &dword_2A13A4EF0)
      {
        goto LABEL_16;
      }
    }

    pthread_mutex_unlock(&_MergedGlobals);
    goto LABEL_6;
  }

LABEL_16:
  v15 = operator new(0x60uLL);
  *(v15 + 8) = 0;
  *v15 = a5;
  *(v15 + 1) = a3;
  *(v15 + 2) = a1;
  v16 = a2;
  if (a3)
  {
    v16 = operator new[](0xC00uLL);
  }

  *(v15 + 3) = v16;
  v15[8] = v10;
  *(v15 + 5) = v16;
  v15[12] = v10;
  *(v15 + 7) = a6;
  *(v15 + 8) = 0;
  v15[18] = 0;
  *(v15 + 10) = v13;
  *(v15 + 11) = &dword_2A13A4EF0;
  *(v13 + 11) = v15;
  off_2A13A4F40 = v15;
  _KTLDebugFlags = 13;
  pthread_mutex_unlock(&_MergedGlobals);
  if (!*(a1 + 8) && *(a1 + 16))
  {
    if (!a6)
    {
      v40 = dispatch_semaphore_create(0);
      v41 = *(v15 + 8);
      *(v15 + 8) = v40;
      if (v41)
      {
        dispatch_release(v41);
      }
    }

    do
    {
      v42 = v15[12];
      if (!v42)
      {
        break;
      }

      if (v42 >= 0xC00)
      {
        v43 = 3072;
      }

      else
      {
        v43 = v42;
      }

      v44 = *(v15 + 1);
      v45 = *(v15 + 5);
      if (v44)
      {
        __dst[0] = 0;
        v46 = *(v44 + 8);
        v47 = v43;
        if (v46)
        {
          while (1)
          {
            v48 = v46();
            v49 = __dst[0];
            if (!v48)
            {
              LODWORD(v46) = 0;
              goto LABEL_103;
            }

            v50 = v47 - __dst[0];
            if (v47 < __dst[0])
            {
              break;
            }

            if (v47 == __dst[0])
            {
              v45 = *(v15 + 5);
              goto LABEL_72;
            }

            v45 += __dst[0];
            v46 = *(*(v15 + 1) + 8);
            v47 -= __dst[0];
            if (!v46)
            {
              LODWORD(v43) = v50;
              goto LABEL_104;
            }
          }

          LODWORD(v46) = 1;
LABEL_103:
          LODWORD(v43) = v47;
        }

        else
        {
          v49 = 0;
        }

LABEL_104:
        _KTLErrorPrint("ICE_FILER_transport_read", "Error: TelephonyUtilTransportRead (ret=%d, available=%d, read=%d).\n", v46, v43, v49);
        v15[18] = -6;
        break;
      }

LABEL_72:
      v64 = 0;
      v65 = 0;
      *&v51 = 0xAAAAAAAAAAAAAAAALL;
      *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v69 = v51;
      *__p = v51;
      v67 = v51;
      v68 = v51;
      v66 = v51;
      AriSdk::ARI_CsiIceFilerWriteReq_SDK::ARI_CsiIceFilerWriteReq_SDK(&v66);
      v52 = operator new(4uLL);
      *v52 = v43;
      v53 = __p[0];
      __p[0] = v52;
      if (v53)
      {
        operator delete(v53);
      }

      if (v42 <= 0xBFF)
      {
        v54 = 3072 - v43;
      }

      else
      {
        v54 = 0;
      }

      bzero(__dst + v43, v54);
      memcpy(__dst, v45, v43);
      v55 = operator new(0xC00uLL);
      memcpy(v55, __dst, 0xC00uLL);
      v56 = __p[1];
      __p[1] = v55;
      if (v56)
      {
        operator delete(v56);
      }

      AriSdk::MsgBase::getRawBytes();
      MEMORY[0x29C279C50](&v66);
      v63[1] = MEMORY[0x29EDCA5F8];
      v63[2] = 0x40000000;
      v63[3] = ___ZL15ICE_FILER_writeP10KTLOptionsPvP26TelephonyUtilTransport_tagjiPFviS1_E_block_invoke;
      v63[4] = &__block_descriptor_tmp_0;
      v63[5] = v15;
      v57 = AriHost::Send();
      if (v57)
      {
        _KTLErrorPrint("ICE_FILER_write", "%s: Failed to send (Remaining=%d/%d).  Aborting...\n", "ICE_FILER_write", v15[12], v15[8]);
        v15[18] = -6;
      }

      else
      {
        if (!*(v15 + 1))
        {
          *(v15 + 5) += v43;
        }

        v15[12] -= v43;
      }

      if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v65->__on_zero_shared)(v65);
        std::__shared_weak_count::__release_weak(v65);
      }
    }

    while (!v57);
    if (*(v15 + 8))
    {
      v62 = dispatch_time(0, 1000000 * (*(a1 + 20) - v15[8] / 0xC00 + 8 * (v15[8] / 0xC00)));
      if (dispatch_semaphore_wait(*(v15 + 8), v62))
      {
        _KTLErrorPrint("ICE_FILER_write", "Timeout waiting for transfer to complete\n");
      }

      v61 = v15[18];
      ICE_FILER_lookup_remove(a5);
      return v61;
    }

    return 0xFFFFFFFFLL;
  }

  v63[0] = 0;
  v17 = v15[12];
  if (!v17)
  {
    goto LABEL_93;
  }

  while (1)
  {
    v18 = v17 >= 0xC00 ? 3072 : v17;
    v19 = *(v15 + 1);
    v20 = *(v15 + 5);
    if (v19)
    {
      break;
    }

LABEL_31:
    v64 = 0;
    v65 = 0;
    *&v26 = 0xAAAAAAAAAAAAAAAALL;
    *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v69 = v26;
    *__p = v26;
    v67 = v26;
    v68 = v26;
    v66 = v26;
    AriSdk::ARI_CsiIceFilerWriteReq_SDK::ARI_CsiIceFilerWriteReq_SDK(&v66);
    v27 = operator new(4uLL);
    *v27 = v18;
    v28 = __p[0];
    __p[0] = v27;
    if (v28)
    {
      operator delete(v28);
    }

    if (v17 <= 0xBFF)
    {
      v29 = 3072 - v18;
    }

    else
    {
      v29 = 0;
    }

    bzero(__dst + v18, v29);
    memcpy(__dst, v20, v18);
    v30 = operator new(0xC00uLL);
    memcpy(v30, __dst, 0xC00uLL);
    v31 = __p[1];
    __p[1] = v30;
    if (v31)
    {
      operator delete(v31);
    }

    AriSdk::MsgBase::getRawBytes();
    MEMORY[0x29C279C50](&v66);
    v32 = *(a1 + 8);
    v33 = *v64;
    v34 = v64[1] - *v64;
    v35 = *(a1 + 20);
    __dst[0] = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v34, v35);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v33, v34);
    }

    v36 = *v32;
    if (*v32 && ((v37 = v36(v32, v33, v34, __dst, 1, v35, 0), LODWORD(v36) = __dst[0], __dst[0] == v34) ? (v38 = v37) : (v38 = 0), (v38 & 1) != 0))
    {
      if (*(v15 + 1))
      {
        goto LABEL_46;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v34, v36);
      if (*(v15 + 1))
      {
LABEL_46:
        v17 = v15[12] - v18;
        v15[12] = v17;
        v39 = v65;
        if (v65)
        {
          goto LABEL_50;
        }

        goto LABEL_53;
      }
    }

    *(v15 + 5) += v18;
    v17 = v15[12] - v18;
    v15[12] = v17;
    v39 = v65;
    if (v65)
    {
LABEL_50:
      if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v39->__on_zero_shared)(v39);
        std::__shared_weak_count::__release_weak(v39);
      }

      v17 = v15[12];
    }

LABEL_53:
    if (!v17)
    {
      goto LABEL_93;
    }
  }

  __dst[0] = 0;
  v21 = *(v19 + 8);
  v22 = v18;
  if (v21)
  {
    while (1)
    {
      v23 = v21();
      v24 = __dst[0];
      if (!v23)
      {
        LODWORD(v21) = 0;
        goto LABEL_91;
      }

      v25 = v22 - __dst[0];
      if (v22 < __dst[0])
      {
        break;
      }

      if (v22 == __dst[0])
      {
        v20 = *(v15 + 5);
        goto LABEL_31;
      }

      v20 += __dst[0];
      v21 = *(*(v15 + 1) + 8);
      v22 -= __dst[0];
      if (!v21)
      {
        LODWORD(v18) = v25;
        goto LABEL_92;
      }
    }

    LODWORD(v21) = 1;
LABEL_91:
    LODWORD(v18) = v22;
  }

  else
  {
    v24 = 0;
  }

LABEL_92:
  _KTLErrorPrint("ICE_FILER_transport_read", "Error: TelephonyUtilTransportRead (ret=%d, available=%d, read=%d).\n", v21, v18, v24);
  v15[18] = -6;
LABEL_93:
  if (KTLUTACopyReceiveData(a1, v63))
  {
    __dst[0] = -1431655766;
    v58 = v63[0];
    v59 = (*(*v63[0] + 16))(v63[0]);
    BufCtx = AriMsg::GetBufCtx(v59, v58[2]);
    (*(*v58 + 16))(v58);
    if (ARI_CsiIceFilerWriteRspCb_Extract())
    {
      _KTLErrorPrint("ICE_FILER_write", "Error: ICE_FILER_write. Failed ARI_EXTRACT (Remaining=%d/%d)\n", v15[12], v15[8]);
      v15[18] = -7;
    }

    else
    {
      IceFilerWriteRspCb(__dst[0], BufCtx);
    }

    (*(*v58 + 8))(v58);
  }

  else
  {
    _KTLErrorPrint("ICE_FILER_write", "Error: ICE_FILER_write. Failed copyReceiveData\n");
  }

  v61 = v15[18];
  ICE_FILER_lookup_remove(a5);
  return v61;
}

void sub_297A3E870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297A3E884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  MEMORY[0x29C279C50](va1, a2, a3, a4, a5, a6, a7, a8);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ICE_FILER_write(uint64_t a1, void *a2, uint64_t a3, AriHost *a4, uint64_t a5)
{
  if (a2)
  {

    return ICE_FILER_write(a1, a2, 0, a3, a4, a5);
  }

  else
  {
    _KTLErrorPrint("ICE_FILER_write", "Error: %s. Invalid Parameter.\n", "ICE_FILER_write");
    return 0xFFFFFFFFLL;
  }
}

uint64_t ICE_FILER_read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    return ICE_FILER_read(a1, 0, a2, a3, a4, a5, a6);
  }

  else
  {
    _KTLErrorPrint("ICE_FILER_read", "Error: ICE_FILER_read. Invalid Parameter.\n", a3, a4, a5, a6, v6, v7);
    return 0xFFFFFFFFLL;
  }
}

uint64_t ICE_FILER_read(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = *MEMORY[0x29EDCA608];
  v35 = a5;
  if (a1 && a4 && (a2 == 0) != (a3 == 0))
  {
    v8 = a5;
    if (*(a1 + 8) || a5 || !*(a1 + 16))
    {
      v12 = a4;
      if (!pthread_mutex_lock(&_MergedGlobals))
      {
        v15 = off_2A13A4F40;
        if (off_2A13A4F40 == &dword_2A13A4EF0)
        {
LABEL_17:
          v17 = operator new(0x60uLL);
          *(v17 + 8) = 0;
          *v17 = v8;
          *(v17 + 1) = a3;
          *(v17 + 2) = a1;
          v18 = a2;
          if (a3)
          {
            v18 = operator new[](0xC00uLL);
          }

          *(v17 + 3) = v18;
          v17[8] = v12;
          *(v17 + 5) = v18;
          v17[12] = v12;
          *(v17 + 7) = a6;
          *(v17 + 8) = 0;
          v17[18] = 0;
          *(v17 + 10) = v15;
          *(v17 + 11) = &dword_2A13A4EF0;
          *(v15 + 11) = v17;
          off_2A13A4F40 = v17;
          _KTLDebugFlags = 13;
          pthread_mutex_unlock(&_MergedGlobals);
          if (*(a1 + 8) || !*(a1 + 16))
          {
            v29 = 0;
            v28[0] = 0;
            v28[1] = 0;
            ARI_CsiIceFilerReadReq_ENC();
            v19 = operator new(0x18uLL);
            v19[2] = 0;
            *(v19 + 2) = 0;
            *v19 = &unk_2A1E625B0;
            KTLUTASendAndReleaseData(a1, v19);
            if (!v17[18])
            {
              while (1)
              {
                if (a7)
                {
                  (*(a7 + 16))(a7, v17[8] - v17[12]);
                }

                if (!KTLUTACopyReceiveData(a1, v28))
                {
                  break;
                }

                memset(__b, 170, sizeof(__b));
                v20 = v28[0];
                v21 = (*(*v28[0] + 16))(v28[0]);
                BufCtx = AriMsg::GetBufCtx(v21, v20[2]);
                (*(*v20 + 16))(v20);
                if (ARI_CsiIceFilerReadRspCb_Extract())
                {
                  _KTLErrorPrint("ICE_FILER_read", "Error: Failed ARI_EXTRACT on copyReceiveData (Remaining=%d/%d)\n", v17[12], v17[8]);
                  v17[18] = -7;
                }

                else
                {
                  IceFilerReadRspCb(-1431655766, 2863311530, __b, BufCtx);
                }

                (*(*v20 + 8))(v20);
                if (v17[18])
                {
                  goto LABEL_40;
                }
              }

              _KTLErrorPrint("ICE_FILER_read", "Error: ICE_FILER_read. Failed copyReceiveData (Remaining=%d/%d)\n", v17[12], v17[8]);
            }

LABEL_40:
            if (a7)
            {
              (*(a7 + 16))(a7, v17[8] - v17[12]);
            }

            v27 = v17[18];
            ICE_FILER_lookup_remove(v35);
          }

          else
          {
            if (!a6)
            {
              v23 = dispatch_semaphore_create(0);
              v24 = *(v17 + 8);
              *(v17 + 8) = v23;
              if (v24)
              {
                dispatch_release(v24);
              }
            }

            v30 = MEMORY[0x29EDCA5F8];
            v31 = 0x40000000;
            v32 = ___ZL14ICE_FILER_readP10KTLOptionsPvP26TelephonyUtilTransport_tagjiPFviS1_EU13block_pointerFvjjE_block_invoke;
            v33 = &__block_descriptor_tmp_15;
            v34 = v17;
            Req_BLK = ARI_CsiIceFilerReadReq_BLK();
            if (!*(v17 + 8))
            {
              return 0xFFFFFFFFLL;
            }

            if (!Req_BLK)
            {
              v26 = dispatch_time(0, 1000000 * (*(a1 + 20) - v17[8] / 0xC00 + 8 * (v17[8] / 0xC00)));
              if (dispatch_semaphore_wait(*(v17 + 8), v26))
              {
                _KTLErrorPrint("ICE_FILER_read", "Timeout waiting for transfer to complete\n");
              }
            }

            v27 = v17[18];
            ICE_FILER_lookup_remove(v35);
          }

          return v27;
        }

        v16 = off_2A13A4F40;
        while (*v16 != v8)
        {
          v16 = *(v16 + 10);
          if (v16 == &dword_2A13A4EF0)
          {
            goto LABEL_17;
          }
        }

        pthread_mutex_unlock(&_MergedGlobals);
      }

      _KTLErrorPrint("ICE_FILER_read", "Error: ICE_FILER_read. Context Already Exists.\n");
      return 4294967291;
    }

    _KTLErrorPrint("ICE_FILER_read", "Missing required transaction ID: context_id=%x\n", a3, a4, a5, a6, a7);
  }

  else
  {
    _KTLErrorPrint("ICE_FILER_read", "Error: ICE_FILER_read. Invalid Parameter.\n");
  }

  return 0xFFFFFFFFLL;
}

uint64_t ICE_FILER_read(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {

    return ICE_FILER_read(a1, a2, 0, a3, a4, a5, 0);
  }

  else
  {
    _KTLErrorPrint("ICE_FILER_read", "Error: ICE_FILER_read. Invalid Parameter.\n", a3, a4, a5, v5, v6);
    return 0xFFFFFFFFLL;
  }
}

uint64_t ___ZL15ICE_FILER_writeP10KTLOptionsPvP26TelephonyUtilTransport_tagjiPFviS1_E_block_invoke(uint64_t a1, AriMsg *this, unsigned __int8 *a3)
{
  BufCtx = AriMsg::GetBufCtx(this, a3);
  if (ARI_CsiIceFilerWriteRspCb_Extract())
  {
    _KTLErrorPrint("ICE_FILER_write_block_invoke", "Error: ICE_FILER_write. Failed ARI_EXTRACT (Remaining=%d/%d)\n", *(*(a1 + 32) + 48), *(*(a1 + 32) + 32));
    *(*(a1 + 32) + 72) = -7;
  }

  else
  {
    IceFilerWriteRspCb(-1431655766, BufCtx);
  }

  return 0;
}

uint64_t IceFilerWriteRspCb(int a1, AriHost *a2)
{
  result = pthread_mutex_lock(&_MergedGlobals);
  if (result)
  {
    return result;
  }

  v5 = off_2A13A4F40;
  if (off_2A13A4F40 == &dword_2A13A4EF0)
  {
LABEL_5:
    _KTLErrorPrint("IceFilerWriteRspCb", "Error: IceFilerWriteRspCb. ARI Context ID %x not on Lookup Table.\n", a2);
  }

  else
  {
    while (*v5 != a2)
    {
      v5 = *(v5 + 10);
      if (v5 == &dword_2A13A4EF0)
      {
        goto LABEL_5;
      }
    }

    if (a1)
    {
      _KTLErrorPrint("IceFilerWriteRspCb", "Error: IceFilerWriteRspCb. Failure from Baseband.\n");
      v5[18] = -3;
      v6 = *(v5 + 2);
      if (!*(v6 + 8))
      {
LABEL_10:
        if (*(v6 + 16))
        {
          v7 = *(v5 + 7);
          if (v7)
          {
            v7();
            ICE_FILER_lookup_lockless_remove(a2, v8, v9);
          }

          else
          {
            v10 = *(v5 + 8);
            if (v10)
            {
              dispatch_semaphore_signal(v10);
            }
          }
        }
      }
    }

    else
    {
      v5[18] = v5[8];
      v6 = *(v5 + 2);
      if (!*(v6 + 8))
      {
        goto LABEL_10;
      }
    }
  }

  return pthread_mutex_unlock(&_MergedGlobals);
}

uint64_t ICE_FILER_lookup_remove(AriHost *a1)
{
  result = pthread_mutex_lock(&_MergedGlobals);
  if (result)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_3;
  }

  v3 = off_2A13A4F40;
  if (off_2A13A4F40 != &dword_2A13A4EF0)
  {
    while (*v3 != a1)
    {
      v3 = *(v3 + 10);
      if (v3 == &dword_2A13A4EF0)
      {
        goto LABEL_17;
      }
    }

    if (*(v3 + 1))
    {
      v4 = *(v3 + 3);
      if (v4)
      {
        operator delete[](v4);
      }
    }

    v6 = *(v3 + 10);
    v5 = *(v3 + 11);
    *(v6 + 88) = v5;
    *(v5 + 80) = v6;
    v7 = *(v3 + 8);
    if (v7)
    {
      dispatch_release(v7);
    }

    operator delete(v3);
    if (off_2A13A4F40 == &dword_2A13A4EF0)
    {
      _KTLDebugFlags = 15;
    }
  }

LABEL_17:
  result = pthread_mutex_unlock(&_MergedGlobals);
  if (a1)
  {
LABEL_3:

    return AriHost::ExitTrx(a1);
  }

  return result;
}

AriHost *ICE_FILER_lookup_lockless_remove(AriHost *result, uint64_t a2, BOOL a3)
{
  v3 = off_2A13A4F40;
  if (off_2A13A4F40 == &dword_2A13A4EF0)
  {
    goto LABEL_11;
  }

  while (*v3 != result)
  {
    v3 = *(v3 + 10);
    if (v3 == &dword_2A13A4EF0)
    {
      goto LABEL_11;
    }
  }

  v4 = result;
  if (*(v3 + 1))
  {
    v5 = *(v3 + 3);
    if (v5)
    {
      operator delete[](v5);
    }
  }

  v7 = *(v3 + 10);
  v6 = *(v3 + 11);
  *(v7 + 88) = v6;
  *(v6 + 80) = v7;
  v8 = *(v3 + 8);
  if (v8)
  {
    dispatch_release(v8);
  }

  operator delete(v3);
  result = v4;
  if (off_2A13A4F40 == &dword_2A13A4EF0)
  {
    _KTLDebugFlags = 15;
    if (!v4)
    {
      return result;
    }
  }

  else
  {
LABEL_11:
    if (!result)
    {
      return result;
    }
  }

  return AriHost::ExitTrx(result);
}

uint64_t ___ZL14ICE_FILER_readP10KTLOptionsPvP26TelephonyUtilTransport_tagjiPFviS1_EU13block_pointerFvjjE_block_invoke(uint64_t a1, AriMsg *a2, uint64_t a3)
{
  v3 = a3;
  v9 = *MEMORY[0x29EDCA608];
  memset(__b, 170, sizeof(__b));
  BufCtx = AriMsg::GetBufCtx(a2, v3);
  if (ARI_CsiIceFilerReadRspCb_Extract())
  {
    _KTLErrorPrint("ICE_FILER_read_block_invoke", "Error: Failed ARI_EXTRACT on copyReceiveData (Remaining=%d/%d)\n", *(*(a1 + 32) + 48), *(*(a1 + 32) + 32));
    *(*(a1 + 32) + 72) = -7;
  }

  else
  {
    IceFilerReadRspCb(-1431655766, 2863311530, __b, BufCtx);
  }

  return 0;
}

uint64_t IceFilerReadRspCb(int a1, uint64_t a2, const void *a3, AriHost *a4)
{
  v6 = a2;
  result = pthread_mutex_lock(&_MergedGlobals);
  if (result)
  {
    return result;
  }

  v9 = off_2A13A4F40;
  if (off_2A13A4F40 != &dword_2A13A4EF0)
  {
    while (*v9 != a4)
    {
      v9 = *(v9 + 10);
      if (v9 == &dword_2A13A4EF0)
      {
        goto LABEL_5;
      }
    }

    if (a1)
    {
      _KTLErrorPrint("IceFilerReadRspCb", "Error: IceFilerReadRspCb. Uta Failure from Baseband.\n");
      v10 = -3;
    }

    else if (a3)
    {
      if (v9[12] >= v6)
      {
        if (*(v9 + 1))
        {
          if (ICE_FILER_transport_write(v9, a3, v6) == 1)
          {
            v15 = v9[12] - v6;
            v9[12] = v15;
            if (v15)
            {
              goto LABEL_9;
            }
          }

          else
          {
            v9[18] = -6;
            v18 = v9[12] - v6;
            v9[12] = v18;
            if (v18)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
          memcpy(*(v9 + 5), a3, v6);
          *(v9 + 5) += v6;
          v17 = v9[12] - v6;
          v9[12] = v17;
          if (v17)
          {
            goto LABEL_9;
          }
        }

        v10 = v9[8];
      }

      else
      {
        _KTLErrorPrint("IceFilerReadRspCb", "Error: IceFilerReadRspCb. Buffer Overflow.\n");
        v10 = -2;
      }
    }

    else
    {
      _KTLErrorPrint("IceFilerReadRspCb", "Error: IceFilerReadRspCb. NUL p_data from Baseband.\n");
      v10 = -4;
    }

    v9[18] = v10;
LABEL_9:
    v11 = *(v9 + 2);
    if (!*(v11 + 8) && *(v11 + 16) && v9[18])
    {
      v12 = *(v9 + 7);
      if (v12)
      {
        v12();
        ICE_FILER_lookup_lockless_remove(a4, v13, v14);
      }

      else
      {
        v16 = *(v9 + 8);
        if (v16)
        {
          dispatch_semaphore_signal(v16);
        }
      }
    }

    goto LABEL_10;
  }

LABEL_5:
  _KTLErrorPrint("IceFilerReadRspCb", "Error: IceFilerReadRspCb. ARI Context ID %x not on Lookup Table.\n", a4);
LABEL_10:

  return pthread_mutex_unlock(&_MergedGlobals);
}

uint64_t ICE_FILER_transport_write(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return 1;
  }

  v5 = **(a1 + 8);
  if (v5)
  {
    while (v5())
    {
      v5 = **(a1 + 8);
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    LODWORD(v5) = 0;
  }

LABEL_9:
  _KTLErrorPrint("ICE_FILER_transport_write", "Error: TelephonyUtilTransportWrite (ret=%d, available=%d, written=%d).\n", v5, a3, 0);
  return 4294967290;
}

uint64_t ktl::KTLReceivePacket::fetchARIMsgFromTransport(uint64_t a1)
{
  if (*(a1 + 24))
  {
    _KTLDebugPrint("fetchARIMsgFromTransport", "Pulling next message from backlog\n");
    v2 = *(a1 + 24);
    *(a1 + 24) = *(v2 + 40);
    *(v2 + 40) = 0;
  }

  else
  {
    v3 = operator new(0x30uLL);
    v4 = operator new[](0x7FFFuLL);
    v3[2] = 0x7FFF;
    *(v3 + 2) = v4;
    *v3 = &unk_2A1E62D20;
    v3[6] = 0x7FFF;
    *(v3 + 4) = v4;
    *(v3 + 5) = 0;
    v5 = *(*(a1 + 8) + 8);
    if (v5)
    {
      v5();
    }

    _KTLDebugPrint("sKTLPacketCopyReceiveData", "Receive Data failed.\n");
    (*(*v3 + 8))(v3);
    _KTLErrorPrint("fetchARIMsgFromTransport", "Failed initial receive\n");
    return 0;
  }

  return v2;
}

uint64_t ktl::KTLReceivePacket::setMessageBounds(uint64_t this, unsigned int a2, int a3)
{
  *(this + 32) = *(this + 16) + a2;
  *(this + 8) = a3;
  return this;
}

uint64_t sFetchMessageRemainder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = a3;
  MEMORY[0x2A1C7C4A8]();
  if (v7)
  {
    memset(&v15[-((v6 + 15) & 0x1FFFFFFF0)], 170, v6);
  }

  _KTLDebugPrint("sFetchMessageRemainder", "Have %u bytes, expect %u more...", *(a2 + 8), a3);
  LODWORD(v8) = 0;
  if (a3)
  {
    v9 = *(a1 + 8);
    v10 = *(a1 + 20);
    v11 = &v15[-((v6 + 15) & 0x1FFFFFFF0)];
    v12 = a3;
    while (1)
    {
      v16 = 0;
      v13 = *(v9 + 8);
      if (!v13 || (v13(v9, v11, v12, &v16, 1, v10, 0) & 1) == 0)
      {
        break;
      }

      v8 = v16 + v8;
      v11 += v16;
      v12 = v12 - v16;
      if (!v12)
      {
        if (v8)
        {
          if ((_KTLDebugFlags & 2) != 0)
          {
            off_2A18991C8("Rx:", 1, &v15[-((v6 + 15) & 0x1FFFFFFF0)], v8);
          }
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    if (v8 == a3)
    {
      _KTLDebugPrint("sFetchMessageRemainder", "Success\n");
      memcpy((*(a2 + 32) + *(a2 + 8)), &v15[-((v6 + 15) & 0x1FFFFFFF0)], v6);
      *(a2 + 8) += a3;
      return 1;
    }
  }

  _KTLDebugPrint("sFetchMessageRemainder", "Failed receive of remaining packet bytes (expected=%u, actual=%u)\n", a3, v8);
  return 0;
}

void *ktl::KTLReceivePacket::append(ktl::KTLReceivePacket *this, size_t __n, unsigned __int8 *__src)
{
  v3 = __n;
  result = memcpy((*(this + 4) + *(this + 2)), __src, __n);
  *(this + 2) += v3;
  return result;
}

BOOL KTLBspSetApWakeInterval(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v27 = v4;
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
    v19 = 0;
    v28 = 0;
    v29 = v4;
    v23 = 0;
    if (!ARI_CsiIceBspSetApWakeIntervalReq_ENC() && (v6 = operator new(0x18uLL), v7 = v23, v6[2] = v28, *(v6 + 2) = v7, *v6 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v6)) && KTLUTACopyReceiveData(a1, &v19))
    {
      v8 = v19;
      (*(*v19 + 16))(v19);
      v9 = ARI_CsiIceBspSetApWakeIntervalRspCb_Extract();
      (*(*v8 + 8))(v8);
      v10 = v9 == 0;
      v11 = HIDWORD(v27);
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    return !v11 && v10;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = -1431655766;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = -1;
  v12 = dispatch_semaphore_create(0);
  v13 = v12;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  if (ARI_CsiIceBspSetApWakeIntervalReq_BLK())
  {
    v10 = 0;
    v11 = *(v24 + 6);
    v14 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v15 = dispatch_time(0, 1000000 * *(a1 + 20));
  v16 = dispatch_semaphore_wait(v13, v15);
  if (v16)
  {
    _KTLErrorPrint("KTLBspSetApWakeInterval", "Timeout waiting for response.\n");
  }

  if (v27)
  {
    AriHost::ExitTrx(v27);
  }

  v11 = *(v24 + 6);
  if (!v16)
  {
    v10 = *(v20 + 6) == 0;
    v14 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v10 = 0;
  v14 = object;
  if (object)
  {
LABEL_22:
    dispatch_release(v14);
  }

LABEL_23:
  if (v13)
  {
    dispatch_release(v13);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return !v11 && v10;
}

void sub_297A4005C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
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

uint64_t __KTLBspSetApWakeInterval_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceBspSetApWakeIntervalRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t KTLPing(uint64_t a1, BOOL *a2)
{
  *a2 = 0;
  RestoreOSMode = getRestoreOSMode();
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[2] = v5;
  v27[3] = v5;
  v27[1] = v5;
  v27[0] = v5;
  AriSdk::ARI_CsiGetCurrentBootStateReq_SDK::ARI_CsiGetCurrentBootStateReq_SDK(v27);
  v25 = 0;
  v26 = 0;
  AriSdk::MsgBase::getRawBytes();
  v6 = *(a1 + 8);
  if (!v6 && *(a1 + 16))
  {
    v14 = dispatch_semaphore_create(0);
    v15 = v14;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v24 = 0;
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    if (AriHost::Send())
    {
      v13 = 0;
      v16 = object;
      if (!object)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v17 = dispatch_time(0, 1000000 * *(a1 + 20));
      if (dispatch_semaphore_wait(v15, v17))
      {
        _KTLErrorPrint("KTLPing", "Timeout waiting for response.\n");
        v13 = 0;
        v16 = object;
        if (!object)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v13 = *(v22 + 24);
        v16 = object;
        if (!object)
        {
LABEL_22:
          _Block_object_dispose(&v21, 8);
          if (v15)
          {
            dispatch_release(v15);
          }

          goto LABEL_24;
        }
      }
    }

    dispatch_release(v16);
    goto LABEL_22;
  }

  v7 = *v25;
  v8 = v25[1] - *v25;
  v9 = *(a1 + 20);
  LODWORD(v21) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v8, v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v6;
  if (*v6 && ((v11 = v10(v6, v7, v8, &v21, 1, v9, 0), LODWORD(v10) = v21, v21 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) != 0))
  {
    v21 = 0;
    if (KTLUTACopyReceiveData(a1, &v21))
    {
      v13 = KTLPingParseAndRelease(v21, a2, RestoreOSMode);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
    v13 = 0;
  }

LABEL_24:
  v18 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  MEMORY[0x29C27A120](v27);
  return v13 & 1;
}

void sub_297A403F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, dispatch_object_t object, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (object)
  {
    dispatch_release(object);
    _Block_object_dispose(&a21, 8);
    if (!v24)
    {
LABEL_3:
      std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
      MEMORY[0x29C27A120](v25 - 128);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    _Block_object_dispose(&a21, 8);
    if (!v24)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v24);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x29C27A120](v25 - 128);
  _Unwind_Resume(a1);
}

void sub_297A4045C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x29C27A120](v24 - 128);
  _Unwind_Resume(a1);
}

uint64_t __KTLPing_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
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
  *(*(*(a1 + 32) + 8) + 24) = KTLPingParseAndRelease(v6, *(a1 + 48), *(a1 + 64));
  dispatch_semaphore_signal(*(a1 + 56));
  return 0;
}

uint64_t KTLPingParseAndRelease(unsigned int *a1, BOOL *a2, int a3)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[2] = v6;
  v11[3] = v6;
  v11[0] = v6;
  v11[1] = v6;
  v7 = (*(*a1 + 16))(a1);
  AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::ARI_CsiGetCurrentBootStateRspCb_SDK(v11, v7);
  if (AriSdk::MsgBase::getMergedGMID(v11) == 67600384)
  {
    _KTLErrorPrint("KTLPingParseAndRelease", "NACK Received\n");
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  if (AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::unpack(v11))
  {
    _KTLErrorPrint("KTLPingParseAndRelease", "Malformed response\n");
    goto LABEL_5;
  }

  v10 = (*v12 - 3) < 2;
  if (!a3)
  {
    v10 = *v12 == 4;
  }

  *a2 = v10;
  v8 = 1;
LABEL_6:
  (*(*a1 + 8))(a1);
  MEMORY[0x29C27A1F0](v11);
  return v8;
}

void __copy_helper_block_e8_32r56c25_ZTSN8dispatch9semaphoreE(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 56);
  *(a1 + 56) = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r56c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

BOOL KTLMonMemoryStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v37 = v3;
  if (!a3)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2000000000;
    v36 = -1;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2000000000;
    v32 = -1431655766;
    v23 = 0;
    v24 = &v23;
    v25 = 0x4002000000;
    v26 = __Block_byref_object_copy__6;
    v27 = __Block_byref_object_dispose__6;
    memset(v28, 170, sizeof(v28));
    v14 = dispatch_semaphore_create(0);
    v15 = v14;
    v21 = MEMORY[0x29EDCA5F8];
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    if (ARI_CsiMonMemoryStatusReq_BLK())
    {
      v11 = 0;
      v12 = *(v30 + 6);
      v16 = v24[7];
      *a3 = *(v24 + 5);
      *(a3 + 16) = v16;
      v17 = object;
      if (!object)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v18 = dispatch_time(0, 1000000 * *(a1 + 20));
      v19 = dispatch_semaphore_wait(v15, v18);
      if (v19)
      {
        _KTLErrorPrint("KTLMonMemoryStatus", "Timeout waiting for response.\n", v21, 1174405120, __KTLMonMemoryStatus_block_invoke, &__block_descriptor_tmp_3_1, &v33, &v29, &v23);
      }

      if (v37)
      {
        AriHost::ExitTrx(v37);
      }

      v12 = *(v30 + 6);
      v20 = v24[7];
      *a3 = *(v24 + 5);
      *(a3 + 16) = v20;
      if (v19)
      {
        v11 = 0;
        v17 = object;
        if (!object)
        {
LABEL_25:
          if (v15)
          {
            dispatch_release(v15);
          }

          _Block_object_dispose(&v23, 8);
          _Block_object_dispose(&v29, 8);
          _Block_object_dispose(&v33, 8);
          return !v12 && v11;
        }
      }

      else
      {
        v11 = *(v34 + 6) == 0;
        v17 = object;
        if (!object)
        {
          goto LABEL_25;
        }
      }
    }

    dispatch_release(v17);
    goto LABEL_25;
  }

  v33 = 0;
  LODWORD(v29) = v3;
  v38 = 0;
  v23 = 0;
  if (!ARI_CsiMonMemoryStatusReq_ENC() && (v7 = operator new(0x18uLL), v8 = v23, v7[2] = v38, *(v7 + 2) = v8, *v7 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v7)) && KTLUTACopyReceiveData(a1, &v33))
  {
    v9 = v33;
    (*(*v33 + 16))(v33);
    v10 = ARI_CsiMonMemoryStatusRspCb_Extract();
    (*(*v9 + 8))(v9);
    v11 = v10 == 0;
    v12 = HIDWORD(v37);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  return !v12 && v11;
}

void sub_297A40A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (object)
  {
    dispatch_release(object);
  }

  if (v24)
  {
    dispatch_release(v24);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 112), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t __KTLMonMemoryStatus_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiMonMemoryStatusRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLCddGetDebugLog(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v36 = 0;
  v3 = *(a1 + 16);
  v35 = v3;
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v7 = 1;
  }

  else
  {
    v7 = v3 == 0;
  }

  if (v7)
  {
    v25 = 0;
    LODWORD(v21) = v3;
    v37 = 0;
    v29 = 0;
    if (!ARI_CsiCddGetDebugLogReq_ENC() && (v8 = operator new(0x18uLL), v9 = v29, v8[2] = v37, *(v8 + 2) = v9, *v8 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v8)) && KTLUTACopyReceiveData(a1, &v25))
    {
      v10 = v25;
      (*(*v25 + 16))(v25);
      v11 = ARI_CsiCddGetDebugLogRspCb_Extract();
      (*(*v10 + 8))(v10);
      v12 = v11 == 0;
      v13 = v36;
      v14 = HIDWORD(v36);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v12 = 0;
    }

    *a3 = 0;
    goto LABEL_24;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3002000000;
  v32 = __Block_byref_object_copy__4;
  v33 = __Block_byref_object_dispose__5;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = -1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v16 = dispatch_semaphore_create(0);
  v17 = v16;
  object = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  if (!ARI_CsiCddGetDebugLogReq_BLK())
  {
    v18 = dispatch_time(0, 1000000 * *(a1 + 20));
    if (!dispatch_semaphore_wait(v17, v18))
    {
      *a3 = *(v22 + 6);
      v12 = *(v26 + 6) == 0;
      v13 = *(v30 + 10);
      v14 = *(v30 + 11);
      v19 = object;
      if (!object)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    _KTLErrorPrint("KTLCddGetDebugLog", "Timeout waiting for response.\n");
  }

  v12 = 0;
  *a3 = *(v22 + 6);
  v13 = *(v30 + 10);
  v14 = *(v30 + 11);
  v19 = object;
  if (object)
  {
LABEL_18:
    dispatch_release(v19);
  }

LABEL_19:
  if (v17)
  {
    dispatch_release(v17);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
LABEL_24:
  *a2 = v14;
  return !v13 && v12;
}

void sub_297A40E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_object_t object, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
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

uint64_t __KTLCddGetDebugLog_block_invoke(void *a1, AriMsg *a2, uint64_t a3)
{
  v3 = a3;
  *(*(a1[4] + 8) + 24) = ARI_CsiCddGetDebugLogRspCb_Extract();
  BufCtx = AriMsg::GetBufCtx(a2, v3);
  v7 = a1[7];
  *(*(a1[6] + 8) + 24) = BufCtx;
  dispatch_semaphore_signal(v7);
  return *(*(a1[4] + 8) + 24);
}

BOOL KTLSahGetCrashReport(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v36 = 0;
  v3 = *(a1 + 16);
  v35 = v3;
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v7 = 1;
  }

  else
  {
    v7 = v3 == 0;
  }

  if (v7)
  {
    v25 = 0;
    LODWORD(v21) = v3;
    v37 = 0;
    v29 = 0;
    if (!ARI_CsiSahGetCrashReportReq_ENC() && (v8 = operator new(0x18uLL), v9 = v29, v8[2] = v37, *(v8 + 2) = v9, *v8 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v8)) && KTLUTACopyReceiveData(a1, &v25))
    {
      v10 = v25;
      (*(*v25 + 16))(v25);
      v11 = ARI_CsiSahGetCrashReportRspCb_Extract();
      (*(*v10 + 8))(v10);
      v12 = v11 == 0;
      v13 = v36;
      v14 = HIDWORD(v36);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v12 = 0;
    }

    *a3 = 0;
    goto LABEL_24;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3002000000;
  v32 = __Block_byref_object_copy__9;
  v33 = __Block_byref_object_dispose__10;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = -1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v16 = dispatch_semaphore_create(0);
  v17 = v16;
  object = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  if (!ARI_CsiSahGetCrashReportReq_BLK())
  {
    v18 = dispatch_time(0, 1000000 * *(a1 + 20));
    if (!dispatch_semaphore_wait(v17, v18))
    {
      *a3 = *(v22 + 6);
      v12 = *(v26 + 6) == 0;
      v13 = *(v30 + 10);
      v14 = *(v30 + 11);
      v19 = object;
      if (!object)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    _KTLErrorPrint("KTLSahGetCrashReport", "Timeout waiting for response.\n");
  }

  v12 = 0;
  *a3 = *(v22 + 6);
  v13 = *(v30 + 10);
  v14 = *(v30 + 11);
  v19 = object;
  if (object)
  {
LABEL_18:
    dispatch_release(v19);
  }

LABEL_19:
  if (v17)
  {
    dispatch_release(v17);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
LABEL_24:
  *a2 = v14;
  return !v13 && v12;
}

void sub_297A4125C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_object_t object, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
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

uint64_t __KTLSahGetCrashReport_block_invoke(void *a1, AriMsg *a2, uint64_t a3)
{
  v3 = a3;
  *(*(a1[4] + 8) + 24) = ARI_CsiSahGetCrashReportRspCb_Extract();
  BufCtx = AriMsg::GetBufCtx(a2, v3);
  v7 = a1[7];
  *(*(a1[6] + 8) + 24) = BufCtx;
  dispatch_semaphore_signal(v7);
  return *(*(a1[4] + 8) + 24);
}

BOOL KTLCddGetParamDump(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v36 = 0;
  v3 = *(a1 + 16);
  v35 = v3;
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v7 = 1;
  }

  else
  {
    v7 = v3 == 0;
  }

  if (v7)
  {
    v25 = 0;
    LODWORD(v21) = v3;
    v37 = 0;
    v29 = 0;
    if (!ARI_CsiCddGetParamDumpReq_ENC() && (v8 = operator new(0x18uLL), v9 = v29, v8[2] = v37, *(v8 + 2) = v9, *v8 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v8)) && KTLUTACopyReceiveData(a1, &v25))
    {
      v10 = v25;
      (*(*v25 + 16))(v25);
      v11 = ARI_CsiCddGetParamDumpRspCb_Extract();
      (*(*v10 + 8))(v10);
      v12 = v11 == 0;
      v13 = v36;
      v14 = HIDWORD(v36);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v12 = 0;
    }

    *a3 = 0;
    goto LABEL_24;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3002000000;
  v32 = __Block_byref_object_copy__14_0;
  v33 = __Block_byref_object_dispose__15_0;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = -1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v16 = dispatch_semaphore_create(0);
  v17 = v16;
  object = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  if (!ARI_CsiCddGetParamDumpReq_BLK())
  {
    v18 = dispatch_time(0, 1000000 * *(a1 + 20));
    if (!dispatch_semaphore_wait(v17, v18))
    {
      *a3 = *(v22 + 6);
      v12 = *(v26 + 6) == 0;
      v13 = *(v30 + 10);
      v14 = *(v30 + 11);
      v19 = object;
      if (!object)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    _KTLErrorPrint("KTLCddGetParamDump", "Timeout waiting for response.\n");
  }

  v12 = 0;
  *a3 = *(v22 + 6);
  v13 = *(v30 + 10);
  v14 = *(v30 + 11);
  v19 = object;
  if (object)
  {
LABEL_18:
    dispatch_release(v19);
  }

LABEL_19:
  if (v17)
  {
    dispatch_release(v17);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
LABEL_24:
  *a2 = v14;
  return !v13 && v12;
}

void sub_297A41654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_object_t object, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
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

uint64_t __KTLCddGetParamDump_block_invoke(void *a1, AriMsg *a2, uint64_t a3)
{
  v3 = a3;
  *(*(a1[4] + 8) + 24) = ARI_CsiCddGetParamDumpRspCb_Extract();
  BufCtx = AriMsg::GetBufCtx(a2, v3);
  v7 = a1[7];
  *(*(a1[6] + 8) + 24) = BufCtx;
  dispatch_semaphore_signal(v7);
  return *(*(a1[4] + 8) + 24);
}

BOOL KTLBspSwTrap(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v22 = v3;
  if (*(a1 + 8))
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = -1;
    v10 = dispatch_semaphore_create(0);
    v11 = v10;
    v16[1] = MEMORY[0x29EDCA5F8];
    v16[2] = 1174405120;
    v16[3] = __KTLBspSwTrap_block_invoke;
    v16[4] = &__block_descriptor_tmp_19;
    v16[5] = &v18;
    object = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    if (ARI_CsiBspSwTrapReq_BLK())
    {
      goto LABEL_18;
    }

    v12 = dispatch_time(0, 1000000 * *(a1 + 20));
    v13 = dispatch_semaphore_wait(v11, v12);
    if (v13)
    {
      _KTLErrorPrint("KTLBspSwTrap", "Timeout waiting for response.\n");
    }

    if (v22)
    {
      AriHost::ExitTrx(v22);
    }

    if (v13)
    {
LABEL_18:
      v14 = 0;
      v15 = object;
      if (!object)
      {
LABEL_20:
        if (v11)
        {
          dispatch_release(v11);
        }

        _Block_object_dispose(&v18, 8);
        return v14;
      }
    }

    else
    {
      v14 = *(v19 + 6) == 0;
      v15 = object;
      if (!object)
      {
        goto LABEL_20;
      }
    }

    dispatch_release(v15);
    goto LABEL_20;
  }

  v16[0] = 0;
  v23 = 0;
  v24 = v3;
  v18 = 0;
  if (ARI_CsiBspSwTrapReq_ENC())
  {
    return 0;
  }

  v5 = operator new(0x18uLL);
  v6 = v18;
  v5[2] = v23;
  *(v5 + 2) = v6;
  *v5 = &unk_2A1E625B0;
  if (!KTLUTASendAndReleaseData(a1, v5) || !KTLUTACopyReceiveData(a1, v16))
  {
    return 0;
  }

  v7 = v16[0];
  (*(*v16[0] + 16))(v16[0]);
  v8 = ARI_CsiBspSwTrapRspCb_Extract();
  (*(*v7 + 8))(v7);
  return v8 == 0;
}

void sub_297A419BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, ...)
{
  va_start(va, object);
  if (object)
  {
    dispatch_release(object);
    if (!v16)
    {
LABEL_3:
      _Block_object_dispose(va, 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_3;
  }

  dispatch_release(v16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLBspSwTrap_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = ARI_CsiBspSwTrapRspCb_Extract();
  v5 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v4;
  dispatch_semaphore_signal(v5);
  return *(*(*(a1 + 32) + 8) + 24);
}

void __copy_helper_block_e8_32r40c25_ZTSN8dispatch9semaphoreE(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r40c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

BOOL KTLBspDebugJtagMode(uint64_t a1, uint64_t a2)
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
    if (!ARI_CsiBspDebugJtagModeReq_ENC() && (v5 = operator new(0x18uLL), v6 = v22, v5[2] = v27, *(v5 + 2) = v6, *v5 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v5)) && KTLUTACopyReceiveData(a1, &v18))
    {
      v7 = v18;
      (*(*v18 + 16))(v18);
      v8 = ARI_CsiBspDebugJtagModeRspCb_Extract();
      (*(*v7 + 8))(v7);
      v9 = v8 == 0;
      v10 = HIDWORD(v26);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    return !v10 && v9;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = -1431655766;
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

  if (ARI_CsiBspDebugJtagModeReq_BLK())
  {
    v9 = 0;
    v10 = *(v23 + 6);
    v13 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v14 = dispatch_time(0, 1000000 * *(a1 + 20));
  v15 = dispatch_semaphore_wait(v12, v14);
  if (v15)
  {
    _KTLErrorPrint("KTLBspDebugJtagMode", "Timeout waiting for response.\n");
  }

  if (v26)
  {
    AriHost::ExitTrx(v26);
  }

  v10 = *(v23 + 6);
  if (!v15)
  {
    v9 = *(v19 + 6) == 0;
    v13 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v9 = 0;
  v13 = object;
  if (object)
  {
LABEL_22:
    dispatch_release(v13);
  }

LABEL_23:
  if (v12)
  {
    dispatch_release(v12);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return !v10 && v9;
}

void sub_297A41DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
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

uint64_t __KTLBspDebugJtagMode_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiBspDebugJtagModeRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLBspSetNvItemsToState(uint64_t a1, uint64_t a2)
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
    if (!ARI_CsiBspSetNvItemsToStateReq_ENC() && (v5 = operator new(0x18uLL), v6 = v22, v5[2] = v27, *(v5 + 2) = v6, *v5 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v5)) && KTLUTACopyReceiveData(a1, &v18))
    {
      v7 = v18;
      (*(*v18 + 16))(v18);
      v8 = ARI_CsiBspSetNvItemsToStateRspCb_Extract();
      (*(*v7 + 8))(v7);
      v9 = v8 == 0;
      v10 = HIDWORD(v26);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    return !v10 && v9;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = -1431655766;
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

  if (ARI_CsiBspSetNvItemsToStateReq_BLK())
  {
    v9 = 0;
    v10 = *(v23 + 6);
    v13 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v14 = dispatch_time(0, 1000000 * *(a1 + 20));
  v15 = dispatch_semaphore_wait(v12, v14);
  if (v15)
  {
    _KTLErrorPrint("KTLBspSetNvItemsToState", "Timeout waiting for response.\n");
  }

  if (v26)
  {
    AriHost::ExitTrx(v26);
  }

  v10 = *(v23 + 6);
  if (!v15)
  {
    v9 = *(v19 + 6) == 0;
    v13 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v9 = 0;
  v13 = object;
  if (object)
  {
LABEL_22:
    dispatch_release(v13);
  }

LABEL_23:
  if (v12)
  {
    dispatch_release(v12);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return !v10 && v9;
}

void sub_297A42118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
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

uint64_t __KTLBspSetNvItemsToState_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiBspSetNvItemsToStateRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLBspShutdown(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v22 = v3;
  if (*(a1 + 8))
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = -1;
    v10 = dispatch_semaphore_create(0);
    v11 = v10;
    v16[1] = MEMORY[0x29EDCA5F8];
    v16[2] = 1174405120;
    v16[3] = __KTLBspShutdown_block_invoke;
    v16[4] = &__block_descriptor_tmp_28;
    v16[5] = &v18;
    object = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    if (ARI_CsiBspShutdownReq_BLK())
    {
      goto LABEL_18;
    }

    v12 = dispatch_time(0, 1000000 * *(a1 + 20));
    v13 = dispatch_semaphore_wait(v11, v12);
    if (v13)
    {
      _KTLErrorPrint("KTLBspShutdown", "Timeout waiting for response.\n");
    }

    if (v22)
    {
      AriHost::ExitTrx(v22);
    }

    if (v13)
    {
LABEL_18:
      v14 = 0;
      v15 = object;
      if (!object)
      {
LABEL_20:
        if (v11)
        {
          dispatch_release(v11);
        }

        _Block_object_dispose(&v18, 8);
        return v14;
      }
    }

    else
    {
      v14 = *(v19 + 6) == 0;
      v15 = object;
      if (!object)
      {
        goto LABEL_20;
      }
    }

    dispatch_release(v15);
    goto LABEL_20;
  }

  v16[0] = 0;
  v23 = 0;
  v24 = v3;
  v18 = 0;
  if (ARI_CsiBspShutdownReq_ENC())
  {
    return 0;
  }

  v5 = operator new(0x18uLL);
  v6 = v18;
  v5[2] = v23;
  *(v5 + 2) = v6;
  *v5 = &unk_2A1E625B0;
  if (!KTLUTASendAndReleaseData(a1, v5) || !KTLUTACopyReceiveData(a1, v16))
  {
    return 0;
  }

  v7 = v16[0];
  (*(*v16[0] + 16))(v16[0]);
  v8 = ARI_CsiBspShutdownRspCb_Extract();
  (*(*v7 + 8))(v7);
  return v8 == 0;
}

void sub_297A42444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, ...)
{
  va_start(va, object);
  if (object)
  {
    dispatch_release(object);
    if (!v16)
    {
LABEL_3:
      _Block_object_dispose(va, 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_3;
  }

  dispatch_release(v16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLBspShutdown_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = ARI_CsiBspShutdownRspCb_Extract();
  v5 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v4;
  dispatch_semaphore_signal(v5);
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLSysGetInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    _KTLErrorPrint("KTLSysGetInfo", "System Information Parameter is missing.\n");
    return 0;
  }

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
    v11 = dispatch_semaphore_create(0);
    v12 = v11;
    v18[1] = MEMORY[0x29EDCA5F8];
    v18[2] = 1174405120;
    v18[3] = __KTLSysGetInfo_block_invoke;
    v18[4] = &__block_descriptor_tmp_30_0;
    v18[5] = &v20;
    v18[6] = a3;
    object = v11;
    if (v11)
    {
      dispatch_retain(v11);
    }

    if (ARI_CsiSysGetInfoReqV2_BLK())
    {
      goto LABEL_21;
    }

    v13 = dispatch_time(0, 1000000 * *(a1 + 20));
    v14 = dispatch_semaphore_wait(v12, v13);
    if (v14)
    {
      _KTLErrorPrint("KTLSysGetInfo", "Timeout waiting for response.\n");
    }

    if (v24)
    {
      AriHost::ExitTrx(v24);
    }

    if (v14)
    {
LABEL_21:
      v15 = 0;
      v16 = object;
      if (!object)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v15 = *(v21 + 6) == 0;
      v16 = object;
      if (!object)
      {
LABEL_23:
        if (v12)
        {
          dispatch_release(v12);
        }

        _Block_object_dispose(&v20, 8);
        if (v15)
        {
          return *(a3 + 516) == 0;
        }

        return 0;
      }
    }

    dispatch_release(v16);
    goto LABEL_23;
  }

  v18[0] = 0;
  v25 = 0;
  v26 = v5;
  v20 = 0;
  if (!ARI_CsiSysGetInfoReqV2_ENC())
  {
    v7 = operator new(0x18uLL);
    v8 = v20;
    v7[2] = v25;
    *(v7 + 2) = v8;
    *v7 = &unk_2A1E625B0;
    if (KTLUTASendAndReleaseData(a1, v7))
    {
      if (KTLUTACopyReceiveData(a1, v18))
      {
        v9 = v18[0];
        (*(*v18[0] + 16))(v18[0]);
        v10 = ARI_CsiSysGetInfoRspCbV2_Extract();
        (*(*v9 + 8))(v9);
        if (!v10)
        {
          return *(a3 + 516) == 0;
        }
      }
    }
  }

  return 0;
}

void sub_297A42790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, ...)
{
  va_start(va, object);
  if (object)
  {
    dispatch_release(object);
    if (!v16)
    {
LABEL_3:
      _Block_object_dispose(va, 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_3;
  }

  dispatch_release(v16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLSysGetInfo_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiSysGetInfoRspCbV2_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

void __copy_helper_block_e8_32r48c25_ZTSN8dispatch9semaphoreE(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r48c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

BOOL KTLBspGetCalibrationStatus(uint64_t a1, _DWORD *a2)
{
  v34 = 0;
  v2 = *(a1 + 16);
  v33 = v2;
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = v2 == 0;
  }

  if (!v5)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2000000000;
    v32 = -1431655766;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2000000000;
    v28 = -1431655766;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v24 = -1;
    v14 = dispatch_semaphore_create(0);
    v15 = v14;
    v19 = MEMORY[0x29EDCA5F8];
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    if (ARI_CsiBspGetCalibrationStatusReq_BLK())
    {
      v10 = 0;
      v11 = *(v30 + 6);
      v12 = *(v26 + 6);
      v16 = object;
      if (!object)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v17 = dispatch_time(0, 1000000 * *(a1 + 20));
      v18 = dispatch_semaphore_wait(v15, v17);
      if (v18)
      {
        _KTLErrorPrint("KTLBspGetCalibrationStatus", "Timeout waiting for response.\n", v19, 1174405120, __KTLBspGetCalibrationStatus_block_invoke, &__block_descriptor_tmp_33, &v21, &v29, &v25);
      }

      if (v33)
      {
        AriHost::ExitTrx(v33);
      }

      v11 = *(v30 + 6);
      v12 = *(v26 + 6);
      if (v18)
      {
        v10 = 0;
        v16 = object;
        if (!object)
        {
LABEL_25:
          if (v15)
          {
            dispatch_release(v15);
          }

          _Block_object_dispose(&v21, 8);
          _Block_object_dispose(&v25, 8);
          _Block_object_dispose(&v29, 8);
          goto LABEL_28;
        }
      }

      else
      {
        v10 = *(v22 + 6) == 0;
        v16 = object;
        if (!object)
        {
          goto LABEL_25;
        }
      }
    }

    dispatch_release(v16);
    goto LABEL_25;
  }

  v25 = 0;
  LODWORD(v21) = v2;
  v35 = 0;
  v29 = 0;
  if (!ARI_CsiBspGetCalibrationStatusReq_ENC() && (v6 = operator new(0x18uLL), v7 = v29, v6[2] = v35, *(v6 + 2) = v7, *v6 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v6)) && KTLUTACopyReceiveData(a1, &v25))
  {
    v8 = v25;
    (*(*v25 + 16))(v25);
    v9 = ARI_CsiBspGetCalibrationStatusRspCb_Extract();
    (*(*v8 + 8))(v8);
    v10 = v9 == 0;
    v12 = v34;
    v11 = HIDWORD(v34);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

LABEL_28:
  *a2 = v12;
  return !v11 && v10;
}

void sub_297A42BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
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
  _Block_object_dispose((v21 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLBspGetCalibrationStatus_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiBspGetCalibrationStatusRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLBspStateGet(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 16);
  v33 = v3;
  v34 = -1;
  if (!a3)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2000000000;
    v32 = -1431655766;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2000000000;
    v28 = -1;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v24 = -1431655766;
    v14 = dispatch_semaphore_create(0);
    v15 = v14;
    v19 = MEMORY[0x29EDCA5F8];
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    if (ARI_CsiBspStateGetReq_BLK())
    {
      v11 = 0;
      v12 = *(v30 + 6);
      *a3 = *(v22 + 6);
      v16 = object;
      if (!object)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v17 = dispatch_time(0, 1000000 * *(a1 + 20));
      v18 = dispatch_semaphore_wait(v15, v17);
      if (v18)
      {
        _KTLErrorPrint("KTLBspStateGet", "Timeout waiting for response.\n", v19, 1174405120, __KTLBspStateGet_block_invoke, &__block_descriptor_tmp_36, &v25, &v29, &v21);
      }

      if (v33)
      {
        AriHost::ExitTrx(v33);
      }

      v12 = *(v30 + 6);
      *a3 = *(v22 + 6);
      if (v18)
      {
        v11 = 0;
        v16 = object;
        if (!object)
        {
LABEL_25:
          if (v15)
          {
            dispatch_release(v15);
          }

          _Block_object_dispose(&v21, 8);
          _Block_object_dispose(&v25, 8);
          _Block_object_dispose(&v29, 8);
          return !v12 && v11;
        }
      }

      else
      {
        v11 = *(v26 + 6) == 0;
        v16 = object;
        if (!object)
        {
          goto LABEL_25;
        }
      }
    }

    dispatch_release(v16);
    goto LABEL_25;
  }

  v25 = 0;
  LODWORD(v21) = v3;
  v35 = 0;
  v29 = 0;
  if (!ARI_CsiBspStateGetReq_ENC() && (v7 = operator new(0x18uLL), v8 = v29, v7[2] = v35, *(v7 + 2) = v8, *v7 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v7)) && KTLUTACopyReceiveData(a1, &v25))
  {
    v9 = v25;
    (*(*v25 + 16))(v25);
    v10 = ARI_CsiBspStateGetRspCb_Extract();
    (*(*v9 + 8))(v9);
    v11 = v10 == 0;
    v12 = v34;
  }

  else
  {
    v11 = 0;
    v12 = -1;
  }

  return !v12 && v11;
}

void sub_297A42FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
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
  _Block_object_dispose((v21 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLBspStateGet_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiBspStateGetRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLBspStateSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v27 = v4;
  v28 = -1;
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
    v19 = 0;
    v29 = 0;
    v30 = v4;
    v23 = 0;
    if (!ARI_CsiBspStateSetReq_ENC() && (v6 = operator new(0x18uLL), v7 = v23, v6[2] = v29, *(v6 + 2) = v7, *v6 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v6)) && KTLUTACopyReceiveData(a1, &v19))
    {
      v8 = v19;
      (*(*v19 + 16))(v19);
      v9 = ARI_CsiBspStateSetRspCb_Extract();
      (*(*v8 + 8))(v8);
      v10 = v9 == 0;
      v11 = v28;
    }

    else
    {
      v10 = 0;
      v11 = -1;
    }

    return !v11 && v10;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = -1431655766;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = -1;
  v12 = dispatch_semaphore_create(0);
  v13 = v12;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  if (ARI_CsiBspStateSetReq_BLK())
  {
    v10 = 0;
    v11 = *(v24 + 6);
    v14 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v15 = dispatch_time(0, 1000000 * *(a1 + 20));
  v16 = dispatch_semaphore_wait(v13, v15);
  if (v16)
  {
    _KTLErrorPrint("KTLBspStateSet", "Timeout waiting for response.\n");
  }

  if (v27)
  {
    AriHost::ExitTrx(v27);
  }

  v11 = *(v24 + 6);
  if (!v16)
  {
    v10 = *(v20 + 6) == 0;
    v14 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v10 = 0;
  v14 = object;
  if (object)
  {
LABEL_22:
    dispatch_release(v14);
  }

LABEL_23:
  if (v13)
  {
    dispatch_release(v13);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return !v11 && v10;
}

void sub_297A43338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
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

uint64_t __KTLBspStateSet_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiBspStateSetRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t KTLBspIceAtStringWrite(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  *(a2 + 3076) = *(a1 + 20);
  *(a2 + 3080) = 1;
  if (ARI_CsiIceAtExtReq_ENC())
  {
    return 0;
  }

  v4 = operator new(0x18uLL);
  v4[2] = 0;
  *(v4 + 2) = 0;
  *v4 = &unk_2A1E625B0;
  return KTLUTASendAndReleaseData(a1, v4);
}

BOOL KTLBspIceAtString()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v46 = *MEMORY[0x29EDCA608];
  v39 = 0;
  v7 = *(v0 + 16);
  v6 = *(v0 + 20);
  v3[769] = v6;
  v3[770] = 1;
  if (*(v0 + 8))
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (v8)
  {
    v34 = 0;
    memset(__b, 170, 0xC0CuLL);
    bzero(__src, 0xC0CuLL);
    v9 = dispatch_time(0, 1000000 * v6);
    LODWORD(v30) = v7;
    __dst = 0;
    if (ARI_CsiIceAtExtReq_ENC())
    {
      v10 = 0;
    }

    else
    {
      v17 = operator new(0x18uLL);
      v18 = __dst;
      v17[2] = 0;
      *(v17 + 2) = v18;
      *v17 = &unk_2A1E625B0;
      v10 = KTLUTASendAndReleaseData(v5, v17);
    }

    while (1)
    {
      if ((v10 & 1) == 0)
      {
LABEL_38:
        v15 = 0;
        return !v39 && v15;
      }

      if (KTLUTACopyReceiveData(v5, &v34))
      {
        v19 = v34;
        (*(*v34 + 16))(v34);
        v20 = ARI_CsiIceAtExtRsp_Extract();
        (*(*v19 + 8))(v19);
        v10 = v20 == 0;
        if (!(v20 | v39))
        {
          v21 = LODWORD(__b[384]);
          if (LODWORD(__b[384]))
          {
            v22 = 0;
            do
            {
              if (!*(__b + v22))
              {
                _KTLDebugPrint("KTLBspIceAtString", "Embedded null found in AT response at buffer offset %u\n", v22);
                *(__b + v22) = 32;
                v21 = LODWORD(__b[384]);
              }

              ++v22;
            }

            while (v22 < v21);
          }

          else
          {
            v21 = 0;
          }

          fwrite(__b, 1uLL, v21, v2);
          fflush(v2);
          __dst = 0;
          p_dst = 0;
          v23 = LODWORD(__src[192]);
          if (LODWORD(__src[192]) <= 7)
          {
            memcpy(&__dst, __src, LODWORD(__src[192]));
          }

          else
          {
            __dst = *&v38[LODWORD(__src[192])];
            v23 = 8;
          }

          v24 = LODWORD(__b[384]);
          if (LODWORD(__b[384]) >= 8)
          {
            v25 = 8;
          }

          else
          {
            v25 = LODWORD(__b[384]);
          }

          memcpy(&__dst + v23, __b, v25);
          if (strnstr(__b, "\r\nOK\r\n", v24) || strnstr(__b, "\r\nERROR\r\n", LODWORD(__b[384])) || strnstr(&__dst, "\r\nOK\r\n", 0x10uLL) || strnstr(&__dst, "\r\nERROR\r\n", 0x10uLL))
          {
            v15 = 1;
            return !v39 && v15;
          }

          memcpy(__src, __b, 0xC0CuLL);
          v10 = 1;
        }
      }

      else
      {
        v10 = 0;
      }

      if (dispatch_time(0, 0) > v9)
      {
        goto LABEL_38;
      }
    }
  }

  __dst = 0;
  p_dst = &__dst;
  v44 = 0x2000000000;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = -1;
  __b[0] = 0;
  __b[1] = __b;
  __b[2] = 0xC3802000000;
  __b[3] = __Block_byref_object_copy__40;
  __b[4] = __Block_byref_object_dispose__41;
  bzero(&__b[5], 0xC0CuLL);
  v11 = dispatch_semaphore_create(0);
  *&__src[4] = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __src[2] = v12;
  __src[3] = v12;
  __src[0] = v12;
  __src[1] = v12;
  AriSdk::ARI_CsiIceAtExtReq_SDK::ARI_CsiIceAtExtReq_SDK(__src);
  v13 = operator new(0xC0CuLL);
  memcpy(v13, v4, 0xC0CuLL);
  v14 = *&__src[4];
  *&__src[4] = v13;
  if (v14)
  {
    operator delete(v14);
  }

  AriSdk::MsgBase::getRawBytes();
  if (v11)
  {
    dispatch_retain(v11);
  }

  if (AriHost::StartStream())
  {
    v15 = 0;
    v39 = *(v35 + 6);
    v16 = v11;
    if (!v11)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v26 = dispatch_time(0, 1000000 * *(v5 + 20));
  v27 = dispatch_semaphore_wait(v11, v26);
  if (v27)
  {
    _KTLErrorPrint("KTLBspIceAtString", "Timeout waiting for response.\n");
  }

  v28 = *(p_dst + 6);
  if (v28)
  {
    AriHost::EndStream(v28);
  }

  v39 = *(v35 + 6);
  if (!v27)
  {
    v15 = *(v31 + 6) == 0;
    v16 = v11;
    if (!v11)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v15 = 0;
  v16 = v11;
  if (v11)
  {
LABEL_45:
    dispatch_release(v16);
  }

LABEL_46:
  MEMORY[0x29C279B90](__src);
  if (v11)
  {
    dispatch_release(v11);
  }

  _Block_object_dispose(__b, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&__dst, 8);
  return !v39 && v15;
}

void sub_297A43AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, NSObject *object, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (object)
  {
    dispatch_release(object);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a22);
  MEMORY[0x29C279B90](&a33);
  if (v33)
  {
    dispatch_release(v33);
  }

  _Block_object_dispose(&STACK[0xCD0], 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v34 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLBspIceAtString_block_invoke(uint64_t a1, AriMsg *a2, uint64_t a3)
{
  v3 = a3;
  *&__b[771] = *MEMORY[0x29EDCA608];
  memset(__b, 170, 0xC0CuLL);
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceAtExtRsp_Extract();
  result = *(*(*(a1 + 32) + 8) + 24);
  if (!result)
  {
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      return 0;
    }

    *(*(*(a1 + 48) + 8) + 24) = AriMsg::GetBufCtx(a2, v3);
    v7 = __b[768];
    if (__b[768])
    {
      v8 = 0;
      do
      {
        if (!*(__b + v8))
        {
          _KTLDebugPrint("KTLBspIceAtString_block_invoke", "Embedded null found in AT response at buffer offset %u\n", v8);
          *(__b + v8) = 32;
          v7 = __b[768];
        }

        ++v8;
      }

      while (v8 < v7);
    }

    else
    {
      v7 = 0;
    }

    fwrite(__b, 1uLL, v7, *(a1 + 64));
    fflush(*(a1 + 64));
    __dst[0] = 0;
    __dst[1] = 0;
    v9 = *(*(a1 + 56) + 8);
    v10 = (v9 + 40);
    v11 = *(v9 + 3112);
    if (v11 <= 7)
    {
      memcpy(__dst, v10, *(v9 + 3112));
    }

    else
    {
      __dst[0] = *&v10[v11 - 8];
      v11 = 8;
    }

    v12 = __b[768];
    if (__b[768] >= 8u)
    {
      v13 = 8;
    }

    else
    {
      v13 = __b[768];
    }

    memcpy(__dst + v11, __b, v13);
    if (strnstr(__b, "\r\nOK\r\n", v12))
    {
      goto LABEL_21;
    }

    if (!strnstr(__b, "\r\nERROR\r\n", __b[768]))
    {
      if (strnstr(__dst, "\r\nOK\r\n", 0x10uLL))
      {
        goto LABEL_21;
      }

      if (!strnstr(__dst, "\r\nERROR\r\n", 0x10uLL))
      {
        goto LABEL_22;
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = -1;
LABEL_21:
    dispatch_semaphore_signal(*(a1 + 72));
LABEL_22:
    memcpy((*(*(a1 + 56) + 8) + 40), __b, 0xC0CuLL);
    return *(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

void __copy_helper_block_e8_32r40r48r56r72c25_ZTSN8dispatch9semaphoreE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 8);
  _Block_object_assign(a1 + 5, *(a2 + 40), 8);
  _Block_object_assign(a1 + 6, *(a2 + 48), 8);
  _Block_object_assign(a1 + 7, *(a2 + 56), 8);
  v4 = *(a2 + 72);
  a1[9] = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r40r48r56r72c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 72);
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

uint64_t KTLGetIMEIInfo(uint64_t a1, int a2, const void *a3)
{
  if (!a1 || !a3)
  {
    _KTLErrorPrint("KTLGetIMEIInfo", "opt(%p) or respParam(%p) is NULL\n", a1, a3);
    v16 = 0;
    return v16 & 1;
  }

  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[2] = v6;
  v30[3] = v6;
  v30[0] = v6;
  v30[1] = v6;
  AriSdk::ARI_CsiMsCpsReadImeiReq_SDK::ARI_CsiMsCpsReadImeiReq_SDK(v30);
  v7 = operator new(4uLL);
  *v7 = a2;
  v8 = __p;
  __p = v7;
  if (v8)
  {
    operator delete(v8);
  }

  v28 = 0;
  v29 = 0;
  AriSdk::MsgBase::getRawBytes();
  v9 = *(a1 + 8);
  if (v9 || !*(a1 + 16))
  {
    v10 = *v28;
    v11 = v28[1] - *v28;
    v12 = *(a1 + 20);
    LODWORD(v24) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v11, v12);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v10, v11);
    }

    v13 = *v9;
    if (*v9 && ((v14 = v13(v9, v10, v11, &v24, 1, v12, 0), LODWORD(v13) = v24, v24 == v11) ? (v15 = v14) : (v15 = 0), (v15 & 1) != 0))
    {
      v24 = 0;
      if (KTLUTACopyReceiveData(a1, &v24))
      {
        v16 = KTLGetIMEIInfoParseAndRelease(v24, a3);
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v11, v13);
      v16 = 0;
    }

    goto LABEL_29;
  }

  v17 = dispatch_semaphore_create(0);
  v18 = v17;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  object = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  if (AriHost::Send())
  {
    _KTLErrorPrint("KTLGetIMEIInfo", "Failed to send the message of CsiMsCpsReadImeiReq.\n");
    goto LABEL_25;
  }

  v19 = dispatch_time(0, 1000000 * *(a1 + 20));
  if (dispatch_semaphore_wait(v18, v19))
  {
    _KTLErrorPrint("KTLGetIMEIInfo", "Timeout waiting for response.\n");
LABEL_25:
    v16 = 0;
    v20 = object;
    if (!object)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v16 = *(v25 + 24);
  v20 = object;
  if (object)
  {
LABEL_26:
    dispatch_release(v20);
  }

LABEL_27:
  _Block_object_dispose(&v24, 8);
  if (v18)
  {
    dispatch_release(v18);
  }

LABEL_29:
  v21 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  MEMORY[0x29C279C70](v30);
  return v16 & 1;
}

void sub_297A441FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&a19, 8);
  if (v24)
  {
    dispatch_release(v24);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
    MEMORY[0x29C279C70](va);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
  MEMORY[0x29C279C70](va);
  _Unwind_Resume(a1);
}

uint64_t __KTLGetIMEIInfo_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
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
  *(*(*(a1 + 32) + 8) + 24) = KTLGetIMEIInfoParseAndRelease(v6, *(a1 + 48));
  dispatch_semaphore_signal(*(a1 + 56));
  return 0;
}

BOOL KTLGetIMEIInfoParseAndRelease(unsigned int *a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v4;
  v11 = v4;
  v9[2] = v4;
  v9[3] = v4;
  v9[0] = v4;
  v9[1] = v4;
  v5 = (*(*a1 + 16))(a1);
  AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK::ARI_CsiMsCpsReadImeiRspCb_SDK(v9, v5);
  if (AriSdk::MsgBase::getMergedGMID(v9) == 67600384)
  {
    _KTLErrorPrint("KTLGetIMEIInfoParseAndRelease", "NACK Received\n");
  }

  v6 = AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK::unpack(v9);
  if (v6)
  {
    _KTLErrorPrint("KTLGetIMEIInfoParseAndRelease", "Failed to unpack response.\n");
  }

  else
  {
    v7 = *(*(&v10 + 1) + 16);
    *a2 = **(&v10 + 1);
    *(a2 + 16) = v7;
  }

  (*(*a1 + 8))(a1);
  MEMORY[0x29C279E70](v9);
  return v6 == 0;
}

BOOL KTLGetMEIDInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[3] = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 16);
  v27 = v5;
  v28 = a2;
  if (*(a1 + 8))
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (v6)
  {
    v25[0] = 0;
    LODWORD(v21) = v5;
    v29 = 0;
    v30 = 0;
    if (ARI_CsiMsCpsReadMeidReq_ENC())
    {
      return 0;
    }

    v7 = operator new(0x18uLL);
    v8 = v30;
    v7[2] = v29;
    *(v7 + 2) = v8;
    *v7 = &unk_2A1E625B0;
    if (!KTLUTASendAndReleaseData(a1, v7) || !KTLUTACopyReceiveData(a1, v25))
    {
      return 0;
    }

    v9 = v25[0];
    (*(*v25[0] + 16))(v25[0]);
    v10 = ARI_CsiMsCpsReadMeidRspCb_Extract();
    (*(*v9 + 8))(v9);
    return v10 == 0;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x4002000000;
  v33 = __Block_byref_object_copy__51;
  v34 = __Block_byref_object_dispose__52;
  memset(v35, 170, 24);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2000000000;
  v26 = -1431655766;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = -1;
  v12 = dispatch_semaphore_create(0);
  v13 = v12;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  if (!ARI_CsiMsCpsReadMeidReq_BLK())
  {
    v17 = dispatch_time(0, 1000000 * *(a1 + 20));
    v18 = dispatch_semaphore_wait(v13, v17);
    if (v18)
    {
      _KTLErrorPrint("KTLGetMEIDInfo", "Timeout waiting for response.\n");
    }

    if (v27)
    {
      AriHost::ExitTrx(v27);
    }

    v19 = v31[7];
    *a3 = *(v31 + 5);
    *(a3 + 16) = v19;
    if (v18)
    {
      v11 = 0;
      v15 = object;
      if (!object)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = *(v22 + 6) == 0;
      v15 = object;
      if (!object)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  v11 = 0;
  v14 = v31[7];
  *a3 = *(v31 + 5);
  *(a3 + 16) = v14;
  v15 = object;
  if (object)
  {
LABEL_14:
    dispatch_release(v15);
  }

LABEL_15:
  if (v13)
  {
    dispatch_release(v13);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v30, 8);
  return v11;
}

void sub_297A447EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_object_t object, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
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

  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 136), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__51(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t __KTLGetMEIDInfo_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiMsCpsReadMeidRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t KTLBmmProvideBootTimeInfo(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26[2] = v4;
    v26[3] = v4;
    v26[0] = v4;
    v26[1] = v4;
    AriSdk::ARI_CsiBmmProvideBootTimeInfoReq_SDK::ARI_CsiBmmProvideBootTimeInfoReq_SDK(v26);
    v24 = 0;
    v25 = 0;
    AriSdk::MsgBase::getRawBytes();
    v5 = *(a1 + 8);
    if (v5 || !*(a1 + 16))
    {
      v6 = *v24;
      v7 = v24[1] - *v24;
      v8 = *(a1 + 20);
      LODWORD(v20) = 0;
      _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v7, v8);
      if ((_KTLDebugFlags & 2) != 0)
      {
        off_2A18991C8("Tx:", 0, v6, v7);
      }

      v9 = *v5;
      if (!*v5 || ((v10 = v9(v5, v6, v7, &v20, 1, v8, 0), LODWORD(v9) = v20, v20 == v7) ? (v11 = v10) : (v11 = 0), (v11 & 1) == 0))
      {
        _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v7, v9);
        goto LABEL_14;
      }

      v20 = 0;
      if (!KTLUTACopyReceiveData(a1, &v20) || !KTLBmmProvideBootTimeInfoParseAndRelease(v20, v2))
      {
LABEL_14:
        v2 = 0;
        v12 = v25;
        if (!v25)
        {
LABEL_17:
          MEMORY[0x29C27A250](v26);
          return v2;
        }

LABEL_15:
        if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }

        goto LABEL_17;
      }

LABEL_28:
      if (!*(v2 + 3600))
      {
        v2 = *(v2 + 3604) == 0;
        v12 = v25;
        if (!v25)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v14 = dispatch_semaphore_create(0);
    v15 = v14;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    if (AriHost::Send())
    {
      _KTLErrorPrint("KTLBmmProvideBootTimeInfo", "Failed to send the message of CsiBmmProvideBootTimeInfoReq.\n");
      v16 = 0;
      v17 = object;
      if (!object)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v18 = dispatch_time(0, 1000000 * *(a1 + 20));
    if (dispatch_semaphore_wait(v15, v18))
    {
      _KTLErrorPrint("KTLBmmProvideBootTimeInfo", "Timeout waiting for response.\n");
      v16 = 0;
      v17 = object;
      if (!object)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v16 = *(v21 + 24);
      v17 = object;
      if (!object)
      {
LABEL_25:
        _Block_object_dispose(&v20, 8);
        if (v15)
        {
          dispatch_release(v15);
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_28;
      }
    }

LABEL_24:
    dispatch_release(v17);
    goto LABEL_25;
  }

  return v2;
}

void sub_297A44BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (object)
  {
    dispatch_release(object);
    _Block_object_dispose(&a19, 8);
    if (!v24)
    {
LABEL_3:
      std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
      MEMORY[0x29C27A250](va);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    _Block_object_dispose(&a19, 8);
    if (!v24)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v24);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
  MEMORY[0x29C27A250](va);
  _Unwind_Resume(a1);
}

void sub_297A44C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va1, a22);
  va_start(va, a22);
  v23 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x29C27A250](va1);
  _Unwind_Resume(a1);
}

uint64_t __KTLBmmProvideBootTimeInfo_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
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
  *(*(*(a1 + 32) + 8) + 24) = KTLBmmProvideBootTimeInfoParseAndRelease(v6, *(a1 + 48));
  dispatch_semaphore_signal(*(a1 + 56));
  return 0;
}

BOOL KTLBmmProvideBootTimeInfoParseAndRelease(unsigned int *a1, void *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__src = v4;
  v10 = v4;
  v8[2] = v4;
  v8[3] = v4;
  v8[0] = v4;
  v8[1] = v4;
  v5 = (*(*a1 + 16))(a1);
  AriSdk::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK(v8, v5);
  if (AriSdk::MsgBase::getMergedGMID(v8) == 67600384)
  {
    _KTLErrorPrint("KTLBmmProvideBootTimeInfoParseAndRelease", "NACK Received\n");
  }

  v6 = AriSdk::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK::unpack(v8);
  if (v6)
  {
    _KTLErrorPrint("KTLBmmProvideBootTimeInfoParseAndRelease", "Failed to unpack response.\n");
  }

  else
  {
    memcpy(a2, __src[0], 0xE1CuLL);
  }

  (*(*a1 + 8))(a1);
  MEMORY[0x29C27A310](v8);
  return v6 == 0;
}

uint64_t KTLTriggerDelayedResponse(uint64_t a1, unsigned int a2)
{
  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[2] = v4;
  v28[3] = v4;
  v28[0] = v4;
  v28[1] = v4;
  AriSdk::ARI_CsiDelayedOutstandingReq_SDK::ARI_CsiDelayedOutstandingReq_SDK(v28);
  v5 = operator new(4uLL);
  *v5 = a2;
  v6 = __p;
  __p = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v26 = 0;
  v27 = 0;
  AriSdk::MsgBase::getRawBytes();
  v7 = *(a1 + 8);
  if (v7 || !*(a1 + 16))
  {
    v8 = *v26;
    v9 = v26[1] - *v26;
    v10 = *(a1 + 20);
    LODWORD(v22) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v9, v10);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v8, v9);
    }

    v11 = *v7;
    if (*v7 && ((v12 = v11(v7, v8, v9, &v22, 1, v10, 0), LODWORD(v11) = v22, v22 == v9) ? (v13 = v12) : (v13 = 0), (v13 & 1) != 0))
    {
      v22 = 0;
      if (KTLUTACopyReceiveData(a1, &v22))
      {
        v14 = KTLTriggerDelayedResponseParseAndRelease(v22);
        v15 = v27;
        if (!v27)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v14 = 0;
        v15 = v27;
        if (!v27)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v9, v11);
      v14 = 0;
      v15 = v27;
      if (!v27)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_25;
  }

  v16 = dispatch_semaphore_create(0);
  v17 = v16;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  object = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  AriHost::Send();
  v18 = dispatch_time(0, 1000000 * *(a1 + 20));
  if (dispatch_semaphore_wait(v17, v18))
  {
    _KTLErrorPrint("KTLTriggerDelayedResponse", "Timeout waiting for response.\n");
    v14 = 0;
    v19 = object;
    if (!object)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v14 = *(v23 + 24);
  v19 = object;
  if (object)
  {
LABEL_21:
    dispatch_release(v19);
  }

LABEL_22:
  _Block_object_dispose(&v22, 8);
  if (v17)
  {
    dispatch_release(v17);
  }

  v15 = v27;
  if (v27)
  {
LABEL_25:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_27:
  MEMORY[0x29C27A090](v28);
  return v14 & 1;
}

void sub_297A45158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&a19, 8);
  if (v24)
  {
    dispatch_release(v24);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
    MEMORY[0x29C27A090](va);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
  MEMORY[0x29C27A090](va);
  _Unwind_Resume(a1);
}

uint64_t __KTLTriggerDelayedResponse_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
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
  *(*(*(a1 + 32) + 8) + 24) = KTLTriggerDelayedResponseParseAndRelease(v6);
  dispatch_semaphore_signal(*(a1 + 48));
  return 0;
}

uint64_t KTLTriggerDelayedResponseParseAndRelease(unsigned int *a1)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[2] = v2;
  v6[3] = v2;
  v6[0] = v2;
  v6[1] = v2;
  v3 = (*(*a1 + 16))(a1);
  AriSdk::ARI_CsiDelayedOutstandingResp_SDK::ARI_CsiDelayedOutstandingResp_SDK(v6, v3);
  if (AriSdk::MsgBase::getMergedGMID(v6) == 67600384)
  {
    _KTLErrorPrint("KTLTriggerDelayedResponseParseAndRelease", "NACK Received\n");
  }

  else
  {
    if (!AriSdk::ARI_CsiDelayedOutstandingResp_SDK::unpack(v6))
    {
      _KTLDebugPrint("KTLTriggerDelayedResponseParseAndRelease", "Delayed response received\n");
      v4 = 1;
      goto LABEL_6;
    }

    _KTLErrorPrint("KTLTriggerDelayedResponseParseAndRelease", "Malformed response\n");
  }

  v4 = 0;
LABEL_6:
  (*(*a1 + 8))(a1);
  MEMORY[0x29C27A100](v6);
  return v4;
}

uint64_t KTLIsBBSimStackMappingEnabled(uint64_t a1, BOOL *a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2 & 1;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[2] = v5;
  v26[3] = v5;
  v26[0] = v5;
  v26[1] = v5;
  AriSdk::ARI_CsiMSimGetSimStackMappingStatusReq_SDK::ARI_CsiMSimGetSimStackMappingStatusReq_SDK(v26);
  v24 = 0;
  v25 = 0;
  AriSdk::MsgBase::getRawBytes();
  v6 = *(a1 + 8);
  if (v6 || !*(a1 + 16))
  {
    v7 = *v24;
    v8 = v24[1] - *v24;
    v9 = *(a1 + 20);
    LODWORD(v20) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v8, v9);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v7, v8);
    }

    v10 = *v6;
    if (*v6 && ((v11 = v10(v6, v7, v8, &v20, 1, v9, 0), LODWORD(v10) = v20, v20 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) != 0))
    {
      v20 = 0;
      if (KTLUTACopyReceiveData(a1, &v20))
      {
        v2 = KTLIsBBSimStackMappingEnabledParseAndRelease(v20, a2);
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
      v2 = 0;
    }

    goto LABEL_26;
  }

  v13 = dispatch_semaphore_create(0);
  v14 = v13;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  if (AriHost::Send())
  {
    _KTLErrorPrint("KTLIsBBSimStackMappingEnabled", "Failed to send message CsiMSimGetSimStackMappingStatusReq.\n");
    goto LABEL_22;
  }

  v15 = dispatch_time(0, 1000000 * *(a1 + 20));
  if (dispatch_semaphore_wait(v14, v15))
  {
    _KTLErrorPrint("KTLIsBBSimStackMappingEnabled", "Timeout waiting for response.\n");
LABEL_22:
    v2 = 0;
    v16 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v2 = *(v21 + 24);
  v16 = object;
  if (object)
  {
LABEL_23:
    dispatch_release(v16);
  }

LABEL_24:
  _Block_object_dispose(&v20, 8);
  if (v14)
  {
    dispatch_release(v14);
  }

LABEL_26:
  v17 = v25;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  MEMORY[0x29C27A3A0](v26);
  return v2 & 1;
}

void sub_297A4568C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (object)
  {
    dispatch_release(object);
    _Block_object_dispose(&a19, 8);
    if (!v24)
    {
LABEL_3:
      std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
      MEMORY[0x29C27A3A0](va);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    _Block_object_dispose(&a19, 8);
    if (!v24)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v24);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
  MEMORY[0x29C27A3A0](va);
  _Unwind_Resume(a1);
}

void sub_297A456F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va1, a22);
  va_start(va, a22);
  v23 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x29C27A3A0](va1);
  _Unwind_Resume(a1);
}

uint64_t __KTLIsBBSimStackMappingEnabled_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
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
  *(*(*(a1 + 32) + 8) + 24) = KTLIsBBSimStackMappingEnabledParseAndRelease(v6, *(a1 + 40));
  dispatch_semaphore_signal(*(a1 + 48));
  return 0;
}

uint64_t KTLIsBBSimStackMappingEnabledParseAndRelease(ktl::KTLPacket *a1, BOOL *a2)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[2] = v4;
  v8[3] = v4;
  v8[0] = v4;
  v8[1] = v4;
  v5 = (*(*a1 + 16))(a1);
  AriSdk::ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK::ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK(v8, v5);
  if (AriSdk::MsgBase::getMergedGMID(v8) == 67600384)
  {
    _KTLDebugPrint("KTLIsBBSimStackMappingEnabledParseAndRelease", "Not supported\n");
  }

  else
  {
    if (!AriSdk::ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK::unpack(v8))
    {
      *a2 = *v9 != 0;
      v6 = 1;
      goto LABEL_6;
    }

    _KTLErrorPrint("KTLIsBBSimStackMappingEnabledParseAndRelease", "Failed to unpack response.\n");
  }

  v6 = 0;
LABEL_6:
  (*(*a1 + 8))(a1);
  MEMORY[0x29C27A3F0](v8);
  return v6;
}

uint64_t KTLGetSimStackMapping(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v33 = -1;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32[2] = v5;
  v32[3] = v5;
  v32[0] = v5;
  v32[1] = v5;
  AriSdk::ARI_IBIMSimGetSimStackMappingReq_SDK::ARI_IBIMSimGetSimStackMappingReq_SDK(v32);
  v30 = 0;
  v31 = 0;
  AriSdk::MsgBase::getRawBytes();
  v6 = *(a1 + 8);
  if (!v6 && *(a1 + 16))
  {
    v17 = dispatch_semaphore_create(0);
    v18 = v17;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2000000000;
    v29 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v25 = -1;
    object = v17;
    if (v17)
    {
      dispatch_retain(v17);
    }

    if (AriHost::Send())
    {
      _KTLErrorPrint("KTLGetSimStackMapping", "Failed to send message IBIMSimGetSimStackMappingReq.\n");
    }

    else
    {
      v19 = dispatch_time(0, 1000000 * *(a1 + 20));
      if (!dispatch_semaphore_wait(v18, v19))
      {
        v14 = *(v23 + 6);
        v33 = v14;
        v13 = *(v27 + 24);
        v20 = object;
        if (!object)
        {
LABEL_29:
          _Block_object_dispose(&v22, 8);
          _Block_object_dispose(&v26, 8);
          if (v18)
          {
            dispatch_release(v18);
          }

          goto LABEL_15;
        }

LABEL_28:
        dispatch_release(v20);
        goto LABEL_29;
      }

      _KTLErrorPrint("KTLGetSimStackMapping", "Timeout waiting for response.\n");
    }

    v13 = 0;
    v14 = -1;
    v20 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v7 = *v30;
  v8 = v30[1] - *v30;
  v9 = *(a1 + 20);
  LODWORD(v26) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v8, v9);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v7, v8);
  }

  v10 = *v6;
  if (*v6 && ((v11 = v10(v6, v7, v8, &v26, 1, v9, 0), LODWORD(v10) = v26, v26 == v8) ? (v12 = v11) : (v12 = 0), (v12 & 1) != 0))
  {
    v26 = 0;
    if (KTLUTACopyReceiveData(a1, &v26))
    {
      v13 = KTLGetSimStackMappingParseAndRelease(v26, &v33, a2);
      v14 = v33;
      goto LABEL_15;
    }
  }

  else
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v8, v10);
  }

  v13 = 0;
  v14 = -1;
LABEL_15:
  v2 = v13 & (v14 == 0);
  v15 = v31;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  MEMORY[0x29C27A290](v32);
  return v2;
}

void sub_297A45C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  if (v26)
  {
    dispatch_release(v26);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
    MEMORY[0x29C27A290](v27 - 144);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x29C27A290](v27 - 144);
  _Unwind_Resume(a1);
}

uint64_t __KTLGetSimStackMapping_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
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
  *(*(*(a1 + 32) + 8) + 24) = KTLGetSimStackMappingParseAndRelease(v6, (*(*(a1 + 40) + 8) + 24), *(a1 + 48));
  dispatch_semaphore_signal(*(a1 + 56));
  return 0;
}

BOOL KTLGetSimStackMappingParseAndRelease(unsigned int *a1, _DWORD *a2, uint64_t a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[3] = v6;
  v13 = v6;
  v12[1] = v6;
  v12[2] = v6;
  v12[0] = v6;
  v7 = (*(*a1 + 16))(a1);
  AriSdk::ARI_IBIMSimGetSimStackMappingRspCb_SDK::ARI_IBIMSimGetSimStackMappingRspCb_SDK(v12, v7);
  if (AriSdk::MsgBase::getMergedGMID(v12) == 67600384)
  {
    _KTLErrorPrint("KTLGetSimStackMappingParseAndRelease", "NACK Received\n");
  }

  v8 = AriSdk::ARI_IBIMSimGetSimStackMappingRspCb_SDK::unpack(v12);
  if (v8)
  {
    _KTLErrorPrint("KTLGetSimStackMappingParseAndRelease", "Failed to unpack response.\n");
  }

  else
  {
    v9 = *(&v13 + 1);
    *a2 = *v13;
    v10 = *(v9 + 16);
    *a3 = *v9;
    *(a3 + 16) = v10;
  }

  (*(*a1 + 8))(a1);
  MEMORY[0x29C27A340](v12);
  return v8 == 0;
}

void __copy_helper_block_e8_32r40r56c25_ZTSN8dispatch9semaphoreE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 8);
  _Block_object_assign(a1 + 5, *(a2 + 40), 8);
  v4 = *(a2 + 56);
  a1[7] = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r40r56c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Block_object_dispose(*(a1 + 40), 8);
  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

uint64_t KTLGetSimTrayStatus(uint64_t a1, int a2, _DWORD *a3)
{
  if (!a1 || !a3)
  {
    _KTLErrorPrint("KTLGetSimTrayStatus", "opt(%p) or respParam(%p) is NULL\n", a1, a3);
    v16 = 0;
    return v16 & 1;
  }

  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[2] = v6;
  v30[3] = v6;
  v30[0] = v6;
  v30[1] = v6;
  AriSdk::ARI_IBISimTrayStatusReq_SDK::ARI_IBISimTrayStatusReq_SDK(v30);
  v7 = operator new(4uLL);
  *v7 = a2;
  v8 = __p;
  __p = v7;
  if (v8)
  {
    operator delete(v8);
  }

  v28 = 0;
  v29 = 0;
  AriSdk::MsgBase::getRawBytes();
  v9 = *(a1 + 8);
  if (v9 || !*(a1 + 16))
  {
    v10 = *v28;
    v11 = v28[1] - *v28;
    v12 = *(a1 + 20);
    LODWORD(v24) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v11, v12);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v10, v11);
    }

    v13 = *v9;
    if (*v9 && ((v14 = v13(v9, v10, v11, &v24, 1, v12, 0), LODWORD(v13) = v24, v24 == v11) ? (v15 = v14) : (v15 = 0), (v15 & 1) != 0))
    {
      v24 = 0;
      if (KTLUTACopyReceiveData(a1, &v24))
      {
        v16 = KTLGetSimTrayStatusParseAndRelease(v24, a3);
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v11, v13);
      v16 = 0;
    }

    goto LABEL_29;
  }

  v17 = dispatch_semaphore_create(0);
  v18 = v17;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  object = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  if (AriHost::Send())
  {
    _KTLErrorPrint("KTLGetSimTrayStatus", "Failed to send the message of IBISimTrayStatusReq.\n");
    goto LABEL_25;
  }

  v19 = dispatch_time(0, 1000000 * *(a1 + 20));
  if (dispatch_semaphore_wait(v18, v19))
  {
    _KTLErrorPrint("KTLGetSimTrayStatus", "Timeout waiting for response.\n");
LABEL_25:
    v16 = 0;
    v20 = object;
    if (!object)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v16 = *(v25 + 24);
  v20 = object;
  if (object)
  {
LABEL_26:
    dispatch_release(v20);
  }

LABEL_27:
  _Block_object_dispose(&v24, 8);
  if (v18)
  {
    dispatch_release(v18);
  }

LABEL_29:
  v21 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  MEMORY[0x29C279D00](v30);
  return v16 & 1;
}

void sub_297A46290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&a19, 8);
  if (v24)
  {
    dispatch_release(v24);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
    MEMORY[0x29C279D00](va);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
  MEMORY[0x29C279D00](va);
  _Unwind_Resume(a1);
}

uint64_t __KTLGetSimTrayStatus_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
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
  *(*(*(a1 + 32) + 8) + 24) = KTLGetSimTrayStatusParseAndRelease(v6, *(a1 + 48));
  dispatch_semaphore_signal(*(a1 + 56));
  return 0;
}

BOOL KTLGetSimTrayStatusParseAndRelease(unsigned int *a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[3] = v4;
  v9 = v4;
  v8[1] = v4;
  v8[2] = v4;
  v8[0] = v4;
  v5 = (*(*a1 + 16))(a1);
  AriSdk::ARI_IBISimTrayStatusRspCb_SDK::ARI_IBISimTrayStatusRspCb_SDK(v8, v5);
  if (AriSdk::MsgBase::getMergedGMID(v8) == 67600384)
  {
    _KTLErrorPrint("KTLGetSimTrayStatusParseAndRelease", "NACK Received\n");
  }

  v6 = AriSdk::ARI_IBISimTrayStatusRspCb_SDK::unpack(v8);
  if (v6)
  {
    _KTLErrorPrint("KTLGetSimTrayStatusParseAndRelease", "Failed to unpack response.\n");
  }

  else
  {
    *a2 = **(&v9 + 1);
  }

  (*(*a1 + 8))(a1);
  MEMORY[0x29C279EE0](v8);
  return v6 == 0;
}

uint64_t KTLGetCurrentBootState(uint64_t a1, _DWORD *a2)
{
  if (!a1 || !a2)
  {
    _KTLErrorPrint("KTLGetCurrentBootState", "opt(%p) or bootState(%p) is NULL\n", a1, a2);
    v12 = 0;
    return v12 & 1;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[2] = v4;
  v27[3] = v4;
  v27[0] = v4;
  v27[1] = v4;
  AriSdk::ARI_CsiGetCurrentBootStateReq_SDK::ARI_CsiGetCurrentBootStateReq_SDK(v27);
  v25 = 0;
  v26 = 0;
  AriSdk::MsgBase::getRawBytes();
  v5 = *(a1 + 8);
  if (!v5 && *(a1 + 16))
  {
    v13 = dispatch_semaphore_create(0);
    v14 = v13;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v24 = 0;
    object = v13;
    if (v13)
    {
      dispatch_retain(v13);
    }

    if (AriHost::Send())
    {
      _KTLErrorPrint("KTLGetCurrentBootState", "Failed to send command\n");
    }

    else
    {
      v16 = dispatch_time(0, 1000000 * *(a1 + 20));
      if (!dispatch_semaphore_wait(v14, v16))
      {
        v12 = *(v22 + 24);
        v17 = object;
        if (!object)
        {
LABEL_26:
          _Block_object_dispose(&v21, 8);
          if (v14)
          {
            dispatch_release(v14);
          }

          goto LABEL_31;
        }

LABEL_25:
        dispatch_release(v17);
        goto LABEL_26;
      }

      _KTLErrorPrint("KTLGetCurrentBootState", "Timeout waiting for response.\n");
    }

    v12 = 0;
    v17 = object;
    if (!object)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v6 = *v25;
  v7 = v25[1] - *v25;
  v8 = *(a1 + 20);
  LODWORD(v21) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v7, v8);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v6, v7);
  }

  v9 = *v5;
  if (*v5 && ((v10 = v9(v5, v6, v7, &v21, 1, v8, 0), LODWORD(v9) = v21, v21 == v7) ? (v11 = v10) : (v11 = 0), (v11 & 1) != 0))
  {
    v21 = 0;
    if (KTLUTACopyReceiveData(a1, &v21))
    {
      if (KTLGetCurrentBootStateParseAndRelease(v21, a1, a2))
      {
        v12 = 1;
        goto LABEL_31;
      }

      v15 = "Failed to parse response.\n";
    }

    else
    {
      v15 = "Failed to copy received data.\n";
    }

    _KTLErrorPrint("KTLGetCurrentBootState", v15);
  }

  else
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v7, v9);
    _KTLErrorPrint("KTLGetCurrentBootState", "Failed to send raw data.\n");
  }

  v12 = 0;
LABEL_31:
  v18 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  MEMORY[0x29C27A120](v27);
  return v12 & 1;
}

void sub_297A46828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (object)
  {
    dispatch_release(object);
    _Block_object_dispose(&a19, 8);
    if (!v24)
    {
LABEL_3:
      std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
      MEMORY[0x29C27A120](va);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    _Block_object_dispose(&a19, 8);
    if (!v24)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v24);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
  MEMORY[0x29C27A120](va);
  _Unwind_Resume(a1);
}

void sub_297A46890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va1, a22);
  va_start(va, a22);
  v23 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x29C27A120](va1);
  _Unwind_Resume(a1);
}

uint64_t __KTLGetCurrentBootState_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
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
  *(*(*(a1 + 32) + 8) + 24) = KTLGetCurrentBootStateParseAndRelease(v6, *(a1 + 40), *(a1 + 48));
  dispatch_semaphore_signal(*(a1 + 56));
  return 0;
}

uint64_t KTLGetCurrentBootStateParseAndRelease(unsigned int *a1, const void *a2, _DWORD *a3)
{
  if (!a1 || !a2 || !a3)
  {
    _KTLErrorPrint("KTLGetCurrentBootStateParseAndRelease", "pkt(%p) or opt(%p) or bootState(%p) is NULL\n", a1, a2, a3);
    return 0;
  }

  v10 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[2] = v5;
  v9[3] = v5;
  v9[0] = v5;
  v9[1] = v5;
  v6 = (*(*a1 + 16))(a1);
  AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::ARI_CsiGetCurrentBootStateRspCb_SDK(v9, v6);
  if (AriSdk::MsgBase::getMergedGMID(v9) == 67600384)
  {
    _KTLErrorPrint("KTLGetCurrentBootStateParseAndRelease", "NACK Received\n");
  }

  else
  {
    if (!AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::unpack(v9))
    {
      *a3 = *v10;
      v8 = 1;
      goto LABEL_10;
    }

    _KTLErrorPrint("KTLGetCurrentBootStateParseAndRelease", "Malformed response\n");
  }

  v8 = 0;
LABEL_10:
  (*(*a1 + 8))(a1);
  MEMORY[0x29C27A1F0](v9);
  return v8;
}

uint64_t KTLGetFactGetTestReadyState(uint64_t a1, BOOL *a2, _DWORD *a3)
{
  if (!a1 || !a2 || !a3)
  {
    _KTLErrorPrint("KTLGetFactGetTestReadyState", "opt(%p) or allReady(%p) or moduleStatus(%p) is NULL\n", a1, a2, a3);
    v14 = 0;
    return v14 & 1;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[2] = v6;
  v29[3] = v6;
  v29[1] = v6;
  v29[0] = v6;
  AriSdk::ARI_CsiFactGetTestReadyStateReq_SDK::ARI_CsiFactGetTestReadyStateReq_SDK(v29);
  v27 = 0;
  v28 = 0;
  AriSdk::MsgBase::getRawBytes();
  v7 = *(a1 + 8);
  if (!v7 && *(a1 + 16))
  {
    v15 = dispatch_semaphore_create(0);
    v16 = v15;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = 0;
    object = v15;
    if (v15)
    {
      dispatch_retain(v15);
    }

    if (AriHost::Send())
    {
      _KTLErrorPrint("KTLGetFactGetTestReadyState", "Failed to send command\n");
    }

    else
    {
      v18 = dispatch_time(0, 1000000 * *(a1 + 20));
      if (!dispatch_semaphore_wait(v16, v18))
      {
        v14 = *(v24 + 24);
        v19 = object;
        if (!object)
        {
LABEL_27:
          _Block_object_dispose(&v23, 8);
          if (v16)
          {
            dispatch_release(v16);
          }

          goto LABEL_32;
        }

LABEL_26:
        dispatch_release(v19);
        goto LABEL_27;
      }

      _KTLErrorPrint("KTLGetFactGetTestReadyState", "Timeout waiting for response.\n");
    }

    v14 = 0;
    v19 = object;
    if (!object)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v8 = *v27;
  v9 = v27[1] - *v27;
  v10 = *(a1 + 20);
  LODWORD(v23) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v9, v10);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v8, v9);
  }

  v11 = *v7;
  if (*v7 && ((v12 = v11(v7, v8, v9, &v23, 1, v10, 0), LODWORD(v11) = v23, v23 == v9) ? (v13 = v12) : (v13 = 0), (v13 & 1) != 0))
  {
    v23 = 0;
    if (KTLUTACopyReceiveData(a1, &v23))
    {
      if (KTLGetFactGetTestReadyStateParseAndRelease(v23, a1, a2, a3))
      {
        v14 = 1;
        goto LABEL_32;
      }

      v17 = "Failed to parse response.\n";
    }

    else
    {
      v17 = "Failed to copy received data.\n";
    }

    _KTLErrorPrint("KTLGetFactGetTestReadyState", v17);
  }

  else
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v9, v11);
    _KTLErrorPrint("KTLGetFactGetTestReadyState", "Failed to send raw data.\n");
  }

  v14 = 0;
LABEL_32:
  v20 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  MEMORY[0x29C27A1C0](v29);
  return v14 & 1;
}

void sub_297A46E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, dispatch_object_t object, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (object)
  {
    dispatch_release(object);
    _Block_object_dispose(&a21, 8);
    if (!v24)
    {
LABEL_3:
      std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
      MEMORY[0x29C27A1C0](v25 - 128);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    _Block_object_dispose(&a21, 8);
    if (!v24)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v24);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x29C27A1C0](v25 - 128);
  _Unwind_Resume(a1);
}

void sub_297A46E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x29C27A1C0](v24 - 128);
  _Unwind_Resume(a1);
}

uint64_t __KTLGetFactGetTestReadyState_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
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
  *(*(*(a1 + 32) + 8) + 24) = KTLGetFactGetTestReadyStateParseAndRelease(v6, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  dispatch_semaphore_signal(*(a1 + 64));
  return 0;
}

uint64_t KTLGetFactGetTestReadyStateParseAndRelease(unsigned int *a1, const void *a2, BOOL *a3, _DWORD *a4)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    _KTLErrorPrint("KTLGetFactGetTestReadyStateParseAndRelease", "pkt(%p) or opt(%p) or allReady(%p) or moduleStatus(%p) is NULL\n", a1, a2, a3, a4);
    return 0;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[3] = v7;
  v13 = v7;
  v12[1] = v7;
  v12[2] = v7;
  v12[0] = v7;
  v8 = (*(*a1 + 16))(a1);
  AriSdk::ARI_CsiFactGetTestReadyStateRspCb_SDK::ARI_CsiFactGetTestReadyStateRspCb_SDK(v12, v8);
  if (AriSdk::MsgBase::getMergedGMID(v12) == 67600384)
  {
    _KTLErrorPrint("KTLGetFactGetTestReadyStateParseAndRelease", "NACK Received\n");
  }

  else
  {
    if (!AriSdk::ARI_CsiFactGetTestReadyStateRspCb_SDK::unpack(v12))
    {
      v11 = *(&v13 + 1);
      *a3 = *v13 != 0;
      *a4 = *v11;
      v10 = 1;
      goto LABEL_11;
    }

    _KTLErrorPrint("KTLGetFactGetTestReadyStateParseAndRelease", "Malformed response\n");
  }

  v10 = 0;
LABEL_11:
  (*(*a1 + 8))(a1);
  MEMORY[0x29C27A2C0](v12);
  return v10;
}

void __copy_helper_block_e8_32r64c25_ZTSN8dispatch9semaphoreE(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 64);
  *(a1 + 64) = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r64c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

double Bsp::ARICommandDriver::ARICommandDriver(uint64_t a1, uint64_t a2)
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

uint64_t Bsp::ARICommandDriver::GetCurrentBootState(Bsp::ARICommandDriver *this, AriSdk::ARI_CsiGetCurrentBootStateReq_SDK *a2, AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v5 = *(this + 2);
  v6 = *(v5 + 8);
  if (!v6 && *(v5 + 16))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3002000000;
    v31 = __Block_byref_object_copy__94;
    v32 = __Block_byref_object_dispose__95;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    if (AriHost::Send())
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n");
    }

    else
    {
      v20 = v29;
      v21 = dispatch_time(0, 1000000 * *(*(this + 2) + 20));
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
  v13 = KTLUTACopyReceiveData(*(this + 2), &v28);
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
  AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::ARI_CsiGetCurrentBootStateRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::unpack(v25))
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
    _KTLErrorPrint("GetCurrentBootState", "Failed CsiGetCurrentBootStateRspCb\n");
  }

  return v18;
}

void sub_297A4765C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
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

uint64_t Bsp::ARICommandDriver::SysGetInfoV2(uint64_t a1, uint64_t a2, AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK **a3)
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
    v31 = __Block_byref_object_copy__94;
    v32 = __Block_byref_object_dispose__95;
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
  AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK::ARI_CsiSysGetInfoRspCbV2_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK::unpack(v25))
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
    _KTLErrorPrint("SysGetInfoV2", "Failed CsiSysGetInfoRspCbV2\n");
  }

  return v18;
}