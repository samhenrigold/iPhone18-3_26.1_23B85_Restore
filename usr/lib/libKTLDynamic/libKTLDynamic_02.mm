void sub_297A47B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
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

uint64_t Bsp::ARICommandDriver::GetNvItemsSetting(uint64_t a1, uint64_t a2, AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK **a3)
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

  v16 = operator new(0x58uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK::ARI_FactoryGetNvItemsSettingRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK::unpack(v25))
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
    _KTLErrorPrint("GetNvItemsSetting", "Failed FactoryGetNvItemsSettingRspCb\n");
  }

  return v18;
}

void sub_297A48068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
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

void Bsp::ARICommandDriver::~ARICommandDriver(Bsp::ARICommandDriver *this)
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

uint64_t __Block_byref_object_copy__94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__95(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk35ARI_CsiGetCurrentBootStateRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x48uLL);
  AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::ARI_CsiGetCurrentBootStateRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk28ARI_CsiSysGetInfoRspCbV2_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x48uLL);
  AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK::ARI_CsiSysGetInfoRspCbV2_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk37ARI_FactoryGetNvItemsSettingRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x58uLL);
  AriSdk::ARI_FactoryGetNvItemsSettingRspCb_SDK::ARI_FactoryGetNvItemsSettingRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

__int128 *KTLGetKDMProductName(void)
{
  HardwareModel = _MergedGlobals_1;
  if (_MergedGlobals_1)
  {
    if (xmmword_2A13A4F78)
    {
      return &xmmword_2A13A4F78;
    }
  }

  else
  {
    HardwareModel = TelephonyCapabilitiesGetHardwareModel();
    _MergedGlobals_1 = HardwareModel;
    if (xmmword_2A13A4F78)
    {
      return &xmmword_2A13A4F78;
    }
  }

  xmmword_2A13A5058 = 0u;
  unk_2A13A5068 = 0u;
  xmmword_2A13A5038 = 0u;
  unk_2A13A5048 = 0u;
  xmmword_2A13A5018 = 0u;
  unk_2A13A5028 = 0u;
  xmmword_2A13A4FF8 = 0u;
  unk_2A13A5008 = 0u;
  xmmword_2A13A4FD8 = 0u;
  unk_2A13A4FE8 = 0u;
  xmmword_2A13A4FB8 = 0u;
  unk_2A13A4FC8 = 0u;
  xmmword_2A13A4F98 = 0u;
  unk_2A13A4FA8 = 0u;
  xmmword_2A13A4F78 = 0u;
  unk_2A13A4F88 = 0u;
  if (HardwareModel && snprintf(&xmmword_2A13A4F78, 0xFFuLL, "%c%d%c", *(HardwareModel + 4), *HardwareModel, *(HardwareModel + 5)) > 254)
  {
    return 0;
  }

  return &xmmword_2A13A4F78;
}

unint64_t KTLGetKDMFilename@<X0>(const char *a1@<X0>, _BYTE *a2@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__str = 0u;
  v11 = 0u;
  HardwareModel = _MergedGlobals_1;
  if (_MergedGlobals_1)
  {
    if (xmmword_2A13A4F78)
    {
      goto LABEL_8;
    }
  }

  else
  {
    HardwareModel = TelephonyCapabilitiesGetHardwareModel();
    _MergedGlobals_1 = HardwareModel;
    if (xmmword_2A13A4F78)
    {
      goto LABEL_8;
    }
  }

  xmmword_2A13A5058 = 0u;
  unk_2A13A5068 = 0u;
  xmmword_2A13A5038 = 0u;
  unk_2A13A5048 = 0u;
  xmmword_2A13A5018 = 0u;
  unk_2A13A5028 = 0u;
  xmmword_2A13A4FF8 = 0u;
  unk_2A13A5008 = 0u;
  xmmword_2A13A4FD8 = 0u;
  unk_2A13A4FE8 = 0u;
  xmmword_2A13A4FB8 = 0u;
  unk_2A13A4FC8 = 0u;
  xmmword_2A13A4F98 = 0u;
  unk_2A13A4FA8 = 0u;
  xmmword_2A13A4F78 = 0u;
  unk_2A13A4F88 = 0u;
  if (HardwareModel && snprintf(&xmmword_2A13A4F78, 0xFFuLL, "%c%d%c", *(HardwareModel + 4), *HardwareModel, *(HardwareModel + 5)) > 254)
  {
    v5 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v5 = &xmmword_2A13A4F78;
LABEL_9:
  result = snprintf(__str, 0xFFuLL, "%s%s%s.%s", v5, "_", a1, "kdm");
  if (result <= 254)
  {
    result = strlen(__str);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = result;
    if (result >= 0x17)
    {
      if ((result | 7) == 0x17)
      {
        v8 = 25;
      }

      else
      {
        v8 = (result | 7) + 1;
      }

      v9 = operator new(v8);
      *(a2 + 1) = v7;
      *(a2 + 2) = v8 | 0x8000000000000000;
      *a2 = v9;
      a2 = v9;
    }

    else
    {
      a2[23] = result;
      if (!result)
      {
        goto LABEL_20;
      }
    }

    result = memcpy(a2, __str, v7);
LABEL_20:
    a2 += v7;
    goto LABEL_21;
  }

  a2[23] = 0;
LABEL_21:
  *a2 = 0;
  return result;
}

void KTLGetKeyword(const char *a1@<X0>, std::string *a2@<X8>)
{
  v30.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29 = v3;
  *&v30.__r_.__value_.__l.__data_ = v3;
  v27 = v3;
  v28 = v3;
  strlen(a1);
  ctu::partition();
  memset(&v26, 170, sizeof(v26));
  if (SBYTE7(v28) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v27, *(&v27 + 1));
  }

  else
  {
    *&v26.__r_.__value_.__l.__data_ = v27;
    v26.__r_.__value_.__r.__words[2] = v28;
  }

  size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  v5 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_39;
  }

  memset(__dst, 170, sizeof(__dst));
  HardwareModel = _MergedGlobals_1;
  if (_MergedGlobals_1)
  {
    if (xmmword_2A13A4F78)
    {
      goto LABEL_14;
    }
  }

  else
  {
    HardwareModel = TelephonyCapabilitiesGetHardwareModel();
    _MergedGlobals_1 = HardwareModel;
    if (xmmword_2A13A4F78)
    {
      goto LABEL_14;
    }
  }

  xmmword_2A13A5058 = 0u;
  unk_2A13A5068 = 0u;
  xmmword_2A13A5038 = 0u;
  unk_2A13A5048 = 0u;
  xmmword_2A13A5018 = 0u;
  unk_2A13A5028 = 0u;
  xmmword_2A13A4FF8 = 0u;
  unk_2A13A5008 = 0u;
  xmmword_2A13A4FD8 = 0u;
  unk_2A13A4FE8 = 0u;
  xmmword_2A13A4FB8 = 0u;
  unk_2A13A4FC8 = 0u;
  xmmword_2A13A4F98 = 0u;
  unk_2A13A4FA8 = 0u;
  xmmword_2A13A4F78 = 0u;
  unk_2A13A4F88 = 0u;
  if (HardwareModel && snprintf(&xmmword_2A13A4F78, 0xFFuLL, "%c%d%c", *(HardwareModel + 4), *HardwareModel, *(HardwareModel + 5)) > 254)
  {
    v7 = 0;
    goto LABEL_15;
  }

LABEL_14:
  v7 = &xmmword_2A13A4F78;
LABEL_15:
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    v10 = operator new(v11);
    __dst[1] = v9;
    __dst[2] = v11 | 0x8000000000000000;
    __dst[0] = v10;
    goto LABEL_23;
  }

  HIBYTE(__dst[2]) = v8;
  v10 = __dst;
  if (v8)
  {
LABEL_23:
    memcpy(v10, v7, v9);
  }

  *(v10 + v9) = 0;
  v5 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v26;
  }

  else
  {
    v12 = v26.__r_.__value_.__r.__words[0];
  }

  v13 = HIBYTE(__dst[2]);
  v14 = SHIBYTE(__dst[2]);
  v15 = __dst[0];
  if (__dst[2] >= 0)
  {
    v16 = __dst;
  }

  else
  {
    v13 = __dst[1];
    v16 = __dst[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v26.__r_.__value_.__l.__size_;
  }

  if (v13 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v13;
  }

  if (strncasecmp(v12, v16, v18))
  {
    goto LABEL_37;
  }

  memset(&v24, 170, sizeof(v24));
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = v30;
  }

  v19 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v24.__r_.__value_.__l.__size_;
  }

  if (!v20)
  {
LABEL_63:
    if (v19 < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

LABEL_37:
    if (v14 < 0)
    {
      operator delete(v15);
    }

LABEL_39:
    *(&a2->__r_.__value_.__s + 23) = 0;
    a2->__r_.__value_.__s.__data_[0] = 0;
    goto LABEL_40;
  }

  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v22 = v21;
  *v23 = v21;
  ctu::partition();
  memset(a2, 170, sizeof(std::string));
  if (SHIBYTE(v23[0]) < 0)
  {
    std::string::__init_copy_ctor_external(a2, v22[0], v22[1]);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *v22;
    a2->__r_.__value_.__r.__words[2] = v23[0];
  }

  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    if (!a2->__r_.__value_.__l.__size_)
    {
      operator delete(a2->__r_.__value_.__l.__data_);
LABEL_75:
      operator delete(0xAAAAAAAAAAAAAAAALL);
      operator delete(v23[1]);
      if (SHIBYTE(v23[0]) < 0)
      {
        operator delete(v22[0]);
      }

      v19 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      goto LABEL_63;
    }
  }

  else if (!*(&a2->__r_.__value_.__s + 23))
  {
    goto LABEL_75;
  }

  operator delete(0xAAAAAAAAAAAAAAAALL);
  operator delete(v23[1]);
  if (SHIBYTE(v23[0]) < 0)
  {
    operator delete(v22[0]);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_72:
      operator delete(v24.__r_.__value_.__l.__data_);
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_73;
    }
  }

  else if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_72;
  }

  if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_73:
  operator delete(v15);
LABEL_40:
  if (v5 < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_42:
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }
  }

  else if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(v30.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
LABEL_43:
    if ((SBYTE7(v28) & 0x80000000) == 0)
    {
      return;
    }

LABEL_48:
    operator delete(v27);
    return;
  }

LABEL_47:
  operator delete(*(&v28 + 1));
  if (SBYTE7(v28) < 0)
  {
    goto LABEL_48;
  }
}

void sub_297A48A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  std::tuple<std::string,std::string,std::string>::~tuple(&a13);
  if (a28 < 0)
  {
    operator delete(__p);
    if ((v33 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((v33 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v32);
  if ((v34 & 0x80000000) == 0)
  {
LABEL_4:
    std::tuple<std::string,std::string,std::string>::~tuple(v35 - 144);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a32);
  std::tuple<std::string,std::string,std::string>::~tuple(v35 - 144);
  _Unwind_Resume(a1);
}

uint64_t std::tuple<std::string,std::string,std::string>::~tuple(uint64_t a1)
{
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*a1);
  return a1;
}

unint64_t KTLGetETBFilename@<X0>(const char *a1@<X0>, _BYTE *a2@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__str = 0u;
  v11 = 0u;
  HardwareModel = _MergedGlobals_1;
  if (_MergedGlobals_1)
  {
    if (xmmword_2A13A4F78)
    {
      goto LABEL_8;
    }
  }

  else
  {
    HardwareModel = TelephonyCapabilitiesGetHardwareModel();
    _MergedGlobals_1 = HardwareModel;
    if (xmmword_2A13A4F78)
    {
      goto LABEL_8;
    }
  }

  xmmword_2A13A5058 = 0u;
  unk_2A13A5068 = 0u;
  xmmword_2A13A5038 = 0u;
  unk_2A13A5048 = 0u;
  xmmword_2A13A5018 = 0u;
  unk_2A13A5028 = 0u;
  xmmword_2A13A4FF8 = 0u;
  unk_2A13A5008 = 0u;
  xmmword_2A13A4FD8 = 0u;
  unk_2A13A4FE8 = 0u;
  xmmword_2A13A4FB8 = 0u;
  unk_2A13A4FC8 = 0u;
  xmmword_2A13A4F98 = 0u;
  unk_2A13A4FA8 = 0u;
  xmmword_2A13A4F78 = 0u;
  unk_2A13A4F88 = 0u;
  if (HardwareModel && snprintf(&xmmword_2A13A4F78, 0xFFuLL, "%c%d%c", *(HardwareModel + 4), *HardwareModel, *(HardwareModel + 5)) > 254)
  {
    v5 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v5 = &xmmword_2A13A4F78;
LABEL_9:
  result = snprintf(__str, 0xFFuLL, "%s%s%s.%s", v5, "_", a1, "etb");
  if (result <= 254)
  {
    result = strlen(__str);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = result;
    if (result >= 0x17)
    {
      if ((result | 7) == 0x17)
      {
        v8 = 25;
      }

      else
      {
        v8 = (result | 7) + 1;
      }

      v9 = operator new(v8);
      *(a2 + 1) = v7;
      *(a2 + 2) = v8 | 0x8000000000000000;
      *a2 = v9;
      a2 = v9;
    }

    else
    {
      a2[23] = result;
      if (!result)
      {
        goto LABEL_20;
      }
    }

    result = memcpy(a2, __str, v7);
LABEL_20:
    a2 += v7;
    goto LABEL_21;
  }

  a2[23] = 0;
LABEL_21:
  *a2 = 0;
  return result;
}

uint64_t KTLGetMaskFileExtensionName@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  switch(result)
  {
    case 2:
      *(a2 + 23) = 3;
      *a2 = 26211;
      *(a2 + 2) = 103;
      break;
    case 1:
      *(a2 + 23) = 3;
      *a2 = 29797;
      *(a2 + 2) = 98;
      break;
    case 0:
      *(a2 + 23) = 3;
      *a2 = 25707;
      *(a2 + 2) = 109;
      break;
  }

  return result;
}

unint64_t KTLGetTraceConfigFilename@<X0>(const char *a1@<X0>, _BYTE *a2@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__str = 0u;
  v11 = 0u;
  HardwareModel = _MergedGlobals_1;
  if (_MergedGlobals_1)
  {
    if (xmmword_2A13A4F78)
    {
      goto LABEL_8;
    }
  }

  else
  {
    HardwareModel = TelephonyCapabilitiesGetHardwareModel();
    _MergedGlobals_1 = HardwareModel;
    if (xmmword_2A13A4F78)
    {
      goto LABEL_8;
    }
  }

  xmmword_2A13A5058 = 0u;
  unk_2A13A5068 = 0u;
  xmmword_2A13A5038 = 0u;
  unk_2A13A5048 = 0u;
  xmmword_2A13A5018 = 0u;
  unk_2A13A5028 = 0u;
  xmmword_2A13A4FF8 = 0u;
  unk_2A13A5008 = 0u;
  xmmword_2A13A4FD8 = 0u;
  unk_2A13A4FE8 = 0u;
  xmmword_2A13A4FB8 = 0u;
  unk_2A13A4FC8 = 0u;
  xmmword_2A13A4F98 = 0u;
  unk_2A13A4FA8 = 0u;
  xmmword_2A13A4F78 = 0u;
  unk_2A13A4F88 = 0u;
  if (HardwareModel && snprintf(&xmmword_2A13A4F78, 0xFFuLL, "%c%d%c", *(HardwareModel + 4), *HardwareModel, *(HardwareModel + 5)) > 254)
  {
    v5 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v5 = &xmmword_2A13A4F78;
LABEL_9:
  result = snprintf(__str, 0xFFuLL, "%s%s%s.%s", v5, "_", a1, "cfg");
  if (result <= 254)
  {
    result = strlen(__str);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = result;
    if (result >= 0x17)
    {
      if ((result | 7) == 0x17)
      {
        v8 = 25;
      }

      else
      {
        v8 = (result | 7) + 1;
      }

      v9 = operator new(v8);
      *(a2 + 1) = v7;
      *(a2 + 2) = v8 | 0x8000000000000000;
      *a2 = v9;
      a2 = v9;
    }

    else
    {
      a2[23] = result;
      if (!result)
      {
        goto LABEL_20;
      }
    }

    result = memcpy(a2, __str, v7);
LABEL_20:
    a2 += v7;
    goto LABEL_21;
  }

  a2[23] = 0;
LABEL_21:
  *a2 = 0;
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

double hsfiler::ARICommandDriver::ARICommandDriver(uint64_t a1, uint64_t a2)
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

uint64_t hsfiler::ARICommandDriver::StartReadSession(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK **a3)
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
    v31 = __Block_byref_object_copy__7;
    v32 = __Block_byref_object_dispose__7;
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
  AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK::unpack(v25))
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
    _KTLErrorPrint("StartReadSession", "Failed IBIFilerHSStartReadBBSessionReq\n");
  }

  return v18;
}

void sub_297A49500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
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

uint64_t hsfiler::ARICommandDriver::GetReadSize(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK **a3)
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
    v31 = __Block_byref_object_copy__7;
    v32 = __Block_byref_object_dispose__7;
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
  AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK::unpack(v25))
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
    _KTLErrorPrint("GetReadSize", "Failed IBIFilerHSReadBBGetSizeReq\n");
  }

  return v18;
}

void sub_297A49A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
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

uint64_t hsfiler::ARICommandDriver::ReadFileFromBB(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK **a3)
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
    v31 = __Block_byref_object_copy__7;
    v32 = __Block_byref_object_dispose__7;
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

  v16 = operator new(0x70uLL);
  v17 = (*(*v14 + 16))(v14);
  AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK::ARI_IBIFilerHSReadBBRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK::unpack(v25))
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
    _KTLErrorPrint("ReadFileFromBB", "Failed IBIFilerHSReadBBReq\n");
  }

  return v18;
}

void sub_297A49F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
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

uint64_t hsfiler::ARICommandDriver::StartWriteSession(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK **a3)
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
    v31 = __Block_byref_object_copy__7;
    v32 = __Block_byref_object_dispose__7;
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
  AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK::unpack(v25))
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
    _KTLErrorPrint("StartWriteSession", "Failed IBIFilerHSStartWriteBBSessionReq\n");
  }

  return v18;
}

void sub_297A4A414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
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

uint64_t hsfiler::ARICommandDriver::WriteFileToBB(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK **a3)
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
    v31 = __Block_byref_object_copy__7;
    v32 = __Block_byref_object_dispose__7;
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
  AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK::ARI_IBIFilerHSWriteBBRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK::unpack(v25))
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
    _KTLErrorPrint("WriteFileToBB", "Failed IBIFilerHSWriteBBReq\n");
  }

  return v18;
}

void sub_297A4A918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
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

uint64_t hsfiler::ARICommandDriver::EndSession(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK **a3)
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
    v31 = __Block_byref_object_copy__7;
    v32 = __Block_byref_object_dispose__7;
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
  AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK::ARI_IBIFilerHSEndBBSessionRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK::unpack(v25))
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
    _KTLErrorPrint("EndSession", "Failed IBIFilerHSEndBBSessionReq\n");
  }

  return v18;
}

void sub_297A4AE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
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

void hsfiler::ARICommandDriver::~ARICommandDriver(hsfiler::ARICommandDriver *this)
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

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__7(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk41ARI_IBIFilerHSStartReadBBSessionRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x50uLL);
  AriSdk::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK::ARI_IBIFilerHSStartReadBBSessionRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk36ARI_IBIFilerHSReadBBGetSizeRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x58uLL);
  AriSdk::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK::ARI_IBIFilerHSReadBBGetSizeRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk29ARI_IBIFilerHSReadBBRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x70uLL);
  AriSdk::ARI_IBIFilerHSReadBBRspCb_SDK::ARI_IBIFilerHSReadBBRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk42ARI_IBIFilerHSStartWriteBBSessionRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x50uLL);
  AriSdk::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK::ARI_IBIFilerHSStartWriteBBSessionRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk30ARI_IBIFilerHSWriteBBRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x50uLL);
  AriSdk::ARI_IBIFilerHSWriteBBRspCb_SDK::ARI_IBIFilerHSWriteBBRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk35ARI_IBIFilerHSEndBBSessionRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x50uLL);
  AriSdk::ARI_IBIFilerHSEndBBSessionRspCb_SDK::ARI_IBIFilerHSEndBBSessionRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t KTLCpsGetSvn(uint64_t a1, _BYTE *a2)
{
  v4[3] = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    return 0;
  }

  memset(v4, 170, 24);
  result = KTLGetIMEIInfo(a1, 0, v4);
  *a2 = (BYTE4(v4[2]) & 0xF) + 10 * (BYTE3(v4[2]) >> 4);
  return result;
}

BOOL KTLCpsSetSvn(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v26 = v2;
  v27 = 1;
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (!v4)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v25 = 1;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = -1;
    v12 = dispatch_semaphore_create(0);
    v13 = v12;
    object = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    if (ARI_UtaMsCpsSetSvnReq_BLK())
    {
      v9 = 0;
      v10 = *(v23 + 6);
      v14 = object;
      if (!object)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v15 = dispatch_time(0, 1000000 * *(a1 + 20));
      v16 = dispatch_semaphore_wait(v13, v15);
      if (v16)
      {
        _KTLErrorPrint("KTLCpsSetSvn", "Timeout waiting for response.\n");
      }

      if (v26)
      {
        AriHost::ExitTrx(v26);
      }

      v10 = *(v23 + 6);
      if (v16)
      {
        v9 = 0;
        v14 = object;
        if (!object)
        {
LABEL_25:
          if (v13)
          {
            dispatch_release(v13);
          }

          _Block_object_dispose(&v18, 8);
          _Block_object_dispose(&v22, 8);
          return !v10 && v9;
        }
      }

      else
      {
        v9 = *(v19 + 6) == 0;
        v14 = object;
        if (!object)
        {
          goto LABEL_25;
        }
      }
    }

    dispatch_release(v14);
    goto LABEL_25;
  }

  v18 = 0;
  v28 = 0;
  v29 = v2;
  v22 = 0;
  if (!ARI_UtaMsCpsSetSvnReq_ENC() && (v5 = operator new(0x18uLL), v6 = v22, v5[2] = v28, *(v5 + 2) = v6, *v5 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v5)) && KTLUTACopyReceiveData(a1, &v18))
  {
    v7 = v18;
    (*(*v18 + 16))(v18);
    v8 = ARI_AriUtaMsCpsSetSvnRspCb_Extract();
    (*(*v7 + 8))(v7);
    v9 = v8 == 0;
    v10 = v27;
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  return !v10 && v9;
}

void sub_297A4B618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
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

uint64_t __KTLCpsSetSvn_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_AriUtaMsCpsSetSvnRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t KTLCpsPriWrite(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, char *a5, unsigned int a6, char *a7, unsigned int a8, unsigned __int8 a9)
{
  if (!a1 || !a4)
  {
    _KTLErrorPrint("KTLCpsPriWrite", "opt(%p) or filerId(%p) is NULL\n", a3);
    return 0;
  }

  if (a6 >= 0x401)
  {
    _KTLErrorPrint("KTLCpsPriWrite", "PRI signature size (%u) larger than max allowed (%d)", a3);
    return 0;
  }

  if (a8 >= 0x65)
  {
    _KTLErrorPrint("KTLCpsPriWrite", "Carrier bundle name length (%u) larger than max allowed (%d)", a3);
    return 0;
  }

  v15 = a3;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2000000000;
  v89 = 0xFFFF;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2000000000;
  v85 = 0x7FFFFFFF;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2000000000;
  v81 = -1;
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v76 = v17;
  *v77 = v17;
  *__dst = v17;
  *v75 = v17;
  v72[3] = v17;
  *__p = v17;
  v72[1] = v17;
  v72[2] = v17;
  v72[0] = v17;
  AriSdk::ARI_IBIPriWriteReq_V2_SDK::ARI_IBIPriWriteReq_V2_SDK(v72);
  v18 = operator new(4uLL);
  *v18 = a2;
  v19 = __p[0];
  __p[0] = v18;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = operator new(4uLL);
  *v20 = v15;
  v21 = __p[1];
  __p[1] = v20;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = operator new(2uLL);
  *v22 = a6;
  v23 = __dst[0];
  __dst[0] = v22;
  if (v23)
  {
    operator delete(v23);
  }

  if (a5)
  {
    v24 = a6;
    v25 = v75[1];
    v26 = __dst[1];
    if ((v75[1] - __dst[1]) >= a6)
    {
      v31 = v75[0];
      v32 = v75[0] - __dst[1];
      v33 = a6 - (v75[0] - __dst[1]);
      if (a6 <= (v75[0] - __dst[1]))
      {
        if (a6)
        {
          v34 = __dst[1];
          memmove(__dst[1], a5, v24);
          v26 = v34;
        }

        v30 = &v26[v24];
      }

      else
      {
        if (v75[0] != __dst[1])
        {
          memmove(__dst[1], a5, v75[0] - __dst[1]);
          v31 = v75[0];
        }

        memmove(v31, &a5[v32], v33);
        v30 = &v31[v33];
      }
    }

    else
    {
      if (__dst[1])
      {
        v75[0] = __dst[1];
        operator delete(__dst[1]);
        v25 = 0;
        __dst[1] = 0;
        v75[0] = 0;
        v75[1] = 0;
      }

      v27 = 2 * v25;
      if (2 * v25 <= a6)
      {
        v27 = a6;
      }

      if (v25 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v27;
      }

      v29 = operator new(v28);
      __dst[1] = v29;
      v75[1] = &v29[v28];
      memcpy(v29, a5, v24);
      v30 = &v29[v24];
    }

    v75[0] = v30;
  }

  if (a7)
  {
    v35 = a8;
    v36 = v77[0];
    v37 = v76[0];
    if ((v77[0] - v76[0]) >= a8)
    {
      v42 = v76[1];
      v43 = v76[1] - v76[0];
      v44 = a8 - (v76[1] - v76[0]);
      if (a8 <= (v76[1] - v76[0]))
      {
        if (a8)
        {
          v45 = v76[0];
          memmove(v76[0], a7, v35);
          v37 = v45;
        }

        v41 = &v37[v35];
      }

      else
      {
        if (v76[1] != v76[0])
        {
          memmove(v76[0], a7, v76[1] - v76[0]);
          v42 = v76[1];
        }

        memmove(v42, &a7[v43], v44);
        v41 = &v42[v44];
      }
    }

    else
    {
      if (v76[0])
      {
        v76[1] = v76[0];
        operator delete(v76[0]);
        v36 = 0;
        v76[0] = 0;
        v76[1] = 0;
        v77[0] = 0;
      }

      v38 = 2 * v36;
      if (2 * v36 <= a8)
      {
        v38 = a8;
      }

      if (v36 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v39 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v38;
      }

      v40 = operator new(v39);
      v76[0] = v40;
      v77[0] = &v40[v39];
      memcpy(v40, a7, v35);
      v41 = &v40[v35];
    }

    v76[1] = v41;
  }

  v46 = operator new(4uLL);
  *v46 = a9;
  v47 = v77[1];
  v77[1] = v46;
  if (v47)
  {
    operator delete(v47);
  }

  v70 = 0;
  v71 = 0;
  AriSdk::MsgBase::getRawBytes();
  v48 = *(a1 + 8);
  if (!v48 && *(a1 + 16))
  {
    v58 = dispatch_semaphore_create(0);
    v59 = v58;
    v66 = 0;
    v67 = &v66;
    v68 = 0x2000000000;
    v69 = 0;
    object = v58;
    if (v58)
    {
      dispatch_retain(v58);
    }

    if (AriHost::Send())
    {
      _KTLErrorPrint("KTLCpsPriWrite", "Failed to send the message of IBIPriWriteReq_V2.\n");
    }

    else
    {
      v60 = dispatch_time(0, 1000000 * *(a1 + 20));
      if (!dispatch_semaphore_wait(v59, v60))
      {
        v63 = *(v87 + 6);
        if (*(v67 + 24) == 1 && v63 == a2 && (v63 = a2, !*(v83 + 6)))
        {
          v61 = 1;
        }

        else
        {
          _KTLErrorPrint("KTLCpsPriWrite", "Returned Instance is %d while expecting instance is %d\n", v63, a2);
          _KTLErrorPrint("KTLCpsPriWrite", "PRI/GRI Command Result: %d\n", *(v83 + 6));
          v61 = 0;
        }

        *a4 = *(v79 + 6);
        v62 = object;
        if (!object)
        {
LABEL_75:
          _Block_object_dispose(&v66, 8);
          if (v59)
          {
            dispatch_release(v59);
          }

          v56 = v61;
          v57 = v71;
          if (!v71)
          {
            goto LABEL_80;
          }

          goto LABEL_78;
        }

LABEL_74:
        dispatch_release(v62);
        goto LABEL_75;
      }

      _KTLErrorPrint("KTLCpsPriWrite", "Timeout waiting for response.\n");
    }

    v61 = 0;
    v62 = object;
    if (!object)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v49 = *v70;
  v50 = v70[1] - *v70;
  v51 = *(a1 + 20);
  LODWORD(v66) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v50, v51);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v49, v50);
  }

  v52 = *v48;
  if (*v48 && ((v53 = v52(v48, v49, v50, &v66, 1, v51, 0), LODWORD(v52) = v66, v66 == v50) ? (v54 = v53) : (v54 = 0), (v54 & 1) != 0))
  {
    v66 = 0;
    v55 = KTLUTACopyReceiveData(a1, &v66);
    if (v55)
    {
      v55 = KTLCpsPriWriteParseAndRelease(v66, v87 + 6, v83 + 6, v79 + 6);
    }
  }

  else
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v50, v52);
    v55 = 0;
  }

  *a4 = 0;
  v56 = v55;
  v57 = v71;
  if (!v71)
  {
    goto LABEL_80;
  }

LABEL_78:
  if (!atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v57->__on_zero_shared)(v57);
    std::__shared_weak_count::__release_weak(v57);
  }

LABEL_80:
  MEMORY[0x29C279BD0](v72);
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v86, 8);
  return v56;
}

void sub_297A4BD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, dispatch_object_t object, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&a23, 8);
  if (v28)
  {
    dispatch_release(v28);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a27);
  MEMORY[0x29C279BD0](va);
  _Block_object_dispose((v29 - 200), 8);
  _Block_object_dispose((v29 - 168), 8);
  _Block_object_dispose((v29 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLCpsPriWrite_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
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
  *(*(*(a1 + 32) + 8) + 24) = KTLCpsPriWriteParseAndRelease(v6, (*(*(a1 + 40) + 8) + 24), (*(*(a1 + 48) + 8) + 24), (*(*(a1 + 56) + 8) + 24));
  dispatch_semaphore_signal(*(a1 + 72));
  return 0;
}

uint64_t KTLCpsPriWriteParseAndRelease(unsigned int *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v8;
  v21 = v8;
  v18 = v8;
  v19 = v8;
  v17 = v8;
  v9 = (*(*a1 + 16))(a1);
  AriSdk::ARI_IBIPriWriteRspCb_V2_SDK::ARI_IBIPriWriteRspCb_V2_SDK(&v17, v9);
  if (AriSdk::MsgBase::getMergedGMID(&v17) == 67600384)
  {
    _KTLErrorPrint("KTLCpsPriWriteParseAndRelease", "NACK Received\n");
  }

  v10 = AriSdk::ARI_IBIPriWriteRspCb_V2_SDK::unpack(&v17);
  if (a2)
  {
    v11 = a3 == 0;
  }

  else
  {
    v11 = 1;
  }

  v13 = v11 || v10 != 0 || a4 == 0;
  v14 = !v13;
  if (v13)
  {
    _KTLErrorPrint("KTLCpsPriWriteParseAndRelease", "Failed to unpack response.\n");
  }

  else
  {
    v15 = *(&v21 + 1);
    *a2 = *v21;
    *a3 = *v15;
    *a4 = DWORD2(v18);
  }

  (*(*a1 + 8))(a1);
  MEMORY[0x29C279CC0](&v17);
  return v14;
}

uint64_t KTLGetSimCardPresence(uint64_t result, unsigned int a2, void *a3)
{
  if (!result)
  {
    return result;
  }

  if (a2 >= 2)
  {
    _KTLErrorPrint("KTLGetSimSlotInstance", "simSlot parameter: %d is >= KTL max number of supported SIMs: %d\n", a2, 2);
    return 0;
  }

  v4 = result;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  if ((KTLGetSimSlotMapping(result, &v20) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 16);
  v26 = v5;
  if (!*(v4 + 8) && v5)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3002000000;
    v23 = __Block_byref_object_copy__8;
    v24 = __Block_byref_object_dispose__8;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = -1;
    v6 = dispatch_semaphore_create(0);
    v7 = v6;
    object = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    if (ARI_CsiMsSimCardPresenceReq_BLK())
    {
      v8 = 0;
      *a3 = v21[5];
    }

    else
    {
      v13 = dispatch_time(0, 1000000 * *(v4 + 20));
      v14 = dispatch_semaphore_wait(v7, v13);
      if (v14)
      {
        _KTLErrorPrint("KTLGetSimCardPresence", "Timeout waiting for response.\n");
      }

      if (v26)
      {
        AriHost::ExitTrx(v26);
      }

      *a3 = v21[5];
      if (v14)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v17 + 6) == 0;
      }
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v7)
    {
      dispatch_release(v7);
    }

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v20, 8);
    return v8;
  }

  v16 = 0;
  v27 = 0;
  v28 = v5;
  v20 = 0;
  if (ARI_CsiMsSimCardPresenceReq_ENC())
  {
    return 0;
  }

  v9 = operator new(0x18uLL);
  v10 = v20;
  v9[2] = v27;
  *(v9 + 2) = v10;
  *v9 = &unk_2A1E625B0;
  result = KTLUTASendAndReleaseData(v4, v9);
  if (result)
  {
    result = KTLUTACopyReceiveData(v4, &v16);
    if (result)
    {
      v11 = v16;
      (*(*v16 + 16))(v16);
      v12 = ARI_CsiMsSimCardPresenceRspCb_Extract();
      (*(*v11 + 8))(v11);
      return v12 == 0;
    }
  }

  return result;
}

void sub_297A4C3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
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
  _Unwind_Resume(a1);
}

uint64_t __KTLGetSimCardPresence_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiMsSimCardPresenceRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

double cps::ARICommandDriver::ARICommandDriver(uint64_t a1, uint64_t a2)
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

uint64_t cps::ARICommandDriver::PriRefresh(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIPriRefreshRspCb_SDK **a3)
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
    v31 = __Block_byref_object_copy__19;
    v32 = __Block_byref_object_dispose__20;
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
  AriSdk::ARI_IBIPriRefreshRspCb_SDK::ARI_IBIPriRefreshRspCb_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIPriRefreshRspCb_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIPriRefreshRspCb_SDK::unpack(v25))
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
    _KTLErrorPrint("PriRefresh", "Failed IBIPriRefreshReq\n");
  }

  return v18;
}

void sub_297A4C934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
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

uint64_t cps::ARICommandDriver::PriWrite(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIPriWriteRspCb_V3_SDK **a3)
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
    v31 = __Block_byref_object_copy__19;
    v32 = __Block_byref_object_dispose__20;
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
  AriSdk::ARI_IBIPriWriteRspCb_V3_SDK::ARI_IBIPriWriteRspCb_V3_SDK(v16, v17);
  *a3 = v16;
  (*(*v14 + 8))(v14);
LABEL_30:
  hasDeclaredGmid = AriSdk::ARI_IBIPriWriteRspCb_V3_SDK::hasDeclaredGmid(*a3);
  v25 = *a3;
  if (hasDeclaredGmid)
  {
    if (!AriSdk::ARI_IBIPriWriteRspCb_V3_SDK::unpack(v25))
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
    _KTLErrorPrint("PriWrite", "Failed IBIPriWriteReq_V3\n");
  }

  return v18;
}

void sub_297A4CE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
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

void cps::ARICommandDriver::~ARICommandDriver(cps::ARICommandDriver *this)
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

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__20(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk26ARI_IBIPriRefreshRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x50uLL);
  AriSdk::ARI_IBIPriRefreshRspCb_SDK::ARI_IBIPriRefreshRspCb_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk27ARI_IBIPriWriteRspCb_V3_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = operator new(0x50uLL);
  AriSdk::ARI_IBIPriWriteRspCb_V3_SDK::ARI_IBIPriWriteRspCb_V3_SDK(v5, a2);
  **(a1 + 40) = v5;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}