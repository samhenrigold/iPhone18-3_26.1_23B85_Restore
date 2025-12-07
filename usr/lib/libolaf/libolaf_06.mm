uint64_t stphiu(uint64_t result, unsigned int a2, const double *a3, const unsigned __int8 *a4, int a5, const unsigned __int8 *a6, const unsigned __int8 *a7)
{
  if (a2 >= 2 && a5)
  {
    v7 = 0;
    v8 = result - 8;
    v9 = a3 - 1;
    v10 = a4 - 1;
    v11 = a6 - 1;
    v12 = a7 - 1;
    if ((a5 + 1) > 2)
    {
      v13 = (a5 + 1);
    }

    else
    {
      v13 = 2;
    }

    v14 = 1;
    do
    {
      v15 = v12[v14];
      if (v12[v14])
      {
        result = v11[v14];
        v16 = 1;
        v17 = v7;
        do
        {
          v18 = v9[++v17];
          v19 = v10[v17];
          v20 = (v19 - 1) * v19;
          v21 = result + (v20 >> 1);
          *(v8 + 8 * v21) = v18 + *(v8 + 8 * v21);
          if (v19 < a2)
          {
            v22 = (v20 >> 1) + v19;
            do
            {
              v21 += v19;
              v22 += v19;
              *(v8 + 8 * v21) = *(v8 + 8 * v21) + v18 * *(v8 + 8 * v22);
              ++v19;
            }

            while (a2 != v19);
          }
        }

        while (v16++ != v15);
      }

      v7 += v15;
      ++v14;
    }

    while (v14 != v13);
  }

  return result;
}

uint64_t SuplProvider::GetInstance(SuplProvider *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if (SuplProvider::GetInstance(void)::pred_suplProvider != -1)
  {
    dispatch_once(&SuplProvider::GetInstance(void)::pred_suplProvider, &__block_literal_global_0);
  }

  result = SuplProvider::m_supl_provider;
  if (!SuplProvider::m_supl_provider)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 69, "GetInstance", "GetInstance");
      LbsOsaTrace_WriteLog(0xEu, __str, v3, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GetInstance", "SuplProvider.cpp", 60, "false && Memory allocation failure");
  }

  return result;
}

char *___ZN12SuplProvider11GetInstanceEv_block_invoke()
{
  result = operator new(0x40uLL, MEMORY[0x29EDC9418]);
  if (result)
  {
    *result = &unk_2A1F88340;
    *(result + 1) = &unk_2A1F88388;
    *(result + 2) = 0;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 7) = 0;
  }

  SuplProvider::m_supl_provider = result;
  return result;
}

uint64_t SuplProvider::AbortLocationReq(SuplUtils *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 4);
  if (v5)
  {
    while (*v5 != *(a3 + 4))
    {
      v5 = *(v5 + 8);
      if (!v5)
      {
        goto LABEL_4;
      }
    }

    SuplSession::ProcessAbortRequest((v5 - 8), a4);
  }

  else
  {
LABEL_4:
    Instance = SuplUtils::GetInstance(a1);
    v7 = SuplUtils::DeleteSuplInitRecd(Instance, *(a3 + 4));
    v8 = SuplPosPayloadHandler::GetInstance(v7);
    v9 = *(a3 + 4);
    v10 = LcsSuplGlueLayer::GetInstance(v8);
    (*(*v10 + 8))(v10, v9, 3, 0);
    v11 = SuplPosPayloadHandler::ResetLppParams(v8);
    v12 = LcsSuplGlueLayer::GetInstance(v11);
    if (v12)
    {
      v13 = v12 + 8;
    }

    else
    {
      v13 = 0;
    }

    (*(*v13 + 8))(v13, *(a3 + 4));
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 69, "AbortLocationReq", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v15, 0, 1);
    }
  }

  return 0;
}

uint64_t SuplProvider::InitSessionNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v7 = a3;
  v8 = a2;
  v20 = *MEMORY[0x29EDCA608];
  v10 = operator new(0x218uLL, MEMORY[0x29EDC9418]);
  if (v10)
  {
    v11 = v10;
    SuplSession::SuplSession(v10, v8, v7, a4);
    v12 = (v11 + 8);
    v13 = *(a1 + 32);
    while (v13)
    {
      v14 = v13;
      v13 = *(v13 + 8);
      if (!v13)
      {
        *(v14 + 8) = v12;
        *(v11 + 2) = 0;
        if (!a5)
        {
          return 0;
        }

        goto LABEL_11;
      }
    }

    *(v11 + 2) = *(a1 + 32);
    *(a1 + 32) = v12;
    if (!a5)
    {
      return 0;
    }

LABEL_11:
    SuplSession::InitializeResources(v11);
    SuplSession::ProcessSuplRequest(v11);
    return 0;
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "SPL", 69, "InitSessionNode", 1537);
      LbsOsaTrace_WriteLog(0x12u, __str, v16, 0, 1);
    }

    return -2;
  }
}

uint64_t SuplProvider::DeleteSessionInfo(SuplProvider *this, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 4);
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_5;
      }
    }

    v7 = v3 - 8;
    while (*v2 != a2)
    {
      v2 = *(v2 + 8);
      if (!v2)
      {
        goto LABEL_13;
      }
    }

    LcsLinkedList::Remove(this + 16, v2);
LABEL_13:
    v8 = *(*v7 + 8);

    return v8(v7);
  }

  else
  {
LABEL_5:
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "DeleteSessionInfo", 513);
      return LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }
  }

  return result;
}

uint64_t SuplProvider::ConnectInd(uint64_t result, int a2, uint64_t a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *(result + 32);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    if (a3 == 6 && *(v3 + 48))
    {
      *(v3 + 520) = 6;
    }

    else
    {

      return SuplSession::ConnectInd((v3 - 8), a3);
    }
  }

  else
  {
LABEL_4:
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 69, "ConnectInd", 513);
      return LbsOsaTrace_WriteLog(0x12u, __str, v5, 0, 1);
    }
  }

  return result;
}

uint64_t non-virtual thunk toSuplProvider::ConnectInd(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a1 - 8;

  return SuplProvider::ConnectInd(v3, a2, a3);
}

uint64_t SuplProvider::DisconnectInd(uint64_t a1, int a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    return SuplSession::DisconnectInd(v3 - 8, a3);
  }

  else
  {
LABEL_4:
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "DisconnectInd", 513);
      return LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }
  }

  return result;
}

uint64_t non-virtual thunk toSuplProvider::DisconnectInd(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a1 - 8;

  return SuplProvider::DisconnectInd(v3, a2, a3);
}

void SuplProvider::ReceiveDataInd(uint64_t a1, int a2, char **a3)
{
  v55 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    v7 = a3[1];
    v8 = *a3;
    if (v8 == v7)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "SPL", 69, "ReceiveDataInd", 514);
        LbsOsaTrace_WriteLog(0x12u, __str, v17, 0, 1);
      }
    }

    else
    {
      std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(a1 + 40, *(a1 + 48), v8, v7, v7 - v8);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      if ((v10 - v9) >= 2)
      {
        v24 = 0;
        SuplProvider::DecodeMessageLength(v9, v10, &v24);
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        v13 = v12 - v11;
        if (v12 - v11 >= v24)
        {
          if (v13 < 0xBB9)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v25, v11, v12, v13);
            SuplProvider::DecodeMessageLength(v25, v26, &v28);
            v29[0] = &v25;
            v29[1] = 5;
            v30 = 0;
            ASN1T_SessionID::ASN1T_SessionID(__str);
            v18 = asn1PD_SessionID(v29, __str);
            v19 = __str[0];
            if (v18)
            {
              v20 = 0;
            }

            else
            {
              v20 = v32;
            }

            if (v53)
            {
              v54 = v53;
              operator delete(v53);
            }

            if (v51)
            {
              v52 = v51;
              operator delete(v51);
            }

            if (v49)
            {
              v50 = v49;
              operator delete(v49);
            }

            if (v47)
            {
              v48 = v47;
              operator delete(v47);
            }

            if (v45)
            {
              v46 = v45;
              operator delete(v45);
            }

            if (v43)
            {
              v44 = v43;
              operator delete(v43);
            }

            if (v41)
            {
              v42 = v41;
              operator delete(v41);
            }

            if (v39)
            {
              v40 = v39;
              operator delete(v39);
            }

            if (v37)
            {
              v38 = v37;
              operator delete(v37);
            }

            if (__p)
            {
              v36 = __p;
              operator delete(__p);
            }

            if (v33)
            {
              v34 = v33;
              operator delete(v33);
            }

            if (v25)
            {
              v26 = v25;
              operator delete(v25);
            }

            if (!v18 && v19)
            {
              v21 = *(a1 + 32);
              if (v21)
              {
                while (*v21 != v20)
                {
                  v21 = *(v21 + 8);
                  if (!v21)
                  {
                    goto LABEL_46;
                  }
                }

                v3 = v21;
              }

              else
              {
LABEL_46:
                if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v22 = mach_continuous_time();
                  v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v22), "SPL", 69, "ReceiveDataInd", 513);
                  LbsOsaTrace_WriteLog(0x12u, __str, v23, 0, 1);
                }
              }
            }

            SuplSession::ReceiveDataInd((v3 - 8), (a1 + 40));
          }

          else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v14 = mach_continuous_time();
            v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 69, "ReceiveDataInd", 514);
            LbsOsaTrace_WriteLog(0x12u, __str, v15, 0, 1);
          }

          *(a1 + 48) = *(a1 + 40);
        }
      }
    }
  }

  else
  {
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "ReceiveDataInd", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }
  }
}

void sub_299542CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  ASN1T_SessionID::~ASN1T_SessionID(va);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SuplProvider::DecodeMessageLength(const void *a1, uint64_t a2, _WORD *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  __p = 0;
  v5 = 0;
  v6 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, a1, a2, a2 - a1);
  v7[0] = &__p;
  v7[1] = 0;
  v8 = 0;
  Asn1Coder::DecodeInteger(v7, 0, 0xFFFFu, a3);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_299542D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toSuplProvider::ReceiveDataInd(uint64_t a1, int a2, char **a3)
{
  v3 = a1 - 8;

  SuplProvider::ReceiveDataInd(v3, a2, a3);
}

void SuplProvider::OnTimerEvent(SuplProvider *this, unsigned int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  LcsUtils::GetInstance(this);
  if (a2 > 0xFFFE)
  {
    __str[0] = 0;
    v8 = a2 - 0xFFFF;
    (**this)(this, 0, __str, 1);
  }

  else
  {
    v4 = *(this + 4);
    if (v4)
    {
      while (*v4 != a2)
      {
        v4 = *(v4 + 8);
        if (!v4)
        {
          goto LABEL_5;
        }
      }

      SuplSession::OnTimerEvent((v4 - 8));
    }

    else
    {
LABEL_5:
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "OnTimerEvent", 513);
        LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
      }
    }
  }
}

void non-virtual thunk toSuplProvider::OnTimerEvent(SuplProvider *this, unsigned int a2)
{
  v2 = (this - 8);

  SuplProvider::OnTimerEvent(v2, a2);
}

LcsSuplGlueLayer *SuplProvider::SuplEndIndication(LcsSuplGlueLayer *result, uint64_t a2, int a3)
{
  v3 = *(result + 4);
  if (v3)
  {
    v4 = result;
    while (*v3 != a3)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        return result;
      }
    }

    v5 = *LcsSuplGlueLayer::GetInstance(result);
    result = (*v5)();
    *(v4 + 6) = *(v4 + 5);
  }

  return result;
}

uint64_t SuplProvider::Connect(SuplProvider *this, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *(this + 4);
  if (v4)
  {
    while (*v4 != a2)
    {
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    v21[0] = 0;
    memset(&v22, 0, sizeof(v22));
    v23 = 7275;
    Instance = SimUtils::GetInstance(this);
    if (SimUtils::GetSlpFqdn(Instance, v21, a2, *(v4 + 524)))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 69, "Connect", 770);
        LbsOsaTrace_WriteLog(0x12u, __str, v10, 0, 1);
      }

      SuplProvider::SuplEndIndication(this, 0xFFFFFFFFLL, a2);
      SuplProvider::DeleteSessionInfo(this, a2);
      v7 = 0;
    }

    else
    {
      v18[0] = 0;
      v20 = 0;
      memset(__p, 0, sizeof(__p));
      if ((v21[0] - 1) >= 4u)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 69, "Connect", 515);
          LbsOsaTrace_WriteLog(0x12u, __str, v13, 0, 1);
        }

        LOBYTE(v11) = 0;
      }

      else
      {
        v11 = 0x2030301u >> (8 * ((v21[0] - 1) & 0x1F));
      }

      v18[0] = v11;
      v14 = std::string::operator=(__p, &v22);
      *&__p[24] = v23;
      __p[26] = 0;
      v20 = *(v4 + 524);
      v15 = LcsSuplGlueLayer::GetInstance(v14);
      if (v15)
      {
        v16 = (v15 + 8);
      }

      else
      {
        v16 = 0;
      }

      v7 = (**v16)(v16, a2, v18);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "Connect", 2305);
      LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }

    SuplProvider::SuplEndIndication(this, 4294967279, a2);
    SuplProvider::DeleteSessionInfo(this, a2);
    return 0;
  }

  return v7;
}

void sub_299543460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SuplProvider::Disconnect(SuplProvider *this, int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *(this + 4);
  if (v2)
  {
    while (*v2 != a2)
    {
      v2 = *(v2 + 8);
      if (!v2)
      {
        goto LABEL_4;
      }
    }

    v6 = SuplProvider::DeleteSessionInfo(this, *(v2 + 368));
    v7 = SuplVersionNegotiation::Instance::Reset(v6);
    Instance = LcsSuplGlueLayer::GetInstance(v7);
    if (Instance)
    {
      v9 = Instance + 8;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(*v9 + 8);

    return v10();
  }

  else
  {
LABEL_4:
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 69, "Disconnect", 513);
      return LbsOsaTrace_WriteLog(0x12u, __str, v5, 0, 1);
    }
  }

  return result;
}

uint64_t SuplProvider::SendSuplPdu(LcsSuplGlueLayer *a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 4);
  if (v2)
  {
    while (*v2 != a2)
    {
      v2 = *(v2 + 8);
      if (!v2)
      {
        goto LABEL_4;
      }
    }

    Instance = LcsSuplGlueLayer::GetInstance(a1);
    if (Instance)
    {
      v7 = Instance + 8;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(*v7 + 16);

    return v8();
  }

  else
  {
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 69, "SendSuplPdu", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v4, 0, 1);
    }

    return 0;
  }
}

uint64_t SuplProvider::UpdateAidMask(SuplProvider *this, int a2, const SuplAsstDataNeededInfo *a3)
{
  __p[125] = *MEMORY[0x29EDCA608];
  v3 = *(this + 4);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    v13 = 0u;
    memset(__p, 0, 25);
    *v12 = 0u;
    if (a3)
    {
      *__str = *a3;
      v8 = *(a3 + 1);
      v12[0] = v8;
      if (__str != a3)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v12[1], *(a3 + 2), *(a3 + 3), *(a3 + 3) - *(a3 + 2));
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, *(a3 + 5), *(a3 + 6), *(a3 + 6) - *(a3 + 5));
        LODWORD(v8) = v12[0];
      }

      LOBYTE(__p[3]) = *(a3 + 64);
      v9 = v8 | 1;
    }

    else
    {
      v9 = 1;
    }

    *__str = 1;
    LODWORD(v12[0]) = v9;
    SuplSession::SetAidMask((v3 - 8), __str);
    SuplSession::InitializeResources((v3 - 8));
    SuplSession::ProcessSuplRequest((v3 - 8));
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v12[1])
    {
      *&v13 = v12[1];
      operator delete(v12[1]);
    }

    return 0;
  }

  else
  {
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "UpdateAidMask", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }

    return -3;
  }
}

double SuplProvider::ProcessRRLPResponse(SuplPosPayloadHandler *a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = 515;
    goto LABEL_9;
  }

  v2 = *(a1 + 4);
  if (!v2)
  {
LABEL_5:
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = 513;
LABEL_9:
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v5, "SPL", 69, "ProcessRRLPResponse", v6);
    LbsOsaTrace_WriteLog(0x12u, __str, v7, 0, 1);
    return result;
  }

  while (*v2 != *(a2 + 28))
  {
    v2 = *(v2 + 8);
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  *(v2 + 400) = *(a2 + 32);
  Instance = SuplPosPayloadHandler::GetInstance(a1);
  v9 = *(a2 + 24);

  return SuplPosPayloadHandler::ProcessPosResponse(Instance, a2, v9, (v2 - 8));
}

LcsSuplGlueLayer *SuplProvider::AbortAllSessionsOnPriority(SuplProvider *this)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(this + 4);
  if (v1)
  {
    v2 = this;
    do
    {
      v3 = *(v1 + 8);
      v6[0] = 0;
      v7 = *(v1 + 368);
      this = (**v2)(v2, 0, v6, 0);
      v1 = v3;
    }

    while (v3);
  }

  Instance = SuplUtils::GetInstance(this);
  return SuplUtils::AbortAllStoredSuplInits(Instance);
}

void ASN1T_SessionID::~ASN1T_SessionID(ASN1T_SessionID *this)
{
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 37) = v2;
    operator delete(v2);
  }

  v3 = *(this + 33);
  if (v3)
  {
    *(this + 34) = v3;
    operator delete(v3);
  }

  v4 = *(this + 30);
  if (v4)
  {
    *(this + 31) = v4;
    operator delete(v4);
  }

  v5 = *(this + 25);
  if (v5)
  {
    *(this + 26) = v5;
    operator delete(v5);
  }

  ASN1T_SETId::U::~U((this + 24));
}

void ASN1T_SETId::U::~U(ASN1T_SETId::U *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    *(this + 13) = v4;
    operator delete(v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    *(this + 10) = v5;
    operator delete(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    *(this + 7) = v6;
    operator delete(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    *(this + 4) = v7;
    operator delete(v7);
  }

  v8 = *this;
  if (*this)
  {
    *(this + 1) = v8;
    operator delete(v8);
  }
}

uint64_t *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void SuplAsstDataNeededInfo::~SuplAsstDataNeededInfo(SuplAsstDataNeededInfo *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v7 = __src;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if ((v10 - v9) >= a5)
  {
    v15 = v9 - __dst;
    if ((v9 - __dst) >= a5)
    {
      v19 = &__dst[a5];
      v20 = (v9 - a5);
      v21 = *(a1 + 8);
      if (v9 >= a5)
      {
        do
        {
          v22 = *v20++;
          *v21++ = v22;
        }

        while (v20 != v9);
      }

      *(a1 + 8) = v21;
      if (v9 != v19)
      {
        memmove(&__dst[a5], __dst, v9 - v19);
      }

      v23 = v5;
      v24 = v7;
      v25 = v6;
    }

    else
    {
      v16 = &__src[v15];
      if (&__src[v15] == a4)
      {
        v17 = *(a1 + 8);
        v18 = v17;
      }

      else
      {
        v17 = (&a4[v9] - v16);
        v18 = *(a1 + 8);
        do
        {
          v34 = *v16++;
          *v18++ = v34;
        }

        while (v16 != a4);
      }

      *(a1 + 8) = v17;
      if (v15 < 1)
      {
        return v5;
      }

      v35 = &__dst[a5];
      v36 = &v17[-a5];
      v37 = v17;
      if (&v17[-a5] < v9)
      {
        do
        {
          v38 = *v36++;
          *v37++ = v38;
        }

        while (v36 != v9);
      }

      *(a1 + 8) = v37;
      if (v18 != v35)
      {
        memmove(&__dst[a5], __dst, v17 - v35);
      }

      v23 = v5;
      v24 = v7;
      v25 = v15;
    }

    memmove(v23, v24, v25);
    return v5;
  }

  v11 = *a1;
  v12 = v9 - *a1 + a5;
  if (v12 < 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v13 = v10 - v11;
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    operator new();
  }

  v26 = (__dst - v11);
  v27 = (__dst - v11 + a5);
  v28 = (__dst - v11);
  do
  {
    v29 = *v7++;
    *v28++ = v29;
    --v6;
  }

  while (v6);
  v30 = *(a1 + 8) - __dst;
  memcpy(v27, __dst, v30);
  v31 = &v27[v30];
  *(a1 + 8) = v5;
  v32 = *a1;
  v33 = &v26[*a1 - v5];
  memcpy(v33, *a1, &v5[-*a1]);
  *a1 = v33;
  *(a1 + 8) = v31;
  *(a1 + 16) = 0;
  if (v32)
  {
    operator delete(v32);
  }

  return v26;
}

void Debug_Log_ApxTime(unsigned __int16 *result)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = g_CB_GDbg;
    v3 = 36;
    v4 = 1u;
    do
    {
      g_CB_GDbg = (v2 + 1);
      *v2 = v3;
      v2 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v2 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v3 = str_15[v4++];
    }

    while (v4 != 6);
    v5 = *result;
    g_CB_GDbg = (v2 + 1);
    *v2 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = result[1];
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = result[2];
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = result[3];
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v12 = result[4];
    v13 = g_CB_GDbg++;
    *v13 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v12);
    v14 = result[5];
    v15 = g_CB_GDbg++;
    *v15 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v14);
    v16 = result[6];
    v17 = g_CB_GDbg++;
    *v17 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v16);
    v18 = *(result + 4);
    v19 = g_CB_GDbg++;
    *v19 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v18);
    v20 = *(result + 5);
    v21 = g_CB_GDbg++;
    *v21 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v20);
    v22 = g_CB_GDbg++;
    *v22 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_NonVol(uint64_t result, uint64_t a2)
{
  v150 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = result;
    v3 = 0;
    v4 = *(a2 + 4);
    v5 = *(a2 + 22936);
    v6 = *(a2 + 22848);
    v7 = *(a2 + 22856);
    v8 = 36;
    v9 = *(a2 + 22860);
    v10 = *(a2 + 22864);
    v11 = g_CB_GDbg;
    do
    {
      g_CB_GDbg = (v11 + 1);
      *v11 = v8;
      v11 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v11 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v8 = aNg[++v3];
    }

    while (v3 != 4);
    v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v13 = g_CB_GDbg++;
    *v13 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v12);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v4);
    v15 = g_CB_GDbg++;
    *v15 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v17 = g_CB_GDbg++;
    *v17 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v19 = g_CB_GDbg++;
    *v19 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v20 = g_CB_GDbg++;
    *v20 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
    if (v2)
    {
      memset(v149, 0, 71);
      v148 = 0;
      v146 = 0u;
      v147 = 0u;
      memset(v145, 0, 108);
      v143 = 0u;
      memset(v144, 0, 28);
      v140 = 0uLL;
      v141 = 0;
      v21 = 1;
      v139 = 0uLL;
      do
      {
        if (Core_Load_GPS_Eph(v21, v145) && SLODWORD(v145[0]) >= 1)
        {
          *v149 = *&v145[0];
          LOBYTE(v149[2]) = BYTE8(v145[0]);
          *(&v149[2] + 1) = *(v145 + 9);
          v22 = 21;
          v23 = 11;
          v24 = &v145[1] + 8;
          do
          {
            v25 = v149 + v23;
            *v25 = *v24;
            *(v25 + 1) = *(v24 + 1);
            v24 += 4;
            --v22;
            v23 += 3;
          }

          while (v22 > 1);
          Debug_Log_GPS_Eph(0, v21, v149);
        }

        if (Core_Load_GPS_Alm(v21, &v143) && v143 >= 1)
        {
          *&v146 = v143;
          WORD4(v146) = WORD5(v143);
          v26 = 9;
          v27 = 10;
          v28 = &v143 | 0xC;
          do
          {
            v29 = &v146 + v27;
            *v29 = *v28;
            *(v29 + 1) = *(v28 + 1);
            v28 += 4;
            --v26;
            v27 += 3;
          }

          while (v26 > 1);
          Debug_Log_GPS_Alm(0, v21, &v146);
        }

        v21 = (v21 + 1);
      }

      while (v21 != 33);
      v30 = 0;
      v31 = p_NV;
      v32 = 55665;
      for (i = 88; i != 128; ++i)
      {
        v34 = *(p_NV + i) ^ BYTE1(v32);
        v32 = 52845 * (v32 + v34) + 22719;
        v30 += v34;
      }

      if (*(p_NV + 80) == v30)
      {
        v35 = *(p_NV + 108);
        v142[0] = *(p_NV + 92);
        v142[1] = v35;
        Debug_Log_GNSS_Health(0, 1, v142);
        v31 = p_NV;
      }

      v36 = 0;
      v37 = 55665;
      for (j = 160; j != 184; ++j)
      {
        v39 = *(v31 + j) ^ BYTE1(v37);
        v37 = 52845 * (v37 + v39) + 22719;
        v36 += v39;
      }

      if (*(v31 + 152) == v36)
      {
        v140 = *(v31 + 160);
        v141 = *(v31 + 176);
        if (v140 >= 1)
        {
          Debug_Log_GPS_UTC(0, &v140);
          v31 = p_NV;
        }
      }

      v40 = 0;
      v41 = 0;
      v42 = 55665;
      do
      {
        v43 = *(v31 + 136 + v40) ^ BYTE1(v42);
        v42 = 52845 * (v42 + v43) + 22719;
        v41 += v43;
        ++v40;
      }

      while (v40 != 16);
      if (*(v31 + 128) == v41)
      {
        v139 = *(v31 + 136);
        if (v139 >= 1)
        {
          Debug_Log_GPS_Klob(0, &v139);
        }
      }

      memset(&v149[2], 0, 63);
      *(&v146 + 1) = 0;
      v147 = 0uLL;
      v148 = 0;
      memset(v145, 0, 108);
      v44 = 193;
      v143 = 0u;
      memset(v144, 0, 28);
      do
      {
        if (Core_Load_QZSS_Eph(v44, v145) && SLODWORD(v145[0]) >= 1)
        {
          *v149 = *&v145[0];
          LOBYTE(v149[2]) = BYTE8(v145[0]);
          *(&v149[2] + 1) = *(v145 + 9);
          v45 = 21;
          v46 = 11;
          v47 = &v145[1] + 8;
          do
          {
            v48 = v149 + v46;
            *v48 = *v47;
            *(v48 + 1) = *(v47 + 1);
            v47 += 4;
            --v45;
            v46 += 3;
          }

          while (v45 > 1);
          Debug_Log_GPS_Eph(0, v44, v149);
        }

        if (Core_Load_QZSS_Alm(v44, &v143) && v143 >= 1)
        {
          *&v146 = v143;
          WORD4(v146) = WORD5(v143);
          v49 = 9;
          v50 = 10;
          v51 = &v143 | 0xC;
          do
          {
            v52 = &v146 + v50;
            *v52 = *v51;
            *(v52 + 1) = *(v51 + 1);
            v51 += 4;
            --v49;
            v50 += 3;
          }

          while (v49 > 1);
          Debug_Log_GPS_Alm(0, v44, &v146);
        }

        v44 = (v44 + 1);
      }

      while (v44 != 203);
      v53 = 0;
      v54 = 0;
      v55 = 55665;
      do
      {
        v56 = *(p_NV + 5824 + v53) ^ BYTE1(v55);
        v55 = 52845 * (v55 + v56) + 22719;
        v54 += v56;
        ++v53;
      }

      while (v53 != 16);
      if (*(p_NV + 5816) == v54)
      {
        WORD4(v142[0]) = *(p_NV + 5836);
        *&v142[0] = *(p_NV + 5828);
        Debug_Log_GNSS_Health(0, 3, v142);
      }

      memset(v145, 0, 62);
      *v149 = 0;
      LOWORD(v149[2]) = 0;
      memset(&v149[3], 0, 24);
      v57 = 1;
      do
      {
        if (Core_Load_GLON_Eph(v57, v145) && SLODWORD(v145[0]) >= 1)
        {
          Debug_Log_GLO_Eph(0, v57, v145);
        }

        if (Core_Load_GLON_Alm(v57, v149) && v149[0] >= 1)
        {
          Debug_Log_GLO_Alm(0, v57, v149);
        }

        v57 = (v57 + 1);
      }

      while (v57 != 25);
      v58 = 0;
      v59 = 0;
      v60 = p_NV;
      v61 = 55665;
      do
      {
        v62 = *(p_NV + 19168 + v58) ^ BYTE1(v61);
        v61 = 52845 * (v61 + v62) + 22719;
        v59 += v62;
        ++v58;
      }

      while (v58 != 32);
      if (*(p_NV + 19160) == v59)
      {
        v143 = *(p_NV + 19172);
        *&v144[0] = *(p_NV + 19188);
        Debug_Log_GNSS_Health(0, 2, &v143);
        v60 = p_NV;
      }

      v63 = 0;
      v64 = 0;
      v65 = 55665;
      do
      {
        v66 = *(v60 + 19208 + v63) ^ BYTE1(v65);
        v65 = 52845 * (v65 + v66) + 22719;
        v64 += v66;
        ++v63;
      }

      while (v63 != 32);
      if (*(v60 + 19200) == v64)
      {
        v67 = *(v60 + 19208);
        if (v67 >= 1)
        {
          if (g_Enable_GNB_Debug)
          {
            v138 = *(v60 + 19212);
            v68 = *(v60 + 19216);
            v69 = *(v60 + 19220);
            v70 = *(v60 + 19224);
            v71 = *(v60 + 19228);
            v72 = *(v60 + 19232);
            sprintf_NA_x_header(0, "C-");
            v73 = g_CB_GDbg++;
            *v73 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v67);
            v74 = g_CB_GDbg++;
            *v74 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v68);
            v75 = g_CB_GDbg++;
            *v75 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v69);
            v76 = g_CB_GDbg++;
            *v76 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v70);
            v77 = g_CB_GDbg++;
            *v77 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v71);
            v78 = g_CB_GDbg++;
            *v78 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v72);
            sprintf_sp1d(&g_CB_GDbg, v138);
            v79 = g_CB_GDbg++;
            *v79 = 10;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            GNB_Debug_Flush_Check();
          }
        }
      }

      memset(v145, 0, 87);
      v80 = 1;
      memset(v149, 0, 35);
      do
      {
        if (Core_Load_GAL_Eph(v80, v145) && SLODWORD(v145[0]) >= 1)
        {
          Debug_Log_GAL_Eph(0, v145);
        }

        if (Core_Load_GAL_Alm(v80, v149) && v149[0] >= 1)
        {
          Debug_Log_GAL_Alm(0, v149);
        }

        ++v80;
      }

      while (v80 != 37);
      v81 = 0;
      v82 = 0;
      v83 = p_NV;
      v84 = 55665;
      do
      {
        v85 = *(p_NV + 7608 + v81) ^ BYTE1(v84);
        v84 = 52845 * (v84 + v85) + 22719;
        v82 += v85;
        ++v81;
      }

      while (v81 != 40);
      if (*(p_NV + 7600) == v82)
      {
        LODWORD(v144[1]) = *(p_NV + 7644);
        v86 = *(p_NV + 7628);
        v143 = *(p_NV + 7612);
        v144[0] = v86;
        Debug_Log_GNSS_Health(0, 6, &v143);
        v83 = p_NV;
      }

      v87 = 0;
      v88 = 0;
      v89 = 55665;
      do
      {
        v90 = *(v83 + 7656 + v87) ^ BYTE1(v89);
        v89 = 52845 * (v89 + v90) + 22719;
        v88 += v90;
        ++v87;
      }

      while (v87 != 16);
      if (*(v83 + 7648) == v88)
      {
        v91 = *(v83 + 7656);
        if (v91 >= 1)
        {
          if (g_Enable_GNB_Debug)
          {
            v92 = *(v83 + 7660);
            v93 = *(v83 + 7664);
            v94 = *(v83 + 7666);
            v95 = *(v83 + 7668);
            v96 = *(v83 + 7669);
            sprintf_NA_x_header(0, "OE");
            v97 = g_CB_GDbg++;
            *v97 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v91);
            v98 = g_CB_GDbg++;
            *v98 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v93);
            v99 = g_CB_GDbg++;
            *v99 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v94);
            v100 = g_CB_GDbg++;
            *v100 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v95);
            v101 = g_CB_GDbg++;
            *v101 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v96);
            sprintf_sp1d(&g_CB_GDbg, v92);
            v102 = g_CB_GDbg++;
            *v102 = 10;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            GNB_Debug_Flush_Check();
          }
        }
      }

      LODWORD(v145[6]) = 0;
      memset(v145, 0, 23);
      memset(&v145[1] + 8, 0, 64);
      *(&v145[5] + 6) = 0;
      v103 = 1;
      memset(v149, 0, 44);
      do
      {
        if (Core_Load_BDS_Eph(v103, v145) && SLODWORD(v145[0]) >= 1)
        {
          Debug_Log_BDS_Eph(0, v145);
        }

        if (Core_Load_BDS_Alm(v103, v149) && v149[0] >= 1)
        {
          Debug_Log_BDS_Alm(0, v149);
        }

        ++v103;
      }

      while (v103 != 38);
      v104 = 0;
      v105 = 0;
      v106 = p_NV;
      v107 = 55665;
      do
      {
        v108 = *(p_NV + 12864 + v104) ^ BYTE1(v107);
        v107 = 52845 * (v107 + v108) + 22719;
        v105 += v108;
        ++v104;
      }

      while (v104 != 48);
      if (*(p_NV + 12856) == v105)
      {
        v109 = *(p_NV + 12884);
        v143 = *(p_NV + 12868);
        v144[0] = v109;
        *(v144 + 13) = *(p_NV + 12897);
        Debug_Log_GNSS_Health(0, 5, &v143);
        v106 = p_NV;
      }

      v110 = 0;
      v111 = 0;
      v112 = 55665;
      do
      {
        v113 = *(v106 + 12920 + v110) ^ BYTE1(v112);
        v112 = 52845 * (v112 + v113) + 22719;
        v111 += v113;
        ++v110;
      }

      while (v110 != 24);
      if (*(v106 + 12912) == v111)
      {
        v114 = *(v106 + 12920);
        if (v114 >= 1)
        {
          if (g_Enable_GNB_Debug)
          {
            v115 = *(v106 + 12924);
            v116 = *(v106 + 12928);
            v117 = *(v106 + 12930);
            v118 = *(v106 + 12932);
            v119 = *(v106 + 12934);
            v120 = *(v106 + 12936);
            v121 = *(v106 + 12938);
            sprintf_NA_x_header(0, "OB");
            v122 = g_CB_GDbg++;
            *v122 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v114);
            v123 = g_CB_GDbg++;
            *v123 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v116);
            v124 = g_CB_GDbg++;
            *v124 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v117);
            v125 = g_CB_GDbg++;
            *v125 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v118);
            v126 = g_CB_GDbg++;
            *v126 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v119);
            v127 = g_CB_GDbg++;
            *v127 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v120);
            v128 = g_CB_GDbg++;
            *v128 = 32;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            sprintf_2d(&g_CB_GDbg, v121);
            sprintf_sp1d(&g_CB_GDbg, v115);
            v129 = g_CB_GDbg++;
            *v129 = 10;
            if (g_CB_GDbg >= qword_2A1938EF8)
            {
              g_CB_GDbg = qword_2A1938EF0;
            }

            GNB_Debug_Flush_Check();
          }
        }
      }

      DWORD2(v145[0]) = 0;
      *&v145[0] = 0;
      v130 = 120;
      v149[0] = 0;
      do
      {
        if (Core_Load_SBAS_Apx(v130, v149, v145) && v149[0] >= 1)
        {
          Debug_Log_SBA_Alm(0, v130, v149[0], v145);
        }

        ++v130;
      }

      while (v130 != 159);
      v149[0] = 0;
      *&v145[0] = 0;
      if (Core_Load_Clk_Drift(v149, v145) && g_Enable_GNB_Debug)
      {
        v131 = 0;
        v132 = *v145;
        v133 = v149[0];
        v134 = 36;
        v135 = g_CB_GDbg;
        do
        {
          g_CB_GDbg = (v135 + 1);
          *v135 = v134;
          v135 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1938EF8)
          {
            v135 = qword_2A1938EF0;
            g_CB_GDbg = qword_2A1938EF0;
          }

          v134 = aNd[++v131];
        }

        while (v131 != 4);
        g_CB_GDbg = (v135 + 1);
        *v135 = 32;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          g_CB_GDbg = qword_2A1938EF0;
        }

        sprintf_2d(&g_CB_GDbg, v133);
        v136 = g_CB_GDbg++;
        *v136 = 32;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          g_CB_GDbg = qword_2A1938EF0;
        }

        sprintf_11f9(&g_CB_GDbg, v132 * 1000000.0);
        v137 = g_CB_GDbg++;
        *v137 = 10;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          g_CB_GDbg = qword_2A1938EF0;
        }

        GNB_Debug_Flush_Check();
      }
    }

    Debug_Log_NV_End();
  }
}

void Debug_Log_NV_End(void)
{
  if (g_Enable_GNB_Debug)
  {
    v0 = g_CB_GDbg;
    v1 = 36;
    v2 = 1u;
    do
    {
      g_CB_GDbg = (v0 + 1);
      *v0 = v1;
      v0 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v0 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v1 = aN[v2++];
    }

    while (v2 != 6);
    g_CB_GDbg = (v0 + 1);
    *v0 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_GPS_Eph(uint64_t result, uint64_t a2, unsigned int *a3)
{
  if (g_Enable_GNB_Debug)
  {
    if (a2 <= 192)
    {
      v5 = 71;
    }

    else
    {
      v5 = 81;
    }

    sprintf_NA_E_header(result, v5);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v7 = *a3;
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    for (i = 0; i != 63; ++i)
    {
      sprintf_02x(&g_CB_GDbg, *(a3 + i + 8));
    }

    sprintf_sp1d(&g_CB_GDbg, a3[1]);
    v11 = g_CB_GDbg++;
    *v11 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_GPS_Alm(uint64_t result, uint64_t a2, unsigned int *a3)
{
  if (g_Enable_GNB_Debug)
  {
    if (a2 <= 192)
    {
      v5 = 71;
    }

    else
    {
      v5 = 81;
    }

    sprintf_NA_A_header(result, v5);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v7 = *a3;
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a3 + 4);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    for (i = 0; i != 24; ++i)
    {
      sprintf_02x(&g_CB_GDbg, *(a3 + i + 10));
    }

    sprintf_sp1d(&g_CB_GDbg, a3[1]);
    v13 = g_CB_GDbg++;
    *v13 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_GNSS_Health(uint64_t result, int a2, unsigned __int8 *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!g_Enable_GNB_Debug)
  {
    return;
  }

  sprintf_NA_x_header(result, "H");
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v5 = 71;
      v6 = 32;
      goto LABEL_14;
    }

    if (a2 == 2)
    {
      v5 = 82;
      v6 = 24;
      goto LABEL_14;
    }

LABEL_30:
    v7 = 0;
    v6 = 0;
    v5 = 88;
    goto LABEL_15;
  }

  if (a2 == 3)
  {
    v5 = 81;
    v6 = 10;
    goto LABEL_14;
  }

  if (a2 == 5)
  {
    v5 = 66;
    v6 = 37;
    goto LABEL_14;
  }

  if (a2 != 6)
  {
    goto LABEL_30;
  }

  v5 = 69;
  v6 = 36;
LABEL_14:
  v7 = 1;
LABEL_15:
  v8 = g_CB_GDbg++;
  *v8 = v5;
  v9 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v9 = qword_2A1938EF0;
  }

  g_CB_GDbg = (v9 + 1);
  *v9 = 32;
  v10 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v10 = qword_2A1938EF0;
    g_CB_GDbg = qword_2A1938EF0;
  }

  if (v7)
  {
    if (v6 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v6;
    }

    do
    {
      v12 = *a3++;
      sprintf1da(&g_CB_GDbg, v12, v13, 0, 0);
      --v11;
    }

    while (v11);
    v10 = g_CB_GDbg;
  }

  g_CB_GDbg = (v10 + 1);
  *v10 = 10;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    g_CB_GDbg = qword_2A1938EF0;
  }

  GNB_Debug_Flush_Check();
}

void Debug_Log_GPS_UTC(uint64_t result, unsigned int *a2)
{
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_x_header(result, "UG");
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v3);
    v5 = a2[2];
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = a2[3];
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 16);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 17);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a2 + 18);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(a2 + 19);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = *(a2 + 20);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = *(a2 + 21);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    sprintf_sp1d(&g_CB_GDbg, a2[1]);
    v21 = g_CB_GDbg++;
    *v21 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_GPS_Klob(uint64_t result, unsigned int *a2)
{
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_x_header(result, "KG");
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a2 + 9);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 10);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 11);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a2 + 12);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(a2 + 13);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = *(a2 + 14);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = *(a2 + 15);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    sprintf_sp1d(&g_CB_GDbg, a2[1]);
    v21 = g_CB_GDbg++;
    *v21 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_GLO_Eph(uint64_t result, uint64_t a2, unsigned int *a3)
{
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_E_header(result, 82);
    v5 = g_CB_GDbg++;
    *v5 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v6 = *a3;
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = a3[2];
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = *(a3 + 30);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    for (i = 3; i != 15; ++i)
    {
      v13 = g_CB_GDbg++;
      *v13 = 32;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        g_CB_GDbg = qword_2A1938EF0;
      }

      sprintf_08x(&g_CB_GDbg, a3[i]);
    }

    sprintf_sp1d(&g_CB_GDbg, a3[1]);
    v14 = g_CB_GDbg++;
    *v14 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_GLO_Alm(uint64_t result, uint64_t a2, unsigned int *a3)
{
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_A_header(result, 82);
    v5 = g_CB_GDbg++;
    *v5 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v6 = *a3;
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = *(a3 + 4);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    for (i = 0; i != 6; ++i)
    {
      v11 = g_CB_GDbg++;
      *v11 = 32;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        g_CB_GDbg = qword_2A1938EF0;
      }

      sprintf_08x(&g_CB_GDbg, a3[i + 3]);
    }

    sprintf_sp1d(&g_CB_GDbg, a3[1]);
    v12 = g_CB_GDbg++;
    *v12 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_GAL_Eph(uint64_t result, unsigned int *a2)
{
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_E_header(result, 69);
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v3);
    v5 = a2[2];
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a2 + 6);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 14);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 15);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a2 + 8);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(a2 + 9);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = a2[5];
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    sprintf_sp1u(&g_CB_GDbg, a2[6]);
    sprintf_sp1u(&g_CB_GDbg, a2[7]);
    v19 = a2[8];
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    v21 = a2[9];
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v21);
    v23 = a2[10];
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v23);
    v25 = a2[11];
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v25);
    v27 = *(a2 + 24);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v27);
    v29 = *(a2 + 25);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v29);
    v31 = *(a2 + 26);
    v32 = g_CB_GDbg++;
    *v32 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v31);
    v33 = *(a2 + 27);
    v34 = g_CB_GDbg++;
    *v34 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v33);
    v35 = *(a2 + 28);
    v36 = g_CB_GDbg++;
    *v36 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v35);
    v37 = *(a2 + 29);
    v38 = g_CB_GDbg++;
    *v38 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v37);
    v39 = *(a2 + 30);
    v40 = g_CB_GDbg++;
    *v40 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v39);
    v41 = *(a2 + 31);
    v42 = g_CB_GDbg++;
    *v42 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v41);
    v43 = a2[16];
    v44 = g_CB_GDbg++;
    *v44 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v43);
    v45 = a2[17];
    v46 = g_CB_GDbg++;
    *v46 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v45);
    v47 = *(a2 + 36);
    v48 = g_CB_GDbg++;
    *v48 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v47);
    v49 = *(a2 + 37);
    v50 = g_CB_GDbg++;
    *v50 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v49);
    v51 = *(a2 + 38);
    v52 = g_CB_GDbg++;
    *v52 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v51);
    v53 = *(a2 + 39);
    v54 = g_CB_GDbg++;
    *v54 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v53);
    v55 = *(a2 + 80);
    v56 = g_CB_GDbg++;
    *v56 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v55);
    v57 = *(a2 + 81);
    v58 = g_CB_GDbg++;
    *v58 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v57);
    v59 = *(a2 + 82);
    v60 = g_CB_GDbg++;
    *v60 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v59);
    v61 = *(a2 + 83);
    v62 = g_CB_GDbg++;
    *v62 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v61);
    v63 = *(a2 + 84);
    v64 = g_CB_GDbg++;
    *v64 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v63);
    v65 = *(a2 + 85);
    v66 = g_CB_GDbg++;
    *v66 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v65);
    v67 = *(a2 + 86);
    v68 = g_CB_GDbg++;
    *v68 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v67);
    sprintf_sp1d(&g_CB_GDbg, a2[1]);
    v69 = g_CB_GDbg++;
    *v69 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_GAL_Alm(uint64_t result, unsigned int *a2)
{
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_A_header(result, 69);
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a2 + 9);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 5);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 6);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a2 + 7);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(a2 + 8);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = *(a2 + 9);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = *(a2 + 10);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    v21 = *(a2 + 11);
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v21);
    v23 = *(a2 + 12);
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v23);
    v25 = *(a2 + 13);
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v25);
    v27 = *(a2 + 14);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v27);
    v29 = *(a2 + 15);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v29);
    v31 = *(a2 + 32);
    v32 = g_CB_GDbg++;
    *v32 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v31);
    v33 = *(a2 + 33);
    v34 = g_CB_GDbg++;
    *v34 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v33);
    v35 = *(a2 + 34);
    v36 = g_CB_GDbg++;
    *v36 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v35);
    sprintf_sp1d(&g_CB_GDbg, a2[1]);
    v37 = g_CB_GDbg++;
    *v37 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_BDS_Eph(uint64_t result, unsigned int *a2)
{
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_E_header(result, 66);
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v3);
    v5 = a2[2];
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = a2[3];
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 8);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 18);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a2 + 19);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(a2 + 20);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = *(a2 + 21);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = *(a2 + 22);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    v21 = a2[6];
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v21);
    sprintf_sp1u(&g_CB_GDbg, a2[7]);
    sprintf_sp1u(&g_CB_GDbg, a2[8]);
    v23 = a2[9];
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v23);
    v25 = a2[10];
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v25);
    v27 = a2[11];
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v27);
    v29 = *(a2 + 24);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v29);
    v31 = *(a2 + 25);
    v32 = g_CB_GDbg++;
    *v32 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v31);
    v33 = a2[13];
    v34 = g_CB_GDbg++;
    *v34 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v33);
    v35 = a2[14];
    v36 = g_CB_GDbg++;
    *v36 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v35);
    v37 = a2[15];
    v38 = g_CB_GDbg++;
    *v38 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v37);
    v39 = a2[16];
    v40 = g_CB_GDbg++;
    *v40 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v39);
    v41 = a2[17];
    v42 = g_CB_GDbg++;
    *v42 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v41);
    v43 = a2[18];
    v44 = g_CB_GDbg++;
    *v44 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v43);
    v45 = a2[19];
    v46 = g_CB_GDbg++;
    *v46 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v45);
    v47 = a2[20];
    v48 = g_CB_GDbg++;
    *v48 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v47);
    v49 = a2[21];
    v50 = g_CB_GDbg++;
    *v50 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v49);
    v51 = *(a2 + 44);
    v52 = g_CB_GDbg++;
    *v52 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v51);
    v53 = *(a2 + 45);
    v54 = g_CB_GDbg++;
    *v54 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v53);
    v55 = *(a2 + 46);
    v56 = g_CB_GDbg++;
    *v56 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v55);
    v57 = a2[24];
    v58 = g_CB_GDbg++;
    *v58 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v57);
    sprintf_sp1d(&g_CB_GDbg, a2[1]);
    v59 = g_CB_GDbg++;
    *v59 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_BDS_Alm(uint64_t result, unsigned int *a2)
{
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_A_header(result, 66);
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v3);
    v5 = *(a2 + 4);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a2 + 10);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 11);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = a2[3];
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = a2[4];
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = a2[5];
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = a2[6];
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = a2[7];
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    v21 = a2[8];
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v21);
    v23 = *(a2 + 18);
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v23);
    v25 = *(a2 + 19);
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v25);
    v27 = *(a2 + 20);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v27);
    v29 = *(a2 + 42);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v29);
    v31 = *(a2 + 43);
    v32 = g_CB_GDbg++;
    *v32 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v31);
    sprintf_sp1d(&g_CB_GDbg, a2[1]);
    v33 = g_CB_GDbg++;
    *v33 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_SBA_Alm(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_A_header(result, 83);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a3);
    v9 = *a4;
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = a4[1];
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = a4[2];
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = g_CB_GDbg++;
    *v15 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

uint64_t sprintf_NA_x_header(uint64_t result, char *a2)
{
  v2 = g_CB_GDbg++;
  *v2 = 36;
  v3 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v3 = qword_2A1938EF0;
  }

  if (result)
  {
    v4 = 65;
  }

  else
  {
    v4 = 78;
  }

  g_CB_GDbg = (v3 + 1);
  *v3 = v4;
  v5 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v5 = qword_2A1938EF0;
    g_CB_GDbg = qword_2A1938EF0;
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = a2 + 1;
    do
    {
      g_CB_GDbg = (v5 + 1);
      *v5 = v6;
      v5 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v5 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v8 = *v7++;
      v6 = v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sprintf_NA_E_header(uint64_t result, char a2)
{
  v2 = g_CB_GDbg++;
  *v2 = 36;
  v3 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v3 = qword_2A1938EF0;
  }

  if (result == 1)
  {
    v4 = 65;
  }

  else
  {
    v4 = 69;
  }

  if (!result)
  {
    v4 = 78;
  }

  g_CB_GDbg = (v3 + 1);
  *v3 = v4;
  v5 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v5 = qword_2A1938EF0;
  }

  g_CB_GDbg = (v5 + 1);
  *v5 = 69;
  v6 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v6 = qword_2A1938EF0;
  }

  g_CB_GDbg = (v6 + 1);
  *v6 = a2;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    g_CB_GDbg = qword_2A1938EF0;
  }

  return result;
}

void Debug_Log_SBA_Eph(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (g_Enable_GNB_Debug)
  {
    sprintf_NA_E_header(result, 83);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a3);
    v9 = *a4;
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a4 + 4);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a4 + 10);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = a4[3];
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = a4[4];
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = a4[5];
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    v21 = a4[6];
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v21);
    v23 = a4[7];
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v23);
    v25 = a4[8];
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v25);
    v27 = a4[9];
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v27);
    v29 = a4[10];
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v29);
    v31 = a4[11];
    v32 = g_CB_GDbg++;
    *v32 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v31);
    v33 = a4[12];
    v34 = g_CB_GDbg++;
    *v34 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v33);
    v35 = a4[13];
    v36 = g_CB_GDbg++;
    *v36 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v35);
    sprintf_sp1d(&g_CB_GDbg, a4[1]);
    v37 = g_CB_GDbg++;
    *v37 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

uint64_t sprintf_NA_A_header(uint64_t result, char a2)
{
  v2 = g_CB_GDbg++;
  *v2 = 36;
  v3 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v3 = qword_2A1938EF0;
  }

  if (result)
  {
    v4 = 65;
  }

  else
  {
    v4 = 78;
  }

  g_CB_GDbg = (v3 + 1);
  *v3 = v4;
  v5 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v5 = qword_2A1938EF0;
  }

  g_CB_GDbg = (v5 + 1);
  *v5 = 65;
  v6 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    v6 = qword_2A1938EF0;
  }

  g_CB_GDbg = (v6 + 1);
  *v6 = a2;
  if (g_CB_GDbg >= qword_2A1938EF8)
  {
    g_CB_GDbg = qword_2A1938EF0;
  }

  return result;
}

void Debug_Log_TM_FCP_OS_Time_ms(uint64_t result, uint64_t a2)
{
  if (g_Enable_GNB_Debug)
  {
    v3 = 0;
    v4 = g_CB_GDbg;
    v5 = 36;
    do
    {
      g_CB_GDbg = (v4 + 1);
      *v4 = v5;
      v4 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v4 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v5 = str_8_1[++v3];
    }

    while (v3 != 4);
    sprintf_sp1u(&g_CB_GDbg, result);
    sprintf_sp1u(&g_CB_GDbg, a2);
    v6 = g_CB_GDbg++;
    *v6 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_AGPS_Ref_Time(unsigned int *result)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_9_5[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = result[1];
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = *(result + 4);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = *(result + 5);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v12 = g_CB_GDbg++;
    *v12 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_AGPS_EFSP_Time(double *result)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = g_CB_GDbg;
    v3 = 36;
    v4 = 1u;
    do
    {
      g_CB_GDbg = (v2 + 1);
      *v2 = v3;
      v2 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v2 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v3 = str_10_3[v4++];
    }

    while (v4 != 6);
    sprintf_11f9(&g_CB_GDbg, *result);
    v5 = *(result + 4);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(result + 3);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(result + 4);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(result + 5);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(result + 24);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = g_CB_GDbg++;
    *v15 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_AGPS_TOW_Assist(uint64_t result)
{
  v15 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v2 = *(result + 4);
    if (*(result + 4))
    {
      v3 = 0;
      v4 = 0;
      if (v2 >= 0xD)
      {
        v5 = 12;
      }

      else
      {
        v5 = *(result + 4);
      }

      if (v2 < 0xD)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      do
      {
        v7 = 0;
        v8 = g_CB_GDbg;
        v9 = 36;
        do
        {
          g_CB_GDbg = (v8 + 1);
          *v8 = v9;
          v8 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1938EF8)
          {
            v8 = qword_2A1938EF0;
            g_CB_GDbg = qword_2A1938EF0;
          }

          v9 = str_11_2[++v7];
        }

        while (v7 != 4);
        ++v4;
        sprintf_sp1d(&g_CB_GDbg, v6);
        sprintf_sp1d(&g_CB_GDbg, v4);
        sprintf_sp1d(&g_CB_GDbg, *result);
        sprintf_sp1d(&g_CB_GDbg, *(result + 4));
        v10 = v5 - v3;
        if (v5 > v3)
        {
          v11 = (result + 11 + 6 * v3);
          do
          {
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 5));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 3));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 4));
            sprintf1da(&g_CB_GDbg, *(v11 - 1), v14, 0, 0);
            v12 = *v11;
            v11 += 6;
            sprintf1da(&g_CB_GDbg, v12, v14, 0, 0);
            --v10;
          }

          while (v10);
          v3 = v5;
        }

        v13 = g_CB_GDbg++;
        *v13 = 10;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          g_CB_GDbg = qword_2A1938EF0;
        }

        GNB_Debug_Flush_Check();
        v5 = *(result + 4);
      }

      while (v4 != v6);
    }
  }
}

void Debug_Log_AGPS_Ref_Pos(uint64_t result)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = g_CB_GDbg;
    v3 = 36;
    v4 = 1u;
    do
    {
      g_CB_GDbg = (v2 + 1);
      *v2 = v3;
      v2 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v2 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v3 = str_13_1[v4++];
    }

    while (v4 != 6);
    sprintf_gR8(&g_CB_GDbg, *(result + 8));
    sprintf_gR8(&g_CB_GDbg, *(result + 16));
    sprintf_gR8(&g_CB_GDbg, *(result + 24));
    sprintf_gR8(&g_CB_GDbg, *(result + 32));
    v5 = *(result + 40);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(result + 42);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    sprintf_gR8(&g_CB_GDbg, *(result + 48));
    sprintf_gR8(&g_CB_GDbg, *(result + 56));
    sprintf_sp1d(&g_CB_GDbg, *(result + 64));
    sprintf_sp1d(&g_CB_GDbg, *(result + 68));
    sprintf_sp1d(&g_CB_GDbg, *result);
    v9 = g_CB_GDbg;
    v10 = 32;
    v11 = 1u;
    do
    {
      g_CB_GDbg = (v9 + 1);
      *v9 = v10;
      v9 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v9 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v10 = str_14_1[v11++];
    }

    while (v11 != 4);
    sprintf_1X(&g_CB_GDbg, *(result + 72));
    v12 = g_CB_GDbg++;
    *v12 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_AGPS_Acq_Ass(uint64_t result)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = *(result + 4);
    if (*(result + 4))
    {
      v3 = 0;
      v4 = 0;
      v5 = (v2 - 1) >> 2;
      if (v2 >= 4)
      {
        v6 = 4;
      }

      else
      {
        v6 = *(result + 4);
      }

      v15 = result + 18;
      do
      {
        v7 = 0;
        v8 = g_CB_GDbg;
        v9 = 36;
        do
        {
          g_CB_GDbg = (v8 + 1);
          *v8 = v9;
          v8 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1938EF8)
          {
            v8 = qword_2A1938EF0;
            g_CB_GDbg = qword_2A1938EF0;
          }

          v9 = str_15_1[++v7];
        }

        while (v7 != 4);
        sprintf_sp1d(&g_CB_GDbg, v5 + 1);
        sprintf_sp1d(&g_CB_GDbg, v4 + 1);
        sprintf_sp1d(&g_CB_GDbg, *result);
        sprintf_sp1d(&g_CB_GDbg, *(result + 4));
        v10 = v6 - v3;
        if (v6 > v3)
        {
          v11 = (v15 + 14 * v3);
          do
          {
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 12));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 5));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 8));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 7));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 3));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 4));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 3));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 2));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 1));
            v12 = *v11;
            v11 += 14;
            sprintf_sp1d(&g_CB_GDbg, v12);
            --v10;
          }

          while (v10);
          v3 = v6;
        }

        v13 = g_CB_GDbg++;
        *v13 = 10;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          g_CB_GDbg = qword_2A1938EF0;
        }

        GNB_Debug_Flush_Check();
        if (v6 + 4 >= *(result + 4))
        {
          v6 = *(result + 4);
        }

        else
        {
          v6 += 4;
        }
      }

      while (v4++ != v5);
    }
  }
}

void Debug_Log_AGNSS_Ref_Time(unsigned int *result)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_16_0[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = result[1];
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = *(result + 4);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = result[3];
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v12 = *(result + 8);
    v13 = g_CB_GDbg++;
    *v13 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v12);
    v14 = g_CB_GDbg++;
    *v14 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_AGNSS_Time_Model(unsigned int *result)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_18_0[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = result[1];
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = *(result + 4);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = result[3];
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v12 = result[4];
    v13 = g_CB_GDbg++;
    *v13 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v12);
    v14 = *(result + 20);
    v15 = g_CB_GDbg++;
    *v15 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v14);
    v16 = *(result + 21);
    v17 = g_CB_GDbg++;
    *v17 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v16);
    v18 = result[6];
    v19 = g_CB_GDbg++;
    *v19 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v18);
    sprintf_sp1d(&g_CB_GDbg, *(result + 28));
    v20 = g_CB_GDbg++;
    *v20 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_AGNSS_Acq_Ass(uint64_t result)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = *(result + 13);
    if (*(result + 13))
    {
      v3 = 0;
      v4 = 0;
      v5 = (v2 - 1) >> 2;
      if (v2 >= 4)
      {
        v6 = 4;
      }

      else
      {
        v6 = *(result + 13);
      }

      v15 = result + 32;
      do
      {
        v7 = 0;
        v8 = g_CB_GDbg;
        v9 = 36;
        do
        {
          g_CB_GDbg = (v8 + 1);
          *v8 = v9;
          v8 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1938EF8)
          {
            v8 = qword_2A1938EF0;
            g_CB_GDbg = qword_2A1938EF0;
          }

          v9 = str_19_0[++v7];
        }

        while (v7 != 4);
        sprintf_sp1d(&g_CB_GDbg, v5 + 1);
        sprintf_sp1d(&g_CB_GDbg, v4 + 1);
        sprintf_sp1d(&g_CB_GDbg, *result);
        sprintf_sp1d(&g_CB_GDbg, *(result + 4));
        sprintf_sp1d(&g_CB_GDbg, *(result + 8));
        sprintf_sp1d(&g_CB_GDbg, *(result + 13));
        v10 = v6 - v3;
        if (v6 > v3)
        {
          v11 = (v15 + 20 * v3);
          do
          {
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 4));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 12));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 5));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 8));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 7));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 3));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 4));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 3));
            sprintf_sp1d(&g_CB_GDbg, *(v11 - 1));
            v12 = *v11;
            v11 += 20;
            sprintf_sp1d(&g_CB_GDbg, v12);
            --v10;
          }

          while (v10);
          v3 = v6;
        }

        v13 = g_CB_GDbg++;
        *v13 = 10;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          g_CB_GDbg = qword_2A1938EF0;
        }

        GNB_Debug_Flush_Check();
        if (v6 + 4 >= *(result + 13))
        {
          v6 = *(result + 13);
        }

        else
        {
          v6 += 4;
        }
      }

      while (v4++ != v5);
    }
  }
}

void Debug_Log_AGNSS_Bad_SV_List(uint64_t result, int *a2, unsigned __int8 *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v5 = result;
    v6 = 0;
    v7 = g_CB_GDbg;
    v8 = 36;
    do
    {
      g_CB_GDbg = (v7 + 1);
      *v7 = v8;
      v7 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v7 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v8 = str_20_0[++v6];
    }

    while (v6 != 4);
    sprintf_sp1d(&g_CB_GDbg, result);
    if (v5)
    {
      for (i = v5; i; --i)
      {
        v10 = g_CB_GDbg++;
        *v10 = 32;
        v11 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          v11 = qword_2A1938EF0;
          g_CB_GDbg = qword_2A1938EF0;
        }

        v12 = *a2;
        if (*a2 <= 7)
        {
          switch(v12)
          {
            case 1:
              v13 = 71;
              break;
            case 2:
              v13 = 69;
              break;
            case 4:
              v13 = 83;
              break;
            default:
              goto LABEL_23;
          }
        }

        else if (v12 > 31)
        {
          if (v12 == 32)
          {
            v13 = 82;
            goto LABEL_27;
          }

          if (v12 != 64)
          {
            goto LABEL_23;
          }

          v13 = 66;
        }

        else
        {
          if (v12 == 8)
          {
            v13 = 77;
            goto LABEL_27;
          }

          if (v12 != 16)
          {
LABEL_23:
            EvCrt_Illegal_Default("Debug_Log_AGNSS_Bad_SV_List", 1768);
            v11 = g_CB_GDbg;
            v13 = 88;
            goto LABEL_27;
          }

          v13 = 81;
        }

LABEL_27:
        g_CB_GDbg = (v11 + 1);
        *v11 = v13;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          g_CB_GDbg = qword_2A1938EF0;
        }

        v14 = *a3++;
        sprintf1da(&g_CB_GDbg, v14, v16, 0, 0);
        ++a2;
      }
    }

    v15 = g_CB_GDbg++;
    *v15 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_AGNSS_Not_Brd_SV_List(uint64_t result, int *a2, unsigned __int8 *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v5 = result;
    v6 = 0;
    v7 = g_CB_GDbg;
    v8 = 36;
    do
    {
      g_CB_GDbg = (v7 + 1);
      *v7 = v8;
      v7 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v7 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v8 = str_21_0[++v6];
    }

    while (v6 != 4);
    sprintf_sp1d(&g_CB_GDbg, result);
    if (v5)
    {
      for (i = v5; i; --i)
      {
        v10 = g_CB_GDbg++;
        *v10 = 32;
        v11 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          v11 = qword_2A1938EF0;
          g_CB_GDbg = qword_2A1938EF0;
        }

        v12 = *a2;
        if (*a2 <= 7)
        {
          switch(v12)
          {
            case 1:
              v13 = 71;
              break;
            case 2:
              v13 = 69;
              break;
            case 4:
              v13 = 83;
              break;
            default:
              goto LABEL_23;
          }
        }

        else if (v12 > 31)
        {
          if (v12 == 32)
          {
            v13 = 82;
            goto LABEL_27;
          }

          if (v12 != 64)
          {
            goto LABEL_23;
          }

          v13 = 66;
        }

        else
        {
          if (v12 == 8)
          {
            v13 = 77;
            goto LABEL_27;
          }

          if (v12 != 16)
          {
LABEL_23:
            EvCrt_Illegal_Default("Debug_Log_AGNSS_Not_Brd_SV_List", 1818);
            v11 = g_CB_GDbg;
            v13 = 88;
            goto LABEL_27;
          }

          v13 = 81;
        }

LABEL_27:
        g_CB_GDbg = (v11 + 1);
        *v11 = v13;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          g_CB_GDbg = qword_2A1938EF0;
        }

        v14 = *a3++;
        sprintf1da(&g_CB_GDbg, v14, v16, 0, 0);
        ++a2;
      }
    }

    v15 = g_CB_GDbg++;
    *v15 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_GPS_RTI_Bad_SV_List(uint64_t result, int *a2, unsigned __int8 *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  if (g_Enable_GNB_Debug)
  {
    v5 = result;
    v6 = 0;
    v7 = g_CB_GDbg;
    v8 = 36;
    do
    {
      g_CB_GDbg = (v7 + 1);
      *v7 = v8;
      v7 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v7 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v8 = str_22_0[++v6];
    }

    while (v6 != 4);
    sprintf_sp1d(&g_CB_GDbg, result);
    if (v5)
    {
      for (i = v5; i; --i)
      {
        v10 = g_CB_GDbg++;
        *v10 = 32;
        v11 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          v11 = qword_2A1938EF0;
          g_CB_GDbg = qword_2A1938EF0;
        }

        v12 = *a2;
        if (*a2 > 7)
        {
          switch(v12)
          {
            case 8:
              v13 = 83;
              break;
            case 32:
              v13 = 66;
              break;
            case 16:
              v13 = 69;
              break;
            default:
              goto LABEL_21;
          }
        }

        else
        {
          switch(v12)
          {
            case 1:
              v13 = 71;
              break;
            case 2:
              v13 = 82;
              break;
            case 4:
              v13 = 81;
              break;
            default:
LABEL_21:
              EvCrt_Illegal_Default("Debug_Log_GPS_RTI_Bad_SV_List", 1867);
              v11 = g_CB_GDbg;
              v13 = 88;
              break;
          }
        }

        g_CB_GDbg = (v11 + 1);
        *v11 = v13;
        if (g_CB_GDbg >= qword_2A1938EF8)
        {
          g_CB_GDbg = qword_2A1938EF0;
        }

        v14 = *a3++;
        sprintf1da(&g_CB_GDbg, v14, v16, 0, 0);
        ++a2;
      }
    }

    v15 = g_CB_GDbg++;
    *v15 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_GPS_EE_Start_Time(uint64_t result, uint64_t a2)
{
  if (g_Enable_GNB_Debug)
  {
    v3 = 0;
    v4 = g_CB_GDbg;
    v5 = 36;
    do
    {
      g_CB_GDbg = (v4 + 1);
      *v4 = v5;
      v4 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v4 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v5 = str_23_1[++v3];
    }

    while (v3 != 4);
    g_CB_GDbg = (v4 + 1);
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, result);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v7 = g_CB_GDbg++;
    *v7 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_AGLON_ChanNum(uint64_t result, uint64_t a2)
{
  if (g_Enable_GNB_Debug)
  {
    v3 = 0;
    v4 = g_CB_GDbg;
    v5 = 36;
    do
    {
      g_CB_GDbg = (v4 + 1);
      *v4 = v5;
      v4 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v4 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v5 = str_24[++v3];
    }

    while (v3 != 4);
    g_CB_GDbg = (v4 + 1);
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, result);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v7 = g_CB_GDbg++;
    *v7 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_DMS(unsigned int *result)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_25_0[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = result[1];
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = result[2];
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = g_CB_GDbg++;
    *v10 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_UAC(unsigned int *result)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_26_0[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = result[1];
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = result[2];
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = g_CB_GDbg++;
    *v10 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_FIV(unsigned int *result)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_27_0[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = result[1];
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = result[2];
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = g_CB_GDbg++;
    *v10 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_SES(uint64_t result)
{
  if (g_Enable_GNB_Debug)
  {
    v1 = 0;
    v2 = g_CB_GDbg;
    v3 = 36;
    do
    {
      g_CB_GDbg = (v2 + 1);
      *v2 = v3;
      v2 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v2 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v3 = str_28_1[++v1];
    }

    while (v1 != 4);
    g_CB_GDbg = (v2 + 1);
    *v2 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, result);
    v4 = g_CB_GDbg++;
    *v4 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_Alt(double *result)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_29_2[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_gR8(&g_CB_GDbg, result[1]);
    sprintf_gR8(&g_CB_GDbg, result[2]);
    v6 = *(result + 6);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = g_CB_GDbg++;
    *v8 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_MapV(double *result)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_30_2[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    for (i = 1; i != 4; ++i)
    {
      v7 = g_CB_GDbg++;
      *v7 = 32;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        g_CB_GDbg = qword_2A1938EF0;
      }

      sprintf_11f9(&g_CB_GDbg, result[i]);
    }

    v8 = *(result + 32);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    sprintf_gR8(&g_CB_GDbg, result[5]);
    sprintf_gR8(&g_CB_GDbg, result[6]);
    sprintf_gR8(&g_CB_GDbg, result[7]);
    v10 = *(result + 64);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v12 = *(result + 65);
    v13 = g_CB_GDbg++;
    *v13 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v12);
    v14 = *(result + 66);
    v15 = g_CB_GDbg++;
    *v15 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v14);
    v16 = *(result + 67);
    v17 = g_CB_GDbg++;
    *v17 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v16);
    v18 = *(result + 68);
    v19 = g_CB_GDbg++;
    *v19 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v18);
    v20 = g_CB_GDbg++;
    *v20 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_SpdC(double *result)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_31_1[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = *(result + 1);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    sprintf_gR8(&g_CB_GDbg, result[1]);
    sprintf_gR8(&g_CB_GDbg, result[2]);
    v8 = g_CB_GDbg++;
    *v8 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_AT_Vel(double *result)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_32_2[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_gR8(&g_CB_GDbg, result[1]);
    sprintf_gR8(&g_CB_GDbg, result[2]);
    v6 = g_CB_GDbg++;
    *v6 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_V_Vel(double *result)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_33_0[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_gR8(&g_CB_GDbg, result[1]);
    sprintf_gR8(&g_CB_GDbg, result[2]);
    v6 = g_CB_GDbg++;
    *v6 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_Heading(double *result)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_34_0[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_gR8(&g_CB_GDbg, result[1]);
    sprintf_gR8(&g_CB_GDbg, result[2]);
    v6 = g_CB_GDbg++;
    *v6 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_Tunnel_End_Point(double *result)
{
  if (g_Enable_GNB_Debug)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1938EF8)
      {
        v3 = qword_2A1938EF0;
        g_CB_GDbg = qword_2A1938EF0;
      }

      v4 = str_35_1[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_11f9(&g_CB_GDbg, result[1]);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_11f9(&g_CB_GDbg, result[2]);
    sprintf_gR8(&g_CB_GDbg, result[3]);
    sprintf_gR8(&g_CB_GDbg, result[4]);
    v8 = *(result + 20);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = *(result + 42);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    sprintf_gR8(&g_CB_GDbg, result[6]);
    sprintf_gR8(&g_CB_GDbg, result[7]);
    v12 = g_CB_GDbg++;
    *v12 = 10;
    if (g_CB_GDbg >= qword_2A1938EF8)
    {
      g_CB_GDbg = qword_2A1938EF0;
    }

    GNB_Debug_Flush_Check();
  }
}

void SB_SBAS_PrePos(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v64 = *MEMORY[0x29EDCA608];
  v10 = (a6 + 4096);
  if (*(a3 + 34))
  {
    if (*(a2 + 176) == *(a3 + 1064))
    {
      *(a1 + 48) = 0;
    }

    v11 = (a6 + 6232);
    *(a6 + 6343) = 0u;
    *(a6 + 6312) = 0u;
    *(a6 + 6328) = 0u;
    v12 = (a6 + 6238);
    *(a6 + 6280) = 0u;
    *(a6 + 6296) = 0u;
    *(a6 + 6248) = 0u;
    *(a6 + 6264) = 0u;
    *(a6 + 6232) = 0u;
    memset(v63, 0, 39);
    memset(v62, 0, 39);
    memset(v61, 0, 39);
    v13 = 6;
    do
    {
      *(a6 + 3737) = 0uLL;
      *(a6 + 3708) = 0uLL;
      *(a6 + 3724) = 0uLL;
      --v13;
    }

    while (v13);
    v50 = a6 + 6277;
    *(a6 + 4166) = -1;
    *&v14 = -1;
    *(&v14 + 1) = -1;
    *(a6 + 4135) = v14;
    *(a6 + 4151) = v14;
    v47 = a7 + 178;
    v44 = a7 + 1960;
    v45 = a7 + 536;
    v15 = a5 + 26688;
    v16 = 10;
    do
    {
      if (v10[2259] > 5u)
      {
        break;
      }

      if (*(v15 + 184) == 1)
      {
        v17 = *(v15 + 180);
        v18 = v17 - 120;
        if ((v17 - 120) <= 0x26)
        {
          v58 = 0;
          v59 = 0;
          memset(v52, 0, sizeof(v52));
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          memset(v57, 0, 30);
          if (Comp_CurrState(0x93A80u, *(a1 + 6), v15, v52, *(a1 + 16), 42290000.0))
          {
            v19 = v17 + 19;
            DWORD2(v57[1]) = 1;
            v20 = *(a7 + v17 + 19);
            if (v20 == 157 || v18 == *(a1 + 48))
            {
              Comp_AzEl(a1 + 24, a2 + 104, v52, (a7 + v19), (v47 + 2 * v19), (v45 + 8 * v19), (v44 + 8 * v19));
              LOBYTE(v20) = *(a7 + v19);
            }

            if (v20 < 1)
            {
              ++v10[2262];
              v21 = v62;
            }

            else
            {
              Comp_AA(v52, v20, *(v47 + 2 * v19), a1, a2, a6, v17);
              v21 = v63;
            }

            v21[v18] = 1;
          }

          else
          {
            EvLog_d("SBAS_PrePos: SBAS ephemeris timed-out: ", *(v15 + 180));
            *(v15 + 184) = 0;
            *(v15 + 180) = 0;
            *(v15 + 176) = 0;
          }
        }
      }

      v15 += 192;
      --v16;
    }

    while (v16);
    v22 = 0;
    v23 = 0;
    v24 = 456;
    do
    {
      if (v10[2259] > 5u)
      {
        break;
      }

      if ((v63[v23] & 1) == 0 && (v62[v23] & 1) == 0 && Core_Load_SBAS_Apx((v23 + 120), &v51, v60))
      {
        v59 = 0;
        *&v52[0] = 0;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        memset(v57, 0, 30);
        v25.i64[0] = v60[0];
        v25.i64[1] = v60[1];
        *(v52 + 8) = vcvtq_f64_s64(v25);
        v58 = 0;
        DWORD2(v57[1]) = 2;
        *(&v52[1] + 1) = v60[2];
        v26 = *(a7 + v23 + 139);
        if (v26 == 157 || v23 == *(a1 + 48))
        {
          Comp_AzEl(a1 + 24, a2 + 104, v52, (a7 + v23 + 139), (a7 + v24), (a7 + v22 + 1648), (a7 + v22 + 3072));
          LOBYTE(v26) = *(a7 + v23 + 139);
        }

        if (v26 < 1)
        {
          v62[v23] = 1;
          ++v10[2262];
        }

        else
        {
          Comp_AA(v52, v26, *(a7 + 2 * v23 + 456), a1, a2, a6, (v23 + 120));
          v63[v23] = 1;
        }
      }

      ++v23;
      v22 += 8;
      v24 += 2;
    }

    while (v23 != 39);
    v27 = 0;
    v28 = (a3 + 392);
    do
    {
      if (*(a9 + 33744 + v27) != 1 || *v28 == 1)
      {
        if (v28[227] == 1)
        {
          ++v10[2262];
          v29 = v62;
        }

        else
        {
          *(v50 + v10[2261]++) = v27 + 120;
          v29 = v61;
        }

        v29[v27] = 1;
      }

      if ((v62[v27] & 1) != 0 || v61[v27] == 1)
      {
        SB_SBAS_Remove_SV_in_List((v27 + 120), v10 + 2259, v11, 6u);
        SB_SBAS_Remove_SV_in_List((v27 + 120), v10 + 2260, v12, 0x27u);
      }

      ++v27;
      ++v28;
    }

    while (v27 != 39);
    if (*(a3 + 47) < 3u)
    {
      if ((*(a2 + 176) - *(a3 + 1064)) >> 6 >= 0x753)
      {
        for (i = 0; i != 39; ++i)
        {
          if ((v63[i] & 1) == 0 && (v62[i] & 1) == 0 && (v61[i] & 1) == 0)
          {
            v12[v10[2260]++] = i + 120;
          }
        }
      }

      else
      {
        v35 = v10[2259];
        v36 = v10[2260];
        if ((v36 + v35) <= 0x13)
        {
          v37 = 0;
          do
          {
            v38 = SBAS_PRIORITY[v37];
            v39 = v38 - 120;
            if ((v63[v38 - 120] & 1) == 0 && (v62[v39] & 1) == 0 && (v61[v39] & 1) == 0)
            {
              v12[v36] = v38;
              LOBYTE(v36) = v10[2260] + 1;
              v10[2260] = v36;
              v35 = v10[2259];
            }

            if (v37 > 0x12)
            {
              break;
            }

            ++v37;
          }

          while (v35 + v36 < 0x14);
        }
      }
    }

    else
    {
      v30 = 0;
      v31 = (a8 + 2720);
      v10[2260] = 0;
      v32 = 48;
      do
      {
        if (*v31 == 6)
        {
          v33 = *v31;
          if (Is_Legal(*v31) && GM_Gen_SV_Meas_QI(v31) >= 0xB)
          {
            v34 = BYTE2(v33) - 120;
            if (BYTE2(v33) >= 0x78u && v30 <= 0x26u && (v63[v34] & 1) == 0 && (v62[v34] & 1) == 0 && (v61[v34] & 1) == 0)
            {
              v12[v30] = BYTE2(v33);
              v30 = v10[2260] + 1;
              v10[2260] = v30;
            }
          }
        }

        v31 += 9;
        --v32;
      }

      while (v32);
    }

    v41 = (*(a1 + 48) + 1);
    if (v41 >= 0x27)
    {
      LOBYTE(v41) = 39;
    }

    *(a1 + 48) = v41;
  }

  else
  {
    *(a6 + 6355) = 0;
    *(a7 + 147) = -25187;
    *(a7 + 139) = 0x9D9D9D9D9D9D9D9DLL;

    memset_pattern16((a7 + 456), &unk_299728F50, 0x14uLL);
  }
}

void Comp_AA(uint64_t a1, char a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v39 = *MEMORY[0x29EDCA608];
  v13 = *(a1 + 120);
  v14 = v13 == 1;
  v15 = v13 != 1 && v13 == 2;
  v16 = *(a6 + 6355) + 76;
  v17 = Comp_SVrange_Sag_Corr(&v38, v37, (a4 + 24), (a1 + 8));
  v18 = 0;
  v19 = ((*(a5 + 64) - *(a1 + 56)) * 299792458.0);
  do
  {
    v37[v18 + 2] = *(a1 + 48 + 8 * v18) - *(a5 + 16 + 8 * v18);
    v20 = v18 + 3;
    --v18;
  }

  while (v20 > 1);
  v21 = 0;
  v22 = v17;
  v23 = 0.0;
  do
  {
    v23 = v23 + v38.f64[v21] * v37[v21];
    ++v21;
  }

  while (v21 != 3);
  v24 = a6 + 60 + 48 * v16;
  v25 = (v23 + (*(a5 + 72) - *(a1 + 64)) * 299792458.0) / -0.190293673;
  v26 = (v19 + v22) / 299792458.0;
  v27 = *(a5 + 96) - v26;
  *v24 = *(a5 + 176);
  *(v24 + 4) = 1;
  *(v24 + 10) = a7;
  *(v24 + 8) = 6;
  *(v24 + 12) = v14;
  *(v24 + 13) = v15;
  *(v24 + 14) = 256;
  *(v24 + 16) = (v26 * 2000.0 + 0.5);
  v28 = (v26 * 1000000000.0);
  *(v24 + 18) = 200;
  v29 = -0.5;
  if (v25 > 0.0)
  {
    v29 = 0.5;
  }

  v30 = v25 + v29;
  v31 = v30;
  if (v30 < -2147483650.0)
  {
    LOWORD(v31) = 0;
  }

  if (v30 <= 2147483650.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = -1;
  }

  *(v24 + 22) = v32;
  v33 = v27 / 1.5;
  if (v27 / 1.5 <= 0.0)
  {
    v33 = v27 / 1.5 + -1.0;
  }

  *(v24 + 24) = 33562616;
  *(v24 + 28) = v33;
  *(v24 + 32) = ((v27 + v33 * -1.5) * 1023000.0);
  *(v24 + 36) = v28;
  if (v33 < 0)
  {
    *(v24 + 28) = v33 + 403200;
  }

  *(v24 + 40) = 0;
  *(v24 + 42) = -1;
  *(v24 + 43) = a2;
  v34 = a3 >> 1;
  if (a3 >= 0x169)
  {
    LOBYTE(v34) = -1;
  }

  *(v24 + 44) = v34;
  if (a7 >= 0x78)
  {
    if (v14)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }

    *(a6 + a7 - 120 + 6316) += v35;
    v36 = *(a6 + 6355);
    *(a6 + v36 + 6232) = a7;
    *(a6 + a7 + 4015) = v36 + 76;
    ++*(a6 + 6355);
  }
}

uint64_t SB_SBAS_Remove_SV_in_List(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (a2 && a3)
  {
    v4 = *a2;
    if (*a2 && v4 <= a4)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        while (a3[v6] == result)
        {
          a3[v6] = 0;
          v8 = *a2;
          ++v6;
          v7 = 1;
          LOBYTE(v4) = *a2;
          if (v6 >= v8)
          {
            goto LABEL_14;
          }
        }

        ++v6;
      }

      while (v6 < v4);
      LOBYTE(v8) = v4;
      if ((v7 & 1) == 0)
      {
        return result;
      }

LABEL_14:
      if (v8)
      {
        v9 = 0;
        LODWORD(v10) = 0;
        v11 = v8;
        do
        {
          if (a3[v9])
          {
            a3[v10] = a3[v9];
            LODWORD(v10) = v10 + 1;
            v11 = *a2;
          }

          ++v9;
        }

        while (v9 < v11);
      }

      else
      {
        v11 = 0;
        LODWORD(v10) = 0;
      }

      if (v10 < v11)
      {
        v10 = v10;
        do
        {
          if (a3[v10])
          {
            a3[v10] = 0;
            v11 = *a2;
          }

          ++v10;
        }

        while (v10 < v11);
      }

      *a2 = v11 - 1;
    }
  }

  return result;
}

uint64_t asn1PE_Status(uint64_t a1, unsigned __int8 *a2)
{
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
  }

  else
  {
    v8 = *a2;
    if (v8 >= 3)
    {
      v4 = 4;
      *(a1 + 16) = 4;
      SuplAsn1Logger::TraceError(4u, *(a1 + 8), *(a1 + 12));
    }

    else
    {
      v4 = Asn1Coder::EncodeInteger(a1, 0, 2, v8);
      if (!v4)
      {
        return v4;
      }
    }

    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = v4;
  }

  SuplAsn1Logger::TraceError(v7, v5, v6);
  return v4;
}

uint64_t asn1PE_UARFCN(uint64_t a1, unsigned __int16 a2)
{
  v3 = Asn1Coder::EncodeInteger(a1, 0, 0x3FFF, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PE_FrequencyInfo(uint64_t a1, _BYTE *a2)
{
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
  }

  else
  {
    Asn1Coder::AddBitToBuffer(a1, 0);
    v4 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v8 = *(a1 + 8);
      v9 = *(a1 + 12);
      LODWORD(v10) = *(a1 + 16);
    }

    else
    {
      v10 = Asn1Coder::EncodeInteger(a1, 0, 1, *a2);
      if (v10)
      {
        v4 = v10;
        v8 = *(a1 + 8);
        v9 = *(a1 + 12);
      }

      else
      {
        if (*a2 == 1)
        {
          Asn1Coder::AddBitToBuffer(a1, 0);
          v4 = *(a1 + 16);
          if (*(a1 + 16))
          {
            v11 = *(a1 + 8);
            v12 = *(a1 + 12);
            LODWORD(v13) = *(a1 + 16);
          }

          else
          {
            v13 = asn1PE_UARFCN(a1, *(a2 + 4));
            v4 = v13;
            if (!v13)
            {
              return v4;
            }

            v11 = *(a1 + 8);
            v12 = *(a1 + 12);
          }
        }

        else if (*a2)
        {
          v4 = 4;
          *(a1 + 16) = 4;
          v11 = *(a1 + 8);
          v12 = *(a1 + 12);
          LODWORD(v13) = 4;
        }

        else
        {
          Asn1Coder::AddBitToBuffer(a1, 0);
          v4 = *(a1 + 16);
          if (*(a1 + 16))
          {
            v11 = *(a1 + 8);
            v12 = *(a1 + 12);
            LODWORD(v13) = *(a1 + 16);
          }

          else
          {
            Asn1Coder::AddBitToBuffer(a1, a2[2]);
            v4 = *(a1 + 16);
            if (*(a1 + 16))
            {
              v11 = *(a1 + 8);
              v12 = *(a1 + 12);
              LODWORD(v13) = *(a1 + 16);
            }

            else if (a2[2] && (v13 = asn1PE_UARFCN(a1, *(a2 + 2)), v13))
            {
              v4 = v13;
              v11 = *(a1 + 8);
              v12 = *(a1 + 12);
            }

            else
            {
              v13 = asn1PE_UARFCN(a1, *(a2 + 3));
              v4 = v13;
              if (!v13)
              {
                return v4;
              }

              v11 = *(a1 + 8);
              v12 = *(a1 + 12);
            }
          }
        }

        SuplAsn1Logger::TraceError(v13, v11, v12);
        v8 = *(a1 + 8);
        v9 = *(a1 + 12);
        LODWORD(v10) = v4;
      }
    }

    SuplAsn1Logger::TraceError(v10, v8, v9);
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = v4;
  }

  SuplAsn1Logger::TraceError(v7, v5, v6);
  return v4;
}

uint64_t asn1PE_CPICH_Ec_N0(uint64_t a1, unsigned __int16 a2)
{
  v3 = Asn1Coder::EncodeInteger(a1, 0, 63, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PE_CPICH_RSCP(uint64_t a1, unsigned __int16 a2)
{
  v3 = Asn1Coder::EncodeInteger(a1, 0, 127, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PE_Pathloss(uint64_t a1, unsigned __int8 a2)
{
  v3 = Asn1Coder::EncodeInteger(a1, 46, 173, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PE_CellParametersID(uint64_t a1, unsigned __int8 a2)
{
  v3 = Asn1Coder::EncodeInteger(a1, 0, 127, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PE_TGSN(uint64_t a1, unsigned __int8 a2)
{
  v3 = Asn1Coder::EncodeInteger(a1, 0, 14, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PE_PrimaryCCPCH_RSCP(uint64_t a1, unsigned __int16 a2)
{
  v3 = Asn1Coder::EncodeInteger(a1, 0, 127, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PE_TimeslotISCP_List(uint64_t a1, void *a2)
{
  v4 = Asn1Coder::EncodeInteger(a1, 1, 14, *(a2 + 2) - *a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    v8 = *a2;
    if (a2[1] == *a2)
    {
      return 0;
    }

    v9 = 0;
    while (1)
    {
      v10 = Asn1Coder::EncodeInteger(a1, 0, 127, *(v8 + v9));
      if (v10)
      {
        break;
      }

      ++v9;
      v8 = *a2;
      if (v9 >= a2[1] - *a2)
      {
        return 0;
      }
    }

    v5 = v10;
    SuplAsn1Logger::TraceError(v10, *(a1 + 8), *(a1 + 12));
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = v5;
  }

  SuplAsn1Logger::TraceError(v4, v6, v7);
  return v5;
}

uint64_t asn1PE_MeasuredResultsList(uint64_t a1, uint64_t *a2)
{
  v4 = Asn1Coder::EncodeInteger(a1, 1, 8, -858993459 * ((a2[1] - *a2) >> 3));
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_84;
  }

  v8 = *a2;
  if (a2[1] == *a2)
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    v10 = (v8 + 40 * v9);
    Asn1Coder::AddBitToBuffer(a1, *v10);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v34 = *(a1 + 8);
      v35 = *(a1 + 12);
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_83;
    }

    Asn1Coder::AddBitToBuffer(a1, v10[1]);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v34 = *(a1 + 8);
      v35 = *(a1 + 12);
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_83;
    }

    Asn1Coder::AddBitToBuffer(a1, v10[2]);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v34 = *(a1 + 8);
      v35 = *(a1 + 12);
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_83;
    }

    if (*v10)
    {
      v11 = asn1PE_FrequencyInfo(a1, v10 + 4);
      if (v11)
      {
        v5 = v11;
        v34 = *(a1 + 8);
        v35 = *(a1 + 12);
        goto LABEL_83;
      }
    }

    if (v10[1])
    {
      v12 = Asn1Coder::EncodeInteger(a1, 0, 127, v10[14]);
      if (v12)
      {
        v5 = v12;
        SuplAsn1Logger::TraceError(v12, *(a1 + 8), *(a1 + 12));
        v34 = *(a1 + 8);
        v35 = *(a1 + 12);
        LODWORD(v11) = v5;
        goto LABEL_83;
      }
    }

    if (v10[2])
    {
      v13 = Asn1Coder::EncodeInteger(a1, 1, 32, 954437177 * ((*(v10 + 3) - *(v10 + 2)) >> 3));
      if (v13)
      {
        v5 = v13;
        v36 = *(a1 + 8);
        v37 = *(a1 + 12);
        goto LABEL_82;
      }

      v14 = *(v10 + 2);
      if (*(v10 + 3) != v14)
      {
        break;
      }
    }

LABEL_53:
    v5 = 0;
    ++v9;
    v8 = *a2;
    if (v9 >= 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3))
    {
      return v5;
    }
  }

  v15 = 0;
  v16 = 24;
  while (1)
  {
    Asn1Coder::AddBitToBuffer(a1, *(v14 + v16 - 24));
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v30 = *(a1 + 8);
      v31 = *(a1 + 12);
      LODWORD(v17) = *(a1 + 16);
      goto LABEL_81;
    }

    if (*(v14 + v16 - 24))
    {
      v17 = Asn1Coder::EncodeInteger(a1, 0, 0xFFFFFFF, *(v14 + v16 - 20));
      if (v17)
      {
        v5 = v17;
        v30 = *(a1 + 8);
        v31 = *(a1 + 12);
        goto LABEL_81;
      }
    }

    v18 = v14 + v16;
    v19 = Asn1Coder::EncodeInteger(a1, 0, 1, *(v14 + v16 - 16));
    if (v19)
    {
      v5 = v19;
      v32 = *(a1 + 8);
      v33 = *(a1 + 12);
      goto LABEL_80;
    }

    v20 = *(v18 - 16);
    if (!*(v18 - 16))
    {
      v25 = v14 + v16;
      Asn1Coder::AddBitToBuffer(a1, *(v14 + v16 - 8));
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v39 = *(a1 + 8);
        v40 = *(a1 + 12);
        LODWORD(v24) = *(a1 + 16);
        goto LABEL_78;
      }

      Asn1Coder::AddBitToBuffer(a1, *(v25 - 7));
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v39 = *(a1 + 8);
        v40 = *(a1 + 12);
        LODWORD(v24) = *(a1 + 16);
        goto LABEL_78;
      }

      v26 = v14 + v16;
      Asn1Coder::AddBitToBuffer(a1, *(v14 + v16 - 6));
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v39 = *(a1 + 8);
        v40 = *(a1 + 12);
        LODWORD(v24) = *(a1 + 16);
        goto LABEL_78;
      }

      v27 = Asn1Coder::EncodeInteger(a1, 0, 511, *(v26 - 4));
      if (v27)
      {
        v5 = v27;
        SuplAsn1Logger::TraceError(v27, *(a1 + 8), *(a1 + 12));
        v39 = *(a1 + 8);
        v40 = *(a1 + 12);
        LODWORD(v24) = v5;
        goto LABEL_78;
      }

      if (*(v25 - 8))
      {
        v24 = asn1PE_CPICH_Ec_N0(a1, *(v14 + v16 - 2));
        if (v24)
        {
          v5 = v24;
          v39 = *(a1 + 8);
          v40 = *(a1 + 12);
          goto LABEL_78;
        }
      }

      if (*(v25 - 7))
      {
        v24 = asn1PE_CPICH_RSCP(a1, *(v14 + v16));
        if (v24)
        {
          v5 = v24;
          v39 = *(a1 + 8);
          v40 = *(a1 + 12);
          goto LABEL_78;
        }
      }

      if (*(v26 - 6))
      {
        v24 = asn1PE_Pathloss(a1, *(v14 + v16 + 2));
        if (v24)
        {
          v5 = v24;
          v39 = *(a1 + 8);
          v40 = *(a1 + 12);
          goto LABEL_78;
        }
      }

      goto LABEL_52;
    }

    if (v20 != 1)
    {
      break;
    }

    v21 = v14 + v16;
    Asn1Coder::AddBitToBuffer(a1, *(v14 + v16 + 8));
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v39 = *(a1 + 8);
      v40 = *(a1 + 12);
      LODWORD(v24) = *(a1 + 16);
      goto LABEL_78;
    }

    Asn1Coder::AddBitToBuffer(a1, *(v21 + 9));
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v39 = *(a1 + 8);
      v40 = *(a1 + 12);
      LODWORD(v24) = *(a1 + 16);
      goto LABEL_78;
    }

    v22 = v14 + v16;
    Asn1Coder::AddBitToBuffer(a1, *(v14 + v16 + 10));
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v39 = *(a1 + 8);
      v40 = *(a1 + 12);
      LODWORD(v24) = *(a1 + 16);
      goto LABEL_78;
    }

    Asn1Coder::AddBitToBuffer(a1, *(v22 + 11));
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v39 = *(a1 + 8);
      v40 = *(a1 + 12);
      LODWORD(v24) = *(a1 + 16);
      goto LABEL_78;
    }

    v23 = asn1PE_CellParametersID(a1, *(v14 + v16 + 12));
    v5 = v23;
    if (v23 || !*(v21 + 8))
    {
      v28 = *(a1 + 8);
      v29 = *(a1 + 12);
      goto LABEL_51;
    }

    v23 = asn1PE_TGSN(a1, *(v14 + v16 + 13));
    v5 = v23;
    if (v23 || !*(v21 + 9))
    {
      v28 = *(a1 + 8);
      v29 = *(a1 + 12);
      goto LABEL_51;
    }

    v23 = asn1PE_PrimaryCCPCH_RSCP(a1, *(v14 + v16 + 14));
    v5 = v23;
    if (v23 || !*(v22 + 10))
    {
      v28 = *(a1 + 8);
      v29 = *(a1 + 12);
      goto LABEL_51;
    }

    v23 = asn1PE_Pathloss(a1, *(v14 + v16 + 16));
    v5 = v23;
    if (v23 || !*(v22 + 11))
    {
      v28 = *(a1 + 8);
      v29 = *(a1 + 12);
LABEL_51:
      SuplAsn1Logger::TraceError(v23, v28, v29);
      if (v5)
      {
        goto LABEL_79;
      }

      goto LABEL_52;
    }

    v24 = asn1PE_TimeslotISCP_List(a1, (v14 + v16 + 24));
    if (v24)
    {
      v5 = v24;
      v39 = *(a1 + 8);
      v40 = *(a1 + 12);
      goto LABEL_78;
    }

LABEL_52:
    ++v15;
    v14 = *(v10 + 2);
    v16 += 72;
    if (v15 >= 0x8E38E38E38E38E39 * ((*(v10 + 3) - v14) >> 3))
    {
      goto LABEL_53;
    }
  }

  if (v20 == 255)
  {
    v5 = 1;
    *(a1 + 16) = 1;
    v39 = *(a1 + 8);
    v40 = *(a1 + 12);
    LODWORD(v24) = 1;
  }

  else
  {
    v5 = 4;
    *(a1 + 16) = 4;
    v39 = *(a1 + 8);
    v40 = *(a1 + 12);
    LODWORD(v24) = 4;
  }

LABEL_78:
  SuplAsn1Logger::TraceError(v24, v39, v40);
LABEL_79:
  v32 = *(a1 + 8);
  v33 = *(a1 + 12);
  LODWORD(v19) = v5;
LABEL_80:
  SuplAsn1Logger::TraceError(v19, v32, v33);
  v30 = *(a1 + 8);
  v31 = *(a1 + 12);
  LODWORD(v17) = v5;
LABEL_81:
  SuplAsn1Logger::TraceError(v17, v30, v31);
  v36 = *(a1 + 8);
  v37 = *(a1 + 12);
  LODWORD(v13) = v5;
LABEL_82:
  SuplAsn1Logger::TraceError(v13, v36, v37);
  v34 = *(a1 + 8);
  v35 = *(a1 + 12);
  LODWORD(v11) = v5;
LABEL_83:
  SuplAsn1Logger::TraceError(v11, v34, v35);
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  LODWORD(v4) = v5;
LABEL_84:
  SuplAsn1Logger::TraceError(v4, v6, v7);
  return v5;
}

uint64_t asn1PE_WcdmaCellInformation(uint64_t a1, uint64_t *a2)
{
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_15:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    return v4;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_15;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 1));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_15;
  }

  Asn1Coder::AddBitToBuffer(a1, *(a2 + 2));
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_15;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 999, *(a2 + 2));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 999, *(a2 + 3));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 0xFFFFFFF, *(a2 + 2));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  if (*a2)
  {
    v7 = asn1PE_FrequencyInfo(a1, a2 + 12);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (*(a2 + 1))
  {
    v7 = Asn1Coder::EncodeInteger(a1, 0, 511, *(a2 + 11));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (!*(a2 + 2))
  {
    return 0;
  }

  v7 = asn1PE_MeasuredResultsList(a1, a2 + 3);
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  return v4;
}

uint64_t asn1PE_NMR(uint64_t a1, uint64_t *a2)
{
  v4 = Asn1Coder::EncodeInteger(a1, 1, 15, -1431655765 * ((a2[1] - *a2) >> 2));
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_16:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    return v5;
  }

  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      Asn1Coder::AddBitToBuffer(a1, 0);
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v13 = *(a1 + 8);
        v14 = *(a1 + 12);
        LODWORD(v11) = *(a1 + 16);
        goto LABEL_15;
      }

      v11 = Asn1Coder::EncodeInteger(a1, 0, 1023, *(v8 + v9));
      if (v11)
      {
        v5 = v11;
        v13 = *(a1 + 8);
        v14 = *(a1 + 12);
        goto LABEL_15;
      }

      v12 = v8 + v9;
      v11 = Asn1Coder::EncodeInteger(a1, 0, 63, *(v12 + 4));
      if (v11)
      {
        v5 = v11;
        v13 = *(a1 + 8);
        v14 = *(a1 + 12);
        goto LABEL_15;
      }

      v11 = Asn1Coder::EncodeInteger(a1, 0, 63, *(v12 + 8));
      if (v11)
      {
        break;
      }

      ++v10;
      v8 = *a2;
      v9 += 12;
      if (v10 >= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2))
      {
        return 0;
      }
    }

    v5 = v11;
    v13 = *(a1 + 8);
    v14 = *(a1 + 12);
LABEL_15:
    SuplAsn1Logger::TraceError(v11, v13, v14);
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = v5;
    goto LABEL_16;
  }

  return 0;
}

uint64_t asn1PE_GsmCellInformation(uint64_t a1, unsigned __int8 *a2)
{
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_15:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    return v4;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_15;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[1]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_15;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 999, *(a2 + 1));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 999, *(a2 + 2));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 0xFFFF, *(a2 + 3));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 0xFFFF, *(a2 + 4));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  if (*a2)
  {
    v7 = asn1PE_NMR(a1, a2 + 2);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_15;
    }
  }

  if (!a2[1])
  {
    return 0;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 255, a2[40]);
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_15;
  }

  return v4;
}

void ASN1T_CellInfo::~ASN1T_CellInfo(ASN1T_CellInfo *this)
{
  v8[1] = *MEMORY[0x29EDCA608];
  if (*this == 4)
  {
    v2 = *(this + 16);
    if (v2)
    {
      v8[0] = (v2 + 136);
      std::vector<ASN1T_MeasResultEUTRA>::__destroy_vector::operator()[abi:ne200100](v8);
      v3 = *(v2 + 104);
      if (v3)
      {
        *(v2 + 112) = v3;
        operator delete(v3);
      }

      v4 = *(v2 + 72);
      if (v4)
      {
        *(v2 + 80) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 48);
      if (v5)
      {
        *(v2 + 56) = v5;
        operator delete(v5);
      }

      v6 = *(v2 + 24);
      if (v6)
      {
        *(v2 + 32) = v6;
        operator delete(v6);
      }

      MEMORY[0x29C29EB20](v2, 0x1030C40AD30468BLL);
      *(this + 16) = 0;
    }
  }

  v8[0] = (this + 80);
  std::vector<ASN1T_MeasuredResults>::__destroy_vector::operator()[abi:ne200100](v8);
  v7 = *(this + 3);
  if (v7)
  {
    *(this + 4) = v7;
    operator delete(v7);
  }
}

uint64_t asn1PE_CellInfo(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  Asn1Coder::AddBitToBuffer(a1, v4 == 4);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_3;
  }

  if (v4 != 4)
  {
    v8 = Asn1Coder::EncodeInteger(a1, 0, 2, *a2 - 1);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_3;
    }

    v10 = *a2;
    if (v10 <= 1)
    {
      if (!*a2)
      {
        v5 = 1;
        *(a1 + 16) = 1;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        v14 = 1;
        goto LABEL_26;
      }

      if (v10 != 1)
      {
LABEL_25:
        v5 = 4;
        *(a1 + 16) = 4;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        v14 = 4;
        goto LABEL_26;
      }

      v11 = asn1PE_GsmCellInformation(a1, a2 + 8);
    }

    else
    {
      if (v10 != 2)
      {
        if (v10 != 3)
        {
          if (v10 == 4)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v5 = 1;
        *(a1 + 16) = 1;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        v14 = 1;
LABEL_26:
        SuplAsn1Logger::TraceError(v14, v12, v13);
LABEL_27:
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        LODWORD(v8) = v5;
        goto LABEL_3;
      }

      v11 = asn1PE_WcdmaCellInformation(a1, a2 + 7);
    }

    v5 = v11;
    if (!v11)
    {
      return v5;
    }

    goto LABEL_27;
  }

  if (*(a2 + 16))
  {
    v8 = asn1PE_CellInfo_VER2(a1, a2);
    v5 = v8;
    if (!v8)
    {
      return v5;
    }

    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v5 = 1;
    LODWORD(v8) = 1;
  }

LABEL_3:
  SuplAsn1Logger::TraceError(v8, v6, v7);
  return v5;
}

uint64_t asn1PE_LocationId(uint64_t a1, unsigned __int8 *a2)
{
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_7:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    return v4;
  }

  v7 = asn1PE_CellInfo(a1, a2);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_7;
  }

  v7 = asn1PE_Status(a1, a2 + 136);
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_7;
  }

  return v4;
}

uint64_t ASN1T_LocationId::operator=(uint64_t a1, unsigned __int8 *a2)
{
  v66 = *MEMORY[0x29EDCA608];
  if (*a1 == 4)
  {
    v4 = *(a1 + 128);
    if (v4)
    {
      *__str = v4 + 17;
      std::vector<ASN1T_MeasResultEUTRA>::__destroy_vector::operator()[abi:ne200100](__str);
      v5 = v4[13];
      if (v5)
      {
        v4[14] = v5;
        operator delete(v5);
      }

      v6 = v4[9];
      if (v6)
      {
        v4[10] = v6;
        operator delete(v6);
      }

      v7 = v4[6];
      if (v7)
      {
        v4[7] = v7;
        operator delete(v7);
      }

      v8 = v4[3];
      if (v8)
      {
        v4[4] = v8;
        operator delete(v8);
      }

      MEMORY[0x29C29EB20](v4, 0x1030C40AD30468BLL);
      *(a1 + 128) = 0;
    }
  }

  v9 = *a2;
  *a1 = v9;
  if (v9 <= 1)
  {
    if (!v9)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        return a1;
      }

      goto LABEL_64;
    }

    v26 = *(a2 + 1);
    *(a1 + 16) = *(a2 + 8);
    *(a1 + 8) = v26;
    if (a1 != a2)
    {
      v27 = *(a1 + 24);
      v28 = *(a2 + 3);
      v29 = *(a2 + 4);
      v30 = v29 - v28;
      v31 = *(a1 + 40);
      if (v31 - v27 < (v29 - v28))
      {
        v32 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 2);
        if (v27)
        {
          *(a1 + 32) = v27;
          operator delete(v27);
          v31 = 0;
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
        }

        if (v32 <= 0x1555555555555555)
        {
          v33 = 0xAAAAAAAAAAAAAAABLL * (v31 >> 2);
          v34 = 2 * v33;
          if (2 * v33 <= v32)
          {
            v34 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 2);
          }

          if (v33 >= 0xAAAAAAAAAAAAAAALL)
          {
            v35 = 0x1555555555555555;
          }

          else
          {
            v35 = v34;
          }

          if (v35 <= 0x1555555555555555)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_NMRelement>>(a1 + 24, v35);
          }

          std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
        }

        std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
      }

      v54 = *(a1 + 32);
      v55 = v54 - v27;
      if (v54 - v27 >= v30)
      {
        if (v29 != v28)
        {
          memmove(*(a1 + 24), *(a2 + 3), v29 - v28);
        }

        v57 = &v27[v30];
      }

      else
      {
        v56 = &v28[v55];
        if (v54 != v27)
        {
          memmove(*(a1 + 24), *(a2 + 3), v55);
          v54 = *(a1 + 32);
        }

        if (v29 != v56)
        {
          memmove(v54, v56, v29 - v56);
        }

        v57 = &v54[v29 - v56];
      }

      *(a1 + 32) = v57;
    }

    *(a1 + 48) = a2[48];
  }

  else
  {
    if (v9 != 2)
    {
      if (v9 != 3)
      {
        if (v9 == 4)
        {
          v10 = operator new(0xA0uLL, MEMORY[0x29EDC9418]);
          if (v10)
          {
            v11 = v10;
            *(v10 + 2) = 0;
            v10[16] = 0;
            *(v10 + 24) = 0u;
            v12 = (v10 + 24);
            *(v11 + 18) = 0;
            *(v11 + 19) = 0;
            *(v11 + 17) = 0;
            *(v11 + 40) = 0u;
            *(v11 + 56) = 0u;
            *(v11 + 72) = 0u;
            *(v11 + 82) = 0u;
            *(v11 + 14) = 0;
            *(v11 + 15) = 0;
            *(v11 + 13) = 0;
            *(v11 + 32) = 0;
            *v11 = -1;
            *(a1 + 128) = v11;
            v13 = *(a2 + 16);
            if (v13)
            {
              *v11 = *v13;
              *(v11 + 2) = *(v13 + 8);
              v11[16] = *(v13 + 16);
              if (v11 != v13)
              {
                std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(v12, *(v13 + 24), *(v13 + 32), *(v13 + 32) - *(v13 + 24));
                std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(v11 + 6, *(v13 + 48), *(v13 + 56), *(v13 + 56) - *(v13 + 48));
                std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v11 + 9, *(v13 + 72), *(v13 + 80), *(v13 + 80) - *(v13 + 72));
                v13 = *(a2 + 16);
                v11 = *(a1 + 128);
              }

              *(v11 + 48) = *(v13 + 96);
              if (v11 != v13)
              {
                std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v11 + 13, *(v13 + 104), *(v13 + 112), *(v13 + 112) - *(v13 + 104));
                v13 = *(a2 + 16);
                v11 = *(a1 + 128);
              }

              v11[128] = *(v13 + 128);
              v14 = *(a2 + 16);
              v15 = *(a1 + 128);
              *(v15 + 130) = *(v14 + 130);
              if (v15 != v14)
              {
                v17 = (v15 + 136);
                v16 = *(v15 + 136);
                v19 = *(v14 + 136);
                v18 = *(v14 + 144);
                v20 = v18 - v19;
                v21 = *(v15 + 152);
                if (v21 - v16 < (v18 - v19))
                {
                  v22 = 0xEEEEEEEEEEEEEEEFLL * (v20 >> 3);
                  if (v16)
                  {
                    std::vector<ASN1T_MeasResultEUTRA>::__base_destruct_at_end[abi:ne200100](v15 + 136, *(v15 + 136));
                    operator delete(*v17);
                    v21 = 0;
                    *v17 = 0;
                    *(v15 + 144) = 0;
                    *(v15 + 152) = 0;
                  }

                  if (v22 <= 0x222222222222222)
                  {
                    v23 = 0xEEEEEEEEEEEEEEEFLL * (v21 >> 3);
                    v24 = 2 * v23;
                    if (2 * v23 <= v22)
                    {
                      v24 = v22;
                    }

                    if (v23 >= 0x111111111111111)
                    {
                      v25 = 0x222222222222222;
                    }

                    else
                    {
                      v25 = v24;
                    }

                    if (v25 <= 0x222222222222222)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_MeasResultEUTRA>>(v15 + 136, v25);
                    }

                    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
                  }

                  std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
                }

                v63 = *(v15 + 144) - v16;
                if (v63 >= v20)
                {
                  v64 = std::__copy_impl::operator()[abi:ne200100]<ASN1T_MeasResultEUTRA *,ASN1T_MeasResultEUTRA *,ASN1T_MeasResultEUTRA *>(v19, v18, v16);
                  std::vector<ASN1T_MeasResultEUTRA>::__base_destruct_at_end[abi:ne200100](v15 + 136, v64);
                }

                else
                {
                  std::__copy_impl::operator()[abi:ne200100]<ASN1T_MeasResultEUTRA *,ASN1T_MeasResultEUTRA *,ASN1T_MeasResultEUTRA *>(v19, v19 + v63, v16);
                  *(v15 + 144) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ASN1T_MeasResultEUTRA>,ASN1T_MeasResultEUTRA*,ASN1T_MeasResultEUTRA*,ASN1T_MeasResultEUTRA*>(v15 + 136, v19 + v63, v18, *(v15 + 144));
                }
              }
            }
          }

          else
          {
            *(a1 + 128) = 0;
          }
        }

        return a1;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        return a1;
      }

LABEL_64:
      bzero(__str, 0x410uLL);
      v52 = mach_continuous_time();
      v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v52), "SPL", 69, "operator=", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v53, 0, 1);
      return a1;
    }

    v36 = *(a2 + 28);
    v37 = a2[58];
    *(a1 + 58) = v37;
    *(a1 + 56) = v36;
    *(a1 + 60) = *(a2 + 15);
    *(a1 + 64) = *(a2 + 16);
    v38 = *(a2 + 68);
    *(a1 + 76) = *(a2 + 38);
    *(a1 + 68) = v38;
    *(a1 + 78) = *(a2 + 39);
    if (a1 != a2 && v37 == 1)
    {
      v39 = (a1 + 80);
      v40 = *(a1 + 80);
      v42 = *(a2 + 10);
      v41 = *(a2 + 11);
      v43 = v41 - v42;
      v44 = *(a1 + 96);
      if (v44 - v40 < (v41 - v42))
      {
        v45 = 0xCCCCCCCCCCCCCCCDLL * (v43 >> 3);
        if (v40)
        {
          v46 = *(a1 + 88);
          v47 = *(a1 + 80);
          if (v46 != v40)
          {
            do
            {
              v48 = v46 - 40;
              *__str = v46 - 24;
              std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](__str);
              v46 = v48;
            }

            while (v48 != v40);
            v47 = *v39;
          }

          *(a1 + 88) = v40;
          operator delete(v47);
          v44 = 0;
          *v39 = 0;
          *(a1 + 88) = 0;
          *(a1 + 96) = 0;
        }

        if (v45 <= 0x666666666666666)
        {
          v49 = 0xCCCCCCCCCCCCCCCDLL * (v44 >> 3);
          v50 = 2 * v49;
          if (2 * v49 <= v45)
          {
            v50 = v45;
          }

          if (v49 >= 0x333333333333333)
          {
            v51 = 0x666666666666666;
          }

          else
          {
            v51 = v50;
          }

          if (v51 <= 0x666666666666666)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_MeasuredResults>>(a1 + 80, v51);
          }

          std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
        }

        std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
      }

      v58 = *(a1 + 88) - v40;
      if (v58 >= v43)
      {
        v60 = std::__copy_impl::operator()[abi:ne200100]<ASN1T_MeasuredResults *,ASN1T_MeasuredResults *,ASN1T_MeasuredResults *>(v42, v41, *(a1 + 80));
        v61 = *(a1 + 88);
        if (v61 != v60)
        {
          do
          {
            v62 = v61 - 5;
            *__str = v61 - 3;
            std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](__str);
            v61 = v62;
          }

          while (v62 != v60);
        }

        *(a1 + 88) = v60;
      }

      else
      {
        std::__copy_impl::operator()[abi:ne200100]<ASN1T_MeasuredResults *,ASN1T_MeasuredResults *,ASN1T_MeasuredResults *>(v42, (v42 + v58), *(a1 + 80));
        *(a1 + 88) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ASN1T_MeasuredResults>,ASN1T_MeasuredResults*,ASN1T_MeasuredResults*,ASN1T_MeasuredResults*>(a1 + 80, (v42 + v58), v41, *(a1 + 88));
      }
    }
  }

  return a1;
}

void std::vector<ASN1T_MeasResultEUTRA>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ASN1T_MeasResultEUTRA>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ASN1T_MeasResultEUTRA>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 120)
  {
    v5 = *(i - 32);
    if (v5)
    {
      *(i - 24) = v5;
      operator delete(v5);
    }

    v6 = *(i - 56);
    if (v6)
    {
      *(i - 48) = v6;
      operator delete(v6);
    }

    v7 = *(i - 80);
    if (v7)
    {
      *(i - 72) = v7;
      operator delete(v7);
    }

    v8 = *(i - 104);
    if (v8)
    {
      *(i - 96) = v8;
      operator delete(v8);
    }
  }

  *(a1 + 8) = a2;
}

void ASN1T_PLMN_Identity::~ASN1T_PLMN_Identity(ASN1T_PLMN_Identity *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void std::vector<ASN1T_MeasuredResults>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v7[1] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 40;
        v7[0] = (v4 - 24);
        std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ASN1T_CellMeasuredResults>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ASN1T_CellMeasuredResults>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_NMRelement>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<ASN1T_MCC_MNC_Digit>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<ASN1T_MCC_MNC_Digit>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ASN1T_MeasResultEUTRA>,ASN1T_MeasResultEUTRA*,ASN1T_MeasResultEUTRA*,ASN1T_MeasResultEUTRA*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = *MEMORY[0x29EDCA608];
  v9 = a4;
  v10 = a4;
  v11[0] = a1;
  v11[1] = &v9;
  v11[2] = &v10;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      v7 = *(v6 + 8);
      *(v4 + 16) = 0;
      *(v4 + 8) = v7;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      std::vector<ASN1T_MCC_MNC_Digit>::__init_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>((v4 + 16), *(v6 + 16), *(v6 + 24), *(v6 + 24) - *(v6 + 16));
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      *(v4 + 56) = 0;
      std::vector<ASN1T_MCC_MNC_Digit>::__init_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>((v4 + 40), *(v6 + 40), *(v6 + 48), *(v6 + 48) - *(v6 + 40));
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      *(v4 + 80) = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v4 + 64), *(v6 + 64), *(v6 + 72), *(v6 + 72) - *(v6 + 64));
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
      *(v4 + 104) = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v4 + 88), *(v6 + 88), *(v6 + 96), *(v6 + 96) - *(v6 + 88));
      *(v4 + 112) = *(v6 + 112);
      v6 += 120;
      v4 = v10 + 120;
      v10 += 120;
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_MeasResultEUTRA>,ASN1T_MeasResultEUTRA*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void sub_29954EACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_MeasResultEUTRA>,ASN1T_MeasResultEUTRA*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<ASN1T_MCC_MNC_Digit>::__init_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<ASN1T_MCC_MNC_Digit>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29954EBAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_MeasResultEUTRA>,ASN1T_MeasResultEUTRA*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 32);
      if (v5)
      {
        *(v3 - 24) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 56);
      if (v6)
      {
        *(v3 - 48) = v6;
        operator delete(v6);
      }

      v7 = *(v3 - 80);
      if (v7)
      {
        *(v3 - 72) = v7;
        operator delete(v7);
      }

      v8 = *(v3 - 104);
      if (v8)
      {
        *(v3 - 96) = v8;
        operator delete(v8);
      }

      v3 -= 120;
    }
  }

  return a1;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<ASN1T_MeasResultEUTRA *,ASN1T_MeasResultEUTRA *,ASN1T_MeasResultEUTRA *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = a1 + v6;
      *v7 = *(a1 + v6);
      *(v7 + 8) = *(a1 + v6 + 8);
      if (a3 != a1)
      {
        std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>((v7 + 16), *(v8 + 16), *(v8 + 24), *(v8 + 24) - *(v8 + 16));
        std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>((v7 + 40), *(v8 + 40), *(v8 + 48), *(v8 + 48) - *(v8 + 40));
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v7 + 64), *(v8 + 64), *(v8 + 72), *(v8 + 72) - *(v8 + 64));
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v7 + 88), *(v8 + 88), *(v8 + 96), *(v8 + 96) - *(v8 + 88));
      }

      *(v7 + 112) = *(v8 + 112);
      v6 += 120;
    }

    while (v8 + 120 != a2);
    a3 += v6;
  }

  return a3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_MeasResultEUTRA>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ASN1T_MeasuredResults>,ASN1T_MeasuredResults*,ASN1T_MeasuredResults*,ASN1T_MeasuredResults*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v13 = *MEMORY[0x29EDCA608];
  v9 = a4;
  v10 = a4;
  v11[0] = a1;
  v11[1] = &v9;
  v11[2] = &v10;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v4 + 7) = *(v6 + 7);
      *v4 = v7;
      v4[3] = 0;
      v4[4] = 0;
      v4[2] = 0;
      std::vector<ASN1T_CellMeasuredResults>::__init_with_size[abi:ne200100]<ASN1T_CellMeasuredResults*,ASN1T_CellMeasuredResults*>(v4 + 2, v6[2], v6[3], 0x8E38E38E38E38E39 * ((v6[3] - v6[2]) >> 3));
      v6 += 5;
      v4 = v10 + 5;
      v10 += 5;
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_MeasuredResults>,ASN1T_MeasuredResults*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void sub_29954EF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_MeasuredResults>,ASN1T_MeasuredResults*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<ASN1T_CellMeasuredResults>::__init_with_size[abi:ne200100]<ASN1T_CellMeasuredResults*,ASN1T_CellMeasuredResults*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ASN1T_CellMeasuredResults>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29954EFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 8) = v4;
  std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<ASN1T_CellMeasuredResults>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_CellMeasuredResults>>(a1, a2);
  }

  std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_CellMeasuredResults>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ASN1T_CellMeasuredResults>,ASN1T_CellMeasuredResults*,ASN1T_CellMeasuredResults*,ASN1T_CellMeasuredResults*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v16 = *MEMORY[0x29EDCA608];
  v12 = a4;
  v13 = a4;
  v14[0] = a1;
  v14[1] = &v12;
  v14[2] = &v13;
  v15 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      *(v4 + 8) = *(v6 + 8);
      v7 = *(v6 + 16);
      *(v4 + 24) = *(v6 + 24);
      *(v4 + 16) = v7;
      v8 = *(v6 + 32);
      v9 = *(v6 + 40);
      *(v4 + 48) = 0;
      v10 = (v4 + 48);
      *(v10 - 8) = v9;
      *(v10 - 2) = v8;
      v10[1] = 0;
      v10[2] = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v10, *(v6 + 48), *(v6 + 56), *(v6 + 56) - *(v6 + 48));
      v6 += 72;
      v4 = v13 + 72;
      v13 += 72;
    }

    while (v6 != a3);
  }

  v15 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_CellMeasuredResults>,ASN1T_CellMeasuredResults*>>::~__exception_guard_exceptions[abi:ne200100](v14);
  return v4;
}

void sub_29954F1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_CellMeasuredResults>,ASN1T_CellMeasuredResults*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_CellMeasuredResults>,ASN1T_CellMeasuredResults*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_CellMeasuredResults>,ASN1T_CellMeasuredResults*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void sub_29954F250(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_CellMeasuredResults>,ASN1T_CellMeasuredResults*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 72;
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_MeasuredResults>,ASN1T_MeasuredResults*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_MeasuredResults>,ASN1T_MeasuredResults*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void sub_29954F340(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_MeasuredResults>,ASN1T_MeasuredResults*>::operator()[abi:ne200100](uint64_t a1)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 40;
      v4[0] = (v1 - 24);
      std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<ASN1T_MeasuredResults *,ASN1T_MeasuredResults *,ASN1T_MeasuredResults *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 7) = *(v5 + 7);
      *a3 = v6;
      if (a3 != v5)
      {
        v8 = (a3 + 2);
        v7 = a3[2];
        v10 = v5[2];
        v9 = v5[3];
        v11 = v9 - v10;
        v12 = a3[4];
        if (v12 - v7 < (v9 - v10))
        {
          if (v7)
          {
            std::vector<ASN1T_CellMeasuredResults>::clear[abi:ne200100](a3 + 2);
            operator delete(*v8);
            v12 = 0;
            *v8 = 0;
            a3[3] = 0;
            a3[4] = 0;
          }

          v13 = 0x8E38E38E38E38E39 * (v11 >> 3);
          if (v13 <= 0x38E38E38E38E38ELL)
          {
            v14 = 0x8E38E38E38E38E39 * (v12 >> 3);
            if (2 * v14 > v13)
            {
              v13 = 2 * v14;
            }

            if (v14 >= 0x1C71C71C71C71C7)
            {
              v15 = 0x38E38E38E38E38ELL;
            }

            else
            {
              v15 = v13;
            }

            std::vector<ASN1T_CellMeasuredResults>::__vallocate[abi:ne200100](a3 + 2, v15);
          }

          std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
        }

        v16 = a3[3] - v7;
        if (v16 >= v11)
        {
          v17 = std::__copy_impl::operator()[abi:ne200100]<ASN1T_CellMeasuredResults *,ASN1T_CellMeasuredResults *,ASN1T_CellMeasuredResults *>(v5[2], v5[3], v7);
          for (i = a3[3]; i != v17; i -= 72)
          {
            v19 = *(i - 24);
            if (v19)
            {
              *(i - 16) = v19;
              operator delete(v19);
            }
          }

          a3[3] = v17;
        }

        else
        {
          std::__copy_impl::operator()[abi:ne200100]<ASN1T_CellMeasuredResults *,ASN1T_CellMeasuredResults *,ASN1T_CellMeasuredResults *>(v5[2], (v10 + v16), v7);
          a3[3] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ASN1T_CellMeasuredResults>,ASN1T_CellMeasuredResults*,ASN1T_CellMeasuredResults*,ASN1T_CellMeasuredResults*>((a3 + 2), v10 + v16, v9, a3[3]);
        }
      }

      v5 += 5;
      a3 += 5;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<ASN1T_CellMeasuredResults *,ASN1T_CellMeasuredResults *,ASN1T_CellMeasuredResults *>(char **a1, char **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 7;
    do
    {
      v6 = v5 - 7;
      *a3 = *(v5 - 7);
      *(a3 + 8) = *(v5 - 48);
      v7 = *(v5 - 5);
      *(a3 + 23) = *(v5 - 33);
      *(a3 + 16) = v7;
      v8 = *(v5 - 3);
      *(a3 + 40) = *(v5 - 16);
      *(a3 + 32) = v8;
      if (a3 != v5 - 7)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a3 + 48), *(v5 - 1), *v5, *v5 - *(v5 - 1));
      }

      a3 += 72;
      v5 += 9;
    }

    while (v6 + 9 != a2);
  }

  return a3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_MeasuredResults>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void GNSS_Write_GNB_Ctrl(char **result)
{
  if (result)
  {
    v3 = *result;
    v2 = result[1];
    if (v2 != *result)
    {
      if (v2 > *result)
      {
        v3 = result[3];
      }

      v4 = v3 - v2;
      v5 = GN_GPS_Write_GNB_Ctrl((v3 - v2), v2);
      GNB_Debug_BlockMove(result[1], v5);
      v6 = &result[1][v5];
      result[1] = v6;
      if (v6 >= result[3])
      {
        v6 = result[2];
        result[1] = v6;
        if (v5 == v4)
        {
          v7 = GN_GPS_Write_GNB_Ctrl((*result - v6), v6);
          GNB_Debug_BlockMove(result[1], v7);
          v6 = &result[1][v7];
          result[1] = v6;
        }
      }

      if (v6 == *result)
      {
        v8 = result[2];
        *result = v8;
        result[1] = v8;
      }
    }
  }
}

void G5K_ME_Send_WakeUp(char **a1)
{
  v2 = (*a1)++;
  *v2 = 10;
  v3 = *a1;
  if (*a1 >= a1[3])
  {
    v3 = a1[2];
  }

  *a1 = v3 + 1;
  *v3 = 35;
  v4 = *a1;
  if (*a1 >= a1[3])
  {
    v4 = a1[2];
  }

  v5 = 0;
  v6 = 87;
  v7 = v4;
  do
  {
    *a1 = v7 + 1;
    *v7 = v6;
    v7 = *a1;
    if (*a1 >= a1[3])
    {
      v7 = a1[2];
      *a1 = v7;
    }

    v6 = str_16[++v5];
  }

  while (v5 != 4);
  v8 = mach_continuous_time();
  sprintf_sp1u(a1, (*&g_MacClockTicksToMsRelation * v8));
  v9 = (*a1)++;
  *v9 = 32;
  v10 = *a1;
  if (*a1 >= a1[3])
  {
    v10 = a1[2];
  }

  for (i = 0; i != 10; ++i)
  {
    v12 = 91;
    v13 = 1u;
    do
    {
      *a1 = v10 + 1;
      *v10 = v12;
      v10 = *a1;
      if (*a1 >= a1[3])
      {
        v10 = a1[2];
        *a1 = v10;
      }

      v12 = str_1_7[v13++];
    }

    while (v13 != 10);
  }

  *a1 = v10 + 1;
  *v10 = 32;
  v14 = *a1;
  v15 = a1[3];
  if (*a1 >= v15)
  {
    v14 = a1[2];
    *a1 = v14;
  }

  if (v4 == v14)
  {
    v19 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      v18 = *v4++;
      v17 = v18;
      if (v4 >= v15)
      {
        v4 = a1[2];
      }

      v16 += v17;
    }

    while (v4 != v14);
    v19 = v16;
  }

  *a1 = v14 + 1;
  *v14 = 38;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf_02x(a1, v19);
  v20 = (*a1)++;
  *v20 = 10;
  v21 = *a1;
  if (*a1 >= a1[3])
  {
    v21 = a1[2];
  }

  *a1 = v21 + 1;
  *v21 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  GNSS_Write_GNB_Ctrl(a1);
}

char **G5K_ME_Send_Sleep(char **a1, char **a2, uint64_t a3, uint64_t a4, int a5)
{
  v18 = *MEMORY[0x29EDCA608];
  GNSS_Write_GNB_Ctrl(a1);
  GNSS_GNB_Debug_Ctl(a2);
  if (g_Enable_GNB_Debug)
  {
    v10 = (*a2)++;
    *v10 = 10;
    v11 = *a2;
    if (*a2 >= a2[3])
    {
      v11 = a2[2];
    }

    v12 = 35;
    v13 = 1u;
    do
    {
      *a2 = v11 + 1;
      *v11 = v12;
      v11 = *a2;
      if (*a2 >= a2[3])
      {
        v11 = a2[2];
        *a2 = v11;
      }

      v12 = str_2_5[v13++];
    }

    while (v13 != 8);
    sprintf_sp1u(a2, a3);
    sprintf_sp1u(a2, a4);
    v14 = (*a2)++;
    *v14 = 10;
    if (*a2 >= a2[3])
    {
      *a2 = a2[2];
    }
  }

  if (a5)
  {
    v17 = 0;
    v16[0] = BYTE1(a3);
    v16[1] = a3;
    v16[2] = BYTE1(a4);
    v16[3] = a4;
    STEU_Encode_c(a1, 83, 12, v16);
  }

  GNSS_Write_GNB_Ctrl(a1);
  return GNSS_GNB_Debug_Ctl(a2);
}

void G5K_ME_Send_Ctrl(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v222[103] = *MEMORY[0x29EDCA608];
  v9 = (*a1)++;
  *v9 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v10 = *(a3 + 952);
  v11 = *(a3 + 948);
  if (v10)
  {
    EvLog_nd("G5K_ME_Send_Ctrl: Fix_Int Updated ", 2, a3, *(a3 + 948), v10);
    v11 = *(a3 + 952);
    *(a3 + 948) = v11;
  }

  v198 = (a4 + 4096);
  v12 = *(*(p_api + 88) + 32);
  if (v11 >= 0x1F4)
  {
    v13 = 100;
  }

  else
  {
    v13 = 50;
  }

  v14 = -API_Get_Est_ME_TTick();
  do
  {
    v12 += v11;
  }

  while (v14 + v12 <= v13);
  v15 = *(a3 + 948);
  HIDWORD(v16) = 652835029 * v15;
  LODWORD(v16) = 652835029 * v15;
  if ((v16 >> 3) <= 0x418937)
  {
    v17 = *(p_api + 88);
      ;
    }

    v19 = *(v17 + 168);
    while (i < 0.0)
    {
      i = i + 604800.0;
    }

    v20 = *(v17 + 848) / 299792458.0;
    v21 = i + *(a3 + 1024) * 0.000000001;
    v22 = v21 - v21;
    v23 = v11 / 1000;
    if (v22 >= 0.7)
    {
      ++v23;
    }

    v24 = *(v17 + 32);
    v25 = (v19 + 1.0) * (v23 - v22) * 1000.0;
    v26 = vcvtd_n_u64_f64(v25 - v25, 0x10uLL);
    v190 = v24 + v25;
    v186 = v26;
    if (v20 < 0.004)
    {
      v27 = v24 + v25 - v12 + (v26 >> 15);
      v28 = v12 - v11 - (v25 + v24 + (v26 >> 15));
      do
      {
        v29 = v27;
        v27 -= v11;
        v28 += v11;
      }

      while (v29 > 10);
      v30 = 1 - v11;
      if (v29 > (1 - v11))
      {
        v30 = v29;
      }

      v31 = v30 + v28;
      if (v11 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v11;
      }

      v56 = v31 == 0;
      v33 = (v31 - (v31 != 0)) / v32;
      if (!v56)
      {
        ++v33;
      }

      v34 = v29 + v33 * v11;
      if (v34 <= -50)
      {
        v34 = -50;
      }

      if (v34 >= 0)
      {
        v35 = v34;
      }

      else
      {
        v35 = -v34;
      }

      if (v35 <= 2 && v20 >= 0.0001)
      {
        v34 = 0;
      }

      v12 += v34;
    }
  }

  else
  {
    v190 = 0;
    v186 = 0;
  }

  *(a2 + 536) = v12;
  G5K_ME_enc_n(a1, v12, v15);
  *v209 = *a4;
  *&v209[4] = *(a4 + 4);
  *&v209[6] = *(a4 + 6);
  *v210 = *(a4 + 16);
  *&v210[4] = *(a4 + 20);
  v211 = *(a4 + 14);
  v212 = *(a4 + 22);
  v213 = *(a4 + 26);
  v37 = *(a4 + 32);
  v214 = *(a4 + 28);
  v38 = *(a4 + 48);
  v215 = *(a4 + 52);
  v216 = v38;
  v217 = *(a4 + 6132);
  v218 = v37;
  v39 = *(a4 + 40);
  v219 = *(a4 + 36);
  v220 = v39;
  v221 = *(a4 + 44);
  *__b = v222;
  STEU_Encode(a1, 97, v209, __b);
  if (*__b - v209 != 45)
  {
    gn_report_assertion_failure("ME_enc_a: Wrong Length!");
  }

  v193 = a3;
  v200 = 0;
  v40 = *(&xmmword_2A1926940 + 1);
  if ((Core_Get_GPS_TOWAss(__b) & 1) == 0)
  {
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    *__b = 0u;
    v202 = 0u;
  }

  v41 = 0;
  v196 = a4;
  v197 = a4 + 4174;
  v42 = a4 + 3996;
  v43 = a4 + 60;
  do
  {
    v44 = *(v197 + 2 * v41);
    if (v44 >= 1)
    {
      v45 = *(v42 + (v44 - 1));
      if ((v45 & 0x8000000000000000) == 0)
      {
        v46 = v43 + 48 * v45;
        if (*(v46 + 4) == 1)
        {
          v47 = *(v46 + 14);
          if (*(v46 + 12))
          {
            v47 |= 0x10u;
          }

          if (*(v46 + 13))
          {
            v48 = v47 | 0x20;
          }

          else
          {
            v48 = v47;
          }

          v49 = *(v46 + 32) * 0.000000977517107 + *(v46 + 28) * 1.5;
          v50 = *(v46 + 8);
          v51 = *(v46 + 10);
          if (v50 == 2)
          {
            v51 = v51;
            if ((v51 - 7) < 0xF2u)
            {
              goto LABEL_85;
            }

            v49 = v49 + (10800 - *(v196 + 44)) + *(v40 + 1152 + 8 * (v51 + 7)) * -0.00000000333564095;
            v52 = 86400.0;
          }

          else
          {
            if (v50 == 4)
            {
              v49 = v49 + -14.0 + *(v40 + 1264) * -0.00000000333564095;
            }

            v52 = 604800.0;
          }

          if (v49 >= 0.0)
          {
            v53 = v49;
          }

          else
          {
            v53 = v49 + v52;
          }

          while (v53 > v52)
          {
            v53 = v53 - v52;
          }

          v54 = Encode_SVid_STE(v50, v51, &v200);
          if (v200)
          {
            v56 = v54 == 0;
          }

          else
          {
            v56 = 1;
          }

          if (v56)
          {
            EvCrt_nd("ME_enc_s: Invalid Constel / SV ID ", 2, v55, v200, v54);
          }

          else
          {
            v209[0] = v200;
            v209[1] = v54;
            v57 = *(v46 + 22);
            v209[2] = v48;
            *&v209[3] = (v57 * 48.7151802);
            v209[5] = (v57 * 48.7151802) >> 16;
            v199 = &v209[6];
            *&v209[6] = (v53 * 1000.0);
            v209[8] = (v53 * 1000.0) >> 16;
            v58 = v53 * 1000.0 - (v53 * 1000.0);
            v209[9] = (v53 * 1000.0) >> 24;
            *&v209[10] = vcvtd_n_s64_f64(v58, 0x10uLL);
            LOWORD(v58) = *(v46 + 18);
            *&v209[12] = (*&v58 * 1.90293673);
            v59 = *(v46 + 26);
            if (v59 < 0x200)
            {
              v64 = 2149582851 * (v59 << 16);
              v62 = v64 >> 41;
              v63 = v64 >> 49;
              v60 = *(v46 + 8);
            }

            else
            {
              v60 = *(v46 + 8);
              if (v60 == 3)
              {
                v61 = 65280;
              }

              else
              {
                v61 = 0x8000;
              }

              if (v60 == 3)
              {
                LOBYTE(v62) = -1;
              }

              else
              {
                LOBYTE(v62) = 0;
              }

              LODWORD(v63) = v61 >> 8;
            }

            v65 = 0;
            v210[0] = v62;
            v210[1] = v63;
            v210[2] = 0;
            *&v66 = *(v46 + 40) * 0.475734182;
            *&v210[3] = *&v66;
            LOBYTE(v66) = *(v46 + 42);
            v67 = (v66 * 1.90293673);
            if (v67 >= 0xFF)
            {
              LOBYTE(v67) = -1;
            }

            v210[5] = v67;
            v211 = *(v46 + 43);
            if (v60 == 1)
            {
              v65 = __b[*(v46 + 10) - 1];
            }

            v212 = v65;
            LOBYTE(v213) = 0;
            v199 = &v213 + 1;
            STEU_Encode(a1, 115, v209, &v199);
            if (v199 - v209 != 27)
            {
              gn_report_assertion_failure("ME_enc_s: Wrong Length!");
            }
          }
        }
      }
    }

LABEL_85:
    ++v41;
  }

  while (v41 != 178);
  LODWORD(v199) = 0;
  v68 = v197;
  if (v198[2036])
  {
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    do
    {
      Constell_Prn = Get_Constell_Prn((*(v197 + 2 * v69) - 1));
      if (Constell_Prn == 5)
      {
        v75 = v70 + 1;
      }

      else
      {
        v75 = v70;
      }

      if (Constell_Prn == 4)
      {
        v76 = v71 + 1;
      }

      else
      {
        v76 = v71;
      }

      if (Constell_Prn == 4)
      {
        v75 = v70;
      }

      if (Constell_Prn == 3)
      {
        v77 = v72 + 1;
      }

      else
      {
        v77 = v72;
      }

      if (Constell_Prn == 1)
      {
        v78 = v73 + 1;
      }

      else
      {
        v78 = v73;
      }

      if (Constell_Prn == 1)
      {
        v77 = v72;
      }

      if (Constell_Prn > 3)
      {
        v71 = v76;
        v70 = v75;
      }

      else
      {
        v73 = v78;
        v72 = v77;
      }

      ++v69;
    }

    while (v69 < v198[2036]);
    LODWORD(v199) = Constell_Prn;
  }

  else
  {
    LOBYTE(v73) = 0;
    LOBYTE(v72) = 0;
    LOBYTE(v71) = 0;
    LOBYTE(v70) = 0;
  }

  v194 = a1;
  v191 = v71;
  if (v198[2037])
  {
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    do
    {
      v84 = Get_Constell_Prn((*(v196 + 4530 + 2 * v79) - 1));
      if (v84 == 5)
      {
        v85 = v80 + 1;
      }

      else
      {
        v85 = v80;
      }

      if (v84 == 4)
      {
        v86 = v81 + 1;
      }

      else
      {
        v86 = v81;
      }

      if (v84 == 4)
      {
        v85 = v80;
      }

      if (v84 == 3)
      {
        v87 = v82 + 1;
      }

      else
      {
        v87 = v82;
      }

      if (v84 == 1)
      {
        v88 = v83 + 1;
      }

      else
      {
        v88 = v83;
      }

      if (v84 == 1)
      {
        v87 = v82;
      }

      if (v84 > 3)
      {
        v81 = v86;
        v80 = v85;
      }

      else
      {
        v83 = v88;
        v82 = v87;
      }

      ++v79;
    }

    while (v79 < v198[2037]);
    v192 = v81;
    LODWORD(v199) = v84;
    LOBYTE(v71) = v191;
    v68 = v197;
  }

  else
  {
    LOBYTE(v83) = 0;
    LOBYTE(v82) = 0;
    v192 = 0;
    LOBYTE(v80) = 0;
  }

  v187 = v80;
  v188 = v70;
  if (v198[2039])
  {
    v195 = v72;
    v89 = 0;
    v71 = 0;
    v72 = 0;
    v90 = 0;
    v91 = 0;
    do
    {
      v92 = Get_Constell_Prn((*(v196 + 4886 + 2 * v89) - 1));
      if (v92 == 5)
      {
        v93 = v71 + 1;
      }

      else
      {
        v93 = v71;
      }

      if (v92 == 4)
      {
        v94 = v72 + 1;
      }

      else
      {
        v94 = v72;
      }

      if (v92 == 4)
      {
        v93 = v71;
      }

      if (v92 == 3)
      {
        v95 = v90 + 1;
      }

      else
      {
        v95 = v90;
      }

      if (v92 == 1)
      {
        v96 = v91 + 1;
      }

      else
      {
        v96 = v91;
      }

      if (v92 == 1)
      {
        v95 = v90;
      }

      if (v92 > 3)
      {
        v72 = v94;
        v71 = v93;
      }

      else
      {
        v91 = v96;
        v90 = v95;
      }

      ++v89;
    }

    while (v89 < v198[2039]);
    v184 = v72;
    v185 = v71;
    LODWORD(v199) = v92;
    v68 = v197;
    LOBYTE(v71) = v191;
    LOBYTE(v72) = v195;
  }

  else
  {
    LOBYTE(v91) = 0;
    LOBYTE(v90) = 0;
    v184 = 0;
    v185 = 0;
  }

  v209[0] = 1;
  v209[1] = v73;
  v97 = &v209[2];
  *__b = &v209[2];
  if (v198[2036])
  {
    v98 = 0;
    v97 = *__b;
    do
    {
      v99 = LongPrnIdx_To_ShortPrnIdx((*(v68 + 2 * v98) - 1), &v199);
      if (v199 == 1)
      {
        *v97++ = v99 + 1;
      }

      ++v98;
    }

    while (v98 < v198[2036]);
    *__b = v97;
  }

  *v97 = v83;
  ++*__b;
  if (v198[2037])
  {
    v100 = 0;
    v101 = *__b;
    do
    {
      v102 = LongPrnIdx_To_ShortPrnIdx((*(v196 + 4530 + 2 * v100) - 1), &v199);
      if (v199 == 1)
      {
        *v101++ = v102 + 1;
      }

      ++v100;
    }

    while (v100 < v198[2037]);
    *__b = v101;
    v68 = v197;
  }

  if (!(v73 | v83))
  {
    **__b = 0;
    ++*__b;
    v103 = v193;
    v104 = v198;
    goto LABEL_178;
  }

  **__b = v91;
  ++*__b;
  v104 = v198;
  v103 = v193;
  v105 = v196;
  if (v198[2039])
  {
    v106 = 0;
    v107 = *__b;
    do
    {
      v108 = LongPrnIdx_To_ShortPrnIdx((*(v196 + 4886 + 2 * v106) - 1), &v199);
      if (v199 == 1)
      {
        *v107++ = v108 + 1;
      }

      ++v106;
    }

    while (v106 < v198[2039]);
    *__b = v107;
LABEL_178:
    v105 = v196;
  }

  STEU_Encode(v194, 118, v209, __b);
  if ((*__b - v209) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: G Too Long!");
  }

  v209[0] = 4;
  v209[1] = v104[2114];
  v109 = &v209[2];
  *__b = &v209[2];
  if (v209[1] >= 1)
  {
    v110 = 0;
    v109 = *__b;
    v111 = &v209[2];
    do
    {
      *v111 = *(v105 + 6196 + v110) + 8;
      ++v109;
      ++v110;
      v111 = v109;
    }

    while (v110 < v104[2114]);
    *__b = v109;
  }

  v112 = 0;
  *v109 = v104[2115];
  v113 = ++*__b;
  v114 = v105 + 6140;
  do
  {
    if (!*(v114 + 4 * v112))
    {
      *v113 = v112 + 1;
      v113 = ++*__b;
    }

    ++v112;
  }

  while (v112 != 14);
  if (v104[2114] || v104[2115])
  {
    v115 = 0;
    *v113 = v104[2116];
    v116 = ++*__b;
    do
    {
      if (*(v114 + 4 * v115) == 3)
      {
        *v116 = v115 + 1;
        v116 = ++*__b;
      }

      ++v115;
    }

    while (v115 != 14);
  }

  else
  {
    *v113 = 0;
    ++*__b;
  }

  STEU_Encode(v194, 118, v209, __b);
  if ((*__b - v209) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: R Too Long!");
  }

  v209[0] = 5;
  v209[1] = v72;
  v117 = &v209[2];
  *__b = &v209[2];
  if (v104[2036])
  {
    v118 = 0;
    v117 = *__b;
    do
    {
      v119 = LongPrnIdx_To_ShortPrnIdx((*(v68 + 2 * v118) - 1), &v199);
      if (v199 == 3)
      {
        *v117++ = v119 + 65;
      }

      ++v118;
    }

    while (v118 < v104[2036]);
    *__b = v117;
  }

  *v117 = v82;
  ++*__b;
  if (v104[2037])
  {
    v120 = 0;
    v121 = v105 + 4530;
    v122 = *__b;
    do
    {
      v123 = LongPrnIdx_To_ShortPrnIdx((*(v121 + 2 * v120) - 1), &v199);
      if (v199 == 3)
      {
        *v122++ = v123 + 65;
      }

      ++v120;
    }

    while (v120 < v104[2037]);
    *__b = v122;
    v105 = v196;
  }

  if (v72 | v82)
  {
    **__b = v90;
    ++*__b;
    v124 = v194;
    v126 = v187;
    v125 = v188;
    if (v104[2039])
    {
      v127 = 0;
      v128 = *__b;
      do
      {
        v129 = LongPrnIdx_To_ShortPrnIdx((*(v105 + 4886 + 2 * v127) - 1), &v199);
        if (v199 == 3)
        {
          *v128++ = v129 + 65;
        }

        ++v127;
      }

      while (v127 < v104[2039]);
      *__b = v128;
      v124 = v194;
    }
  }

  else
  {
    **__b = 0;
    ++*__b;
    v124 = v194;
    v126 = v187;
    v125 = v188;
  }

  STEU_Encode(v124, 118, v209, __b);
  if ((*__b - v209) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: E Too Long!");
  }

  v209[0] = 6;
  v209[1] = v71;
  v130 = &v209[2];
  *__b = &v209[2];
  if (v104[2036])
  {
    v131 = 0;
    v130 = *__b;
    do
    {
      v132 = LongPrnIdx_To_ShortPrnIdx((*(v68 + 2 * v131) - 1), &v199);
      if (v199 == 4)
      {
        *v130++ = v132 - 127;
      }

      ++v131;
    }

    while (v131 < v104[2036]);
    *__b = v130;
  }

  v133 = v192;
  *v130 = v192;
  ++*__b;
  if (v104[2037])
  {
    v134 = 0;
    v135 = *__b;
    do
    {
      v136 = LongPrnIdx_To_ShortPrnIdx((*(v105 + 4530 + 2 * v134) - 1), &v199);
      if (v199 == 4)
      {
        *v135++ = v136 - 127;
      }

      ++v134;
    }

    while (v134 < v104[2037]);
    *__b = v135;
    v124 = v194;
    v133 = v192;
  }

  if (!(v71 | v133))
  {
    **__b = 0;
    ++*__b;
    goto LABEL_239;
  }

  **__b = v184;
  ++*__b;
  v137 = &v209[2];
  if (v104[2039])
  {
    v138 = 0;
    v139 = *__b;
    do
    {
      v140 = LongPrnIdx_To_ShortPrnIdx((*(v105 + 4886 + 2 * v138) - 1), &v199);
      if (v199 == 4)
      {
        *v139++ = v140 - 127;
      }

      ++v138;
    }

    while (v138 < v104[2039]);
    *__b = v139;
LABEL_239:
    v137 = &v209[2];
  }

  STEU_Encode(v124, 118, v209, __b);
  if ((*__b - v209) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: B Too Long!");
  }

  v209[0] = 3;
  v209[1] = v125;
  *__b = &v209[2];
  if (v104[2036])
  {
    v141 = 0;
    v137 = *__b;
    do
    {
      v142 = LongPrnIdx_To_ShortPrnIdx((*(v68 + 2 * v141) - 1), &v199);
      if (v199 == 5)
      {
        *v137++ = v142 - 63;
      }

      ++v141;
    }

    while (v141 < v104[2036]);
    *__b = v137;
  }

  *v137 = v126;
  ++*__b;
  if (v104[2037])
  {
    v143 = 0;
    v144 = *__b;
    do
    {
      v145 = LongPrnIdx_To_ShortPrnIdx((*(v105 + 4530 + 2 * v143) - 1), &v199);
      if (v199 == 5)
      {
        *v144++ = v145 - 63;
      }

      ++v143;
    }

    while (v143 < v104[2037]);
    *__b = v144;
  }

  if (v125 | v126)
  {
    **__b = v185;
    ++*__b;
    if (v104[2039])
    {
      v146 = 0;
      v147 = *__b;
      do
      {
        v148 = LongPrnIdx_To_ShortPrnIdx((*(v105 + 4886 + 2 * v146) - 1), &v199);
        if (v199 == 5)
        {
          *v147++ = v148 - 63;
        }

        ++v146;
      }

      while (v146 < v104[2039]);
      *__b = v147;
    }
  }

  else
  {
    **__b = 0;
    ++*__b;
  }

  STEU_Encode(v124, 118, v209, __b);
  if ((*__b - v209) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: Q Too Long!");
  }

  LODWORD(v199) = 0;
  v200 = 0;
  v209[0] = v104[2036];
  v149 = v209[0];
  v150 = &v209[1];
  *__b = &v209[1];
  if (v209[0])
  {
    v151 = 0;
    v152 = 0;
    while (1)
    {
      v153 = *(v197 + 2 * v151);
      if (v153 >= 1)
      {
        break;
      }

LABEL_281:
      if (++v151 >= v149)
      {
        *__b = v150;
        v103 = v193;
        v105 = v196;
        goto LABEL_283;
      }
    }

    v154 = LongPrnIdx_To_ShortPrnIdx((v153 - 1), &v199);
    if (v199 == 2)
    {
      if (v152 > 0xD)
      {
        LODWORD(v155) = 0;
        v200 = 0;
      }

      else
      {
        v155 = (*(v105 + 6196 + v152) + 8);
        v200 = 4;
        ++v152;
LABEL_275:
        if (v155 >= 0x100)
        {
          EvLog_d("ME_enc_o: STE SV ID out of range", v155);
          LODWORD(v155) = 0;
        }
      }

      v157 = v200;
      if (!v155 && !v200)
      {
        EvLog("ME_enc_o: Illegal [0,0] STE Constel & SV ID");
        v157 = v200;
      }

      *v150 = v155;
      v150[1] = v157;
      v150 += 2;
      v149 = v198[2036];
      goto LABEL_281;
    }

    if (v199 > 6)
    {
      v156 = 0;
    }

    else
    {
      v156 = Prn_Offset[v199];
    }

    v155 = Encode_SVid_STE(v199, (v156 + v154), &v200);
    goto LABEL_275;
  }

LABEL_283:
  STEU_Encode(v124, 111, v209, __b);
  if ((*__b - v209) >= 130)
  {
    gn_report_assertion_failure("ME_enc_o: Too long!");
  }

  if (*(a5 + 364))
  {
    goto LABEL_289;
  }

  v158 = 0;
  v159 = a5 + 365;
  v160 = 0uLL;
  v161.i64[0] = 0x100000001;
  v161.i64[1] = 0x100000001;
  v162 = 0uLL;
  v163 = 0uLL;
  v164 = 0uLL;
  do
  {
    v165 = vtstq_s8(*(v159 + v158), *(v159 + v158));
    v166 = vmovl_u8(*v165.i8);
    v167 = vmovl_high_u8(v165);
    v164 = vaddq_s32(v164, vandq_s8(vmovl_high_u16(v167), v161));
    v163 = vaddq_s32(v163, vandq_s8(vmovl_u16(*v167.i8), v161));
    v162 = vaddq_s32(v162, vandq_s8(vmovl_high_u16(v166), v161));
    v160 = vaddq_s32(v160, vandq_s8(vmovl_u16(*v166.i8), v161));
    v158 += 16;
  }

  while (v158 != 48);
  v168 = vaddvq_s32(vaddq_s32(vaddq_s32(v160, v163), vaddq_s32(v162, v164)));
  if (v168 == 48)
  {
LABEL_289:
    v209[0] = -1;
    *__b = &v209[1];
    goto LABEL_290;
  }

  if ((v168 - 1) <= 0x2E)
  {
    v169 = 0;
    v209[0] = v168;
    v170 = &v209[1];
    do
    {
      if (*(v159 + v169))
      {
        *v170 = v169;
        v170[1] = *(v159 + v169);
        v170 += 2;
      }

      ++v169;
    }

    while (v169 != 48);
    *__b = v170;
    if (v170 > v209)
    {
LABEL_290:
      STEU_Encode(v124, 105, v209, __b);
      if ((*__b - v209) >= 100)
      {
        gn_report_assertion_failure("ME_enc_i: Too long!");
      }
    }
  }

  if ((*(v103 + 20) & 1) == 0)
  {
    v171 = *(v103 + 16);
    *&v209[8] = 0;
    *&v209[1] = 0;
    if (v171 >= 3)
    {
      EvLog_d("ME_Send_PowUsage: Out of range: ", v171);
      LOBYTE(v171) = 1;
    }

    v209[0] = v171;
    STEU_Encode_c(v124, 80, 12, v209);
  }

  if (v190)
  {
    *&v209[10] = 0;
    *&v209[6] = 0;
    v209[0] = HIBYTE(v190);
    v209[1] = BYTE2(v190);
    v209[2] = BYTE1(v190);
    v209[3] = v190;
    v209[4] = HIBYTE(v186);
    v209[5] = v186;
    STEU_Encode_c(v124, 79, 12, v209);
  }

  v209[11] = 0;
  *&v209[3] = 0;
  v209[0] = *(v103 + 12);
  v172 = *(v103 + 4);
  v209[1] = v172;
  if (v172 == 2)
  {
    if (*(v105 + 52) < 3u || !*v103)
    {
      v209[1] = 0;
      v173 = (v105 + 72);
      v174 = 82;
      v175 = 82;
      while (1)
      {
        if (*v173 != 1 || *(v173 - 8) != 1 || (*(v173 - 1) ? (v176 = *(v173 - 1) == 6) : (v176 = 1), v176))
        {
          if (--v175 < 6)
          {
            break;
          }
        }

        v173 += 48;
        if (!--v174)
        {
          LOBYTE(v172) = 0;
          goto LABEL_319;
        }
      }
    }

    LOBYTE(v172) = 1;
    v209[1] = 1;
  }

LABEL_319:
  *(v103 + 8) = v172;
  v209[2] = *(v103 + 68);
  v177 = *(v103 + 31);
  if (v177 == 1)
  {
    v209[3] = 1;
  }

  else
  {
    LOBYTE(v177) = 0;
  }

  if (*(v103 + 34) == 1)
  {
    LOBYTE(v177) = v177 | 2;
    v209[3] = v177;
  }

  if (*(v103 + 33) == 1)
  {
    LOBYTE(v177) = v177 | 4;
    v209[3] = v177;
  }

  if (*(v103 + 32) == 1)
  {
    LOBYTE(v177) = v177 | 8;
    v209[3] = v177;
  }

  if (*(v103 + 36) == 1)
  {
    LOBYTE(v177) = v177 | 0x10;
    v209[3] = v177;
  }

  if (*(v103 + 35) == 1)
  {
    v209[3] = v177 | 0x20;
  }

  v178 = *(v103 + 37);
  if (v178 == 1)
  {
    v209[4] = 1;
  }

  else
  {
    LOBYTE(v178) = 0;
  }

  if (*(v103 + 40) == 1)
  {
    LOBYTE(v178) = v178 | 2;
    v209[4] = v178;
  }

  if (*(v103 + 39) == 1)
  {
    LOBYTE(v178) = v178 | 4;
    v209[4] = v178;
  }

  if (*(v103 + 38) == 1)
  {
    LOBYTE(v178) = v178 | 8;
    v209[4] = v178;
  }

  if (*(v103 + 42) == 1)
  {
    LOBYTE(v178) = v178 | 0x10;
    v209[4] = v178;
  }

  if (*(v103 + 41) == 1)
  {
    v209[4] = v178 | 0x20;
  }

  v179 = *(v103 + 24);
  if (v179 > 1)
  {
    if (v179 == 2)
    {
      v209[5] = 1;
    }

    else
    {
      if (v179 != 3)
      {
        goto LABEL_350;
      }

LABEL_347:
      v209[5] = 0;
    }
  }

  else
  {
    if (v179 <= 1)
    {
      goto LABEL_347;
    }

LABEL_350:
    v209[5] = 0;
    EvCrt_Illegal_Default("G5K_ME_enc_cC", 1912);
  }

  v209[6] = *(v103 + 28);
  v209[7] = *(v103 + 72);
  v209[8] = 1;
  STEU_Encode_c(v124, 67, 12, v209);
  *&v209[3] = 0;
  v209[11] = 0;
  *v209 = -1;
  v209[2] = -1;
  STEU_Encode_c(v124, 65, 12, v209);
  *&v209[8] = 0;
  *&v209[1] = 0;
  v209[0] = *(v103 + 29);
  STEU_Encode_c(v124, 68, 12, v209);
  if (*(v103 + 1384) == 1)
  {
    *&v209[4] = 0;
    v180 = *(v103 + 1352);
    v181 = *(v103 + 1368);
    v182 = vmovn_s32(vuzp1q_s32(vcgtzq_f64(v180), vcgtzq_f64(v181)));
    *&v180.f64[0] = vorn_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcvtq_n_s64_f64(v180, 2uLL), vcvtq_n_s64_f64(v181, 2uLL))), v182), v182);
    *v209 = vuzp1_s8(*&v180.f64[0], *&v180.f64[0]).u32[0];
    STEU_Encode_c(v124, 90, 12, v209);
  }

  *&v209[8] = 0;
  *&v209[1] = 0;
  v209[0] = *(v103 + 30);
  STEU_Encode_c(v124, 69, 12, v209);
  v183 = (*v124)++;
  *v183 = 10;
  if (*v124 >= v124[3])
  {
    *v124 = v124[2];
  }

  GNSS_Write_GNB_Ctrl(v124);
}