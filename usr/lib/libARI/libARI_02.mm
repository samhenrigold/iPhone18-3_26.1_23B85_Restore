void sub_29608DFF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBIPsIPMaskFilterType,10ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x29uLL)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v12, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v10 = v13 >= 0 ? v12 : v12[0];
      v11 = (*(a2 + 1) - *a2) >> 2;
      *__p = 136316418;
      *&__p[4] = "ari";
      v15 = 2080;
      v16 = v10;
      v17 = 1024;
      v18 = 360;
      v19 = 2048;
      v20 = a1;
      v21 = 2048;
      v22 = v11;
      v23 = 2048;
      v24 = 10;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v17 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 2, 10);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*__p);
    }
  }

  return a1;
}

void sub_29608E218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISetFilterRspCb_SDK::ARI_IBISetFilterRspCb_SDK(AriSdk::ARI_IBISetFilterRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xD048000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xD048000u, 0);
}

void AriSdk::ARI_IBISetFilterRspCb_SDK::ARI_IBISetFilterRspCb_SDK(AriSdk::ARI_IBISetFilterRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISetFilterRspCb_SDK::~ARI_IBISetFilterRspCb_SDK(AriSdk::ARI_IBISetFilterRspCb_SDK *this)
{
  *this = &unk_2A1D21168;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISetFilterRspCb_SDK::~ARI_IBISetFilterRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISetFilterRspCb_SDK::pack(AriSdk::ARI_IBISetFilterRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void std::vector<IBICallPsPacketFilter>::__init_with_size[abi:ne200100]<IBICallPsPacketFilter*,IBICallPsPacketFilter*>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29608E73C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBICallPsQosRule>::__init_with_size[abi:ne200100]<IBICallPsQosRule*,IBICallPsQosRule*>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29608E7E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBICallPsPacketFilter_V2>::__init_with_size[abi:ne200100]<IBICallPsPacketFilter_V2*,IBICallPsPacketFilter_V2*>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29608E894(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29608E910(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<IBICallPsPipeInfo>::__init_with_size[abi:ne200100]<IBICallPsPipeInfo*,IBICallPsPipeInfo*>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29608EA50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBICallPsLoopbackModeAConfig>::__init_with_size[abi:ne200100]<IBICallPsLoopbackModeAConfig*,IBICallPsLoopbackModeAConfig*>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29608EAFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29608EB78(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<IBICallPsLoopbackPipeConfig>::__init_with_size[abi:ne200100]<IBICallPsLoopbackPipeConfig*,IBICallPsLoopbackPipeConfig*>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29608ECA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29608ED24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
}

void std::vector<IBICallPsKeepAliveFrameInfo>::__init_with_size[abi:ne200100]<IBICallPsKeepAliveFrameInfo*,IBICallPsKeepAliveFrameInfo*>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29608EE20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBICallPsAONFilterInfo>::__init_with_size[abi:ne200100]<IBICallPsAONFilterInfo*,IBICallPsAONFilterInfo*>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29608EECC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29608EF48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBIPsTCPUDPFilterType>::__init_with_size[abi:ne200100]<IBIPsTCPUDPFilterType*,IBIPsTCPUDPFilterType*>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29608EFF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBIPsIPMaskFilterType>::__init_with_size[abi:ne200100]<IBIPsIPMaskFilterType*,IBIPsIPMaskFilterType*>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29608F098(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_CsiIdcCellConfigEventIndCb_SDK::ARI_CsiIdcCellConfigEventIndCb_SDK(AriSdk::ARI_CsiIdcCellConfigEventIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49808000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49808000u, 0);
}

void AriSdk::ARI_CsiIdcCellConfigEventIndCb_SDK::ARI_CsiIdcCellConfigEventIndCb_SDK(AriSdk::ARI_CsiIdcCellConfigEventIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcCellConfigEventIndCb_SDK::~ARI_CsiIdcCellConfigEventIndCb_SDK(AriSdk::ARI_CsiIdcCellConfigEventIndCb_SDK *this)
{
  *this = &unk_2A1D22190;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40ABE2FFB4);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40DAFE8768);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4036509CDCLL);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcCellConfigEventIndCb_SDK::~ARI_CsiIdcCellConfigEventIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcCellConfigEventIndCb_SDK::pack(AriSdk::ARI_CsiIdcCellConfigEventIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x2A0uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 0x20uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 0x120uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcControlEventReq_SDK::ARI_CsiIdcControlEventReq_SDK(AriSdk::ARI_CsiIdcControlEventReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48840000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48840000u, 0);
}

void AriSdk::ARI_CsiIdcControlEventReq_SDK::ARI_CsiIdcControlEventReq_SDK(AriSdk::ARI_CsiIdcControlEventReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcControlEventReq_SDK::~ARI_CsiIdcControlEventReq_SDK(AriSdk::ARI_CsiIdcControlEventReq_SDK *this)
{
  *this = &unk_2A1D221C8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcControlEventReq_SDK::~ARI_CsiIdcControlEventReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcControlEventReq_SDK::pack(AriSdk::ARI_CsiIdcControlEventReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcControlEventRspCb_SDK::ARI_CsiIdcControlEventRspCb_SDK(AriSdk::ARI_CsiIdcControlEventRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49040000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49040000u, 0);
}

void AriSdk::ARI_CsiIdcControlEventRspCb_SDK::ARI_CsiIdcControlEventRspCb_SDK(AriSdk::ARI_CsiIdcControlEventRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcControlEventRspCb_SDK::~ARI_CsiIdcControlEventRspCb_SDK(AriSdk::ARI_CsiIdcControlEventRspCb_SDK *this)
{
  *this = &unk_2A1D22200;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcControlEventRspCb_SDK::~ARI_CsiIdcControlEventRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcControlEventRspCb_SDK::pack(AriSdk::ARI_CsiIdcControlEventRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcGetCellConfigReq_SDK::ARI_CsiIdcGetCellConfigReq_SDK(AriSdk::ARI_CsiIdcGetCellConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48808000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48808000u, 0);
}

void AriSdk::ARI_CsiIdcGetCellConfigReq_SDK::ARI_CsiIdcGetCellConfigReq_SDK(AriSdk::ARI_CsiIdcGetCellConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcGetCellConfigReq_SDK::~ARI_CsiIdcGetCellConfigReq_SDK(AriSdk::ARI_CsiIdcGetCellConfigReq_SDK *this)
{
  *this = &unk_2A1D22238;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcGetCellConfigReq_SDK::~ARI_CsiIdcGetCellConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcGetCellConfigReq_SDK::pack(AriSdk::ARI_CsiIdcGetCellConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIdcGetCellConfigRspCb_SDK::ARI_CsiIdcGetCellConfigRspCb_SDK(AriSdk::ARI_CsiIdcGetCellConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49008000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49008000u, 0);
}

void AriSdk::ARI_CsiIdcGetCellConfigRspCb_SDK::ARI_CsiIdcGetCellConfigRspCb_SDK(AriSdk::ARI_CsiIdcGetCellConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcGetCellConfigRspCb_SDK::~ARI_CsiIdcGetCellConfigRspCb_SDK(AriSdk::ARI_CsiIdcGetCellConfigRspCb_SDK *this)
{
  *this = &unk_2A1D22270;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40ABE2FFB4);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40DAFE8768);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4036509CDCLL);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcGetCellConfigRspCb_SDK::~ARI_CsiIdcGetCellConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcGetCellConfigRspCb_SDK::pack(AriSdk::ARI_CsiIdcGetCellConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x2A0uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 0x20uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 0x120uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcGetUartType4StatsReq_SDK::ARI_CsiIdcGetUartType4StatsReq_SDK(AriSdk::ARI_CsiIdcGetUartType4StatsReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48878000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48878000u, 0);
}

void AriSdk::ARI_CsiIdcGetUartType4StatsReq_SDK::ARI_CsiIdcGetUartType4StatsReq_SDK(AriSdk::ARI_CsiIdcGetUartType4StatsReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcGetUartType4StatsReq_SDK::~ARI_CsiIdcGetUartType4StatsReq_SDK(AriSdk::ARI_CsiIdcGetUartType4StatsReq_SDK *this)
{
  *this = &unk_2A1D222A8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcGetUartType4StatsReq_SDK::~ARI_CsiIdcGetUartType4StatsReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcGetUartType4StatsReq_SDK::pack(AriSdk::ARI_CsiIdcGetUartType4StatsReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIdcUartType4StatsRspCb_SDK::ARI_CsiIdcUartType4StatsRspCb_SDK(AriSdk::ARI_CsiIdcUartType4StatsRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49078000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49078000u, 0);
}

void AriSdk::ARI_CsiIdcUartType4StatsRspCb_SDK::ARI_CsiIdcUartType4StatsRspCb_SDK(AriSdk::ARI_CsiIdcUartType4StatsRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcUartType4StatsRspCb_SDK::~ARI_CsiIdcUartType4StatsRspCb_SDK(AriSdk::ARI_CsiIdcUartType4StatsRspCb_SDK *this)
{
  *this = &unk_2A1D222E0;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcUartType4StatsRspCb_SDK::~ARI_CsiIdcUartType4StatsRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcUartType4StatsRspCb_SDK::pack(AriSdk::ARI_CsiIdcUartType4StatsRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      if (v7)
      {
        v9 = v7 == v8;
      }

      else
      {
        v9 = 1;
      }

      if (v9 || (result = AriMsg::pack(*(this + 6), 3, v7, v8 - v7, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void sub_2960913FC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned short,16ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v23 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x21)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v10, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v8 = v11 >= 0 ? v10 : v10[0];
      v9 = (__c->n128_u64[1] - __c->n128_u64[0]) >> 1;
      *__p = 136316418;
      *&__p[4] = "ari";
      v13 = 2080;
      v14 = v8;
      v15 = 1024;
      v16 = 360;
      v17 = 2048;
      v18 = this;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = 16;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v15 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 1, 16);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_29609162C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_CsiIdcRTArbiterStatsEventIndCb_SDK::ARI_CsiIdcRTArbiterStatsEventIndCb_SDK(AriSdk::ARI_CsiIdcRTArbiterStatsEventIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49818000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49818000u, 0);
}

void AriSdk::ARI_CsiIdcRTArbiterStatsEventIndCb_SDK::ARI_CsiIdcRTArbiterStatsEventIndCb_SDK(AriSdk::ARI_CsiIdcRTArbiterStatsEventIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTArbiterStatsEventIndCb_SDK::~ARI_CsiIdcRTArbiterStatsEventIndCb_SDK(AriSdk::ARI_CsiIdcRTArbiterStatsEventIndCb_SDK *this)
{
  *this = &unk_2A1D22318;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C406A1FEB65);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTArbiterStatsEventIndCb_SDK::~ARI_CsiIdcRTArbiterStatsEventIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTArbiterStatsEventIndCb_SDK::pack(AriSdk::ARI_CsiIdcRTArbiterStatsEventIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x28uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcRTControlWci2UartReq_SDK::ARI_CsiIdcRTControlWci2UartReq_SDK(AriSdk::ARI_CsiIdcRTControlWci2UartReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48850000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48850000u, 0);
}

void AriSdk::ARI_CsiIdcRTControlWci2UartReq_SDK::ARI_CsiIdcRTControlWci2UartReq_SDK(AriSdk::ARI_CsiIdcRTControlWci2UartReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTControlWci2UartReq_SDK::~ARI_CsiIdcRTControlWci2UartReq_SDK(AriSdk::ARI_CsiIdcRTControlWci2UartReq_SDK *this)
{
  *this = &unk_2A1D22350;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTControlWci2UartReq_SDK::~ARI_CsiIdcRTControlWci2UartReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTControlWci2UartReq_SDK::pack(AriSdk::ARI_CsiIdcRTControlWci2UartReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIdcRTControlWci2UartRsp_SDK::ARI_CsiIdcRTControlWci2UartRsp_SDK(AriSdk::ARI_CsiIdcRTControlWci2UartRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49050000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49050000u, 0);
}

void AriSdk::ARI_CsiIdcRTControlWci2UartRsp_SDK::ARI_CsiIdcRTControlWci2UartRsp_SDK(AriSdk::ARI_CsiIdcRTControlWci2UartRsp_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTControlWci2UartRsp_SDK::~ARI_CsiIdcRTControlWci2UartRsp_SDK(AriSdk::ARI_CsiIdcRTControlWci2UartRsp_SDK *this)
{
  *this = &unk_2A1D22388;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTControlWci2UartRsp_SDK::~ARI_CsiIdcRTControlWci2UartRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTControlWci2UartRsp_SDK::pack(AriSdk::ARI_CsiIdcRTControlWci2UartRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIdcRTGetArbiterStatsReq_SDK::ARI_CsiIdcRTGetArbiterStatsReq_SDK(AriSdk::ARI_CsiIdcRTGetArbiterStatsReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48838000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48838000u, 0);
}

void AriSdk::ARI_CsiIdcRTGetArbiterStatsReq_SDK::ARI_CsiIdcRTGetArbiterStatsReq_SDK(AriSdk::ARI_CsiIdcRTGetArbiterStatsReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTGetArbiterStatsReq_SDK::~ARI_CsiIdcRTGetArbiterStatsReq_SDK(AriSdk::ARI_CsiIdcRTGetArbiterStatsReq_SDK *this)
{
  *this = &unk_2A1D223C0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTGetArbiterStatsReq_SDK::~ARI_CsiIdcRTGetArbiterStatsReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTGetArbiterStatsReq_SDK::pack(AriSdk::ARI_CsiIdcRTGetArbiterStatsReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIdcRTArbiterStatsRspCb_SDK::ARI_CsiIdcRTArbiterStatsRspCb_SDK(AriSdk::ARI_CsiIdcRTArbiterStatsRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49038000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49038000u, 0);
}

void AriSdk::ARI_CsiIdcRTArbiterStatsRspCb_SDK::ARI_CsiIdcRTArbiterStatsRspCb_SDK(AriSdk::ARI_CsiIdcRTArbiterStatsRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTArbiterStatsRspCb_SDK::~ARI_CsiIdcRTArbiterStatsRspCb_SDK(AriSdk::ARI_CsiIdcRTArbiterStatsRspCb_SDK *this)
{
  *this = &unk_2A1D223F8;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C406A1FEB65);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTArbiterStatsRspCb_SDK::~ARI_CsiIdcRTArbiterStatsRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTArbiterStatsRspCb_SDK::pack(AriSdk::ARI_CsiIdcRTArbiterStatsRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x28uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcRTGetLinkQualityReportReq_SDK::ARI_CsiIdcRTGetLinkQualityReportReq_SDK(AriSdk::ARI_CsiIdcRTGetLinkQualityReportReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48820000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48820000u, 0);
}

void AriSdk::ARI_CsiIdcRTGetLinkQualityReportReq_SDK::ARI_CsiIdcRTGetLinkQualityReportReq_SDK(AriSdk::ARI_CsiIdcRTGetLinkQualityReportReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTGetLinkQualityReportReq_SDK::~ARI_CsiIdcRTGetLinkQualityReportReq_SDK(AriSdk::ARI_CsiIdcRTGetLinkQualityReportReq_SDK *this)
{
  *this = &unk_2A1D22430;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTGetLinkQualityReportReq_SDK::~ARI_CsiIdcRTGetLinkQualityReportReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTGetLinkQualityReportReq_SDK::pack(AriSdk::ARI_CsiIdcRTGetLinkQualityReportReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIdcRTGetLinkQualityReportRspCb_SDK::ARI_CsiIdcRTGetLinkQualityReportRspCb_SDK(AriSdk::ARI_CsiIdcRTGetLinkQualityReportRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49020000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49020000u, 0);
}

void AriSdk::ARI_CsiIdcRTGetLinkQualityReportRspCb_SDK::ARI_CsiIdcRTGetLinkQualityReportRspCb_SDK(AriSdk::ARI_CsiIdcRTGetLinkQualityReportRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTGetLinkQualityReportRspCb_SDK::~ARI_CsiIdcRTGetLinkQualityReportRspCb_SDK(AriSdk::ARI_CsiIdcRTGetLinkQualityReportRspCb_SDK *this)
{
  *this = &unk_2A1D22468;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C403B807CB7);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTGetLinkQualityReportRspCb_SDK::~ARI_CsiIdcRTGetLinkQualityReportRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTGetLinkQualityReportRspCb_SDK::pack(AriSdk::ARI_CsiIdcRTGetLinkQualityReportRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0xBuLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcRTGetUartActivityStatsReq_SDK::ARI_CsiIdcRTGetUartActivityStatsReq_SDK(AriSdk::ARI_CsiIdcRTGetUartActivityStatsReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48860000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48860000u, 0);
}

void AriSdk::ARI_CsiIdcRTGetUartActivityStatsReq_SDK::ARI_CsiIdcRTGetUartActivityStatsReq_SDK(AriSdk::ARI_CsiIdcRTGetUartActivityStatsReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTGetUartActivityStatsReq_SDK::~ARI_CsiIdcRTGetUartActivityStatsReq_SDK(AriSdk::ARI_CsiIdcRTGetUartActivityStatsReq_SDK *this)
{
  *this = &unk_2A1D224A0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTGetUartActivityStatsReq_SDK::~ARI_CsiIdcRTGetUartActivityStatsReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTGetUartActivityStatsReq_SDK::pack(AriSdk::ARI_CsiIdcRTGetUartActivityStatsReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIdcRTUartActivityStatsRspCb_SDK::ARI_CsiIdcRTUartActivityStatsRspCb_SDK(AriSdk::ARI_CsiIdcRTUartActivityStatsRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49060000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49060000u, 0);
}

void AriSdk::ARI_CsiIdcRTUartActivityStatsRspCb_SDK::ARI_CsiIdcRTUartActivityStatsRspCb_SDK(AriSdk::ARI_CsiIdcRTUartActivityStatsRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTUartActivityStatsRspCb_SDK::~ARI_CsiIdcRTUartActivityStatsRspCb_SDK(AriSdk::ARI_CsiIdcRTUartActivityStatsRspCb_SDK *this)
{
  *this = &unk_2A1D224D8;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4000313F17);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4000313F17);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4000313F17);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4000313F17);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4000313F17);
  }

  v8 = *(this + 10);
  *(this + 10) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 8);
  *(this + 8) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTUartActivityStatsRspCb_SDK::~ARI_CsiIdcRTUartActivityStatsRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTUartActivityStatsRspCb_SDK::pack(AriSdk::ARI_CsiIdcRTUartActivityStatsRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 8uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 8uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 8uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 8uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 8uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 8uLL, 0), !result))
                  {
                    result = 0;
                    *a2 = *(this + 6);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcRTLinkQualityReportEventIndCb_SDK::ARI_CsiIdcRTLinkQualityReportEventIndCb_SDK(AriSdk::ARI_CsiIdcRTLinkQualityReportEventIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49810000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49810000u, 0);
}

void AriSdk::ARI_CsiIdcRTLinkQualityReportEventIndCb_SDK::ARI_CsiIdcRTLinkQualityReportEventIndCb_SDK(AriSdk::ARI_CsiIdcRTLinkQualityReportEventIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTLinkQualityReportEventIndCb_SDK::~ARI_CsiIdcRTLinkQualityReportEventIndCb_SDK(AriSdk::ARI_CsiIdcRTLinkQualityReportEventIndCb_SDK *this)
{
  *this = &unk_2A1D22510;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C403B807CB7);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTLinkQualityReportEventIndCb_SDK::~ARI_CsiIdcRTLinkQualityReportEventIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTLinkQualityReportEventIndCb_SDK::pack(AriSdk::ARI_CsiIdcRTLinkQualityReportEventIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0xBuLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcRTSetArbiterStatsConfigReq_SDK::ARI_CsiIdcRTSetArbiterStatsConfigReq_SDK(AriSdk::ARI_CsiIdcRTSetArbiterStatsConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48830000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48830000u, 0);
}

void AriSdk::ARI_CsiIdcRTSetArbiterStatsConfigReq_SDK::ARI_CsiIdcRTSetArbiterStatsConfigReq_SDK(AriSdk::ARI_CsiIdcRTSetArbiterStatsConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTSetArbiterStatsConfigReq_SDK::~ARI_CsiIdcRTSetArbiterStatsConfigReq_SDK(AriSdk::ARI_CsiIdcRTSetArbiterStatsConfigReq_SDK *this)
{
  *this = &unk_2A1D22548;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTSetArbiterStatsConfigReq_SDK::~ARI_CsiIdcRTSetArbiterStatsConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTSetArbiterStatsConfigReq_SDK::pack(AriSdk::ARI_CsiIdcRTSetArbiterStatsConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 2uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcRTSetArbiterStatsConfigRspCb_SDK::ARI_CsiIdcRTSetArbiterStatsConfigRspCb_SDK(AriSdk::ARI_CsiIdcRTSetArbiterStatsConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49030000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49030000u, 0);
}

void AriSdk::ARI_CsiIdcRTSetArbiterStatsConfigRspCb_SDK::ARI_CsiIdcRTSetArbiterStatsConfigRspCb_SDK(AriSdk::ARI_CsiIdcRTSetArbiterStatsConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTSetArbiterStatsConfigRspCb_SDK::~ARI_CsiIdcRTSetArbiterStatsConfigRspCb_SDK(AriSdk::ARI_CsiIdcRTSetArbiterStatsConfigRspCb_SDK *this)
{
  *this = &unk_2A1D22580;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTSetArbiterStatsConfigRspCb_SDK::~ARI_CsiIdcRTSetArbiterStatsConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTSetArbiterStatsConfigRspCb_SDK::pack(AriSdk::ARI_CsiIdcRTSetArbiterStatsConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcRTSetLinkQualityReportConfigReq_SDK::ARI_CsiIdcRTSetLinkQualityReportConfigReq_SDK(AriSdk::ARI_CsiIdcRTSetLinkQualityReportConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48818000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48818000u, 0);
}

void AriSdk::ARI_CsiIdcRTSetLinkQualityReportConfigReq_SDK::ARI_CsiIdcRTSetLinkQualityReportConfigReq_SDK(AriSdk::ARI_CsiIdcRTSetLinkQualityReportConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTSetLinkQualityReportConfigReq_SDK::~ARI_CsiIdcRTSetLinkQualityReportConfigReq_SDK(AriSdk::ARI_CsiIdcRTSetLinkQualityReportConfigReq_SDK *this)
{
  *this = &unk_2A1D225B8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4054111E92);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTSetLinkQualityReportConfigReq_SDK::~ARI_CsiIdcRTSetLinkQualityReportConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTSetLinkQualityReportConfigReq_SDK::pack(AriSdk::ARI_CsiIdcRTSetLinkQualityReportConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xCuLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcRTSetLinkQualityReportRspCb_SDK::ARI_CsiIdcRTSetLinkQualityReportRspCb_SDK(AriSdk::ARI_CsiIdcRTSetLinkQualityReportRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49018000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49018000u, 0);
}

void AriSdk::ARI_CsiIdcRTSetLinkQualityReportRspCb_SDK::ARI_CsiIdcRTSetLinkQualityReportRspCb_SDK(AriSdk::ARI_CsiIdcRTSetLinkQualityReportRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTSetLinkQualityReportRspCb_SDK::~ARI_CsiIdcRTSetLinkQualityReportRspCb_SDK(AriSdk::ARI_CsiIdcRTSetLinkQualityReportRspCb_SDK *this)
{
  *this = &unk_2A1D225F0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTSetLinkQualityReportRspCb_SDK::~ARI_CsiIdcRTSetLinkQualityReportRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTSetLinkQualityReportRspCb_SDK::pack(AriSdk::ARI_CsiIdcRTSetLinkQualityReportRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcRTSetScanFreqReq_SDK::ARI_CsiIdcRTSetScanFreqReq_SDK(AriSdk::ARI_CsiIdcRTSetScanFreqReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48828000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48828000u, 0);
}

void AriSdk::ARI_CsiIdcRTSetScanFreqReq_SDK::ARI_CsiIdcRTSetScanFreqReq_SDK(AriSdk::ARI_CsiIdcRTSetScanFreqReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTSetScanFreqReq_SDK::~ARI_CsiIdcRTSetScanFreqReq_SDK(AriSdk::ARI_CsiIdcRTSetScanFreqReq_SDK *this)
{
  *this = &unk_2A1D22628;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40CDCDE48DLL);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTSetScanFreqReq_SDK::~ARI_CsiIdcRTSetScanFreqReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTSetScanFreqReq_SDK::pack(AriSdk::ARI_CsiIdcRTSetScanFreqReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x60uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcRTSetScanFreqRspCb_SDK::ARI_CsiIdcRTSetScanFreqRspCb_SDK(AriSdk::ARI_CsiIdcRTSetScanFreqRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49028000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49028000u, 0);
}

void AriSdk::ARI_CsiIdcRTSetScanFreqRspCb_SDK::ARI_CsiIdcRTSetScanFreqRspCb_SDK(AriSdk::ARI_CsiIdcRTSetScanFreqRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTSetScanFreqRspCb_SDK::~ARI_CsiIdcRTSetScanFreqRspCb_SDK(AriSdk::ARI_CsiIdcRTSetScanFreqRspCb_SDK *this)
{
  *this = &unk_2A1D22660;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTSetScanFreqRspCb_SDK::~ARI_CsiIdcRTSetScanFreqRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTSetScanFreqRspCb_SDK::pack(AriSdk::ARI_CsiIdcRTSetScanFreqRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcRTUartActivityStatsConfigReq_SDK::ARI_CsiIdcRTUartActivityStatsConfigReq_SDK(AriSdk::ARI_CsiIdcRTUartActivityStatsConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48858000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48858000u, 0);
}

void AriSdk::ARI_CsiIdcRTUartActivityStatsConfigReq_SDK::ARI_CsiIdcRTUartActivityStatsConfigReq_SDK(AriSdk::ARI_CsiIdcRTUartActivityStatsConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTUartActivityStatsConfigReq_SDK::~ARI_CsiIdcRTUartActivityStatsConfigReq_SDK(AriSdk::ARI_CsiIdcRTUartActivityStatsConfigReq_SDK *this)
{
  *this = &unk_2A1D22698;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTUartActivityStatsConfigReq_SDK::~ARI_CsiIdcRTUartActivityStatsConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTUartActivityStatsConfigReq_SDK::pack(AriSdk::ARI_CsiIdcRTUartActivityStatsConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcRTUartActivityStatsConfigRspCb_SDK::ARI_CsiIdcRTUartActivityStatsConfigRspCb_SDK(AriSdk::ARI_CsiIdcRTUartActivityStatsConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49058000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49058000u, 0);
}

void AriSdk::ARI_CsiIdcRTUartActivityStatsConfigRspCb_SDK::ARI_CsiIdcRTUartActivityStatsConfigRspCb_SDK(AriSdk::ARI_CsiIdcRTUartActivityStatsConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTUartActivityStatsConfigRspCb_SDK::~ARI_CsiIdcRTUartActivityStatsConfigRspCb_SDK(AriSdk::ARI_CsiIdcRTUartActivityStatsConfigRspCb_SDK *this)
{
  *this = &unk_2A1D226D0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTUartActivityStatsConfigRspCb_SDK::~ARI_CsiIdcRTUartActivityStatsConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTUartActivityStatsConfigRspCb_SDK::pack(AriSdk::ARI_CsiIdcRTUartActivityStatsConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcRTUartActivityStatsEventIndCb_SDK::ARI_CsiIdcRTUartActivityStatsEventIndCb_SDK(AriSdk::ARI_CsiIdcRTUartActivityStatsEventIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49820000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49820000u, 0);
}

void AriSdk::ARI_CsiIdcRTUartActivityStatsEventIndCb_SDK::ARI_CsiIdcRTUartActivityStatsEventIndCb_SDK(AriSdk::ARI_CsiIdcRTUartActivityStatsEventIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcRTUartActivityStatsEventIndCb_SDK::~ARI_CsiIdcRTUartActivityStatsEventIndCb_SDK(AriSdk::ARI_CsiIdcRTUartActivityStatsEventIndCb_SDK *this)
{
  *this = &unk_2A1D22708;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4000313F17);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4000313F17);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4000313F17);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4000313F17);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4000313F17);
  }

  v8 = *(this + 10);
  *(this + 10) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 8);
  *(this + 8) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcRTUartActivityStatsEventIndCb_SDK::~ARI_CsiIdcRTUartActivityStatsEventIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcRTUartActivityStatsEventIndCb_SDK::pack(AriSdk::ARI_CsiIdcRTUartActivityStatsEventIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 8uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 8uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 8uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 8uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 8uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 8uLL, 0), !result))
                  {
                    result = 0;
                    *a2 = *(this + 6);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcSetGnssStatusReq_SDK::ARI_CsiIdcSetGnssStatusReq_SDK(AriSdk::ARI_CsiIdcSetGnssStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48898000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48898000u, 0);
}

void AriSdk::ARI_CsiIdcSetGnssStatusReq_SDK::ARI_CsiIdcSetGnssStatusReq_SDK(AriSdk::ARI_CsiIdcSetGnssStatusReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcSetGnssStatusReq_SDK::~ARI_CsiIdcSetGnssStatusReq_SDK(AriSdk::ARI_CsiIdcSetGnssStatusReq_SDK *this)
{
  *this = &unk_2A1D22740;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcSetGnssStatusReq_SDK::~ARI_CsiIdcSetGnssStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcSetGnssStatusReq_SDK::pack(AriSdk::ARI_CsiIdcSetGnssStatusReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcSetGnssStatusRspCb_SDK::ARI_CsiIdcSetGnssStatusRspCb_SDK(AriSdk::ARI_CsiIdcSetGnssStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49098000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49098000u, 0);
}

void AriSdk::ARI_CsiIdcSetGnssStatusRspCb_SDK::ARI_CsiIdcSetGnssStatusRspCb_SDK(AriSdk::ARI_CsiIdcSetGnssStatusRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcSetGnssStatusRspCb_SDK::~ARI_CsiIdcSetGnssStatusRspCb_SDK(AriSdk::ARI_CsiIdcSetGnssStatusRspCb_SDK *this)
{
  *this = &unk_2A1D22778;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcSetGnssStatusRspCb_SDK::~ARI_CsiIdcSetGnssStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcSetGnssStatusRspCb_SDK::pack(AriSdk::ARI_CsiIdcSetGnssStatusRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcSetLaaConfigReq_SDK::ARI_CsiIdcSetLaaConfigReq_SDK(AriSdk::ARI_CsiIdcSetLaaConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48888000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48888000u, 0);
}

void AriSdk::ARI_CsiIdcSetLaaConfigReq_SDK::ARI_CsiIdcSetLaaConfigReq_SDK(AriSdk::ARI_CsiIdcSetLaaConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcSetLaaConfigReq_SDK::~ARI_CsiIdcSetLaaConfigReq_SDK(AriSdk::ARI_CsiIdcSetLaaConfigReq_SDK *this)
{
  *this = &unk_2A1D227B0;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcSetLaaConfigReq_SDK::~ARI_CsiIdcSetLaaConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcSetLaaConfigReq_SDK::pack(AriSdk::ARI_CsiIdcSetLaaConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 2uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 2uLL, 0), !result))
              {
                result = 0;
                *a2 = *(this + 6);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcSetLaaConfigRspCb_SDK::ARI_CsiIdcSetLaaConfigRspCb_SDK(AriSdk::ARI_CsiIdcSetLaaConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49088000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49088000u, 0);
}

void AriSdk::ARI_CsiIdcSetLaaConfigRspCb_SDK::ARI_CsiIdcSetLaaConfigRspCb_SDK(AriSdk::ARI_CsiIdcSetLaaConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcSetLaaConfigRspCb_SDK::~ARI_CsiIdcSetLaaConfigRspCb_SDK(AriSdk::ARI_CsiIdcSetLaaConfigRspCb_SDK *this)
{
  *this = &unk_2A1D227E8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcSetLaaConfigRspCb_SDK::~ARI_CsiIdcSetLaaConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcSetLaaConfigRspCb_SDK::pack(AriSdk::ARI_CsiIdcSetLaaConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcSetRTConfigReq_SDK::ARI_CsiIdcSetRTConfigReq_SDK(AriSdk::ARI_CsiIdcSetRTConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48810000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48810000u, 0);
}

void AriSdk::ARI_CsiIdcSetRTConfigReq_SDK::ARI_CsiIdcSetRTConfigReq_SDK(AriSdk::ARI_CsiIdcSetRTConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcSetRTConfigReq_SDK::~ARI_CsiIdcSetRTConfigReq_SDK(AriSdk::ARI_CsiIdcSetRTConfigReq_SDK *this)
{
  *this = &unk_2A1D22820;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40249A30EDLL);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40C36A4E17);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcSetRTConfigReq_SDK::~ARI_CsiIdcSetRTConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcSetRTConfigReq_SDK::pack(AriSdk::ARI_CsiIdcSetRTConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x14uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x188uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcSetRTConfigRspCb_SDK::ARI_CsiIdcSetRTConfigRspCb_SDK(AriSdk::ARI_CsiIdcSetRTConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49010000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49010000u, 0);
}

void AriSdk::ARI_CsiIdcSetRTConfigRspCb_SDK::ARI_CsiIdcSetRTConfigRspCb_SDK(AriSdk::ARI_CsiIdcSetRTConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcSetRTConfigRspCb_SDK::~ARI_CsiIdcSetRTConfigRspCb_SDK(AriSdk::ARI_CsiIdcSetRTConfigRspCb_SDK *this)
{
  *this = &unk_2A1D22858;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcSetRTConfigRspCb_SDK::~ARI_CsiIdcSetRTConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcSetRTConfigRspCb_SDK::pack(AriSdk::ARI_CsiIdcSetRTConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcSetRadio1Req_SDK::ARI_CsiIdcSetRadio1Req_SDK(AriSdk::ARI_CsiIdcSetRadio1Req_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48890000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48890000u, 0);
}

void AriSdk::ARI_CsiIdcSetRadio1Req_SDK::ARI_CsiIdcSetRadio1Req_SDK(AriSdk::ARI_CsiIdcSetRadio1Req_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcSetRadio1Req_SDK::~ARI_CsiIdcSetRadio1Req_SDK(AriSdk::ARI_CsiIdcSetRadio1Req_SDK *this)
{
  *this = &unk_2A1D22890;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcSetRadio1Req_SDK::~ARI_CsiIdcSetRadio1Req_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcSetRadio1Req_SDK::pack(AriSdk::ARI_CsiIdcSetRadio1Req_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcSetRadio1RspCb_SDK::ARI_CsiIdcSetRadio1RspCb_SDK(AriSdk::ARI_CsiIdcSetRadio1RspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49090000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49090000u, 0);
}

void AriSdk::ARI_CsiIdcSetRadio1RspCb_SDK::ARI_CsiIdcSetRadio1RspCb_SDK(AriSdk::ARI_CsiIdcSetRadio1RspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcSetRadio1RspCb_SDK::~ARI_CsiIdcSetRadio1RspCb_SDK(AriSdk::ARI_CsiIdcSetRadio1RspCb_SDK *this)
{
  *this = &unk_2A1D228C8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcSetRadio1RspCb_SDK::~ARI_CsiIdcSetRadio1RspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcSetRadio1RspCb_SDK::pack(AriSdk::ARI_CsiIdcSetRadio1RspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcSetTxPowerLimitReq_SDK::ARI_CsiIdcSetTxPowerLimitReq_SDK(AriSdk::ARI_CsiIdcSetTxPowerLimitReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48880000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48880000u, 0);
}

void AriSdk::ARI_CsiIdcSetTxPowerLimitReq_SDK::ARI_CsiIdcSetTxPowerLimitReq_SDK(AriSdk::ARI_CsiIdcSetTxPowerLimitReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcSetTxPowerLimitReq_SDK::~ARI_CsiIdcSetTxPowerLimitReq_SDK(AriSdk::ARI_CsiIdcSetTxPowerLimitReq_SDK *this)
{
  *this = &unk_2A1D22900;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
  }

  v9 = *(this + 8);
  *(this + 8) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcSetTxPowerLimitReq_SDK::~ARI_CsiIdcSetTxPowerLimitReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcSetTxPowerLimitReq_SDK::pack(AriSdk::ARI_CsiIdcSetTxPowerLimitReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 1uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 1uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 4uLL, 0), !result))
                {
                  result = 0;
                  *a2 = *(this + 6);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcSetTxPowerLimitRspCb_SDK::ARI_CsiIdcSetTxPowerLimitRspCb_SDK(AriSdk::ARI_CsiIdcSetTxPowerLimitRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49080000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49080000u, 0);
}

void AriSdk::ARI_CsiIdcSetTxPowerLimitRspCb_SDK::ARI_CsiIdcSetTxPowerLimitRspCb_SDK(AriSdk::ARI_CsiIdcSetTxPowerLimitRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcSetTxPowerLimitRspCb_SDK::~ARI_CsiIdcSetTxPowerLimitRspCb_SDK(AriSdk::ARI_CsiIdcSetTxPowerLimitRspCb_SDK *this)
{
  *this = &unk_2A1D22938;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcSetTxPowerLimitRspCb_SDK::~ARI_CsiIdcSetTxPowerLimitRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcSetTxPowerLimitRspCb_SDK::pack(AriSdk::ARI_CsiIdcSetTxPowerLimitRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcSetWifiStatusReq_SDK::ARI_CsiIdcSetWifiStatusReq_SDK(AriSdk::ARI_CsiIdcSetWifiStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48868000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48868000u, 0);
}

void AriSdk::ARI_CsiIdcSetWifiStatusReq_SDK::ARI_CsiIdcSetWifiStatusReq_SDK(AriSdk::ARI_CsiIdcSetWifiStatusReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcSetWifiStatusReq_SDK::~ARI_CsiIdcSetWifiStatusReq_SDK(AriSdk::ARI_CsiIdcSetWifiStatusReq_SDK *this)
{
  *this = &unk_2A1D22970;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcSetWifiStatusReq_SDK::~ARI_CsiIdcSetWifiStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcSetWifiStatusReq_SDK::pack(AriSdk::ARI_CsiIdcSetWifiStatusReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcSetWifiStatusRspCb_SDK::ARI_CsiIdcSetWifiStatusRspCb_SDK(AriSdk::ARI_CsiIdcSetWifiStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49068000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49068000u, 0);
}

void AriSdk::ARI_CsiIdcSetWifiStatusRspCb_SDK::ARI_CsiIdcSetWifiStatusRspCb_SDK(AriSdk::ARI_CsiIdcSetWifiStatusRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcSetWifiStatusRspCb_SDK::~ARI_CsiIdcSetWifiStatusRspCb_SDK(AriSdk::ARI_CsiIdcSetWifiStatusRspCb_SDK *this)
{
  *this = &unk_2A1D229A8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcSetWifiStatusRspCb_SDK::~ARI_CsiIdcSetWifiStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcSetWifiStatusRspCb_SDK::pack(AriSdk::ARI_CsiIdcSetWifiStatusRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcTestModeCmdReq_SDK::ARI_CsiIdcTestModeCmdReq_SDK(AriSdk::ARI_CsiIdcTestModeCmdReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48848000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48848000u, 0);
}

void AriSdk::ARI_CsiIdcTestModeCmdReq_SDK::ARI_CsiIdcTestModeCmdReq_SDK(AriSdk::ARI_CsiIdcTestModeCmdReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcTestModeCmdReq_SDK::~ARI_CsiIdcTestModeCmdReq_SDK(AriSdk::ARI_CsiIdcTestModeCmdReq_SDK *this)
{
  *this = &unk_2A1D229E0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4027586B93);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcTestModeCmdReq_SDK::~ARI_CsiIdcTestModeCmdReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcTestModeCmdReq_SDK::pack(AriSdk::ARI_CsiIdcTestModeCmdReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x1CuLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcTestModeCmdRsp_SDK::ARI_CsiIdcTestModeCmdRsp_SDK(AriSdk::ARI_CsiIdcTestModeCmdRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49048000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49048000u, 0);
}

void AriSdk::ARI_CsiIdcTestModeCmdRsp_SDK::ARI_CsiIdcTestModeCmdRsp_SDK(AriSdk::ARI_CsiIdcTestModeCmdRsp_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcTestModeCmdRsp_SDK::~ARI_CsiIdcTestModeCmdRsp_SDK(AriSdk::ARI_CsiIdcTestModeCmdRsp_SDK *this)
{
  *this = &unk_2A1D22A18;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4000313F17);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcTestModeCmdRsp_SDK::~ARI_CsiIdcTestModeCmdRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcTestModeCmdRsp_SDK::pack(AriSdk::ARI_CsiIdcTestModeCmdRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 8uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcUartType4StatsConfigReq_SDK::ARI_CsiIdcUartType4StatsConfigReq_SDK(AriSdk::ARI_CsiIdcUartType4StatsConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48870000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48870000u, 0);
}

void AriSdk::ARI_CsiIdcUartType4StatsConfigReq_SDK::ARI_CsiIdcUartType4StatsConfigReq_SDK(AriSdk::ARI_CsiIdcUartType4StatsConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcUartType4StatsConfigReq_SDK::~ARI_CsiIdcUartType4StatsConfigReq_SDK(AriSdk::ARI_CsiIdcUartType4StatsConfigReq_SDK *this)
{
  *this = &unk_2A1D22A50;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcUartType4StatsConfigReq_SDK::~ARI_CsiIdcUartType4StatsConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcUartType4StatsConfigReq_SDK::pack(AriSdk::ARI_CsiIdcUartType4StatsConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 2uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcUartType4StatsConfigRspCb_SDK::ARI_CsiIdcUartType4StatsConfigRspCb_SDK(AriSdk::ARI_CsiIdcUartType4StatsConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49070000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49070000u, 0);
}

void AriSdk::ARI_CsiIdcUartType4StatsConfigRspCb_SDK::ARI_CsiIdcUartType4StatsConfigRspCb_SDK(AriSdk::ARI_CsiIdcUartType4StatsConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcUartType4StatsConfigRspCb_SDK::~ARI_CsiIdcUartType4StatsConfigRspCb_SDK(AriSdk::ARI_CsiIdcUartType4StatsConfigRspCb_SDK *this)
{
  *this = &unk_2A1D22A88;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcUartType4StatsConfigRspCb_SDK::~ARI_CsiIdcUartType4StatsConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcUartType4StatsConfigRspCb_SDK::pack(AriSdk::ARI_CsiIdcUartType4StatsConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiIdcUartType4StatsEventIndCb_SDK::ARI_CsiIdcUartType4StatsEventIndCb_SDK(AriSdk::ARI_CsiIdcUartType4StatsEventIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49828000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49828000u, 0);
}

void AriSdk::ARI_CsiIdcUartType4StatsEventIndCb_SDK::ARI_CsiIdcUartType4StatsEventIndCb_SDK(AriSdk::ARI_CsiIdcUartType4StatsEventIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIdcUartType4StatsEventIndCb_SDK::~ARI_CsiIdcUartType4StatsEventIndCb_SDK(AriSdk::ARI_CsiIdcUartType4StatsEventIndCb_SDK *this)
{
  *this = &unk_2A1D22AC0;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIdcUartType4StatsEventIndCb_SDK::~ARI_CsiIdcUartType4StatsEventIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIdcUartType4StatsEventIndCb_SDK::pack(AriSdk::ARI_CsiIdcUartType4StatsEventIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      if (v7)
      {
        v9 = v7 == v8;
      }

      else
      {
        v9 = 1;
      }

      if (v9 || (result = AriMsg::pack(*(this + 6), 3, v7, v8 - v7, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void sub_29609AE30(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_UtaIdcCellConfigEventIndCb_SDK::ARI_UtaIdcCellConfigEventIndCb_SDK(AriSdk::ARI_UtaIdcCellConfigEventIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49830000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49830000u, 0);
}

void AriSdk::ARI_UtaIdcCellConfigEventIndCb_SDK::ARI_UtaIdcCellConfigEventIndCb_SDK(AriSdk::ARI_UtaIdcCellConfigEventIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcCellConfigEventIndCb_SDK::~ARI_UtaIdcCellConfigEventIndCb_SDK(AriSdk::ARI_UtaIdcCellConfigEventIndCb_SDK *this)
{
  *this = &unk_2A1D22AF8;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408F14E072);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcCellConfigEventIndCb_SDK::~ARI_UtaIdcCellConfigEventIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcCellConfigEventIndCb_SDK::pack(AriSdk::ARI_UtaIdcCellConfigEventIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x2A0uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcConfigEventReq_SDK::ARI_UtaIdcConfigEventReq_SDK(AriSdk::ARI_UtaIdcConfigEventReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x488A8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x488A8000u, 0);
}

void AriSdk::ARI_UtaIdcConfigEventReq_SDK::ARI_UtaIdcConfigEventReq_SDK(AriSdk::ARI_UtaIdcConfigEventReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcConfigEventReq_SDK::~ARI_UtaIdcConfigEventReq_SDK(AriSdk::ARI_UtaIdcConfigEventReq_SDK *this)
{
  *this = &unk_2A1D22B30;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcConfigEventReq_SDK::~ARI_UtaIdcConfigEventReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcConfigEventReq_SDK::pack(AriSdk::ARI_UtaIdcConfigEventReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 8uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcConfigEventRspCb_SDK::ARI_UtaIdcConfigEventRspCb_SDK(AriSdk::ARI_UtaIdcConfigEventRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x490A8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x490A8000u, 0);
}

void AriSdk::ARI_UtaIdcConfigEventRspCb_SDK::ARI_UtaIdcConfigEventRspCb_SDK(AriSdk::ARI_UtaIdcConfigEventRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcConfigEventRspCb_SDK::~ARI_UtaIdcConfigEventRspCb_SDK(AriSdk::ARI_UtaIdcConfigEventRspCb_SDK *this)
{
  *this = &unk_2A1D22B68;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcConfigEventRspCb_SDK::~ARI_UtaIdcConfigEventRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcConfigEventRspCb_SDK::pack(AriSdk::ARI_UtaIdcConfigEventRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcConfigMiscParamReq_SDK::ARI_UtaIdcConfigMiscParamReq_SDK(AriSdk::ARI_UtaIdcConfigMiscParamReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x488F8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x488F8000u, 0);
}

void AriSdk::ARI_UtaIdcConfigMiscParamReq_SDK::ARI_UtaIdcConfigMiscParamReq_SDK(AriSdk::ARI_UtaIdcConfigMiscParamReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcConfigMiscParamReq_SDK::~ARI_UtaIdcConfigMiscParamReq_SDK(AriSdk::ARI_UtaIdcConfigMiscParamReq_SDK *this)
{
  *this = &unk_2A1D22BA0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcConfigMiscParamReq_SDK::~ARI_UtaIdcConfigMiscParamReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcConfigMiscParamReq_SDK::pack(AriSdk::ARI_UtaIdcConfigMiscParamReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcConfigMiscParamRspCb_SDK::ARI_UtaIdcConfigMiscParamRspCb_SDK(AriSdk::ARI_UtaIdcConfigMiscParamRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x490F8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x490F8000u, 0);
}

void AriSdk::ARI_UtaIdcConfigMiscParamRspCb_SDK::ARI_UtaIdcConfigMiscParamRspCb_SDK(AriSdk::ARI_UtaIdcConfigMiscParamRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcConfigMiscParamRspCb_SDK::~ARI_UtaIdcConfigMiscParamRspCb_SDK(AriSdk::ARI_UtaIdcConfigMiscParamRspCb_SDK *this)
{
  *this = &unk_2A1D22BD8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcConfigMiscParamRspCb_SDK::~ARI_UtaIdcConfigMiscParamRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcConfigMiscParamRspCb_SDK::pack(AriSdk::ARI_UtaIdcConfigMiscParamRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcConfigMiscParamReqV2_SDK::ARI_UtaIdcConfigMiscParamReqV2_SDK(AriSdk::ARI_UtaIdcConfigMiscParamReqV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x489A8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x489A8000u, 0);
}

void AriSdk::ARI_UtaIdcConfigMiscParamReqV2_SDK::ARI_UtaIdcConfigMiscParamReqV2_SDK(AriSdk::ARI_UtaIdcConfigMiscParamReqV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcConfigMiscParamReqV2_SDK::~ARI_UtaIdcConfigMiscParamReqV2_SDK(AriSdk::ARI_UtaIdcConfigMiscParamReqV2_SDK *this)
{
  *this = &unk_2A1D22C10;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcConfigMiscParamReqV2_SDK::~ARI_UtaIdcConfigMiscParamReqV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcConfigMiscParamReqV2_SDK::pack(AriSdk::ARI_UtaIdcConfigMiscParamReqV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 8uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcConfigMiscParamRspCbV2_SDK::ARI_UtaIdcConfigMiscParamRspCbV2_SDK(AriSdk::ARI_UtaIdcConfigMiscParamRspCbV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x491A8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x491A8000u, 0);
}

void AriSdk::ARI_UtaIdcConfigMiscParamRspCbV2_SDK::ARI_UtaIdcConfigMiscParamRspCbV2_SDK(AriSdk::ARI_UtaIdcConfigMiscParamRspCbV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcConfigMiscParamRspCbV2_SDK::~ARI_UtaIdcConfigMiscParamRspCbV2_SDK(AriSdk::ARI_UtaIdcConfigMiscParamRspCbV2_SDK *this)
{
  *this = &unk_2A1D22C48;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcConfigMiscParamRspCbV2_SDK::~ARI_UtaIdcConfigMiscParamRspCbV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcConfigMiscParamRspCbV2_SDK::pack(AriSdk::ARI_UtaIdcConfigMiscParamRspCbV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcConfigMiscParamReqV3_SDK::ARI_UtaIdcConfigMiscParamReqV3_SDK(AriSdk::ARI_UtaIdcConfigMiscParamReqV3_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x489E0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x489E0000u, 0);
}

void AriSdk::ARI_UtaIdcConfigMiscParamReqV3_SDK::ARI_UtaIdcConfigMiscParamReqV3_SDK(AriSdk::ARI_UtaIdcConfigMiscParamReqV3_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcConfigMiscParamReqV3_SDK::~ARI_UtaIdcConfigMiscParamReqV3_SDK(AriSdk::ARI_UtaIdcConfigMiscParamReqV3_SDK *this)
{
  *this = &unk_2A1D22C80;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcConfigMiscParamReqV3_SDK::~ARI_UtaIdcConfigMiscParamReqV3_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcConfigMiscParamReqV3_SDK::pack(AriSdk::ARI_UtaIdcConfigMiscParamReqV3_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 8uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcConfigMiscParamRspCbV3_SDK::ARI_UtaIdcConfigMiscParamRspCbV3_SDK(AriSdk::ARI_UtaIdcConfigMiscParamRspCbV3_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x491E0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x491E0000u, 0);
}

void AriSdk::ARI_UtaIdcConfigMiscParamRspCbV3_SDK::ARI_UtaIdcConfigMiscParamRspCbV3_SDK(AriSdk::ARI_UtaIdcConfigMiscParamRspCbV3_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcConfigMiscParamRspCbV3_SDK::~ARI_UtaIdcConfigMiscParamRspCbV3_SDK(AriSdk::ARI_UtaIdcConfigMiscParamRspCbV3_SDK *this)
{
  *this = &unk_2A1D22CB8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcConfigMiscParamRspCbV3_SDK::~ARI_UtaIdcConfigMiscParamRspCbV3_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcConfigMiscParamRspCbV3_SDK::pack(AriSdk::ARI_UtaIdcConfigMiscParamRspCbV3_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcConfigTxActParamReq_SDK::ARI_UtaIdcConfigTxActParamReq_SDK(AriSdk::ARI_UtaIdcConfigTxActParamReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48900000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48900000u, 0);
}

void AriSdk::ARI_UtaIdcConfigTxActParamReq_SDK::ARI_UtaIdcConfigTxActParamReq_SDK(AriSdk::ARI_UtaIdcConfigTxActParamReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcConfigTxActParamReq_SDK::~ARI_UtaIdcConfigTxActParamReq_SDK(AriSdk::ARI_UtaIdcConfigTxActParamReq_SDK *this)
{
  *this = &unk_2A1D22CF0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40CBA68D63);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcConfigTxActParamReq_SDK::~ARI_UtaIdcConfigTxActParamReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcConfigTxActParamReq_SDK::pack(AriSdk::ARI_UtaIdcConfigTxActParamReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xCuLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcConfigTxActParamRspCb_SDK::ARI_UtaIdcConfigTxActParamRspCb_SDK(AriSdk::ARI_UtaIdcConfigTxActParamRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49100000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49100000u, 0);
}

void AriSdk::ARI_UtaIdcConfigTxActParamRspCb_SDK::ARI_UtaIdcConfigTxActParamRspCb_SDK(AriSdk::ARI_UtaIdcConfigTxActParamRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcConfigTxActParamRspCb_SDK::~ARI_UtaIdcConfigTxActParamRspCb_SDK(AriSdk::ARI_UtaIdcConfigTxActParamRspCb_SDK *this)
{
  *this = &unk_2A1D22D28;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcConfigTxActParamRspCb_SDK::~ARI_UtaIdcConfigTxActParamRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcConfigTxActParamRspCb_SDK::pack(AriSdk::ARI_UtaIdcConfigTxActParamRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcGetCellConfigReq_SDK::ARI_UtaIdcGetCellConfigReq_SDK(AriSdk::ARI_UtaIdcGetCellConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x488A0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x488A0000u, 0);
}

void AriSdk::ARI_UtaIdcGetCellConfigReq_SDK::ARI_UtaIdcGetCellConfigReq_SDK(AriSdk::ARI_UtaIdcGetCellConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcGetCellConfigReq_SDK::~ARI_UtaIdcGetCellConfigReq_SDK(AriSdk::ARI_UtaIdcGetCellConfigReq_SDK *this)
{
  *this = &unk_2A1D22D60;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcGetCellConfigReq_SDK::~ARI_UtaIdcGetCellConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcGetCellConfigReq_SDK::pack(AriSdk::ARI_UtaIdcGetCellConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_UtaIdcGetCellConfigRspCb_SDK::ARI_UtaIdcGetCellConfigRspCb_SDK(AriSdk::ARI_UtaIdcGetCellConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x490A0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x490A0000u, 0);
}

void AriSdk::ARI_UtaIdcGetCellConfigRspCb_SDK::ARI_UtaIdcGetCellConfigRspCb_SDK(AriSdk::ARI_UtaIdcGetCellConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcGetCellConfigRspCb_SDK::~ARI_UtaIdcGetCellConfigRspCb_SDK(AriSdk::ARI_UtaIdcGetCellConfigRspCb_SDK *this)
{
  *this = &unk_2A1D22D98;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408F14E072);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcGetCellConfigRspCb_SDK::~ARI_UtaIdcGetCellConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcGetCellConfigRspCb_SDK::pack(AriSdk::ARI_UtaIdcGetCellConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x2A0uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcGetLaaMeasInfoReq_SDK::ARI_UtaIdcGetLaaMeasInfoReq_SDK(AriSdk::ARI_UtaIdcGetLaaMeasInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x488B0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x488B0000u, 0);
}

void AriSdk::ARI_UtaIdcGetLaaMeasInfoReq_SDK::ARI_UtaIdcGetLaaMeasInfoReq_SDK(AriSdk::ARI_UtaIdcGetLaaMeasInfoReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcGetLaaMeasInfoReq_SDK::~ARI_UtaIdcGetLaaMeasInfoReq_SDK(AriSdk::ARI_UtaIdcGetLaaMeasInfoReq_SDK *this)
{
  *this = &unk_2A1D22DD0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcGetLaaMeasInfoReq_SDK::~ARI_UtaIdcGetLaaMeasInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcGetLaaMeasInfoReq_SDK::pack(AriSdk::ARI_UtaIdcGetLaaMeasInfoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_UtaIdcGetLaaMeasInfoRspCb_SDK::ARI_UtaIdcGetLaaMeasInfoRspCb_SDK(AriSdk::ARI_UtaIdcGetLaaMeasInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x490B0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x490B0000u, 0);
}

void AriSdk::ARI_UtaIdcGetLaaMeasInfoRspCb_SDK::ARI_UtaIdcGetLaaMeasInfoRspCb_SDK(AriSdk::ARI_UtaIdcGetLaaMeasInfoRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcGetLaaMeasInfoRspCb_SDK::~ARI_UtaIdcGetLaaMeasInfoRspCb_SDK(AriSdk::ARI_UtaIdcGetLaaMeasInfoRspCb_SDK *this)
{
  *this = &unk_2A1D22E08;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcGetLaaMeasInfoRspCb_SDK::~ARI_UtaIdcGetLaaMeasInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcGetLaaMeasInfoRspCb_SDK::pack(AriSdk::ARI_UtaIdcGetLaaMeasInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcLaaMeasInfoEventIndCb_SDK::ARI_UtaIdcLaaMeasInfoEventIndCb_SDK(AriSdk::ARI_UtaIdcLaaMeasInfoEventIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49838000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49838000u, 0);
}

void AriSdk::ARI_UtaIdcLaaMeasInfoEventIndCb_SDK::ARI_UtaIdcLaaMeasInfoEventIndCb_SDK(AriSdk::ARI_UtaIdcLaaMeasInfoEventIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcLaaMeasInfoEventIndCb_SDK::~ARI_UtaIdcLaaMeasInfoEventIndCb_SDK(AriSdk::ARI_UtaIdcLaaMeasInfoEventIndCb_SDK *this)
{
  *this = &unk_2A1D22E40;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcLaaMeasInfoEventIndCb_SDK::~ARI_UtaIdcLaaMeasInfoEventIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcLaaMeasInfoEventIndCb_SDK::pack(AriSdk::ARI_UtaIdcLaaMeasInfoEventIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcRTSetScanFreqReq_SDK::ARI_UtaIdcRTSetScanFreqReq_SDK(AriSdk::ARI_UtaIdcRTSetScanFreqReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x488D8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x488D8000u, 0);
}

void AriSdk::ARI_UtaIdcRTSetScanFreqReq_SDK::ARI_UtaIdcRTSetScanFreqReq_SDK(AriSdk::ARI_UtaIdcRTSetScanFreqReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcRTSetScanFreqReq_SDK::~ARI_UtaIdcRTSetScanFreqReq_SDK(AriSdk::ARI_UtaIdcRTSetScanFreqReq_SDK *this)
{
  *this = &unk_2A1D22E78;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C403E349CAELL);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcRTSetScanFreqReq_SDK::~ARI_UtaIdcRTSetScanFreqReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcRTSetScanFreqReq_SDK::pack(AriSdk::ARI_UtaIdcRTSetScanFreqReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x84uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcRTSetScanFreqRspCb_SDK::ARI_UtaIdcRTSetScanFreqRspCb_SDK(AriSdk::ARI_UtaIdcRTSetScanFreqRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x490D8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x490D8000u, 0);
}

void AriSdk::ARI_UtaIdcRTSetScanFreqRspCb_SDK::ARI_UtaIdcRTSetScanFreqRspCb_SDK(AriSdk::ARI_UtaIdcRTSetScanFreqRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcRTSetScanFreqRspCb_SDK::~ARI_UtaIdcRTSetScanFreqRspCb_SDK(AriSdk::ARI_UtaIdcRTSetScanFreqRspCb_SDK *this)
{
  *this = &unk_2A1D22EB0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcRTSetScanFreqRspCb_SDK::~ARI_UtaIdcRTSetScanFreqRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcRTSetScanFreqRspCb_SDK::pack(AriSdk::ARI_UtaIdcRTSetScanFreqRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcRTSetScanFreqReqV2_SDK::ARI_UtaIdcRTSetScanFreqReqV2_SDK(AriSdk::ARI_UtaIdcRTSetScanFreqReqV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48958000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48958000u, 0);
}

void AriSdk::ARI_UtaIdcRTSetScanFreqReqV2_SDK::ARI_UtaIdcRTSetScanFreqReqV2_SDK(AriSdk::ARI_UtaIdcRTSetScanFreqReqV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcRTSetScanFreqReqV2_SDK::~ARI_UtaIdcRTSetScanFreqReqV2_SDK(AriSdk::ARI_UtaIdcRTSetScanFreqReqV2_SDK *this)
{
  *this = &unk_2A1D22EE8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40B7ACFD96);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcRTSetScanFreqReqV2_SDK::~ARI_UtaIdcRTSetScanFreqReqV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcRTSetScanFreqReqV2_SDK::pack(AriSdk::ARI_UtaIdcRTSetScanFreqReqV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xC4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV2_SDK::ARI_UtaIdcRTSetScanFreqRspCbV2_SDK(AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49158000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49158000u, 0);
}

void AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV2_SDK::ARI_UtaIdcRTSetScanFreqRspCbV2_SDK(AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV2_SDK::~ARI_UtaIdcRTSetScanFreqRspCbV2_SDK(AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV2_SDK *this)
{
  *this = &unk_2A1D22F20;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV2_SDK::~ARI_UtaIdcRTSetScanFreqRspCbV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV2_SDK::pack(AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcRTSetScanFreqReqV3_SDK::ARI_UtaIdcRTSetScanFreqReqV3_SDK(AriSdk::ARI_UtaIdcRTSetScanFreqReqV3_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x489D8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x489D8000u, 0);
}

void AriSdk::ARI_UtaIdcRTSetScanFreqReqV3_SDK::ARI_UtaIdcRTSetScanFreqReqV3_SDK(AriSdk::ARI_UtaIdcRTSetScanFreqReqV3_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcRTSetScanFreqReqV3_SDK::~ARI_UtaIdcRTSetScanFreqReqV3_SDK(AriSdk::ARI_UtaIdcRTSetScanFreqReqV3_SDK *this)
{
  *this = &unk_2A1D22F58;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40EAE1BDD2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcRTSetScanFreqReqV3_SDK::~ARI_UtaIdcRTSetScanFreqReqV3_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcRTSetScanFreqReqV3_SDK::pack(AriSdk::ARI_UtaIdcRTSetScanFreqReqV3_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x144uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV3_SDK::ARI_UtaIdcRTSetScanFreqRspCbV3_SDK(AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV3_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x491D8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x491D8000u, 0);
}

void AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV3_SDK::ARI_UtaIdcRTSetScanFreqRspCbV3_SDK(AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV3_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV3_SDK::~ARI_UtaIdcRTSetScanFreqRspCbV3_SDK(AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV3_SDK *this)
{
  *this = &unk_2A1D22F90;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV3_SDK::~ARI_UtaIdcRTSetScanFreqRspCbV3_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV3_SDK::pack(AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV3_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReq_SDK::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReq_SDK(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48928000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48928000u, 0);
}

void AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReq_SDK::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReq_SDK(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReq_SDK::~ARI_UtaIdcSetCamAntBlockPwrLmtConfigReq_SDK(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReq_SDK *this)
{
  *this = &unk_2A1D22FC8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4021477895);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReq_SDK::~ARI_UtaIdcSetCamAntBlockPwrLmtConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReq_SDK::pack(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x410uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCb_SDK::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49128000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49128000u, 0);
}

void AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCb_SDK::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCb_SDK::~ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCb_SDK *this)
{
  *this = &unk_2A1D23000;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCb_SDK::~ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV2_SDK::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV2_SDK(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48980000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48980000u, 0);
}

void AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV2_SDK::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV2_SDK(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV2_SDK::~ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV2_SDK(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV2_SDK *this)
{
  *this = &unk_2A1D23038;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40FB7BADD8);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV2_SDK::~ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV2_SDK::pack(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x820uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV2_SDK::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV2_SDK(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49180000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49180000u, 0);
}

void AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV2_SDK::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV2_SDK(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV2_SDK::~ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV2_SDK(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV2_SDK *this)
{
  *this = &unk_2A1D23070;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV2_SDK::~ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV2_SDK::pack(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV3_SDK::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV3_SDK(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV3_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x489B0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x489B0000u, 0);
}

void AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV3_SDK::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV3_SDK(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV3_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV3_SDK::~ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV3_SDK(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV3_SDK *this)
{
  *this = &unk_2A1D230A8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4057AD9B95);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV3_SDK::~ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV3_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV3_SDK::pack(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV3_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xA28uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x491B0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x491B0000u, 0);
}

void AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK::~ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK *this)
{
  *this = &unk_2A1D230E0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK::~ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK::pack(AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetCameraStatusReq_SDK::ARI_UtaIdcSetCameraStatusReq_SDK(AriSdk::ARI_UtaIdcSetCameraStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48908000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48908000u, 0);
}

void AriSdk::ARI_UtaIdcSetCameraStatusReq_SDK::ARI_UtaIdcSetCameraStatusReq_SDK(AriSdk::ARI_UtaIdcSetCameraStatusReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetCameraStatusReq_SDK::~ARI_UtaIdcSetCameraStatusReq_SDK(AriSdk::ARI_UtaIdcSetCameraStatusReq_SDK *this)
{
  *this = &unk_2A1D23118;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetCameraStatusReq_SDK::~ARI_UtaIdcSetCameraStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetCameraStatusReq_SDK::pack(AriSdk::ARI_UtaIdcSetCameraStatusReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 8uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetCameraStatusRspCb_SDK::ARI_UtaIdcSetCameraStatusRspCb_SDK(AriSdk::ARI_UtaIdcSetCameraStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49108000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49108000u, 0);
}

void AriSdk::ARI_UtaIdcSetCameraStatusRspCb_SDK::ARI_UtaIdcSetCameraStatusRspCb_SDK(AriSdk::ARI_UtaIdcSetCameraStatusRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetCameraStatusRspCb_SDK::~ARI_UtaIdcSetCameraStatusRspCb_SDK(AriSdk::ARI_UtaIdcSetCameraStatusRspCb_SDK *this)
{
  *this = &unk_2A1D23150;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetCameraStatusRspCb_SDK::~ARI_UtaIdcSetCameraStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetCameraStatusRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetCameraStatusRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetCameraStatusReqV2_SDK::ARI_UtaIdcSetCameraStatusReqV2_SDK(AriSdk::ARI_UtaIdcSetCameraStatusReqV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x489B8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x489B8000u, 0);
}

void AriSdk::ARI_UtaIdcSetCameraStatusReqV2_SDK::ARI_UtaIdcSetCameraStatusReqV2_SDK(AriSdk::ARI_UtaIdcSetCameraStatusReqV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetCameraStatusReqV2_SDK::~ARI_UtaIdcSetCameraStatusReqV2_SDK(AriSdk::ARI_UtaIdcSetCameraStatusReqV2_SDK *this)
{
  *this = &unk_2A1D23188;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetCameraStatusReqV2_SDK::~ARI_UtaIdcSetCameraStatusReqV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetCameraStatusReqV2_SDK::pack(AriSdk::ARI_UtaIdcSetCameraStatusReqV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 8uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::ARI_UtaIdcSetCameraStatusRspCbV2_SDK(AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x491B8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x491B8000u, 0);
}

void AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::ARI_UtaIdcSetCameraStatusRspCbV2_SDK(AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::~ARI_UtaIdcSetCameraStatusRspCbV2_SDK(AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK *this)
{
  *this = &unk_2A1D231C0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::~ARI_UtaIdcSetCameraStatusRspCbV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::pack(AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK::ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK(AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48988000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48988000u, 0);
}

void AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK::ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK(AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK::~ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK(AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK *this)
{
  *this = &unk_2A1D231F8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40742AE62DLL);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK::~ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK::pack(AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xE10uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49188000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49188000u, 0);
}

void AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK::~ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK *this)
{
  *this = &unk_2A1D23230;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK::~ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigReq_SDK::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigReq_SDK(AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48938000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48938000u, 0);
}

void AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigReq_SDK::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigReq_SDK(AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigReq_SDK::~ARI_UtaIdcSetCnvAntBlockPwrLmtConfigReq_SDK(AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigReq_SDK *this)
{
  *this = &unk_2A1D23268;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40CFFF636DLL);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigReq_SDK::~ARI_UtaIdcSetCnvAntBlockPwrLmtConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigReq_SDK::pack(AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x490uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49138000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49138000u, 0);
}

void AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK::~ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK *this)
{
  *this = &unk_2A1D232A0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK::~ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReq_SDK::ARI_UtaIdcSetCriticalCarrierConfigReq_SDK(AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x488E8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x488E8000u, 0);
}

void AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReq_SDK::ARI_UtaIdcSetCriticalCarrierConfigReq_SDK(AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReq_SDK::~ARI_UtaIdcSetCriticalCarrierConfigReq_SDK(AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReq_SDK *this)
{
  *this = &unk_2A1D232D8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4021716A34);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReq_SDK::~ARI_UtaIdcSetCriticalCarrierConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReq_SDK::pack(AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x38uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCb_SDK::ARI_UtaIdcSetCriticalCarrierConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x490E8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x490E8000u, 0);
}

void AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCb_SDK::ARI_UtaIdcSetCriticalCarrierConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCb_SDK::~ARI_UtaIdcSetCriticalCarrierConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCb_SDK *this)
{
  *this = &unk_2A1D23310;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCb_SDK::~ARI_UtaIdcSetCriticalCarrierConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReqV2_SDK::ARI_UtaIdcSetCriticalCarrierConfigReqV2_SDK(AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReqV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48968000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48968000u, 0);
}

void AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReqV2_SDK::ARI_UtaIdcSetCriticalCarrierConfigReqV2_SDK(AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReqV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReqV2_SDK::~ARI_UtaIdcSetCriticalCarrierConfigReqV2_SDK(AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReqV2_SDK *this)
{
  *this = &unk_2A1D23348;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40FA0F61DDLL);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReqV2_SDK::~ARI_UtaIdcSetCriticalCarrierConfigReqV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReqV2_SDK::pack(AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReqV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x40uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK::ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK(AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49168000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49168000u, 0);
}

void AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK::ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK(AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK::~ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK(AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK *this)
{
  *this = &unk_2A1D23380;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK::~ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK::pack(AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetLaaConfigReq_SDK::ARI_UtaIdcSetLaaConfigReq_SDK(AriSdk::ARI_UtaIdcSetLaaConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x488E0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x488E0000u, 0);
}

void AriSdk::ARI_UtaIdcSetLaaConfigReq_SDK::ARI_UtaIdcSetLaaConfigReq_SDK(AriSdk::ARI_UtaIdcSetLaaConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetLaaConfigReq_SDK::~ARI_UtaIdcSetLaaConfigReq_SDK(AriSdk::ARI_UtaIdcSetLaaConfigReq_SDK *this)
{
  *this = &unk_2A1D233B8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4023422098);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetLaaConfigReq_SDK::~ARI_UtaIdcSetLaaConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetLaaConfigReq_SDK::pack(AriSdk::ARI_UtaIdcSetLaaConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x10uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetLaaConfigRspCb_SDK::ARI_UtaIdcSetLaaConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetLaaConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x490E0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x490E0000u, 0);
}

void AriSdk::ARI_UtaIdcSetLaaConfigRspCb_SDK::ARI_UtaIdcSetLaaConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetLaaConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetLaaConfigRspCb_SDK::~ARI_UtaIdcSetLaaConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetLaaConfigRspCb_SDK *this)
{
  *this = &unk_2A1D233F0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetLaaConfigRspCb_SDK::~ARI_UtaIdcSetLaaConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetLaaConfigRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetLaaConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetLaaConfigReqV2_SDK::ARI_UtaIdcSetLaaConfigReqV2_SDK(AriSdk::ARI_UtaIdcSetLaaConfigReqV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48960000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48960000u, 0);
}

void AriSdk::ARI_UtaIdcSetLaaConfigReqV2_SDK::ARI_UtaIdcSetLaaConfigReqV2_SDK(AriSdk::ARI_UtaIdcSetLaaConfigReqV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetLaaConfigReqV2_SDK::~ARI_UtaIdcSetLaaConfigReqV2_SDK(AriSdk::ARI_UtaIdcSetLaaConfigReqV2_SDK *this)
{
  *this = &unk_2A1D23428;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40A86A77D5);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetLaaConfigReqV2_SDK::~ARI_UtaIdcSetLaaConfigReqV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetLaaConfigReqV2_SDK::pack(AriSdk::ARI_UtaIdcSetLaaConfigReqV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x14uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetLaaConfigRspCbV2_SDK::ARI_UtaIdcSetLaaConfigRspCbV2_SDK(AriSdk::ARI_UtaIdcSetLaaConfigRspCbV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49160000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49160000u, 0);
}

void AriSdk::ARI_UtaIdcSetLaaConfigRspCbV2_SDK::ARI_UtaIdcSetLaaConfigRspCbV2_SDK(AriSdk::ARI_UtaIdcSetLaaConfigRspCbV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetLaaConfigRspCbV2_SDK::~ARI_UtaIdcSetLaaConfigRspCbV2_SDK(AriSdk::ARI_UtaIdcSetLaaConfigRspCbV2_SDK *this)
{
  *this = &unk_2A1D23460;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetLaaConfigRspCbV2_SDK::~ARI_UtaIdcSetLaaConfigRspCbV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetLaaConfigRspCbV2_SDK::pack(AriSdk::ARI_UtaIdcSetLaaConfigRspCbV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReq_SDK::ARI_UtaIdcSetRTFeatureSpmiRxReq_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x488C0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x488C0000u, 0);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReq_SDK::ARI_UtaIdcSetRTFeatureSpmiRxReq_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReq_SDK::~ARI_UtaIdcSetRTFeatureSpmiRxReq_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReq_SDK *this)
{
  *this = &unk_2A1D23498;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408757D331);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReq_SDK::~ARI_UtaIdcSetRTFeatureSpmiRxReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReq_SDK::pack(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x104uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCb_SDK::ARI_UtaIdcSetRTFeatureSpmiRxRspCb_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x490C0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x490C0000u, 0);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCb_SDK::ARI_UtaIdcSetRTFeatureSpmiRxRspCb_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCb_SDK::~ARI_UtaIdcSetRTFeatureSpmiRxRspCb_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCb_SDK *this)
{
  *this = &unk_2A1D234D0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCb_SDK::~ARI_UtaIdcSetRTFeatureSpmiRxRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV2_SDK::ARI_UtaIdcSetRTFeatureSpmiRxReqV2_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48950000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48950000u, 0);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV2_SDK::ARI_UtaIdcSetRTFeatureSpmiRxReqV2_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV2_SDK::~ARI_UtaIdcSetRTFeatureSpmiRxReqV2_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV2_SDK *this)
{
  *this = &unk_2A1D23508;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408757D331);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV2_SDK::~ARI_UtaIdcSetRTFeatureSpmiRxReqV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV2_SDK::pack(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x104uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV2_SDK::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV2_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49150000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49150000u, 0);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV2_SDK::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV2_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV2_SDK::~ARI_UtaIdcSetRTFeatureSpmiRxRspCbV2_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV2_SDK *this)
{
  *this = &unk_2A1D23540;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV2_SDK::~ARI_UtaIdcSetRTFeatureSpmiRxRspCbV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV2_SDK::pack(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV3_SDK::ARI_UtaIdcSetRTFeatureSpmiRxReqV3_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV3_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x489A0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x489A0000u, 0);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV3_SDK::ARI_UtaIdcSetRTFeatureSpmiRxReqV3_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV3_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV3_SDK::~ARI_UtaIdcSetRTFeatureSpmiRxReqV3_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV3_SDK *this)
{
  *this = &unk_2A1D23578;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408757D331);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV3_SDK::~ARI_UtaIdcSetRTFeatureSpmiRxReqV3_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV3_SDK::pack(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV3_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x104uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x491A0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x491A0000u, 0);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK::~ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK *this)
{
  *this = &unk_2A1D235B0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK::~ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK::pack(AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReq_SDK::ARI_UtaIdcSetRTFeatureSpmiTxReq_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x488B8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x488B8000u, 0);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReq_SDK::ARI_UtaIdcSetRTFeatureSpmiTxReq_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReq_SDK::~ARI_UtaIdcSetRTFeatureSpmiTxReq_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReq_SDK *this)
{
  *this = &unk_2A1D235E8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408757D331);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReq_SDK::~ARI_UtaIdcSetRTFeatureSpmiTxReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReq_SDK::pack(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x104uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCb_SDK::ARI_UtaIdcSetRTFeatureSpmiTxRspCb_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x490B8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x490B8000u, 0);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCb_SDK::ARI_UtaIdcSetRTFeatureSpmiTxRspCb_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCb_SDK::~ARI_UtaIdcSetRTFeatureSpmiTxRspCb_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCb_SDK *this)
{
  *this = &unk_2A1D23620;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCb_SDK::~ARI_UtaIdcSetRTFeatureSpmiTxRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV2_SDK::ARI_UtaIdcSetRTFeatureSpmiTxReqV2_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48948000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48948000u, 0);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV2_SDK::ARI_UtaIdcSetRTFeatureSpmiTxReqV2_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV2_SDK::~ARI_UtaIdcSetRTFeatureSpmiTxReqV2_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV2_SDK *this)
{
  *this = &unk_2A1D23658;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408757D331);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV2_SDK::~ARI_UtaIdcSetRTFeatureSpmiTxReqV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV2_SDK::pack(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x104uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV2_SDK::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV2_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49148000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49148000u, 0);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV2_SDK::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV2_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV2_SDK::~ARI_UtaIdcSetRTFeatureSpmiTxRspCbV2_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV2_SDK *this)
{
  *this = &unk_2A1D23690;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV2_SDK::~ARI_UtaIdcSetRTFeatureSpmiTxRspCbV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV2_SDK::pack(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV3_SDK::ARI_UtaIdcSetRTFeatureSpmiTxReqV3_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV3_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48998000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48998000u, 0);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV3_SDK::ARI_UtaIdcSetRTFeatureSpmiTxReqV3_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV3_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV3_SDK::~ARI_UtaIdcSetRTFeatureSpmiTxReqV3_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV3_SDK *this)
{
  *this = &unk_2A1D236C8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408757D331);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV3_SDK::~ARI_UtaIdcSetRTFeatureSpmiTxReqV3_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV3_SDK::pack(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV3_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x104uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49198000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49198000u, 0);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK::~ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK *this)
{
  *this = &unk_2A1D23700;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK::~ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK::pack(AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigReq_SDK::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigReq_SDK(AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x489D0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x489D0000u, 0);
}

void AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigReq_SDK::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigReq_SDK(AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigReq_SDK::~ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigReq_SDK(AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigReq_SDK *this)
{
  *this = &unk_2A1D23738;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408BAB031ELL);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigReq_SDK::~ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigReq_SDK::pack(AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x1D8uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x491D0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x491D0000u, 0);
}

void AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK::~ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK *this)
{
  *this = &unk_2A1D23770;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK::~ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetTimeSharingConfigReq_SDK::ARI_UtaIdcSetTimeSharingConfigReq_SDK(AriSdk::ARI_UtaIdcSetTimeSharingConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x488F0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x488F0000u, 0);
}

void AriSdk::ARI_UtaIdcSetTimeSharingConfigReq_SDK::ARI_UtaIdcSetTimeSharingConfigReq_SDK(AriSdk::ARI_UtaIdcSetTimeSharingConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetTimeSharingConfigReq_SDK::~ARI_UtaIdcSetTimeSharingConfigReq_SDK(AriSdk::ARI_UtaIdcSetTimeSharingConfigReq_SDK *this)
{
  *this = &unk_2A1D237A8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408149D517);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetTimeSharingConfigReq_SDK::~ARI_UtaIdcSetTimeSharingConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetTimeSharingConfigReq_SDK::pack(AriSdk::ARI_UtaIdcSetTimeSharingConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x38uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x490F0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x490F0000u, 0);
}

void AriSdk::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK::~ARI_UtaIdcSetTimeSharingConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK *this)
{
  *this = &unk_2A1D237E0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK::~ARI_UtaIdcSetTimeSharingConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReq_SDK::ARI_UtaIdcSetTunerArbitrationConfigReq_SDK(AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48990000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48990000u, 0);
}

void AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReq_SDK::ARI_UtaIdcSetTunerArbitrationConfigReq_SDK(AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReq_SDK::~ARI_UtaIdcSetTunerArbitrationConfigReq_SDK(AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReq_SDK *this)
{
  *this = &unk_2A1D23818;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReq_SDK::~ARI_UtaIdcSetTunerArbitrationConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReq_SDK::pack(AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 8uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCb_SDK::ARI_UtaIdcSetTunerArbitrationConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49190000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49190000u, 0);
}

void AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCb_SDK::ARI_UtaIdcSetTunerArbitrationConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCb_SDK::~ARI_UtaIdcSetTunerArbitrationConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCb_SDK *this)
{
  *this = &unk_2A1D23850;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCb_SDK::~ARI_UtaIdcSetTunerArbitrationConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReqV2_SDK::ARI_UtaIdcSetTunerArbitrationConfigReqV2_SDK(AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReqV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x489C8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x489C8000u, 0);
}

void AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReqV2_SDK::ARI_UtaIdcSetTunerArbitrationConfigReqV2_SDK(AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReqV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReqV2_SDK::~ARI_UtaIdcSetTunerArbitrationConfigReqV2_SDK(AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReqV2_SDK *this)
{
  *this = &unk_2A1D23888;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReqV2_SDK::~ARI_UtaIdcSetTunerArbitrationConfigReqV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReqV2_SDK::pack(AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReqV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK(AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x491C8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x491C8000u, 0);
}

void AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK(AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK::~ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK(AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK *this)
{
  *this = &unk_2A1D238C0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK::~ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK::pack(AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetTunerVoterConfigReq_SDK::ARI_UtaIdcSetTunerVoterConfigReq_SDK(AriSdk::ARI_UtaIdcSetTunerVoterConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48930000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48930000u, 0);
}

void AriSdk::ARI_UtaIdcSetTunerVoterConfigReq_SDK::ARI_UtaIdcSetTunerVoterConfigReq_SDK(AriSdk::ARI_UtaIdcSetTunerVoterConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetTunerVoterConfigReq_SDK::~ARI_UtaIdcSetTunerVoterConfigReq_SDK(AriSdk::ARI_UtaIdcSetTunerVoterConfigReq_SDK *this)
{
  *this = &unk_2A1D238F8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40451B5BE8);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetTunerVoterConfigReq_SDK::~ARI_UtaIdcSetTunerVoterConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetTunerVoterConfigReq_SDK::pack(AriSdk::ARI_UtaIdcSetTunerVoterConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x10uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetTunerVoterConfigRspCb_SDK::ARI_UtaIdcSetTunerVoterConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetTunerVoterConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49130000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49130000u, 0);
}

void AriSdk::ARI_UtaIdcSetTunerVoterConfigRspCb_SDK::ARI_UtaIdcSetTunerVoterConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetTunerVoterConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetTunerVoterConfigRspCb_SDK::~ARI_UtaIdcSetTunerVoterConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetTunerVoterConfigRspCb_SDK *this)
{
  *this = &unk_2A1D23930;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetTunerVoterConfigRspCb_SDK::~ARI_UtaIdcSetTunerVoterConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetTunerVoterConfigRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetTunerVoterConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetTxAntMappingTableReq_SDK::ARI_UtaIdcSetTxAntMappingTableReq_SDK(AriSdk::ARI_UtaIdcSetTxAntMappingTableReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48910000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48910000u, 0);
}

void AriSdk::ARI_UtaIdcSetTxAntMappingTableReq_SDK::ARI_UtaIdcSetTxAntMappingTableReq_SDK(AriSdk::ARI_UtaIdcSetTxAntMappingTableReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetTxAntMappingTableReq_SDK::~ARI_UtaIdcSetTxAntMappingTableReq_SDK(AriSdk::ARI_UtaIdcSetTxAntMappingTableReq_SDK *this)
{
  *this = &unk_2A1D23968;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40451B5BE8);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetTxAntMappingTableReq_SDK::~ARI_UtaIdcSetTxAntMappingTableReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetTxAntMappingTableReq_SDK::pack(AriSdk::ARI_UtaIdcSetTxAntMappingTableReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x10uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetTxAntMappingTableRspCb_SDK::ARI_UtaIdcSetTxAntMappingTableRspCb_SDK(AriSdk::ARI_UtaIdcSetTxAntMappingTableRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49110000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49110000u, 0);
}

void AriSdk::ARI_UtaIdcSetTxAntMappingTableRspCb_SDK::ARI_UtaIdcSetTxAntMappingTableRspCb_SDK(AriSdk::ARI_UtaIdcSetTxAntMappingTableRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetTxAntMappingTableRspCb_SDK::~ARI_UtaIdcSetTxAntMappingTableRspCb_SDK(AriSdk::ARI_UtaIdcSetTxAntMappingTableRspCb_SDK *this)
{
  *this = &unk_2A1D239A0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetTxAntMappingTableRspCb_SDK::~ARI_UtaIdcSetTxAntMappingTableRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetTxAntMappingTableRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetTxAntMappingTableRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetTxBlankingConfigReq_SDK::ARI_UtaIdcSetTxBlankingConfigReq_SDK(AriSdk::ARI_UtaIdcSetTxBlankingConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x488C8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x488C8000u, 0);
}

void AriSdk::ARI_UtaIdcSetTxBlankingConfigReq_SDK::ARI_UtaIdcSetTxBlankingConfigReq_SDK(AriSdk::ARI_UtaIdcSetTxBlankingConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetTxBlankingConfigReq_SDK::~ARI_UtaIdcSetTxBlankingConfigReq_SDK(AriSdk::ARI_UtaIdcSetTxBlankingConfigReq_SDK *this)
{
  *this = &unk_2A1D239D8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C400CF9F734);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetTxBlankingConfigReq_SDK::~ARI_UtaIdcSetTxBlankingConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetTxBlankingConfigReq_SDK::pack(AriSdk::ARI_UtaIdcSetTxBlankingConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x10uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetTxBlankingConfigRspCb_SDK::ARI_UtaIdcSetTxBlankingConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetTxBlankingConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x490C8000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x490C8000u, 0);
}

void AriSdk::ARI_UtaIdcSetTxBlankingConfigRspCb_SDK::ARI_UtaIdcSetTxBlankingConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetTxBlankingConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetTxBlankingConfigRspCb_SDK::~ARI_UtaIdcSetTxBlankingConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetTxBlankingConfigRspCb_SDK *this)
{
  *this = &unk_2A1D23A10;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetTxBlankingConfigRspCb_SDK::~ARI_UtaIdcSetTxBlankingConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetTxBlankingConfigRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetTxBlankingConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigReq_SDK::ARI_UtaIdcSetTxPowerLimitingConfigReq_SDK(AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x488D0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x488D0000u, 0);
}

void AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigReq_SDK::ARI_UtaIdcSetTxPowerLimitingConfigReq_SDK(AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigReq_SDK::~ARI_UtaIdcSetTxPowerLimitingConfigReq_SDK(AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigReq_SDK *this)
{
  *this = &unk_2A1D23A48;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40A86A77D5);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigReq_SDK::~ARI_UtaIdcSetTxPowerLimitingConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigReq_SDK::pack(AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x14uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK::ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x490D0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x490D0000u, 0);
}

void AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK::ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK::~ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK *this)
{
  *this = &unk_2A1D23A80;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK::~ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK(AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48978000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48978000u, 0);
}

void AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK(AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK::~ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK(AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK *this)
{
  *this = &unk_2A1D23AB8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C403767131ELL);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK::~ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK::pack(AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x40CuLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49178000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49178000u, 0);
}

void AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK::~ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK *this)
{
  *this = &unk_2A1D23AF0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK::~ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReq_SDK::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReq_SDK(AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48920000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48920000u, 0);
}

void AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReq_SDK::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReq_SDK(AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReq_SDK::~ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReq_SDK(AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReq_SDK *this)
{
  *this = &unk_2A1D23B28;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C406F30C985);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReq_SDK::~ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReq_SDK::pack(AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x328uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCb_SDK::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49120000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49120000u, 0);
}

void AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCb_SDK::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCb_SDK::~ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCb_SDK *this)
{
  *this = &unk_2A1D23B60;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCb_SDK::~ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReqV2_SDK::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReqV2_SDK(AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReqV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48940000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48940000u, 0);
}

void AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReqV2_SDK::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReqV2_SDK(AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReqV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReqV2_SDK::~ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReqV2_SDK(AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReqV2_SDK *this)
{
  *this = &unk_2A1D23B98;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40D3559E10);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReqV2_SDK::~ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReqV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReqV2_SDK::pack(AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReqV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x5A8uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK(AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49140000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49140000u, 0);
}

void AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK(AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK::~ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK(AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK *this)
{
  *this = &unk_2A1D23BD0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK::~ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK::pack(AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReq_SDK::ARI_UtaIdcSetUwbRtActivityMitigationConfigReq_SDK(AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48970000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48970000u, 0);
}

void AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReq_SDK::ARI_UtaIdcSetUwbRtActivityMitigationConfigReq_SDK(AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReq_SDK::~ARI_UtaIdcSetUwbRtActivityMitigationConfigReq_SDK(AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReq_SDK *this)
{
  *this = &unk_2A1D23C08;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40701D913FLL);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReq_SDK::~ARI_UtaIdcSetUwbRtActivityMitigationConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReq_SDK::pack(AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x304uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCb_SDK::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49170000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49170000u, 0);
}

void AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCb_SDK::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCb_SDK::~ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCb_SDK *this)
{
  *this = &unk_2A1D23C40;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCb_SDK::~ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReqV2_SDK::ARI_UtaIdcSetUwbRtActivityMitigationConfigReqV2_SDK(AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReqV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x489C0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x489C0000u, 0);
}

void AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReqV2_SDK::ARI_UtaIdcSetUwbRtActivityMitigationConfigReqV2_SDK(AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReqV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReqV2_SDK::~ARI_UtaIdcSetUwbRtActivityMitigationConfigReqV2_SDK(AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReqV2_SDK *this)
{
  *this = &unk_2A1D23C78;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40628BCEAALL);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReqV2_SDK::~ARI_UtaIdcSetUwbRtActivityMitigationConfigReqV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReqV2_SDK::pack(AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReqV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x2C8uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK(AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x491C0000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x491C0000u, 0);
}

void AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK(AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK::~ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK(AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK *this)
{
  *this = &unk_2A1D23CB0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK::~ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK::pack(AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigReq_SDK::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigReq_SDK(AriSdk::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x48918000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x48918000u, 0);
}

void AriSdk::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigReq_SDK::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigReq_SDK(AriSdk::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigReq_SDK::~ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigReq_SDK(AriSdk::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigReq_SDK *this)
{
  *this = &unk_2A1D23CE8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4050229AC9);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigReq_SDK::~ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigReq_SDK::pack(AriSdk::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x210uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigRspCb_SDK::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x49118000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x49118000u, 0);
}

void AriSdk::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigRspCb_SDK::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigRspCb_SDK::~ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigRspCb_SDK(AriSdk::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigRspCb_SDK *this)
{
  *this = &unk_2A1D23D20;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigRspCb_SDK::~ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigRspCb_SDK::pack(AriSdk::ARI_UtaIdcSetWiFiAntBlockPwrLmtConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIXccClockControlReq_SDK::ARI_IBIXccClockControlReq_SDK(AriSdk::ARI_IBIXccClockControlReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x58800000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x58800000u, 0);
}

void AriSdk::ARI_IBIXccClockControlReq_SDK::ARI_IBIXccClockControlReq_SDK(AriSdk::ARI_IBIXccClockControlReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIXccClockControlReq_SDK::~ARI_IBIXccClockControlReq_SDK(AriSdk::ARI_IBIXccClockControlReq_SDK *this)
{
  *this = &unk_2A1D24940;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIXccClockControlReq_SDK::~ARI_IBIXccClockControlReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIXccClockControlReq_SDK::pack(AriSdk::ARI_IBIXccClockControlReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 8uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIXccClockControlRspCb_SDK::ARI_IBIXccClockControlRspCb_SDK(AriSdk::ARI_IBIXccClockControlRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x59000000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x59000000u, 0);
}

void AriSdk::ARI_IBIXccClockControlRspCb_SDK::ARI_IBIXccClockControlRspCb_SDK(AriSdk::ARI_IBIXccClockControlRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIXccClockControlRspCb_SDK::~ARI_IBIXccClockControlRspCb_SDK(AriSdk::ARI_IBIXccClockControlRspCb_SDK *this)
{
  *this = &unk_2A1D24978;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40504FFAC1);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIXccClockControlRspCb_SDK::~ARI_IBIXccClockControlRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIXccClockControlRspCb_SDK::pack(AriSdk::ARI_IBIXccClockControlRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x18uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIXccClockIndCb_SDK::ARI_IBIXccClockIndCb_SDK(AriSdk::ARI_IBIXccClockIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x59800000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x59800000u, 0);
}

void AriSdk::ARI_IBIXccClockIndCb_SDK::ARI_IBIXccClockIndCb_SDK(AriSdk::ARI_IBIXccClockIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIXccClockIndCb_SDK::~ARI_IBIXccClockIndCb_SDK(AriSdk::ARI_IBIXccClockIndCb_SDK *this)
{
  *this = &unk_2A1D249B0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40504FFAC1);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIXccClockIndCb_SDK::~ARI_IBIXccClockIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIXccClockIndCb_SDK::pack(AriSdk::ARI_IBIXccClockIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x18uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIXccLtlReq_SDK::ARI_IBIXccLtlReq_SDK(AriSdk::ARI_IBIXccLtlReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x58808000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x58808000u, 0);
}

void AriSdk::ARI_IBIXccLtlReq_SDK::ARI_IBIXccLtlReq_SDK(AriSdk::ARI_IBIXccLtlReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIXccLtlReq_SDK::~ARI_IBIXccLtlReq_SDK(AriSdk::ARI_IBIXccLtlReq_SDK *this)
{
  *this = &unk_2A1D249E8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIXccLtlReq_SDK::~ARI_IBIXccLtlReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIXccLtlReq_SDK::pack(AriSdk::ARI_IBIXccLtlReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIXccLtlRspCb_SDK::ARI_IBIXccLtlRspCb_SDK(AriSdk::ARI_IBIXccLtlRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x59008000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x59008000u, 0);
}

void AriSdk::ARI_IBIXccLtlRspCb_SDK::ARI_IBIXccLtlRspCb_SDK(AriSdk::ARI_IBIXccLtlRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIXccLtlRspCb_SDK::~ARI_IBIXccLtlRspCb_SDK(AriSdk::ARI_IBIXccLtlRspCb_SDK *this)
{
  *this = &unk_2A1D24A20;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIXccLtlRspCb_SDK::~ARI_IBIXccLtlRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIXccLtlRspCb_SDK::pack(AriSdk::ARI_IBIXccLtlRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIXccLtlIndCb_SDK::ARI_IBIXccLtlIndCb_SDK(AriSdk::ARI_IBIXccLtlIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x59808000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x59808000u, 0);
}

void AriSdk::ARI_IBIXccLtlIndCb_SDK::ARI_IBIXccLtlIndCb_SDK(AriSdk::ARI_IBIXccLtlIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIXccLtlIndCb_SDK::~ARI_IBIXccLtlIndCb_SDK(AriSdk::ARI_IBIXccLtlIndCb_SDK *this)
{
  *this = &unk_2A1D24A58;
  v2 = *(this + 41);
  if (v2)
  {
    *(this + 42) = v2;
    operator delete(v2);
  }

  v3 = *(this + 40);
  *(this + 40) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 39);
  *(this + 39) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 38);
  *(this + 38) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 37);
  *(this + 37) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40BDFB0063);
  }

  v7 = *(this + 36);
  *(this + 36) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40BDFB0063);
  }

  v8 = *(this + 35);
  *(this + 35) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
  }

  v9 = *(this + 34);
  *(this + 34) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C40BDFB0063);
  }

  v10 = *(this + 33);
  *(this + 33) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4077774924);
  }

  v11 = *(this + 32);
  *(this + 32) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4077774924);
  }

  v12 = *(this + 29);
  if (v12)
  {
    *(this + 30) = v12;
    operator delete(v12);
  }

  v13 = *(this + 28);
  *(this + 28) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C40BDFB0063);
  }

  v14 = *(this + 27);
  *(this + 27) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  v15 = *(this + 24);
  if (v15)
  {
    *(this + 25) = v15;
    operator delete(v15);
  }

  v16 = *(this + 21);
  if (v16)
  {
    *(this + 22) = v16;
    operator delete(v16);
  }

  v17 = *(this + 20);
  *(this + 20) = 0;
  if (v17)
  {
    MEMORY[0x29C257E70](v17, 0x1000C4052888210);
  }

  v18 = *(this + 19);
  *(this + 19) = 0;
  if (v18)
  {
    MEMORY[0x29C257E70](v18, 0x1000C4052888210);
  }

  v19 = *(this + 18);
  *(this + 18) = 0;
  if (v19)
  {
    MEMORY[0x29C257E70](v19, 0x1000C4052888210);
  }

  v20 = *(this + 17);
  *(this + 17) = 0;
  if (v20)
  {
    MEMORY[0x29C257E70](v20, 0x1000C4052888210);
  }

  v21 = *(this + 16);
  *(this + 16) = 0;
  if (v21)
  {
    MEMORY[0x29C257E70](v21, 0x1000C4052888210);
  }

  v22 = *(this + 15);
  *(this + 15) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C4052888210);
  }

  v23 = *(this + 14);
  *(this + 14) = 0;
  if (v23)
  {
    MEMORY[0x29C257E70](v23, 0x1000C4052888210);
  }

  v24 = *(this + 13);
  *(this + 13) = 0;
  if (v24)
  {
    MEMORY[0x29C257E70](v24, 0x1000C4052888210);
  }

  v25 = *(this + 12);
  *(this + 12) = 0;
  if (v25)
  {
    MEMORY[0x29C257E70](v25, 0x1000C4052888210);
  }

  v26 = *(this + 11);
  *(this + 11) = 0;
  if (v26)
  {
    MEMORY[0x29C257E70](v26, 0x1000C4052888210);
  }

  v27 = *(this + 10);
  *(this + 10) = 0;
  if (v27)
  {
    MEMORY[0x29C257E70](v27, 0x1000C4052888210);
  }

  v28 = *(this + 9);
  *(this + 9) = 0;
  if (v28)
  {
    MEMORY[0x29C257E70](v28, 0x1000C4052888210);
  }

  v29 = *(this + 8);
  *(this + 8) = 0;
  if (v29)
  {
    MEMORY[0x29C257E70](v29, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIXccLtlIndCb_SDK::~ARI_IBIXccLtlIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIXccLtlIndCb_SDK::pack(AriSdk::ARI_IBIXccLtlIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 4uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 4uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 10, v14, 4uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 11, v15, 4uLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 12, v16, 4uLL, 0), !result))
                        {
                          v17 = *(this + 20);
                          if (!v17 || (result = AriMsg::pack(*(this + 6), 13, v17, 4uLL, 0), !result))
                          {
                            v18 = *(this + 21);
                            if (!v18 || (v19 = *(this + 22), v18 == v19) || (result = AriMsg::pack(*(this + 6), 14, v18, v19 - v18, 0), !result))
                            {
                              v20 = *(this + 24);
                              if (!v20 || (v21 = *(this + 25), v20 == v21) || (result = AriMsg::pack(*(this + 6), 15, v20, v21 - v20, 0), !result))
                              {
                                v22 = *(this + 27);
                                if (!v22 || (result = AriMsg::pack(*(this + 6), 16, v22, 4uLL, 0), !result))
                                {
                                  v23 = *(this + 28);
                                  if (!v23 || (result = AriMsg::pack(*(this + 6), 17, v23, 2uLL, 0), !result))
                                  {
                                    v24 = *(this + 29);
                                    if (!v24 || (v25 = *(this + 30), v24 == v25) || (result = AriMsg::pack(*(this + 6), 18, v24, v25 - v24, 0), !result))
                                    {
                                      v26 = *(this + 32);
                                      if (!v26 || (result = AriMsg::pack(*(this + 6), 19, v26, 1uLL, 0), !result))
                                      {
                                        v27 = *(this + 33);
                                        if (!v27 || (result = AriMsg::pack(*(this + 6), 20, v27, 1uLL, 0), !result))
                                        {
                                          v28 = *(this + 34);
                                          if (!v28 || (result = AriMsg::pack(*(this + 6), 21, v28, 2uLL, 0), !result))
                                          {
                                            v29 = *(this + 35);
                                            if (!v29 || (result = AriMsg::pack(*(this + 6), 22, v29, 1uLL, 0), !result))
                                            {
                                              v30 = *(this + 36);
                                              if (!v30 || (result = AriMsg::pack(*(this + 6), 23, v30, 2uLL, 0), !result))
                                              {
                                                v31 = *(this + 37);
                                                if (!v31 || (result = AriMsg::pack(*(this + 6), 24, v31, 2uLL, 0), !result))
                                                {
                                                  v32 = *(this + 38);
                                                  if (!v32 || (result = AriMsg::pack(*(this + 6), 25, v32, 4uLL, 0), !result))
                                                  {
                                                    v33 = *(this + 39);
                                                    if (!v33 || (result = AriMsg::pack(*(this + 6), 26, v33, 4uLL, 0), !result))
                                                    {
                                                      v34 = *(this + 40);
                                                      if (!v34 || (result = AriMsg::pack(*(this + 6), 27, v34, 4uLL, 0), !result))
                                                      {
                                                        v35 = *(this + 41);
                                                        if (!v35 || (v36 = *(this + 42), v35 == v36) || (result = AriMsg::pack(*(this + 6), 28, v35, v36 - v35, 0), !result))
                                                        {
                                                          result = 0;
                                                          *a2 = *(this + 6);
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2960B0818(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<int,135ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v23 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x21D)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v10, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v8 = v11 >= 0 ? v10 : v10[0];
      v9 = (__c->n128_u64[1] - __c->n128_u64[0]) >> 2;
      *__p = 136316418;
      *&__p[4] = "ari";
      v13 = 2080;
      v14 = v8;
      v15 = 1024;
      v16 = 360;
      v17 = 2048;
      v18 = this;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = 135;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v15 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 2, 135);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_2960B0B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<unsigned short,135ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v23 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x10F)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v10, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v8 = v11 >= 0 ? v10 : v10[0];
      v9 = (__c->n128_u64[1] - __c->n128_u64[0]) >> 1;
      *__p = 136316418;
      *&__p[4] = "ari";
      v13 = 2080;
      v14 = v8;
      v15 = 1024;
      v16 = 360;
      v17 = 2048;
      v18 = this;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = 135;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v15 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 1, 135);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_2960B0D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<short,8ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x11uLL)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v12, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v10 = v13 >= 0 ? v12 : v12[0];
      v11 = (*(a2 + 1) - *a2) >> 1;
      *__p = 136316418;
      *&__p[4] = "ari";
      v15 = 2080;
      v16 = v10;
      v17 = 1024;
      v18 = 360;
      v19 = 2048;
      v20 = a1;
      v21 = 2048;
      v22 = v11;
      v23 = 2048;
      v24 = 8;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v17 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 1, 8);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*__p);
    }
  }

  return a1;
}

void sub_2960B0FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<int,16ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v23 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x41)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v10, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
      v8 = v11 >= 0 ? v10 : v10[0];
      v9 = (__c->n128_u64[1] - __c->n128_u64[0]) >> 2;
      *__p = 136316418;
      *&__p[4] = "ari";
      v13 = 2080;
      v14 = v8;
      v15 = 1024;
      v16 = 360;
      v17 = 2048;
      v18 = this;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = 16;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=");
    if (v15 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 2, 16);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_2960B11AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2960B1278(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_CsiIceAudCallEventReq_SDK::ARI_CsiIceAudCallEventReq_SDK(AriSdk::ARI_CsiIceAudCallEventReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xF0860000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xF0860000, 0);
}

void AriSdk::ARI_CsiIceAudCallEventReq_SDK::ARI_CsiIceAudCallEventReq_SDK(AriSdk::ARI_CsiIceAudCallEventReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceAudCallEventReq_SDK::~ARI_CsiIceAudCallEventReq_SDK(AriSdk::ARI_CsiIceAudCallEventReq_SDK *this)
{
  *this = &unk_2A1D25750;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceAudCallEventReq_SDK::~ARI_CsiIceAudCallEventReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceAudCallEventReq_SDK::pack(AriSdk::ARI_CsiIceAudCallEventReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 2uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 2uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 2uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiIceAudCallEventRespCb_SDK::ARI_CsiIceAudCallEventRespCb_SDK(AriSdk::ARI_CsiIceAudCallEventRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xF1060000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xF1060000, 0);
}

void AriSdk::ARI_CsiIceAudCallEventRespCb_SDK::ARI_CsiIceAudCallEventRespCb_SDK(AriSdk::ARI_CsiIceAudCallEventRespCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}