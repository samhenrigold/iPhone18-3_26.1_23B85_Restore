uint64_t AriSdk::ARI_CsiIceSecActivationRegisterIndCb_SDK::pack(AriSdk::ARI_CsiIceSecActivationRegisterIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 1uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x82uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x82uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 0x12uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 0xAuLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 1uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 1uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 0xAuLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 0xAuLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 10, v14, 0x1AuLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 11, v15, 0x1AuLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 12, v16, 0x1AuLL, 0), !result))
                        {
                          v17 = *(this + 20);
                          if (!v17 || (result = AriMsg::pack(*(this + 6), 13, v17, 0x1AuLL, 0), !result))
                          {
                            v18 = *(this + 21);
                            if (!v18 || (result = AriMsg::pack(*(this + 6), 14, v18, 0x1AuLL, 0), !result))
                            {
                              v19 = *(this + 22);
                              if (!v19 || (result = AriMsg::pack(*(this + 6), 15, v19, 0x1AuLL, 0), !result))
                              {
                                v20 = *(this + 23);
                                if (!v20 || (result = AriMsg::pack(*(this + 6), 16, v20, 0x1AuLL, 0), !result))
                                {
                                  v21 = *(this + 24);
                                  if (!v21 || (result = AriMsg::pack(*(this + 6), 17, v21, 0x1AuLL, 0), !result))
                                  {
                                    v22 = *(this + 25);
                                    if (!v22 || (result = AriMsg::pack(*(this + 6), 18, v22, 1uLL, 0), !result))
                                    {
                                      v23 = *(this + 26);
                                      if (!v23 || (result = AriMsg::pack(*(this + 6), 19, v23, 4uLL, 0), !result))
                                      {
                                        v24 = *(this + 27);
                                        if (!v24 || (result = AriMsg::pack(*(this + 6), 20, v24, 0xCuLL, 0), !result))
                                        {
                                          v25 = *(this + 28);
                                          if (!v25 || (result = AriMsg::pack(*(this + 6), 21, v25, 1uLL, 0), !result))
                                          {
                                            v26 = *(this + 29);
                                            if (!v26 || (result = AriMsg::pack(*(this + 6), 22, v26, 1uLL, 0), !result))
                                            {
                                              v27 = *(this + 30);
                                              if (!v27 || (result = AriMsg::pack(*(this + 6), 23, v27, 1uLL, 0), !result))
                                              {
                                                v28 = *(this + 31);
                                                if (!v28 || (result = AriMsg::pack(*(this + 6), 24, v28, 0x12uLL, 0), !result))
                                                {
                                                  v29 = *(this + 32);
                                                  if (!v29 || (result = AriMsg::pack(*(this + 6), 25, v29, 1uLL, 0), !result))
                                                  {
                                                    v30 = *(this + 33);
                                                    if (!v30 || (result = AriMsg::pack(*(this + 6), 26, v30, 1uLL, 0), !result))
                                                    {
                                                      v31 = *(this + 34);
                                                      if (!v31 || (result = AriMsg::pack(*(this + 6), 27, v31, 1uLL, 0), !result))
                                                      {
                                                        v32 = *(this + 35);
                                                        if (!v32 || (result = AriMsg::pack(*(this + 6), 28, v32, 0x12uLL, 0), !result))
                                                        {
                                                          v33 = *(this + 36);
                                                          if (!v33 || (result = AriMsg::pack(*(this + 6), 29, v33, 1uLL, 0), !result))
                                                          {
                                                            v34 = *(this + 37);
                                                            if (!v34 || (result = AriMsg::pack(*(this + 6), 30, v34, 1uLL, 0), !result))
                                                            {
                                                              v35 = *(this + 38);
                                                              if (!v35 || (result = AriMsg::pack(*(this + 6), 31, v35, 1uLL, 0), !result))
                                                              {
                                                                v36 = *(this + 39);
                                                                if (!v36 || (result = AriMsg::pack(*(this + 6), 32, v36, 0xAuLL, 0), !result))
                                                                {
                                                                  v37 = *(this + 40);
                                                                  if (!v37 || (result = AriMsg::pack(*(this + 6), 33, v37, 0xAuLL, 0), !result))
                                                                  {
                                                                    v38 = *(this + 41);
                                                                    if (!v38 || (result = AriMsg::pack(*(this + 6), 34, v38, 6uLL, 0), !result))
                                                                    {
                                                                      v39 = *(this + 42);
                                                                      if (!v39 || (result = AriMsg::pack(*(this + 6), 35, v39, 1uLL, 0), !result))
                                                                      {
                                                                        v40 = *(this + 43);
                                                                        if (!v40 || (result = AriMsg::pack(*(this + 6), 36, v40, 1uLL, 0), !result))
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

void AriSdk::ARI_CsiIceSecActivationTicketSetReq_SDK::ARI_CsiIceSecActivationTicketSetReq_SDK(AriSdk::ARI_CsiIceSecActivationTicketSetReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFC840000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFC840000, 0);
}

void AriSdk::ARI_CsiIceSecActivationTicketSetReq_SDK::ARI_CsiIceSecActivationTicketSetReq_SDK(AriSdk::ARI_CsiIceSecActivationTicketSetReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSecActivationTicketSetReq_SDK::~ARI_CsiIceSecActivationTicketSetReq_SDK(AriSdk::ARI_CsiIceSecActivationTicketSetReq_SDK *this)
{
  *this = &unk_2A1D2B940;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C402E6B90A7);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceSecActivationTicketSetReq_SDK::~ARI_CsiIceSecActivationTicketSetReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceSecActivationTicketSetReq_SDK::pack(AriSdk::ARI_CsiIceSecActivationTicketSetReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x802uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIceSecActivationTicketSetRespCb_SDK::ARI_CsiIceSecActivationTicketSetRespCb_SDK(AriSdk::ARI_CsiIceSecActivationTicketSetRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFD040000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFD040000, 0);
}

void AriSdk::ARI_CsiIceSecActivationTicketSetRespCb_SDK::ARI_CsiIceSecActivationTicketSetRespCb_SDK(AriSdk::ARI_CsiIceSecActivationTicketSetRespCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSecActivationTicketSetRespCb_SDK::~ARI_CsiIceSecActivationTicketSetRespCb_SDK(AriSdk::ARI_CsiIceSecActivationTicketSetRespCb_SDK *this)
{
  *this = &unk_2A1D2B978;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceSecActivationTicketSetRespCb_SDK::~ARI_CsiIceSecActivationTicketSetRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceSecActivationTicketSetRespCb_SDK::pack(AriSdk::ARI_CsiIceSecActivationTicketSetRespCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CheckRestoreCompletedReq_SDK::ARI_CheckRestoreCompletedReq_SDK(AriSdk::ARI_CheckRestoreCompletedReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFC858000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFC858000, 0);
}

void AriSdk::ARI_CheckRestoreCompletedReq_SDK::ARI_CheckRestoreCompletedReq_SDK(AriSdk::ARI_CheckRestoreCompletedReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CheckRestoreCompletedReq_SDK::~ARI_CheckRestoreCompletedReq_SDK(AriSdk::ARI_CheckRestoreCompletedReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CheckRestoreCompletedReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CheckRestoreCompletedRspCb_SDK::ARI_CheckRestoreCompletedRspCb_SDK(AriSdk::ARI_CheckRestoreCompletedRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFD058000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFD058000, 0);
}

void AriSdk::ARI_CheckRestoreCompletedRspCb_SDK::ARI_CheckRestoreCompletedRspCb_SDK(AriSdk::ARI_CheckRestoreCompletedRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CheckRestoreCompletedRspCb_SDK::~ARI_CheckRestoreCompletedRspCb_SDK(AriSdk::ARI_CheckRestoreCompletedRspCb_SDK *this)
{
  *this = &unk_2A1D2B9E8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40417DB209);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40417DB209);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CheckRestoreCompletedRspCb_SDK::~ARI_CheckRestoreCompletedRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CheckRestoreCompletedRspCb_SDK::pack(AriSdk::ARI_CheckRestoreCompletedRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x42uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x42uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiSecCollectScrtBlobReq_SDK::ARI_CsiSecCollectScrtBlobReq_SDK(AriSdk::ARI_CsiSecCollectScrtBlobReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFC870000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFC870000, 0);
}

void AriSdk::ARI_CsiSecCollectScrtBlobReq_SDK::ARI_CsiSecCollectScrtBlobReq_SDK(AriSdk::ARI_CsiSecCollectScrtBlobReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSecCollectScrtBlobReq_SDK::~ARI_CsiSecCollectScrtBlobReq_SDK(AriSdk::ARI_CsiSecCollectScrtBlobReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSecCollectScrtBlobReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK::ARI_CsiSecCollectScrtBlobRspCb_SDK(AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFD070000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFD070000, 0);
}

void AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK::ARI_CsiSecCollectScrtBlobRspCb_SDK(AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK::~ARI_CsiSecCollectScrtBlobRspCb_SDK(AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK *this)
{
  *this = &unk_2A1D2BA58;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK::~ARI_CsiSecCollectScrtBlobRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK::pack(AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 2uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    if (v6)
    {
      v8 = v6 == v7;
    }

    else
    {
      v8 = 1;
    }

    if (v8 || (result = AriMsg::pack(*(this + 6), 2, v6, v7 - v6, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void sub_29611A5FC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,4096ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v23 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] <= 0x1000)
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
      v9 = __c->n128_u64[1] - __c->n128_u64[0];
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
      v22 = 4096;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 4096);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_29611A814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_CsiSecGetChipIdReq_SDK::ARI_CsiSecGetChipIdReq_SDK(AriSdk::ARI_CsiSecGetChipIdReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFC820000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFC820000, 0);
}

void AriSdk::ARI_CsiSecGetChipIdReq_SDK::ARI_CsiSecGetChipIdReq_SDK(AriSdk::ARI_CsiSecGetChipIdReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSecGetChipIdReq_SDK::~ARI_CsiSecGetChipIdReq_SDK(AriSdk::ARI_CsiSecGetChipIdReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSecGetChipIdReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiSecGetChipIdRspCb_SDK::ARI_CsiSecGetChipIdRspCb_SDK(AriSdk::ARI_CsiSecGetChipIdRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFD020000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFD020000, 0);
}

void AriSdk::ARI_CsiSecGetChipIdRspCb_SDK::ARI_CsiSecGetChipIdRspCb_SDK(AriSdk::ARI_CsiSecGetChipIdRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSecGetChipIdRspCb_SDK::~ARI_CsiSecGetChipIdRspCb_SDK(AriSdk::ARI_CsiSecGetChipIdRspCb_SDK *this)
{
  *this = &unk_2A1D2BAC8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiSecGetChipIdRspCb_SDK::~ARI_CsiSecGetChipIdRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSecGetChipIdRspCb_SDK::pack(AriSdk::ARI_CsiSecGetChipIdRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiSecGetPkHashReq_SDK::ARI_CsiSecGetPkHashReq_SDK(AriSdk::ARI_CsiSecGetPkHashReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFC828000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFC828000, 0);
}

void AriSdk::ARI_CsiSecGetPkHashReq_SDK::ARI_CsiSecGetPkHashReq_SDK(AriSdk::ARI_CsiSecGetPkHashReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSecGetPkHashReq_SDK::~ARI_CsiSecGetPkHashReq_SDK(AriSdk::ARI_CsiSecGetPkHashReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSecGetPkHashReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiSecGetPkHashRspCb_SDK::ARI_CsiSecGetPkHashRspCb_SDK(AriSdk::ARI_CsiSecGetPkHashRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFD028000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFD028000, 0);
}

void AriSdk::ARI_CsiSecGetPkHashRspCb_SDK::ARI_CsiSecGetPkHashRspCb_SDK(AriSdk::ARI_CsiSecGetPkHashRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSecGetPkHashRspCb_SDK::~ARI_CsiSecGetPkHashRspCb_SDK(AriSdk::ARI_CsiSecGetPkHashRspCb_SDK *this)
{
  *this = &unk_2A1D2BB38;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40A995D64BLL);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiSecGetPkHashRspCb_SDK::~ARI_CsiSecGetPkHashRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSecGetPkHashRspCb_SDK::pack(AriSdk::ARI_CsiSecGetPkHashRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x22uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIceFinishProvisionReq_SDK::ARI_CsiIceFinishProvisionReq_SDK(AriSdk::ARI_CsiIceFinishProvisionReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFC810000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFC810000, 0);
}

void AriSdk::ARI_CsiIceFinishProvisionReq_SDK::ARI_CsiIceFinishProvisionReq_SDK(AriSdk::ARI_CsiIceFinishProvisionReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceFinishProvisionReq_SDK::~ARI_CsiIceFinishProvisionReq_SDK(AriSdk::ARI_CsiIceFinishProvisionReq_SDK *this)
{
  *this = &unk_2A1D2BB70;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40D496A851);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceFinishProvisionReq_SDK::~ARI_CsiIceFinishProvisionReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceFinishProvisionReq_SDK::pack(AriSdk::ARI_CsiIceFinishProvisionReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0xC02uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIceFinishProvisionResp_SDK::ARI_CsiIceFinishProvisionResp_SDK(AriSdk::ARI_CsiIceFinishProvisionResp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFD010000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFD010000, 0);
}

void AriSdk::ARI_CsiIceFinishProvisionResp_SDK::ARI_CsiIceFinishProvisionResp_SDK(AriSdk::ARI_CsiIceFinishProvisionResp_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceFinishProvisionResp_SDK::~ARI_CsiIceFinishProvisionResp_SDK(AriSdk::ARI_CsiIceFinishProvisionResp_SDK *this)
{
  *this = &unk_2A1D2BBA8;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40EEF2B9B0);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40B88D2812);
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
    MEMORY[0x29C257E70](v5, 0x1000C40B88D2812);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceFinishProvisionResp_SDK::~ARI_CsiIceFinishProvisionResp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceFinishProvisionResp_SDK::pack(AriSdk::ARI_CsiIceFinishProvisionResp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x12uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x12uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 0x82uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiIceGetFactoryDebugEnabledReq_SDK::ARI_CsiIceGetFactoryDebugEnabledReq_SDK(AriSdk::ARI_CsiIceGetFactoryDebugEnabledReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFC830000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFC830000, 0);
}

void AriSdk::ARI_CsiIceGetFactoryDebugEnabledReq_SDK::ARI_CsiIceGetFactoryDebugEnabledReq_SDK(AriSdk::ARI_CsiIceGetFactoryDebugEnabledReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGetFactoryDebugEnabledReq_SDK::~ARI_CsiIceGetFactoryDebugEnabledReq_SDK(AriSdk::ARI_CsiIceGetFactoryDebugEnabledReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGetFactoryDebugEnabledReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiIceGetFactoryDebugEnabledResp_SDK::ARI_CsiIceGetFactoryDebugEnabledResp_SDK(AriSdk::ARI_CsiIceGetFactoryDebugEnabledResp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFD030000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFD030000, 0);
}

void AriSdk::ARI_CsiIceGetFactoryDebugEnabledResp_SDK::ARI_CsiIceGetFactoryDebugEnabledResp_SDK(AriSdk::ARI_CsiIceGetFactoryDebugEnabledResp_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGetFactoryDebugEnabledResp_SDK::~ARI_CsiIceGetFactoryDebugEnabledResp_SDK(AriSdk::ARI_CsiIceGetFactoryDebugEnabledResp_SDK *this)
{
  *this = &unk_2A1D2BC18;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceGetFactoryDebugEnabledResp_SDK::~ARI_CsiIceGetFactoryDebugEnabledResp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGetFactoryDebugEnabledResp_SDK::pack(AriSdk::ARI_CsiIceGetFactoryDebugEnabledResp_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceGetManifestStatusReq_SDK::ARI_CsiIceGetManifestStatusReq_SDK(AriSdk::ARI_CsiIceGetManifestStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFC818000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFC818000, 0);
}

void AriSdk::ARI_CsiIceGetManifestStatusReq_SDK::ARI_CsiIceGetManifestStatusReq_SDK(AriSdk::ARI_CsiIceGetManifestStatusReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGetManifestStatusReq_SDK::~ARI_CsiIceGetManifestStatusReq_SDK(AriSdk::ARI_CsiIceGetManifestStatusReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGetManifestStatusReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiIceGetManifestStatusResp_SDK::ARI_CsiIceGetManifestStatusResp_SDK(AriSdk::ARI_CsiIceGetManifestStatusResp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFD018000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFD018000, 0);
}

void AriSdk::ARI_CsiIceGetManifestStatusResp_SDK::ARI_CsiIceGetManifestStatusResp_SDK(AriSdk::ARI_CsiIceGetManifestStatusResp_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceGetManifestStatusResp_SDK::~ARI_CsiIceGetManifestStatusResp_SDK(AriSdk::ARI_CsiIceGetManifestStatusResp_SDK *this)
{
  *this = &unk_2A1D2BC88;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40EEF2B9B0);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40EEF2B9B0);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceGetManifestStatusResp_SDK::~ARI_CsiIceGetManifestStatusResp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceGetManifestStatusResp_SDK::pack(AriSdk::ARI_CsiIceGetManifestStatusResp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x82uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x82uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 2uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_GetPersonalizationParametersReq_SDK::ARI_GetPersonalizationParametersReq_SDK(AriSdk::ARI_GetPersonalizationParametersReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFC860000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFC860000, 0);
}

void AriSdk::ARI_GetPersonalizationParametersReq_SDK::ARI_GetPersonalizationParametersReq_SDK(AriSdk::ARI_GetPersonalizationParametersReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_GetPersonalizationParametersReq_SDK::~ARI_GetPersonalizationParametersReq_SDK(AriSdk::ARI_GetPersonalizationParametersReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_GetPersonalizationParametersReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_GetPersonalizationParametersRspCb_SDK::ARI_GetPersonalizationParametersRspCb_SDK(AriSdk::ARI_GetPersonalizationParametersRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFD060000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFD060000, 0);
}

void AriSdk::ARI_GetPersonalizationParametersRspCb_SDK::ARI_GetPersonalizationParametersRspCb_SDK(AriSdk::ARI_GetPersonalizationParametersRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_GetPersonalizationParametersRspCb_SDK::~ARI_GetPersonalizationParametersRspCb_SDK(AriSdk::ARI_GetPersonalizationParametersRspCb_SDK *this)
{
  *this = &unk_2A1D2BCF8;
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 19);
  *(this + 19) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 17) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  *(this + 15) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 14);
  *(this + 14) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 13);
  *(this + 13) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 12);
  *(this + 12) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
  }

  v9 = *(this + 11);
  *(this + 11) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 10);
  *(this + 10) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 9);
  *(this + 9) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C40BDFB0063);
  }

  v12 = *(this + 8);
  *(this + 8) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4077774924);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_GetPersonalizationParametersRspCb_SDK::~ARI_GetPersonalizationParametersRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_GetPersonalizationParametersRspCb_SDK::pack(AriSdk::ARI_GetPersonalizationParametersRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 1uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 2uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 1uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 1uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (v14 = *(this + 17), v13 == v14) || (result = AriMsg::pack(*(this + 6), 9, v13, v14 - v13, 0), !result))
                  {
                    v15 = *(this + 19);
                    if (!v15 || (result = AriMsg::pack(*(this + 6), 10, v15, 4uLL, 0), !result))
                    {
                      v16 = *(this + 20);
                      if (!v16 || (result = AriMsg::pack(*(this + 6), 11, v16, 4uLL, 0), !result))
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

  return result;
}

std::vector<int> *AriSdk::TlvArray<unsigned char,32ul>::operator=(std::vector<int> *this, __n128 *__c)
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
      v9 = __c->n128_u64[1] - __c->n128_u64[0];
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
      v22 = 32;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 32);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_29611D3F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_CsiSecGetRFSelfTestNonceReq_SDK::ARI_CsiSecGetRFSelfTestNonceReq_SDK(AriSdk::ARI_CsiSecGetRFSelfTestNonceReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFC850000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFC850000, 0);
}

void AriSdk::ARI_CsiSecGetRFSelfTestNonceReq_SDK::ARI_CsiSecGetRFSelfTestNonceReq_SDK(AriSdk::ARI_CsiSecGetRFSelfTestNonceReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSecGetRFSelfTestNonceReq_SDK::~ARI_CsiSecGetRFSelfTestNonceReq_SDK(AriSdk::ARI_CsiSecGetRFSelfTestNonceReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSecGetRFSelfTestNonceReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiSecGetRFSelfTestNonceRspCb_SDK::ARI_CsiSecGetRFSelfTestNonceRspCb_SDK(AriSdk::ARI_CsiSecGetRFSelfTestNonceRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFD050000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFD050000, 0);
}

void AriSdk::ARI_CsiSecGetRFSelfTestNonceRspCb_SDK::ARI_CsiSecGetRFSelfTestNonceRspCb_SDK(AriSdk::ARI_CsiSecGetRFSelfTestNonceRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSecGetRFSelfTestNonceRspCb_SDK::~ARI_CsiSecGetRFSelfTestNonceRspCb_SDK(AriSdk::ARI_CsiSecGetRFSelfTestNonceRspCb_SDK *this)
{
  *this = &unk_2A1D2BD68;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408AA14F5FLL);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiSecGetRFSelfTestNonceRspCb_SDK::~ARI_CsiSecGetRFSelfTestNonceRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSecGetRFSelfTestNonceRspCb_SDK::pack(AriSdk::ARI_CsiSecGetRFSelfTestNonceRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x24uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_GetRfDiagnosticsReq_SDK::ARI_GetRfDiagnosticsReq_SDK(AriSdk::ARI_GetRfDiagnosticsReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFC868000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFC868000, 0);
}

void AriSdk::ARI_GetRfDiagnosticsReq_SDK::ARI_GetRfDiagnosticsReq_SDK(AriSdk::ARI_GetRfDiagnosticsReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_GetRfDiagnosticsReq_SDK::~ARI_GetRfDiagnosticsReq_SDK(AriSdk::ARI_GetRfDiagnosticsReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_GetRfDiagnosticsReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_GetRfDiagnosticsRspCb_SDK::ARI_GetRfDiagnosticsRspCb_SDK(AriSdk::ARI_GetRfDiagnosticsRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFD068000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFD068000, 0);
}

void AriSdk::ARI_GetRfDiagnosticsRspCb_SDK::ARI_GetRfDiagnosticsRspCb_SDK(AriSdk::ARI_GetRfDiagnosticsRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_GetRfDiagnosticsRspCb_SDK::~ARI_GetRfDiagnosticsRspCb_SDK(AriSdk::ARI_GetRfDiagnosticsRspCb_SDK *this)
{
  *this = &unk_2A1D2BDD8;
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
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_GetRfDiagnosticsRspCb_SDK::~ARI_GetRfDiagnosticsRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_GetRfDiagnosticsRspCb_SDK::pack(AriSdk::ARI_GetRfDiagnosticsRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 1uLL, 0), !result))
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

void AriSdk::ARI_CsiSecRFSelfTestCompletionIndCb_SDK::ARI_CsiSecRFSelfTestCompletionIndCb_SDK(AriSdk::ARI_CsiSecRFSelfTestCompletionIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFD840000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFD840000, 0);
}

void AriSdk::ARI_CsiSecRFSelfTestCompletionIndCb_SDK::ARI_CsiSecRFSelfTestCompletionIndCb_SDK(AriSdk::ARI_CsiSecRFSelfTestCompletionIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSecRFSelfTestCompletionIndCb_SDK::~ARI_CsiSecRFSelfTestCompletionIndCb_SDK(AriSdk::ARI_CsiSecRFSelfTestCompletionIndCb_SDK *this)
{
  *this = &unk_2A1D2BE10;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiSecRFSelfTestCompletionIndCb_SDK::~ARI_CsiSecRFSelfTestCompletionIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSecRFSelfTestCompletionIndCb_SDK::pack(AriSdk::ARI_CsiSecRFSelfTestCompletionIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiSecReadSikPKeyReq_SDK::ARI_CsiSecReadSikPKeyReq_SDK(AriSdk::ARI_CsiSecReadSikPKeyReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFC878000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFC878000, 0);
}

void AriSdk::ARI_CsiSecReadSikPKeyReq_SDK::ARI_CsiSecReadSikPKeyReq_SDK(AriSdk::ARI_CsiSecReadSikPKeyReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSecReadSikPKeyReq_SDK::~ARI_CsiSecReadSikPKeyReq_SDK(AriSdk::ARI_CsiSecReadSikPKeyReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSecReadSikPKeyReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK::ARI_CsiSecReadSikPKeyRspCb_SDK(AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFD078000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFD078000, 0);
}

void AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK::ARI_CsiSecReadSikPKeyRspCb_SDK(AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK::~ARI_CsiSecReadSikPKeyRspCb_SDK(AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK *this)
{
  *this = &unk_2A1D2BE80;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK::~ARI_CsiSecReadSikPKeyRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK::pack(AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  v5 = *(this + 9);
  if (v4)
  {
    v6 = v4 == v5;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || (result = AriMsg::pack(*(this + 6), 1, v4, v5 - v4, 0), !result))
  {
    v8 = *(this + 11);
    if (!v8 || (result = AriMsg::pack(*(this + 6), 2, v8, 2uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK::unpack(AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK *this)
{
  v3 = *MEMORY[0x29EDCA608];
  v2 = 0;
  v1 = 0xAAAAAAAAAAAAAAAALL;
  operator new[]();
}

void sub_29611E70C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  MEMORY[0x29C257E50](v29, v28, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_CsiIceSecSendRFSelfTestTicketReq_SDK::ARI_CsiIceSecSendRFSelfTestTicketReq_SDK(AriSdk::ARI_CsiIceSecSendRFSelfTestTicketReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFC848000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFC848000, 0);
}

void AriSdk::ARI_CsiIceSecSendRFSelfTestTicketReq_SDK::ARI_CsiIceSecSendRFSelfTestTicketReq_SDK(AriSdk::ARI_CsiIceSecSendRFSelfTestTicketReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSecSendRFSelfTestTicketReq_SDK::~ARI_CsiIceSecSendRFSelfTestTicketReq_SDK(AriSdk::ARI_CsiIceSecSendRFSelfTestTicketReq_SDK *this)
{
  *this = &unk_2A1D2BEB8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4040BEE09CLL);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceSecSendRFSelfTestTicketReq_SDK::~ARI_CsiIceSecSendRFSelfTestTicketReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceSecSendRFSelfTestTicketReq_SDK::pack(AriSdk::ARI_CsiIceSecSendRFSelfTestTicketReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x402uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIceSecSendRFSelfTestTicketRspCb_SDK::ARI_CsiIceSecSendRFSelfTestTicketRspCb_SDK(AriSdk::ARI_CsiIceSecSendRFSelfTestTicketRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFD048000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFD048000, 0);
}

void AriSdk::ARI_CsiIceSecSendRFSelfTestTicketRspCb_SDK::ARI_CsiIceSecSendRFSelfTestTicketRspCb_SDK(AriSdk::ARI_CsiIceSecSendRFSelfTestTicketRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSecSendRFSelfTestTicketRspCb_SDK::~ARI_CsiIceSecSendRFSelfTestTicketRspCb_SDK(AriSdk::ARI_CsiIceSecSendRFSelfTestTicketRspCb_SDK *this)
{
  *this = &unk_2A1D2BEF0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceSecSendRFSelfTestTicketRspCb_SDK::~ARI_CsiIceSecSendRFSelfTestTicketRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceSecSendRFSelfTestTicketRspCb_SDK::pack(AriSdk::ARI_CsiIceSecSendRFSelfTestTicketRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2Req_SDK::ARI_CsiIceSecSendRFSelfTestTicketV2Req_SDK(AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2Req_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFC880000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFC880000, 0);
}

void AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2Req_SDK::ARI_CsiIceSecSendRFSelfTestTicketV2Req_SDK(AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2Req_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2Req_SDK::~ARI_CsiIceSecSendRFSelfTestTicketV2Req_SDK(AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2Req_SDK *this)
{
  *this = &unk_2A1D2BF28;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2Req_SDK::~ARI_CsiIceSecSendRFSelfTestTicketV2Req_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2Req_SDK::pack(AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2Req_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 2uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    if (v6)
    {
      v8 = v6 == v7;
    }

    else
    {
      v8 = 1;
    }

    if (v8 || (result = AriMsg::pack(*(this + 6), 2, v6, v7 - v6, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void sub_29611F120(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2RspCb_SDK::ARI_CsiIceSecSendRFSelfTestTicketV2RspCb_SDK(AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2RspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFD080000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFD080000, 0);
}

void AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2RspCb_SDK::ARI_CsiIceSecSendRFSelfTestTicketV2RspCb_SDK(AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2RspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2RspCb_SDK::~ARI_CsiIceSecSendRFSelfTestTicketV2RspCb_SDK(AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2RspCb_SDK *this)
{
  *this = &unk_2A1D2BF60;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2RspCb_SDK::~ARI_CsiIceSecSendRFSelfTestTicketV2RspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2RspCb_SDK::pack(AriSdk::ARI_CsiIceSecSendRFSelfTestTicketV2RspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiIceStartProvisionReq_SDK::ARI_CsiIceStartProvisionReq_SDK(AriSdk::ARI_CsiIceStartProvisionReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFC808000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFC808000, 0);
}

void AriSdk::ARI_CsiIceStartProvisionReq_SDK::ARI_CsiIceStartProvisionReq_SDK(AriSdk::ARI_CsiIceStartProvisionReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceStartProvisionReq_SDK::~ARI_CsiIceStartProvisionReq_SDK(AriSdk::ARI_CsiIceStartProvisionReq_SDK *this)
{
  *this = &unk_2A1D2BF98;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40119540ACLL);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIceStartProvisionReq_SDK::~ARI_CsiIceStartProvisionReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceStartProvisionReq_SDK::pack(AriSdk::ARI_CsiIceStartProvisionReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0xFA0uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIceStartProvisionResp_SDK::ARI_CsiIceStartProvisionResp_SDK(AriSdk::ARI_CsiIceStartProvisionResp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0xFD008000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0xFD008000, 0);
}

void AriSdk::ARI_CsiIceStartProvisionResp_SDK::ARI_CsiIceStartProvisionResp_SDK(AriSdk::ARI_CsiIceStartProvisionResp_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIceStartProvisionResp_SDK::~ARI_CsiIceStartProvisionResp_SDK(AriSdk::ARI_CsiIceStartProvisionResp_SDK *this)
{
  *this = &unk_2A1D2BFD0;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40EEF2B9B0);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40B88D2812);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4040BEE09CLL);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40B88D2812);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40B88D2812);
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
  AriSdk::ARI_CsiIceStartProvisionResp_SDK::~ARI_CsiIceStartProvisionResp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIceStartProvisionResp_SDK::pack(AriSdk::ARI_CsiIceStartProvisionResp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x12uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 0x12uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 0x402uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 0x12uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 0x82uLL, 0), !result))
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

uint64_t ARI_CsiSecGetChipIdRspCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, a1, a2);
  v5 = HIDWORD(v11);
  if (!HIDWORD(v11))
  {
    if (((DWORD1(v7) << 15) | (v7 << 26)) == -50200576)
    {
      v5 = AriMsg::unparam(&v7, 1, a3, 4uLL);
    }

    else
    {
      v5 = 4294967223;
    }
  }

  v10[0] = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  AriMsg::FreeTlvList(v10[1]);
  return v5;
}

uint64_t ARI_CsiSecGetChipIdReq_ENC(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v5;
  *v13 = v5;
  v10 = v5;
  v11 = v5;
  AriMsg::AriMsg(&v10, 0xFC820000, a3);
  if (a2)
  {
    EncodedBuf = AriMsg::getEncodedBuf(&v10, a3, v6);
    *a2 = EncodedBuf;
    if (EncodedBuf)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  v13[0] = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  AriMsg::FreeTlvList(v13[1]);
  return v8;
}

uint64_t ARI_CsiSecGetChipIdReq_BLK(int *a1, unint64_t a2, unsigned int a3)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0xFC820000, a3);
  Ctx = AriHost::Send(&v8, *a1, a2, 0, 20000);
  if (!Ctx)
  {
    Ctx = AriMsg::extractCtx(&v8, a1);
  }

  v11[0] = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  AriMsg::FreeTlvList(v11[1]);
  return Ctx;
}

uint64_t ARI_CsiSecGetPkHashRspCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, a1, a2);
  v5 = HIDWORD(v11);
  if (!HIDWORD(v11))
  {
    if (((DWORD1(v7) << 15) | (v7 << 26)) == -50167808)
    {
      v5 = AriMsg::unparam(&v7, 1, a3, 0x22uLL);
    }

    else
    {
      v5 = 4294967223;
    }
  }

  v10[0] = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  AriMsg::FreeTlvList(v10[1]);
  return v5;
}

uint64_t ARI_CsiSecGetPkHashReq_ENC(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v5;
  *v13 = v5;
  v10 = v5;
  v11 = v5;
  AriMsg::AriMsg(&v10, 0xFC828000, a3);
  if (a2)
  {
    EncodedBuf = AriMsg::getEncodedBuf(&v10, a3, v6);
    *a2 = EncodedBuf;
    if (EncodedBuf)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  v13[0] = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  AriMsg::FreeTlvList(v13[1]);
  return v8;
}

uint64_t ARI_CsiSecGetPkHashReq_BLK(int *a1, unint64_t a2, unsigned int a3)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0xFC828000, a3);
  Ctx = AriHost::Send(&v8, *a1, a2, 0, 20000);
  if (!Ctx)
  {
    Ctx = AriMsg::extractCtx(&v8, a1);
  }

  v11[0] = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  AriMsg::FreeTlvList(v11[1]);
  return Ctx;
}

uint64_t ARI_CsiIceFinishProvisionResp_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, a1, a2);
  v5 = HIDWORD(v11);
  if (!HIDWORD(v11))
  {
    if (((DWORD1(v7) << 15) | (v7 << 26)) == -50266112)
    {
      v5 = AriMsg::unparam(&v7, 1, a3, 0xACuLL);
    }

    else
    {
      v5 = 4294967223;
    }
  }

  v10[0] = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  AriMsg::FreeTlvList(v10[1]);
  return v5;
}

uint64_t ARI_CsiIceFinishProvisionReq_ENC(char *a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v7;
  *v15 = v7;
  v12 = v7;
  v13 = v7;
  AriMsg::AriMsg(&v12, 0xFC810000, a3);
  v9 = AriMsg::packParam(&v12, 1, a1, 0xC02uLL);
  if (!v9)
  {
    if (a3)
    {
      EncodedBuf = AriMsg::getEncodedBuf(&v12, a4, v8);
      *a3 = EncodedBuf;
      if (EncodedBuf)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      v9 = 0xFFFFFFFFLL;
    }
  }

  v15[0] = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  AriMsg::FreeTlvList(v15[1]);
  return v9;
}

uint64_t ARI_CsiIceFinishProvisionReq_BLK(char *a1, int *a2, unint64_t a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v6;
  *v12 = v6;
  v9 = v6;
  v10 = v6;
  AriMsg::AriMsg(&v9, 0xFC810000, a3);
  Ctx = AriMsg::packParam(&v9, 1, a1, 0xC02uLL);
  if (!Ctx)
  {
    Ctx = AriHost::Send(&v9, *a2, a3, 0, 20000);
    if (!Ctx)
    {
      Ctx = AriMsg::extractCtx(&v9, a2);
    }
  }

  v12[0] = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  AriMsg::FreeTlvList(v12[1]);
  return Ctx;
}

uint64_t ARI_CsiIceGetFactoryDebugEnabledResp_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, a1, a2);
  v5 = HIDWORD(v11);
  if (!HIDWORD(v11))
  {
    if (((DWORD1(v7) << 15) | (v7 << 26)) == -50135040)
    {
      v5 = AriMsg::unparam(&v7, 1, a3, 4uLL);
    }

    else
    {
      v5 = 4294967223;
    }
  }

  v10[0] = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  AriMsg::FreeTlvList(v10[1]);
  return v5;
}

uint64_t ARI_CsiIceGetFactoryDebugEnabledReq_ENC(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v5;
  *v13 = v5;
  v10 = v5;
  v11 = v5;
  AriMsg::AriMsg(&v10, 0xFC830000, a3);
  if (a2)
  {
    EncodedBuf = AriMsg::getEncodedBuf(&v10, a3, v6);
    *a2 = EncodedBuf;
    if (EncodedBuf)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  v13[0] = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  AriMsg::FreeTlvList(v13[1]);
  return v8;
}

uint64_t ARI_CsiIceGetFactoryDebugEnabledReq_BLK(int *a1, unint64_t a2, unsigned int a3)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0xFC830000, a3);
  Ctx = AriHost::Send(&v8, *a1, a2, 0, 20000);
  if (!Ctx)
  {
    Ctx = AriMsg::extractCtx(&v8, a1);
  }

  v11[0] = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  AriMsg::FreeTlvList(v11[1]);
  return Ctx;
}

uint64_t ARI_CsiIceGetManifestStatusResp_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, a1, a2);
  v5 = HIDWORD(v11);
  if (!HIDWORD(v11))
  {
    if (((DWORD1(v7) << 15) | (v7 << 26)) == -50233344)
    {
      v5 = AriMsg::unparam(&v7, 1, a3, 0x110uLL);
    }

    else
    {
      v5 = 4294967223;
    }
  }

  v10[0] = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  AriMsg::FreeTlvList(v10[1]);
  return v5;
}

uint64_t ARI_CsiIceGetManifestStatusReq_ENC(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v5;
  *v13 = v5;
  v10 = v5;
  v11 = v5;
  AriMsg::AriMsg(&v10, 0xFC818000, a3);
  if (a2)
  {
    EncodedBuf = AriMsg::getEncodedBuf(&v10, a3, v6);
    *a2 = EncodedBuf;
    if (EncodedBuf)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  v13[0] = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  AriMsg::FreeTlvList(v13[1]);
  return v8;
}

uint64_t ARI_CsiIceGetManifestStatusReq_BLK(int *a1, unint64_t a2, unsigned int a3)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0xFC818000, a3);
  Ctx = AriHost::Send(&v8, *a1, a2, 0, 20000);
  if (!Ctx)
  {
    Ctx = AriMsg::extractCtx(&v8, a1);
  }

  v11[0] = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  AriMsg::FreeTlvList(v11[1]);
  return Ctx;
}

uint64_t ARI_CsiIceStartProvisionResp_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, a1, a2);
  v5 = HIDWORD(v11);
  if (!HIDWORD(v11))
  {
    if (((DWORD1(v7) << 15) | (v7 << 26)) == -50298880)
    {
      v5 = AriMsg::unparam(&v7, 1, a3, 0x4C4uLL);
    }

    else
    {
      v5 = 4294967223;
    }
  }

  v10[0] = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  AriMsg::FreeTlvList(v10[1]);
  return v5;
}

uint64_t ARI_CsiIceStartProvisionReq_ENC(char *a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v7;
  *v15 = v7;
  v12 = v7;
  v13 = v7;
  AriMsg::AriMsg(&v12, 0xFC808000, a3);
  v9 = AriMsg::packParam(&v12, 1, a1, 0xFA0uLL);
  if (!v9)
  {
    if (a3)
    {
      EncodedBuf = AriMsg::getEncodedBuf(&v12, a4, v8);
      *a3 = EncodedBuf;
      if (EncodedBuf)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      v9 = 0xFFFFFFFFLL;
    }
  }

  v15[0] = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  AriMsg::FreeTlvList(v15[1]);
  return v9;
}

uint64_t ARI_CsiIceStartProvisionReq_BLK(char *a1, int *a2, unint64_t a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v6;
  *v12 = v6;
  v9 = v6;
  v10 = v6;
  AriMsg::AriMsg(&v9, 0xFC808000, a3);
  Ctx = AriMsg::packParam(&v9, 1, a1, 0xFA0uLL);
  if (!Ctx)
  {
    Ctx = AriHost::Send(&v9, *a2, a3, 0, 20000);
    if (!Ctx)
    {
      Ctx = AriMsg::extractCtx(&v9, a2);
    }
  }

  v12[0] = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  AriMsg::FreeTlvList(v12[1]);
  return Ctx;
}

void AriSdk::ARI_IBIEmbmsGetInterestedTMGIListReq_SDK::ARI_IBIEmbmsGetInterestedTMGIListReq_SDK(AriSdk::ARI_IBIEmbmsGetInterestedTMGIListReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7C830000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7C830000u, 0);
}

void AriSdk::ARI_IBIEmbmsGetInterestedTMGIListReq_SDK::ARI_IBIEmbmsGetInterestedTMGIListReq_SDK(AriSdk::ARI_IBIEmbmsGetInterestedTMGIListReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsGetInterestedTMGIListReq_SDK::~ARI_IBIEmbmsGetInterestedTMGIListReq_SDK(AriSdk::ARI_IBIEmbmsGetInterestedTMGIListReq_SDK *this)
{
  *this = &unk_2A1D2EF78;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIEmbmsGetInterestedTMGIListReq_SDK::~ARI_IBIEmbmsGetInterestedTMGIListReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsGetInterestedTMGIListReq_SDK::pack(AriSdk::ARI_IBIEmbmsGetInterestedTMGIListReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIEmbmsGetInterestedTMGIListRspCb_SDK::ARI_IBIEmbmsGetInterestedTMGIListRspCb_SDK(AriSdk::ARI_IBIEmbmsGetInterestedTMGIListRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7D030000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7D030000u, 0);
}

void AriSdk::ARI_IBIEmbmsGetInterestedTMGIListRspCb_SDK::ARI_IBIEmbmsGetInterestedTMGIListRspCb_SDK(AriSdk::ARI_IBIEmbmsGetInterestedTMGIListRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsGetInterestedTMGIListRspCb_SDK::~ARI_IBIEmbmsGetInterestedTMGIListRspCb_SDK(AriSdk::ARI_IBIEmbmsGetInterestedTMGIListRspCb_SDK *this)
{
  *this = &unk_2A1D2EFB0;
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
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIEmbmsGetInterestedTMGIListRspCb_SDK::~ARI_IBIEmbmsGetInterestedTMGIListRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsGetInterestedTMGIListRspCb_SDK::pack(AriSdk::ARI_IBIEmbmsGetInterestedTMGIListRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 2uLL, 0), !result))
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

      if (v9 || (result = AriMsg::pack(*(this + 6), 4, v7, v8 - v7, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void sub_29612475C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

AriOsa *AriSdk::TlvArray<IBIEmbmsTMGIInfoParam,64ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 1) < 0x41)
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
      v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 1);
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
      v24 = 64;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 1), 64);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*__p);
    }
  }

  return a1;
}

void sub_2961249E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIEmbmsGetSAIListReq_SDK::ARI_IBIEmbmsGetSAIListReq_SDK(AriSdk::ARI_IBIEmbmsGetSAIListReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7C838000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7C838000u, 0);
}

void AriSdk::ARI_IBIEmbmsGetSAIListReq_SDK::ARI_IBIEmbmsGetSAIListReq_SDK(AriSdk::ARI_IBIEmbmsGetSAIListReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsGetSAIListReq_SDK::~ARI_IBIEmbmsGetSAIListReq_SDK(AriSdk::ARI_IBIEmbmsGetSAIListReq_SDK *this)
{
  *this = &unk_2A1D2EFE8;
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
  AriSdk::ARI_IBIEmbmsGetSAIListReq_SDK::~ARI_IBIEmbmsGetSAIListReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsGetSAIListReq_SDK::pack(AriSdk::ARI_IBIEmbmsGetSAIListReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIEmbmsGetSAIListRspCb_SDK::ARI_IBIEmbmsGetSAIListRspCb_SDK(AriSdk::ARI_IBIEmbmsGetSAIListRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7D038000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7D038000u, 0);
}

void AriSdk::ARI_IBIEmbmsGetSAIListRspCb_SDK::ARI_IBIEmbmsGetSAIListRspCb_SDK(AriSdk::ARI_IBIEmbmsGetSAIListRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsGetSAIListRspCb_SDK::~ARI_IBIEmbmsGetSAIListRspCb_SDK(AriSdk::ARI_IBIEmbmsGetSAIListRspCb_SDK *this)
{
  *this = &unk_2A1D2F020;
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 17);
  if (v4)
  {
    *(this + 18) = v4;
    operator delete(v4);
  }

  v5 = *(this + 16);
  *(this + 16) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 15);
  *(this + 15) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 14);
  *(this + 14) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40EEF2B9B0);
  }

  v8 = *(this + 11);
  if (v8)
  {
    *(this + 12) = v8;
    operator delete(v8);
  }

  v9 = *(this + 10);
  *(this + 10) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C40BDFB0063);
  }

  v10 = *(this + 9);
  *(this + 9) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 8);
  *(this + 8) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIEmbmsGetSAIListRspCb_SDK::~ARI_IBIEmbmsGetSAIListRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsGetSAIListRspCb_SDK::pack(AriSdk::ARI_IBIEmbmsGetSAIListRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 5, v8, v9 - v8, 0), !result))
        {
          v10 = *(this + 14);
          if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 0x82uLL, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 4uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 2uLL, 0), !result))
              {
                v13 = *(this + 17);
                if (!v13 || (v14 = *(this + 18), v13 == v14) || (result = AriMsg::pack(*(this + 6), 9, v13, v14 - v13, 0), !result))
                {
                  v15 = *(this + 20);
                  if (!v15 || (result = AriMsg::pack(*(this + 6), 10, v15, 2uLL, 0), !result))
                  {
                    v16 = *(this + 21);
                    if (!v16 || (v17 = *(this + 22), v16 == v17) || (result = AriMsg::pack(*(this + 6), 11, v16, v17 - v16, 0), !result))
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

  return result;
}

void sub_296125790(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

AriOsa *AriSdk::TlvArray<IBIEmbmsInterFreqInfo,8ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xF0F0F0F0F0F0F0F1 * ((*(a2 + 1) - *a2) >> 3) < 9)
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
      v11 = 0xF0F0F0F0F0F0F0F1 * ((*(a2 + 1) - *a2) >> 3);
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xF0F0F0F0F0F0F0F1 * ((*(a2 + 1) - *a2) >> 3), 8);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*__p);
    }
  }

  return a1;
}

void sub_296125AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<unsigned int,32ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v23 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x81)
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
      v22 = 32;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 2, 32);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_296125CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<unsigned short,128ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v23 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x101)
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
      v22 = 128;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 1, 128);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  return this;
}

void sub_296125E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIEmbmsGetServiceReq_SDK::ARI_IBIEmbmsGetServiceReq_SDK(AriSdk::ARI_IBIEmbmsGetServiceReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7C810000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7C810000u, 0);
}

void AriSdk::ARI_IBIEmbmsGetServiceReq_SDK::ARI_IBIEmbmsGetServiceReq_SDK(AriSdk::ARI_IBIEmbmsGetServiceReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsGetServiceReq_SDK::~ARI_IBIEmbmsGetServiceReq_SDK(AriSdk::ARI_IBIEmbmsGetServiceReq_SDK *this)
{
  *this = &unk_2A1D2F058;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIEmbmsGetServiceReq_SDK::~ARI_IBIEmbmsGetServiceReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsGetServiceReq_SDK::pack(AriSdk::ARI_IBIEmbmsGetServiceReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIEmbmsGetServiceRspCb_SDK::ARI_IBIEmbmsGetServiceRspCb_SDK(AriSdk::ARI_IBIEmbmsGetServiceRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7D010000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7D010000u, 0);
}

void AriSdk::ARI_IBIEmbmsGetServiceRspCb_SDK::ARI_IBIEmbmsGetServiceRspCb_SDK(AriSdk::ARI_IBIEmbmsGetServiceRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsGetServiceRspCb_SDK::~ARI_IBIEmbmsGetServiceRspCb_SDK(AriSdk::ARI_IBIEmbmsGetServiceRspCb_SDK *this)
{
  *this = &unk_2A1D2F090;
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
  AriSdk::ARI_IBIEmbmsGetServiceRspCb_SDK::~ARI_IBIEmbmsGetServiceRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsGetServiceRspCb_SDK::pack(AriSdk::ARI_IBIEmbmsGetServiceRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIEmbmsGetServicesListReq_SDK::ARI_IBIEmbmsGetServicesListReq_SDK(AriSdk::ARI_IBIEmbmsGetServicesListReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7C818000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7C818000u, 0);
}

void AriSdk::ARI_IBIEmbmsGetServicesListReq_SDK::ARI_IBIEmbmsGetServicesListReq_SDK(AriSdk::ARI_IBIEmbmsGetServicesListReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsGetServicesListReq_SDK::~ARI_IBIEmbmsGetServicesListReq_SDK(AriSdk::ARI_IBIEmbmsGetServicesListReq_SDK *this)
{
  *this = &unk_2A1D2F0C8;
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
  AriSdk::ARI_IBIEmbmsGetServicesListReq_SDK::~ARI_IBIEmbmsGetServicesListReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsGetServicesListReq_SDK::pack(AriSdk::ARI_IBIEmbmsGetServicesListReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIEmbmsGetServicesListRspCb_SDK::ARI_IBIEmbmsGetServicesListRspCb_SDK(AriSdk::ARI_IBIEmbmsGetServicesListRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7D018000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7D018000u, 0);
}

void AriSdk::ARI_IBIEmbmsGetServicesListRspCb_SDK::ARI_IBIEmbmsGetServicesListRspCb_SDK(AriSdk::ARI_IBIEmbmsGetServicesListRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsGetServicesListRspCb_SDK::~ARI_IBIEmbmsGetServicesListRspCb_SDK(AriSdk::ARI_IBIEmbmsGetServicesListRspCb_SDK *this)
{
  *this = &unk_2A1D2F100;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
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
  AriSdk::ARI_IBIEmbmsGetServicesListRspCb_SDK::~ARI_IBIEmbmsGetServicesListRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsGetServicesListRspCb_SDK::pack(AriSdk::ARI_IBIEmbmsGetServicesListRspCb_SDK *this, AriMsg **a2)
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
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
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

void AriSdk::ARI_IBIEmbmsGetServicesListIndCb_SDK::ARI_IBIEmbmsGetServicesListIndCb_SDK(AriSdk::ARI_IBIEmbmsGetServicesListIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7D830000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7D830000u, 0);
}

void AriSdk::ARI_IBIEmbmsGetServicesListIndCb_SDK::ARI_IBIEmbmsGetServicesListIndCb_SDK(AriSdk::ARI_IBIEmbmsGetServicesListIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsGetServicesListIndCb_SDK::~ARI_IBIEmbmsGetServicesListIndCb_SDK(AriSdk::ARI_IBIEmbmsGetServicesListIndCb_SDK *this)
{
  *this = &unk_2A1D2F138;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 12);
  if (v4)
  {
    *(this + 13) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
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
  AriSdk::ARI_IBIEmbmsGetServicesListIndCb_SDK::~ARI_IBIEmbmsGetServicesListIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsGetServicesListIndCb_SDK::pack(AriSdk::ARI_IBIEmbmsGetServicesListIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 5, v9, v10 - v9, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 6, v11, 4uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 7, v12, 4uLL, 0), !result))
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

AriOsa *AriSdk::TlvArray<IBIEmbmsServiceInfo,100ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x321uLL)
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
      v11 = (*(a2 + 1) - *a2) >> 3;
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
      v24 = 100;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 3, 100);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*__p);
    }
  }

  return a1;
}

void sub_296127938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIEmbmsMBSFNAreaIndCb_SDK::ARI_IBIEmbmsMBSFNAreaIndCb_SDK(AriSdk::ARI_IBIEmbmsMBSFNAreaIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7D810000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7D810000u, 0);
}

void AriSdk::ARI_IBIEmbmsMBSFNAreaIndCb_SDK::ARI_IBIEmbmsMBSFNAreaIndCb_SDK(AriSdk::ARI_IBIEmbmsMBSFNAreaIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsMBSFNAreaIndCb_SDK::~ARI_IBIEmbmsMBSFNAreaIndCb_SDK(AriSdk::ARI_IBIEmbmsMBSFNAreaIndCb_SDK *this)
{
  *this = &unk_2A1D2F170;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
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
  AriSdk::ARI_IBIEmbmsMBSFNAreaIndCb_SDK::~ARI_IBIEmbmsMBSFNAreaIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsMBSFNAreaIndCb_SDK::pack(AriSdk::ARI_IBIEmbmsMBSFNAreaIndCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 4, v8, v9 - v8, 0), !result))
        {
          v10 = *(this + 14);
          if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 4uLL, 0), !result))
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

void AriSdk::ARI_IBIEmbmsSAIListIndCb_SDK::ARI_IBIEmbmsSAIListIndCb_SDK(AriSdk::ARI_IBIEmbmsSAIListIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7D820000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7D820000u, 0);
}

void AriSdk::ARI_IBIEmbmsSAIListIndCb_SDK::ARI_IBIEmbmsSAIListIndCb_SDK(AriSdk::ARI_IBIEmbmsSAIListIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsSAIListIndCb_SDK::~ARI_IBIEmbmsSAIListIndCb_SDK(AriSdk::ARI_IBIEmbmsSAIListIndCb_SDK *this)
{
  *this = &unk_2A1D2F1A8;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40EEF2B9B0);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIEmbmsSAIListIndCb_SDK::~ARI_IBIEmbmsSAIListIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsSAIListIndCb_SDK::pack(AriSdk::ARI_IBIEmbmsSAIListIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 2uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      v9 = !v7 || v7 == v8;
      if (v9 || (result = AriMsg::pack(*(this + 6), 3, v7, v8 - v7, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 4, v10, 0x82uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (result = AriMsg::pack(*(this + 6), 5, v11, 4uLL, 0), !result))
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

void AriSdk::ARI_IBIEmbmsServiceIndCb_SDK::ARI_IBIEmbmsServiceIndCb_SDK(AriSdk::ARI_IBIEmbmsServiceIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7D808000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7D808000u, 0);
}

void AriSdk::ARI_IBIEmbmsServiceIndCb_SDK::ARI_IBIEmbmsServiceIndCb_SDK(AriSdk::ARI_IBIEmbmsServiceIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsServiceIndCb_SDK::~ARI_IBIEmbmsServiceIndCb_SDK(AriSdk::ARI_IBIEmbmsServiceIndCb_SDK *this)
{
  *this = &unk_2A1D2F1E0;
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
  AriSdk::ARI_IBIEmbmsServiceIndCb_SDK::~ARI_IBIEmbmsServiceIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsServiceIndCb_SDK::pack(AriSdk::ARI_IBIEmbmsServiceIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIEmbmsServiceLossIndCb_SDK::ARI_IBIEmbmsServiceLossIndCb_SDK(AriSdk::ARI_IBIEmbmsServiceLossIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7D828000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7D828000u, 0);
}

void AriSdk::ARI_IBIEmbmsServiceLossIndCb_SDK::ARI_IBIEmbmsServiceLossIndCb_SDK(AriSdk::ARI_IBIEmbmsServiceLossIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsServiceLossIndCb_SDK::~ARI_IBIEmbmsServiceLossIndCb_SDK(AriSdk::ARI_IBIEmbmsServiceLossIndCb_SDK *this)
{
  *this = &unk_2A1D2F218;
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
  AriSdk::ARI_IBIEmbmsServiceLossIndCb_SDK::~ARI_IBIEmbmsServiceLossIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsServiceLossIndCb_SDK::pack(AriSdk::ARI_IBIEmbmsServiceLossIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIEmbmsServicesListIndCb_SDK::ARI_IBIEmbmsServicesListIndCb_SDK(AriSdk::ARI_IBIEmbmsServicesListIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7D818000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7D818000u, 0);
}

void AriSdk::ARI_IBIEmbmsServicesListIndCb_SDK::ARI_IBIEmbmsServicesListIndCb_SDK(AriSdk::ARI_IBIEmbmsServicesListIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsServicesListIndCb_SDK::~ARI_IBIEmbmsServicesListIndCb_SDK(AriSdk::ARI_IBIEmbmsServicesListIndCb_SDK *this)
{
  *this = &unk_2A1D2F250;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 12);
  if (v4)
  {
    *(this + 13) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
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
  AriSdk::ARI_IBIEmbmsServicesListIndCb_SDK::~ARI_IBIEmbmsServicesListIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsServicesListIndCb_SDK::pack(AriSdk::ARI_IBIEmbmsServicesListIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 5, v9, v10 - v9, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 6, v11, 4uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 7, v12, 4uLL, 0), !result))
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

void AriSdk::ARI_IBIEmbmsSessionConfigReq_SDK::ARI_IBIEmbmsSessionConfigReq_SDK(AriSdk::ARI_IBIEmbmsSessionConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7C820000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7C820000u, 0);
}

void AriSdk::ARI_IBIEmbmsSessionConfigReq_SDK::ARI_IBIEmbmsSessionConfigReq_SDK(AriSdk::ARI_IBIEmbmsSessionConfigReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsSessionConfigReq_SDK::~ARI_IBIEmbmsSessionConfigReq_SDK(AriSdk::ARI_IBIEmbmsSessionConfigReq_SDK *this)
{
  *this = &unk_2A1D2F288;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40274DC3F3);
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
  AriSdk::ARI_IBIEmbmsSessionConfigReq_SDK::~ARI_IBIEmbmsSessionConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsSessionConfigReq_SDK::pack(AriSdk::ARI_IBIEmbmsSessionConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 6uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIEmbmsSessionConfigRspCb_SDK::ARI_IBIEmbmsSessionConfigRspCb_SDK(AriSdk::ARI_IBIEmbmsSessionConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7D020000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7D020000u, 0);
}

void AriSdk::ARI_IBIEmbmsSessionConfigRspCb_SDK::ARI_IBIEmbmsSessionConfigRspCb_SDK(AriSdk::ARI_IBIEmbmsSessionConfigRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsSessionConfigRspCb_SDK::~ARI_IBIEmbmsSessionConfigRspCb_SDK(AriSdk::ARI_IBIEmbmsSessionConfigRspCb_SDK *this)
{
  *this = &unk_2A1D2F2C0;
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
  AriSdk::ARI_IBIEmbmsSessionConfigRspCb_SDK::~ARI_IBIEmbmsSessionConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsSessionConfigRspCb_SDK::pack(AriSdk::ARI_IBIEmbmsSessionConfigRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIEmbmsSetInterestedSAIFreqReq_SDK::ARI_IBIEmbmsSetInterestedSAIFreqReq_SDK(AriSdk::ARI_IBIEmbmsSetInterestedSAIFreqReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7C840000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7C840000u, 0);
}

void AriSdk::ARI_IBIEmbmsSetInterestedSAIFreqReq_SDK::ARI_IBIEmbmsSetInterestedSAIFreqReq_SDK(AriSdk::ARI_IBIEmbmsSetInterestedSAIFreqReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsSetInterestedSAIFreqReq_SDK::~ARI_IBIEmbmsSetInterestedSAIFreqReq_SDK(AriSdk::ARI_IBIEmbmsSetInterestedSAIFreqReq_SDK *this)
{
  *this = &unk_2A1D2F2F8;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 10);
  if (v5)
  {
    *(this + 11) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40BDFB0063);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIEmbmsSetInterestedSAIFreqReq_SDK::~ARI_IBIEmbmsSetInterestedSAIFreqReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsSetInterestedSAIFreqReq_SDK::pack(AriSdk::ARI_IBIEmbmsSetInterestedSAIFreqReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 2uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      v9 = !v7 || v7 == v8;
      if (v9 || (result = AriMsg::pack(*(this + 6), 4, v7, v8 - v7, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 4uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (result = AriMsg::pack(*(this + 6), 6, v11, 2uLL, 0), !result))
          {
            v12 = *(this + 15);
            if (!v12 || (v13 = *(this + 16), v12 == v13) || (result = AriMsg::pack(*(this + 6), 7, v12, v13 - v12, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_29612A4C8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIEmbmsSetInterestedSAIFreqRspCb_SDK::ARI_IBIEmbmsSetInterestedSAIFreqRspCb_SDK(AriSdk::ARI_IBIEmbmsSetInterestedSAIFreqRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7D040000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7D040000u, 0);
}

void AriSdk::ARI_IBIEmbmsSetInterestedSAIFreqRspCb_SDK::ARI_IBIEmbmsSetInterestedSAIFreqRspCb_SDK(AriSdk::ARI_IBIEmbmsSetInterestedSAIFreqRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsSetInterestedSAIFreqRspCb_SDK::~ARI_IBIEmbmsSetInterestedSAIFreqRspCb_SDK(AriSdk::ARI_IBIEmbmsSetInterestedSAIFreqRspCb_SDK *this)
{
  *this = &unk_2A1D2F330;
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
  AriSdk::ARI_IBIEmbmsSetInterestedSAIFreqRspCb_SDK::~ARI_IBIEmbmsSetInterestedSAIFreqRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsSetInterestedSAIFreqRspCb_SDK::pack(AriSdk::ARI_IBIEmbmsSetInterestedSAIFreqRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIEmbmsSetInterestedTMGIListReq_SDK::ARI_IBIEmbmsSetInterestedTMGIListReq_SDK(AriSdk::ARI_IBIEmbmsSetInterestedTMGIListReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7C828000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7C828000u, 0);
}

void AriSdk::ARI_IBIEmbmsSetInterestedTMGIListReq_SDK::ARI_IBIEmbmsSetInterestedTMGIListReq_SDK(AriSdk::ARI_IBIEmbmsSetInterestedTMGIListReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsSetInterestedTMGIListReq_SDK::~ARI_IBIEmbmsSetInterestedTMGIListReq_SDK(AriSdk::ARI_IBIEmbmsSetInterestedTMGIListReq_SDK *this)
{
  *this = &unk_2A1D2F368;
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
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIEmbmsSetInterestedTMGIListReq_SDK::~ARI_IBIEmbmsSetInterestedTMGIListReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsSetInterestedTMGIListReq_SDK::pack(AriSdk::ARI_IBIEmbmsSetInterestedTMGIListReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 2uLL, 0), !result))
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

      if (v9 || (result = AriMsg::pack(*(this + 6), 4, v7, v8 - v7, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void sub_29612AE78(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIEmbmsSetInterestedTMGIListRspCb_SDK::ARI_IBIEmbmsSetInterestedTMGIListRspCb_SDK(AriSdk::ARI_IBIEmbmsSetInterestedTMGIListRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7D028000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7D028000u, 0);
}

void AriSdk::ARI_IBIEmbmsSetInterestedTMGIListRspCb_SDK::ARI_IBIEmbmsSetInterestedTMGIListRspCb_SDK(AriSdk::ARI_IBIEmbmsSetInterestedTMGIListRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsSetInterestedTMGIListRspCb_SDK::~ARI_IBIEmbmsSetInterestedTMGIListRspCb_SDK(AriSdk::ARI_IBIEmbmsSetInterestedTMGIListRspCb_SDK *this)
{
  *this = &unk_2A1D2F3A0;
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
  AriSdk::ARI_IBIEmbmsSetInterestedTMGIListRspCb_SDK::~ARI_IBIEmbmsSetInterestedTMGIListRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsSetInterestedTMGIListRspCb_SDK::pack(AriSdk::ARI_IBIEmbmsSetInterestedTMGIListRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIEmbmsSetServiceReq_SDK::ARI_IBIEmbmsSetServiceReq_SDK(AriSdk::ARI_IBIEmbmsSetServiceReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7C808000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7C808000u, 0);
}

void AriSdk::ARI_IBIEmbmsSetServiceReq_SDK::ARI_IBIEmbmsSetServiceReq_SDK(AriSdk::ARI_IBIEmbmsSetServiceReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsSetServiceReq_SDK::~ARI_IBIEmbmsSetServiceReq_SDK(AriSdk::ARI_IBIEmbmsSetServiceReq_SDK *this)
{
  *this = &unk_2A1D2F3D8;
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
  AriSdk::ARI_IBIEmbmsSetServiceReq_SDK::~ARI_IBIEmbmsSetServiceReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsSetServiceReq_SDK::pack(AriSdk::ARI_IBIEmbmsSetServiceReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIEmbmsSetServiceRspCb_SDK::ARI_IBIEmbmsSetServiceRspCb_SDK(AriSdk::ARI_IBIEmbmsSetServiceRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x7D008000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x7D008000u, 0);
}

void AriSdk::ARI_IBIEmbmsSetServiceRspCb_SDK::ARI_IBIEmbmsSetServiceRspCb_SDK(AriSdk::ARI_IBIEmbmsSetServiceRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIEmbmsSetServiceRspCb_SDK::~ARI_IBIEmbmsSetServiceRspCb_SDK(AriSdk::ARI_IBIEmbmsSetServiceRspCb_SDK *this)
{
  *this = &unk_2A1D2F410;
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
  AriSdk::ARI_IBIEmbmsSetServiceRspCb_SDK::~ARI_IBIEmbmsSetServiceRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIEmbmsSetServiceRspCb_SDK::pack(AriSdk::ARI_IBIEmbmsSetServiceRspCb_SDK *this, AriMsg **a2)
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

void std::vector<IBIEmbmsTMGIInfoParam>::__init_with_size[abi:ne200100]<IBIEmbmsTMGIInfoParam*,IBIEmbmsTMGIInfoParam*>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29612B9EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBIEmbmsInterFreqInfo>::__init_with_size[abi:ne200100]<IBIEmbmsInterFreqInfo*,IBIEmbmsInterFreqInfo*>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29612BA98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBIEmbmsServiceInfo>::__init_with_size[abi:ne200100]<IBIEmbmsServiceInfo*,IBIEmbmsServiceInfo*>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_29612BB3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriOsa::GetOsLog(AriOsa *this)
{
  v1 = 0x2A1899000uLL;
  {
    v1 = 0x2A1899000;
    if (v3)
    {
      AriOsa::GetOsLog(void)::osLogHandle = os_log_create("com.apple.telephony.bb", "ARI");
      v1 = 0x2A1899000;
    }
  }

  return *(v1 + 240);
}

uint64_t AriOsa::GetOsLogForGroup(uint64_t this)
{
  v1 = this;
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    this = __cxa_guard_acquire(&_MergedGlobals_0);
    if (this)
    {
      __cxa_atexit(std::vector<std::string>::~vector[abi:ne200100], &qword_2A1899088, &dword_296048000);
      __cxa_guard_release(&_MergedGlobals_0);
    }
  }

  if ((atomic_load_explicit(&qword_2A1899078, memory_order_acquire) & 1) == 0)
  {
    this = __cxa_guard_acquire(&qword_2A1899078);
    if (this)
    {
      __cxa_atexit(std::vector<os_log_s *>::~vector[abi:ne200100], &qword_2A18990A0, &dword_296048000);
      __cxa_guard_release(&qword_2A1899078);
    }
  }

  if (qword_2A1899080 != -1)
  {
    dispatch_once(&qword_2A1899080, &__block_literal_global);
  }

  if (v1 > 0x3F || (this = *(qword_2A18990A0 + 8 * v1)) == 0)
  {

    return AriOsa::GetOsLog(this);
  }

  return this;
}

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t std::vector<os_log_s *>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void ___ZN6AriOsa16GetOsLogForGroupEj_block_invoke()
{
  v0 = 0;
  v1 = &ARIMSGDEF_GROUP_NAMES;
  do
  {
    v2 = *v1;
    if (*v1)
    {
      memset(&__p, 170, sizeof(__p));
      std::string::basic_string[abi:ne200100]<0>(&__p, "ARI");
      std::string::append(&__p, ".", 1uLL);
      v3 = strlen(v2);
      std::string::append(&__p, v2, v3);
      v4 = qword_2A1899090;
      if (qword_2A1899090 >= qword_2A1899098)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((qword_2A1899090 - qword_2A1899088) >> 3);
        v9 = v8 + 1;
        if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<char>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((qword_2A1899098 - qword_2A1899088) >> 3) > v9)
        {
          v9 = 0x5555555555555556 * ((qword_2A1899098 - qword_2A1899088) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((qword_2A1899098 - qword_2A1899088) >> 3) >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        v26.__end_cap_.__value_ = &qword_2A1899088;
        if (v10)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v10);
        }

        begin = (8 * ((qword_2A1899090 - qword_2A1899088) >> 3));
        v26.__first_ = 0;
        v26.__begin_ = begin;
        value = 0;
        v26.__end_ = begin;
        v26.__end_cap_.__value_ = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(begin, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          begin = v26.__begin_;
          end = v26.__end_;
          value = v26.__end_cap_.__value_;
        }

        else
        {
          v16 = *&__p.__r_.__value_.__l.__data_;
          *(8 * ((qword_2A1899090 - qword_2A1899088) >> 3) + 0x10) = *(&__p.__r_.__value_.__l + 2);
          *&begin->__r_.__value_.__l.__data_ = v16;
          end = (24 * v8);
        }

        v13 = &end[1];
        v18 = begin - (qword_2A1899090 - qword_2A1899088);
        memcpy(v18, qword_2A1899088, qword_2A1899090 - qword_2A1899088);
        v19 = qword_2A1899088;
        qword_2A1899088 = v18;
        qword_2A1899090 = v13;
        v20 = qword_2A1899098;
        qword_2A1899098 = value;
        v26.__end_ = v19;
        v26.__end_cap_.__value_ = v20;
        v26.__first_ = v19;
        v26.__begin_ = v19;
        std::__split_buffer<std::string>::~__split_buffer(&v26);
      }

      else
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(qword_2A1899090, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v5 = *&__p.__r_.__value_.__l.__data_;
          *(qword_2A1899090 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v4 = v5;
        }

        v13 = v4 + 24;
        qword_2A1899090 = v4 + 24;
      }

      qword_2A1899090 = v13;
      v21 = (qword_2A1899088 + v0);
      if (*(qword_2A1899088 + v0 + 23) < 0)
      {
        v21 = *v21;
      }

      v26.__first_ = os_log_create("com.apple.telephony.bb", v21);
      std::vector<os_log_s *>::push_back[abi:ne200100](&v26);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v6 = qword_2A1899090;
      if (qword_2A1899090 >= qword_2A1899098)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((qword_2A1899090 - qword_2A1899088) >> 3) + 1;
        if (v11 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<char>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((qword_2A1899098 - qword_2A1899088) >> 3) > v11)
        {
          v11 = 0x5555555555555556 * ((qword_2A1899098 - qword_2A1899088) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((qword_2A1899098 - qword_2A1899088) >> 3) >= 0x555555555555555)
        {
          v12 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v12 = v11;
        }

        v26.__end_cap_.__value_ = &qword_2A1899088;
        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v12);
        }

        v26.__first_ = 0;
        v26.__begin_ = (8 * ((qword_2A1899090 - qword_2A1899088) >> 3));
        v26.__end_ = v26.__begin_;
        v26.__end_cap_.__value_ = 0;
        std::string::basic_string[abi:ne200100]<0>(v26.__begin_->__r_.__value_.__r.__words, "");
        v7 = v26.__end_ + 1;
        v22 = v26.__begin_ - (qword_2A1899090 - qword_2A1899088);
        memcpy(v22, qword_2A1899088, qword_2A1899090 - qword_2A1899088);
        v23 = qword_2A1899088;
        qword_2A1899088 = v22;
        qword_2A1899090 = v7;
        v24 = qword_2A1899098;
        qword_2A1899098 = v26.__end_cap_.__value_;
        v26.__end_ = v23;
        v26.__end_cap_.__value_ = v24;
        v26.__first_ = v23;
        v26.__begin_ = v23;
        std::__split_buffer<std::string>::~__split_buffer(&v26);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(qword_2A1899090, "");
        v7 = (v6 + 24);
        qword_2A1899090 = v6 + 24;
      }

      qword_2A1899090 = v7;
      v26.__first_ = 0;
      std::vector<os_log_s *>::push_back[abi:ne200100](&v26);
    }

    v0 += 24;
    ++v1;
  }

  while (v0 != 1536);
}

void sub_29612C0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::__split_buffer<std::string> *a15)
{
  *(v16 + 144) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<os_log_s *>::push_back[abi:ne200100](uint64_t *a1)
{
  v1 = qword_2A18990A8;
  if (qword_2A18990A8 >= qword_2A18990B0)
  {
    v3 = qword_2A18990A0;
    v4 = qword_2A18990A8 - qword_2A18990A0;
    v5 = (qword_2A18990A8 - qword_2A18990A0) >> 3;
    v6 = v5 + 1;
    if ((v5 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v7 = qword_2A18990B0 - qword_2A18990A0;
    if ((qword_2A18990B0 - qword_2A18990A0) >> 2 > v6)
    {
      v6 = v7 >> 2;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v8 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v9 = (8 * v5);
    v10 = &v9[-((qword_2A18990A8 - qword_2A18990A0) >> 3)];
    *v9 = *a1;
    v2 = (v9 + 1);
    memcpy(v10, v3, v4);
    qword_2A18990A0 = v10;
    qword_2A18990A8 = v2;
    qword_2A18990B0 = 0;
    if (v3)
    {
      operator delete(v3);
    }
  }

  else
  {
    *qword_2A18990A8 = *a1;
    v2 = v1 + 8;
  }

  qword_2A18990A8 = v2;
}

void AriOsa::LogToDefaultStringLogger(AriOsa *this, const char *a2, const char *a3, ...)
{
  va_start(va, a3);
  v11 = *MEMORY[0x29EDCA608];
  if (DisableNewLineAppending)
  {
    v5 = 256;
  }

  else
  {
    v5 = 257;
  }

  v6 = AriOsa::MemAlloc(4, v5);
  if (v6)
  {
    v7 = v6;
    *v6 = 0;
    va_copy(v9, va);
    vsnprintf(v6, 0x100uLL, a2, va);
    if ((DisableNewLineAppending & 1) == 0)
    {
      *&v7[strlen(v7)] = 10;
    }

    if (DefaultStringLogger)
    {
      DefaultStringLogger(this, v7, v8);
    }

    else
    {
      AriOsa::Log(this, v7, v8);
    }

    free(v7);
  }

  else
  {
    v9 = 0xAAAAAAAAAAAAAAAALL;
    v10 = -1431655766;
    AriOsa::OsGetCurrentThreadName(&v9, 0xC);
    printf("%11s%s%s", &v9, "[ERROR]: ", "MemAlloc returns NULL");
  }
}

void AriOsa::OsLog(AriOsa *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1 == 32 || a1 == 16)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446466;
      v8 = a2;
      v9 = 2082;
      v10 = a3;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}s", &v7, 0x16u);
    }
  }

  else if (a1 == 8)
  {
    v5 = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446466;
      v8 = a2;
      v9 = 2082;
      v10 = a3;
      _os_log_error_impl(&dword_296048000, v5, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s", &v7, 0x16u);
    }
  }
}

void AriOsa::OsLogBuf(AriOsa *this, uint64_t a2, const char *a3, const void *a4)
{
  v4 = a4;
  v7 = this;
  v18 = *MEMORY[0x29EDCA608];
  v12 = this;
  if (std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(ARI_GMID_APPROVED_FOR_PUBLIC_LOGGING, &v12))
  {
    OsLogForGroup = AriOsa::GetOsLogForGroup(v7 >> 26);
    if (!os_log_type_enabled(OsLogForGroup, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v12 = 136446722;
    v13 = a2;
    v14 = 1040;
    v15 = v4;
    v16 = 2098;
    v17 = a3;
    v9 = "%{public}s: Bin=[%{public,libTelephonyDecoder:ARI}.*P]";
  }

  else
  {
    v12 = v7;
    v10 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(&ARI_GMID_SENSITIVE_LOGGING, &v12);
    OsLogForGroup = AriOsa::GetOsLogForGroup(v7 >> 26);
    v11 = os_log_type_enabled(OsLogForGroup, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (!v11)
      {
        return;
      }

      v12 = 136315651;
      v13 = a2;
      v14 = 1040;
      v15 = v4;
      v16 = 2101;
      v17 = a3;
      v9 = "%s: Bin=[%{sensitive,libTelephonyDecoder:ARI}.*P]";
    }

    else
    {
      if (!v11)
      {
        return;
      }

      v12 = 136315650;
      v13 = a2;
      v14 = 1040;
      v15 = v4;
      v16 = 2096;
      v17 = a3;
      v9 = "%s: Bin=[%{libTelephonyDecoder:ARI}.*P]";
    }
  }

  _os_log_impl(&dword_296048000, OsLogForGroup, OS_LOG_TYPE_DEFAULT, v9, &v12, 0x1Cu);
}

void asString(void *__return_ptr a1@<X8>, void *a2@<X0>)
{
  if (a2)
  {
    v4 = MEMORY[0x29C258340]();
    memset(__p, 170, sizeof(__p));
    std::string::basic_string[abi:ne200100]<0>(__p, v4);
    free(v4);
    if (MEMORY[0x29C2583E0](a2) == MEMORY[0x29EDCAA18])
    {
      std::operator+<char>();
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *a1 = *__p;
      a1[2] = __p[2];
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a1, "(null xpc object)");
  }
}

void sub_29612C75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void AriSdk::ARI_IBISimGetEfSmsReq_SDK::ARI_IBISimGetEfSmsReq_SDK(AriSdk::ARI_IBISimGetEfSmsReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x10878000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x10878000u, 0);
}

void AriSdk::ARI_IBISimGetEfSmsReq_SDK::ARI_IBISimGetEfSmsReq_SDK(AriSdk::ARI_IBISimGetEfSmsReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetEfSmsReq_SDK::~ARI_IBISimGetEfSmsReq_SDK(AriSdk::ARI_IBISimGetEfSmsReq_SDK *this)
{
  *this = &unk_2A1D2F678;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
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
  AriSdk::ARI_IBISimGetEfSmsReq_SDK::~ARI_IBISimGetEfSmsReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetEfSmsReq_SDK::pack(AriSdk::ARI_IBISimGetEfSmsReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISimGetEfSmsRspCb_SDK::ARI_IBISimGetEfSmsRspCb_SDK(AriSdk::ARI_IBISimGetEfSmsRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x11078000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x11078000u, 0);
}

void AriSdk::ARI_IBISimGetEfSmsRspCb_SDK::ARI_IBISimGetEfSmsRspCb_SDK(AriSdk::ARI_IBISimGetEfSmsRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetEfSmsRspCb_SDK::~ARI_IBISimGetEfSmsRspCb_SDK(AriSdk::ARI_IBISimGetEfSmsRspCb_SDK *this)
{
  *this = &unk_2A1D2F6B0;
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
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
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
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
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
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
  AriSdk::ARI_IBISimGetEfSmsRspCb_SDK::~ARI_IBISimGetEfSmsRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetEfSmsRspCb_SDK::pack(AriSdk::ARI_IBISimGetEfSmsRspCb_SDK *this, AriMsg **a2)
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
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 2uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (v12 = *(this + 15), v11 == v12) || (result = AriMsg::pack(*(this + 6), 8, v11, v12 - v11, 0), !result))
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

void sub_29612D2F4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBISimGetMsgListReq_SDK::ARI_IBISimGetMsgListReq_SDK(AriSdk::ARI_IBISimGetMsgListReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x10870000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x10870000u, 0);
}

void AriSdk::ARI_IBISimGetMsgListReq_SDK::ARI_IBISimGetMsgListReq_SDK(AriSdk::ARI_IBISimGetMsgListReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetMsgListReq_SDK::~ARI_IBISimGetMsgListReq_SDK(AriSdk::ARI_IBISimGetMsgListReq_SDK *this)
{
  *this = &unk_2A1D2F6E8;
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
  AriSdk::ARI_IBISimGetMsgListReq_SDK::~ARI_IBISimGetMsgListReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetMsgListReq_SDK::pack(AriSdk::ARI_IBISimGetMsgListReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimGetMsgListRspCb_SDK::ARI_IBISimGetMsgListRspCb_SDK(AriSdk::ARI_IBISimGetMsgListRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x11070000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x11070000u, 0);
}

void AriSdk::ARI_IBISimGetMsgListRspCb_SDK::ARI_IBISimGetMsgListRspCb_SDK(AriSdk::ARI_IBISimGetMsgListRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetMsgListRspCb_SDK::~ARI_IBISimGetMsgListRspCb_SDK(AriSdk::ARI_IBISimGetMsgListRspCb_SDK *this)
{
  *this = &unk_2A1D2F720;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C405655108DLL);
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
  AriSdk::ARI_IBISimGetMsgListRspCb_SDK::~ARI_IBISimGetMsgListRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetMsgListRspCb_SDK::pack(AriSdk::ARI_IBISimGetMsgListRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x7FCuLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISmsGetServiceStatusReq_SDK::ARI_IBISmsGetServiceStatusReq_SDK(AriSdk::ARI_IBISmsGetServiceStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x10858000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x10858000u, 0);
}

void AriSdk::ARI_IBISmsGetServiceStatusReq_SDK::ARI_IBISmsGetServiceStatusReq_SDK(AriSdk::ARI_IBISmsGetServiceStatusReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISmsGetServiceStatusReq_SDK::~ARI_IBISmsGetServiceStatusReq_SDK(AriSdk::ARI_IBISmsGetServiceStatusReq_SDK *this)
{
  *this = &unk_2A1D2F758;
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
  AriSdk::ARI_IBISmsGetServiceStatusReq_SDK::~ARI_IBISmsGetServiceStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISmsGetServiceStatusReq_SDK::pack(AriSdk::ARI_IBISmsGetServiceStatusReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISmsGetServiceStatusRspCb_SDK::ARI_IBISmsGetServiceStatusRspCb_SDK(AriSdk::ARI_IBISmsGetServiceStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x11058000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x11058000u, 0);
}

void AriSdk::ARI_IBISmsGetServiceStatusRspCb_SDK::ARI_IBISmsGetServiceStatusRspCb_SDK(AriSdk::ARI_IBISmsGetServiceStatusRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISmsGetServiceStatusRspCb_SDK::~ARI_IBISmsGetServiceStatusRspCb_SDK(AriSdk::ARI_IBISmsGetServiceStatusRspCb_SDK *this)
{
  *this = &unk_2A1D2F790;
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
  AriSdk::ARI_IBISmsGetServiceStatusRspCb_SDK::~ARI_IBISmsGetServiceStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISmsGetServiceStatusRspCb_SDK::pack(AriSdk::ARI_IBISmsGetServiceStatusRspCb_SDK *this, AriMsg **a2)
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
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimGetSmscAddressReq_SDK::ARI_IBISimGetSmscAddressReq_SDK(AriSdk::ARI_IBISimGetSmscAddressReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x10850000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x10850000u, 0);
}

void AriSdk::ARI_IBISimGetSmscAddressReq_SDK::ARI_IBISimGetSmscAddressReq_SDK(AriSdk::ARI_IBISimGetSmscAddressReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetSmscAddressReq_SDK::~ARI_IBISimGetSmscAddressReq_SDK(AriSdk::ARI_IBISimGetSmscAddressReq_SDK *this)
{
  *this = &unk_2A1D2F7C8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
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
  AriSdk::ARI_IBISimGetSmscAddressReq_SDK::~ARI_IBISimGetSmscAddressReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetSmscAddressReq_SDK::pack(AriSdk::ARI_IBISimGetSmscAddressReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISimGetSmscAddressRspCb_SDK::ARI_IBISimGetSmscAddressRspCb_SDK(AriSdk::ARI_IBISimGetSmscAddressRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x11050000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x11050000u, 0);
}

void AriSdk::ARI_IBISimGetSmscAddressRspCb_SDK::ARI_IBISimGetSmscAddressRspCb_SDK(AriSdk::ARI_IBISimGetSmscAddressRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimGetSmscAddressRspCb_SDK::~ARI_IBISimGetSmscAddressRspCb_SDK(AriSdk::ARI_IBISimGetSmscAddressRspCb_SDK *this)
{
  *this = &unk_2A1D2F800;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40837A7CCELL);
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
  AriSdk::ARI_IBISimGetSmscAddressRspCb_SDK::~ARI_IBISimGetSmscAddressRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimGetSmscAddressRspCb_SDK::pack(AriSdk::ARI_IBISimGetSmscAddressRspCb_SDK *this, AriMsg **a2)
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
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0x17uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimMsgListIndCb_SDK::ARI_IBISimMsgListIndCb_SDK(AriSdk::ARI_IBISimMsgListIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x11828000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x11828000u, 0);
}

void AriSdk::ARI_IBISimMsgListIndCb_SDK::ARI_IBISimMsgListIndCb_SDK(AriSdk::ARI_IBISimMsgListIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimMsgListIndCb_SDK::~ARI_IBISimMsgListIndCb_SDK(AriSdk::ARI_IBISimMsgListIndCb_SDK *this)
{
  *this = &unk_2A1D2F838;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
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
  AriSdk::ARI_IBISimMsgListIndCb_SDK::~ARI_IBISimMsgListIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimMsgListIndCb_SDK::pack(AriSdk::ARI_IBISimMsgListIndCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 4, v8, v9 - v8, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void sub_29612F208(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v10, v11, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

AriOsa *AriSdk::TlvArray<IBISimMsgListData,255ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x7F9uLL)
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
      v11 = (*(a2 + 1) - *a2) >> 3;
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
      v24 = 255;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 3, 255);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*__p);
    }
  }

  return a1;
}

void sub_29612F474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISimMsgWaitIndicatorIndCb_SDK::ARI_IBISimMsgWaitIndicatorIndCb_SDK(AriSdk::ARI_IBISimMsgWaitIndicatorIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x11820000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x11820000u, 0);
}

void AriSdk::ARI_IBISimMsgWaitIndicatorIndCb_SDK::ARI_IBISimMsgWaitIndicatorIndCb_SDK(AriSdk::ARI_IBISimMsgWaitIndicatorIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimMsgWaitIndicatorIndCb_SDK::~ARI_IBISimMsgWaitIndicatorIndCb_SDK(AriSdk::ARI_IBISimMsgWaitIndicatorIndCb_SDK *this)
{
  *this = &unk_2A1D2F870;
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
    MEMORY[0x29C257E70](v3, 0x1000C4005A209FELL);
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
  AriSdk::ARI_IBISimMsgWaitIndicatorIndCb_SDK::~ARI_IBISimMsgWaitIndicatorIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimMsgWaitIndicatorIndCb_SDK::pack(AriSdk::ARI_IBISimMsgWaitIndicatorIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0xCuLL, 0), !result))
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

void AriSdk::ARI_IBIMsSimSetSmsTagReq_SDK::ARI_IBIMsSimSetSmsTagReq_SDK(AriSdk::ARI_IBIMsSimSetSmsTagReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x10880000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x10880000u, 0);
}

void AriSdk::ARI_IBIMsSimSetSmsTagReq_SDK::ARI_IBIMsSimSetSmsTagReq_SDK(AriSdk::ARI_IBIMsSimSetSmsTagReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsSimSetSmsTagReq_SDK::~ARI_IBIMsSimSetSmsTagReq_SDK(AriSdk::ARI_IBIMsSimSetSmsTagReq_SDK *this)
{
  *this = &unk_2A1D2F8A8;
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
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
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
  AriSdk::ARI_IBIMsSimSetSmsTagReq_SDK::~ARI_IBIMsSimSetSmsTagReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsSimSetSmsTagReq_SDK::pack(AriSdk::ARI_IBIMsSimSetSmsTagReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
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

void AriSdk::ARI_IBISimSetSmsTagRspCb_SDK::ARI_IBISimSetSmsTagRspCb_SDK(AriSdk::ARI_IBISimSetSmsTagRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x11080000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x11080000u, 0);
}

void AriSdk::ARI_IBISimSetSmsTagRspCb_SDK::ARI_IBISimSetSmsTagRspCb_SDK(AriSdk::ARI_IBISimSetSmsTagRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimSetSmsTagRspCb_SDK::~ARI_IBISimSetSmsTagRspCb_SDK(AriSdk::ARI_IBISimSetSmsTagRspCb_SDK *this)
{
  *this = &unk_2A1D2F8E0;
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
  AriSdk::ARI_IBISimSetSmsTagRspCb_SDK::~ARI_IBISimSetSmsTagRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimSetSmsTagRspCb_SDK::pack(AriSdk::ARI_IBISimSetSmsTagRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimSetSmscAddressReq_SDK::ARI_IBISimSetSmscAddressReq_SDK(AriSdk::ARI_IBISimSetSmscAddressReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x10848000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x10848000u, 0);
}

void AriSdk::ARI_IBISimSetSmscAddressReq_SDK::ARI_IBISimSetSmscAddressReq_SDK(AriSdk::ARI_IBISimSetSmscAddressReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimSetSmscAddressReq_SDK::~ARI_IBISimSetSmscAddressReq_SDK(AriSdk::ARI_IBISimSetSmscAddressReq_SDK *this)
{
  *this = &unk_2A1D2F918;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40837A7CCELL);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
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
  AriSdk::ARI_IBISimSetSmscAddressReq_SDK::~ARI_IBISimSetSmscAddressReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimSetSmscAddressReq_SDK::pack(AriSdk::ARI_IBISimSetSmscAddressReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x17uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimSetSmscAddressRspCb_SDK::ARI_IBISimSetSmscAddressRspCb_SDK(AriSdk::ARI_IBISimSetSmscAddressRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x11048000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x11048000u, 0);
}

void AriSdk::ARI_IBISimSetSmscAddressRspCb_SDK::ARI_IBISimSetSmscAddressRspCb_SDK(AriSdk::ARI_IBISimSetSmscAddressRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimSetSmscAddressRspCb_SDK::~ARI_IBISimSetSmscAddressRspCb_SDK(AriSdk::ARI_IBISimSetSmscAddressRspCb_SDK *this)
{
  *this = &unk_2A1D2F950;
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
  AriSdk::ARI_IBISimSetSmscAddressRspCb_SDK::~ARI_IBISimSetSmscAddressRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimSetSmscAddressRspCb_SDK::pack(AriSdk::ARI_IBISimSetSmscAddressRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISimSmscAddressIndCb_SDK::ARI_IBISimSmscAddressIndCb_SDK(AriSdk::ARI_IBISimSmscAddressIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x11810000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x11810000u, 0);
}

void AriSdk::ARI_IBISimSmscAddressIndCb_SDK::ARI_IBISimSmscAddressIndCb_SDK(AriSdk::ARI_IBISimSmscAddressIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimSmscAddressIndCb_SDK::~ARI_IBISimSmscAddressIndCb_SDK(AriSdk::ARI_IBISimSmscAddressIndCb_SDK *this)
{
  *this = &unk_2A1D2F988;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40837A7CCELL);
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
  AriSdk::ARI_IBISimSmscAddressIndCb_SDK::~ARI_IBISimSmscAddressIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimSmscAddressIndCb_SDK::pack(AriSdk::ARI_IBISimSmscAddressIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x17uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISmsConfirmSmsDataDownloadAck_SDK::ARI_IBISmsConfirmSmsDataDownloadAck_SDK(AriSdk::ARI_IBISmsConfirmSmsDataDownloadAck_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x10838000u, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x10838000u, 1);
}

void AriSdk::ARI_IBISmsConfirmSmsDataDownloadAck_SDK::ARI_IBISmsConfirmSmsDataDownloadAck_SDK(AriSdk::ARI_IBISmsConfirmSmsDataDownloadAck_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISmsConfirmSmsDataDownloadAck_SDK::~ARI_IBISmsConfirmSmsDataDownloadAck_SDK(AriSdk::ARI_IBISmsConfirmSmsDataDownloadAck_SDK *this)
{
  *this = &unk_2A1D2F9C0;
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
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
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
  AriSdk::ARI_IBISmsConfirmSmsDataDownloadAck_SDK::~ARI_IBISmsConfirmSmsDataDownloadAck_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISmsConfirmSmsDataDownloadAck_SDK::pack(AriSdk::ARI_IBISmsConfirmSmsDataDownloadAck_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
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

void AriSdk::ARI_IBISmsDataDownloadReq_SDK::ARI_IBISmsDataDownloadReq_SDK(AriSdk::ARI_IBISmsDataDownloadReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x10828000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x10828000u, 0);
}

void AriSdk::ARI_IBISmsDataDownloadReq_SDK::ARI_IBISmsDataDownloadReq_SDK(AriSdk::ARI_IBISmsDataDownloadReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISmsDataDownloadReq_SDK::~ARI_IBISmsDataDownloadReq_SDK(AriSdk::ARI_IBISmsDataDownloadReq_SDK *this)
{
  *this = &unk_2A1D2F9F8;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40D5DA979FLL);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISmsDataDownloadReq_SDK::~ARI_IBISmsDataDownloadReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISmsDataDownloadReq_SDK::pack(AriSdk::ARI_IBISmsDataDownloadReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0xB1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 4uLL, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISmsDataDownloadRspCb_SDK::ARI_IBISmsDataDownloadRspCb_SDK(AriSdk::ARI_IBISmsDataDownloadRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x11028000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x11028000u, 0);
}

void AriSdk::ARI_IBISmsDataDownloadRspCb_SDK::ARI_IBISmsDataDownloadRspCb_SDK(AriSdk::ARI_IBISmsDataDownloadRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISmsDataDownloadRspCb_SDK::~ARI_IBISmsDataDownloadRspCb_SDK(AriSdk::ARI_IBISmsDataDownloadRspCb_SDK *this)
{
  *this = &unk_2A1D2FA30;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40C330D067);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
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
  AriSdk::ARI_IBISmsDataDownloadRspCb_SDK::~ARI_IBISmsDataDownloadRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISmsDataDownloadRspCb_SDK::pack(AriSdk::ARI_IBISmsDataDownloadRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0x81uLL, 0), !result))
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

void AriSdk::ARI_IBISmsGetMsgWaitIndReq_SDK::ARI_IBISmsGetMsgWaitIndReq_SDK(AriSdk::ARI_IBISmsGetMsgWaitIndReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x10860000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x10860000u, 0);
}

void AriSdk::ARI_IBISmsGetMsgWaitIndReq_SDK::ARI_IBISmsGetMsgWaitIndReq_SDK(AriSdk::ARI_IBISmsGetMsgWaitIndReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISmsGetMsgWaitIndReq_SDK::~ARI_IBISmsGetMsgWaitIndReq_SDK(AriSdk::ARI_IBISmsGetMsgWaitIndReq_SDK *this)
{
  *this = &unk_2A1D2FA68;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISmsGetMsgWaitIndReq_SDK::~ARI_IBISmsGetMsgWaitIndReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISmsGetMsgWaitIndReq_SDK::pack(AriSdk::ARI_IBISmsGetMsgWaitIndReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISmsGetMsgWaitIndRspCb_SDK::ARI_IBISmsGetMsgWaitIndRspCb_SDK(AriSdk::ARI_IBISmsGetMsgWaitIndRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x11060000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x11060000u, 0);
}

void AriSdk::ARI_IBISmsGetMsgWaitIndRspCb_SDK::ARI_IBISmsGetMsgWaitIndRspCb_SDK(AriSdk::ARI_IBISmsGetMsgWaitIndRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISmsGetMsgWaitIndRspCb_SDK::~ARI_IBISmsGetMsgWaitIndRspCb_SDK(AriSdk::ARI_IBISmsGetMsgWaitIndRspCb_SDK *this)
{
  *this = &unk_2A1D2FAA0;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4005A209FELL);
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
  AriSdk::ARI_IBISmsGetMsgWaitIndRspCb_SDK::~ARI_IBISmsGetMsgWaitIndRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISmsGetMsgWaitIndRspCb_SDK::pack(AriSdk::ARI_IBISmsGetMsgWaitIndRspCb_SDK *this, AriMsg **a2)
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
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0xCuLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISmsIncomingIndCb_SDK::ARI_IBISmsIncomingIndCb_SDK(AriSdk::ARI_IBISmsIncomingIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x11808000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x11808000u, 0);
}

void AriSdk::ARI_IBISmsIncomingIndCb_SDK::ARI_IBISmsIncomingIndCb_SDK(AriSdk::ARI_IBISmsIncomingIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISmsIncomingIndCb_SDK::~ARI_IBISmsIncomingIndCb_SDK(AriSdk::ARI_IBISmsIncomingIndCb_SDK *this)
{
  *this = &unk_2A1D2FAD8;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408757D331);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40A60B3F59);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40BDFB0063);
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
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
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
  AriSdk::ARI_IBISmsIncomingIndCb_SDK::~ARI_IBISmsIncomingIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISmsIncomingIndCb_SDK::pack(AriSdk::ARI_IBISmsIncomingIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 0xB8uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 1uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 4uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 0x104uLL, 0), !result))
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

void AriSdk::ARI_IBISmsIncomingSmsAck_SDK::ARI_IBISmsIncomingSmsAck_SDK(AriSdk::ARI_IBISmsIncomingSmsAck_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x10820000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x10820000u, 0);
}

void AriSdk::ARI_IBISmsIncomingSmsAck_SDK::ARI_IBISmsIncomingSmsAck_SDK(AriSdk::ARI_IBISmsIncomingSmsAck_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISmsIncomingSmsAck_SDK::~ARI_IBISmsIncomingSmsAck_SDK(AriSdk::ARI_IBISmsIncomingSmsAck_SDK *this)
{
  *this = &unk_2A1D2FB10;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40D5DA979FLL);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
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
  AriSdk::ARI_IBISmsIncomingSmsAck_SDK::~ARI_IBISmsIncomingSmsAck_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISmsIncomingSmsAck_SDK::pack(AriSdk::ARI_IBISmsIncomingSmsAck_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0xB1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
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

void AriSdk::ARI_IBISmsDeliverySessionStatusCb_SDK::ARI_IBISmsDeliverySessionStatusCb_SDK(AriSdk::ARI_IBISmsDeliverySessionStatusCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x11020000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x11020000u, 0);
}

void AriSdk::ARI_IBISmsDeliverySessionStatusCb_SDK::ARI_IBISmsDeliverySessionStatusCb_SDK(AriSdk::ARI_IBISmsDeliverySessionStatusCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISmsDeliverySessionStatusCb_SDK::~ARI_IBISmsDeliverySessionStatusCb_SDK(AriSdk::ARI_IBISmsDeliverySessionStatusCb_SDK *this)
{
  *this = &unk_2A1D2FB48;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
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
  AriSdk::ARI_IBISmsDeliverySessionStatusCb_SDK::~ARI_IBISmsDeliverySessionStatusCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISmsDeliverySessionStatusCb_SDK::pack(AriSdk::ARI_IBISmsDeliverySessionStatusCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
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

void AriSdk::ARI_IBISmsSendReq_V2_SDK::ARI_IBISmsSendReq_V2_SDK(AriSdk::ARI_IBISmsSendReq_V2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x10830000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x10830000u, 0);
}

void AriSdk::ARI_IBISmsSendReq_V2_SDK::ARI_IBISmsSendReq_V2_SDK(AriSdk::ARI_IBISmsSendReq_V2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISmsSendReq_V2_SDK::~ARI_IBISmsSendReq_V2_SDK(AriSdk::ARI_IBISmsSendReq_V2_SDK *this)
{
  *this = &unk_2A1D2FB80;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408757D331);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
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
    MEMORY[0x29C257E70](v9, 0x1000C40A60B3F59);
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
  AriSdk::ARI_IBISmsSendReq_V2_SDK::~ARI_IBISmsSendReq_V2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISmsSendReq_V2_SDK::pack(AriSdk::ARI_IBISmsSendReq_V2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0xB8uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 2uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 0x104uLL, 0), !result))
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

void AriSdk::ARI_IBISmsSendRspCb_V2_SDK::ARI_IBISmsSendRspCb_V2_SDK(AriSdk::ARI_IBISmsSendRspCb_V2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x11030000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x11030000u, 0);
}

void AriSdk::ARI_IBISmsSendRspCb_V2_SDK::ARI_IBISmsSendRspCb_V2_SDK(AriSdk::ARI_IBISmsSendRspCb_V2_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISmsSendRspCb_V2_SDK::~ARI_IBISmsSendRspCb_V2_SDK(AriSdk::ARI_IBISmsSendRspCb_V2_SDK *this)
{
  *this = &unk_2A1D2FBB8;
  v2 = *(this + 17);
  *(this + 17) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 13);
  *(this + 13) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 12);
  *(this + 12) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 11);
  *(this + 11) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 10);
  *(this + 10) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C40BDFB0063);
  }

  v10 = *(this + 9);
  *(this + 9) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 8);
  *(this + 8) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISmsSendRspCb_V2_SDK::~ARI_IBISmsSendRspCb_V2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISmsSendRspCb_V2_SDK::pack(AriSdk::ARI_IBISmsSendRspCb_V2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 14, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 15, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 16, v12, 4uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 17, v13, 4uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 18, v14, 2uLL, 0), !result))
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

  return result;
}

void AriSdk::ARI_IBISmsServiceIndCb_SDK::ARI_IBISmsServiceIndCb_SDK(AriSdk::ARI_IBISmsServiceIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x11818000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x11818000u, 0);
}

void AriSdk::ARI_IBISmsServiceIndCb_SDK::ARI_IBISmsServiceIndCb_SDK(AriSdk::ARI_IBISmsServiceIndCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISmsServiceIndCb_SDK::~ARI_IBISmsServiceIndCb_SDK(AriSdk::ARI_IBISmsServiceIndCb_SDK *this)
{
  *this = &unk_2A1D2FBF0;
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
  AriSdk::ARI_IBISmsServiceIndCb_SDK::~ARI_IBISmsServiceIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISmsServiceIndCb_SDK::pack(AriSdk::ARI_IBISmsServiceIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISmsSetMsgWaitIndReq_SDK::ARI_IBISmsSetMsgWaitIndReq_SDK(AriSdk::ARI_IBISmsSetMsgWaitIndReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x10868000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x10868000u, 0);
}

void AriSdk::ARI_IBISmsSetMsgWaitIndReq_SDK::ARI_IBISmsSetMsgWaitIndReq_SDK(AriSdk::ARI_IBISmsSetMsgWaitIndReq_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISmsSetMsgWaitIndReq_SDK::~ARI_IBISmsSetMsgWaitIndReq_SDK(AriSdk::ARI_IBISmsSetMsgWaitIndReq_SDK *this)
{
  *this = &unk_2A1D2FC28;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4005A209FELL);
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
  AriSdk::ARI_IBISmsSetMsgWaitIndReq_SDK::~ARI_IBISmsSetMsgWaitIndReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISmsSetMsgWaitIndReq_SDK::pack(AriSdk::ARI_IBISmsSetMsgWaitIndReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0xCuLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISmsSetMsgWaitIndRspCb_SDK::ARI_IBISmsSetMsgWaitIndRspCb_SDK(AriSdk::ARI_IBISmsSetMsgWaitIndRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x11068000u, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x11068000u, 0);
}

void AriSdk::ARI_IBISmsSetMsgWaitIndRspCb_SDK::ARI_IBISmsSetMsgWaitIndRspCb_SDK(AriSdk::ARI_IBISmsSetMsgWaitIndRspCb_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISmsSetMsgWaitIndRspCb_SDK::~ARI_IBISmsSetMsgWaitIndRspCb_SDK(AriSdk::ARI_IBISmsSetMsgWaitIndRspCb_SDK *this)
{
  *this = &unk_2A1D2FC60;
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
  AriSdk::ARI_IBISmsSetMsgWaitIndRspCb_SDK::~ARI_IBISmsSetMsgWaitIndRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISmsSetMsgWaitIndRspCb_SDK::pack(AriSdk::ARI_IBISmsSetMsgWaitIndRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISmsSetSendMoreMessagesStatus_SDK::ARI_IBISmsSetSendMoreMessagesStatus_SDK(AriSdk::ARI_IBISmsSetSendMoreMessagesStatus_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 0x10840000u, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 0x10840000u, 1);
}

void AriSdk::ARI_IBISmsSetSendMoreMessagesStatus_SDK::ARI_IBISmsSetSendMoreMessagesStatus_SDK(AriSdk::ARI_IBISmsSetSendMoreMessagesStatus_SDK *this, AriMsg *a2, unsigned int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISmsSetSendMoreMessagesStatus_SDK::~ARI_IBISmsSetSendMoreMessagesStatus_SDK(AriSdk::ARI_IBISmsSetSendMoreMessagesStatus_SDK *this)
{
  *this = &unk_2A1D2FC98;
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
  AriSdk::ARI_IBISmsSetSendMoreMessagesStatus_SDK::~ARI_IBISmsSetSendMoreMessagesStatus_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISmsSetSendMoreMessagesStatus_SDK::pack(AriSdk::ARI_IBISmsSetSendMoreMessagesStatus_SDK *this, AriMsg **a2)
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

void std::vector<IBISimMsgListData>::__init_with_size[abi:ne200100]<IBISimMsgListData*,IBISimMsgListData*>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_296136210(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ari::LogConfig(uint64_t result, uint64_t (*a2)(AriOsa *__hidden this, unsigned int, const char *), void *a3)
{
  DefaultTransportTrafficLogger = a3;
  DefaultLogLevel = result;
  if (a2)
  {
    DefaultStringLogger = a2;
  }

  return result;
}

uint64_t Ari::LogConfig(uint64_t this, uint64_t (*a2)(AriOsa *__hidden this, unsigned int, const char *), void (*a3)(unsigned int, const char *))
{
  DefaultLogLevel = this;
  if (a2)
  {
    DefaultStringLogger = a2;
  }

  return this;
}

void Ari::Log(Ari *this, const char *a2, const char *a3, ...)
{
  va_start(va, a3);
  v11 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & this) != 0)
  {
    if (DisableNewLineAppending)
    {
      v5 = 256;
    }

    else
    {
      v5 = 257;
    }

    v6 = AriOsa::MemAlloc(4, v5);
    if (v6)
    {
      v7 = v6;
      *v6 = 0;
      va_copy(v9, va);
      vsnprintf(v6, 0x100uLL, a2, va);
      if ((DisableNewLineAppending & 1) == 0)
      {
        *&v7[strlen(v7)] = 10;
      }

      if (DefaultStringLogger)
      {
        DefaultStringLogger(this, v7, v8);
      }

      else
      {
        AriOsa::Log(this, v7, v8);
      }

      AriOsa::OsLog(this, "ari", v7);
      free(v7);
    }

    else
    {
      v9 = 0xAAAAAAAAAAAAAAAALL;
      v10 = -1431655766;
      AriOsa::OsGetCurrentThreadName(&v9, 0xC);
      printf("%11s%s%s", &v9, "[ERROR]: ", "MemAlloc returns NULL");
    }
  }
}

void Ari::LogBuf(Ari *this, const char *a2, const char *a3, unsigned __int8 *a4, char *a5, unsigned int a6)
{
  v20 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 0x40) != 0)
  {
    v9 = a3;
    v12 = AriOsa::MemAlloc(4, 0x140uLL);
    if (v12)
    {
      v13 = v12;
      *v12 = 0;
      snprintf(v12, 0x100uLL, "[BUFF ]: (%s:%d) @%p %s[%zu] = {", a2, v9, a4, this, a5);
      if (a5)
      {
        v14 = 0;
        v15 = 0;
        while (1)
        {
          if ((v14 & 0xF) == 0)
          {
            strlcat(v13, "\n", 0x100uLL);
            Ari::Log(0x40, "%s", v16, v13);
            *v13 = 0;
          }

          snprintf(v13 + 256, 0x40uLL, " 0X%02X", a4[v14]);
          strlcat(v13, v13 + 256, 0x100uLL);
          if (v14 >= a6 && !v15)
          {
            snprintf(v13 + 256, 0x40uLL, ", ... skipping after (%d) to last a few ... ", a6);
            strlcat(v13, v13 + 256, 0x100uLL);
            v15 = 1;
            v14 = &a5[(a5 & 0xF) - 17];
          }

          if (++v14 >= a5)
          {
            break;
          }

          strlcat(v13, ",", 0x100uLL);
        }
      }

      *(v13 + 64) = 670589;
      strlcat(v13, v13 + 256, 0x100uLL);
      Ari::Log(0x40, "%s", v17, v13);

      free(v13);
    }

    else
    {
      v18 = 0xAAAAAAAAAAAAAAAALL;
      v19 = -1431655766;
      AriOsa::OsGetCurrentThreadName(&v18, 0xC);
      printf("%11s%s%s", &v18, "[ERROR]: ", "MemAlloc returns NULL");
    }
  }
}

void Ari::LogBuf(Ari *this, const char *a2, unsigned __int8 *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 0x100) != 0)
  {
    v6 = AriOsa::MemAlloc(4, 0x140uLL);
    if (v6)
    {
      v7 = v6;
      *v6 = 0;
      snprintf(v6, 0x100uLL, "[BUFF ]: %s[%zu] = {", this, a3);
      if (a3)
      {
        v8 = 0;
        do
        {
          if ((v8 & 0xF) == 0)
          {
            strlcat(v7, "\n", 0x100uLL);
            Ari::Log(0x100, "%s", v9, v7);
            *v7 = 0;
          }

          snprintf(v7 + 256, 0x40uLL, " 0X%02X", v8[a2]);
          strlcat(v7, v7 + 256, 0x100uLL);
          if (++v8 < a3)
          {
            strlcat(v7, ",", 0x100uLL);
          }
        }

        while (a3 != v8);
      }

      *(v7 + 64) = 670589;
      strlcat(v7, v7 + 256, 0x100uLL);
      Ari::Log(0x100, "%s", v10, v7);

      free(v7);
    }

    else
    {
      v11 = 0xAAAAAAAAAAAAAAAALL;
      v12 = -1431655766;
      AriOsa::OsGetCurrentThreadName(&v11, 0xC);
      printf("%11s%s%s", &v11, "[ERROR]: ", "MemAlloc returns NULL");
    }
  }
}

void Ari::LogTransportBuf(uint64_t a1, AriOsa *a2, AriMsg *a3, const void *a4)
{
  v8 = a4;
  BufMsgDir = AriMsg::GetBufMsgDir(a3, a4, a3);
  if (BufMsgDir > 2)
  {
    v10 = "unknown";
  }

  else
  {
    v10 = off_29EE083C8[BufMsgDir];
  }

  AriOsa::OsLogBuf(a2, v10, a3, a4);
  v12 = DefaultTransportTrafficLogger;
  if (DefaultTransportTrafficLogger)
  {
    v13 = AriMsg::GetBufMsgDir(a3, v8, v11);
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
    }

    else
    {
      __p = *a1;
    }

    v12(v13, &__p, a2, a3, a4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_296136FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriMsg::GetBufMsgDir(AriMsg *this, const unsigned __int8 *a2, unint64_t a3)
{
  BufHeader = AriMsg::GetBufHeader(this, a2);
  if (BufHeader)
  {
    v6 = *(BufHeader + 2) >> 6;
    if (v6 >= 0x100)
    {
      return (v6 >> 8) - 1;
    }
  }

  v7 = AriMsg::GetBufHeader(this, a2);
  if (v7)
  {
    v8 = (*v7 >> 9) & 0xFC000000;
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v10 = AriMsg::GetBufHeader(this, a2);
  if (v10)
  {
    v11 = (*(v10 + 2) << 9) & 0x1FF8000;
  }

  else
  {
    v11 = 0;
  }

  result = 0;
  v12 = v11 | v8;
  if (v12 <= 67698687)
  {
    if (v12 > 67600383)
    {
      if (v12 != 67600384)
      {
        v13 = 67665920;
        goto LABEL_25;
      }
    }

    else if (v12 != 67436544)
    {
      if (v12 == 67469312)
      {
        return 2;
      }

      return 0xFFFFFFFFLL;
    }

    return 1;
  }

  if (v12 <= 68190207)
  {
    if (v12 == 67698688)
    {
      return result;
    }

    v13 = 67731456;
LABEL_25:
    if (v12 == v13)
    {
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (v12 == 68190208 || v12 == 68255744 || v12 == 68222976)
  {
    return 1;
  }

  return 0xFFFFFFFFLL;
}

void AriMsg::AriMsg(AriMsg *this, unsigned int a2, unsigned int a3)
{
  v26 = *MEMORY[0x29EDCA608];
  *(this + 7) = 0;
  *(this + 8) = 0xFFFFFFFF00008000;
  v4 = (a2 >> 26);
  v5 = (a2 >> 15) & 0x3FF;
  v6 = Ari::MsgDefById(v4, (a2 >> 15) & 0x3FF);
  if (v6 && *(v6 + 4))
  {
    v7 = 0;
    v8 = *v6;
    v9 = *(v6 + 16);
    v10 = *(v6 + 32);
    *(this + 6) = *(v6 + 48);
    *(this + 1) = v9;
    *(this + 2) = v10;
    *this = v8;
  }

  else
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(v6);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v15, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
        v14 = v16 >= 0 ? v15 : v15[0];
        *__p = 136316162;
        *&__p[4] = "ari";
        v18 = 2080;
        v19 = v14;
        v20 = 1024;
        v21 = 238;
        v22 = 1024;
        v23 = v4;
        v24 = 1024;
        v25 = v5;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) AriMsg(id) INVALID input gid(%d) mid((%03x)", __p, 0x28u);
        if (v16 < 0)
        {
          operator delete(v15[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
      if (v20 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) AriMsg(id) INVALID input gid(%d) mid((%03x)", v12, v13, 238, v4, v5);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(*__p);
      }
    }

    *(this + 6) = 0;
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *this = 0u;
    v7 = -71;
  }

  *(this + 17) = v7;
}

void sub_296137344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ari::MsgDefById(Ari *this, int a2)
{
  if ((this - 64) < 0xFFFFFFC1)
  {
    return 0;
  }

  result = ARIMSGDEF_GROUPS[this];
  if (result)
  {
    v3 = *(result + 4);
    if (!v3)
    {
      return 0;
    }

    while (v3 != a2)
    {
      v3 = *(result + 60);
      result += 56;
      if (!v3)
      {
        return 0;
      }
    }
  }

  return result;
}

void AriMsg::AriMsg(AriMsg *this, const unsigned __int8 *a2, uint64_t a3)
{
  v121 = *MEMORY[0x29EDCA608];
  *(this + 7) = 0;
  v6 = (this + 56);
  *(this + 8) = 0xFFFFFFFF00008000;
  if ((DefaultLogLevel & 4) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
      v77 = v109 >= 0 ? __p : __p[0];
      *buf = 136316162;
      *&buf[4] = "ari";
      v111 = 2080;
      v112 = v77;
      v113 = 1024;
      v114 = 268;
      v115 = 2048;
      *v116 = a2;
      *&v116[8] = 2048;
      *&v116[10] = this;
      _os_log_debug_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Extract msg from (msgBuf=%p) on obj(%p)", buf, 0x30u);
      if (v109 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
    if (v113 >= 0)
    {
      v9 = buf;
    }

    else
    {
      v9 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Extract msg from (msgBuf=%p) on obj(%p)", v8, v9, 268, a2, this);
    if (SHIBYTE(v113) < 0)
    {
      operator delete(*buf);
    }
  }

  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (!a2 || a3 <= 0xB)
  {
    if ((DefaultLogLevel & 8) == 0)
    {
      goto LABEL_27;
    }

    v15 = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
      v81 = v109 >= 0 ? __p : __p[0];
      *buf = 136316162;
      *&buf[4] = "ari";
      v111 = 2080;
      v112 = v81;
      v113 = 1024;
      v114 = 276;
      v115 = 2048;
      *v116 = a2;
      *&v116[8] = 1024;
      *&v116[10] = a3;
      _os_log_error_impl(&dword_296048000, v15, OS_LOG_TYPE_ERROR, "%s: (%s:%d) INVALID msgBuf (%p) or validSz(%d) is smaller than header", buf, 0x2Cu);
      if (v109 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
    if (v113 >= 0)
    {
      v17 = buf;
    }

    else
    {
      v17 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) INVALID msgBuf (%p) or validSz(%d) is smaller than header", v16, v17, 276, a2, a3);
    goto LABEL_25;
  }

  v10 = *a2 >> 49;
  if (*a2 != -1417756450 || v10 + 12 > a3)
  {
    if ((DefaultLogLevel & 8) == 0)
    {
      goto LABEL_27;
    }

    v11 = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
      if (v109 >= 0)
      {
        v82 = __p;
      }

      else
      {
        v82 = __p[0];
      }

      v83 = *a2;
      v12 = v10 + 12;
      *buf = 136316674;
      *&buf[4] = "ari";
      v111 = 2080;
      v112 = v82;
      v113 = 1024;
      v114 = 286;
      v115 = 2048;
      *v116 = a2;
      *&v116[8] = 1024;
      *&v116[10] = v83;
      *&v116[14] = 1024;
      *&v116[16] = a3;
      *&v116[20] = 2048;
      *v117 = v10 + 12;
      _os_log_error_impl(&dword_296048000, v11, OS_LOG_TYPE_ERROR, "%s: (%s:%d) msgBuf (%p) with invalid magic (0X%X) or an incomplete msg got(%d) exp(%zu)", buf, 0x3Cu);
      if (v109 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v12 = v10 + 12;
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
    if (v113 >= 0)
    {
      v14 = buf;
    }

    else
    {
      v14 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) msgBuf (%p) with invalid magic (0X%X) or an incomplete msg got(%d) exp(%zu)", v13, v14, 286, a2, *a2, a3, v12);
LABEL_25:
    if (SHIBYTE(v113) < 0)
    {
      operator delete(*buf);
    }

    goto LABEL_27;
  }

  v19 = Ari::MsgDefById(((*a2 >> 35) & 0x3FLL), *(a2 + 2) >> 6);
  if (!v19)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v32 = AriOsa::GetOsLog(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
        v88 = v109 >= 0 ? __p : __p[0];
        *buf = 136315906;
        *&buf[4] = "ari";
        v111 = 2080;
        v112 = v88;
        v113 = 1024;
        v114 = 294;
        v115 = 2048;
        *v116 = a2;
        _os_log_error_impl(&dword_296048000, v32, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Id from AriMsg header in buffer @(%p) not found in SDK", buf, 0x26u);
        if (v109 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
      if (v113 >= 0)
      {
        v34 = buf;
      }

      else
      {
        v34 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Id from AriMsg header in buffer @(%p) not found in SDK", v33, v34, 294, a2);
      if (SHIBYTE(v113) < 0)
      {
        operator delete(*buf);
      }
    }

    v18 = -71;
    goto LABEL_28;
  }

  v20 = *v19;
  v21 = *(v19 + 16);
  v22 = *(v19 + 32);
  v107 = v19;
  *(this + 6) = *(v19 + 48);
  *(this + 1) = v21;
  *(this + 2) = v22;
  *this = v20;
  *(this + 16) = *(a2 + 2) >> 17;
  if ((DefaultLogLevel & 4) != 0)
  {
    v23 = AriOsa::GetOsLog(v19);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
      v84 = v109 >= 0 ? __p : __p[0];
      v85 = *(v107 + 48);
      v86 = (*a2 >> 35) & 0x3FLL;
      v87 = *(a2 + 2);
      *buf = 136317186;
      *&buf[4] = "ari";
      v111 = 2080;
      v112 = v84;
      v113 = 1024;
      v114 = 311;
      v115 = 2080;
      *v116 = v85;
      *&v116[8] = 1024;
      *&v116[10] = v86;
      *&v116[14] = 1024;
      *&v116[16] = v87 >> 6;
      *&v116[20] = 2048;
      *v117 = v10 + 12;
      *&v117[8] = 2048;
      v118 = a2;
      v119 = 1024;
      v120 = v87 >> 17;
      _os_log_debug_impl(&dword_296048000, v23, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Decode  %s(%d-0x%03x) len(%zu) buf(%p) trx(0x%08x)", buf, 0x4Cu);
      if (v109 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
    if (v113 >= 0)
    {
      v25 = buf;
    }

    else
    {
      v25 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Decode  %s(%d-0x%03x) len(%zu) buf(%p) trx(0x%08x)", v24, v25, 311, *(v107 + 48), (*a2 >> 35) & 0x3FLL, *(a2 + 2) >> 6, v10 + 12, a2, *(a2 + 2) >> 17);
    if (SHIBYTE(v113) < 0)
    {
      operator delete(*buf);
    }
  }

  if (!v10)
  {
LABEL_38:
    v26 = *(v107 + 16);
    if (v26 && (v27 = *v26) != 0)
    {
      v28 = *v6;
      v29 = *(v107 + 16);
      while (1)
      {
        v30 = *v6;
        if (!v28)
        {
          break;
        }

        while (*v30 != v27)
        {
          v30 = *(v30 + 6);
          if (!v30)
          {
            v26 = v29;
            goto LABEL_119;
          }
        }

        v18 = 0;
        v31 = v29[1];
        ++v29;
        v27 = v31;
        if (!v31)
        {
          goto LABEL_28;
        }
      }

LABEL_119:
      if ((DefaultLogLevel & 8) != 0)
      {
        v78 = AriOsa::GetOsLog(v28);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
          v89 = v109 >= 0 ? __p : __p[0];
          v90 = *v26;
          v91 = *(v107 + 48);
          *buf = 136316162;
          *&buf[4] = "ari";
          v111 = 2080;
          v112 = v89;
          v113 = 1024;
          v114 = 451;
          v115 = 1024;
          *v116 = v90;
          *&v116[4] = 2080;
          *&v116[6] = v91;
          _os_log_error_impl(&dword_296048000, v78, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Mandatory TLV id(%d) not present for msg (%s). Mark this msg invalid", buf, 0x2Cu);
          if (v109 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
        if (v113 >= 0)
        {
          v80 = buf;
        }

        else
        {
          v80 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Mandatory TLV id(%d) not present for msg (%s). Mark this msg invalid", v79, v80, 451, *v26, *(v107 + 48));
        if (SHIBYTE(v113) < 0)
        {
          operator delete(*buf);
        }

        v28 = *v6;
      }

      *(this + 6) = 0;
      *(this + 1) = 0u;
      *(this + 2) = 0u;
      *this = 0u;
      AriMsg::FreeTlvList(v28);
      *(this + 7) = 0;
      v18 = -81;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_28;
  }

  v104 = 0;
  v35 = a2 + 12;
  while (1)
  {
    v36 = v35;
    while (1)
    {
      v37 = *v36;
      v38 = Ari::TlvDefById(*this, *(this + 1), (v37 >> 1) & 0xFFF, 0);
      v39 = v38;
      v40 = v37 >> 18;
      if (v38)
      {
        break;
      }

      if ((DefaultLogLevel & 4) != 0)
      {
        v41 = AriOsa::GetOsLog(0);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
          v45 = __p;
          if (v109 < 0)
          {
            v45 = __p[0];
          }

          v46 = (*a2 >> 35) & 0x3FLL;
          v47 = *(a2 + 2) >> 6;
          v48 = (*v36 >> 1) & 0xFFF;
          *buf = 136316418;
          *&buf[4] = "ari";
          v111 = 2080;
          v112 = v45;
          v113 = 1024;
          v114 = 332;
          v115 = 1024;
          *v116 = v46;
          *&v116[4] = 1024;
          *&v116[6] = v47;
          *&v116[10] = 1024;
          *&v116[12] = v48;
          _os_log_debug_impl(&dword_296048000, v41, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) UNKNOWN tlv with g(%d) m(0x%03x) tid(%d), ignored", buf, 0x2Eu);
          if (v109 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
        v43 = buf;
        if (v113 < 0)
        {
          v43 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(4, "(%s:%d) UNKNOWN tlv with g(%d) m(0x%03x) tid(%d), ignored", v42, v43, 332, (*a2 >> 35) & 0x3FLL, *(a2 + 2) >> 6, (*v36 >> 1) & 0xFFF);
        if (SHIBYTE(v113) < 0)
        {
          operator delete(*buf);
        }
      }

      v36 += v40 + 4;
      v44 = __OFSUB__(v10, v40 + 4);
      LODWORD(v10) = v10 - (v40 + 4);
      if ((v10 < 0) ^ v44 | (v10 == 0))
      {
        goto LABEL_38;
      }
    }

    v49 = *(*(v38 + 2) + 8) * *(*(v38 + 2) + 32);
    log = v40;
    if (v49 < v40)
    {
      if ((DefaultLogLevel & 0x10) != 0)
      {
        v50 = AriOsa::GetOsLog(v38);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
          v51 = __p;
          if (v109 < 0)
          {
            v51 = __p[0];
          }

          v52 = (*a2 >> 35) & 0x3FLL;
          v53 = *(a2 + 2) >> 6;
          v54 = (*v36 >> 1) & 0xFFF;
          *buf = 136316930;
          *&buf[4] = "ari";
          v111 = 2080;
          v112 = v51;
          v113 = 1024;
          v114 = 348;
          v115 = 1024;
          *v116 = v52;
          *&v116[4] = 1024;
          *&v116[6] = v53;
          *&v116[10] = 1024;
          *&v116[12] = v54;
          *&v116[16] = 1024;
          *&v116[18] = v40;
          *v117 = 2048;
          *&v117[2] = v49;
          _os_log_impl(&dword_296048000, v50, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Received tlv with g(%d) m(0x%03x) tid(%d) len(%d) > exp(%zu), ignored", buf, 0x3Eu);
          if (v109 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
        v56 = buf;
        if (v113 < 0)
        {
          v56 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Received tlv with g(%d) m(0x%03x) tid(%d) len(%d) > exp(%zu), ignored", v55, v56, 348, (*a2 >> 35) & 0x3FLL, *(a2 + 2) >> 6, (*v36 >> 1) & 0xFFF, v40, v49);
LABEL_98:
        if (SHIBYTE(v113) < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_100;
      }

      goto LABEL_100;
    }

    if (*v36 >> 13 != (v38[1] & 7))
    {
      if ((DefaultLogLevel & 0x10) != 0)
      {
        v62 = AriOsa::GetOsLog(v38);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
          v63 = __p;
          if (v109 < 0)
          {
            v63 = __p[0];
          }

          v64 = (*a2 >> 35) & 0x3FLL;
          v65 = *(a2 + 2) >> 6;
          v66 = (*v36 >> 1) & 0xFFF;
          v67 = *v36 >> 13;
          v68 = *(v39 + 4);
          *buf = 136316930;
          *&buf[4] = "ari";
          v111 = 2080;
          v112 = v63;
          v113 = 1024;
          v114 = 364;
          v115 = 1024;
          *v116 = v64;
          *&v116[4] = 1024;
          *&v116[6] = v65;
          *&v116[10] = 1024;
          *&v116[12] = v66;
          *&v116[16] = 1024;
          *&v116[18] = v67;
          *v117 = 1024;
          *&v117[2] = v68;
          _os_log_impl(&dword_296048000, v62, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Version mistmach for tlv with g(%d) m(0x%03x) tid(%d), got(%d) expecting(%d), ignored", buf, 0x3Au);
          if (v109 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
        v70 = buf;
        if (v113 < 0)
        {
          v70 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Version mistmach for tlv with g(%d) m(0x%03x) tid(%d), got(%d) expecting(%d), ignored", v69, v70, 364, (*a2 >> 35) & 0x3FLL, *(a2 + 2) >> 6, (*v36 >> 1) & 0xFFF, *v36 >> 13, *(v39 + 4));
        goto LABEL_98;
      }

LABEL_100:
      v61 = v40 + 4;
      v35 = &log->isa + v36 + 4;
      goto LABEL_101;
    }

    v103 = v40 + 4;
    if (v103 > v10)
    {
      break;
    }

    v57 = AriOsa::MemAlloc(2, 0x40uLL);
    v58 = v57;
    if (!v57)
    {
      if ((DefaultLogLevel & 8) != 0)
      {
        v95 = AriOsa::GetOsLog(0);
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
          v102 = v109 >= 0 ? __p : __p[0];
          *buf = 136315650;
          *&buf[4] = "ari";
          v111 = 2080;
          v112 = v102;
          v113 = 1024;
          v114 = 391;
          _os_log_error_impl(&dword_296048000, v95, OS_LOG_TYPE_ERROR, "%s: (%s:%d) MemAlloc failed for TLV", buf, 0x1Cu);
          if (v109 < 0)
          {
            operator delete(__p[0]);
          }
        }

        AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
        if (v113 >= 0)
        {
          v97 = buf;
        }

        else
        {
          v97 = *buf;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) MemAlloc failed for TLV", v96, v97, 391);
        if (SHIBYTE(v113) < 0)
        {
          operator delete(*buf);
        }
      }

      *(this + 6) = 0;
      *(this + 1) = 0u;
      *(this + 2) = 0u;
      *this = 0u;
      AriMsg::FreeTlvList(*(this + 7));
      *(this + 7) = 0;
      v18 = -82;
      goto LABEL_28;
    }

    v57[2] = 0u;
    v57[3] = 0u;
    *v57 = 0u;
    v57[1] = 0u;
    v59 = *(v39 + 1);
    *v57 = *v39;
    v57[1] = v59;
    v60 = (v104 + 3);
    if (!v104)
    {
      v60 = v6;
    }

    *v60 = v57;
    *(v57 + 4) = v40;
    *(v57 + 5) = v36 + 4;
    v35 = &v36[v103];
    if ((DefaultLogLevel & 4) != 0)
    {
      loga = AriOsa::GetOsLog(v57);
      if (os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG))
      {
        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
        v73 = __p;
        if (v109 < 0)
        {
          v73 = __p[0];
        }

        v74 = *(v39 + 3);
        v75 = (*v36 >> 1) & 0xFFF;
        v76 = *v36 >> 13;
        *buf = 136316674;
        *&buf[4] = "ari";
        v111 = 2080;
        v112 = v73;
        v113 = 1024;
        v114 = 427;
        v115 = 2080;
        *v116 = v74;
        *&v116[8] = 1024;
        *&v116[10] = v75;
        *&v116[14] = 1024;
        *&v116[16] = v40;
        *&v116[20] = 1024;
        *v117 = v76;
        _os_log_debug_impl(&dword_296048000, loga, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Extracted tlv %s(%d) len(%d) v(%d)", buf, 0x38u);
        if (v109 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
      v72 = buf;
      if (v113 < 0)
      {
        v72 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Extracted tlv %s(%d) len(%d) v(%d)", v71, v72, 427, *(v39 + 3), (*v36 >> 1) & 0xFFF, v40, *v36 >> 13);
      v61 = v103;
      if (SHIBYTE(v113) < 0)
      {
        operator delete(*buf);
      }

      v104 = v58;
    }

    else
    {
      v104 = v57;
      v61 = v103;
    }

LABEL_101:
    v44 = __OFSUB__(v10, v61);
    LODWORD(v10) = v10 - v61;
    if ((v10 < 0) ^ v44 | (v10 == 0))
    {
      goto LABEL_38;
    }
  }

  if ((DefaultLogLevel & 8) != 0)
  {
    v92 = AriOsa::GetOsLog(v38);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
      v98 = v109 >= 0 ? __p : __p[0];
      v99 = (*a2 >> 35) & 0x3FLL;
      v100 = *(a2 + 2) >> 6;
      v101 = (*v36 >> 1) & 0xFFF;
      *buf = 136316674;
      *&buf[4] = "ari";
      v111 = 2080;
      v112 = v98;
      v113 = 1024;
      v114 = 378;
      v115 = 1024;
      *v116 = v99;
      *&v116[4] = 1024;
      *&v116[6] = v100;
      *&v116[10] = 1024;
      *&v116[12] = v101;
      *&v116[16] = 1024;
      *&v116[18] = v40;
      _os_log_error_impl(&dword_296048000, v92, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Tlv with g(%d) m(0x%03x) tid(%d) has len(%d) beyond end of msgBuf, message dropped", buf, 0x34u);
      if (v109 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo(buf, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "AriMsg");
    if (v113 >= 0)
    {
      v94 = buf;
    }

    else
    {
      v94 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Tlv with g(%d) m(0x%03x) tid(%d) has len(%d) beyond end of msgBuf, message dropped", v93, v94, 378, (*a2 >> 35) & 0x3FLL, *(a2 + 2) >> 6, (*v36 >> 1) & 0xFFF, v40);
    if (SHIBYTE(v113) < 0)
    {
      operator delete(*buf);
    }
  }

  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  AriMsg::FreeTlvList(*(this + 7));
  *(this + 7) = 0;
LABEL_27:
  v18 = -74;
LABEL_28:
  *(this + 17) = v18;
}

void sub_2961385E0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  _Unwind_Resume(exception_object);
}

int *Ari::TlvDefById(Ari *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x29EDCA608];
  result = Ari::MsgDefById(this, a2);
  if (result)
  {
    result = *(result + 3);
    if (result)
    {
      v9 = *result;
      if (!*result)
      {
LABEL_6:
        if ((DefaultLogLevel & 4) == 0)
        {
          return 0;
        }

        OsLog = AriOsa::GetOsLog(result);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEBUG))
        {
          AriOsa::LogSrcInfo(v20, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "TlvDefById");
          v19 = v21 >= 0 ? v20 : v20[0];
          *__p = 136316418;
          *&__p[4] = "ari";
          v23 = 2080;
          v24 = v19;
          v25 = 1024;
          v26 = 1270;
          v27 = 1024;
          v28 = a3;
          v29 = 1024;
          v30 = this;
          v31 = 1024;
          v32 = a2;
          _os_log_debug_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) tid(%d) not found under gid(%d) mid(0x%03x)", __p, 0x2Eu);
          if (v21 < 0)
          {
            operator delete(v20[0]);
          }
        }

        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "TlvDefById");
        if (v25 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = *__p;
        }

        AriOsa::LogToDefaultStringLogger(4, "(%s:%d) tid(%d) not found under gid(%d) mid(0x%03x)", v12, v13, 1270, a3, this, a2);
LABEL_12:
        if (SHIBYTE(v25) < 0)
        {
          operator delete(*__p);
        }

        return 0;
      }

      while (v9 != a3)
      {
        v10 = result[8];
        result += 8;
        v9 = v10;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      if (a4)
      {
        v14 = **(result + 2) * *(*(result + 2) + 32);
        if (v14 != a4)
        {
          if ((DefaultLogLevel & 0x10) == 0)
          {
            return 0;
          }

          v15 = AriOsa::GetOsLog(result);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            AriOsa::LogSrcInfo(v20, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "TlvDefById");
            v16 = v21 >= 0 ? v20 : v20[0];
            *__p = 136316930;
            *&__p[4] = "ari";
            v23 = 2080;
            v24 = v16;
            v25 = 1024;
            v26 = 1263;
            v27 = 1024;
            v28 = a3;
            v29 = 1024;
            v30 = this;
            v31 = 1024;
            v32 = a2;
            v33 = 2048;
            v34 = a4;
            v35 = 2048;
            v36 = v14;
            _os_log_impl(&dword_296048000, v15, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Found tid(%d) under gid(%d) mid(0x%03x) wrong sz(%zu) exp (%zu)", __p, 0x42u);
            if (v21 < 0)
            {
              operator delete(v20[0]);
            }
          }

          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "TlvDefById");
          if (v25 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = *__p;
          }

          AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Found tid(%d) under gid(%d) mid(0x%03x) wrong sz(%zu) exp (%zu)", v17, v18, 1263, a3, this, a2, a4, v14);
          goto LABEL_12;
        }
      }
    }
  }

  return result;
}

void sub_296138954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriMsg::FreeTlvList(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = v1;
      v1 = v1[6];
      if (*(v2 + 56) == 1)
      {
        v3 = v2[5];
        if (v3)
        {
          free(v3);
        }
      }

      free(v2);
    }

    while (v1);
  }
}

uint64_t AriMsg::isValid(AriMsg *this, int a2)
{
  result = *(this + 17);
  if (!result)
  {
    if (((*(this + 1) << 15) | (*this << 26)) == a2)
    {
      return 0;
    }

    else
    {
      return 4294967223;
    }
  }

  return result;
}

uint64_t AriMsg::getGmid(AriMsg *this)
{
  if (*(this + 17))
  {
    return 0;
  }

  else
  {
    return ((*(this + 1) << 15) | (*this << 26));
  }
}

void AriMsg::~AriMsg(AriMsg *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  AriMsg::FreeTlvList(*(this + 7));
  *(this + 7) = 0;
}

{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  AriMsg::FreeTlvList(*(this + 7));
  *(this + 7) = 0;
}

AriMsg *AriMsg::GetBufHeader(AriMsg *this, const unsigned __int8 *a2)
{
  v3 = this;
  v20 = *MEMORY[0x29EDCA608];
  if (!this || a2 < 0xC || *this != -1417756450)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v9, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "GetBufHeader");
        v8 = v10 >= 0 ? v9 : v9[0];
        *__p = 136316162;
        *&__p[4] = "ari";
        v12 = 2080;
        v13 = v8;
        v14 = 1024;
        v15 = 494;
        v16 = 2048;
        v17 = v3;
        v18 = 2048;
        v19 = a2;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) INVALID msgbuf (%p) len(%zu)", __p, 0x30u);
        if (v10 < 0)
        {
          operator delete(v9[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "GetBufHeader");
      if (v14 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) INVALID msgbuf (%p) len(%zu)", v5, v6, 494, v3, a2);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(*__p);
      }
    }

    return 0;
  }

  return v3;
}

void sub_296138C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriMsg *AriMsg::GetBufMsgSz(AriMsg *this, const unsigned __int8 *a2)
{
  result = AriMsg::GetBufHeader(this, a2);
  if (result)
  {
    return (*result >> 49);
  }

  return result;
}

AriMsg *AriMsg::GetBufGmid(AriMsg *this, const unsigned __int8 *a2)
{
  result = AriMsg::GetBufHeader(this, a2);
  if (result)
  {
    return ((*(result + 3) & 0x1F800 | (*(result + 2) >> 6)) << 15);
  }

  return result;
}

AriMsg *AriMsg::GetBufGid(AriMsg *this, const unsigned __int8 *a2)
{
  result = AriMsg::GetBufHeader(this, a2);
  if (result)
  {
    return ((*result >> 35) & 0x3FLL);
  }

  return result;
}

AriMsg *AriMsg::GetBufMid(AriMsg *this, const unsigned __int8 *a2)
{
  result = AriMsg::GetBufHeader(this, a2);
  if (result)
  {
    return (*(result + 2) >> 6);
  }

  return result;
}

AriMsg *AriMsg::GetBufAckOpt(AriMsg *this, const unsigned __int8 *a2)
{
  result = AriMsg::GetBufHeader(this, a2);
  if (result)
  {
    return ((*(result + 8) >> 3) & 1);
  }

  return result;
}

uint64_t AriMsg::SetBufSeq(AriMsg *this, const unsigned __int8 *a2, unsigned int a3)
{
  BufHeader = AriMsg::GetBufHeader(this, a2);
  if (!BufHeader)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = BufHeader;
  result = 0;
  *v5 = *v5 & 0xFFFE01FFFFFFFFFFLL | (a3 << 41);
  *(v5 + 2) = *(v5 + 2) & 0xFFFFFFF8 | (a3 >> 8) & 7;
  return result;
}

uint64_t AriMsg::GetBufSeq(AriMsg *this, const unsigned __int8 *a2, int *a3, unsigned int *a4)
{
  BufHeader = AriMsg::GetBufHeader(this, a2);
  result = 0xFFFFFFFFLL;
  if (a3)
  {
    if (BufHeader)
    {
      result = 0;
      *a3 = (*BufHeader >> 41) | ((*(BufHeader + 2) & 7) << 8);
    }
  }

  return result;
}

uint64_t AriMsg::GetBufCtx(AriMsg *this, const unsigned __int8 *a2)
{
  BufHeader = AriMsg::GetBufHeader(this, a2);
  if (BufHeader)
  {
    return *(BufHeader + 2) >> 17;
  }

  else
  {
    return 0x8000;
  }
}

uint64_t AriMsg::SetBufCtx(AriMsg *this, const unsigned __int8 *a2, unsigned __int16 a3)
{
  BufHeader = AriMsg::GetBufHeader(this, a2);
  if (!BufHeader)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = BufHeader;
  result = 0;
  *(v5 + 2) = *(v5 + 2) & 0x1FFFF | (a3 << 17);
  return result;
}

uint64_t AriMsg::pack(AriMsg *this, uint64_t a2, const void *a3, size_t a4, char a5)
{
  v80 = *MEMORY[0x29EDCA608];
  result = *(this + 17);
  if (result)
  {
    return result;
  }

  v10 = *(this + 1);
  if ((v10 - 1024) < 0xFFFFFC01 || ((result = *this, result) ? (v11 = a3 == 0) : (v11 = 1), !v11 ? (v12 = a4 >> 14 == 0) : (v12 = 0), !v12 || result >= 0x40))
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(result);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v68, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "pack");
        v29 = v69 >= 0 ? v68 : v68[0];
        *__p = 136316162;
        *&__p[4] = "ari";
        v71 = 2080;
        v72 = v29;
        v73 = 1024;
        v74 = 658;
        v75 = 2048;
        *v76 = a3;
        *&v76[8] = 2048;
        *&v77 = a4;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Invalid msg or input value v(%p) s(%zu)!", __p, 0x30u);
        if (v69 < 0)
        {
          operator delete(v68[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "pack");
      if (v73 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Invalid msg or input value v(%p) s(%zu)!", v14, v15, 658, a3, a4);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(*__p);
      }
    }

    return 4294967221;
  }

  v17 = Ari::TlvDefById(result, v10, a2, 0);
  if (!v17)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v23 = AriOsa::GetOsLog(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v68, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "pack");
        v47 = v69 >= 0 ? v68 : v68[0];
        v48 = *this;
        v49 = *(this + 1);
        *__p = 136316418;
        *&__p[4] = "ari";
        v71 = 2080;
        v72 = v47;
        v73 = 1024;
        v74 = 665;
        v75 = 1024;
        *v76 = a2;
        *&v76[4] = 1024;
        *&v76[6] = v48;
        LOWORD(v77) = 1024;
        *(&v77 + 2) = v49;
        _os_log_error_impl(&dword_296048000, v23, OS_LOG_TYPE_ERROR, "%s: (%s:%d) tid (%d) is not found under gid(%d) mid(0x%03x)", __p, 0x2Eu);
        if (v69 < 0)
        {
          operator delete(v68[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "pack");
      if (v73 >= 0)
      {
        v25 = __p;
      }

      else
      {
        v25 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) tid (%d) is not found under gid(%d) mid(0x%03x)", v24, v25, 665, a2, *this, *(this + 1));
      if (SHIBYTE(v73) < 0)
      {
        operator delete(*__p);
      }
    }

    return 4294967220;
  }

  v18 = v17;
  v19 = *(v17 + 2);
  if (*v19 * *(v19 + 32) < a4)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v20 = AriOsa::GetOsLog(v17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v68, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "pack");
        v50 = v69 >= 0 ? v68 : v68[0];
        v51 = *this;
        v52 = *(this + 1);
        v53 = **(v18 + 2) * *(*(v18 + 2) + 32);
        *__p = 136316930;
        *&__p[4] = "ari";
        v71 = 2080;
        v72 = v50;
        v73 = 1024;
        v74 = 672;
        v75 = 1024;
        *v76 = v51;
        *&v76[4] = 1024;
        *&v76[6] = v52;
        LOWORD(v77) = 1024;
        *(&v77 + 2) = a2;
        WORD3(v77) = 2048;
        *(&v77 + 1) = a4;
        *v78 = 2048;
        *&v78[2] = v53;
        _os_log_error_impl(&dword_296048000, v20, OS_LOG_TYPE_ERROR, "%s: (%s:%d) trying to pack gid(%d) mid(0x%03x) tid(%d) with sz(%zu) > max size(%zu)", __p, 0x42u);
        if (v69 < 0)
        {
          operator delete(v68[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "pack");
      if (v73 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) trying to pack gid(%d) mid(0x%03x) tid(%d) with sz(%zu) > max size(%zu)", v21, v22, 672, *this, *(this + 1), a2, a4, **(v18 + 2) * *(*(v18 + 2) + 32));
      if (SHIBYTE(v73) < 0)
      {
        operator delete(*__p);
      }
    }

    return 4294967216;
  }

  if (a4 % *v19)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      v26 = AriOsa::GetOsLog(v17);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v68, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "pack");
        v57 = v69 >= 0 ? v68 : v68[0];
        v58 = *this;
        v59 = *(this + 1);
        v60 = **(v18 + 2);
        *__p = 136316930;
        *&__p[4] = "ari";
        v71 = 2080;
        v72 = v57;
        v73 = 1024;
        v74 = 679;
        v75 = 1024;
        *v76 = v58;
        *&v76[4] = 1024;
        *&v76[6] = v59;
        LOWORD(v77) = 1024;
        *(&v77 + 2) = a2;
        WORD3(v77) = 2048;
        *(&v77 + 1) = a4;
        *v78 = 2048;
        *&v78[2] = v60;
        _os_log_error_impl(&dword_296048000, v26, OS_LOG_TYPE_ERROR, "%s: (%s:%d) trying to pack gid(%d) mid(0x%03x) tid(%d) with sz(%zu) not multiple of element sz(%zu)", __p, 0x42u);
        if (v69 < 0)
        {
          operator delete(v68[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "pack");
      if (v73 >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) trying to pack gid(%d) mid(0x%03x) tid(%d) with sz(%zu) not multiple of element sz(%zu)", v27, v28, 679, *this, *(this + 1), a2, a4, **(v18 + 2));
      if (SHIBYTE(v73) < 0)
      {
        operator delete(*__p);
      }
    }

    return 4294967213;
  }

  v30 = *(this + 7);
  if (!v30)
  {
    v31 = 0;
LABEL_57:
    v32 = AriOsa::MemAlloc(2, 0x40uLL);
    if (v32)
    {
      v33 = v32;
      v32[2] = 0u;
      v32[3] = 0u;
      *v32 = 0u;
      v32[1] = 0u;
      v34 = *(v18 + 1);
      *v32 = *v18;
      v32[1] = v34;
      if ((a5 & 1) == 0)
      {
        *(v32 + 5) = a3;
        goto LABEL_78;
      }

      if (!a4)
      {
LABEL_78:
        v33[4] = a4;
        v43 = (v31 + 48);
        if (!v31)
        {
          v43 = (this + 56);
        }

        *v43 = v33;
        if ((DefaultLogLevel & 4) != 0)
        {
          v44 = AriOsa::GetOsLog(v32);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            AriOsa::LogSrcInfo(v68, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "pack");
            v61 = v69 >= 0 ? v68 : v68[0];
            v62 = *(v18 + 3);
            v63 = *v18;
            v64 = *(this + 6);
            *__p = 136316930;
            *&__p[4] = "ari";
            v71 = 2080;
            v72 = v61;
            v73 = 1024;
            v74 = 753;
            v75 = 2080;
            *v76 = v62;
            *&v76[8] = 1024;
            LODWORD(v77) = v63;
            WORD2(v77) = 2048;
            *(&v77 + 6) = a4;
            HIWORD(v77) = 2048;
            *v78 = a3;
            *&v78[8] = 2080;
            v79 = v64;
            _os_log_debug_impl(&dword_296048000, v44, OS_LOG_TYPE_DEBUG, "%s: (%s:%d) Pack tlv(%s) with tid(%d) size (%zu) raw(%p) for (%s)", __p, 0x4Au);
            if (v69 < 0)
            {
              operator delete(v68[0]);
            }
          }

          AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "pack");
          if (v73 >= 0)
          {
            v46 = __p;
          }

          else
          {
            v46 = *__p;
          }

          AriOsa::LogToDefaultStringLogger(4, "(%s:%d) Pack tlv(%s) with tid(%d) size (%zu) raw(%p) for (%s)", v45, v46, 753, *(v18 + 3), *v18, a4, a3, *(this + 6));
          if (SHIBYTE(v73) < 0)
          {
            operator delete(*__p);
          }
        }

        return 0;
      }

      v35 = AriOsa::MemAlloc(2, a4);
      if (v35)
      {
        v36 = v35;
        v32 = memcpy(v35, a3, a4);
        v33[5] = v36;
        *(v33 + 56) = 1;
        goto LABEL_78;
      }

      if ((DefaultLogLevel & 8) != 0)
      {
        v54 = AriOsa::GetOsLog(0);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          AriOsa::LogSrcInfo(v68, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "pack");
          v67 = v69 >= 0 ? v68 : v68[0];
          *__p = 136315650;
          *&__p[4] = "ari";
          v71 = 2080;
          v72 = v67;
          v73 = 1024;
          v74 = 722;
          _os_log_error_impl(&dword_296048000, v54, OS_LOG_TYPE_ERROR, "%s: (%s:%d) MemAlloc failed for TLV buffer", __p, 0x1Cu);
          if (v69 < 0)
          {
            operator delete(v68[0]);
          }
        }

        AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "pack");
        if (v73 >= 0)
        {
          v56 = __p;
        }

        else
        {
          v56 = *__p;
        }

        AriOsa::LogToDefaultStringLogger(8, "(%s:%d) MemAlloc failed for TLV buffer", v55, v56, 722);
        if (SHIBYTE(v73) < 0)
        {
          operator delete(*__p);
        }
      }

      free(v33);
    }

    else if ((DefaultLogLevel & 8) != 0)
    {
      v40 = AriOsa::GetOsLog(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v68, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "pack");
        v66 = v69 >= 0 ? v68 : v68[0];
        *__p = 136315650;
        *&__p[4] = "ari";
        v71 = 2080;
        v72 = v66;
        v73 = 1024;
        v74 = 700;
        _os_log_error_impl(&dword_296048000, v40, OS_LOG_TYPE_ERROR, "%s: (%s:%d) MemAlloc failed for TLV", __p, 0x1Cu);
        if (v69 < 0)
        {
          operator delete(v68[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "pack");
      if (v73 >= 0)
      {
        v42 = __p;
      }

      else
      {
        v42 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) MemAlloc failed for TLV", v41, v42, 700);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(*__p);
      }
    }

    return 4294967214;
  }

  while (1)
  {
    v31 = v30;
    if (*v30 == a2)
    {
      break;
    }

    v30 = *(v30 + 48);
    if (!v30)
    {
      goto LABEL_57;
    }
  }

  if ((DefaultLogLevel & 8) != 0)
  {
    v37 = AriOsa::GetOsLog(v17);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(v68, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "pack");
      v65 = v69 >= 0 ? v68 : v68[0];
      *__p = 136315906;
      *&__p[4] = "ari";
      v71 = 2080;
      v72 = v65;
      v73 = 1024;
      v74 = 690;
      v75 = 1024;
      *v76 = a2;
      _os_log_error_impl(&dword_296048000, v37, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Duplicated TLV id %d", __p, 0x22u);
      if (v69 < 0)
      {
        operator delete(v68[0]);
      }
    }

    AriOsa::LogSrcInfo(__p, "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/src/ari.cpp", "pack");
    if (v73 >= 0)
    {
      v39 = __p;
    }

    else
    {
      v39 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Duplicated TLV id %d", v38, v39, 690, a2);
    if (SHIBYTE(v73) < 0)
    {
      operator delete(*__p);
    }
  }

  return 4294967219;
}