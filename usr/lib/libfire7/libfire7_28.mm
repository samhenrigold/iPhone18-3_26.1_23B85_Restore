uint64_t BlueFin::PikeEswRpcTimEncImp::esw_tim_rpc_pps_setup(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v8 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v12, v13, 5, v8);
  BlueFin::GlStream::PutU32(v12, a3 | 0x80000000);
  BlueFin::GlStream::PutU08(v12, a4);
  Offset = BlueFin::GlStream::GetOffset(v12);
  BlueFin::GlMeSrdTransaction::Add(a2, 3, 4u, v13, Offset);
  v10 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v10)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 740, "esw_tim_rpc_pps_setup", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", 740, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  return result;
}

uint64_t BlueFin::PikeEswRpcTimEncImp::esw_tim_rpc_pps_program(BlueFin::PikeEswRpcTimEncImp *this, BlueFin::GlMeSrdTransaction *a2, unsigned int a3, unsigned int a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v8 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v12, v13, 8, v8);
  BlueFin::GlStream::PutU32(v12, a3);
  BlueFin::GlStream::PutU32(v12, a4);
  Offset = BlueFin::GlStream::GetOffset(v12);
  BlueFin::GlMeSrdTransaction::Add(a2, 3, 5u, v13, Offset);
  v10 = *(a2 + 16);
  result = (*(**(this + 1) + 416))();
  if (result < v10)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 751, "esw_tim_rpc_pps_program", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", 751, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  return result;
}

uint64_t BlueFin::PikeEswRpcTimEncImp::esw_tim_rpc_pps_stop(BlueFin::PikeEswRpcTimEncImp *this, BlueFin::GlMeSrdTransaction *a2)
{
  v2 = a2;
  v9 = *MEMORY[0x29EDCA608];
  v4 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v7, v8, 8, v4);
  Offset = BlueFin::GlStream::GetOffset(v7);
  BlueFin::GlMeSrdTransaction::Add(v2, 3, 6u, v8, Offset);
  LODWORD(v2) = v2[16];
  result = (*(**(this + 1) + 416))();
  if (result < v2)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 760, "esw_tim_rpc_pps_stop", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", 760, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  return result;
}

uint64_t BlueFin::PikeEswRpcTimEncImp::esw_tim_rpc_set_esw_poll(uint64_t a1, uint64_t a2, char *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a3[1] >= 9u)
  {
    v11 = "p_poll_params->num_addr <= 8";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 769, "esw_tim_rpc_set_esw_poll", "p_poll_params->num_addr <= 8");
    v12 = 769;
    goto LABEL_9;
  }

  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v13, v14, 1800, v6);
  BlueFin::GlStream::PutU08(v13, *a3);
  BlueFin::GlStream::PutU08(v13, a3[1]);
  BlueFin::GlStream::PutU08(v13, 0);
  BlueFin::GlStream::PutU08(v13, 0);
  if (a3[1])
  {
    v7 = 0;
    do
    {
      BlueFin::GlStream::PutU32(v13, *&a3[4 * v7++ + 4]);
    }

    while (v7 < a3[1]);
  }

  Offset = BlueFin::GlStream::GetOffset(v13);
  BlueFin::GlMeSrdTransaction::Add(a2, 3, 0xBu, v14, Offset);
  v9 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v9)
  {
    v11 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 785, "esw_tim_rpc_set_esw_poll", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v12 = 785;
LABEL_9:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", v12, v11);
  }

  return result;
}

uint64_t BlueFin::PikeEswRpcJdEncImp::esw_jd_rpc_tm_set_mpf_params(uint64_t a1, uint64_t a2, char a3, char a4, unint64_t a5)
{
  v8 = a2;
  v15 = *MEMORY[0x29EDCA608];
  v10 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v13, v14, 1800, v10);
  BlueFin::GlStream::PutU08(v13, a3);
  BlueFin::GlStream::PutU08(v13, a4);
  BlueFin::GlStream::PutU16(v13, 0);
  BlueFin::GlStream::CarpPutBits(v13, a5 & 7, 3u, 0x20u);
  BlueFin::GlStream::CarpPutBits(v13, a5 >> 3, 5u, 0x20u);
  BlueFin::GlStream::CarpPutBits(v13, (a5 >> 8) & 0x1F, 5u, 0x20u);
  BlueFin::GlStream::CarpPutBits(v13, (a5 >> 13) & 0x1F, 5u, 0x20u);
  BlueFin::GlStream::CarpPutBits(v13, (a5 >> 18) & 0x3F, 6u, 0x20u);
  BlueFin::GlStream::CarpPutBits(v13, BYTE3(a5) & 0x7F, 7u, 0x20u);
  BlueFin::GlStream::CarpPutBits(v13, (a5 >> 31) & 1, 1u, 0x20u);
  Offset = BlueFin::GlStream::GetOffset(v13);
  BlueFin::GlMeSrdTransaction::Add(v8, 4, 0x10u, v14, Offset);
  LODWORD(v8) = v8[16];
  result = (*(**(a1 + 8) + 416))();
  if (result < v8)
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 911, "esw_jd_rpc_tm_set_mpf_params", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", 911, "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
  }

  return result;
}

uint64_t BlueFin::GlMeHeartbeatData::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v5 = v3;
  v6 = v2;
  v13 = *MEMORY[0x29EDCA608];
  if (v4 && v4 != 3)
  {
    DeviceFaultNotify("glme_heartbeat_data.cpp", 90, "SerializeImpl", "ucVersion >= 3 && ucVersion <= 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_heartbeat_data.cpp", 90, "ucVersion >= 3 && ucVersion <= 3");
  }

  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v9 = 7;
    v10 = 3;
    v11 = 0x1000000000000;
    v8 = &unk_2A1F09520;
    v12 = 3;
    BlueFin::GlSysLogEntry::PutU32(&v8, *(v2 + 28));
    BlueFin::GlSysLogEntry::PutD64(&v8, *(v6 + 8));
    BlueFin::GlSysLogEntry::PutD64(&v8, *(v6 + 16));
    BlueFin::GlSysLogEntry::PutU16(&v8, *(v6 + 36));
    BlueFin::GlSysLogEntry::PutU16(&v8, *(v6 + 38));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v8, v5, 4);
  }

  return 1;
}

uint64_t BlueFin::GlMeHeartbeatData::Deserialize(BlueFin::GlMeHeartbeatData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 7 || (*(a2 + 12) & 0xFE) != 2)
  {
    return 0;
  }

  *(this + 7) = BlueFin::GlSysLogEntry::GetU32(a2);
  *v5.i64 = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 1) = v5.i64[0];
  *v5.i64 = *v5.i64 * 1000.0;
  *v6.i64 = *v5.i64 + trunc(*v5.i64 * 2.32830644e-10) * -4294967300.0;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = vnegq_f64(v7);
  *&v9 = vbslq_s8(v8, v6, v5).u64[0];
  if (*v5.i64 > 4294967300.0)
  {
    *v5.i64 = v9;
  }

  if (*v5.i64 < -4294967300.0)
  {
    *v4.i64 = -*v5.i64;
    *v5.i64 = -(*v5.i64 - trunc(*v5.i64 * -2.32830644e-10) * -4294967300.0);
    *v5.i64 = -*vbslq_s8(v8, v5, v4).i64;
  }

  if (*v5.i64 < 0.0)
  {
    v10 = --*v5.i64;
  }

  else
  {
    v10 = *v5.i64;
  }

  *(this + 6) = v10;
  *(this + 2) = BlueFin::GlSysLogEntry::GetD64(a2);
  if (*(a2 + 12) >= 3u)
  {
    *(this + 18) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 19) = BlueFin::GlSysLogEntry::GetU16(a2);
  }

  if (*(a2 + 11) != *(a2 + 10))
  {
    DeviceFaultNotify("glme_heartbeat_data.cpp", 131, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_heartbeat_data.cpp", 131, "otEntry.DataSize() == otEntry.ReadIdx()");
  }

  return 1;
}

uint64_t BlueFin::GlMeResourceData::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v5 = v4;
  v6 = v2;
  v17 = *MEMORY[0x29EDCA608];
  if (!v4 && (!BlueFin::GlUtils::m_pInstance || *(BlueFin::GlUtils::m_pInstance + 1122) != 1))
  {
    return 0;
  }

  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = 4;
  }

  if (v7 - 5 <= 0xFFFFFFFC)
  {
    DeviceFaultNotify("glme_heartbeat_data.cpp", 161, "SerializeImpl", "ucVersion >= 2 && ucVersion <= 4");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_heartbeat_data.cpp", 161, "ucVersion >= 2 && ucVersion <= 4");
  }

  v13 = 78;
  v14 = v7;
  v15 = 0x1000000000000;
  v12 = &unk_2A1F092C0;
  v16 = v7;
  v8 = (v2 + 8);
  BlueFin::GlSysLogEntry::PutU8(&v12, *(v2 + 8));
  if (*v8)
  {
    v9 = 0;
    v10 = 15;
    do
    {
      BlueFin::GlSysLogEntry::PutU8(&v12, *(*(v6 + 48) + v10 - 15));
      BlueFin::GlSysLogEntry::PutU8(&v12, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(*(v6 + 48) + v10 - 14)));
      BlueFin::GlSysLogEntry::PutU32(&v12, *(*(v6 + 48) + v10 - 11));
      BlueFin::GlSysLogEntry::PutU8(&v12, *(*(v6 + 48) + v10 - 7));
      BlueFin::GlSysLogEntry::PutU8(&v12, *(*(v6 + 48) + v10 - 6));
      BlueFin::GlSysLogEntry::PutU16(&v12, *(*(v6 + 48) + v10 - 5));
      BlueFin::GlSysLogEntry::PutU8(&v12, *(*(v6 + 48) + v10 - 3));
      if (v7 > 2)
      {
        BlueFin::GlSysLogEntry::PutU8(&v12, *(*(v6 + 48) + v10 - 2));
        BlueFin::GlSysLogEntry::PutU8(&v12, *(*(v6 + 48) + v10 - 1));
        if (v7 != 3)
        {
          BlueFin::GlSysLogEntry::PutU8(&v12, *(*(v6 + 48) + v10));
        }
      }

      ++v9;
      v10 += 16;
    }

    while (v9 < *(v6 + 8));
  }

  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v12, v5, 4);
  return 1;
}

uint64_t BlueFin::GlMeResourceData::Deserialize(BlueFin::GlMeResourceData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 78 || *(a2 + 12) - 5 < 0xFFFFFFFD)
  {
    return 0;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 8) = U8;
  if (U8)
  {
    v6 = 0;
    v7 = 15;
    do
    {
      *(*(this + 6) + v7 - 15) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(*(this + 6) + v7 - 14) = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + BlueFin::GlSysLogEntry::GetU8(a2));
      *(*(this + 6) + v7 - 11) = BlueFin::GlSysLogEntry::GetU32(a2);
      *(*(this + 6) + v7 - 7) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(*(this + 6) + v7 - 6) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(*(this + 6) + v7 - 5) = BlueFin::GlSysLogEntry::GetU16(a2);
      *(*(this + 6) + v7 - 3) = BlueFin::GlSysLogEntry::GetU8(a2);
      if (*(a2 + 12) >= 3u)
      {
        *(*(this + 6) + v7 - 2) = BlueFin::GlSysLogEntry::GetU8(a2);
        *(*(this + 6) + v7 - 1) = BlueFin::GlSysLogEntry::GetU8(a2);
        if (*(a2 + 12) >= 4u)
        {
          *(*(this + 6) + v7) = BlueFin::GlSysLogEntry::GetU8(a2);
        }
      }

      ++v6;
      v7 += 16;
    }

    while (v6 < *(this + 8));
  }

  if (*(a2 + 11) != *(a2 + 10))
  {
    DeviceFaultNotify("glme_heartbeat_data.cpp", 219, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_heartbeat_data.cpp", 219, "otEntry.DataSize() == otEntry.ReadIdx()");
  }

  return 1;
}

uint64_t BlueFin::GlMeHost2AsicData::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v5 = v4;
  v6 = v2;
  v15 = *MEMORY[0x29EDCA608];
  if (!v4 && (!BlueFin::GlUtils::m_pInstance || *(BlueFin::GlUtils::m_pInstance + 1122) != 1))
  {
    return 0;
  }

  if (v3 >= 2)
  {
    DeviceFaultNotify("glme_heartbeat_data.cpp", 231, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_heartbeat_data.cpp", 231, "ucVersion >= 1 && ucVersion <= 1");
  }

  v11 = 74;
  v12 = 1;
  v13 = 0x1000000000000;
  v10 = &unk_2A1F092C0;
  v14 = 1;
  v7 = (v2 + 8);
  BlueFin::GlSysLogEntry::PutU16(&v10, *(v2 + 8));
  if (*v7)
  {
    v8 = 0;
    do
    {
      BlueFin::GlSysLogEntry::PutU8(&v10, *(*(v6 + 16) + v8++));
    }

    while (v8 < *(v6 + 8));
  }

  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v10, v5, 4);
  return 1;
}

uint64_t BlueFin::GlMeHost2AsicData::Deserialize(BlueFin::GlMeHost2AsicData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 74 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    U16 = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 4) = U16;
    if (U16)
    {
      v7 = 0;
      do
      {
        *(*(this + 2) + v7++) = BlueFin::GlSysLogEntry::GetU8(a2);
      }

      while (v7 < *(this + 4));
    }

    if (*(a2 + 11) != *(a2 + 10))
    {
      DeviceFaultNotify("glme_heartbeat_data.cpp", 259, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_heartbeat_data.cpp", 259, "otEntry.DataSize() == otEntry.ReadIdx()");
    }
  }

  return v3;
}

uint64_t BlueFin::GlMeAsic2HostData::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v5 = v4;
  v6 = v2;
  v19 = *MEMORY[0x29EDCA608];
  if (!v4 && (!BlueFin::GlUtils::m_pInstance || *(BlueFin::GlUtils::m_pInstance + 1122) != 1))
  {
    return 0;
  }

  if (v3 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v3;
  }

  if (v3 > 1)
  {
    DeviceFaultNotify("glme_heartbeat_data.cpp", 271, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_heartbeat_data.cpp", 271, "ucVersion >= 1 && ucVersion <= 1");
  }

  LOWORD(v8) = *(v2 + 8);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v15 = 75;
      v16 = v7;
      v17 = 0x1000000000000;
      v14 = &unk_2A1F092C0;
      v18 = v7;
      if ((v8 - v10) >= 0x13FDu)
      {
        LODWORD(v11) = 5117;
      }

      else
      {
        LODWORD(v11) = (v8 - v10);
      }

      BlueFin::GlSysLogEntry::PutU16(&v14, v11);
      if (v8 != v10)
      {
        v12 = v9;
        if (v11 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v11;
        }

        do
        {
          BlueFin::GlSysLogEntry::PutU8(&v14, *(*(v6 + 16) + v12++));
          --v11;
        }

        while (v11);
      }

      BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v14, v5, 4);
      v10 = v9 + 5117;
      v9 = (v9 + 5117);
      v8 = *(v6 + 8);
    }

    while (v9 < v8);
  }

  return 1;
}

uint64_t BlueFin::GlMeAsic2HostData::Deserialize(BlueFin::GlMeAsic2HostData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 75 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    U16 = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 4) = U16;
    if (U16)
    {
      v7 = 0;
      do
      {
        *(*(this + 2) + v7++) = BlueFin::GlSysLogEntry::GetU8(a2);
      }

      while (v7 < *(this + 4));
    }

    if (*(a2 + 11) != *(a2 + 10))
    {
      DeviceFaultNotify("glme_heartbeat_data.cpp", 311, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_heartbeat_data.cpp", 311, "otEntry.DataSize() == otEntry.ReadIdx()");
    }
  }

  return v3;
}

const char *BlueFin::GlMePlatfStat::hist2cn0(unsigned int a1)
{
  if (a1 > 0xE)
  {
    return "???";
  }

  else
  {
    return off_29EEB3470[a1];
  }
}

uint64_t BlueFin::GlMeSubHeartbeatData::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v5 = v3;
  v6 = v2;
  v13 = *MEMORY[0x29EDCA608];
  if (v4 && v4 != 3)
  {
    DeviceFaultNotify("glme_heartbeat_data.cpp", 432, "SerializeImpl", "ucVersion >= 3 && ucVersion <= 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_heartbeat_data.cpp", 432, "ucVersion >= 3 && ucVersion <= 3");
  }

  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v9 = 105;
    v10 = 3;
    v11 = 0x1000000000000;
    v8 = &unk_2A1F09520;
    v12 = 3;
    BlueFin::GlSysLogEntry::PutD64(&v8, *(v2 + 8));
    BlueFin::GlSysLogEntry::PutD64(&v8, *(v6 + 16));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v8, v5, 4);
  }

  return 1;
}

BOOL BlueFin::GlMeSubHeartbeatData::Deserialize(BlueFin::GlMeSubHeartbeatData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2);
  if (v2 == 105)
  {
    *v6.i64 = BlueFin::GlSysLogEntry::GetD64(a2);
    *(this + 1) = v6.i64[0];
    *v6.i64 = *v6.i64 * 1000.0;
    *v7.i64 = *v6.i64 + trunc(*v6.i64 * 2.32830644e-10) * -4294967300.0;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v9 = vnegq_f64(v8);
    *&v10 = vbslq_s8(v9, v7, v6).u64[0];
    if (*v6.i64 > 4294967300.0)
    {
      *v6.i64 = v10;
    }

    if (*v6.i64 < -4294967300.0)
    {
      *v5.i64 = -*v6.i64;
      *v6.i64 = -(*v6.i64 - trunc(*v6.i64 * -2.32830644e-10) * -4294967300.0);
      *v6.i64 = -*vbslq_s8(v9, v6, v5).i64;
    }

    if (*v6.i64 < 0.0)
    {
      v11 = --*v6.i64;
    }

    else
    {
      v11 = *v6.i64;
    }

    *(this + 6) = v11;
    *(this + 2) = BlueFin::GlSysLogEntry::GetD64(a2);
    if (*(a2 + 11) != *(a2 + 10))
    {
      DeviceFaultNotify("glme_heartbeat_data.cpp", 465, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_heartbeat_data.cpp", 465, "otEntry.DataSize() == otEntry.ReadIdx()");
    }
  }

  return v2 == 105;
}

uint64_t BlueFin::GlMeReceiverParametersLogger::AllParamsToSlog(BlueFin::GlMeReceiverParametersLogger *this, const BlueFin::GlMeReceiverParametersIfc *a2)
{
  v2 = MEMORY[0x2A1C7C4A8](this, a2);
  v24 = *MEMORY[0x29EDCA608];
  v20 = 80;
  v21 = 19;
  v22 = 0x1000000000000;
  v19 = &unk_2A1F092C0;
  v23 = 19;
  v3 = (*(*v2 + 16))(v2);
  BlueFin::GlSysLogEntry::PutU8(&v19, 0);
  v4 = (*(*v2 + 264))(v2);
  BlueFin::GlSysLogEntry::PutU8(&v19, v4);
  v5 = (*(*v2 + 32))(v2);
  BlueFin::GlSysLogEntry::PutF32(&v19, *v5);
  BlueFin::GlSysLogEntry::PutU8(&v19, v3);
  v6 = (*(*v2 + 64))(v2);
  BlueFin::GlSysLogEntry::PutF32(&v19, *v6);
  BlueFin::GlSysLogEntry::PutF32(&v19, v6[1]);
  BlueFin::GlSysLogEntry::PutF32(&v19, v6[2]);
  BlueFin::GlSysLogEntry::PutF32(&v19, v6[3]);
  BlueFin::GlSysLogEntry::PutF32(&v19, v6[4]);
  BlueFin::GlSysLogEntry::PutF32(&v19, v6[5]);
  BlueFin::GlSysLogEntry::PutF32(&v19, v6[6]);
  BlueFin::GlSysLogEntry::PutF32(&v19, v6[7]);
  BlueFin::GlSysLogEntry::PutF32(&v19, v6[8]);
  BlueFin::GlSysLogEntry::PutF32(&v19, v6[9]);
  BlueFin::GlSysLogEntry::PutF32(&v19, v6[10]);
  BlueFin::GlSysLogEntry::PutF32(&v19, v6[11]);
  v7 = (*(*v2 + 136))(v2);
  BlueFin::GlSysLogEntry::PutF32(&v19, *v7);
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 4));
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 5));
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 6));
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 8));
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 12));
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 16));
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 20));
  BlueFin::GlSysLogEntry::PutU16(&v19, *(v7 + 24));
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 26));
  BlueFin::GlSysLogEntry::PutF32(&v19, *(v7 + 28));
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 32));
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 36));
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 40));
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 41));
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 42));
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 43));
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 44));
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 45));
  BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 46));
  for (i = 0; i != 8; ++i)
  {
    BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 47 + i));
  }

  if ((*(*v2 + 264))(v2) == 5 || (*(*v2 + 264))(v2) == 1)
  {
    BlueFin::GlSysLogEntry::PutU8(&v19, 0);
  }

  if ((*(*v2 + 264))(v2) == 5)
  {
    BlueFin::GlSysLogEntry::PutU8(&v19, *(v7 + 64) != 0);
  }

  if (v3)
  {
    v9 = 0;
    do
    {
      v10 = (*(*v2 + 152))(v2, v9);
      BlueFin::GlSysLogEntry::PutF32(&v19, *v10);
      BlueFin::GlSysLogEntry::PutF32(&v19, *(v10 + 4));
      BlueFin::GlSysLogEntry::PutU8(&v19, *(v10 + 8));
      BlueFin::GlSysLogEntry::PutU8(&v19, *(v10 + 9));
      BlueFin::GlSysLogEntry::PutF32(&v19, *(v10 + 12));
      BlueFin::GlSysLogEntry::PutF32(&v19, *(v10 + 16));
      BlueFin::GlSysLogEntry::PutU8(&v19, *(v10 + 20));
      BlueFin::GlSysLogEntry::PutU8(&v19, *(v10 + 21));
      BlueFin::GlSysLogEntry::PutU8(&v19, *(v10 + 22));
      BlueFin::GlSysLogEntry::PutF32(&v19, *(v10 + 24));
      BlueFin::GlSysLogEntry::PutU8(&v19, *(v10 + 28));
      for (j = 0; j != 32; j += 4)
      {
        BlueFin::GlSysLogEntry::PutF32(&v19, *(v10 + 32 + j));
      }

      v12 = (v10 + 68);
      v13 = 12;
      do
      {
        BlueFin::GlSysLogEntry::PutF32(&v19, *(v12 - 1));
        BlueFin::GlSysLogEntry::PutU32(&v19, *v12);
        v12 += 2;
        --v13;
      }

      while (v13);
      v9 = (v9 + 1);
    }

    while (v9 != v3);
  }

  v14 = *(v7 + 64);
  if (v14 && (*(*v2 + 264))(v2) == 5)
  {
    for (k = 0; k != 8; ++k)
    {
      BlueFin::GlSysLogEntry::PutU8(&v19, *(v14 + k));
    }

    BlueFin::GlSysLogEntry::PutU32(&v19, *(v14 + 8));
    v16 = (v14 + 22);
    v17 = 32;
    do
    {
      BlueFin::GlSysLogEntry::PutU16(&v19, *(v16 - 5));
      BlueFin::GlSysLogEntry::PutU16(&v19, *(v16 - 4));
      BlueFin::GlSysLogEntry::PutU32(&v19, *(v16 - 3));
      BlueFin::GlSysLogEntry::PutU16(&v19, *(v16 - 1));
      BlueFin::GlSysLogEntry::PutU16(&v19, *v16);
      v16 += 6;
      --v17;
    }

    while (v17);
  }

  return BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v19, 0, 4);
}

uint64_t BlueFin::GlMeReceiverParametersLogger::SrchSpParamsToSlog(BlueFin::GlMeReceiverParametersLogger *this, const BlueFin::GlMeReceiverParametersIfc *a2)
{
  v2 = MEMORY[0x2A1C7C4A8](this, a2);
  v12 = *MEMORY[0x29EDCA608];
  v8 = 80;
  v9 = 3;
  v10 = 0x1000000000000;
  v7 = &unk_2A1F092C0;
  v11 = 3;
  BlueFin::GlSysLogEntry::PutU8(&v7, 2);
  v3 = (*(*v2 + 200))(v2);
  BlueFin::GlSysLogEntry::PutU8(&v7, v3);
  if ((*(*v2 + 200))(v2))
  {
    v4 = 0;
    do
    {
      v5 = (*(*v2 + 240))(v2, v4);
      BlueFin::GlSysLogEntry::PutU8(&v7, *v5);
      BlueFin::GlSysLogEntry::PutF32(&v7, *(v5 + 4));
      BlueFin::GlSysLogEntry::PutU16(&v7, *(v5 + 8));
      BlueFin::GlSysLogEntry::PutU16(&v7, *(v5 + 10));
      BlueFin::GlSysLogEntry::PutU8(&v7, *(v5 + 12));
      BlueFin::GlSysLogEntry::PutU8(&v7, *(v5 + 13));
      BlueFin::GlSysLogEntry::PutF32(&v7, *(v5 + 16));
      BlueFin::GlSysLogEntry::PutF32(&v7, *(v5 + 20));
      BlueFin::GlSysLogEntry::PutU16(&v7, *(v5 + 24));
      BlueFin::GlSysLogEntry::PutU16(&v7, *(v5 + 26));
      BlueFin::GlSysLogEntry::PutU8(&v7, *(v5 + 28));
      BlueFin::GlSysLogEntry::PutF32(&v7, *(v5 + 32));
      BlueFin::GlSysLogEntry::PutU8(&v7, *(v5 + 36));
      ++v4;
    }

    while (v4 < (*(*v2 + 200))(v2));
  }

  return BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v7, 0, 4);
}

uint64_t BlueFin::GlMeReceiverParametersLogger::SrchBsParamsToSlog(BlueFin::GlMeReceiverParametersLogger *this, const BlueFin::GlMeReceiverParametersIfc *a2)
{
  v2 = MEMORY[0x2A1C7C4A8](this, a2);
  v12 = *MEMORY[0x29EDCA608];
  v8 = 80;
  v9 = 1;
  v10 = 0x1000000000000;
  v7 = &unk_2A1F092C0;
  v11 = 1;
  BlueFin::GlSysLogEntry::PutU8(&v7, 1);
  v3 = (*(*v2 + 208))(v2);
  BlueFin::GlSysLogEntry::PutU8(&v7, v3);
  if ((*(*v2 + 208))(v2))
  {
    v4 = 0;
    do
    {
      v5 = (*(*v2 + 256))(v2, v4);
      BlueFin::GlSysLogEntry::PutU8(&v7, *v5);
      BlueFin::GlSysLogEntry::PutU8(&v7, v5[1]);
      BlueFin::GlSysLogEntry::PutU8(&v7, v5[2]);
      BlueFin::GlSysLogEntry::PutU8(&v7, v5[3]);
      BlueFin::GlSysLogEntry::PutU8(&v7, v5[4]);
      BlueFin::GlSysLogEntry::PutU8(&v7, v5[5]);
      ++v4;
    }

    while (v4 < (*(*v2 + 208))(v2));
  }

  return BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v7, 0, 4);
}

uint64_t BlueFin::GlMeReceiverParametersLogger::SrchHostParamsToSlog(BlueFin::GlMeReceiverParametersLogger *this, const BlueFin::GlMeReceiverParametersIfc *a2)
{
  MEMORY[0x2A1C7C4A8](this, a2);
  v8 = *MEMORY[0x29EDCA608];
  v4 = 80;
  v5 = 1;
  v6 = 0x1000000000000;
  v3 = &unk_2A1F092C0;
  v7 = 1;
  BlueFin::GlSysLogEntry::PutU8(&v3, 3);
  return BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v3, 0, 4);
}

uint64_t BlueFin::GlMeReceiverParametersLogger::ModeTrkParamToSlog(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v4 = v3;
  v6 = v5;
  v22 = *MEMORY[0x29EDCA608];
  v7 = (*(*v2 + 192))(v2);
  v18 = 80;
  v19 = 20;
  v20 = 0x1000000000000;
  v17 = &unk_2A1F092C0;
  v21 = 20;
  BlueFin::GlSysLogEntry::PutU8(&v17, 4);
  BlueFin::GlSysLogEntry::PutU8(&v17, v6);
  BlueFin::GlSysLogEntry::PutU8(&v17, v4);
  BlueFin::GlSysLogEntry::PutF32(&v17, *v7);
  BlueFin::GlSysLogEntry::PutF32(&v17, *(v7 + 4));
  BlueFin::GlSysLogEntry::PutU8(&v17, *(v7 + 8));
  BlueFin::GlSysLogEntry::PutF32(&v17, *(v7 + 12));
  BlueFin::GlSysLogEntry::PutF32(&v17, *(v7 + 16));
  BlueFin::GlSysLogEntry::PutF32(&v17, *(v7 + 20));
  BlueFin::GlSysLogEntry::PutF32(&v17, *(v7 + 24));
  for (i = 0; i != 16; i += 4)
  {
    BlueFin::GlSysLogEntry::PutF32(&v17, *(v7 + 28 + i));
  }

  BlueFin::GlSysLogEntry::PutF32(&v17, *(v7 + 44));
  BlueFin::GlSysLogEntry::PutF32(&v17, *(v7 + 48));
  BlueFin::GlSysLogEntry::PutU8(&v17, *(v7 + 52));
  BlueFin::GlSysLogEntry::PutU8(&v17, *(v7 + 56));
  BlueFin::GlSysLogEntry::PutF32(&v17, *(v7 + 60));
  BlueFin::GlSysLogEntry::PutU8(&v17, *(v7 + 64));
  BlueFin::GlSysLogEntry::PutF32(&v17, *(v7 + 68));
  BlueFin::GlSysLogEntry::PutF32(&v17, *(v7 + 72));
  BlueFin::GlSysLogEntry::PutF32(&v17, *(v7 + 76));
  BlueFin::GlSysLogEntry::PutF32(&v17, *(v7 + 80));
  BlueFin::GlMeReceiverParametersLogger::WriteCvecAveragingTableToSlog(&v17, v7 + 84);
  BlueFin::GlMeReceiverParametersLogger::WriteCvecAveragingTableToSlog(&v17, v7 + 100);
  BlueFin::GlMeReceiverParametersLogger::WriteCvecAveragingTableToSlog(&v17, v7 + 116);
  BlueFin::GlMeReceiverParametersLogger::WriteCvecAveragingTableToSlog(&v17, v7 + 132);
  BlueFin::GlSysLogEntry::PutU8(&v17, *(v7 + 148));
  BlueFin::GlSysLogEntry::PutU8(&v17, *(v7 + 152));
  BlueFin::GlSysLogEntry::PutU8(&v17, *(v7 + 153));
  BlueFin::GlSysLogEntry::PutU8(&v17, *(v7 + 154));
  BlueFin::GlSysLogEntry::PutU8(&v17, *(v7 + 155));
  BlueFin::GlSysLogEntry::PutU8(&v17, *(v7 + 156));
  BlueFin::GlSysLogEntry::PutU8(&v17, *(v7 + 157));
  BlueFin::GlSysLogEntry::PutU8(&v17, *(v7 + 158));
  for (j = 0; j != 8; ++j)
  {
    BlueFin::GlSysLogEntry::PutU8(&v17, *(v7 + 159 + j));
  }

  if (*(v7 + 8))
  {
    v10 = 0;
    v11 = v7 + 168;
    do
    {
      v12 = *(v11 + 8 * v10);
      if (!v12)
      {
        DeviceFaultNotify("glme_receiver_parameters_logger.cpp", 331, "ModeTrkParamToSlog", "stModeParams.apstGearParams[i]");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_receiver_parameters_logger.cpp", 331, "stModeParams.apstGearParams[i]");
      }

      BlueFin::GlSysLogEntry::PutF32(&v17, *v12);
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 4));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 8));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 12));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 16));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 20));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 24));
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 28));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 32));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 36));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 40));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 44));
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 48));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 52));
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 56));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 60));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 64));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 68));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 72));
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 76));
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 80));
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 84));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 88));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 92));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 96));
      for (k = 100; k != 112; k += 4)
      {
        BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + k));
      }

      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 112));
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 116));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 120));
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 124));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 128));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 132));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 136));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 140));
      BlueFin::GlSysLogEntry::PutU16(&v17, *(*(v11 + 8 * v10) + 144));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 148));
      BlueFin::GlSysLogEntry::PutU32(&v17, *(*(v11 + 8 * v10) + 152));
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 156));
      for (m = 160; m != 180; m += 4)
      {
        BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + m));
      }

      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 180));
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 184));
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 188));
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 192));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 196));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 200));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 204));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 208));
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 212));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 216));
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 220));
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 224));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 228));
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 232));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 236));
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 248));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 252));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 256));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 260));
      for (n = 264; n != 270; n += 2)
      {
        BlueFin::GlSysLogEntry::PutU16(&v17, *(*(v11 + 8 * v10) + n));
      }

      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 240));
      BlueFin::GlSysLogEntry::PutU32(&v17, *(*(v11 + 8 * v10) + 244));
      BlueFin::GlSysLogEntry::PutU8(&v17, *(*(v11 + 8 * v10) + 272));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 276));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10) + 280));
      BlueFin::GlSysLogEntry::PutF32(&v17, *(*(v11 + 8 * v10++) + 284));
    }

    while (v10 < *(v7 + 8));
  }

  return BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v17, 0, 4);
}

uint64_t BlueFin::GlMeReceiverParametersLogger::GsLoopupToSlog(BlueFin::GlMeReceiverParametersLogger *this, const BlueFin::GlMeReceiverParametersIfc *a2)
{
  v2 = MEMORY[0x2A1C7C4A8](this, a2);
  v18 = *MEMORY[0x29EDCA608];
  v14 = 80;
  v15 = 1;
  v16 = 0x1000000000000;
  v13 = &unk_2A1F092C0;
  v17 = 1;
  v3 = (*(*v2 + 16))(v2);
  v4 = (*(*v2 + 24))(v2);
  BlueFin::GlSysLogEntry::PutU8(&v13, 5);
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (v4)
      {
        v7 = 0;
        do
        {
          v6 += (*(*v2 + 120))(v2, v5, v7);
          v7 = (v7 + 1);
        }

        while (v4 != v7);
      }

      v5 = (v5 + 1);
    }

    while (v5 != v3);
    BlueFin::GlSysLogEntry::PutU8(&v13, v6);
    v8 = 0;
    do
    {
      if (v4)
      {
        v9 = 0;
        do
        {
          if ((*(*v2 + 120))(v2, v8, v9))
          {
            v10 = (*(*v2 + 96))(v2, v8, v9);
            BlueFin::GlSysLogEntry::PutU8(&v13, v10);
            v11 = (*(*v2 + 168))(v2, v10);
            BlueFin::GlSysLogEntry::PutU8(&v13, *(v11 + 8));
            BlueFin::GlSysLogEntry::PutU8(&v13, v8);
            BlueFin::GlSysLogEntry::PutU8(&v13, v9);
          }

          v9 = (v9 + 1);
        }

        while (v4 != v9);
      }

      v8 = (v8 + 1);
    }

    while (v8 != v3);
  }

  else
  {
    BlueFin::GlSysLogEntry::PutU8(&v13, 0);
  }

  return BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v13, 0, 4);
}

uint64_t BlueFin::GlMeReceiverParametersLogger::WriteCvecAveragingTableToSlog(BlueFin::GlSysLogEntry *this, uint64_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    BlueFin::GlSysLogEntry::PutF32(this, *(a2 + i));
  }

  v5 = 0;
  v6 = a2 + 12;
  do
  {
    result = BlueFin::GlSysLogEntry::PutU8(this, *(v6 + v5++));
  }

  while (v5 != 4);
  return result;
}

uint64_t BlueFin::GlMeAcqWindowProvider::IsFactoryAidingDetected(BlueFin::GlMeAcqWindowProvider *this)
{
  v1 = *(this + 1) + 0x2000;
  if (*(*(this + 1) + 9888) - 1 > 3 || *(*(this + 1) + 9890) - 1 >= 4)
  {
    v2 = 0;
    result = 0;
  }

  else
  {
    v2 = 1;
    result = 1;
  }

  *(v1 + 1699) = v2;
  return result;
}

uint64_t BlueFin::GlMeAcqWindowProvider::SetGpsL1cSecCodeOffset(uint64_t this, unsigned int a2, int a3)
{
  v3 = *(this + 8);
  *(v3 + a2 + 9900) = a3 != -1;
  *(v3 + 4 * a2 + 9932) = a3;
  return this;
}

uint64_t BlueFin::GlMeAcqWindowProvider::GetGpsL1cSecCodeOffset(BlueFin::GlMeAcqWindowProvider *this, unsigned int a2, unsigned int *a3)
{
  v3 = *(this + 1);
  *a3 = *(v3 + 4 * a2 + 9932);
  return *(v3 + a2 + 9900);
}

uint64_t BlueFin::GlMeAcqWindowProvider::SetQzssL1cSecCodeOffset(uint64_t this, unsigned int a2, int a3)
{
  v3 = *(this + 8);
  *(v3 + a2 + 10060) = a3 != -1;
  *(v3 + 4 * a2 + 10072) = a3;
  return this;
}

uint64_t BlueFin::GlMeAcqWindowProvider::GetQzssL1cSecCodeOffset(BlueFin::GlMeAcqWindowProvider *this, unsigned int a2, unsigned int *a3)
{
  v3 = *(this + 1);
  *a3 = *(v3 + 4 * a2 + 10072);
  return *(v3 + a2 + 10060);
}

uint64_t BlueFin::GlMeAcqWindowProvider::GetBdsB1cSecCodeOffset(BlueFin::GlMeAcqWindowProvider *this, unsigned int a2, unsigned int *a3)
{
  v3 = *(this + 1);
  *a3 = *(v3 + 4 * a2 + 10176);
  return *(v3 + a2 + 10112);
}

uint64_t BlueFin::GlMeAidingListener::SetUserDynamicLimits(uint64_t this, __int16 a2, float a3)
{
  v3 = *(this + 8);
  *(v3 + 11628) = a2;
  *(v3 + 11632) = a3;
  return this;
}

uint64_t BlueFin::GlMeDspMeasListener::VerifyTow(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4[0] = *a2;
  v5 = *(a2 + 4);
  v6 = *(a2 + 8);
  return BlueFin::GlMeMeasAidFilter::VerifyTow(v2, v4);
}

void BlueFin::GlMeMeasAidFilter::~GlMeMeasAidFilter(BlueFin::GlMeMeasAidFilter *this)
{
  *this = &unk_2A1F0D848;
  *(this + 4) = &unk_2A1F0E3F8;
  *(this + 6) = &unk_2A1F0E368;
}

{
  JUMPOUT(0x29C292F60);
}

uint64_t BlueFin::GlMeMeasAidFilter::GetSigMeas(BlueFin::GlMeMeasAidFilter *this, const BlueFin::GlSignalId *a2, int8x16_t a3, int a4, unsigned int a5, unsigned int a6, double a7, int8x16_t a8, int8x16_t a9)
{
  if (*(this + 8) != 1)
  {
    BlueFin::GlMeMsmtMgr::GetSigMeas((this + 10624), a2, a4, a5, a6);
  }

  v10 = (this + 10624);

  return BlueFin::GlMeMsmtMgr::GetSigMeas(v10, a2, *a3.i64, a4);
}

uint64_t BlueFin::GlMeMeasAidFilter::VerifyTow(uint64_t a1, const BlueFin::GlSignalId *a2)
{
  result = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr((a1 + 10624), a2, 1, 1);
  v4 = *a2;
  if (*a2 && (v4 < 0x21 || v4 >= 0x42 && (v4 < 0x4C || v4 - 175 <= 0xD)))
  {
    v5 = BlueFin::GlMeSlots::GpsFrameMgr(result, a2);

    return BlueFin::GlMeFrameMgr::VerifyTow(v5, v6);
  }

  return result;
}

void *BlueFin::GlPeGnssEphemerisMgr::RequireVerifiedEphFromSat(void *this)
{
  if (*(this + 7024) == 1)
  {
    v1 = this;
    v2 = 0;
    *(this + 7024) = 0;
    do
    {
      this = BlueFin::GlPeGnssEphemerisMgr::GetMgr(v1, v2);
      if (this)
      {
        *(this + 533) = 0;
      }

      ++v2;
    }

    while (v2 != 7);
  }

  return this;
}

uint64_t BlueFin::GlMeMafSettingsListener::LimitMeasurements(uint64_t this, int a2)
{
  v2 = *(this + 8);
  *(v2 + 11648) = a2;
  *(v2 + 29072) = a2;
  return this;
}

uint64_t BlueFin::GLNFrameMgrUtils::MeanderDecode(uint64_t this, const unsigned int *a2, unsigned int *a3, char a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((a3 & 0x1F) != 0)
  {
    v4 = (a3 >> 5) + 1;
  }

  else
  {
    v4 = a3 >> 5;
  }

  v5 = (a3 >> 1) & 0x1F;
  if (a3 >> 1 <= 0)
  {
    v5 = -(-(a3 >> 1) & 0x1F);
  }

  v15 = xmmword_298A39FB0;
  if ((a4 & 1) == 0)
  {
    v15 = xmmword_298A39FA0;
  }

  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = ~(16 * v7) & 0x10;
      v11 = a2[v9];
      v12 = -4;
      do
      {
        v12 += 4;
        v11 |= *(&v15 | (*(this + 4 * v6) >> v12) & 0xFLL) << v10;
        a2[v9] = v11;
        v10 += 2;
      }

      while (v12 < 0x1C);
      v8 += 16;
      if (v8 == 32)
      {
        ++v9;
        v8 = 0;
      }

      v7 = ++v6;
    }

    while (v6 != v4);
  }

  if (v5)
  {
    v13 = a2[(a3 >> 6)] & 0xFFFF0000;
    if (v5 >= 0x11)
    {
      v14 = (a2[(a3 >> 6)] << -v5) | v13;
    }

    else
    {
      v14 = v13 << (16 - v5);
    }

    a2[(a3 >> 6)] = v14;
  }

  return this;
}

BOOL BlueFin::GlMeBeidouDecodeMgr::GetSecondOfWeek(BlueFin::GlMeBeidouDecodeMgr *a1, unsigned __int8 *a2, int *a3, unsigned int *a4)
{
  v4 = *(a1 + 26);
  if (v4 == 2)
  {
    FrameMemory = BlueFin::GlMeBeidouDecodeMgr::GetFrameMemory(a1);
    v9 = *a2 - 81;
    v10 = v9 >= 0x35;
    if (v9 >= 0x35)
    {
      v11 = 300 * (5 - *(FrameMemory + 64));
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 + *(FrameMemory + 72);
    if (v10)
    {
      v13 = 3;
    }

    else
    {
      v13 = 6;
    }

    v14 = 20 * v12;
    v15 = 2 * v12;
    if (!v10)
    {
      v15 = v14;
    }

    *a3 = v15;
    v16 = *(FrameMemory + 68) + v13;
    if (v16 > 0x93A7F)
    {
      v16 -= 604800;
    }

    *a4 = v16;
  }

  return v4 == 2;
}

uint64_t BlueFin::GlMeBeidouDecodeMgr::SetDSPDataBits(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a4 + 9);
  if (v5 != *(a5 + 9) || *(a4 + 20) != *(a5 + 20))
  {
    DeviceFaultNotify("glme_beidou_decoder.cpp", 98, "SetDSPDataBits", "(rFll.m_otSvId == rPll.m_otSvId) && (rFll.m_ulEpochCnt == rPll.m_ulEpochCnt)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_beidou_decoder.cpp", 98, "(rFll.m_otSvId == rPll.m_otSvId) && (rFll.m_ulEpochCnt == rPll.m_ulEpochCnt)");
  }

  v54[0] = a1;
  v54[1] = a2;
  v54[2] = a3;
  v55 = 0;
  v56 = 0;
  v57 = a4;
  v58 = a5;
  v59 = v5;
  v60 = (v5 - 81) < 0x35;
  v10 = v5 - 76;
  v11 = v5 - 134;
  v13 = v10 < 5 || v11 < 5;
  v61 = v13;
  *(a1 + 96) = v54;
  v51 = 0;
  v45 = 0;
  v38 = 0;
  v31 = 0;
  v48[0] = 0;
  v48[1] = a4 + 44;
  v49 = 1;
  v52 = 0;
  v50 = 0x40000000400;
  v53 = 0;
  BlueFin::GlBitBuffer::Limit(v48, *(a4 + 16));
  v14 = *(*(a1 + 96) + 32);
  v41[0] = 0;
  v41[1] = v14 + 172;
  v42 = 1;
  v46 = 0;
  v44 = 0;
  v43 = 0x40000000400;
  v47 = 0;
  BlueFin::GlBitBuffer::Limit(v41, *(v14 + 16));
  v15 = *(*(a1 + 96) + 40);
  v34[0] = 0;
  v34[1] = v15 + 44;
  v35 = 1;
  v39 = 0;
  v37 = 0;
  v36 = 0x40000000400;
  v40 = 0;
  BlueFin::GlBitBuffer::Limit(v34, *(v15 + 16));
  v16 = *(*(a1 + 96) + 40);
  v27[0] = 0;
  v27[1] = v16 + 172;
  v28 = 1;
  v32 = 0;
  v30 = 0;
  v29 = 0x40000000400;
  v33 = 0;
  BlueFin::GlBitBuffer::Limit(v27, *(v16 + 16));
  v17 = *(a1 + 96);
  v18 = *(v17 + 32);
  v19 = *(v18 + 20);
  if (*(v18 + 9) - 81 > 0x34)
  {
    v20 = v19 >> 1;
  }

  else
  {
    v20 = v19 / 0x14uLL;
  }

  v21 = *(v17 + 40);
  v22 = *(v21 + 20);
  if (*(v21 + 9) - 81 > 0x34)
  {
    v23 = v22 >> 1;
  }

  else
  {
    v23 = v22 / 0x14uLL;
  }

  if (((*(a5 + 12) | *(a4 + 12)) & 4) != 0 || (v24 = v20 - HIDWORD(v50), v24 < *(BlueFin::GlMeBeidouDecodeMgr::Decoder(a1, 0) + 8)) || (v25 = v23 - HIDWORD(v36), v25 < *(BlueFin::GlMeBeidouDecodeMgr::Decoder(a1, 1u) + 8)))
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 104) = 0;
    *(a1 + 136) = 0;
    *(a1 + 128) = &unk_2A1F0DB48;
    *(a1 + 140) = 0;
    *(a1 + 152) = 0;
    *(a1 + 144) = &unk_2A1F0DB48;
    *(a1 + 156) = 0;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 320) = 0u;
    *(a1 + 336) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 348) = 0u;
    *(a1 + 167) = 0;
    *(a1 + 160) = 0;
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0u;
    *(a1 + 416) = 0u;
    *(a1 + 432) = 0u;
    *(a1 + 448) = 0u;
    *(a1 + 464) = 0u;
    *(a1 + 480) = 0u;
    *(a1 + 496) = 0u;
    *(a1 + 512) = 0u;
    *(a1 + 528) = 0u;
    *(a1 + 544) = 0u;
    *(a1 + 560) = 0u;
    *(a1 + 576) = 0u;
    *(a1 + 592) = 0u;
    *(a1 + 608) = 0u;
    *(a1 + 624) = 0u;
    *(a1 + 640) = 0u;
    *(a1 + 656) = 0u;
    *(a1 + 672) = 0u;
    *(a1 + 688) = 0u;
    *(a1 + 704) = 0u;
  }

  BlueFin::GlMeBeidouPolarityMgr::SetBits(a1, (*(a4 + 12) >> 9) & 1, v48, v20, (*(a5 + 12) >> 9) & 1, v34, v23);
  return BlueFin::GlMeBeidouDecodeMgr::SetBits(a1, v48, v41, v20, v34, v27, v23);
}

uint64_t BlueFin::GlMeBeidouDecodeMgr::Decoder(BlueFin::GlMeBeidouDecodeMgr *a1, unsigned int a2)
{
  v3 = *(a1 + 26);
  if (v3)
  {
    if (v3 == 1)
    {

      return BlueFin::GlMeBeidouDecodeMgr::Preamble(a1, a2);
    }

    else
    {
      if (v3 != 2)
      {
        DeviceFaultNotify("glme_beidou_decoder.cpp", 307, "Decoder", "m_eState == GLME_BDS_DCD_STATE_FRAME");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_beidou_decoder.cpp", 307, "m_eState == GLME_BDS_DCD_STATE_FRAME");
      }

      return BlueFin::GlMeBeidouDecodeMgr::Frame(a1, a2);
    }
  }

  else
  {

    return BlueFin::GlMeBeidouDecodeMgr::Search(a1, a2);
  }
}

uint64_t BlueFin::GlMeBeidouDecodeMgr::SetBits(BlueFin::GlMeBeidouDecodeMgr *this, BlueFin::GlBitBuffer *a2, BlueFin::GlBitBuffer *a3, uint64_t a4, BlueFin::GlBitBuffer *a5, BlueFin::GlBitBuffer *a6, uint64_t a7)
{
  v14 = *(a2 + 7);
  v30 = *(a5 + 6);
  v31 = *(a5 + 7);
  v32 = *(a2 + 6);
  v15 = v30 != v31;
  v16 = BlueFin::GlMeBeidouDecodeMgr::Decoder(this, 0);
  v17 = (*(*v16 + 16))(v16, this, 0, a2, a3, a4);
  v18 = BlueFin::GlMeBeidouDecodeMgr::Decoder(this, 1u);
  v33 = a7;
  result = (*(*v18 + 16))(v18, this, 1, a5, a6, a7);
  v21 = v32 == v14;
  v20 = v32 != v14;
  v21 = v21 && v30 == v31;
  if (!v21)
  {
    v22 = result;
    do
    {
      if (v20 && v15 && v17 <= v22 || !v15)
      {
        v25 = BlueFin::GlMeBeidouDecodeMgr::Decoder(this, 0);
        (*(*v25 + 24))(v25, this, 0, a2, a3, a4);
        v20 = *(a2 + 6) != *(a2 + 7);
        v26 = BlueFin::GlMeBeidouDecodeMgr::Decoder(this, 0);
        result = (*(*v26 + 16))(v26, this, 0, a2, a3, a4);
        v17 = result;
      }

      else
      {
        v23 = BlueFin::GlMeBeidouDecodeMgr::Decoder(this, 1u);
        (*(*v23 + 24))(v23, this, 1, a5, a6, v33);
        v15 = *(a5 + 6) != *(a5 + 7);
        v24 = BlueFin::GlMeBeidouDecodeMgr::Decoder(this, 1u);
        result = (*(*v24 + 16))(v24, this, 1, a5, a6, v33);
        v22 = result;
      }

      v27 = *(this + 12);
      if (*(v27 + 24) == 1 && *(v27 + 28) <= 1)
      {
        *(v27 + 24) = 0;
        *(a2 + 7) = 0;
        *(a2 + 40) = 0;
        *(a3 + 7) = 0;
        *(a3 + 40) = 0;
        *(a5 + 7) = 0;
        *(a5 + 40) = 0;
        *(a6 + 7) = 0;
        *(a6 + 40) = 0;
        v20 = *(a2 + 6) != *(a2 + 7);
        v15 = *(a5 + 6) != *(a5 + 7);
        v28 = BlueFin::GlMeBeidouDecodeMgr::Decoder(this, 0);
        v17 = (*(*v28 + 16))(v28, this, 0, a2, a3, a4);
        v29 = BlueFin::GlMeBeidouDecodeMgr::Decoder(this, 1u);
        result = (*(*v29 + 16))(v29, this, 1, a5, a6, v33);
        v22 = result;
      }
    }

    while (v20 || v15);
  }

  return result;
}

uint64_t BlueFin::GlMeBeidouDecodeMgr::SyncFound(BlueFin::GlMeBeidouDecodeMgr *this, unsigned int a2, int a3, unsigned int a4)
{
  v55[50] = *MEMORY[0x29EDCA608];
  v5 = *(this + 26);
  if (v5 == 1)
  {
    v9 = BlueFin::GlMeBeidouDecodeMgr::Preamble(this, 0);
    v24 = *(v9 + 12);
    v25 = *(v9 + 8);
    v7 = BlueFin::GlMeBeidouDecodeMgr::Preamble(this, 1u);
    v8 = 272;
  }

  else
  {
    if (v5)
    {
      DeviceFaultNotify("glme_beidou_decoder.cpp", 217, "SyncFound", "false");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_beidou_decoder.cpp", 217, "false");
    }

    v6 = BlueFin::GlMeBeidouDecodeMgr::Search(this, 0);
    v24 = *(v6 + 12);
    v25 = *(v6 + 8);
    v7 = BlueFin::GlMeBeidouDecodeMgr::Search(this, 1u);
    v8 = 232;
  }

  v10 = *(v7 + 8);
  v11 = *(v7 + 12);
  v12 = 224;
  if (*(this + 26))
  {
    v13 = 496;
  }

  else
  {
    v12 = 384;
    v13 = 616;
  }

  if (*(this + 26))
  {
    v14 = 768;
  }

  else
  {
    v14 = 848;
  }

  if (*(this + 26))
  {
    v15 = 1040;
  }

  else
  {
    v15 = 1080;
  }

  memcpy(__dst, this + v12, v8);
  memcpy(v53, this + v13, v8);
  memcpy(v54, this + v14, v8);
  memcpy(v55, this + v15, v8);
  if (a4 > 0x93A7F)
  {
    *(this + 26) = 1;
    BlueFin::GlMeBeidouDecodeMemoryPreambleBase::GlMeBeidouDecodeMemoryPreambleBase((this + 128), a2);
    *(this + 33) = 0u;
    *(this + 34) = 0u;
    *(this + 31) = 0u;
    *(this + 32) = 0u;
    *(this + 29) = 0u;
    *(this + 30) = 0u;
    *(this + 27) = 0u;
    *(this + 28) = 0u;
    *(this + 25) = 0u;
    *(this + 26) = 0u;
    *(this + 23) = 0u;
    *(this + 24) = 0u;
    *(this + 21) = 0u;
    *(this + 22) = 0u;
    *(this + 19) = 0u;
    *(this + 20) = 0u;
    *(this + 17) = 0u;
    *(this + 18) = 0u;
    *(this + 15) = 0u;
    *(this + 16) = 0u;
    *(this + 14) = 0u;
  }

  else
  {
    *(this + 26) = 2;
    FrameMemory = BlueFin::GlMeBeidouDecodeMgr::GetFrameMemory(this);
    BlueFin::GlMeBeidouDecodeMemoryFrame::Initialize(FrameMemory, this, a2, a3, a4);
  }

  v17 = v25;
  v46[0] = __dst;
  v46[1] = 0;
  v47 = 0;
  v50 = 0;
  v49 = 0;
  v48 = vdup_n_s32(0xC80u);
  v51 = 0;
  v40[0] = v53;
  v40[1] = 0;
  v41 = 0;
  v44 = 0;
  v43 = 0;
  v42 = v48;
  v45 = 0;
  v34[0] = v54;
  v34[1] = 0;
  v35 = 0;
  v38 = 0;
  v37 = 0;
  v36 = v48;
  v39 = 0;
  v28[0] = v55;
  v28[1] = 0;
  v29 = 0;
  v32 = 0;
  v31 = 0;
  v30 = v48;
  v33 = 0;
  v18 = v25 - v10;
  v19 = v24;
  if (v25 >= v10)
  {
    if (v10 < v25)
    {
      v20 = v24 >= v18;
      v21 = v24 - v18;
      if (v21 != 0 && v20)
      {
        v19 = v21;
      }

      else
      {
        v19 = 0;
      }

      v17 = v10;
    }
  }

  else
  {
    if (v10 - v25 >= v11)
    {
      LOWORD(v11) = 0;
    }

    else
    {
      LOWORD(v11) = v11 - (v10 - v25);
    }

    v10 = v25;
  }

  BlueFin::GlBitBuffer::Limit(v46, v19);
  BlueFin::GlBitBuffer::Limit(v40, v19);
  BlueFin::GlBitBuffer::Limit(v34, v11);
  BlueFin::GlBitBuffer::Limit(v28, v11);
  result = BlueFin::GlMeBeidouDecodeMgr::SetBits(this, v46, v40, v17, v34, v28, v10);
  *(*(this + 12) + 24) = 1;
  return result;
}

uint64_t BlueFin::GlMeBeidouDecodeMgr::Search(BlueFin::GlMeBeidouDecodeMgr *a1, unsigned int a2)
{
  if (*(a1 + 26))
  {
    DeviceFaultNotify("glme_beidou_decoder.cpp", 314, "Search", "GLME_BDS_DCD_STATE_SEARCH == m_eState");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_beidou_decoder.cpp", 314, "GLME_BDS_DCD_STATE_SEARCH == m_eState");
  }

  return BlueFin::GlMeBeidouDecodeMgr::GetSearchMemory(a1) + 16 * a2;
}

uint64_t BlueFin::GlMeBeidouDecodeMgr::Preamble(BlueFin::GlMeBeidouDecodeMgr *a1, unsigned int a2)
{
  if (*(a1 + 26) != 1)
  {
    DeviceFaultNotify("glme_beidou_decoder.cpp", 322, "Preamble", "GLME_BDS_DCD_STATE_PREAMBLE == m_eState");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_beidou_decoder.cpp", 322, "GLME_BDS_DCD_STATE_PREAMBLE == m_eState");
  }

  return BlueFin::GlMeBeidouDecodeMgr::GetPreambleMemory(a1) + 16 * a2;
}

uint64_t BlueFin::GlMeBeidouDecodeMgr::Frame(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 104) != 2)
  {
    DeviceFaultNotify("glme_beidou_decoder.cpp", 330, "Frame", "GLME_BDS_DCD_STATE_FRAME == m_eState");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_beidou_decoder.cpp", 330, "GLME_BDS_DCD_STATE_FRAME == m_eState");
  }

  return a1 + 32 * a2 + 128;
}

uint64_t BlueFin::GlMeBeidouDecodeUtil::Deinterleave(uint64_t this, unsigned int a2, int *a3, unsigned int *a4, unsigned int *a5)
{
  if (this == 1)
  {
    v5 = (a2 >> 19) & 0x7FF;
    v6 = ((65537 * (a2 & 0x7FFF)) | ((65537 * (a2 & 0x7FFF)) << 32)) & 0x7AC83D641EB27591;
    v7 = v6 ^ (v6 >> 8) ^ ((v6 ^ (v6 >> 8)) >> 4);
    v8 = (v7 ^ (v7 >> 2) ^ ((v7 ^ (v7 >> 2)) >> 1)) & 0x1000100010001;
    v9 = dword_298A3A0B8[(((v8 >> 30) | v8) | (((v8 >> 30) | v8) >> 15)) & 0xF];
    v10 = (a2 >> 12) & 7;
    v11 = (a2 >> 4);
    if (v5 != 1810)
    {
      v10 ^= 7u;
      v11 ^= 0xFCu;
    }

    if (((v5 ^ 0x712) & 0x3FF) == (v5 ^ 0x712) >> 1)
    {
      v12 = v9;
    }

    else
    {
      v12 = v9 | 0x80000000;
    }

    if (v10 - 6 < 0xFFFFFFFB || v11 > 0x93)
    {
      v12 |= 0x40000000u;
    }

    *a4 = v12;
    *a3 = a2 & 0x3FFFFFFF;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    for (i = 28; i != -4; i -= 4)
    {
      v17 = (&unk_298A3A038 + 4 * (((a2 & 0x3FFFFFFF) >> i) & 0xF));
      v14 = *v17 | (4 * v14);
      v15 = v17[16] | (4 * v15);
    }

    v18 = ((65537 * (v14 & 0x7FFFu)) | ((65537 * (v14 & 0x7FFFu)) << 32)) & 0x7AC83D641EB27591;
    v19 = v18 ^ (v18 >> 8) ^ ((v18 ^ (v18 >> 8)) >> 4);
    v20 = (v19 ^ (v19 >> 2) ^ ((v19 ^ (v19 >> 2)) >> 1)) & 0x1000100010001;
    LODWORD(v20) = dword_298A3A0B8[(((v20 >> 30) | v20) | (((v20 >> 30) | v20) >> 15)) & 0xF];
    v21 = ((65537 * (v15 & 0x7FFFu)) | ((65537 * (v15 & 0x7FFFu)) << 32)) & 0x7AC83D641EB27591;
    v22 = v21 ^ (v21 >> 8) ^ ((v21 ^ (v21 >> 8)) >> 4);
    v23 = (v22 ^ (v22 >> 2) ^ ((v22 ^ (v22 >> 2)) >> 1)) & 0x1000100010001;
    LODWORD(v23) = dword_298A3A0B8[(((v23 >> 30) | v23) | (((v23 >> 30) | v23) >> 15)) & 0xF];
    *a3 = (v14 << 15) & 0x3FF80000 | (16 * (v15 & 0x7FF0 | v14 & 0xF)) | v15 & 0xF;
    *a4 = (v20 << 15) & 0x3FF80000 | (16 * (v23 & 0x7FF0 | v20 & 0xF)) | v23 & 0xF;
  }

  return this;
}

uint64_t BlueFin::GlMeBeidouDecodeUtil::NextBit(BlueFin::GlMeBeidouDecodeUtil *this, int a2, _DWORD *a3, int *a4, int *a5, unsigned int *a6, unsigned int *a7, BlueFin::GlBitBuffer *a8, BlueFin::GlBitBuffer *a9, int a10, unsigned int a11, int a12, unsigned int a13)
{
  v17 = 2 * (*a3 ^ this);
  v18 = (*a4 | a2) & 1;
  *a3 = this;
  *a4 = a2;
  v19 = (2 - v18) * (v17 - 1);
  v20 = *(a8 + 7);
  if (*(a8 + 6) == v20)
  {
    v20 = 0;
    *(a8 + 7) = 0;
  }

  *(a8 + 8) = v20;
  *(a8 + 40) = 1;
  result = BlueFin::GlBitBuffer::GetU(a8, BYTE4(a9));
  if (result >> (BYTE4(a9) - 1) == 1)
  {
    v22 = 0xFFFFFFFF00000000 >> (32 - BYTE4(a9));
  }

  else
  {
    v22 = 0;
  }

  v23 = result + v22 + v19;
  if (a9)
  {
    v24 = BlueFin::GlBitBuffer::Reset(a8);
    if (a10 >= v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = a10;
    }

    if (v25 <= -a10)
    {
      v26 = -a10;
    }

    else
    {
      v26 = v25;
    }

    result = BlueFin::GlBitBuffer::PutU(v24, (0xFFFFFFFFuLL >> (32 - BYTE4(a9))) + v26 + 1, BYTE4(a9));
  }

  v27 = v23 > 0;
  *a5 = *a5 & 1 ^ v27 | (2 * *a5);
  *a7 = v27 | (2 * *a7);
  if (v23 >= 0)
  {
    v28 = v23;
  }

  else
  {
    v28 = -v23;
  }

  *a6 = (v28 >= a11) | (2 * *a6);
  return result;
}

uint64_t BlueFin::GlMeBeidouDecodeSyncBitHistBase::Set(BlueFin::GlMeBeidouDecodeSyncBitHistBase *this, uint64_t a2)
{
  v4 = (*(*this + 16))(this);
  v5 = (v4 - 1);
  if (v4 < 1)
  {
LABEL_6:
    (*(*this + 32))(this, v5, a2);
    result = (*(*this + 48))(this, v5, 1);
    v7 = v5;
  }

  else
  {
    v6 = v4;
    v7 = 0;
    while ((*(*this + 24))(this, v7) != a2 && (*(*this + 40))(this, v7))
    {
      v7 = (v7 + 1);
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    (*(*this + 32))(this, v7, a2);
    v9 = (*(*this + 40))(this, v7);
    result = (*(*this + 48))(this, v7, (v9 + 1));
  }

  if (v7 >= 1)
  {
    do
    {
      v10 = (*(*this + 40))(this, (v7 - 1));
      result = (*(*this + 40))(this, v7);
      if (v10 >= result)
      {
        break;
      }

      v11 = (*(*this + 24))(this, (v7 - 1));
      v12 = (*(*this + 24))(this, v7);
      (*(*this + 32))(this, (v7 - 1), v12);
      (*(*this + 32))(this, v7, v11);
      v13 = (*(*this + 40))(this, (v7 - 1));
      v14 = (*(*this + 40))(this, v7);
      (*(*this + 48))(this, (v7 - 1), v14);
      result = (*(*this + 48))(this, v7, v13);
      v15 = v7;
      v7 = (v7 - 1);
    }

    while (v15 > 1);
  }

  return result;
}

BOOL BlueFin::GlMeBeidouDecodeSyncBitHistBase::Get(BlueFin::GlMeBeidouDecodeSyncBitHistBase *this, unsigned int a2, unsigned int a3, unsigned int *a4)
{
  *a4 = (*(*this + 24))(this, 0);
  v7 = (*(*this + 40))(this, 0);
  result = 0;
  if (v7 >= a2)
  {
    v9 = (*(*this + 40))(this, 0);
    return v9 - (*(*this + 40))(this, 1) >= a3;
  }

  return result;
}

_BYTE **BlueFin::GlMeBeidouDataBuildler::Found(_BYTE **this, int a2, int a3)
{
  if (a3)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2;
    if (this[3][a2])
    {
      if (*(this + 8) >= 1)
      {
        v4 = 0;
        do
        {
          if (a2 != v4)
          {
            v5 = this[2];
            v6 = this[3];
            v7 = v6[v4];
            v8 = v6[a2];
            if (v7 <= v8)
            {
              v5[v4] = 0;
              this[3][v4] = 0;
            }

            else if (v5[v4] <= v8)
            {
              v5[v4] = v8 + 1;
            }
          }

          ++v4;
        }

        while (v4 < *(this + 8));
      }

      this[2][a2] = **this;
    }
  }

  v9 = this[2];
  if (!v9[v3])
  {
    v9[v3] = **this;
  }

  this[3][v3] = **this;
  return this;
}

void BlueFin::GlMeBeidouDataBuildler::Reduce(BlueFin::GlMeBeidouDataBuildler *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      do
      {
        v4 = *v3;
        v5 = *(this + 2);
        v6 = *(this + 3);
        v7 = *(v5 + v4);
        v8 = *(v6 + v4);
        if ((v3[1] & 0x80000000) == 0)
        {
          v9 = v3[1];
          v10 = v3 + 2;
          do
          {
            if (v7 <= *(v5 + v9))
            {
              v7 = *(v5 + v9);
            }

            v11 = *(v6 + v9);
            if (v11 < v8)
            {
              v8 = v11;
            }

            v12 = *v10++;
            v9 = v12;
          }

          while ((v12 & 0x80000000) == 0);
        }

        if (v7 < v8 && *(this + 8) >= 1)
        {
          v13 = 0;
          do
          {
            v14 = *(this + 2);
            if (*(v14 + v13) > v7)
            {
              *(v14 + v13) = v7;
            }

            v15 = *(this + 3);
            if (*(v15 + v13) > v7)
            {
              *(v15 + v13) = v7;
            }

            ++v13;
          }

          while (v13 < *(this + 8));
        }

        v16 = v2[1];
        ++v2;
        v3 = v16;
      }

      while (v16);
    }
  }

  v17 = *(this + 8);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = *(this + 2);
    v20 = *(this + 8);
    do
    {
      v22 = *v19++;
      v21 = v22;
      v23 = v18;
      if (v22 < v18)
      {
        v23 = v21;
      }

      if (!v18)
      {
        v23 = v21;
      }

      if (v21)
      {
        v18 = v23;
      }

      --v20;
    }

    while (v20);
    v24 = (v18 - 1);
    if (v24 >= 1)
    {
      v25 = 0;
      do
      {
        v26 = *(this + 2);
        if (*(v26 + v25))
        {
          *(v26 + v25) -= v24;
          *(*(this + 3) + v25) -= v24;
          LOBYTE(v17) = *(this + 8);
        }

        ++v25;
      }

      while (v25 < v17);
    }
  }

  bzero(*(this + 4), 2 * v17);
  v27 = *(this + 8);
  if (v27 >= 1)
  {
    v28 = 0;
    do
    {
      *(*(this + 4) + *(*(this + 2) + v28)) = 1;
      *(*(this + 4) + *(*(this + 3) + v28++)) = 1;
    }

    while (v28 < *(this + 8));
    LOBYTE(v27) = *(this + 8);
  }

  if ((2 * v27 - 2) > 1)
  {
    v29 = (2 * v27 - 2);
    do
    {
      if (*(*(this + 4) + v29))
      {
        v30 = 1;
      }

      else
      {
        v30 = v27 < 1;
      }

      if (!v30)
      {
        v31 = 0;
        do
        {
          v32 = *(this + 2);
          v33 = *(v32 + v31);
          if (v29 < v33)
          {
            *(v32 + v31) = v33 - 1;
          }

          v34 = *(this + 3);
          v35 = *(v34 + v31);
          if (v29 < v35)
          {
            *(v34 + v31) = v35 - 1;
          }

          ++v31;
        }

        while (v31 < *(this + 8));
        LOBYTE(v27) = *(this + 8);
      }

      v30 = v29-- <= 2;
    }

    while (!v30);
  }
}

void BlueFin::GlMeBeidouDataBuildler::Eof(BlueFin::GlMeBeidouDataBuildler *this)
{
  BlueFin::GlMeBeidouDataBuildler::Reduce(this);
  **this = 0;
  v2 = *(this + 8);
  v3 = *this;
  if (v2 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(this + 3) + v4);
      if (*v3 < v5)
      {
        *v3 = v5;
        LOBYTE(v2) = *(this + 8);
        v3 = *this;
      }

      ++v4;
    }

    while (v4 < v2);
  }

  ++*v3;
}

BOOL BlueFin::GlMeBeidouDataBuildler::Done(BlueFin::GlMeBeidouDataBuildler *this)
{
  v2 = *(this + 4);
  v3 = *(this + 8);
  memcpy(v2, *(this + 2), v3);
  memcpy(&v2[v3], *(this + 3), *(this + 8));
  v4 = *(this + 8);
  v5 = *(this + 5);
  v13 = *this;
  v14 = v4;
  v15 = v2;
  v16 = &v2[v3];
  v17 = &v2[2 * v3];
  v18 = v5;
  BlueFin::GlMeBeidouDataBuildler::Reduce(&v13);
  v6 = *v2;
  v7 = v2[v3];
  v8 = *(this + 8);
  if (v8 >= 2)
  {
    v9 = v8 - 1;
    v10 = v2 + 1;
    do
    {
      if (v6 <= *v10)
      {
        v6 = *v10;
      }

      if (v10[v3] < v7)
      {
        v7 = v10[v3];
      }

      ++v10;
      --v9;
    }

    while (v9);
  }

  return v6 > 0 && v6 <= v7;
}

uint64_t BlueFin::GlMeBeidouFrame::NextDataBit(uint64_t a1, BlueFin::GlMeBeidouDecodeMgr *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = 0;
  BlueFin::GlMeBeidouFrame::NextDataBit(a1, a2, a4, a6, &v9 + 1, &v9);
  return (a6 - *(a4 + 24) + HIDWORD(v9));
}

uint64_t BlueFin::GlMeBeidouFrame::NextDataBit(uint64_t a1, BlueFin::GlMeBeidouDecodeMgr *this, uint64_t a3, int a4, _DWORD *a5, unsigned int *a6)
{
  v11 = *(BlueFin::GlMeBeidouDecodeMgr::GetFrameMemory(this) + 72);
  v12 = *(a3 + 28);
  v13 = v12 - *(a3 + 24) + a4;
  *a5 = v12;
  v14 = *(a3 + 24);
  *a6 = v14;
  v15 = *(a1 + 24);
  v16 = *(a1 + 8);
  v17 = v16 - v15 + 30;
  v18 = v11 - v17;
  v19 = v17 >= v11;
  v20 = v17 - v11;
  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = v18;
  }

  v22 = v21 % 0x1E;
  v24 = v13 != v16 || v22 != 0 || v16 == 0;
  result = v24;
  if (v24)
  {
    if (v13 - v11 == 30 * ((v13 - v11) / 0x1E))
    {
      v26 = 0;
    }

    else
    {
      v26 = 30 - (v13 - v11) % 0x1E;
    }

    if (v11 >= v13)
    {
      v26 = 0;
    }

    if (v13 < v11)
    {
      v27 = (v11 - v13) % 0x1E;
    }

    else
    {
      v27 = v26;
    }

    v28 = *a5 + v27;
    if (v14 < v28)
    {
      v28 = v14;
    }

    *a5 = v28;
    v14 = *a6;
  }

  else
  {
    v28 = *a5 - v15;
  }

  v29 = v28 + 30;
  if (v14 >= v29)
  {
    v14 = v29;
  }

  *a6 = v14;
  return result;
}

uint64_t BlueFin::GlMeBeidouDecodeMgr::GetFrameMemory(BlueFin::GlMeBeidouDecodeMgr *this)
{
  if (*(this + 26) != 2)
  {
    DeviceFaultNotify("glme_beidou_decoder_frame.cpp", 621, "GetFrameMemory", "GLME_BDS_DCD_STATE_FRAME == m_eState");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_beidou_decoder_frame.cpp", 621, "GLME_BDS_DCD_STATE_FRAME == m_eState");
  }

  return this + 128;
}

uint64_t BlueFin::GlMeBeidouDecodeMemoryFrame::SendSubframe(uint64_t a1, __int128 *a2, int a3, int a4, int a5, int a6)
{
  v6 = a2[1];
  v17 = *a2;
  v12 = &unk_2A1F09388;
  v18 = v6;
  v19 = *(a2 + 4);
  v13 = *(a1 + 48);
  v14 = a3;
  if (v13 - 81 >= 0x35)
  {
    v7 = 2 * a4;
  }

  else
  {
    v7 = 20 * a4;
  }

  v15 = v7;
  v20 = a5;
  if (*(a1 + 49))
  {
    v8 = 6;
  }

  else
  {
    v9 = 600 * (5 - a3);
    v15 = v7 + v9;
    v20 = v9 + a5;
    v8 = 3;
  }

  v10 = v8 + a6;
  if (v10 > 0x93A7F)
  {
    v10 -= 604800;
  }

  v16 = v10;
  return (*(**(a1 + 8) + 32))(*(a1 + 8), &v12);
}

uint64_t BlueFin::GlMeBeidouFrame::SetDataBits(uint64_t a1, uint64_t a2, unsigned int a3, BlueFin::GlBitBuffer *a4, BlueFin::GlBitBuffer *a5, int a6)
{
  v285 = *MEMORY[0x29EDCA608];
  *v225 = 0;
  if (BlueFin::GlMeBeidouFrame::NextDataBit(a1, a2, a4, a6, &v225[1], v225))
  {
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
  }

  v11 = v225[1];
  BlueFin::GlBitBuffer::Position(a4, v225[1]);
  BlueFin::GlBitBuffer::Position(a5, v11);
  v12 = v225[0] - v11;
  v13 = *(a1 + 16) << (LOBYTE(v225[0]) - v11);
  *(a1 + 16) = v13 | BlueFin::GlBitBuffer::GetU(a4, v12);
  v14 = *(a1 + 20) << v12;
  result = BlueFin::GlBitBuffer::GetU(a5, v12);
  *(a1 + 20) = v14 | result;
  *(a1 + 8) = a6 - *(a4 + 6) + *(a4 + 7);
  v16 = v12 + *(a1 + 24);
  v17 = v16 >= 0x1E;
  if (v16 >= 0x1E)
  {
    LOBYTE(v16) = 30;
  }

  *(a1 + 24) = v16;
  if (v17)
  {
    result = BlueFin::GlMeBeidouDecodeMgr::GetFrameMemory(a2);
    v23 = result;
    v24 = *(a1 + 8);
    v25 = *(result + 72);
    v26 = v25 - v24;
    if (v25 >= v24)
    {
      v28 = 0;
      v27 = 0;
      v29 = 0;
    }

    else
    {
      v27 = (v24 - v25 + 299) / 0x12C;
      v28 = 300 * v27;
      v29 = (v27 + *(result + 64) - 1) / 5;
    }

    v30 = v28 + v26;
    if ((v28 + v26) >= 0x12C)
    {
      DeviceFaultNotify("glme_beidou_decoder_frame.cpp", 671, "SetDataBits", "(0 <= iWordIndex) && (iWordIndex <= 9)");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_beidou_decoder_frame.cpp", 671, "(0 <= iWordIndex) && (iWordIndex <= 9)");
    }

    v223 = *(a1 + 8);
    v32 = *(a1 + 16);
    v31 = *(a1 + 20);
    if (v30 - 270 <= 0x1D)
    {
      v33 = (v32 >> 19) & 0x7FF;
      if (v33 == 1810)
      {
        v34 = 3;
      }

      else
      {
        if (v33 != 237)
        {
          goto LABEL_17;
        }

        v34 = 4;
      }

      result = BlueFin::GlMeBeidouPolarityMgr::SetPolarity(a2, a2, a3, v24, v34);
    }

LABEL_17:
    if (!v27)
    {
      goto LABEL_36;
    }

    BlueFin::GlMeBeidouDecodeMemoryFrame::SendSubframe(v23, a2, 0, v19, v20, v21, v22);
    *(v23 + 80) = 0u;
    *(v23 + 96) = 0u;
    *(v23 + 112) = 0;
    v35 = *(a2 + 96);
    *(v35 + 25) = 0;
    v36 = *(v23 + 68);
    *(v23 + 72) += v28;
    *(v23 + 64) = (v27 + *(v23 + 64) - 1) % 5 + 1;
    v37 = 2443359173 * v36;
    v38 = *(v35 + 49);
    if (v38 == 1)
    {
      v39 = 6 * v27;
    }

    else
    {
      if (!v29)
      {
LABEL_23:
        v40 = v37 >> 43;
        if (v36 > 0x93A7F)
        {
          v36 = (v36 - 604800) % 0x93A80;
          *(v23 + 68) = v36;
        }

        if (v29)
        {
          if (v38)
          {
            v41 = 18;
          }

          else
          {
            v41 = 24;
          }

          v258 = v23 + 1126;
          v259 = v41;
          v260 = v23 + 1127;
          v261 = v23 + 1151;
          p_b = &__b;
          v263 = &BlueFin::OrbitModelState::m_aKeys + 4 * (v38 ^ 1u);
          BlueFin::GlMeBeidouDataBuildler::Eof(&v258);
          v249 = v23 + 1117;
          LOBYTE(v250) = 4;
          v251 = v23 + 1118;
          v252 = v23 + 1122;
          v253 = &__b;
          v254 = 0;
          BlueFin::GlMeBeidouDataBuildler::Eof(&v249);
          v42 = *(*(a2 + 96) + 49);
          if (v42)
          {
            v43 = 6;
          }

          else
          {
            v43 = 8;
          }

          v251 = v23 + 1100;
          LOBYTE(v252) = v43;
          v253 = (v23 + 1101);
          v254 = v23 + 1109;
          v255 = &__b;
          v256 = &BlueFin::ClockModelState::m_aKeys + 2 * ((v42 & 1) == 0);
          BlueFin::GlMeBeidouDataBuildler::Eof(&v251);
          v36 = *(v23 + 68);
        }

        if (v36 / 0xE10 != v40)
        {
          bzero((v23 + 348), 0x2F0uLL);
        }

        *(BlueFin::GlMeBeidouDecodeMgr::Frame(a2, 0) + 12) = 0;
        result = BlueFin::GlMeBeidouDecodeMgr::Frame(a2, 1u);
        *(result + 12) = 0;
LABEL_36:
        if ((v32 & 0x80000000) == 0 && v30 < 0xF0)
        {
LABEL_113:
          *(a1 + 16) |= 0x200000002uLL;
          *(a1 + 24) = 0;
          return result;
        }

        v222 = v30;
        v44 = v30 / 0x1E;
        v45 = v32 & 0x7FFFFFFF;
        v220 = (v23 + 80);
        v221 = 9 - v30 / 0x1E;
        v219 = *(v23 + 80 + 4 * v221);
        v245 = *(*(a2 + 96) + 48);
        if (a3)
        {
          v46 = 2;
        }

        else
        {
          v46 = 1;
        }

        v215 = v46;
        v216 = 10 - v44;
        *v244 = 0;
        BlueFin::GlMeBeidouDecodeUtil::Deinterleave(10 - v30 / 0x1E, v32 & 0x7FFFFFFF, &v244[1], v244, v18);
        v47 = *(*(a2 + 96) + 16);
        if (v47)
        {
          (*(*v47 + 32))(v47, v244[0] == 0, 1, &v245);
        }

        v48 = v244[1];
        result = BlueFin::GlMeBeidouDecodeMgr::Frame(a2, a3);
        v53 = *(v23 + 65);
        if (v53 <= 0xBF)
        {
          if (v44 == 8)
          {
            v54 = *(result + 12);
            if ((v54 & 0x80000000) != 0)
            {
              v55 = (v54 >> 19) & 0x7FF;
              if (v55 != 1810 && v55 != 237)
              {
                goto LABEL_58;
              }

              v56 = v55 == 1810;
              if (v55 == 1810)
              {
                v57 = (v54 << 8) & 0xFF000 | (v48 >> 18) & 0xFFF;
              }

              else
              {
                v57 = ((v54 << 8) & 0xFF000 | (v48 >> 18) & 0xFFF) ^ 0xFFFFF;
              }

              v58 = (v54 >> 12) & 7;
              if (!v56)
              {
                v58 ^= 7u;
              }

              if (v58 == *(v23 + 64) && *(v23 + 68) == v57)
              {
                v59 = v53 + 64;
              }

              else
              {
LABEL_58:
                if ((v53 & 0x3F) == 0)
                {
                  goto LABEL_142;
                }

                v59 = v53 - 1;
              }

              *(v23 + 65) = v59;
            }
          }

          else if (v44 == 9)
          {
            *(result + 12) = v48 & 0x3FFFFFFF | 0x80000000;
          }
        }

        v60 = *(v23 + 64);
        if (v60 > 3)
        {
          goto LABEL_97;
        }

        v61 = *(a2 + 96);
        v62 = *(v61 + 49);
        if ((v62 & 1) == 0 && (v60 != 1 || v30 < 0x96 || (*(v61 + 50) & 1) == 0))
        {
          goto LABEL_97;
        }

        v63 = v31 & 0x7FFFFFFF;
        if (v30 < 0xF0)
        {
          v64 = 10 - v44;
        }

        else
        {
          v64 = 10 - v44;
          if (v30 - 270 > 0x1D)
          {
            v69 = *(v23 + 68);
            v70 = (((v69 & 1) << 28) | (dword_298A3A208[(v69 >> 8) & 0xF] << 23) | (dword_298A3A208[v69 >> 4] << 15) | (dword_298A3A208[v69 & 0xE] << 7)) ^ v45;
            v66 = v70 & 0xFFFFFF00 | (v70 << 22 >> 31);
            v67 = 128;
            v68 = 2;
          }

          else
          {
            v65 = ((*(v23 + 68) >> 8) & 0xFF0 | (v60 << 12) | 0x38900000) ^ v45;
            v66 = (v32 ^ (v65 << 27 >> 31)) & 0xF ^ v65;
            v67 = 8;
            v68 = 1;
          }

          v45 = v66 & 0xBFFFFFFF | (((v66 >> 29) & 1) << 30);
          v63 |= (v63 >> v68) & v67 & 0xBFFFFFFF | (((v63 >> 29) & 1) << 30);
        }

        v238[0] = v23 + 348;
        v238[1] = 0;
        v239 = 0;
        v242 = 0;
        v241 = 0;
        v240 = vdup_n_s32(0x1780u);
        v243 = 0;
        v71 = 1200 * v60 + 120 * v221 - 1200;
        v72 = v62 ? v71 : 120 * (5 * ((v223 - 30 * v64) / 0x5DC - 10 * ((429496730 * ((v223 - 30 * v64) / 0x5DC)) >> 32)) + v221);
        v213 = v72;
        BlueFin::GlBitBuffer::Position(v238, v72);
        BlueFin::GlBitBuffer::Limit(v238, 0x1770u);
        v237 = 0;
        v235 = v63 >> 30;
        v236 = (v45 >> 30) & 1;
        v73 = 29;
        v234 = 0;
        do
        {
          HIDWORD(v208) = 4;
          LOBYTE(v208) = 1;
          BlueFin::GlMeBeidouDecodeUtil::NextBit(((v45 >> v73) & 1), (v63 >> v73) & 1, &v236, &v235, &v234, &v236 + 1, &v237, v238, v208, 7, 3u, v209, HIDWORD(v209));
          --v73;
        }

        while (v73 != -1);
        v75 = v234;
        v232 = 0;
        v233 = 0;
        result = BlueFin::GlMeBeidouDecodeUtil::Deinterleave(v216, v234, &v233, &v232, v74);
        if (v30 <= 0xEF)
        {
          v76 = v232;
        }

        else
        {
          v76 = dword_298A3A118[v221] & v75;
          v232 = v76;
        }

        if (v76 | (v75 ^ v45 ^ ((v75 ^ v45) >> 1)) & 0x1FFFFFFF | v244[0] || HIDWORD(v236) != 0x3FFFFFFF)
        {
          goto LABEL_97;
        }

        v78 = *(a2 + 96);
        if (v30 - 240 > 0x1D || (*(v78 + 50) & 1) == 0)
        {
LABEL_95:
          v81 = *(v23 + 76);
          if ((*(v78 + 49) & 1) == 0 && v81 == -1)
          {
            goto LABEL_97;
          }

          v247[0] = 0;
          v247[1] = 0;
          v226[0] = v247;
          v226[1] = 0;
          v227 = 0;
          v230 = 0;
          v229 = 0;
          v228 = 0x8000000080;
          v231 = 0;
          BlueFin::GlBitBuffer::Position(v238, v213);
          BlueFin::GlBitBuffer::Limit(v238, 0x1770u);
          result = BlueFin::GlBitBuffer::Put(v238, v226, 0x78u);
          v85 = v223 - 30 * v216 - v81 + 15000;
          v86 = *(a2 + 96);
          v87 = *(v86 + 49);
          v279 = (v23 + 1100);
          v88 = v87 == 0;
          if (v87)
          {
            v89 = 6;
          }

          else
          {
            v89 = 8;
          }

          v90 = v87 ^ 1u;
          v280 = v89;
          v281 = v23 + 1101;
          v282 = v23 + 1109;
          v283 = &v278;
          v284 = &BlueFin::ClockModelState::m_aKeys + 2 * v90;
          v272 = (v23 + 1117);
          v91 = v85 % 0x3A98;
          v273 = 4;
          v214 = (11185 * (v85 % 0x3A98)) >> 24;
          v274 = v23 + 1118;
          v275 = v23 + 1122;
          v276 = &v271;
          v277 = 0;
          if (v88)
          {
            v92 = 24;
          }

          else
          {
            v92 = 18;
          }

          v265 = v23 + 1126;
          v266 = v92;
          v267 = v23 + 1127;
          v268 = v23 + 1151;
          v269 = v264;
          v270 = &BlueFin::OrbitModelState::m_aKeys + 4 * v90;
          v93 = *(v23 + 64);
          v212 = v93 - 1;
          if ((v90 & 1) != 0 || !*(v23 + 64) || v221 > 9 || v93 > 3)
          {
            if (*(v86 + 50) != 1 || v221 > 4 || v93 != 1)
            {
              goto LABEL_149;
            }

            v100 = v75 | 0x80000000;
            v101 = v23 + 4 * (5 * v214 + v221);
            v102 = *(v101 + 120);
            *(v101 + 120) = v75 | 0x80000000;
            v97 = dword_298A3A140[5 * v214 + v221];
            v103 = BYTE1(v97);
            if (BYTE2(v97) != 255)
            {
              result = BlueFin::GlMeBeidouDataBuildler::Found(&v279, BYTE2(v97), v102 == v100);
            }

            v97 = v97;
            if (v103 != 255)
            {
              result = BlueFin::GlMeBeidouDataBuildler::Found(&v272, v103, v102 == v100);
            }

            if (v97 == 255)
            {
              goto LABEL_149;
            }

            v98 = v102 == v100;
            v99 = &v265;
          }

          else
          {
            v94 = v75 | 0x80000000;
            v95 = v23 + 4 * (v221 + 10 * (v93 - 1));
            v96 = *(v95 + 120);
            *(v95 + 120) = v75 | 0x80000000;
            if (v93 != 1)
            {
              if (v216 < 2)
              {
LABEL_149:
                if (BlueFin::GlUtils::m_ucEnabled)
                {
                  result = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x77);
                }

                v108 = (v23 + 120);
                v109 = 30;
                if (!*(v86 + 49))
                {
                  v109 = 50;
                }

                v110 = -1;
                v111 = (v23 + 120);
                do
                {
                  v112 = *v111++;
                  v110 &= v112;
                  --v109;
                }

                while (v109);
                if (v110 < 0 && (result = BlueFin::GlMeBeidouDataBuildler::Done(&v265), result) && (result = BlueFin::GlMeBeidouDataBuildler::Done(&v272), result) && (result = BlueFin::GlMeBeidouDataBuildler::Done(&v279), result))
                {
                  v114 = 948965376;
                  v246 = 0;
                  v210 = *(v23 + 68);
                  v211 = *(v23 + 72);
                  if (*(v86 + 49) == 1)
                  {
                    v115 = &__b;
                    v116 = -10;
                    do
                    {
                      BlueFin::GlMeBeidouDecodeUtil::Deinterleave(v116 + 11, *v108, v115, &v246, v113);
                      BlueFin::GlMeBeidouDecodeUtil::Deinterleave(v116 + 11, v108[10], v115 + 10, &v246, v117);
                      BlueFin::GlMeBeidouDecodeUtil::Deinterleave(v116 + 11, v108[20], v115 + 20, &v246, v118);
                      ++v115;
                      ++v108;
                      v17 = __CFADD__(v116++, 1);
                    }

                    while (!v17);
                    v119 = v210 - 6 * v212;
                    if (v119 >= 0xFFF6C580)
                    {
                      v119 += 604800;
                    }

                    v120 = &__b + 1;
                    v121 = v119 << 18;
                    v122 = 3;
                    do
                    {
                      v123 = (v114 + 16 * (v119 >> 12)) | *(v120 - 1);
                      v124 = ((65537 * ((v123 >> 4) & 0x7FF)) | ((65537 * ((v123 >> 4) & 0x7FF)) << 32)) & 0x7AC03D601EB0759;
                      v125 = v124 ^ (v124 >> 8) ^ ((v124 ^ (v124 >> 8)) >> 4);
                      v126 = (v125 ^ (v125 >> 2) ^ ((v125 ^ (v125 >> 2)) >> 1)) & 0x1000100010001;
                      v127 = (((v126 >> 30) | v126) | (((v126 >> 30) | v126) >> 15)) & 0xF | v123;
                      LODWORD(v126) = *v120 | v121 & 0x3FFC0000;
                      v128 = ((65537 * ((v126 >> 19) & 0x7FF)) | ((65537 * ((v126 >> 19) & 0x7FF)) << 32)) & 0x7AC03D601EB0759;
                      v129 = v128 ^ (v128 >> 8) ^ ((v128 ^ (v128 >> 8)) >> 4);
                      v130 = (v129 ^ (v129 >> 2) ^ ((v129 ^ (v129 >> 2)) >> 1)) & 0x1000100010001;
                      v131 = ((65537 * ((v126 >> 8) & 0x7FF)) | ((65537 * ((v126 >> 8) & 0x7FF)) << 32)) & 0x7AC03D601EB0759;
                      v132 = v131 ^ (v131 >> 8) ^ ((v131 ^ (v131 >> 8)) >> 4);
                      v133 = (v132 ^ (v132 >> 2) ^ ((v132 ^ (v132 >> 2)) >> 1)) & 0x1000100010001;
                      v119 += 6;
                      *(v120 - 1) = v127;
                      *v120 = ((v133 >> 30) | v133 | (((v133 >> 30) | v133) >> 15) | (16 * ((v130 >> 30) | v130 | (((v130 >> 30) | v130) >> 15)))) | v126;
                      v120 += 10;
                      v114 += 4096;
                      v121 += 1572864;
                      --v122;
                    }

                    while (v122);
                    v134 = &v257;
                    v135 = 8;
                    do
                    {
                      if (*(v134 - 84))
                      {
                        *(v134 - 20) ^= 0x3FFFFFFFu;
                      }

                      if (*(v134 - 44))
                      {
                        *(v134 - 10) ^= 0x3FFFFFFFu;
                      }

                      if (*(v134 - 4))
                      {
                        *v134 ^= 0x3FFFFFFFu;
                      }

                      v134 = (v134 + 4);
                      --v135;
                    }

                    while (v135);
                    v136 = v211 - 300 * v212;
                    v137 = v119 - 18;
                    v138 = 2 * v136;
                    v139 = 20 * v136;
                    v140 = &__b;
                    v141 = 1;
                    v142.f64[0] = NAN;
                    v142.f64[1] = NAN;
                    v52 = vnegq_f64(v142);
                    *v217 = v52;
                    do
                    {
                      v143 = *(v86 + 32);
                      v142.f64[0] = *(v143 + 32) * 1000.0;
                      *v50.i64 = v142.f64[0] + trunc(v142.f64[0] * 2.32830644e-10) * -4294967300.0;
                      v144 = vbslq_s8(v52, v50, v142);
                      if (v142.f64[0] > 4294967300.0)
                      {
                        v142.f64[0] = *v144.i64;
                      }

                      if (v142.f64[0] < -4294967300.0)
                      {
                        *v144.i64 = -v142.f64[0];
                        v142.f64[0] = -(v142.f64[0] - trunc(v142.f64[0] * -2.32830644e-10) * -4294967300.0);
                        v142.f64[0] = -*vbslq_s8(v52, v142, v144).i64;
                      }

                      if (v142.f64[0] < 0.0)
                      {
                        v145 = --v142.f64[0];
                      }

                      else
                      {
                        v145 = v142.f64[0];
                      }

                      if (*(v143 + 9) - 81 >= 0x35)
                      {
                        v146 = v138;
                      }

                      else
                      {
                        v146 = v139;
                      }

                      result = BlueFin::GlMeBeidouDecodeMemoryFrame::SendSubframe(v86, v140, v141, v136, v146 - *(v143 + 20) + v145, v137);
                      v137 += 6;
                      v136 += 300;
                      ++v141;
                      v140 = (v140 + 40);
                      v138 += 600;
                      v139 += 6000;
                      v52 = *v217;
                    }

                    while (v141 != 4);
                  }

                  else
                  {
                    v173 = 0;
                    v174 = &__b;
                    do
                    {
                      v175 = 0;
                      v176 = v174;
                      do
                      {
                        v177 = v175 + 1;
                        BlueFin::GlMeBeidouDecodeUtil::Deinterleave(v175 + 1, v108[v175], v176++, &v246, v113);
                        v175 = v177;
                      }

                      while (v177 != 5);
                      memset_pattern16(&v249 + 40 * v173++ + 4, &unk_298A3A2C0, 0x14uLL);
                      v174 = (v174 + 40);
                      v108 += 5;
                    }

                    while (v173 != 10);
                    v178 = v210 - 3 * v214;
                    if (v178 >= 0xFFF6C580)
                    {
                      v178 += 604800;
                    }

                    v179 = &__b + 1;
                    v180 = v178 << 18;
                    v181 = 10;
                    do
                    {
                      v182 = *(v179 - 1) | (v178 >> 8) & 0xFF0 | 0x38901000;
                      v183 = ((65537 * ((v182 >> 4) & 0x7FF)) | ((65537 * ((v182 >> 4) & 0x7FF)) << 32)) & 0x7AC03D601EB0759;
                      v184 = v183 ^ (v183 >> 8) ^ ((v183 ^ (v183 >> 8)) >> 4);
                      v185 = (v184 ^ (v184 >> 2) ^ ((v184 ^ (v184 >> 2)) >> 1)) & 0x1000100010001;
                      v186 = (((v185 >> 30) | v185) | (((v185 >> 30) | v185) >> 15)) & 0xF | v182;
                      LODWORD(v185) = *v179 | v180 & 0x3FFC0000;
                      v187 = ((65537 * ((v185 >> 19) & 0x7FF)) | ((65537 * ((v185 >> 19) & 0x7FF)) << 32)) & 0x7AC03D601EB0759;
                      v188 = v187 ^ (v187 >> 8) ^ ((v187 ^ (v187 >> 8)) >> 4);
                      v189 = (v188 ^ (v188 >> 2) ^ ((v188 ^ (v188 >> 2)) >> 1)) & 0x1000100010001;
                      v190 = ((65537 * ((v185 >> 8) & 0x7FF)) | ((65537 * ((v185 >> 8) & 0x7FF)) << 32)) & 0x7AC03D601EB0759;
                      v191 = v190 ^ (v190 >> 8) ^ ((v190 ^ (v190 >> 8)) >> 4);
                      v192 = (v191 ^ (v191 >> 2) ^ ((v191 ^ (v191 >> 2)) >> 1)) & 0x1000100010001;
                      *(v179 - 1) = v186;
                      *v179 = ((v192 >> 30) | v192 | (((v192 >> 30) | v192) >> 15) | (16 * ((v189 >> 30) | v189 | (((v189 >> 30) | v189) >> 15)))) | v185;
                      v178 += 3;
                      v179 += 10;
                      v180 += 786432;
                      --v181;
                    }

                    while (v181);
                    v193 = 0;
                    v194 = &__b + 8;
                    do
                    {
                      v195 = v194;
                      v196 = 3;
                      do
                      {
                        if (*(v195 - 1))
                        {
                          *v195 ^= 0x3FFFFFFFu;
                        }

                        ++v195;
                        --v196;
                      }

                      while (v196);
                      ++v193;
                      v194 += 40;
                    }

                    while (v193 != 10);
                    v197 = v211 - 1500 * v214;
                    v198 = v178 - 30;
                    v199 = 2 * v211 - 3000 * v214;
                    v200 = 20 * v211 - 30000 * v214;
                    v201 = &__b;
                    v202 = 10;
                    v203.f64[0] = NAN;
                    v203.f64[1] = NAN;
                    v52 = vnegq_f64(v203);
                    *v218 = v52;
                    do
                    {
                      v204 = *(v86 + 32);
                      v203.f64[0] = *(v204 + 32) * 1000.0;
                      *v50.i64 = v203.f64[0] + trunc(v203.f64[0] * 2.32830644e-10) * -4294967300.0;
                      v205 = vbslq_s8(v52, v50, v203);
                      if (v203.f64[0] > 4294967300.0)
                      {
                        v203.f64[0] = *v205.i64;
                      }

                      if (v203.f64[0] < -4294967300.0)
                      {
                        *v205.i64 = -v203.f64[0];
                        v203.f64[0] = -(v203.f64[0] - trunc(v203.f64[0] * -2.32830644e-10) * -4294967300.0);
                        v203.f64[0] = -*vbslq_s8(v52, v203, v205).i64;
                      }

                      if (v203.f64[0] < 0.0)
                      {
                        v206 = --v203.f64[0];
                      }

                      else
                      {
                        v206 = v203.f64[0];
                      }

                      if (*(v204 + 9) - 81 >= 0x35)
                      {
                        v207 = v199;
                      }

                      else
                      {
                        v207 = v200;
                      }

                      result = BlueFin::GlMeBeidouDecodeMemoryFrame::SendSubframe(v86, v201, 1, v197, v207 - *(v204 + 20) + v206, v198);
                      v198 += 3;
                      v197 += 1500;
                      v201 = (v201 + 40);
                      v199 += 3000;
                      v200 += 30000;
                      --v202;
                      v52 = *v218;
                    }

                    while (v202);
                  }

                  *(v23 + 1100) = 1;
                  *(v23 + 1117) = 1;
                  *(v23 + 1126) = 1;
                  *(v23 + 1118) = 0;
                  *(v23 + 1101) = 0;
                  *(v23 + 1109) = 0;
                  v49 = 0.0;
                  *(v23 + 1127) = 0u;
                  *(v23 + 1143) = 0u;
                  *(v23 + 1159) = 0u;
                }

                else if (v222 - 210 <= 0x1D && *(v23 + 64) == 1 && (v91 < 0x5DC || (*(v86 + 49) & 1) != 0))
                {
                  v147 = *(v23 + 120);
                  if ((v147 & *(v23 + 124) & *(v23 + 128) & 0x80000000) != 0)
                  {
                    v246 = 0;
                    v148 = *(v23 + 68);
                    memset_pattern16(&__b, &unk_298A3A2C0, 0x28uLL);
                    if (v148 >= 0xFFF6C580)
                    {
                      v150 = v148 + 604800;
                    }

                    else
                    {
                      v150 = v148;
                    }

                    BlueFin::GlMeBeidouDecodeUtil::Deinterleave(1, v147, &__b, &v246, v149);
                    BlueFin::GlMeBeidouDecodeUtil::Deinterleave(2, *(v23 + 124), &__b + 1, &v246, v151);
                    BlueFin::GlMeBeidouDecodeUtil::Deinterleave(3, *(v23 + 128), &__b + 2, &v246, v152);
                    v156 = (v150 >> 8) & 0xFF0 | __b | 0x38901000;
                    v157 = ((65537 * ((v156 >> 4) & 0x7FF)) | ((65537 * ((v156 >> 4) & 0x7FF)) << 32)) & 0x7AC03D601EB0759;
                    v158 = v157 ^ (v157 >> 8) ^ ((v157 ^ (v157 >> 8)) >> 4);
                    v159 = (v158 ^ (v158 >> 2) ^ ((v158 ^ (v158 >> 2)) >> 1)) & 0x1000100010001;
                    LODWORD(__b) = (((v159 >> 30) | v159) | (((v159 >> 30) | v159) >> 15)) & 0xF | v156;
                    v160 = DWORD1(__b) | ((v150 & 0xFFF) << 18);
                    v161 = ((65537 * ((v160 >> 19) & 0x7FF)) | ((65537 * ((v160 >> 19) & 0x7FF)) << 32)) & 0x7AC03D601EB0759;
                    v162 = v161 ^ (v161 >> 8) ^ ((v161 ^ (v161 >> 8)) >> 4);
                    v163 = (v162 ^ (v162 >> 2) ^ ((v162 ^ (v162 >> 2)) >> 1)) & 0x1000100010001;
                    v164 = ((65537 * ((v160 >> 8) & 0x7FF)) | ((65537 * ((v160 >> 8) & 0x7FF)) << 32)) & 0x7AC03D601EB0759;
                    v165 = v164 ^ (v164 >> 8) ^ ((v164 ^ (v164 >> 8)) >> 4);
                    v166 = (v165 ^ (v165 >> 2) ^ ((v165 ^ (v165 >> 2)) >> 1)) & 0x1000100010001;
                    DWORD1(__b) = ((v166 >> 30) | v166 | (((v166 >> 30) | v166) >> 15) | (16 * ((v163 >> 30) | v163 | (((v163 >> 30) | v163) >> 15)))) | v160;
                    if (((v166 & 0x40000000) != 0) | v166 & 1 | ((((v166 >> 30) | v166) & 0x8000) != 0) | v160 & 1)
                    {
                      DWORD2(__b) ^= 0x3FFFFFFFu;
                    }

                    v167 = *(v23 + 72);
                    v168 = *(v86 + 32);
                    *v153.i64 = *(v168 + 32) * 1000.0;
                    *v155.i64 = *v153.i64 + trunc(*v153.i64 * 2.32830644e-10) * -4294967300.0;
                    v169.f64[0] = NAN;
                    v169.f64[1] = NAN;
                    v170 = vnegq_f64(v169);
                    v155.i64[0] = vbslq_s8(v170, v155, v153).u64[0];
                    if (*v153.i64 > 4294967300.0)
                    {
                      v153.i64[0] = v155.i64[0];
                    }

                    if (*v153.i64 < -4294967300.0)
                    {
                      *v154.i64 = -*v153.i64;
                      *v153.i64 = -(*v153.i64 - trunc(*v153.i64 * -2.32830644e-10) * -4294967300.0);
                      *v153.i64 = -*vbslq_s8(v170, v153, v154).i64;
                    }

                    if (*v153.i64 < 0.0)
                    {
                      v171 = --*v153.i64;
                    }

                    else
                    {
                      v171 = *v153.i64;
                    }

                    if (*(v168 + 9) - 81 >= 0x35)
                    {
                      v172 = 2 * v167;
                    }

                    else
                    {
                      v172 = 20 * v167;
                    }

                    result = BlueFin::GlMeBeidouDecodeMemoryFrame::SendSubframe(v86, &__b, 1, v167, v172 - *(v168 + 20) + v171, v150);
                  }
                }

LABEL_97:
                if (v244[0])
                {
                  result = BlueFin::GlMeBeidouPolarityMgr::SetPolarity(a2, a2, a3, v223, 0);
                  v82 = 0;
                }

                else
                {
                  v82 = v215;
                }

                v83 = v219 >> 30;
                if (v219 >> 30)
                {
                  if (((*(v220 + v221) ^ v244[1] ^ ((*(v220 + v221) ^ v244[1]) >> 1)) & 0x1FFFFFFF) == 0 || (v83 != 1 || v82 != 2) && (v83 != 2 || v82 != 1))
                  {
                    goto LABEL_109;
                  }

                  v84 = 0;
                }

                else
                {
                  v84 = v244[1] | (v82 << 30);
                }

                *(v220 + v221) = v84;
LABEL_109:
                if (v222 <= 0x1D)
                {
                  if ((*(*(a2 + 96) + 25) & 1) != 0 || (result = BlueFin::GlMeBeidouDecodeMemoryFrame::SendSubframe(v23, a2, 1, v49, *v50.i64, v51, v52), result))
                  {
                    *(v23 + 112) = 0;
                    *v220 = 0u;
                    *(v23 + 96) = 0u;
                    *(*(a2 + 96) + 25) = 1;
                  }
                }

                goto LABEL_113;
              }

              v98 = v96 == v94;
              if (v93 == 2)
              {
                v107 = -2;
              }

              else
              {
                v107 = 7;
              }

              v99 = &v265;
              v104 = v107 + v216;
LABEL_148:
              result = BlueFin::GlMeBeidouDataBuildler::Found(v99, v104, v98);
              goto LABEL_149;
            }

            if (7 - v44 <= 2)
            {
              result = BlueFin::GlMeBeidouDataBuildler::Found(&v279, 7 - v44, v96 == v94);
            }

            v97 = 5 - v44;
            if (5 - v44 <= 3)
            {
              result = BlueFin::GlMeBeidouDataBuildler::Found(&v272, 5 - v44, v96 == v94);
            }

            if (v216 < 8)
            {
              goto LABEL_149;
            }

            v98 = v96 == v94;
            v99 = &v279;
          }

          v104 = v97;
          goto LABEL_148;
        }

        v264[0] = (v223 - 1500 * ((v233 >> 14) & 0xF) + 16440) % 0x3A98;
        v79 = (v23 + 320);
        *&__b = &unk_2A1F0DA90;
        *(&__b + 1) = v23 + 320;
        v249 = v23 + 340;
        v250 = 5;
        v80 = *(v23 + 76) == -1;
        BlueFin::GlMeBeidouDecodeSyncBitHistBase::Set(&__b, v264[0]);
        result = BlueFin::GlMeBeidouDecodeSyncBitHistBase::Get(&__b, 3u, 3u, v264);
        if (v80)
        {
          if (result)
          {
            *v79 = 0;
            *(v23 + 328) = 0;
            *(v23 + 344) = 0;
            *(v23 + 336) = 0;
            *(v23 + 76) = v264[0];
          }

          goto LABEL_94;
        }

        if (!result)
        {
LABEL_94:
          v78 = *(a2 + 96);
          goto LABEL_95;
        }

        if (*(v23 + 76) == v264[0])
        {
          *v79 = 0;
          *(v23 + 328) = 0;
          *(v23 + 344) = 0;
          *(v23 + 336) = 0;
          goto LABEL_94;
        }

        *(v23 + 76) = v264[0];
LABEL_142:
        *(a2 + 176) = 0u;
        v105 = (a2 + 176);
        *(v105 - 18) = 0;
        *(v105 - 10) = 0;
        *(v105 - 6) = &unk_2A1F0DB48;
        *(v105 - 18) = 0;
        *(v105 - 6) = 0;
        *(v105 - 4) = &unk_2A1F0DB48;
        *(v105 - 10) = 0;
        v105[1] = 0u;
        v105[2] = 0u;
        v105[3] = 0u;
        v105[4] = 0u;
        v105[5] = 0u;
        v105[6] = 0u;
        v105[7] = 0u;
        v105[8] = 0u;
        v105[9] = 0u;
        v105[10] = 0u;
        *(v105 + 172) = 0u;
        *(v105 - 9) = 0;
        *(v105 - 2) = 0;
        v105[13] = 0u;
        v105[14] = 0u;
        v105[15] = 0u;
        v105[16] = 0u;
        v105[17] = 0u;
        v105[18] = 0u;
        v105[19] = 0u;
        v105[20] = 0u;
        v105[21] = 0u;
        v105[22] = 0u;
        v105[23] = 0u;
        v105[24] = 0u;
        v105[25] = 0u;
        v105[26] = 0u;
        v105[27] = 0u;
        v105[28] = 0u;
        v105[29] = 0u;
        v105[30] = 0u;
        v105[31] = 0u;
        v105[32] = 0u;
        v105[33] = 0u;
        v106 = *(v105 - 10);
        ++*(v106 + 28);
        *(v106 + 24) = 1;
        return result;
      }

      v39 = 3 * v29;
    }

    v36 += v39;
    *(v23 + 68) = v36;
    goto LABEL_23;
  }

  return result;
}

void BlueFin::GlMeBeidouDecodeMemoryFrame::Initialize(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2A1F0DA48;
  *(a1 + 12) = 0;
  *(a1 + 17) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = &unk_2A1F0DA48;
  *(a1 + 44) = 0;
  *(a1 + 49) = 0;
  *(a1 + 1100) = 1;
  *(a1 + 1117) = 1;
  *(a1 + 1126) = 1;
  *(a1 + 1118) = 0;
  *(a1 + 1101) = 0u;
  *(a1 + 1127) = 0u;
  *(a1 + 1143) = 0u;
  *(a1 + 1159) = 0u;
  bzero((a1 + 348), 0x2F0uLL);
  *(a1 + 80) = 0u;
  *(a1 + 329) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 72) = a3 % 0x12C;
  *(a1 + 76) = -1;
  *(a1 + 64) = (a4 + 5 * ((858993460 * (a3 / 0x12C)) >> 32) - a3 / 0x12C + 3) % 5 + 1;
  v10 = a5 + 604794 - 6 * (a3 / 0x12C);
  if (*(*(a2 + 96) + 49) != 1)
  {
    v10 = a5 + 604794 - 3 * ((a3 / 0x12C - a4 + 6) / 5) + 6;
  }

  if (v10 > 0x93A7F)
  {
    v10 -= 604800;
  }

  *(a1 + 68) = v10;
  *(a1 + 65) = 20;
}

uint64_t BlueFin::GlMeBeidouDecodeMemoryFrame::SendSubframe(uint64_t a1, uint64_t a2, int a3, double a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v8 = *(a2 + 96);
  if (*(v8 + 49) == 1 && *(a1 + 64) < 4u || *(v8 + 50) == 1 && *(a1 + 64) == 1)
  {
    return 0;
  }

  v34 = *(a2 + 96);
  v9 = 0;
  v10 = 0;
  v39 = &unk_2A1F09388;
  v40 = 0;
  v41 = -1;
  v11.i64[1] = 0;
  memset(v42, 0, sizeof(v42));
  v36 = (a2 + 92);
  v12 = 1;
  v38 = 0;
  do
  {
    v13 = *(a1 + 80 + 4 * v9);
    v14 = v13 & 0x3FFFFFFF;
    v15 = v13 >> 30;
    if (v13 >> 30)
    {
      if (v15 == 2)
      {
        if (BlueFin::GlMeBeidouPolarityMgr::GetPolarity(a2, 1u, *(a1 + 72) - 30 * (9 - v9), &v38))
        {
          v23 = v38;
          goto LABEL_36;
        }
      }

      else if (v15 == 1)
      {
        v19 = 0;
        v20 = *(a1 + 72) - 30 * (9 - v9);
        v21 = v36;
        while (*(v21 - 1) >= v20 || *v21 < v20)
        {
          --v21;
          v22 = v19 + 7;
          --v19;
          if (v22 <= 1)
          {
            goto LABEL_28;
          }
        }

        if (v19 + 7 >= 0)
        {
          v24 = *(v21 - 16);
          if (v24 == 3)
          {
            v23 = 1;
            goto LABEL_35;
          }

          if (v24 == 4)
          {
            v23 = 0;
LABEL_35:
            v38 = v23;
LABEL_36:
            if (v23)
            {
              v18 = v13 & 0x3FFFFFFF;
            }

            else
            {
              v18 = v14 ^ 0x3FFFFFFF;
            }

            goto LABEL_39;
          }
        }
      }

LABEL_28:
      v18 = v13 | 0xC0000000;
      if ((v13 & 0x3FF80000) == 0x7680000)
      {
        v25 = v14 ^ 0x3FFFFFFF;
      }

      else
      {
        v25 = v13 & 0x3FFFFFFF;
      }

      if (v9)
      {
        v12 = 0;
      }

      else
      {
        v18 = v25;
      }

      goto LABEL_39;
    }

    v16 = (v13 & 0x3FF80000) == 0x7680000 && v9 == 0;
    v17 = v13 ^ 0x3FFFFFFF;
    if (!v16)
    {
      v17 = *(a1 + 80 + 4 * v9);
    }

    v18 = v17 | 0x80000000;
    if (!v14)
    {
      v18 = 1269678302;
      ++v10;
    }

LABEL_39:
    *(v42 + ++v9) = v18;
  }

  while (v9 != 10);
  v26 = a3;
  if ((a3 & 1) != 0 || v10 > 9)
  {
    if (v10)
    {
      v26 = 0;
    }

    if ((v26 & v12) != 1)
    {
      return 0;
    }
  }

  v27 = *(v34 + 32);
  v28 = *(a1 + 72);
  *v11.i64 = *(v27 + 32) * 1000.0;
  *a7.i64 = *v11.i64 + trunc(*v11.i64 * 2.32830644e-10) * -4294967300.0;
  v29.f64[0] = NAN;
  v29.f64[1] = NAN;
  v30 = vnegq_f64(v29);
  a7.i64[0] = vbslq_s8(v30, a7, v11).u64[0];
  if (*v11.i64 > 4294967300.0)
  {
    v11.i64[0] = a7.i64[0];
  }

  if (*v11.i64 < -4294967300.0)
  {
    *a6.i64 = -*v11.i64;
    *v11.i64 = -(*v11.i64 - trunc(*v11.i64 * -2.32830644e-10) * -4294967300.0);
    *v11.i64 = -*vbslq_s8(v30, v11, a6).i64;
  }

  if (*v11.i64 < 0.0)
  {
    v31 = --*v11.i64;
  }

  else
  {
    v31 = *v11.i64;
  }

  if (*(v27 + 9) - 81 >= 0x35)
  {
    v32 = 2 * v28;
  }

  else
  {
    v32 = 20 * v28;
  }

  BlueFin::GlMeBeidouDecodeMemoryFrame::SendSubframe(v34, (v42 + 4), *(a1 + 64), v28, v31 - *(v27 + 20) + v32, *(a1 + 68));
  return 1;
}

uint64_t BlueFin::GlMeBeidouPolarityMgr::SetBits(BlueFin::GlMeBeidouPolarityMgr *this, int a2, BlueFin::GlBitBuffer *a3, unsigned int a4, int a5, BlueFin::GlBitBuffer *a6, unsigned int a7)
{
  v12 = 0;
  v56 = *MEMORY[0x29EDCA608];
  v14 = *(a3 + 6);
  v13 = *(a3 + 7);
  *(a3 + 8) = v13;
  *(a3 + 40) = 1;
  *(a6 + 40) = 1;
  v15 = *(a6 + 7);
  *(a6 + 8) = v15;
  v16 = v14 - v13;
  if (v16 && (a2 & a5 & 1) == 0 && a4 == a7 && v16 == *(a6 + 6) - v15)
  {
    v12 = 0;
    if (v16 >= 0x20)
    {
      v17 = 32;
    }

    else
    {
      v17 = v16;
    }

    do
    {
      v18 = BlueFin::GlBitBuffer::GetU(a3, v17);
      v19 = BlueFin::GlBitBuffer::GetU(a6, v17);
      if (v12 == 2 || v18 != v19)
      {
        if (v12 == 1)
        {
          v12 = 0;
          break;
        }

        v12 = 0;
        if (0xFFFFFFFF >> -v17 != (v19 ^ v18))
        {
          break;
        }

        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      v20 = *(a3 + 6);
      v21 = *(a3 + 7);
      if ((v20 - v21) >= 0x20)
      {
        v17 = 32;
      }

      else
      {
        v17 = v20 - v21;
      }
    }

    while (v20 != v21);
  }

  BlueFin::GlBitBuffer::Reset(a3);
  result = BlueFin::GlBitBuffer::Reset(a6);
  if (!v12)
  {
    v30 = 0;
    if (a2 && (a5 & 1) == 0)
    {
      v30 = *(this + 15);
    }

    v31 = a5 ^ 1 | a2;
    v23 = *(this + 7);
    v32 = v31 == 0;
    if (v31)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(this + 7);
    }

    if (v32)
    {
      v29 = 0;
    }

    else
    {
      v29 = v30;
    }

    v51 = xmmword_298A3A2F0;
    v52 = unk_298A3A300;
    v53 = xmmword_298A3A310;
    v54 = unk_298A3A320;
    v49 = xmmword_298A3A2D0;
    v50 = unk_298A3A2E0;
    v55 = 4;
    goto LABEL_37;
  }

  v55 = 4;
  v51 = xmmword_298A3A2F0;
  v52 = unk_298A3A300;
  v53 = xmmword_298A3A310;
  v54 = unk_298A3A320;
  v49 = xmmword_298A3A2D0;
  v50 = unk_298A3A2E0;
  v23 = *(this + 7);
  if (v12 != 1)
  {
    v29 = 2;
    v28 = 2;
LABEL_37:
    if (v28 != 2 || v29 != 2)
    {
      v27 = a4;
      v26 = a7;
      goto LABEL_51;
    }

    v24 = (&v53 + 4);
    v25 = &v54 + 8;
    if (v23 != 4)
    {
      v27 = a4;
      v26 = a7;
      if (v23 != 3)
      {
        v28 = 2;
        v29 = 2;
        goto LABEL_51;
      }

      v28 = 2;
      v29 = 2;
      if (*(this + 15) != 3)
      {
        goto LABEL_51;
      }

LABEL_49:
      *v24 = 0;
      *v25 = 0;
      v29 = v28;
      goto LABEL_51;
    }

    v28 = 2;
    v29 = 2;
    v33 = *(this + 15) == 4;
LABEL_47:
    v27 = a4;
    v26 = a7;
    if (!v33)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v24 = &v53;
  v25 = &v54 + 4;
  if (v23 == 4)
  {
    v28 = 1;
    v29 = 1;
    v33 = *(this + 15) == 3;
    goto LABEL_47;
  }

  v27 = a4;
  v26 = a7;
  if (v23 != 3)
  {
    v28 = 1;
    v29 = 1;
    goto LABEL_51;
  }

  v28 = 1;
  v29 = 1;
  if (*(this + 15) == 4)
  {
    goto LABEL_49;
  }

LABEL_51:
  v34 = *(&v49 + 5 * v23 + v28);
  v35 = *(this + 15);
  v36 = *(&v49 + 5 * v35 + v29);
  v37 = v34 != 1 || (v36 - 3) >= 2;
  v38 = *(&v49 + 5 * v35 + v29);
  if (v37)
  {
    if (v34 == 2 && v36 == 3)
    {
      v38 = 3;
      v36 = 4;
      goto LABEL_72;
    }

    if (v34 == 2 && v36 == 4)
    {
      goto LABEL_70;
    }

    if ((v34 - 3) <= 1 && v36 == 1)
    {
      v36 = v34;
      v38 = v34;
      goto LABEL_72;
    }

    if (v34 == 3 && v36 == 2)
    {
LABEL_70:
      v38 = 4;
      v36 = 3;
      goto LABEL_72;
    }

    if (v36 == 2 && v34 == 4)
    {
      v38 = 3;
    }

    else
    {
      v38 = *(&v49 + 5 * v35 + v29);
    }

    v36 = v34;
  }

LABEL_72:
  if (v23 != v36 || v35 != v38)
  {
    *this = *(this + 4);
    *(this + 2) = *(this + 20);
    *(this + 6) = *(this + 7);
    v43 = (this + 68);
    v44 = 7;
    do
    {
      *(v43 - 9) = *(v43 - 8);
      *(v43 - 1) = *v43;
      ++v43;
      --v44;
    }

    while (v44);
    *(this + 7) = v36;
    *(this + 15) = v38;
  }

  if (v26 <= v27)
  {
    v45 = v27;
  }

  else
  {
    v45 = v26;
  }

  *(this + 23) = v45;
  return result;
}

_DWORD *BlueFin::GlMeBeidouPolarityMgr::SetPolarity(_DWORD *result, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v39 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = 15;
  for (i = result; i[22] >= a4 || i[23] < a4; --i)
  {
    v8 = v6 - 8;
    --v6;
    if (v8 <= 1)
    {
      return result;
    }
  }

  v9 = v6 - 8;
  if (v6 - 8 >= 0)
  {
    if (a5 == 3)
    {
      v10 = 4;
    }

    else
    {
      v10 = 3;
    }

    if (v10 == i[8 * a3 + 7])
    {
      v11 = 0;
    }

    else
    {
      v11 = a5;
    }

    if ((v11 - 5) > 0xFFFFFFFD)
    {
      v37 = a3;
      v38[0] = a3 == 0;
      v38[a3 + 1] = v11;
      v38[(a3 == 0) + 1] = 0;
      if (v9 > 7)
      {
        goto LABEL_38;
      }

      v13 = v38[0];
      v14 = v6 - 8;
      do
      {
        v15 = v38;
        v16 = 1;
        v17 = v5;
        do
        {
          v18 = v16;
          v19 = v38[v17 + 1];
          if (v19)
          {
            v20 = &result[8 * v17];
            v21 = v20[v14];
            if (v21 == 1)
            {
              v20[v14] = v19;
              if (v19 == 3)
              {
                v22 = 3;
              }

              else
              {
                v22 = 4;
              }

              v38[*v15 + 1] = v22;
              v21 = v19;
            }

            if (v21)
            {
              if (v21 == 2)
              {
                v23 = v38[v17 + 1];
                v20[v14] = v23;
                if (v23 == 3)
                {
                  v24 = 4;
                }

                else
                {
                  v24 = 3;
                }

                v38[*v15 + 1] = v24;
              }
            }

            else
            {
              v38[v17 + 1] = 0;
            }
          }

          v16 = 0;
          v15 = &v37;
          v17 = v13;
        }

        while ((v18 & 1) != 0);
        ++v14;
      }

      while (v14 != 8);
      if (v6 != 8)
      {
LABEL_38:
        v25 = v38[0];
        do
        {
          v26 = v9--;
          v27 = v38;
          v28 = 1;
          v29 = v5;
          do
          {
            v30 = v28;
            v31 = v38[v29 + 1];
            if (v31)
            {
              v32 = &result[8 * v29];
              v33 = v32[v9];
              if (v33 == 1)
              {
                v32[v9] = v31;
                if (v31 == 3)
                {
                  v34 = 3;
                }

                else
                {
                  v34 = 4;
                }

                v38[*v27 + 1] = v34;
                v33 = v31;
              }

              if (v33)
              {
                if (v33 == 2)
                {
                  v35 = v38[v29 + 1];
                  v32[v9] = v35;
                  if (v35 == 3)
                  {
                    v36 = 4;
                  }

                  else
                  {
                    v36 = 3;
                  }

                  v38[*v27 + 1] = v36;
                }
              }

              else
              {
                v38[v29 + 1] = 0;
              }
            }

            v28 = 0;
            v27 = &v37;
            v29 = v25;
          }

          while ((v30 & 1) != 0);
        }

        while (v26 >= 2);
      }
    }

    else
    {
      if (i[22] < a4 - 30)
      {
        v12 = result + 9;
        do
        {
          *(v12 - 9) = *(v12 - 8);
          *(v12 - 1) = *v12;
          v12[7] = v12[8];
          ++v12;
          --v9;
        }

        while (v9);
        i[22] = a4 - 30;
      }

      i[7] = 0;
      i[15] = 0;
    }
  }

  return result;
}

uint64_t BlueFin::GlMeBeidouPolarityMgr::GetPolarity(uint64_t a1, unsigned int a2, unsigned int a3, char *a4)
{
  v4 = 0;
  while (*(a1 + 88) >= a3 || *(a1 + 92) < a3)
  {
    a1 -= 4;
    v5 = v4 + 7;
    --v4;
    if (v5 <= 1)
    {
      return 0;
    }
  }

  if (v4 + 7 < 0)
  {
    return 0;
  }

  v7 = *(a1 + 32 * a2 + 28);
  if (v7 == 3)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v7 != 4)
  {
    return 0;
  }

  v8 = 0;
LABEL_11:
  *a4 = v8;
  return 1;
}

uint64_t BlueFin::GlMeBeidouPreamble::SetDataBits(uint64_t a1, uint64_t a2, int a3, BlueFin::GlBitBuffer *a4, BlueFin::GlBitBuffer *a5, unsigned int a6)
{
  v89[50] = *MEMORY[0x29EDCA608];
  v79[0] = &v88;
  v79[1] = 0;
  v80 = 0;
  v83 = 0;
  v82 = 0;
  v81 = vdup_n_s32(0xC80u);
  v84 = 0;
  v73[0] = v89;
  v73[1] = 0;
  v74 = 0;
  v77 = 0;
  v76 = 0;
  v75 = v81;
  v78 = 0;
  v65 = 0;
  v9 = *(a2 + 104);
  v10 = a2 + 4 * (116 * a3) + 384;
  if (v9)
  {
    v10 = 0;
  }

  if (v9 == 1)
  {
    v11 = a2 + 4 * (136 * a3) + 224;
  }

  else
  {
    v11 = v10;
  }

  v68[0] = v11;
  v68[1] = 0;
  v69 = 0;
  v71 = 0;
  *&v70[8] = 0;
  *v70 = vdup_n_s32(0x880u);
  v72 = 0;
  BlueFin::GlBitBuffer::Limit(v68, *(a1 + 12));
  v12 = *(a2 + 104);
  if (v12 == 1)
  {
    v13 = a2 + 4 * (136 * a3 + 68) + 224;
  }

  else if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = a2 + 4 * (116 * a3 + 58) + 384;
  }

  v62[0] = v13;
  v62[1] = 0;
  v63 = 0;
  v66 = 0;
  *&v64[8] = 0;
  *v64 = vdup_n_s32(0x880u);
  v67 = 0;
  BlueFin::GlBitBuffer::Limit(v62, *(a1 + 12));
  if (*(a1 + 8) == a6 - *(a4 + 6) + *(a4 + 7))
  {
    v14 = *&v70[4] - *&v70[8];
  }

  else
  {
    v14 = 0;
    HIDWORD(v71) = 0;
    *&v70[4] = 0;
    v72 = 0;
    v66 = 0;
    *&v64[4] = 0;
    v67 = 0;
  }

  BlueFin::GlBitBuffer::Put(v79, v68, v14);
  BlueFin::GlBitBuffer::Put(v79, a4, *(a4 + 6) - *(a4 + 7));
  v81.i32[1] = v82;
  LODWORD(v82) = 0;
  v84 = 0;
  BlueFin::GlBitBuffer::Put(v73, v62, *&v64[4] - *&v64[8]);
  BlueFin::GlBitBuffer::Put(v73, a5, *(a5 + 6) - *(a5 + 7));
  v75.i32[1] = v76;
  LODWORD(v76) = 0;
  v78 = 0;
  PreambleMemory = BlueFin::GlMeBeidouDecodeMgr::GetPreambleMemory(a2);
  v15 = a6;
  v16 = a6 - *(a4 + 6);
  v17 = *(PreambleMemory + 68);
  if (v17 <= 0xEF)
  {
    v18 = 60;
  }

  else
  {
    v18 = -240;
  }

  v19 = v18 + v17;
  v48 = v16 >= v18 + v17;
  v20 = v16 - (v18 + v17);
  if (v20 != 0 && v48)
  {
    v19 += 300 * ((v20 + 299) / 0x12C);
  }

  if (v19 >= a6)
  {
    goto LABEL_61;
  }

  while (2)
  {
    v21 = v19 - 60;
    v22 = v15 - (v19 - 60);
    v23 = v81.i16[2] - v22;
    if (v81.i32[1] < v22)
    {
      goto LABEL_60;
    }

    v58 = v19;
    BlueFin::GlBitBuffer::Position(v79, (v81.i16[2] - v22));
    BlueFin::GlBitBuffer::Position(v73, v23);
    v24 = BlueFin::GlBitBuffer::GetU(v79, 0x1Eu);
    BlueFin::GlMeBeidouDecodeUtil::Deinterleave(1, v24, &v86, &v85, v25);
    v26 = BlueFin::GlBitBuffer::GetU(v79, 0x1Eu);
    result = BlueFin::GlMeBeidouDecodeUtil::Deinterleave(2, v26, &v87, &v85 + 1, v27);
    v29 = v86;
    v30 = v87;
    if (!(v86 >> 29))
    {
      v29 = v86 ^ 0x3FFFFFFF;
      v30 = v87 ^ 0x3FFFFFFF;
      v86 ^= 0x3FFFFFFFu;
      v87 ^= 0x3FFFFFFFu;
    }

    v31 = 0;
    v32 = (PreambleMemory + 57);
    v33 = 10;
    do
    {
      v34 = *v32;
      if ((((((v29 >> 19) ^ (v29 >> 20)) & 0x3FF) >> (v33 - 1)) & 1) == 0)
      {
        if (v34 == 128)
        {
          v35 = 0;
          goto LABEL_32;
        }

        LOBYTE(v35) = -1;
LABEL_31:
        v36 = v35 + v34;
        *v32 = v36;
        v35 = v36 > 0;
        goto LABEL_32;
      }

      v35 = 1;
      if (v34 != 127)
      {
        goto LABEL_31;
      }

LABEL_32:
      v31 = v35 | (2 * v31);
      ++v32;
      --v33;
    }

    while (v33);
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      result = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x77);
    }

    if (v31 != 155)
    {
      goto LABEL_67;
    }

    v37 = (v29 >> 12) & 7;
    v38 = (v29 << 8) & 0xFF000 | (v30 >> 18) & 0xFFF;
    v39 = (v21 - *(PreambleMemory + 68)) / 0x12C;
    v40 = v85 == 0;
    v41 = v38 < 0x93A80;
    if (v40 && v41)
    {
      v42 = 0;
    }

    else
    {
      v42 = 7;
    }

    if (v40 && v41)
    {
      v43 = 0;
    }

    else
    {
      v43 = 0xFFFFF;
    }

    v60[0] = &unk_2A1F0DA90;
    v60[1] = PreambleMemory + 32;
    v60[2] = PreambleMemory + 52;
    v61 = 5;
    v44 = *(*(a2 + 96) + 49);
    v45 = v39 - 5 * ((858993460 * v39) >> 32);
    v46 = 1;
    do
    {
      v47 = v46;
      v48 = (v37 - 1) > 4 || v38 >= 0x93A80;
      if (!v48)
      {
        v49 = v37 - v45 - 1;
        if ((v37 - v45 + 4) < 5)
        {
          v49 = v37 - v45 + 4;
        }

        if (v44)
        {
          v50 = v38 - (6 * v39 - 604800 * (((116350437 * (6 * v39)) >> 32) >> 14)) + 604800;
        }

        else
        {
          v50 = v38 + 604800 + -3 * ((v49 + v39) / 5) + 604800 * (3 * ((v49 + v39) / 5) / 0x93A80);
        }

        if (v50 >= 0x93A80)
        {
          v50 -= 604800;
        }

        BlueFin::GlMeBeidouDecodeSyncBitHistBase::Set(v60, v50 + (v49 << 20) + 0x100000);
      }

      v46 = 0;
      v37 ^= v42;
      v38 ^= v43;
    }

    while ((v47 & 1) != 0);
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x77);
    }

    v59 = 0;
    result = BlueFin::GlMeBeidouDecodeSyncBitHistBase::Get(v60, 3u, 3u, &v59);
    if (!result)
    {
      v15 = a6;
      v19 = v58;
LABEL_60:
      v19 += 300;
      if (v19 >= v15)
      {
LABEL_61:
        BlueFin::GlBitBuffer::Position(v79, (v81.i32[1] - *v70) & ~((v81.i32[1] - *v70) >> 31));
        BlueFin::GlBitBuffer::Position(v73, (v75.i32[1] - *v64) & ~((v75.i32[1] - *v64) >> 31));
        HIDWORD(v71) = 0;
        *&v70[4] = *v70;
        *&v70[8] = 0;
        v72 = 0;
        BlueFin::GlBitBuffer::Put(v68, v79, v81.i32[1] - v82);
        *&v70[4] = *&v70[8];
        *&v70[8] = 0;
        v72 = 0;
        v66 = 0;
        *&v64[4] = *v64;
        *&v64[8] = 0;
        v67 = 0;
        result = BlueFin::GlBitBuffer::Put(v62, v73, v75.i32[1] - v76);
        *(a1 + 12) = *&v70[4];
        *(a1 + 8) = a6;
        return result;
      }

      continue;
    }

    break;
  }

  v51 = v59 & 0xFFFFF;
  if ((v59 - 0x100000) >> 20 <= 4 && v51 < 0x93A80)
  {
    return BlueFin::GlMeBeidouDecodeMgr::SyncFound(a2, *(PreambleMemory + 68), (v59 >> 20), v51);
  }

LABEL_67:
  *(a2 + 176) = 0u;
  *(a2 + 104) = 0;
  *(a2 + 136) = 0;
  *(a2 + 128) = &unk_2A1F0DB48;
  *(a2 + 140) = 0;
  *(a2 + 152) = 0;
  *(a2 + 144) = &unk_2A1F0DB48;
  *(a2 + 156) = 0;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 348) = 0u;
  *(a2 + 167) = 0;
  *(a2 + 160) = 0;
  *(a2 + 384) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 496) = 0u;
  *(a2 + 512) = 0u;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 0u;
  *(a2 + 560) = 0u;
  *(a2 + 576) = 0u;
  *(a2 + 592) = 0u;
  *(a2 + 608) = 0u;
  *(a2 + 624) = 0u;
  *(a2 + 640) = 0u;
  *(a2 + 656) = 0u;
  *(a2 + 672) = 0u;
  *(a2 + 688) = 0u;
  *(a2 + 704) = 0u;
  v53 = *(a2 + 96);
  ++*(v53 + 28);
  *(v53 + 24) = 1;
  return result;
}

uint64_t BlueFin::GlMeBeidouDecodeMgr::GetPreambleMemory(BlueFin::GlMeBeidouDecodeMgr *this)
{
  if (*(this + 26) != 1)
  {
    DeviceFaultNotify("glme_beidou_decoder_preamble.cpp", 204, "GetPreambleMemory", "GLME_BDS_DCD_STATE_PREAMBLE == m_eState");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_beidou_decoder_preamble.cpp", 204, "GLME_BDS_DCD_STATE_PREAMBLE == m_eState");
  }

  return this + 128;
}

int64x2_t BlueFin::GlMeBeidouDecodeMemoryPreambleBase::GlMeBeidouDecodeMemoryPreambleBase(BlueFin::GlMeBeidouDecodeMemoryPreambleBase *this, unsigned int a2)
{
  *(this + 2) = 0;
  *this = &unk_2A1F0DB00;
  *(this + 6) = 0;
  *(this + 6) = 0;
  *(this + 2) = &unk_2A1F0DB00;
  *(this + 14) = 0;
  *(this + 34) = a2 % 0x12C;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 63) = 0;
  result = xmmword_298A319D0;
  v3 = this + 58;
  v4 = vdupq_n_s64(2uLL);
  v5 = 10;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), result)).u8[0])
    {
      if ((0x9Bu >> (v5 - 1)))
      {
        v6 = 5;
      }

      else
      {
        v6 = -5;
      }

      *(v3 - 1) = v6;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&result)).i32[1])
    {
      if ((0x9Bu >> (v5 - 2)))
      {
        v7 = 5;
      }

      else
      {
        v7 = -5;
      }

      *v3 = v7;
    }

    result = vaddq_s64(result, v4);
    v3 += 2;
    v5 -= 2;
  }

  while (v5);
  return result;
}

BlueFin::GlBitBuffer *BlueFin::GlMeBeidouSearch::SetDataBits(uint64_t a1, BlueFin::GlMeBeidouDecodeMgr *a2, int a3, BlueFin::GlBitBuffer *a4, BlueFin::GlBitBuffer *a5, int a6)
{
  HIDWORD(v41) = a6;
  v86[45] = *MEMORY[0x29EDCA608];
  v72[0] = &v85;
  v72[1] = 0;
  v73 = 0;
  v76 = 0;
  v75 = 0;
  v74 = vdup_n_s32(0xB40u);
  v77 = 0;
  v66[0] = v86;
  v66[1] = 0;
  v67 = 0;
  v70 = 0;
  v69 = 0;
  v68 = v74;
  v71 = 0;
  v58 = 0;
  v52 = 0;
  v11 = *(a2 + 26);
  v12 = a2 + 4 * (116 * a3) + 384;
  if (v11)
  {
    v12 = 0;
  }

  if (v11 == 1)
  {
    v13 = a2 + 4 * (136 * a3) + 224;
  }

  else
  {
    v13 = v12;
  }

  v61[0] = v13;
  v61[1] = 0;
  v62 = 0;
  v64 = 0;
  *&v63[8] = 0;
  *v63 = vdup_n_s32(0x740u);
  v65 = 0;
  BlueFin::GlBitBuffer::Limit(v61, *(a1 + 12));
  v14 = *(a2 + 26);
  if (v14 == 1)
  {
    v15 = a2 + 4 * (136 * a3 + 68) + 224;
  }

  else if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2 + 4 * (116 * a3 + 58) + 384;
  }

  v55[0] = v15;
  v55[1] = 0;
  v56 = 0;
  v59 = 0;
  *&v57[8] = 0;
  *v57 = vdup_n_s32(0x740u);
  v60 = 0;
  BlueFin::GlBitBuffer::Limit(v55, *(a1 + 12));
  v48[0] = BlueFin::GlMeBeidouDecodeMgr::GetSearchMemory(a2) + 48;
  v48[1] = 0;
  v49 = 0;
  v53 = 0;
  v51 = 0;
  v50 = vdup_n_s32(0x5E0u);
  v54 = 0;
  BlueFin::GlBitBuffer::Limit(v48, 0x5DCu);
  if (*(a1 + 8) == HIDWORD(v41) - *(a4 + 6) + *(a4 + 7))
  {
    v16 = *&v63[4] - *&v63[8];
  }

  else
  {
    v16 = 0;
    HIDWORD(v64) = 0;
    *&v63[4] = 0;
    v65 = 0;
    v59 = 0;
    *&v57[4] = 0;
    v60 = 0;
  }

  BlueFin::GlBitBuffer::Put(v72, v61, v16);
  BlueFin::GlBitBuffer::Put(v72, a4, *(a4 + 6) - *(a4 + 7));
  v74.i32[1] = v75;
  LODWORD(v75) = 0;
  v77 = 0;
  BlueFin::GlBitBuffer::Put(v66, v55, *&v57[4] - *&v57[8]);
  BlueFin::GlBitBuffer::Put(v66, a5, *(a5 + 6) - *(a5 + 7));
  v68.i32[1] = v69;
  LODWORD(v69) = 0;
  v71 = 0;
  v17 = *&v63[4];
  if (*&v63[4] <= 60)
  {
    v17 = 60;
  }

  BlueFin::GlBitBuffer::Position(v72, v17 - 60);
  v18 = *&v57[4];
  if (*&v57[4] <= 60)
  {
    v18 = 60;
  }

  BlueFin::GlBitBuffer::Position(v66, v18 - 60);
  v19 = v74.i32[1];
  if ((v74.i32[1] - v75) < 0x3D)
  {
    goto LABEL_39;
  }

  *v47 = 0;
  BlueFin::GlBitBuffer::Position(v48, (5 * (HIDWORD(v41) - (v74.i32[1] - v75))) % v50.i32[1]);
  *v46 = 0;
  v45 = 0;
  v20 = 10;
  v21 = *&v63[4];
  do
  {
    v22 = BlueFin::GlBitBuffer::GetU(v72, 1u);
    v23 = BlueFin::GlBitBuffer::GetU(v66, 1u);
    HIDWORD(v40) = 5;
    LOBYTE(v40) = v21 < 0x3D;
    BlueFin::GlMeBeidouDecodeUtil::NextBit(v22, v23, &v47[1], v47, &v46[1], &v45, v46, v48, v40, 15, 5u, v41, HIDWORD(v41));
    --v20;
  }

  while (v20);
  v19 = v74.i32[1];
  if ((v74.i32[1] - v75) < 0x33)
  {
LABEL_39:
    BlueFin::GlBitBuffer::Position(v72, (v19 - *v63) & ~((v19 - *v63) >> 31));
    BlueFin::GlBitBuffer::Position(v66, (v68.i32[1] - *v57) & ~((v68.i32[1] - *v57) >> 31));
    HIDWORD(v64) = 0;
    *&v63[4] = *v63;
    v65 = 0;
    BlueFin::GlBitBuffer::Put(v61, v72, v74.i32[1] - v75);
    *&v63[4] = *&v63[8];
    v65 = 0;
    v59 = 0;
    *&v57[4] = *v57;
    *&v57[8] = 0;
    v60 = 0;
    result = BlueFin::GlBitBuffer::Put(v55, v66, v68.i32[1] - v69);
    *(a1 + 12) = *&v63[4];
    *(a1 + 8) = HIDWORD(v41);
    return result;
  }

  v24 = HIDWORD(v41) - 60;
  while (1)
  {
    v25 = BlueFin::GlBitBuffer::GetU(v72, 1u);
    v26 = BlueFin::GlBitBuffer::GetU(v66, 1u);
    HIDWORD(v40) = 5;
    LOBYTE(v40) = 1;
    BlueFin::GlMeBeidouDecodeUtil::NextBit(v25, v26, &v47[1], v47, &v46[1], &v45, v46, v48, v40, 15, 5u, v41, HIDWORD(v41));
    v45 &= 0x3FFu;
    v27 = v45 == 1023 && (v46[0] & 0x3FF) == 155;
    v28 = v27;
    if (!v27 && ((v46[1] & 0x7FF ^ 0x712) & 0x3FF) != (v46[1] & 0x7FF ^ 0x712u) >> 1)
    {
      goto LABEL_38;
    }

    BlueFin::GlBitBuffer::Position(v72, v75 - 11);
    BlueFin::GlBitBuffer::Position(v66, v69 - 11);
    v29 = BlueFin::GlBitBuffer::GetU(v72, 0x1Eu);
    BlueFin::GlMeBeidouDecodeUtil::Deinterleave(1, v29, &v84, &v82, v30);
    v31 = BlueFin::GlBitBuffer::GetU(v66, 0x1Eu);
    BlueFin::GlMeBeidouDecodeUtil::Deinterleave(1, v31, &v80, &v78, v32);
    v33 = BlueFin::GlBitBuffer::GetU(v72, 0x1Eu);
    BlueFin::GlMeBeidouDecodeUtil::Deinterleave(2, v33, &v84 + 1, &v83, v34);
    v35 = BlueFin::GlBitBuffer::GetU(v66, 0x1Eu);
    BlueFin::GlMeBeidouDecodeUtil::Deinterleave(2, v35, &v81, &v79, v36);
    if (v84 >> 19 != 1810)
    {
      v84 ^= 0x3FFFFFFF3FFFFFFFuLL;
    }

    v37 = v24 - v74.i32[1] + v75;
    v44 = v37;
    if (v28)
    {
      return BlueFin::GlMeBeidouDecodeMgr::SyncFound(a2, v24 - v74.i32[1] + v75, 0, 0xFFFFFFFF);
    }

    SearchMemory = BlueFin::GlMeBeidouDecodeMgr::GetSearchMemory(a2);
    v42[0] = &off_2A1F0DB90;
    v42[1] = SearchMemory + 32;
    v42[2] = SearchMemory + 42;
    v43 = 5;
    BlueFin::GlMeBeidouDecodeSyncBitHistBase::Set(v42, v37 % 0x12C);
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x77);
    }

    if (BlueFin::GlMeBeidouDecodeSyncBitHistBase::Get(v42, 3u, 3u, &v44))
    {
      return BlueFin::GlMeBeidouDecodeMgr::SyncFound(a2, v44, 0, 0xFFFFFFFF);
    }

    BlueFin::GlBitBuffer::Position(v72, v75 - 49);
    BlueFin::GlBitBuffer::Position(v66, v69 - 49);
LABEL_38:
    v19 = v74.i32[1];
    if ((v74.i32[1] - v75) < 0x33)
    {
      goto LABEL_39;
    }
  }
}

uint64_t BlueFin::GlMeBeidouDecodeMgr::GetSearchMemory(BlueFin::GlMeBeidouDecodeMgr *this)
{
  if (*(this + 26))
  {
    DeviceFaultNotify("glme_beidou_decoder_search.cpp", 152, "GetSearchMemory", "GLME_BDS_DCD_STATE_SEARCH == m_eState");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_beidou_decoder_search.cpp", 152, "GLME_BDS_DCD_STATE_SEARCH == m_eState");
  }

  return this + 128;
}

uint64_t BlueFin::GlMeFrameAidMgr::FindBestPair(BlueFin::GlMeFrameAidMgr *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = 0;
  v4 = 0;
  v5 = this + 40;
  v6 = -1;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v8 = *&v5[4 * i - 28];
      if (v8 != -1)
      {
        v9 = *(this + v3);
        if (v9 != -1)
        {
          v10 = v8 - v9;
          if (v10 < 0)
          {
            v10 = -v10;
          }

          v11 = (v10 + 19) / 0x14u - 300 * (((229064923 * ((v10 + 19) / 0x14u)) >> 32) >> 4);
          v12 = 13 * v10 + 500000;
          v13 = 300 - v11;
          if (v11 < 300 - v11)
          {
            v13 = v11;
          }

          if (v12 <= 0x112A87F && v13 <= 2)
          {
            v14 = v5[i];
            if (v6 <= v14)
            {
              if (v6 == v14)
              {
                v4 = 0;
              }

              else
              {
                *a2 = v3;
                *a3 = i;
                v6 = v5[i];
                v4 = 1;
              }
            }
          }
        }
      }
    }

    ++v3;
  }

  while (v3 != 3);
  return v4 & 1;
}

uint64_t BlueFin::GlMeFrameAidMgr::FoundHOW(BlueFin::GlMeFrameAidMgr *this, int8x16_t a2, int a3, int a4, double a5, int8x16_t a6, int8x16_t a7)
{
  *a2.i64 = *a2.i64 * 1000.0;
  *a7.i64 = *a2.i64 + trunc(*a2.i64 * 2.32830644e-10) * -4294967300.0;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = vnegq_f64(v9);
  a7.i64[0] = vbslq_s8(v10, a7, a2).u64[0];
  if (*a2.i64 > 4294967300.0)
  {
    a2.i64[0] = a7.i64[0];
  }

  if (*a2.i64 < -4294967300.0)
  {
    *a6.i64 = -*a2.i64;
    *a2.i64 = -(*a2.i64 - trunc(*a2.i64 * -2.32830644e-10) * -4294967300.0);
    *a2.i64 = -*vbslq_s8(v10, a2, a6).i64;
  }

  v11 = 0;
  if (*a2.i64 < 0.0)
  {
    v12 = --*a2.i64;
  }

  else
  {
    v12 = *a2.i64;
  }

  if (v12 > 20 * a3)
  {
    v13 = v12 - 20 * a3;
  }

  else
  {
    v13 = v12 + -20 * a3 + 6000 * (20 * a3 / 0x1770u) + 6000;
  }

  v14 = this + 12;
  v15 = *(this + 25);
  v16 = this + 40;
  v17 = 4;
  while (1)
  {
    v18 = v15;
    if (v13 != -1)
    {
      result = *&v14[4 * v15];
      if (result != -1)
      {
        v20 = result - v13;
        if ((result - v13) < 0)
        {
          v20 = v13 - result;
        }

        v21 = (v20 + 19) / 0x14u - 300 * (((229064923 * ((v20 + 19) / 0x14u)) >> 32) >> 4);
        v22 = 13 * v20 + 500000;
        if (v21 >= 300 - v21)
        {
          v21 = 300 - v21;
        }

        v11 = v22 < 0x112A880;
        if (v22 <= 0x112A87F && v21 < 3)
        {
          break;
        }
      }
    }

    if (!v11)
    {
      v16[v15] = 0;
    }

    if ((v15 + 1) <= 2u)
    {
      ++v15;
    }

    else
    {
      v15 = 0;
    }

    *(this + 25) = v15;
    if (!--v17)
    {
      v27 = 0;
      result = BlueFin::GlMeFrameAidMgr::FindBestPair(this, &v28, &v27);
      if (result && v27 == v15)
      {
        if ((v15 + 1) <= 2u)
        {
          ++v15;
        }

        else
        {
          v15 = 0;
        }

        *(this + 25) = v15;
      }

      v18 = v15;
      v16[v15] = 0;
      *(this + v15 + 7) = a4;
      goto LABEL_45;
    }
  }

  v23 = v13 - result;
  v24 = *(this + v15 + 7) + (v13 - result + 3000) / 6000;
  if (v24 >> 6 >= 0x627)
  {
    v24 %= 0x189C0u;
  }

  if (v24 == a4)
  {
    if (v23 < 0)
    {
      v23 = result - v13;
    }

    if (v23 >= 0xBB9)
    {
      v25 = v16[v15];
      if ((v16[v15] + 1) > v25)
      {
        LOBYTE(v25) = v16[v15] + 1;
      }

      v16[v15] = v25;
    }

    goto LABEL_44;
  }

  v26 = v16[v15];
  if (v26 <= -3)
  {
    v16[v15] = 0;
LABEL_44:
    *(this + v15 + 7) = a4;
LABEL_45:
    *&v14[4 * v18] = v13;
    return result;
  }

  v16[v15] = v26 - 1;
  return result;
}

BOOL BlueFin::GlMeFrameAidMgr::GetAiding(BlueFin::GlMeFrameAidMgr *this, double a2, unsigned int *a3, int *a4, unsigned int *a5)
{
  *v26 = 0;
  *a3 = -1;
  *a4 = -1;
  *a5 = -1;
  BestPair = BlueFin::GlMeFrameAidMgr::FindBestPair(this, &v26[1], v26);
  result = 0;
  if (BestPair)
  {
    v15 = *(this + v26[1]);
    v16 = v26[0];
    if (*(this + v26[0] + 3) > v15)
    {
      v15 = *(this + v26[0] + 3);
    }

    *v11.i64 = a2 * 1000.0;
    *v13.i64 = a2 * 1000.0 + trunc(a2 * 1000.0 * 2.32830644e-10) * -4294967300.0;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v18 = vnegq_f64(v17);
    v13.i64[0] = vbslq_s8(v18, v13, v11).u64[0];
    if (a2 * 1000.0 > 4294967300.0)
    {
      v11.i64[0] = v13.i64[0];
    }

    if (*v11.i64 < -4294967300.0)
    {
      *v12.i64 = -*v11.i64;
      *v11.i64 = -(*v11.i64 - trunc(*v11.i64 * -2.32830644e-10) * -4294967300.0);
      *v11.i64 = -*vbslq_s8(v18, v11, v12).i64;
    }

    if (*v11.i64 < 0.0)
    {
      v19 = --*v11.i64;
    }

    else
    {
      v19 = *v11.i64;
    }

    v20 = v19 - v15;
    if (v20 >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = -v20;
    }

    if (v20 >= 0)
    {
      v22 = (v21 + 19) / 0x14u - 300 * (((229064923 * ((v21 + 19) / 0x14u)) >> 32) >> 4);
    }

    else
    {
      v22 = 300 * (((229064923 * ((v21 + 19) / 0x14u)) >> 32) >> 4) - (v21 + 19) / 0x14u;
    }

    *a4 = v22;
    *a5 = (3277 * ((13 * v21 + 500000) / 0xF4240u + 42)) >> 16;
    v23 = *a4;
    if (*a4 < 0)
    {
      v23 += 300;
      *a4 = v23;
    }

    v24 = 91625969 * (v19 - *(this + v16 + 3) - 20 * v23 + 3000);
    v25 = (v24 >> 39) + (v24 >> 63) + *(this + v16 + 7);
    if (v25 >> 6 >= 0x627)
    {
      v25 %= 0x189C0u;
    }

    *a3 = v25;
    return *a5 < 3;
  }

  return result;
}

uint64_t BlueFin::GlMeFrameSearchBuffer::Logical2RealPos(BlueFin::GlMeFrameSearchBuffer *this)
{
  if (((this % 0x1Du) | (32 * ((18079 * this) >> 19))) >= 0xFFFD)
  {
    DeviceFaultNotify("glme_framemgr.cpp", 350, "Logical2RealPos", "((GlIntU16)ulResult) == ulResult");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_framemgr.cpp", 350, "((GlIntU16)ulResult) == ulResult");
  }

  return (((this % 0x1Du) | (32 * (this / 0x1Du))) + 3);
}

uint64_t BlueFin::GlMeFrameSearchBuffer::Position(BlueFin::GlMeFrameSearchBuffer *this, unsigned __int16 a2)
{
  v3 = BlueFin::GlMeFrameSearchBuffer::Logical2RealPos(a2);
  if ((v3 & 0x1C) != 0 || *(this + 6) >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v3 & 0xFFE0;
  }

  return BlueFin::GlBitBuffer::Position(this, v5);
}

BlueFin::GlMeFrameSearchBuffer *BlueFin::GlMeFrameSearchBuffer::Relocate(BlueFin::GlMeFrameSearchBuffer *this, unsigned int *a2)
{
  v10 = *this;
  v11 = *(this + 16);
  v3 = *(this + 5);
  v4 = *(this + 7);
  v15 = *(this + 4);
  v12 = v3;
  v13 = v4;
  v14 = 0;
  v16 = 0;
  BlueFin::GlBitBuffer::Initialize(this, a2, (v3 >> 3));
  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = v4 - v5;
      if (v6 >= 0x20)
      {
        v7 = 32;
      }

      else
      {
        v7 = v6;
      }

      v8 = BlueFin::GlBitBuffer::GetU(&v10, v7);
      BlueFin::GlBitBuffer::PutU(this, v8, v7);
      v4 = v13;
      v5 = v14;
    }

    while (v13 != v14);
  }

  return this;
}

uint64_t BlueFin::GlMeFrameSearchBuffer::GetU(BlueFin::GlMeFrameSearchBuffer *this, unsigned int a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  *a3 = 0;
  *a4 = 0;
  if (!a2)
  {
    return 0;
  }

  v8 = 0;
  LODWORD(v9) = 0;
  v21 = a2;
  do
  {
    v11 = *(this + 7) & 0xFFE0;
    if ((*(this + 7) & 0x1C) != 0)
    {
      v12 = *(this + 7) & 0x1F;
    }

    else
    {
      v12 = 3;
    }

    if (32 - v12 >= (a2 - v8))
    {
      v13 = a2 - v8;
    }

    else
    {
      v13 = 32 - v12;
    }

    v14 = BlueFin::GlBitBuffer::Position(this, *(this + 7) & 0xFFE0);
    v24 = BlueFin::GlBitBuffer::GetU(v14, 1u);
    v23 = BlueFin::GlBitBuffer::GetU(this, 1u);
    v22 = BlueFin::GlBitBuffer::GetU(this, 1u);
    *a3 <<= v13;
    *a4 <<= v13;
    *a5 <<= v13;
    v15 = BlueFin::GlBitBuffer::Position(this, v11 | v12);
    v9 = BlueFin::GlBitBuffer::GetU(v15, v13 & 0x1F) | (v9 << v13);
    v16 = -1 << v13;
    if (v24)
    {
      v17 = 0;
    }

    else
    {
      v17 = ~v16;
    }

    *a3 |= v17;
    if (v23)
    {
      v18 = 0;
    }

    else
    {
      v18 = ~v16;
    }

    *a4 |= v18;
    a2 = v21;
    if (v22)
    {
      v19 = 0;
    }

    else
    {
      v19 = ~v16;
    }

    *a5 |= v19;
    v8 = ((v13 & 0x1F) + v8);
  }

  while (v8 < v21);
  return v9;
}

uint64_t BlueFin::GlMeFrameSearchBuffer::PutU(uint64_t this, unsigned int a2, unsigned int a3, int a4, int a5, int a6)
{
  if (a3)
  {
    v7 = 0;
    v8 = a4 ^ 1;
    v9 = a5 ^ 1;
    v10 = a6 ^ 1;
    do
    {
      v11 = *(this + 28);
      v12 = a3 - v7;
      if (*(this + 24) - v11 < a3 - v7)
      {
        *(this + 24) = v11;
        *(this + 40) = 0;
        this = BlueFin::GlBitBuffer::Position(this, 0x20u);
        v13 = *(this + 28);
        v14 = *(this + 36) + v13;
        *(this + 36) = v14;
        v15 = *(this + 20);
        v16 = v14 >= v15;
        v17 = v14 - v15;
        if (v16)
        {
          *(this + 36) = v17;
        }

        v11 = *(this + 24) - v13;
        *(this + 24) = v15;
        *(this + 28) = v11;
        *(this + 40) = 0;
      }

      v18 = v11 & 0xFFE0;
      v19 = v11 & 0x1F;
      if ((v11 & 0x1C) != 0)
      {
        v20 = v11 & 0x1F;
      }

      else
      {
        v20 = 3;
      }

      if (32 - v20 >= v12)
      {
        v21 = a3 - v7;
      }

      else
      {
        v21 = 32 - v20;
      }

      if (v19 < 4 || v8 != 0)
      {
        v23 = BlueFin::GlBitBuffer::Position(this, v18);
        this = BlueFin::GlBitBuffer::PutU(v23, v8, 1u);
      }

      if (v19 < 4 || v9 != 0)
      {
        v25 = BlueFin::GlBitBuffer::Position(this, v18 | 1);
        this = BlueFin::GlBitBuffer::PutU(v25, v9, 1u);
      }

      if (v19 < 4 || v10)
      {
        v26 = BlueFin::GlBitBuffer::Position(this, v18 | 2);
        this = BlueFin::GlBitBuffer::PutU(v26, v10, 1u);
      }

      v27 = v7 + v21;
      if (v27 > a3)
      {
        DeviceFaultNotify("glme_framemgr.cpp", 480, "PutU", "0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_framemgr.cpp", 480, "0");
      }

      v28 = BlueFin::GlBitBuffer::Position(this, v18 | v20);
      this = BlueFin::GlBitBuffer::PutU(v28, a2 >> (v12 - v21), v21);
      v7 = (v7 + v21);
    }

    while (v27 < a3);
  }

  return this;
}

uint64_t BlueFin::GlMeFrameMgr::Search(BlueFin::GlMeFrameMgr *this, BlueFin::GlMeDSPDataBits *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, unsigned int a14, uint64_t a15, unsigned int a16, __int128 a17, __int128 a18, int a19, int a20, char a21, int a22, unsigned int a23, __int128 a24, __int128 a25, int a26, int a27, char a28, int a29, unsigned int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, unsigned int a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, unsigned int a62)
{
  v62 = a2;
  STACK[0x948] = *MEMORY[0x29EDCA608];
  v64 = *(a2 + 3);
  if ((v64 & 2) != 0)
  {
    v65 = *(a2 + 8);
    v66 = v65 >= 0x20 && 20 * v65 == *(a2 + 5);
    if (v66 && *(a2 + 43) == 0x80000000)
    {
      *(a2 + 43) = 0;
    }
  }

  if ((v64 & 4) != 0)
  {
    BlueFin::GlMeFrameMgr::SetState(this, 0);
  }

  if (*this)
  {
    goto LABEL_200;
  }

  v67 = *(v62 + 3);
  v68 = 16;
  if ((v67 & 2) == 0)
  {
    v68 = 72;
  }

  v69 = this + v68;
  v201 = (v62 + 44);
  STACK[0x780] = v62 + 44;
  STACK[0x788] = 0;
  LOBYTE(STACK[0x790]) = 0;
  LODWORD(STACK[0x7A4]) = 0;
  STACK[0x79C] = 0;
  STACK[0x794] = 0x40000000400;
  LOBYTE(STACK[0x7A8]) = 0;
  BlueFin::GlBitBuffer::Limit(&STACK[0x780], *(v62 + 8));
  v200 = (v62 + 172);
  STACK[0x750] = v62 + 172;
  STACK[0x758] = 0;
  LOBYTE(STACK[0x760]) = 0;
  LODWORD(STACK[0x774]) = 0;
  STACK[0x76C] = 0;
  STACK[0x764] = 0x40000000400;
  LOBYTE(STACK[0x778]) = 0;
  BlueFin::GlBitBuffer::Limit(&STACK[0x750], *(v62 + 8));
  v70 = v69;
  v71 = *(v62 + 5) - 20 * *(v62 + 8);
  v72 = *v69;
  if ((*(this + 804) & 1) == 0 && v71 < v72)
  {
    v195 = "SvId=%d expected %d <= %d\n";
    DeviceFaultNotify("glme_framemgr.cpp", 1569, "Search", "SvId=%d expected %d <= %d\n");
    v196 = "glme_framemgr.cpp";
    v197 = 1569;
LABEL_205:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v196, v197, v195);
  }

  v73 = v71 - v72;
  v204 = (v71 - v72) / 0x14uLL;
  v74 = *(v69 + 18);
  if ((v74 & 0x1F) <= 2)
  {
    v75 = 0;
  }

  else
  {
    v75 = (v74 & 0x1F) - 3;
  }

  v198 = v69;
  if (v73 >= 0x14)
  {
    v80 = 0;
LABEL_29:
    LOBYTE(v78) = 0;
    LODWORD(STACK[0x74C]) = 0;
    goto LABEL_30;
  }

  v76 = v75 + 29 * (v74 >> 5);
  v77 = (v75 + 29 * (v74 >> 5));
  if (v77 >= 0x1F)
  {
    v78 = 31;
  }

  else
  {
    v78 = (v75 + 29 * (v74 >> 5));
  }

  v79 = v70;
  BlueFin::GlMeFrameSearchBuffer::Position((v70 + 8), v77 - v78);
  LODWORD(STACK[0x7B0]) = 0;
  a30 = 0;
  a23 = 0;
  v80 = BlueFin::GlMeFrameSearchBuffer::GetU((v79 + 8), v78, &STACK[0x7B0], &a30, &a23);
  if (!LODWORD(STACK[0x7B0]) || !v78)
  {
    goto LABEL_29;
  }

  while (((-1 << v78) | LODWORD(STACK[0x7B0])) != 0xFFFFFFFF)
  {
    LOBYTE(v78) = v78 - 1;
    if (!v78)
    {
      goto LABEL_29;
    }
  }

  LODWORD(STACK[0x74C]) = 0;
  if (v78 > 0x1Eu)
  {
    if (v76 >= 0x3Du)
    {
      v194 = 61;
    }

    else
    {
      v194 = v76;
    }

    BlueFin::GlMeFrameSearchBuffer::Position((v198 + 8), v77 - v194);
    LODWORD(STACK[0x7B0]) = 0;
    a30 = 0;
    BlueFin::GlMeFrameSearchBuffer::GetU((v198 + 8), (v194 - 30), &STACK[0x74C], &STACK[0x7B0], &a30);
    BlueFin::GlMeFrameSearchBuffer::Position((v198 + 8), v77);
    LODWORD(v82) = v80;
    goto LABEL_34;
  }

LABEL_30:
  if (LODWORD(STACK[0x798]) - LODWORD(STACK[0x79C]) >= (v78 ^ 0x1Fu))
  {
    v81 = v78 ^ 0x1F;
  }

  else
  {
    v81 = LODWORD(STACK[0x798]) - LODWORD(STACK[0x79C]);
  }

  LODWORD(v82) = (v80 << v81) | BlueFin::GlBitBuffer::GetU(&STACK[0x780], v81);
LABEL_34:
  v83.f64[0] = NAN;
  v83.f64[1] = NAN;
  v203 = vnegq_f64(v83);
  v199 = v67;
  v202 = v62;
  while (1)
  {
    do
    {
      if (LODWORD(STACK[0x798]) == LODWORD(STACK[0x79C]))
      {
        return BlueFin::GlMeFrameMgr::AppendSearchBits(v204, &STACK[0x750], &STACK[0x780], (v67 >> 4) & 1, v198, *(v62 + 5));
      }

      v84 = BlueFin::GlBitBuffer::GetU(&STACK[0x780], 1u);
      v85 = STACK[0x798];
      v86 = STACK[0x79C];
      v82 = (v84 | (2 * v82));
      LODWORD(STACK[0x748]) = 0;
      STACK[0x740] = 0;
    }

    while (!BlueFin::GPSFrameMgrUtils::Parity(v82));
    v91 = v85 - v86;
    v92 = v85 - v86 + 30;
    v93 = *(this + 1);
    if ((v82 & 0xFFC00000) == 0x22C00000)
    {
      v94 = v82;
    }

    else
    {
      v94 = ~v82;
    }

    v95 = v94 & 0xFFC00000;
    vars0[0] = v82;
    if ((v94 & 0xFFC00000) == 0x22C00000)
    {
      v96 = *(v62 + 5) / 0x14u - v92 + 300;
      *(this + 1) = v96;
      if ((*(v62 + 12) & 2) == 0)
      {
        if ((v82 & 0xFFC00000) == 0xDD000000)
        {
          v97 = 2;
        }

        else
        {
          v97 = 1;
        }

        *(this + 200) = v97;
      }

      v98 = *(this + 2);
      v99 = *(this + 408) - 1;
      if (v99 <= 0x1F)
      {
        v87.i64[0] = *(v62 + 4);
        v100 = v93;
        BlueFin::GlMeFrameAidMgr::FoundTLM(*(this + 49), v87, v91 + 30, v88, v89, v90);
        v93 = v100;
      }

      if (v98 != -1 && *(this + 2) <= *(this + 1) && !((v96 - v98) % 300))
      {
        v101 = *(this + 3) + (v96 - v98) / 300;
        goto LABEL_94;
      }

      if (v99 > 0x1F)
      {
        v102 = 0;
        v101 = 0;
        LODWORD(v82) = vars0[0];
      }

      else
      {
        v103 = v93;
        LODWORD(v82) = vars0[0];
        if (BlueFin::GlMeFrameAidMgr::GetAiding(*(this + 49), *(v62 + 4), &STACK[0x744], &STACK[0x748], &STACK[0x740]))
        {
          v104 = LODWORD(STACK[0x748]) - v92;
          if (v104 < 0)
          {
            v104 = v92 - LODWORD(STACK[0x748]);
          }

          v102 = v104 <= LODWORD(STACK[0x740]);
          if (v104 > LODWORD(STACK[0x740]))
          {
            v101 = 0;
          }

          else
          {
            v101 = STACK[0x744];
          }
        }

        else
        {
          v102 = 0;
          v101 = 0;
        }

        v93 = v103;
      }
    }

    else
    {
      v102 = 0;
      v101 = 0;
    }

    if ((~v82 & 3) != 0)
    {
      v105 = v82;
    }

    else
    {
      v105 = ~v82;
    }

    if ((v105 & 0x40000000) != 0)
    {
      v105 ^= 0x3FFFFFC0u;
    }

    if ((v105 & 3) != 0)
    {
      goto LABEL_93;
    }

    v106 = (v105 >> 13) & 0x1FFFF;
    if (v106 > 0x189BF || v106 + 4 - 5 * ((858993460 * (v106 + 4)) >> 32) + 1 != ((v105 >> 8) & 7) || v102)
    {
      goto LABEL_93;
    }

    v92 = v91 + 60;
    v107 = *(v62 + 5) / 0x14u - (v91 + 60) + 300;
    *(this + 2) = v107;
    *(this + 3) = v106;
    v108 = *(this + 1);
    v109 = *(this + 408) - 33;
    if (v109 >= 0xFFFFFFE0)
    {
      v87.i64[0] = v202[4];
      v110 = v92;
      v111 = v92;
      v112 = v93;
      BlueFin::GlMeFrameAidMgr::FoundHOW(*(this + 49), v87, v110, v106, v88, v89, v90);
      v93 = v112;
      v92 = v111;
    }

    if (v108 != -1 && *(this + 1) <= *(this + 2) && !((v107 - v108) % 0x12C) || v95 == 583008256 && v93 != -1 && v93 <= *(this + 2) && !((v107 - v93) % 0x12C))
    {
      break;
    }

    if (v109 < 0xFFFFFFE0)
    {
      v62 = v202;
LABEL_92:
      v67 = v199;
      goto LABEL_93;
    }

    v62 = v202;
    if (v108 != -1)
    {
      goto LABEL_92;
    }

    v67 = v199;
    if (BlueFin::GlMeFrameAidMgr::GetAiding(*(this + 49), v202[4], &STACK[0x744], &STACK[0x748], &STACK[0x740]))
    {
      v113 = LODWORD(STACK[0x748]) - v92;
      if (v113 < 0)
      {
        v113 = v92 - LODWORD(STACK[0x748]);
      }

      if (v113 <= LODWORD(STACK[0x740]))
      {
        v101 = v106;
        if (v106 == LODWORD(STACK[0x744]))
        {
          goto LABEL_94;
        }

        goto LABEL_90;
      }
    }

LABEL_93:
    if (v102)
    {
      goto LABEL_94;
    }

LABEL_90:
    LODWORD(v82) = vars0[0];
  }

  v101 = *(this + 3);
  v62 = v202;
  v67 = v199;
LABEL_94:
  memcpy(&STACK[0x7B0], this, 0x180uLL);
  memcpy(&a30, this, 0x180uLL);
  if (*this)
  {
    v195 = "SEARCH == m_utStateMem.ucState";
    DeviceFaultNotify("glme_framemgr.h", 521, "GetSearchElem", "SEARCH == m_utStateMem.ucState");
    v196 = "glme_framemgr.h";
    v197 = 521;
    goto LABEL_205;
  }

  a23 = *(this + 4);
  a24 = *(this + 24);
  LOBYTE(a25) = *(this + 40);
  *(&a25 + 4) = *(this + 44);
  a27 = *(this + 15);
  a28 = *(this + 64);
  a16 = *(this + 18);
  a17 = *(this + 5);
  LOBYTE(a18) = *(this + 96);
  *(&a18 + 4) = *(this + 100);
  a20 = *(this + 29);
  a21 = *(this + 120);
  if (a30)
  {
LABEL_200:
    v195 = "SEARCH == putStateMem->ucState";
    DeviceFaultNotify("glme_framemgr.h", 515, "GetSearch", "SEARCH == putStateMem->ucState");
    v196 = "glme_framemgr.h";
    v197 = 515;
    goto LABEL_205;
  }

  BlueFin::GlMeFrameSearchBuffer::Relocate(&a24, &a46);
  BlueFin::GlMeFrameSearchBuffer::Relocate(&a17, &a62);
  *this = 1;
  *(this + 10) = 0;
  *(this + 3) = 0;
  v118.i64[1] = -1;
  *(this + 60) = -1;
  *(this + 5) = 0;
  --*(*(this + 49) + 43);
  if (*this != 1)
  {
    v195 = "SYNCED == m_utStateMem.ucState";
    DeviceFaultNotify("glme_framemgr.h", 532, "GetSynced", "SYNCED == m_utStateMem.ucState");
    v196 = "glme_framemgr.h";
    v197 = 532;
    goto LABEL_205;
  }

  if (v101 <= 0x189BF)
  {
    v119 = v101;
  }

  else
  {
    v119 = v101 % 0x189C0;
  }

  v120 = *(v62 + 5);
  v121 = v120 - 20 * v92 + 6000;
  v122 = 6000 * (v121 / 0x1770);
  v123 = v121 % 0x1770;
  v124 = v122 + 3000;
  if (v124 >= 0x240C8400)
  {
    v125 = v124 / 0x1770 - 100800 * (((681741 * (v124 / 0x1770)) >> 32) >> 4);
  }

  else
  {
    v125 = v124 / 0x1770;
  }

  *(this + 13) = v123;
  v118.i64[0] = *(v62 + 4);
  *v114.i64 = *v118.i64 * 1000.0;
  *v116.i64 = *v118.i64 * 1000.0 + trunc(*v118.i64 * 1000.0 * 2.32830644e-10) * -4294967300.0;
  v126 = vbslq_s8(v203, v116, v114);
  if (*v118.i64 * 1000.0 > 4294967300.0)
  {
    v114.i64[0] = v126.i64[0];
  }

  *v126.i64 = -*v114.i64;
  *v117.i64 = -(*v114.i64 - trunc(*v114.i64 * -2.32830644e-10) * -4294967300.0);
  *v126.i64 = -*vbslq_s8(v203, v117, v126).i64;
  if (*v114.i64 < -4294967300.0)
  {
    v114.i64[0] = v126.i64[0];
  }

  if (*v114.i64 < 0.0)
  {
    v127 = --*v114.i64;
  }

  else
  {
    v127 = *v114.i64;
  }

  *(this + 14) = v123 - v120 + v127;
  v151 = v119 >= v125;
  v128 = v119 - v125;
  if (v128 == 0 || !v151)
  {
    v128 += 100800;
  }

  *v114.i64 = *v118.i64 + trunc(*v118.i64 * 2.32830644e-10) * -4294967300.0;
  v129 = vbslq_s8(v203, v114, v118);
  if (*v118.i64 > 4294967300.0)
  {
    v118.i64[0] = v129.i64[0];
  }

  *v129.i64 = -*v118.i64;
  *v115.i64 = -(*v118.i64 - trunc(*v118.i64 * -2.32830644e-10) * -4294967300.0);
  *v129.i64 = -*vbslq_s8(v203, v115, v129).i64;
  if (*v118.i64 < -4294967300.0)
  {
    v118.i64[0] = v129.i64[0];
  }

  if (*v118.i64 < 0.0)
  {
    v130 = --*v118.i64;
  }

  else
  {
    v130 = *v118.i64;
  }

  *(this + 11) = v130;
  *(this + 12) = v128;
  a15 = 0;
  a14 = 0;
  a13 = 0;
  a9 = 0;
  a10 = 0;
  HIBYTE(vars8[1]) = 0;
  vars8[0] = 0;
  DWORD2(a25) = HIDWORD(a25);
  HIDWORD(a25) = 0;
  a28 = 0;
  *(&a18 + 1) = HIDWORD(a18);
  a21 = 0;
  if ((BYTE8(a25) & 0x1Fu) <= 2)
  {
    v131 = 0;
  }

  else
  {
    v131 = (BYTE8(a25) & 0x1F) - 3;
  }

  v132 = (v131 + 29 * (WORD4(a25) >> 5));
  v133 = 20 * v132 - a23;
  if (20 * v132 < a23)
  {
    v133 = 0;
  }

  v134 = a23 - 20 * v132;
  v135 = 600 * ((v134 + v133) / 0x258u) + (v123 + 560) % 0x258u;
  if (v135 < v134 + v133)
  {
    v135 += 600;
  }

  v136 = (v135 - v134) / 0x14;
  if (v132 >= v136)
  {
    v137 = v136;
  }

  else
  {
    v137 = v132;
  }

  BlueFin::GlMeFrameSearchBuffer::Position(&a24, v137);
  v138 = BYTE8(a18) & 0x1F;
  if (v138 <= 2)
  {
    v139 = 0;
  }

  else
  {
    v139 = v138 - 3;
  }

  v140 = (v139 + 29 * (WORD4(a18) >> 5));
  v141 = 20 * v140 - a16;
  if (20 * v140 < a16)
  {
    v141 = 0;
  }

  v142 = a16 - 20 * v140;
  v143 = (*(this + 13) + 560) % 0x258u + 600 * ((v142 + v141) / 0x258u);
  if (v143 < v142 + v141)
  {
    v143 += 600;
  }

  v144 = (v143 - v142) / 0x14;
  if (v140 >= v144)
  {
    v145 = v144;
  }

  else
  {
    v145 = v139 + 29 * (WORD4(a18) >> 5);
  }

  BlueFin::GlMeFrameSearchBuffer::Position(&a17, v145);
  BlueFin::GlMeFrameMgr::GetNextSearchWord(&a23, &a15 + 1, &a10 + 1, &a15, &a14, &a13);
  BlueFin::GlMeFrameMgr::GetNextSearchWord(&a16, &a10, vars8, &a9 + 1, &a9, &vars8[1] + 3);
  v146 = a13;
  v147 = HIBYTE(vars8[1]);
  if ((a13 & 1) != 0 || (vars8[1] & 0x1000000) != 0)
  {
    while (2)
    {
      if (v146 & 1) != 0 && (v147)
      {
        v148 = HIDWORD(a10);
        v149 = HIDWORD(a10) - vars8[0];
        if (HIDWORD(a10) == vars8[0])
        {
          if (!BlueFin::GlMeFrameMgr::AddBestWord(this, HIDWORD(a10), HIDWORD(a15), a15, a14, a10, HIDWORD(a9), a9))
          {
            goto LABEL_191;
          }

          BlueFin::GlMeFrameMgr::GetNextSearchWord(&a23, &a15 + 1, &a10 + 1, &a15, &a14, &a13);
          goto LABEL_170;
        }

        if (HIDWORD(a10) < vars8[0])
        {
          HIDWORD(v159) = -1775253149 * (vars8[0] - HIDWORD(a10));
          LODWORD(v159) = HIDWORD(v159);
          if ((v159 >> 3) >= 0x6D3A07)
          {
            v195 = "0 == ((ulPllEpochCnt - ulFllEpochCnt) % 600)";
            DeviceFaultNotify("glme_framemgr.cpp", 1787, "Search", "0 == ((ulPllEpochCnt - ulFllEpochCnt) % 600)");
            v196 = "glme_framemgr.cpp";
            v197 = 1787;
            goto LABEL_205;
          }

          goto LABEL_164;
        }

        if (vars8[0] < HIDWORD(a10))
        {
          HIDWORD(v166) = -1775253149 * v149;
          LODWORD(v166) = -1775253149 * v149;
          if ((v166 >> 3) >= 0x6D3A07)
          {
            v195 = "0 == ((ulFllEpochCnt - ulPllEpochCnt) % 600)";
            DeviceFaultNotify("glme_framemgr.cpp", 1797, "Search", "0 == ((ulFllEpochCnt - ulPllEpochCnt) % 600)");
            v196 = "glme_framemgr.cpp";
            v197 = 1797;
            goto LABEL_205;
          }

          v156 = HIDWORD(a9);
          v155 = a10;
          v157 = a9;
          v158 = this;
          v152 = vars8[0];
          goto LABEL_169;
        }

LABEL_172:
        v146 = a13;
        v147 = HIBYTE(vars8[1]);
        if ((a13 & 1) == 0 && (vars8[1] & 0x1000000) == 0)
        {
          goto LABEL_174;
        }

        continue;
      }

      break;
    }

    if (v146)
    {
      v148 = HIDWORD(a10);
      v150 = *(v62 + 5);
      v151 = a16 >= HIDWORD(a10) || a16 >= v150;
      if (!v151 && (*(v62 + 12) & 2) == 0)
      {
        BlueFin::GlMeFrameMgr::AppendSyncedSearchBits(this, v204, &STACK[0x750], &STACK[0x780], (v67 >> 4) & 1, &a16, v150);
        goto LABEL_170;
      }

LABEL_164:
      if (!BlueFin::GlMeFrameMgr::AddBestWord(this, v148, HIDWORD(a15), a15, a14, 0x4BADC0DE, 0, 0))
      {
        goto LABEL_191;
      }

LABEL_165:
      v160 = &a23;
      v161 = (&a15 + 4);
      v162 = &a10 + 1;
      v163 = &a15;
      v164 = &a14;
      v165 = &a13;
    }

    else
    {
      if ((v147 & 1) == 0)
      {
        goto LABEL_172;
      }

      v152 = vars8[0];
      v153 = *(v62 + 5);
      v154 = a23 >= vars8[0] || a23 >= v153;
      if (!v154 && (*(v62 + 12) & 2) != 0)
      {
        BlueFin::GlMeFrameMgr::AppendSyncedSearchBits(this, v204, &STACK[0x750], &STACK[0x780], (v67 >> 4) & 1, &a23, v153);
        goto LABEL_165;
      }

      v156 = HIDWORD(a9);
      v155 = a10;
      v157 = a9;
      v158 = this;
LABEL_169:
      if (!BlueFin::GlMeFrameMgr::AddBestWord(v158, v152, 0x4BADC0DE, 0, 0, v155, v156, v157))
      {
LABEL_191:
        result = memcpy(this, &STACK[0x7B0], 0x180uLL);
        v193 = 6;
        goto LABEL_192;
      }

LABEL_170:
      v160 = &a16;
      v161 = &a10;
      v162 = vars8;
      v163 = &a9 + 1;
      v164 = &a9;
      v165 = &vars8[1] + 3;
    }

    BlueFin::GlMeFrameMgr::GetNextSearchWord(v160, v161, v162, v163, v164, v165);
    goto LABEL_172;
  }

LABEL_174:
  vars0[1] = 0;
  v167 = BYTE8(a25) & 0x1F;
  if (v167 <= 2)
  {
    v168 = 0;
  }

  else
  {
    v168 = v167 - 3;
  }

  v169 = BYTE12(a25) & 0x1F;
  if (v169 <= 2)
  {
    v170 = 0;
  }

  else
  {
    v170 = 3 - v169;
  }

  v171 = BlueFin::GlMeFrameSearchBuffer::GetU(&a24, (v170 + v168 + 29 * ((WORD4(a25) >> 5) - (WORD6(a25) >> 5))), this + 5, this + 6, &vars0[1]);
  v172 = *(this + 5) & vars0[1];
  *(this + 4) = v171;
  *(this + 5) = v172;
  v173 = BYTE8(a18) & 0x1F;
  if (v173 <= 2)
  {
    v174 = 0;
  }

  else
  {
    v174 = v173 - 3;
  }

  v175 = BYTE12(a18) & 0x1F;
  if (v175 <= 2)
  {
    v176 = 0;
  }

  else
  {
    v176 = 3 - v175;
  }

  result = BlueFin::GlMeFrameSearchBuffer::GetU(&a17, (v176 + v174 + 29 * ((WORD4(a18) >> 5) - (WORD6(a18) >> 5))), this + 8, this + 9, &vars0[1]);
  v178 = *(this + 8) & vars0[1];
  *(this + 7) = result;
  *(this + 8) = v178;
  v179 = a23;
  if (a16 > a23)
  {
    v179 = a16;
  }

  *(this + 17) = v179;
  *(this + 18) = *(v62 + 5);
  v180 = *(v62 + 16);
  if ((v67 & 0x10) == 0)
  {
    v180 = 0;
  }

  *(this + 4) = v180;
  *(this + 10) = *(v62 + 3);
  v181 = v201[4];
  v182 = v201[5];
  v183 = v201[6];
  *(this + 196) = v201[7];
  *(this + 180) = v183;
  *(this + 164) = v182;
  *(this + 148) = v181;
  v184 = *v201;
  v185 = v201[1];
  v186 = v201[2];
  *(this + 132) = v201[3];
  *(this + 116) = v186;
  *(this + 100) = v185;
  *(this + 84) = v184;
  v187 = v200[7];
  v189 = v200[4];
  v188 = v200[5];
  *(this + 308) = v200[6];
  *(this + 324) = v187;
  *(this + 276) = v189;
  *(this + 292) = v188;
  v190 = *v200;
  v191 = v200[1];
  v192 = v200[3];
  *(this + 244) = v200[2];
  *(this + 260) = v192;
  *(this + 212) = v190;
  *(this + 228) = v191;
  v193 = 1;
LABEL_192:
  if (v193 == 6)
  {
    return BlueFin::GlMeFrameMgr::AppendSearchBits(v204, &STACK[0x750], &STACK[0x780], (v67 >> 4) & 1, v198, *(v62 + 5));
  }

  return result;
}

BOOL BlueFin::GlMeFrameMgr::VerifyTow(BlueFin::GlMeFrameMgr *this, double a2)
{
  if (*this != 1)
  {
    DeviceFaultNotify("glme_framemgr.h", 532, "GetSynced", "SYNCED == m_utStateMem.ucState");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_framemgr.h", 532, "SYNCED == m_utStateMem.ucState");
  }

  *(this + 1) = 1;
  *(this + 3) = 0;
  *(this + 15) = *(this + 16);
  *(this + 6) = 0;
  LODWORD(a2) = *(this + 14);
  v3 = *&a2;
  v4 = *(this + 12);
  v5 = this + 408;
  v6 = *(this + 48);

  return BlueFin::GlMeWinMgr::SetTMDecodeInfoFromGps(v6, v5, v3, v4, 1);
}

unsigned __int16 *BlueFin::GlMeFrameMgr::GetNextSearchWord(unsigned __int16 *result, _DWORD *a2, _DWORD *a3, unsigned int *a4, unsigned int *a5, _BYTE *a6)
{
  v8 = result[16];
  v9 = v8 >> 5;
  v10 = v8 & 0x1F;
  if (v10 <= 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 - 3;
  }

  if ((result[18] & 0x1Fu) <= 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = 3 - (result[18] & 0x1F);
  }

  if ((v12 + v11 + 29 * (v9 - (result[18] >> 5))) > 0x1Fu)
  {
    v14 = result;
    v24 = 0;
    *a2 = BlueFin::GlMeFrameSearchBuffer::GetU((result + 4), 0x20u, a4, a5, &v24);
    *a4 &= v24;
    *a6 = 1;
    v15 = v14[16];
    v16 = v15 >> 5;
    v17 = v15 & 0x1F;
    if (v17 <= 2)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17 - 3;
    }

    if ((v14[18] & 0x1Fu) <= 2)
    {
      v19 = 0;
    }

    else
    {
      v19 = 3 - (v14[18] & 0x1F);
    }

    *a3 = *v14 - 20 * (v19 + v18 + 29 * (v16 - (v14[18] >> 5)));
    v20 = v14[18];
    v21 = v20 >> 5;
    v22 = v20 & 0x1F;
    if (v22 <= 2)
    {
      v23 = 0;
    }

    else
    {
      v23 = v22 - 3;
    }

    return BlueFin::GlMeFrameSearchBuffer::Position((v14 + 4), v23 + 29 * v21 - 2);
  }

  else
  {
    *a2 = 1269678302;
    *a4 = 0;
    *a5 = 0;
    *a6 = 0;
  }

  return result;
}

uint64_t BlueFin::GlMeFrameMgr::AppendSyncedSearchBits(uint64_t a1, uint64_t a2, uint64_t a3, BlueFin::GlBitBuffer *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (*a1 != 1)
  {
    DeviceFaultNotify("glme_framemgr.h", 532, "GetSynced", "SYNCED == m_utStateMem.ucState");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_framemgr.h", 532, "SYNCED == m_utStateMem.ucState");
  }

  v9 = a5;
  v14 = *(a6 + 32);
  v15 = v14 >> 5;
  v16 = v14 & 0x1F;
  if (v16 <= 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16 - 3;
  }

  if ((*(a6 + 36) & 0x1Fu) <= 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = 3 - (*(a6 + 36) & 0x1F);
  }

  v19 = *a6 - 20 * (v18 + v17 + 29 * (v15 - (*(a6 + 36) >> 5)));
  BlueFin::GlMeFrameSearchBuffer::Position((a6 + 8), v17 + 29 * v15);
  v20 = *(a6 + 28);
  v21 = v20 >> 5;
  v22 = v20 & 0x1F;
  if (v22 <= 2)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22 - 3;
  }

  v24 = BlueFin::GlMeFrameSearchBuffer::Logical2RealPos((v23 + 29 * v21));
  v25 = (v24 & 0x1C) != 0 || *(a6 + 28) >= v24;
  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = v24 & 0xFFE0;
  }

  BlueFin::GlBitBuffer::Limit(a6 + 8, v26);
  BlueFin::GlMeFrameMgr::AppendSearchBits(a2, a3, a4, v9, a6, a7);
  LOWORD(v27) = 0;
  v28 = *(a6 + 36);
  *(a6 + 32) = v28;
  *(a6 + 36) = 0;
  *(a6 + 48) = 0;
  v29 = *a6;
  v30 = v28 >> 5;
  v31 = v28 & 0x1F;
  v32 = v31 > 2;
  v33 = v31 - 3;
  if (!v32)
  {
    v33 = 0;
  }

  v34 = v33 + 29 * v30;
  v35 = v29 - 20 * v34;
  v25 = v19 >= v35;
  v36 = v19 - v35;
  if (v36 != 0 && v25)
  {
    v27 = v36 / 0x14;
  }

  v37 = (v34 - v27);
  v38 = 20 * v37 - v29;
  if (20 * v37 < v29)
  {
    v38 = 0;
  }

  v39 = v29 - 20 * v37;
  v40 = (*(a1 + 52) + 560) % 0x258u + 600 * ((v39 + v38) / 0x258);
  if (v40 >= v39 + v38)
  {
    v41 = (*(a1 + 52) + 560) % 0x258u + 600 * ((v39 + v38) / 0x258);
  }

  else
  {
    v41 = v40 + 600;
  }

  v42 = (v41 - v39) / 0x14;
  if (v37 < v42)
  {
    LOWORD(v42) = v37;
  }

  return BlueFin::GlMeFrameSearchBuffer::Position((a6 + 8), v27 + v42);
}

uint64_t BlueFin::GlMeFrameMgr::AppendSearchBits(uint64_t result, uint64_t a2, BlueFin::GlBitBuffer *this, int a4, uint64_t a5, int a6)
{
  v10 = *(a5 + 28);
  if ((v10 & 0x1Fu) <= 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = (v10 & 0x1F) - 3;
  }

  if (result <= (v11 + 29 * (v10 >> 5)))
  {
    for (i = result; i; i -= v13)
    {
      if (i >= 0x20)
      {
        v13 = 32;
      }

      else
      {
        v13 = i;
      }

      result = BlueFin::GlMeFrameSearchBuffer::PutU(a5 + 8, 0, v13, 0, 0, 0);
    }
  }

  else
  {
    *(a5 + 44) = 0;
    *(a5 + 32) = v10;
    *(a5 + 36) = 0;
    *(a5 + 48) = 0;
  }

  *(this + 7) = 0;
  *(this + 40) = 0;
  *(a2 + 28) = 0;
  *(a2 + 40) = 0;
  v14 = *(this + 6);
  for (j = *(this + 7); v14 != j; j = *(this + 7))
  {
    v16 = *(a5 + 32);
    v17 = v16 >> 5;
    v18 = v16 & 0x1F;
    if (v18 <= 2)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18 - 3;
    }

    v20 = *(a5 + 36);
    if ((v20 & 0x1F) <= 2)
    {
      v21 = 0;
    }

    else
    {
      v21 = 3 - (v20 & 0x1F);
    }

    v22 = v21 + v19 + 29 * (v17 - (v20 >> 5));
    if (v22 > 0x1Eu)
    {
      v22 -= 30 * (v22 / 0x1Eu);
    }

    if (!v22)
    {
      LOWORD(v22) = 30;
    }

    v23 = v14 - j;
    if (v22 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    v25 = BlueFin::GlBitBuffer::GetU(this, v24);
    v26 = BlueFin::GlBitBuffer::GetU(a2, v24) == 0;
    result = BlueFin::GlMeFrameSearchBuffer::PutU(a5 + 8, v25, v24, 1, v26, a4);
    v14 = *(this + 6);
  }

  *a5 = a6;
  return result;
}

BlueFin::GlMeGalileoINavDecoder *BlueFin::GlMeGalileoINavDecoder::GlMeGalileoINavDecoder(BlueFin::GlMeGalileoINavDecoder *this, BlueFin::GlPeIf *a2, BlueFin::GlMeWinMgr *a3)
{
  *this = -1;
  *(this + 1) = a2;
  *(this + 2) = a3;
  BlueFin::GlMeGalileoINavDecodeHelper::GlMeGalileoINavDecodeHelper(this + 24, this);
  BlueFin::GlMeGalileoINavDecodeHelper::GlMeGalileoINavDecodeHelper(this + 400, this);
  return this;
}

uint64_t BlueFin::GlMeGalileoINavDecoder::SetDSPDataBits(_BYTE *a1, uint64_t a2, BlueFin::GlMeDSPDataBits *a3, const BlueFin::GlMeDSPDataBits *a4)
{
  BlueFin::GlMeGalileoINavDecodeHelper::SetDSPDataBits((a1 + 24), a3);
  result = BlueFin::GlMeGalileoINavDecodeHelper::SetDSPDataBits((a1 + 400), a4);
  if (a2 && ((a1[376] & 1) != 0 || a1[752] == 1))
  {
    if (a1[378])
    {
      v9 = 1;
    }

    else
    {
      v9 = a1[754];
    }

    v10 = *(*a2 + 32);

    return v10(a2, v9 & 1, 1, a3 + 9);
  }

  return result;
}

uint64_t BlueFin::GlMeGalileoINavDecodeHelper::SetDSPDataBits(BlueFin::GlMeGalileoINavDecodeHelper *this, const BlueFin::GlMeDSPDataBits *a2)
{
  v149 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 9);
  v3 = a2 + 9;
  *(this + 372) = v4;
  v5 = *(v3 + 11);
  v94 = v3;
  v6 = *(v3 + 7);
  v7 = v5 - 4 * v6;
  v8 = *(this + 60);
  if (v7 != v8 || ((v9 = *(a2 + 3), v6) ? (v10 = (*(a2 + 3) & 4) == 0) : (v10 = 0), !v10))
  {
    *(this + 71) = 0;
    *(this + 69) = 0;
    *(this + 68) = *(this + 67);
    *(this + 288) = 0;
    *(this + 83) = 0;
    *(this + 81) = 0;
    *(this + 80) = *(this + 79);
    *(this + 336) = 0;
    v9 = *(a2 + 3);
    if (v7 != v8 || (v9 & 4) != 0)
    {
      *(this + 176) = 0;
      *(this + 89) = 0;
    }
  }

  if ((v9 & 0x200) != 0)
  {
    *(this + 89) = 0;
  }

  if (v9 & 0x40) != 0 && (*(a2 + 40))
  {
    *(this + 89) = 1;
  }

  v135[0] = 0;
  v135[1] = a2 + 44;
  v136 = 1;
  v139 = 0;
  v138 = 0;
  v137 = 0x40000000400;
  v140 = 0;
  v129[0] = 0;
  v129[1] = a2 + 172;
  v130 = 1;
  v133 = 0;
  v132 = 0;
  v131 = 0x40000000400;
  v134 = 0;
  BlueFin::GlBitBuffer::Limit(v135, v6);
  BlueFin::GlBitBuffer::Limit(v129, *(a2 + 8));
  v11 = HIDWORD(v137);
  for (i = v138; HIDWORD(v137) != v138; i = v138)
  {
    v13 = v11 - i;
    if (v13 >= 0x20)
    {
      v14 = 32;
    }

    else
    {
      v14 = v13;
    }

    v15 = *(this + 69);
    if (*(this + 68) - v15 < v14)
    {
      BlueFin::GlBitBuffer::Limit(this + 248, v15);
      BlueFin::GlBitBuffer::Position(this + 248, v14);
      v16 = *(this + 69);
      v17 = *(this + 71) + v16;
      *(this + 71) = v17;
      v18 = *(this + 67);
      v19 = v17 >= v18;
      v20 = v17 - v18;
      if (v19)
      {
        *(this + 71) = v20;
      }

      *(this + 69) = *(this + 68) - v16;
      *(this + 68) = v18;
      *(this + 288) = 0;
      BlueFin::GlBitBuffer::Limit(this + 296, *(this + 81));
      BlueFin::GlBitBuffer::Position(this + 296, v14);
      v21 = *(this + 81);
      v22 = *(this + 83) + v21;
      *(this + 83) = v22;
      v23 = *(this + 79);
      v19 = v22 >= v23;
      v24 = v22 - v23;
      if (v19)
      {
        *(this + 83) = v24;
      }

      *(this + 81) = *(this + 80) - v21;
      *(this + 80) = v23;
      *(this + 336) = 0;
    }

    v25 = BlueFin::GlBitBuffer::GetU(v135, v14);
    BlueFin::GlBitBuffer::PutU(this + 31, v25, v14);
    v26 = BlueFin::GlBitBuffer::GetU(v129, v14);
    BlueFin::GlBitBuffer::PutU(this + 37, v26, v14);
    v11 = HIDWORD(v137);
  }

  *(this + 60) = *(a2 + 5);
  v95 = *(this + 69);
  if (v95 < 0xA || (*(this + 68) = v95, *(this + 69) = 0, *(this + 288) = 0, *(this + 40) = *(this + 81), *(this + 336) = 0, LOWORD(v27) = BlueFin::GlBitBuffer::GetU((this + 248), 9u), BlueFin::GlBitBuffer::GetU((this + 296), 9u), *(this + 68) == *(this + 69)))
  {
LABEL_63:
    BlueFin::GlBitBuffer::Position(this + 248, v95);
    BlueFin::GlBitBuffer::Limit(this + 248, *(this + 67));
    BlueFin::GlBitBuffer::Position(this + 296, v95);
    return BlueFin::GlBitBuffer::Limit(this + 296, *(this + 79));
  }

  while (1)
  {
    v28 = BlueFin::GlBitBuffer::GetU((this + 248), 1u);
    BlueFin::GlBitBuffer::GetU((this + 296), 1u);
    v27 = (2 * (v27 & 0x1FF)) | v28;
    if (v27 != 671 && v27 != 352)
    {
      goto LABEL_62;
    }

    v29 = *(this + 69);
    if (*(this + 68) - v29 < 0x1EA)
    {
      goto LABEL_62;
    }

    v123[0] = v148;
    v123[1] = 0;
    v124 = 0;
    v127 = 0;
    v126 = 0;
    v125 = 0x10000000100;
    v30 = 7;
    v128 = 0;
    do
    {
      v31 = BlueFin::GlBitBuffer::GetU((this + 248), 0x20u);
      BlueFin::GlBitBuffer::PutU(v123, v31, 0x20u);
      --v30;
    }

    while (v30);
    v32 = BlueFin::GlBitBuffer::GetU((this + 248), 0x10u);
    BlueFin::GlBitBuffer::PutU(v123, v32, 0x10u);
    v117[0] = v147;
    v117[1] = 0;
    v118 = 0;
    v121 = 0;
    v120 = 0;
    v119 = 0x10000000100;
    v122 = 0;
    BlueFin::GlBitBuffer::Position(this + 248, *(this + 69) + 10);
    v33 = 7;
    do
    {
      v34 = BlueFin::GlBitBuffer::GetU((this + 248), 0x20u);
      BlueFin::GlBitBuffer::PutU(v117, v34, 0x20u);
      --v33;
    }

    while (v33);
    v35 = BlueFin::GlBitBuffer::GetU((this + 248), 0x10u);
    BlueFin::GlBitBuffer::PutU(v117, v35, 0x10u);
    v111[0] = v146;
    v111[1] = 0;
    v112 = 0;
    v115 = 0;
    v114 = 0;
    v113 = 0x10000000100;
    v36 = 7;
    v116 = 0;
    do
    {
      v37 = BlueFin::GlBitBuffer::GetU((this + 296), 0x20u);
      BlueFin::GlBitBuffer::PutU(v111, v37, 0x20u);
      --v36;
    }

    while (v36);
    v38 = BlueFin::GlBitBuffer::GetU((this + 296), 0x10u);
    BlueFin::GlBitBuffer::PutU(v111, v38, 0x10u);
    v105[0] = v145;
    v105[1] = 0;
    v106 = 0;
    v109 = 0;
    v108 = 0;
    v107 = 0x10000000100;
    v110 = 0;
    BlueFin::GlBitBuffer::Position(this + 296, *(this + 81) + 10);
    v39 = 7;
    do
    {
      v40 = BlueFin::GlBitBuffer::GetU((this + 296), 0x20u);
      BlueFin::GlBitBuffer::PutU(v105, v40, 0x20u);
      --v39;
    }

    while (v39);
    v41 = BlueFin::GlBitBuffer::GetU((this + 296), 0x10u);
    BlueFin::GlBitBuffer::PutU(v105, v41, 0x10u);
    BlueFin::GlMeGalileoINavDecodeHelper::deinterleave(v148, v42);
    BlueFin::GlMeGalileoINavDecodeHelper::deinterleave(v147, v43);
    BlueFin::GlMeGalileoINavDecodeHelper::deinterleave(v146, v44);
    BlueFin::GlMeGalileoINavDecodeHelper::deinterleave(v145, v45);
    v46 = 0;
    if (v27 == 671)
    {
      v47 = -1431655766;
    }

    else
    {
      v47 = 1431655765;
    }

    v48 = vdupq_n_s32(v47);
    do
    {
      *&v148[v46] = veorq_s8(*&v148[v46], v48);
      *&v147[v46] = veorq_s8(*&v147[v46], v48);
      v46 += 4;
    }

    while (v46 != 8);
    memset(v143, 0, sizeof(v143));
    v144 = 255;
    memset(v141, 0, sizeof(v141));
    v142 = 255;
    v49 = BlueFin::GlMeSrdViterbiDecoder::RunViterbi(v143, 0xF0u, v148, v146, 1);
    v50 = BlueFin::GlMeSrdViterbiDecoder::RunViterbi(v141, 0xF0u, v147, v145, 1);
    BlueFin::GlBitBuffer::Position(v123, 0x72u);
    BlueFin::GlBitBuffer::Position(v117, 0x72u);
    v51 = BlueFin::GlBitBuffer::GetU(v123, 6u);
    if (BlueFin::GlBitBuffer::GetU(v117, 6u) | v51)
    {
      DeviceFaultNotify("glme_galileo_inav_decoder.cpp", 269, "SetDSPDataBits", "0 == (otPagePart0.GetU(6) | otPagePart1.GetU(6))");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_galileo_inav_decoder.cpp", 269, "0 == (otPagePart0.GetU(6) | otPagePart1.GetU(6))");
    }

    if ((v50 + v49) <= 0x3E7)
    {
      break;
    }

    BlueFin::GlBitBuffer::Position(this + 248, v29);
    BlueFin::GlBitBuffer::Position(this + 296, v29);
LABEL_62:
    if (*(this + 68) == *(this + 69))
    {
      goto LABEL_63;
    }
  }

  v103[0] = &unk_2A1F093E8;
  memset(&v103[1], 0, 32);
  v104 = 0u;
  v97[0] = &v103[2] + 4;
  v97[1] = 0;
  v98 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0x10000000100;
  v102 = 0;
  LODWORD(v126) = 0;
  v128 = 0;
  LODWORD(v120) = 0;
  v122 = 0;
  v52 = BlueFin::GlBitBuffer::GetU(v123, 0x20u);
  BlueFin::GlBitBuffer::PutU(v97, v52, 0x20u);
  v53 = BlueFin::GlBitBuffer::GetU(v123, 0x20u);
  BlueFin::GlBitBuffer::PutU(v97, v53, 0x20u);
  v54 = BlueFin::GlBitBuffer::GetU(v123, 0x20u);
  BlueFin::GlBitBuffer::PutU(v97, v54, 0x20u);
  v55 = BlueFin::GlBitBuffer::GetU(v123, 0x18u);
  BlueFin::GlBitBuffer::PutU(v97, v55, 0x18u);
  v56 = BlueFin::GlBitBuffer::GetU(v117, 0x20u);
  BlueFin::GlBitBuffer::PutU(v97, v56, 0x20u);
  v57 = BlueFin::GlBitBuffer::GetU(v117, 0x20u);
  BlueFin::GlBitBuffer::PutU(v97, v57, 0x20u);
  v58 = BlueFin::GlBitBuffer::GetU(v117, 0x20u);
  BlueFin::GlBitBuffer::PutU(v97, v58, 0x20u);
  v59 = BlueFin::GlBitBuffer::GetU(v117, 0x18u);
  BlueFin::GlBitBuffer::PutU(v97, v59, 0x18u);
  v60 = 0;
  HIDWORD(v99) = v100;
  LODWORD(v100) = 0;
  v102 = 0;
  v61 = 55;
  do
  {
    v62 = v60;
    v63 = BlueFin::GlBitBuffer::GetU(v97, 4u);
    if (v61 == 27)
    {
      BlueFin::GlBitBuffer::Position(v97, v100 + 4);
      v63 = BlueFin::GlBitBuffer::GetU(v97, 2u) | v63 & 0xC;
    }

    v64 = BlueFin::GlMeGalileoINavDecodeHelper::m_ulCrc[v63 ^ v62 & 0xF];
    v60 = v64 ^ (v62 >> 4);
    --v61;
  }

  while (v61);
  if (v64 != v62 >> 4)
  {
    *(this + 354) = 0;
    goto LABEL_62;
  }

  *(this + 354) = 1;
  *(this + 352) = 1;
  if (*(a2 + 40) != 1 || (*(a2 + 12) & 0x40) == 0)
  {
    if (v27 == 671)
    {
      v65 = 2;
    }

    else
    {
      v65 = 1;
    }

    *(this + 89) = v65;
  }

  BlueFin::GlBitBuffer::Position(v97, 1u);
  BYTE1(v103[1]) = BlueFin::GlBitBuffer::GetU(v97, 1u);
  BlueFin::GlBitBuffer::Position(v97, 0x79u);
  v66 = BYTE1(v103[1]);
  if (BlueFin::GlBitBuffer::GetU(v97, 1u) != v66)
  {
    goto LABEL_62;
  }

  v68 = *(a2 + 4);
  v69 = v68 * 1000.0;
  v70 = (v68 * 1000.0 + -0.5);
  if (v68 * 1000.0 >= 0.0)
  {
    v70 = 0;
  }

  if (v69 > 0.0)
  {
    v70 = (v69 + 0.5);
  }

  v71 = 4 * (*(this + 68) - *(this + 69));
  HIDWORD(v104) = v70 - v71;
  BlueFin::GlMeWinMgr::SetGalSecDecodeInfo(*(*(this + 43) + 16), v94, *(this + 352), -(v71 - v68 * 1000.0) / 1000.0);
  *(this + 92) = *(a2 + 5) + 4 * (*(this + 69) - *(this + 68));
  LOBYTE(v103[1]) = *(a2 + 9);
  BlueFin::GlBitBuffer::Position(v97, 2u);
  v72 = BlueFin::GlBitBuffer::GetU(v97, 6u);
  v73 = v72;
  BYTE2(v103[1]) = v72;
  v74 = BYTE1(v103[1]);
  if (BYTE1(v103[1]) | v72)
  {
    v75 = 0;
  }

  else
  {
    BlueFin::GlBitBuffer::Position(v97, 6u);
    v75 = BlueFin::GlBitBuffer::GetU(v97, 2u) == 2;
    v74 = BYTE1(v103[1]);
    v73 = BYTE2(v103[1]);
  }

  if (v74)
  {
    v76 = 0;
  }

  else
  {
    v76 = v73 == 5;
  }

  v77 = v76;
  BYTE3(v103[1]) = (v77 | v75) & 1;
  if (BYTE3(v103[1]))
  {
    *(this + 353) = 1;
    if (v73 == 5)
    {
      BlueFin::GlBitBuffer::Position(v97, 0x4Bu);
      HIDWORD(v103[1]) = BlueFin::GlBitBuffer::GetU(v97, 0xCu);
      v78 = BlueFin::GlBitBuffer::GetU(v97, 0x14u);
      goto LABEL_85;
    }

    if (v75)
    {
      BlueFin::GlBitBuffer::Position(v97, 0x62u);
      HIDWORD(v103[1]) = BlueFin::GlBitBuffer::GetU(v97, 0xCu);
      v78 = BlueFin::GlBitBuffer::GetU(v97, 0x14u);
LABEL_85:
      v84 = v78 + 2;
      LODWORD(v103[2]) = v78 + 2;
    }

    else
    {
      v84 = v103[2];
    }

    v82 = 1000 * v84;
    *(this + 90) = 1000 * v84;
    v79 = *(a2 + 5);
    v80 = *(this + 68);
    v81 = *(this + 69);
    *(this + 91) = v79 + 4 * (v81 - v80);
    if (v84 >= 0x93A80)
    {
      v83 = (this + 360);
      HIDWORD(v103[1]) = (WORD2(v103[1]) + 1) & 0xFFF;
      LODWORD(v103[2]) = v84 - 604800;
LABEL_89:
      *v83 = v82 - 604800000;
    }
  }

  else
  {
    v79 = *(a2 + 5);
    v80 = *(this + 68);
    v81 = *(this + 69);
    if (*(this + 353) == 1)
    {
      v82 = v79 - (*(this + 91) + 4 * (v80 - v81)) + *(this + 90);
      *(this + 90) = v82;
      *(this + 91) = v79 - 4 * (v80 - v81);
      if (v82 >= 0x240C8400)
      {
        v83 = (this + 360);
        goto LABEL_89;
      }
    }
  }

  v85 = *(this + 43);
  v86 = v79 + 4 * (v81 - v80);
  if (*v85 != v86)
  {
    (*(**(v85 + 8) + 48))(*(v85 + 8), v103);
    *v85 = v86;
    v81 = *(this + 69);
  }

  v87 = *(this + 71) + v81;
  *(this + 71) = v87;
  v88 = *(this + 67);
  v19 = v87 >= v88;
  v89 = v87 - v88;
  if (v19)
  {
    *(this + 71) = v89;
  }

  *(this + 69) = *(this + 68) - v81;
  *(this + 68) = v88;
  *(this + 288) = 0;
  BlueFin::GlBitBuffer::Limit(this + 248, v88);
  v90 = *(this + 81);
  v91 = *(this + 83) + v90;
  *(this + 83) = v91;
  v92 = *(this + 79);
  v19 = v91 >= v92;
  v93 = v91 - v92;
  if (v19)
  {
    *(this + 83) = v93;
  }

  *(this + 81) = *(this + 80) - v90;
  *(this + 80) = v92;
  *(this + 336) = 0;
  return BlueFin::GlBitBuffer::Limit(this + 296, v92);
}

double BlueFin::GlMeGalileoINavDecodeHelper::GlMeGalileoINavDecodeHelper(uint64_t a1, uint64_t a2)
{
  *(a1 + 240) = 0;
  *(a1 + 280) = 0;
  *(a1 + 248) = a1;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 268) = 960;
  *&result = 960;
  *(a1 + 272) = 960;
  *(a1 + 288) = 0;
  *(a1 + 328) = 0;
  *(a1 + 296) = a1 + 120;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 316) = 960;
  *(a1 + 320) = 960;
  *(a1 + 336) = 0;
  *(a1 + 344) = a2;
  *(a1 + 352) = 0;
  *(a1 + 354) = 0;
  *(a1 + 364) = 0;
  *(a1 + 356) = 0;
  *(a1 + 372) = 0;
  return result;
}

double BlueFin::GlMeGalileoINavDecodeHelper::deinterleave(BlueFin::GlMeGalileoINavDecodeHelper *this, unsigned int *a2)
{
  v2 = 0;
  v3 = 0;
  v13 = *MEMORY[0x29EDCA608];
  v11 = 0u;
  v12 = 0u;
  do
  {
    v4 = v2 + 30;
    if (v2 + 30 > 0xEF)
    {
      v4 = v2 - 209;
    }

    v5 = 0x80000000 >> v3;
    v6 = *(this + (v2 >> 5)) << v2;
    v7 = v3 >> 5;
    if (v6 < 0)
    {
      v8 = *(&v11 + v7) | v5;
    }

    else
    {
      v8 = *(&v11 + v7) & ~v5;
    }

    *(&v11 + v7) = v8;
    ++v3;
    v2 = v4;
  }

  while (v3 != 240);
  result = *&v11;
  v10 = v12;
  *this = v11;
  *(this + 1) = v10;
  return result;
}

void BlueFin::GlMeGalileoPilotSecCodeDecoder::SetDSPDataBits(uint64_t this, const BlueFin::GlMeDSPDataBits *a2, const BlueFin::GlMeDSPDataBits *a3)
{
  if (*(a2 + 40) == 1)
  {
    v6 = *(a2 + 3);
    if ((v6 & 4) != 0 || (*(a3 + 12) & 4) != 0)
    {
      *(this + 8) = 0;
    }

    v7 = *(a2 + 5);
    if (v7 >= 0x3E8 && ((v6 & 0x100) != 0 || (*(a3 + 13) & 1) != 0))
    {
      v8 = v7 % 0x64;
      if (*(this + 8) == 1 && v8 != *(this + 4) % 0x64u)
      {
        *(this + 8) = 0;
      }

      else
      {
        *(this + 8) = 1;
        *(this + 4) = v8;
        v9 = *(a2 + 4);
        v10 = *(this + 16);
        v11 = a2 + 9;

        BlueFin::GlMeWinMgr::SetGalSecDecodeInfo(v10, v11, 1, v9);
      }
    }

    else if ((*(this + 8) & 1) == 0)
    {
      BlueFin::GlMeGalileoPilotSecCodeDecoder::ProcessBits(this, a2);
      if ((*(this + 8) & 1) == 0)
      {
        BlueFin::GlMeGalileoPilotSecCodeDecoder::ProcessBits(this, a3);
      }

      *this = *(a2 + 5);
    }
  }
}

void BlueFin::GlMeGalileoPilotSecCodeDecoder::ProcessBits(uint64_t this, const BlueFin::GlMeDSPDataBits *a2)
{
  v41 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 12) & 4) != 0)
  {
    *(this + 8) = 0;
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *(this + 88) = 0u;
    *(this + 104) = 0u;
    *(this + 120) = 0;
  }

  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    if (*(a2 + 5) - 4 * v4 == *this)
    {
      if (*(this + 8))
      {
        return;
      }
    }

    else
    {
      *(this + 8) = 0;
      *(this + 24) = 0u;
      *(this + 40) = 0u;
      *(this + 56) = 0u;
      *(this + 72) = 0u;
      *(this + 88) = 0u;
      *(this + 104) = 0u;
      *(this + 120) = 0;
      v4 = *(a2 + 8);
    }

    if (v4 < 0x1A)
    {
      return;
    }

    v33[0] = 0;
    v33[1] = a2 + 44;
    v34 = 1;
    v37 = 0;
    v36 = 0;
    v35 = 0x40000000400;
    v38 = 0;
    BlueFin::GlBitBuffer::Limit(v33, v4);
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    v5 = BlueFin::GlBitBuffer::GetU(v33, 1u);
    v6 = *(a2 + 5) >> 2;
    if (HIDWORD(v35) != v36)
    {
      v7 = (v6 - *(a2 + 8)) % 0x19;
      v8 = this + 24;
      do
      {
        v9 = v5;
        v5 = BlueFin::GlBitBuffer::GetU(v33, 1u);
        v10 = *(v39 + v7);
        if (v9 == v5)
        {
          if (v10 != 0x80000000)
          {
            *(v39 + v7) = v10 - 1;
          }

          v11 = *(v8 + 4 * v7);
          if (v11 == 0x80000000)
          {
            goto LABEL_21;
          }

          v12 = v11 - 1;
        }

        else
        {
          if (v10 != 0x7FFFFFFF)
          {
            *(v39 + v7) = v10 + 1;
          }

          v13 = *(v8 + 4 * v7);
          if (v13 == 0x7FFFFFFF)
          {
            goto LABEL_21;
          }

          v12 = v13 + 1;
        }

        *(v8 + 4 * v7) = v12;
LABEL_21:
        if (v7 == 24)
        {
          v7 = 0;
        }

        else
        {
          ++v7;
        }
      }

      while (HIDWORD(v35) != v36);
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = 2 * v15;
      v18 = 2 * v16;
      v19 = *(v39 + v14);
      v20 = v19 <= 0;
      if (v19)
      {
        v21 = v17;
      }

      else
      {
        v21 = -1;
      }

      v22 = *(this + 24 + v14);
      if (v20)
      {
        v15 = v21;
      }

      else
      {
        v15 = v17 + 1;
      }

      if (v22)
      {
        v23 = v18;
      }

      else
      {
        v23 = -1;
      }

      if (v22 > 0)
      {
        v16 = v18 + 1;
      }

      else
      {
        v16 = v23;
      }

      v14 += 4;
    }

    while (v14 != 100);
    v24 = 0;
    v25 = -1;
    v26 = -1;
    do
    {
      v27 = dword_298A3A420[v24];
      if (v27 == v15)
      {
        v26 = v24;
      }

      if (v27 == v16)
      {
        v25 = v24;
      }

      ++v24;
    }

    while (v24 != 25);
    if (v26 >= v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = v26;
    }

    if ((v26 == v25) == (v28 != -1))
    {
      if (v25 <= v26)
      {
        v29 = v26;
      }

      else
      {
        v29 = v25;
      }

      v30 = 4 * (v29 + 25 * ((171798692 * v6) >> 32)) - 96;
      v31 = *(this + 4);
      if (v31 && (HIDWORD(v32) = -1030792151 * (v30 - v31), LODWORD(v32) = HIDWORD(v32), (v32 >> 2) <= 0x28F5C28))
      {
        *(this + 4) = v30;
        *(this + 8) = 1;
        BlueFin::GlMeWinMgr::SetGalSecDecodeInfo(*(this + 16), a2 + 9, 1, *(a2 + 4) + (*(a2 + 5) - v30) / -1000.0);
      }

      else
      {
        *(this + 4) = v30;
      }
    }
  }
}

uint64_t BlueFin::GlMeGlonassFrameMgr::IsTMFound(BlueFin::GlMeGlonassFrameMgr *this)
{
  v1 = *(this + 1);
  if (v1 != 1)
  {
    if (v1)
    {
      DeviceFaultNotify("glme_glonassframemgr.cpp", 384, "IsTMFound", "false");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_glonassframemgr.cpp", 384, "false");
    }

    LOBYTE(v1) = *(BlueFin::GlMeGlonassFrameMgr::GetSearchStateMemory(this) + 143);
  }

  return v1 & 1;
}

uint64_t BlueFin::GlMeGlonassFrameMgr::SaveSearchBits(BlueFin::GlMeGlonassFrameMgr *this, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned __int16 *a5, const unsigned int *a6, const unsigned int *a7, unsigned int a8, unsigned __int16 a9)
{
  v10 = a7;
  v73 = *MEMORY[0x29EDCA608];
  v66 = 0;
  v67 = 0;
  v68 = 0;
  memset(v70, 0, 13);
  v69 = 0;
  v62 = 0;
  v61 = 0;
  *&v63[4] = 0;
  v64 = 0;
  v65 = 0;
  v57 = 0;
  v50 = 0;
  v43 = 0;
  v36 = 0;
  v14 = *(this + 1);
  v72[0] = *this;
  v72[1] = v14;
  v15 = *(a2 + 1);
  v71[0] = *a2;
  v71[1] = v15;
  if (a7 - 10 * a8 == *a3)
  {
    v16 = *a4;
  }

  else
  {
    v16 = 0;
    *a4 = 0;
  }

  v17 = v16 + a8;
  v66 = this;
  v67 = 0;
  if (v17 <= 0x100)
  {
    v17 = 256;
  }

  v18 = v17 - 256;
  v68 = 0;
  v70[2] = 0;
  v70[0] = 0;
  v69 = 0x10000000100;
  LOBYTE(v70[3]) = 0;
  v60 = a2;
  v61 = 0;
  v62 = 0;
  HIDWORD(v64) = 0;
  *&v63[8] = 0;
  *v63 = 0x10000000100;
  v65 = 0;
  v53[0] = 0;
  v53[1] = a5;
  v54 = 1;
  v58 = 0;
  v56 = 0;
  v55 = 0x10000000100;
  v59 = 0;
  BlueFin::GlBitBuffer::Limit(v53, a8);
  v46[0] = 0;
  v46[1] = a6;
  v47 = 1;
  v51 = 0;
  v49 = 0;
  v48 = 0x10000000100;
  v52 = 0;
  BlueFin::GlBitBuffer::Limit(v46, a8);
  v39[0] = v72;
  v39[1] = 0;
  v40 = 0;
  v44 = 0;
  v42 = 0;
  v41 = 0x10000000100;
  v45 = 0;
  BlueFin::GlBitBuffer::Limit(v39, *a4);
  BlueFin::GlBitBuffer::Position(v39, v18);
  v32[0] = v71;
  v32[1] = 0;
  v33 = 0;
  v37 = 0;
  v35 = 0;
  v34 = 0x10000000100;
  v38 = 0;
  BlueFin::GlBitBuffer::Limit(v32, *a4);
  result = BlueFin::GlBitBuffer::Position(v32, v18);
  v20 = HIDWORD(v41);
  for (i = v42; HIDWORD(v41) != v42; i = v42)
  {
    v22 = v20 - i;
    if (v22 >= 32)
    {
      v23 = 32;
    }

    else
    {
      v23 = v22;
    }

    v24 = BlueFin::GlBitBuffer::GetU(v39, v23);
    BlueFin::GlBitBuffer::PutU(&v66, v24, v23);
    v25 = BlueFin::GlBitBuffer::GetU(v32, v23);
    result = BlueFin::GlBitBuffer::PutU(&v60, v25, v23);
    v20 = HIDWORD(v41);
  }

  v26 = HIDWORD(v55);
  for (j = v56; HIDWORD(v55) != v56; j = v56)
  {
    v28 = v26 - j;
    if (v28 >= 32)
    {
      v29 = 32;
    }

    else
    {
      v29 = v28;
    }

    v30 = BlueFin::GlBitBuffer::GetU(v53, v29);
    BlueFin::GlBitBuffer::PutU(&v66, v30, v29);
    v31 = BlueFin::GlBitBuffer::GetU(v46, v29);
    result = BlueFin::GlBitBuffer::PutU(&v60, v31, v29);
    v26 = HIDWORD(v55);
  }

  *a4 = v70[0];
  *a3 = v10;
  return result;
}

uint64_t BlueFin::GlSignalId::GetMsPerBit(BlueFin::GlSignalId *this)
{
  EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit(this);
  if (*(this + 4) >= 0x23Fu)
  {
    v4 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v5 = 679;
    goto LABEL_6;
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*this]])
  {
    v4 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v5 = 686;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v5, v4);
  }

  return BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*this]] * EpochPerBit;
}

double BlueFin::GlSignalId::GetRfCarrierWavelengthM(BlueFin::GlSignalId *this)
{
  if (*(this + 4) >= 0x23Fu)
  {
    DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 651, "IsValid()");
  }

  v1 = *this;
  v2 = BlueFin::GlSvId::s_aucSvId2gnss[v1];
  v3 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(this + 1) - *(this + 1) + v2]];
  if (v2 == 2)
  {
    v4 = (v1 - 59);
    if ((v1 - 52) >= 0xE)
    {
      v4 = -8.0;
    }

    v3 = v3 + v4 * 562500.0;
  }

  return 299792458.0 / v3;
}

uint64_t BlueFin::GlSignalId::GetMsPerSecFrame(BlueFin::GlSignalId *this)
{
  EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(this);
  if (*(this + 4) >= 0x23Fu)
  {
    v13 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v14 = 679;
    goto LABEL_17;
  }

  v3 = *(this + 1);
  v4 = *this;
  v5 = BlueFin::GlSvId::s_aucSvId2gnss[*this];
  v6 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v3 - v3 + v5];
  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v3 - v3 + v5])
  {
    v13 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v14 = 686;
    goto LABEL_17;
  }

  v7 = BlueFin::GlSignalId::s_ausSignalIndexAndGnss2symbolsPerSecFrame[7 * v3 + v5];
  if (!v7)
  {
    v13 = "usSymbolsPerSecFrame != 0";
    DeviceFaultNotify("glsignalid.h", 771, "GetSymbolsPerSecFrame", "usSymbolsPerSecFrame != 0");
    v14 = 771;
LABEL_17:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v14, v13);
  }

  v8 = v6 * EpochPerSymbol * v7;
  if ((v4 - 66) >= 0xA && (v4 - 1) >= 0x20)
  {
    v10 = v8;
  }

  else
  {
    v10 = 20;
  }

  if (v3 == 2)
  {
    return v10;
  }

  else
  {
    return v8;
  }
}

uint64_t BlueFin::GlMeSlots::NavICDecoder(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*(a1 + 1504) != v2 || (v2 - 189) <= 0xFFFFFFF1)
  {
    DeviceFaultNotify("glme_msmtmgr.cpp", 122, "NavICDecoder", "(m_otSignalId.GetSvId() == rotSvId) && (IS_NAVIC_SVID(*rotSvId))");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", 122, "(m_otSignalId.GetSvId() == rotSvId) && (IS_NAVIC_SVID(*rotSvId))");
  }

  return a1 + 192;
}

uint64_t BlueFin::GlMeSlots::BeidouBitDecoder(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*(a1 + 1504) != v2 || (v2 - 139) <= 0xFFFFFFC0)
  {
    DeviceFaultNotify("glme_msmtmgr.cpp", 133, "BeidouBitDecoder", "(m_otSignalId.GetSvId() == rotSvId) && (IS_BEIDOU_SVID(*rotSvId))");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", 133, "(m_otSignalId.GetSvId() == rotSvId) && (IS_BEIDOU_SVID(*rotSvId))");
  }

  return a1 + 192;
}

uint64_t BlueFin::GlMeMsmtMgr::GetGlnsBitAndTMInfoFromMeas(BlueFin::GlMeMsmtMgr *a1, unsigned __int8 *a2)
{
  v7[0] = *a2;
  v8 = 0;
  v9 = 575;
  if (v7[0] - 189 >= 0xFFFFFF44)
  {
    v3 = BlueFin::GlSvId::s_aucSvId2gnss[v7[0]];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v3] == 255)
    {
      v8 = -1;
    }

    else
    {
      v9 = BlueFin::GlSignalId::s_ausGnss2signalId[v3] + v7[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v3];
    }
  }

  result = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(a1, v7, 0, 1);
  if (result)
  {
    if (*(result + 100) != *a2)
    {
      DeviceFaultNotify("glme_msmtmgr.cpp", 1034, "GetGlnsBitAndTMInfoFromMeas", "pMeDspMeas->otSignalId.GetSvId() == rotSvId");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", 1034, "pMeDspMeas->otSignalId.GetSvId() == rotSvId");
    }

    v5 = (~*(result + 84) & 0x408) == 0;
    v6 = BlueFin::GlMeSlots::GlonassFrameMgr(result, a2);
    return v5 & BlueFin::GlMeGlonassFrameMgr::IsTMFound(v6);
  }

  return result;
}

uint64_t BlueFin::GlMeMsmtMgr::ReportSyncEpochCnt(uint64_t result, unsigned __int8 *a2, int a3, int a4, double a5)
{
  if (a4 != 255)
  {
    v60 = v5;
    v61 = v6;
    v7 = *a2;
    if (v7 < 0x34)
    {
      v9 = 0;
      v8 = 0;
    }

    else
    {
      v8 = a3 - 4 * a4 + 100;
      v9 = 1;
      if (v7 > 0xAE)
      {
        v8 = 0;
      }

      if (v7 < 0x8B)
      {
        v9 = 0;
        v8 = 0;
      }

      if (v7 <= 0x41)
      {
        v9 = 0;
        v8 = a3 + 10 * (200 - a4);
      }
    }

    v35 = &unk_2A1F0DC20;
    v38 = 0;
    v43 = 0;
    v58 = 0u;
    v59 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v10 = &unk_2A1F0DC20;
    v18 = 0;
    v33 = 0u;
    v34 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = v7;
    v37 = v7;
    v11 = 0;
    v36 = 0;
    v14 = 0;
    v39 = 0;
    v15 = v8;
    v16 = 0;
    v40 = v8;
    v41 = 0;
    v17 = (v8 - a3) / 1000.0 + a5;
    v42 = v17;
    if (v7 <= 0xAE)
    {
      if (v9)
      {
        v18 = 1;
        v43 = 1;
      }
    }

    v38 = 258;
    v13 = 256;
    return BlueFin::GlMeMsmtMgr::SetDSPDataBits(result, &v35, &v10);
  }

  return result;
}

float BlueFin::GlMeDSPMeas::GlMeDSPMeas(BlueFin::GlMeDSPMeas *this, const BlueFin::GlMeDSPMeas *a2)
{
  *this = &unk_2A1F0DBF0;
  *(this + 8) = *(a2 + 8);
  *(this + 3) = *(a2 + 3);
  *(this + 2) = *(a2 + 2);
  *(this + 6) = *(a2 + 6);
  *(this + 56) = *(a2 + 56);
  *(this + 84) = *(a2 + 84);
  *(this + 100) = *(a2 + 100);
  v2 = *(a2 + 26);
  *(this + 54) = *(a2 + 54);
  *(this + 26) = v2;
  *(this + 112) = *(a2 + 112);
  *(this + 29) = 0;
  *(this + 15) = *(a2 + 15);
  *(this + 32) = *(a2 + 32);
  *(this + 33) = *(a2 + 33);
  *(this + 34) = *(a2 + 34);
  *(this + 35) = *(a2 + 35);
  *(this + 148) = *(a2 + 148);
  *(this + 144) = *(a2 + 144);
  *(this + 9) = *(a2 + 9);
  result = *(a2 + 20);
  *(this + 20) = result;
  return result;
}

uint64_t BlueFin::GlMeDSPMeas::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v19 = *MEMORY[0x29EDCA608];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 17;
  }

  if (v5 - 18 <= 0xFFFFFFF6)
  {
    DeviceFaultNotify("glme_msmtmgr.cpp", 1755, "SerializeImpl", "ucVersion >= 9 && ucVersion <= 17");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", 1755, "ucVersion >= 9 && ucVersion <= 17");
  }

  v6 = v3;
  v7 = v2;
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v15 = 1;
    v16 = v5;
    v17 = 0x1000000000000;
    v14 = &unk_2A1F09520;
    v18 = v5;
    BlueFin::GlSysLogEntry::PutU16(&v14, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(v2 + 100)));
    v8 = *(v7 + 84);
    v10 = &v12;
    v11 = 3;
    v12 = v8;
    v13 = 0;
    BlueFin::GlSysLogEntry::PutGlSet(&v14, &v10);
    BlueFin::GlSysLogEntry::PutU8(&v14, *(v7 + 88));
    BlueFin::GlSysLogEntry::PutF32(&v14, *(v7 + 36));
    BlueFin::GlSysLogEntry::PutU32(&v14, *(v7 + 48));
    BlueFin::GlSysLogEntry::PutD64(&v14, *(v7 + 32));
    BlueFin::GlSysLogEntry::PutD64(&v14, *(v7 + 56));
    BlueFin::GlSysLogEntry::PutD64(&v14, *(v7 + 8));
    BlueFin::GlSysLogEntry::PutF32(&v14, *(v7 + 60));
    BlueFin::GlSysLogEntry::PutF32(&v14, *(v7 + 64));
    BlueFin::GlSysLogEntry::PutF32(&v14, *(v7 + 68));
    BlueFin::GlSysLogEntry::PutD64(&v14, *(v7 + 16));
    BlueFin::GlSysLogEntry::PutD64(&v14, *(v7 + 24));
    BlueFin::GlSysLogEntry::PutU8(&v14, *(v7 + 112));
    BlueFin::GlSysLogEntry::PutU8(&v14, *(v7 + 140));
    BlueFin::GlSysLogEntry::PutU32(&v14, *(v7 + 52));
    BlueFin::GlSysLogEntry::PutU8(&v14, *(v7 + 144));
    BlueFin::GlSysLogEntry::PutF32(&v14, *(v7 + 40));
    if (v5 < 0xE)
    {
      if (v5 < 0xA)
      {
        goto LABEL_19;
      }
    }

    else
    {
      BlueFin::GlSysLogEntry::PutF32(&v14, *(v7 + 44));
    }

    BlueFin::GlSysLogEntry::PutU32(&v14, *(v7 + 72));
    BlueFin::GlSysLogEntry::PutU32(&v14, *(v7 + 76));
    BlueFin::GlSysLogEntry::PutF32(&v14, *(v7 + 80));
    if (v5 >= 0xB)
    {
      BlueFin::GlSysLogEntry::PutU8(&v14, *(v7 + 92));
      if (v5 >= 0x11)
      {
        BlueFin::GlSysLogEntry::PutU8(&v14, *(v7 + 96));
LABEL_16:
        BlueFin::GlSysLogEntry::PutU8(&v14, *(v7 + 104));
        BlueFin::GlSysLogEntry::PutU8(&v14, BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v7 + 104) - *(v7 + 104) + BlueFin::GlSvId::s_aucSvId2gnss[*(v7 + 100)]]);
        if (v5 >= 0xD)
        {
          BlueFin::GlSysLogEntry::PutU8(&v14, *(v7 + 116));
          if (v5 >= 0x10)
          {
            BlueFin::GlSysLogEntry::PutU8(&v14, *(v7 + 132));
            BlueFin::GlSysLogEntry::PutF32(&v14, *(v7 + 136));
          }
        }

        goto LABEL_19;
      }

      if (v5 != 11)
      {
        goto LABEL_16;
      }
    }

LABEL_19:
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v14, v6, 4);
  }

  return 1;
}

BOOL BlueFin::GlMeDSPMeas::Deserialize(BlueFin::GlMeDSPMeas *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 12);
  if (v2 <= 0x11)
  {
    v5 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + BlueFin::GlSysLogEntry::GetU16(a2));
    if (*(a2 + 12) < 6u)
    {
      BlueFin::GlSysLogEntry::GetGlSet64BitsObsolete(&v24, a2);
      *(this + 21) &= BlueFin::GlSetBase::GetULong(&v24, 0);
    }

    else
    {
      v24 = this + 84;
      v25 = 1;
      BlueFin::GlSysLogEntry::GetGlSet(a2, &v24);
    }

    U8 = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 22) = U8;
    if (*(a2 + 12) <= 0xEu && U8)
    {
      *(this + 22) = U8 + 1;
    }

    *(this + 9) = BlueFin::GlSysLogEntry::GetF32(a2);
    *(this + 12) = BlueFin::GlSysLogEntry::GetU32(a2);
    D64 = BlueFin::GlSysLogEntry::GetD64(a2);
    *(this + 8) = D64;
    v8 = BlueFin::GlSysLogEntry::GetD64(a2);
    *(this + 14) = v8;
    *(this + 1) = BlueFin::GlSysLogEntry::GetD64(a2);
    *(this + 15) = BlueFin::GlSysLogEntry::GetF32(a2);
    *(this + 16) = BlueFin::GlSysLogEntry::GetF32(a2);
    *(this + 17) = BlueFin::GlSysLogEntry::GetF32(a2);
    *(this + 2) = BlueFin::GlSysLogEntry::GetD64(a2);
    *(this + 3) = BlueFin::GlSysLogEntry::GetD64(a2);
    if (*(a2 + 12) < 2u || (*(this + 112) = BlueFin::GlSysLogEntry::GetU8(a2), *(a2 + 12) < 3u) || (*(this + 35) = BlueFin::GlSysLogEntry::GetU8(a2), v9 = *(a2 + 12), v9 <= 3))
    {
      *(this + 21) *= 2;
      goto LABEL_12;
    }

    if (v9 != 4)
    {
      *(this + 13) = BlueFin::GlSysLogEntry::GetU32(a2);
      if (*(a2 + 12) >= 8u)
      {
        *(this + 144) = BlueFin::GlSysLogEntry::GetU8(a2);
        if (*(a2 + 12) >= 9u)
        {
          *(this + 10) = BlueFin::GlSysLogEntry::GetF32(a2);
          v15 = *(a2 + 12);
          if (v15 >= 0xE)
          {
            *(this + 11) = BlueFin::GlSysLogEntry::GetF32(a2);
            v15 = *(a2 + 12);
          }

          if (v15 >= 0xA)
          {
            *(this + 18) = BlueFin::GlSysLogEntry::GetU32(a2);
            *(this + 19) = BlueFin::GlSysLogEntry::GetU32(a2);
            *(this + 20) = BlueFin::GlSysLogEntry::GetF32(a2);
            if (*(a2 + 12) >= 0xBu)
            {
              *(this + 23) = BlueFin::GlSysLogEntry::GetU8(a2);
              v16 = *(a2 + 12);
              if (v16 > 0xE)
              {
                if (v16 < 0x11)
                {
                  goto LABEL_36;
                }

                *(this + 24) = BlueFin::GlSysLogEntry::GetU8(a2);
                v16 = *(a2 + 12);
              }

              else
              {
                v17 = *(this + 22);
                if (v17 >= 1)
                {
                  *(this + 22) = v17 + 1;
                }
              }

              if (v16 >= 0xC)
              {
LABEL_36:
                v18 = BlueFin::GlSysLogEntry::GetU8(a2);
                v19 = BlueFin::GlSysLogEntry::GetU8(a2);
                v20 = BlueFin::GlSvId::s_aucSvId2gnss[v5];
                if ((v5 - 189) > 0xFFFFFF43)
                {
                  if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v18 - v18 + v20] == 255)
                  {
                    v21 = 575;
                    v18 = -1;
                  }

                  else
                  {
                    v21 = BlueFin::GlSignalId::s_ausGnss2signalId[v20] + v5 - BlueFin::GlSvId::s_aucGnss2minSvId[v20] + BlueFin::GlSvId::s_aucGnss2numSvId[v20] * v18;
                  }
                }

                else
                {
                  v21 = 575;
                }

                *(this + 100) = v5;
                *(this + 26) = v18;
                *(this + 54) = v21;
                if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v18 - v18 + v20] != v19)
                {
                  v22 = "etSignalType == otSignalId.GetSignalType()";
                  DeviceFaultNotify("glme_msmtmgr.cpp", 1927, "Deserialize", "etSignalType == otSignalId.GetSignalType()");
                  v23 = 1927;
                  goto LABEL_41;
                }

                if (*(a2 + 12) > 0xCu)
                {
                  *(this + 29) = BlueFin::GlSysLogEntry::GetU8(a2);
                  if (*(a2 + 12) >= 0x10u)
                  {
                    *(this + 33) = BlueFin::GlSysLogEntry::GetU8(a2);
                    F32 = BlueFin::GlSysLogEntry::GetF32(a2);
                    goto LABEL_21;
                  }

LABEL_20:
                  *(this + 33) = 0;
                  F32 = 0.0;
LABEL_21:
                  *(this + 34) = F32;
                  if (*(a2 + 11) == *(a2 + 10))
                  {
                    return v2 < 0x12;
                  }

                  v22 = "otEntry.DataSize() == otEntry.ReadIdx()";
                  DeviceFaultNotify("glme_msmtmgr.cpp", 1954, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
                  v23 = 1954;
LABEL_41:
                  __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", v23, v22);
                }

LABEL_19:
                *(this + 29) = 0;
                goto LABEL_20;
              }
            }
          }
        }
      }
    }

LABEL_12:
    if ((v5 - 189) >= 0xFFFFFF44)
    {
      v11 = BlueFin::GlSvId::s_aucSvId2gnss[v5];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v11] != 255)
      {
        v10 = 0;
        v12 = BlueFin::GlSignalId::s_ausGnss2signalId[v11] + v5 - BlueFin::GlSvId::s_aucGnss2minSvId[v11];
LABEL_18:
        *(this + 100) = v5;
        *(this + 26) = v10;
        *(this + 54) = v12;
        goto LABEL_19;
      }

      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    v12 = 575;
    goto LABEL_18;
  }

  return v2 < 0x12;
}

uint64_t BlueFin::GlMeDSPDataBits::validate(uint64_t result, unsigned int a2)
{
  v2 = BlueFin::GlSvId::s_aucSvId2gnss[result];
  v3 = v2 > 6 || ((1 << v2) & 0x49) == 0;
  if (!v3 || result - 81 <= 0x34)
  {
    if (a2 < 0x65)
    {
      return result;
    }

    v4 = "_ucNumBits <= MAX_GPS_BITS";
    DeviceFaultNotify("glme_msmtmgr.cpp", 2052, "validate", "_ucNumBits <= MAX_GPS_BITS");
    v5 = 2052;
    goto LABEL_22;
  }

  if (v2 == 2)
  {
    if (a2 < 0xC9)
    {
      return result;
    }

    v4 = "_ucNumBits <= MAX_GLONASS_BITS";
    DeviceFaultNotify("glme_msmtmgr.cpp", 2060, "validate", "_ucNumBits <= MAX_GLONASS_BITS");
    v5 = 2060;
    goto LABEL_22;
  }

  if (v2 != 1)
  {
    if (result - 76 <= 0x3E && ((1 << (result - 76)) & 0x7C0000000000001FLL) != 0)
    {
      if (a2 < 0x3E9)
      {
        return result;
      }

      v4 = "_ucNumBits <= MAX_BEIDOU_GEO_BITS";
      DeviceFaultNotify("glme_msmtmgr.cpp", 2064, "validate", "_ucNumBits <= MAX_BEIDOU_GEO_BITS");
      v5 = 2064;
    }

    else if (v2 == 5)
    {
      if (a2 < 0x1F6)
      {
        return result;
      }

      v4 = "_ucNumBits <= MAX_GALILEO_BITS+1";
      DeviceFaultNotify("glme_msmtmgr.cpp", 2068, "validate", "_ucNumBits <= MAX_GALILEO_BITS+1");
      v5 = 2068;
    }

    else
    {
      v4 = "0";
      DeviceFaultNotify("glme_msmtmgr.cpp", 2077, "validate", "0");
      v5 = 2077;
    }

LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", v5, v4);
  }

  if (a2 >= 0x3E9)
  {
    v4 = "_ucNumBits <= MAX_SBAS_BITS";
    DeviceFaultNotify("glme_msmtmgr.cpp", 2056, "validate", "_ucNumBits <= MAX_SBAS_BITS");
    v5 = 2056;
    goto LABEL_22;
  }

  return result;
}

uint64_t BlueFin::GlMeDSPDataBits::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v27 = *MEMORY[0x29EDCA608];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7;
  }

  if (v5 >= 8)
  {
    DeviceFaultNotify("glme_msmtmgr.cpp", 2251, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 7");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", 2251, "ucVersion >= 1 && ucVersion <= 7");
  }

  v6 = v3;
  v7 = v2;
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v23 = 3;
    v24 = v5;
    v25 = 0x1000000000000;
    v22 = &unk_2A1F09520;
    v26 = v5;
    BlueFin::GlSysLogEntry::PutU16(&v22, *(v2 + 9));
    v8 = *(v7 + 16);
    if (v24 < 7u)
    {
      BlueFin::GlSysLogEntry::PutU8(&v22, v8);
    }

    else
    {
      BlueFin::GlSysLogEntry::PutU16(&v22, v8);
    }

    BlueFin::GlSysLogEntry::PutU32(&v22, *(v7 + 20));
    if (v24 >= 5u)
    {
      BlueFin::GlSysLogEntry::PutU32(&v22, *(v7 + 24));
    }

    BlueFin::GlSysLogEntry::PutD64(&v22, *(v7 + 32));
    if (v24 > 4u)
    {
      if (v24 == 5)
      {
        BlueFin::GlSysLogEntry::PutU32(&v22, *(v7 + 12));
        BlueFin::GlSysLogEntry::PutU32(&v22, 0);
        BlueFin::GlSysLogEntry::PutU32(&v22, 0);
      }

      else
      {
        v9 = *(v7 + 12);
        v18 = &v20;
        v19 = 3;
        v20 = v9;
        v21 = 0;
        BlueFin::GlSysLogEntry::PutGlSet(&v22, &v18);
      }
    }

    else
    {
      BlueFin::GlSysLogEntry::PutU32(&v22, *(v7 + 12) >> (v24 < 3u));
      BlueFin::GlSysLogEntry::PutU32(&v22, 0);
    }

    BlueFin::GlMeDSPDataBits::validate(*(v7 + 9), *(v7 + 16));
    v10 = *(v7 + 16) + 31;
    v11 = (v10 >> 5);
    if ((v10 >> 5))
    {
      v12 = (v10 >> 5);
      do
      {
        BlueFin::GlSysLogEntry::PutU32(&v22, 0);
        --v12;
      }

      while (v12);
      v13 = (v7 + 44);
      v14 = v11;
      do
      {
        BlueFin::GlSysLogEntry::PutU32(&v22, *v13++);
        --v14;
      }

      while (v14);
      if (v24 > 1u)
      {
        v15 = (v7 + 172);
        do
        {
          BlueFin::GlSysLogEntry::PutU32(&v22, *v15++);
          --v11;
        }

        while (v11);
        v16 = v24;
LABEL_29:
        if (v16 >= 4)
        {
          BlueFin::GlSysLogEntry::PutU8(&v22, *(v7 + 8));
        }
      }
    }

    else
    {
      v16 = v24;
      if (v24 > 1u)
      {
        goto LABEL_29;
      }
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v22, v6, 4);
  }

  return 1;
}

uint64_t BlueFin::GlMeDSPDataBits::Deserialize(BlueFin::GlMeDSPDataBits *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 3 || *(a2 + 12) - 8 < 0xFFFFFFF9)
  {
    return 0;
  }

  *(this + 9) = BlueFin::GlSysLogEntry::GetU16(a2);
  if (*(a2 + 12) < 7u)
  {
    U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  }

  else
  {
    U8 = BlueFin::GlSysLogEntry::GetU16(a2);
  }

  *(this + 8) = U8;
  *(this + 5) = BlueFin::GlSysLogEntry::GetU32(a2);
  v6 = *(a2 + 12);
  if (v6 >= 5)
  {
    if (v6 - 5 > 1 || (v6 == 5 ? (v7 = 33) : (v7 = 34), 3 * (((*(this + 8) + 31) >> 3) & 0x3FFC) + v7 <= *(a2 + 11)))
    {
      *(this + 6) = BlueFin::GlSysLogEntry::GetU32(a2);
    }
  }

  *(this + 4) = BlueFin::GlSysLogEntry::GetD64(a2);
  if (*(a2 + 12) <= 4u)
  {
    BlueFin::GlSysLogEntry::GetGlSet64BitsObsolete(&v15, a2);
    *(this + 3) &= BlueFin::GlSetBase::GetULong(&v15, 0);
  }

  else
  {
    v15 = this + 12;
    v16 = 1;
    BlueFin::GlSysLogEntry::GetGlSet(a2, &v15);
  }

  BlueFin::GlMeDSPDataBits::validate(*(this + 9), *(this + 8));
  v8 = *(this + 8) + 31;
  v9 = (v8 >> 5);
  if ((v8 >> 5))
  {
    v10 = (v8 >> 5);
    do
    {
      BlueFin::GlSysLogEntry::GetU32(a2);
      --v10;
    }

    while (v10);
    v11 = (this + 44);
    v12 = v9;
    do
    {
      *v11++ = BlueFin::GlSysLogEntry::GetU32(a2);
      --v12;
    }

    while (v12);
    if (*(a2 + 12) <= 1u)
    {
      goto LABEL_28;
    }

    v13 = (this + 172);
    do
    {
      *v13++ = BlueFin::GlSysLogEntry::GetU32(a2);
      --v9;
    }

    while (v9);
    v14 = *(a2 + 12);
  }

  else
  {
    v14 = *(a2 + 12);
    if (v14 <= 1)
    {
      goto LABEL_28;
    }
  }

  if (v14 > 2)
  {
    if (v14 != 3)
    {
      *(this + 8) = BlueFin::GlSysLogEntry::GetU8(a2);
    }

    goto LABEL_29;
  }

LABEL_28:
  *(this + 3) *= 2;
LABEL_29:
  if (*(a2 + 11) != *(a2 + 10))
  {
    DeviceFaultNotify("glme_msmtmgr.cpp", 2428, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", 2428, "otEntry.DataSize() == otEntry.ReadIdx()");
  }

  return 1;
}

uint64_t BlueFin::GlMeDSPDataBits::ConvertGlnsSymsToBits(uint64_t this, BlueFin::GlMeDSPDataBits *a2, unsigned __int8 *a3, int a4)
{
  v5 = this;
  v6 = *(this + 16);
  if (!*(this + 16))
  {
    *(a2 + 4) = *(this + 8);
    *(a2 + 3) = *(this + 12);
    *(a2 + 8) = 0;
    *(a2 + 20) = *(this + 20);
    v16 = *(this + 32);
LABEL_37:
    *(a2 + 4) = v16;
    return this;
  }

  v57 = -119717288;
  v8 = a4 - v6 + 30;
  v9 = a4 - v6 + 29;
  if (v8)
  {
    v10 = a4 - v6 + 29;
  }

  else
  {
    v10 = a4 - v6 + 30;
  }

  v11 = (v8 & 1) + v6;
  v51[0] = &v57;
  v51[1] = 0;
  v52 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0x2000000020;
  v56 = 0;
  BlueFin::GlBitBuffer::Limit(v51, 0x1Eu);
  v48 = 0;
  v42 = 0;
  v45[0] = v5 + 44;
  v45[1] = 0;
  v46 = 0;
  v49 = 0;
  v47 = 0x40000000400;
  v50 = 0;
  BlueFin::GlBitBuffer::Limit(v45, *(v5 + 16));
  v38[0] = v5 + 172;
  v38[1] = 0;
  v39 = 0;
  v43 = 0;
  v41 = 0;
  v40 = 0x40000000400;
  v44 = 0;
  BlueFin::GlBitBuffer::Limit(v38, *(v5 + 16));
  LOBYTE(v12) = 0;
  v13 = 0;
  if (v8)
  {
    if (v9 > 0x1D)
    {
      LOBYTE(v12) = BlueFin::GlBitBuffer::GetU(v45, 1u) == 0;
    }

    else
    {
      v14 = BlueFin::GlBitBuffer::Position(v51, v9);
      LOBYTE(v12) = BlueFin::GlBitBuffer::GetU(v14, 1u);
      v15 = BlueFin::GlBitBuffer::GetU(v45, 1u);
      if (v15 != BlueFin::GlBitBuffer::GetU(v51, 1u))
      {
        LOBYTE(v12) = (v12 & 1) == 0;
      }
    }

    v13 = BlueFin::GlBitBuffer::GetU(v38, 1u);
  }

  LODWORD(v48) = 0;
  v50 = 0;
  v41 = 0;
  v44 = 0;
  LODWORD(v54) = 0;
  v56 = 0;
  *(a2 + 4) = *(v5 + 8);
  *(a2 + 3) = *(v5 + 12);
  v17 = v11 >> 1;
  *(a2 + 8) = v17;
  *(a2 + 20) = *(v5 + 20);
  *(a2 + 4) = *(v5 + 32);
  v35 = 0;
  v29 = 0;
  v32[0] = a2 + 44;
  v32[1] = 0;
  v33 = 0;
  v36 = 0;
  v34 = 0x40000000400;
  v37 = 0;
  BlueFin::GlBitBuffer::Limit(v32, v17);
  v25[0] = a2 + 172;
  v25[1] = 0;
  v26 = 0;
  v30 = 0;
  v28 = 0;
  v27 = 0x40000000400;
  v31 = 0;
  this = BlueFin::GlBitBuffer::Limit(v25, *(a2 + 8));
  v18 = HIDWORD(v47);
  v19 = v48;
  if ((HIDWORD(v47) - v48) >= 2)
  {
    do
    {
      if (v8)
      {
        v12 = BlueFin::GlBitBuffer::GetU(v45, 1u) + 2 * v12;
        v13 = BlueFin::GlBitBuffer::GetU(v38, 1u) + 2 * v13;
      }

      else
      {
        LOBYTE(v12) = BlueFin::GlBitBuffer::GetU(v45, 2u);
        v13 = BlueFin::GlBitBuffer::GetU(v38, 2u);
      }

      if (v10 <= 0x1D)
      {
        v20 = BlueFin::GlBitBuffer::Position(v51, v10);
        LOBYTE(v12) = BlueFin::GlBitBuffer::GetU(v20, 2u) ^ v12;
      }

      v21 = 0;
      v22 = 1;
      if (v13 > 1u)
      {
        if (v13 != 2)
        {
          if (v13 != 3)
          {
LABEL_39:
            DeviceFaultNotify("glme_msmtmgr.cpp", 2757, "ConvertGlnsSymsToBits", "0");
            v24 = 2757;
            goto LABEL_41;
          }

          v21 = 1;
        }
      }

      else if (v13)
      {
        if (v13 != 1)
        {
          goto LABEL_39;
        }

        v21 = 0;
        v22 = 0;
      }

      BlueFin::GlBitBuffer::PutU(v25, v21, 1u);
      if (v12 > 1u)
      {
        if (v12 == 2)
        {
          v22 = 1;
        }

        else if (v12 != 3)
        {
LABEL_40:
          DeviceFaultNotify("glme_msmtmgr.cpp", 2789, "ConvertGlnsSymsToBits", "0");
          v24 = 2789;
LABEL_41:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_msmtmgr.cpp", v24, "0");
        }
      }

      else if (v12)
      {
        if (v12 != 1)
        {
          goto LABEL_40;
        }

        v22 = 0;
      }

      else
      {
        v22 ^= 1u;
      }

      this = BlueFin::GlBitBuffer::PutU(v32, v22, 1u);
      v8 = 0;
      v10 = (v10 + 2) % 200;
      v18 = HIDWORD(v47);
      v19 = v48;
    }

    while ((HIDWORD(v47) - v48) > 1);
  }

  if (v18 != v19)
  {
    v23 = BlueFin::GlBitBuffer::GetU(v45, 1u);
    this = BlueFin::GlBitBuffer::GetU(v38, 1u);
    *a3 = v23 | (2 * this);
    *(a2 + 20) = vadd_s32(*(a2 + 20), 0x900000009);
    v16 = *(a2 + 4) + -0.01;
    goto LABEL_37;
  }

  return this;
}

uint64_t BlueFin::GlMeWaasFrameMgr::Update(int8x16_t *this, const BlueFin::GlMeDSPDataBits *a2, double a3, double a4, int8x16_t a5, int8x16_t a6)
{
  v6 = *(a2 + 9);
  this[6].i8[8] = v6;
  if (*(a2 + 8) != 250)
  {
    return 0;
  }

  v37 = &unk_2A1F0DC80;
  v38 = v6 + 87;
  v39 = -6;
  v9 = (a2 + 44);
  *v40 = *(a2 + 44);
  v10 = *(a2 + 60);
  *&v40[16] = v10;
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    BlueFin::GlMeSbasDataBits::SerializeImpl(&v37, 0);
  }

  this[6].i8[10] = 0;
  v11 = this + 2;
  for (i = 17; i != 25; ++i)
  {
    v13 = *v9++;
    this->i32[i] = v13;
  }

  *v10.i64 = floor(*(a2 + 4) * 1000.0);
  *a6.i64 = *v10.i64 + trunc(*v10.i64 * 2.32830644e-10) * -4294967300.0;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = vnegq_f64(v14);
  a6.i64[0] = vbslq_s8(v15, a6, v10).u64[0];
  if (*v10.i64 > 4294967300.0)
  {
    v10.i64[0] = a6.i64[0];
  }

  if (*v10.i64 < -4294967300.0)
  {
    *a5.i64 = -*v10.i64;
    *v10.i64 = -(*v10.i64 - trunc(*v10.i64 * -2.32830644e-10) * -4294967300.0);
    *v10.i64 = -*vbslq_s8(v15, v10, a5).i64;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (*v10.i64 < 0.0)
  {
    v20 = --*v10.i64;
  }

  else
  {
    v20 = *v10.i64;
  }

  this[6].i32[1] = v20;
  do
  {
    if (v18)
    {
      goto LABEL_39;
    }

    v21 = this[4].i32[0] + (this[2].u8[3] << 8);
    v22 = 1;
    if (v21 <= 39621)
    {
      if (v21 != 14764)
      {
        if (v21 == 21402)
        {
          goto LABEL_27;
        }

        if (v21 != 25913)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_26;
    }

    if (v21 != 39622 && v21 != 50771)
    {
      if (v21 != 44133)
      {
        goto LABEL_39;
      }

LABEL_26:
      v22 = 0;
    }

LABEL_27:
    v24 = 0;
    v25 = 1;
    v26 = -1;
    v27 = 250;
    do
    {
      v28 = v25 == 1;
      if (v25 == 1)
      {
        v25 = 0x80000000;
      }

      else
      {
        v25 >>= 1;
      }

      if (v28)
      {
        ++v26;
      }

      if ((v24 & 0x800000) != 0)
      {
        v24 = (v22 ^ ((v11->i32[v26] & v25) == 0) | (2 * v24)) ^ 0x1864CFB;
      }

      else
      {
        v24 = v22 ^ ((v11->i32[v26] & v25) == 0) | (2 * v24);
      }

      --v27;
    }

    while (v27);
    if (v24)
    {
      v18 = 0;
    }

    else
    {
      v16 = 1;
      this[6].i8[10] = 1;
      this[6].i32[1] = this[6].i32[1] + 4 * v17 - 2032;
      v32 = this[3];
      *this = *v11;
      this[1] = v32;
      v18 = (v17 + 1);
      if (v21 != 21402 && v21 != 39622 && v21 != 50771)
      {
        v33 = vmvnq_s8(this[1]);
        *this = vmvnq_s8(*this);
        this[1] = v33;
        v18 = (v17 + 251);
        this[1].i32[3] &= 0xFFFFFFC0;
        v16 = 1;
      }
    }

LABEL_39:
    for (j = 24; j != 7; --j)
    {
      v30 = this->i32[j];
      this->i32[j] = (v19 != 0) | (2 * v30);
      v19 = v30 & 0x80000000;
    }

    v31 = this[4].u32[0];
    if (v31 > 0xFF)
    {
      this[3].i32[3] += 64;
      this[4].i32[0] = v31 - 256;
    }

    ++v17;
  }

  while (v17 != 250);
  if (v16)
  {
    v34 = this[1];
    *&v40[4] = *this;
    *&v40[20] = v34;
    v35 = (this->i32[0] >> 18) & 0x3F;
    this[6].i8[9] = v35;
    BYTE1(v37) = v35;
    LOBYTE(v37) = *(a2 + 9);
    v38 = 0;
    HIDWORD(v37) = *(a2 + 6);
    *v40 = this[6].i32[1];
    (*(*this[7].i64[0] + 40))(this[7].i64[0], &v37, 44133, v18);
    if (this[6].i8[9] == 9)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t BlueFin::GlMeSbasDataBits::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v16 = *MEMORY[0x29EDCA608];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  if (v5 >= 3)
  {
    DeviceFaultNotify("glme_waasframemgr.cpp", 224, "SerializeImpl", "ucVersion == 1 || ucVersion == 2");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_waasframemgr.cpp", 224, "ucVersion == 1 || ucVersion == 2");
  }

  v6 = v3;
  v7 = v2;
  v12 = 19;
  v13 = v5;
  v14 = 0x1000000000000;
  v11 = &unk_2A1F092C0;
  v15 = v5;
  BlueFin::GlSysLogEntry::PutU16(&v11, *(v2 + 8));
  BlueFin::GlSysLogEntry::PutU16(&v11, *(v7 + 9));
  v8 = 0;
  v9 = v7 + 12;
  do
  {
    BlueFin::GlSysLogEntry::PutU32(&v11, *(v9 + v8));
    v8 += 4;
  }

  while (v8 != 32);
  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v11, v6, 4);
  return 1;
}

uint64_t BlueFin::GlMeSbasDataBits::Deserialize(BlueFin::GlMeSbasDataBits *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 19 || *(a2 + 12) - 3 < 0xFFFFFFFE)
  {
    return 0;
  }

  *(this + 8) = BlueFin::GlSysLogEntry::GetU16(a2);
  v5 = 0;
  *(this + 9) = BlueFin::GlSysLogEntry::GetU16(a2);
  v6 = this + 12;
  do
  {
    *&v6[v5] = BlueFin::GlSysLogEntry::GetU32(a2);
    v5 += 4;
  }

  while (v5 != 32);
  if (*(a2 + 11) != *(a2 + 10))
  {
    DeviceFaultNotify("glme_waasframemgr.cpp", 266, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_waasframemgr.cpp", 266, "otEntry.DataSize() == otEntry.ReadIdx()");
  }

  return 1;
}

BlueFin::GlMeNavICDecoder *BlueFin::GlMeNavICDecoder::GlMeNavICDecoder(BlueFin::GlMeNavICDecoder *this, BlueFin::GlPeIf *a2, BlueFin::GlMeWinMgr *a3)
{
  *this = -1;
  *(this + 1) = a2;
  BlueFin::GlMeGalileoINavDecodeHelper::GlMeGalileoINavDecodeHelper(this + 16, this);
  BlueFin::GlMeGalileoINavDecodeHelper::GlMeGalileoINavDecodeHelper(this + 392, this);
  return this;
}

uint64_t BlueFin::GlMeNavICDecoder::SetDSPDataBits(_BYTE *a1, uint64_t a2, BlueFin::GlMeDSPDataBits *a3, const BlueFin::GlMeDSPDataBits *a4)
{
  BlueFin::GlMeNavICDecodeHelper::SetDSPDataBits((a1 + 16), a3);
  result = BlueFin::GlMeNavICDecodeHelper::SetDSPDataBits((a1 + 392), a4);
  if (a2 && ((a1[368] & 1) != 0 || a1[744] == 1))
  {
    if (a1[370])
    {
      v9 = 1;
    }

    else
    {
      v9 = a1[746];
    }

    v10 = *(*a2 + 32);

    return v10(a2, v9 & 1, 1, a3 + 9);
  }

  return result;
}

uint64_t BlueFin::GlMeNavICDecodeHelper::SetDSPDataBits(BlueFin::GlMeNavICDecodeHelper *this, const BlueFin::GlMeDSPDataBits *a2)
{
  v142 = *MEMORY[0x29EDCA608];
  *(this + 372) = *(a2 + 9);
  v4 = *(a2 + 5);
  v5 = *(a2 + 8);
  v6 = v4 - 20 * v5;
  v7 = *(this + 60);
  if (v6 != v7 || ((v8 = *(a2 + 3), v5) ? (v9 = (*(a2 + 3) & 4) == 0) : (v9 = 0), !v9))
  {
    *(this + 71) = 0;
    *(this + 69) = 0;
    *(this + 68) = *(this + 67);
    *(this + 288) = 0;
    *(this + 83) = 0;
    *(this + 81) = 0;
    *(this + 80) = *(this + 79);
    *(this + 336) = 0;
    v8 = *(a2 + 3);
    if (v6 != v7 || (*(a2 + 3) & 4) != 0)
    {
      *(this + 176) = 0;
      *(this + 89) = 0;
    }
  }

  if ((v8 & 0x200) != 0)
  {
    *(this + 89) = 0;
  }

  v124[0] = 0;
  v124[1] = a2 + 44;
  v125 = 1;
  v128 = 0;
  v127 = 0;
  v126 = 0x40000000400;
  v129 = 0;
  v118[0] = 0;
  v118[1] = a2 + 172;
  v119 = 1;
  v122 = 0;
  v121 = 0;
  v120 = 0x40000000400;
  v123 = 0;
  BlueFin::GlBitBuffer::Limit(v124, v5);
  BlueFin::GlBitBuffer::Limit(v118, *(a2 + 8));
  v11 = HIDWORD(v126);
  for (i = v127; HIDWORD(v126) != v127; i = v127)
  {
    v13 = v11 - i;
    if (v13 >= 0x20)
    {
      v14 = 32;
    }

    else
    {
      v14 = v13;
    }

    v15 = *(this + 69);
    if (*(this + 68) - v15 < v14)
    {
      BlueFin::GlBitBuffer::Limit(this + 248, v15);
      BlueFin::GlBitBuffer::Position(this + 248, v14);
      v16 = *(this + 69);
      v17 = *(this + 71) + v16;
      *(this + 71) = v17;
      v18 = *(this + 67);
      v19 = v17 >= v18;
      v20 = v17 - v18;
      if (v19)
      {
        *(this + 71) = v20;
      }

      *(this + 69) = *(this + 68) - v16;
      *(this + 68) = v18;
      *(this + 288) = 0;
      BlueFin::GlBitBuffer::Limit(this + 296, *(this + 81));
      BlueFin::GlBitBuffer::Position(this + 296, v14);
      v21 = *(this + 81);
      v22 = *(this + 83) + v21;
      *(this + 83) = v22;
      v23 = *(this + 79);
      v19 = v22 >= v23;
      v24 = v22 - v23;
      if (v19)
      {
        *(this + 83) = v24;
      }

      *(this + 81) = *(this + 80) - v21;
      *(this + 80) = v23;
      *(this + 336) = 0;
    }

    v25 = BlueFin::GlBitBuffer::GetU(v124, v14);
    BlueFin::GlBitBuffer::PutU(this + 31, v25, v14);
    v26 = BlueFin::GlBitBuffer::GetU(v118, v14);
    BlueFin::GlBitBuffer::PutU(this + 37, v26, v14);
    v11 = HIDWORD(v126);
  }

  *(this + 60) = *(a2 + 5);
  v83 = *(this + 69);
  if (v83 < 0x10 || (*(this + 68) = v83, *(this + 69) = 0, *(this + 288) = 0, *(this + 40) = *(this + 81), *(this + 336) = 0, LOWORD(v27) = BlueFin::GlBitBuffer::GetU((this + 248), 0xFu), BlueFin::GlBitBuffer::GetU((this + 296), 0xFu), *(this + 68) == *(this + 69)))
  {
LABEL_67:
    BlueFin::GlBitBuffer::Position(this + 248, v83);
    BlueFin::GlBitBuffer::Limit(this + 248, *(this + 67));
    BlueFin::GlBitBuffer::Position(this + 296, v83);
    return BlueFin::GlBitBuffer::Limit(this + 296, *(this + 79));
  }

  v28 = vdup_n_s32(0x260u);
  v29 = vdup_n_s32(0x140u);
  while (1)
  {
    v30 = BlueFin::GlBitBuffer::GetU((this + 248), 1u);
    BlueFin::GlBitBuffer::GetU((this + 296), 1u);
    v27 = (2 * (v27 & 0x7FFF)) | v30;
    if (v27 != 60304 && v27 != 5231)
    {
      goto LABEL_66;
    }

    v32 = *(this + 69);
    if (*(this + 68) - v32 < 0x248)
    {
      goto LABEL_66;
    }

    v112[0] = v138;
    v112[1] = 0;
    v113 = 0;
    v116 = 0;
    v115 = 0;
    v114 = v28;
    v33 = 18;
    v117 = 0;
    do
    {
      v34 = BlueFin::GlBitBuffer::GetU((this + 248), 0x20u);
      BlueFin::GlBitBuffer::PutU(v112, v34, 0x20u);
      --v33;
    }

    while (v33);
    v35 = BlueFin::GlBitBuffer::GetU((this + 248), 8u);
    BlueFin::GlBitBuffer::PutU(v112, v35, 8u);
    v106[0] = v136;
    v106[1] = 0;
    v107 = 0;
    v110 = 0;
    v109 = 0;
    v108 = v28;
    v36 = 18;
    v111 = 0;
    do
    {
      v37 = BlueFin::GlBitBuffer::GetU((this + 296), 0x20u);
      BlueFin::GlBitBuffer::PutU(v106, v37, 0x20u);
      --v36;
    }

    while (v36);
    v38 = BlueFin::GlBitBuffer::GetU((this + 296), 8u);
    BlueFin::GlBitBuffer::PutU(v106, v38, 8u);
    v100[0] = &v132;
    v100[1] = 0;
    v101 = 0;
    v104 = 0;
    v103 = 0;
    v102 = v28;
    v105 = 0;
    v114.i32[1] = v115;
    LODWORD(v115) = 0;
    v39 = 584;
    v117 = 0;
    do
    {
      v40 = BlueFin::GlBitBuffer::GetU(v112, 1u);
      BlueFin::GlBitBuffer::PutU(v100, v40, 1u);
      if (v115 + 72 <= 583)
      {
        v41 = v115 + 72;
      }

      else
      {
        v41 = v115 - 511;
      }

      BlueFin::GlBitBuffer::Position(v112, v41);
      --v39;
    }

    while (v39);
    v139 = v133;
    v140 = v134;
    v141[0] = *v135;
    *(v141 + 12) = *&v135[12];
    *v138 = v132;
    v104 = 0;
    v102.i32[1] = v102.i32[0];
    LODWORD(v103) = 0;
    v105 = 0;
    memset(v130, 0, sizeof(v130));
    v131 = 255;
    v108.i32[1] = v109;
    LODWORD(v109) = 0;
    v42 = 584;
    v111 = 0;
    do
    {
      v43 = BlueFin::GlBitBuffer::GetU(v106, 1u);
      BlueFin::GlBitBuffer::PutU(v100, v43, 1u);
      if (v109 + 72 <= 583)
      {
        v44 = v109 + 72;
      }

      else
      {
        v44 = v109 - 511;
      }

      BlueFin::GlBitBuffer::Position(v106, v44);
      --v42;
    }

    while (v42);
    v45 = 0;
    v136[1] = v133;
    v136[2] = v134;
    v137[0] = *v135;
    *(v137 + 12) = *&v135[12];
    v136[0] = v132;
    v104 = 0;
    v102.i32[1] = v102.i32[0];
    LODWORD(v103) = 0;
    if (v27 == 5231)
    {
      v46 = -1;
    }

    else
    {
      v46 = 0;
    }

    v105 = 0;
    do
    {
      v138[v45++] ^= v46;
    }

    while (v45 != 19);
    v47 = BlueFin::GlMeSrdViterbiDecoder::RunViterbi(v130, 0x248u, v138, v136, 1);
    BlueFin::GlBitBuffer::Position(v112, 0x11Eu);
    if (BlueFin::GlBitBuffer::GetU(v112, 6u))
    {
      DeviceFaultNotify("glme_navic_decoder.cpp", 257, "SetDSPDataBits", "0 == (otSubFrame.GetU(6))");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_navic_decoder.cpp", 257, "0 == (otSubFrame.GetU(6))");
    }

    if (v47 > 0x3E7)
    {
      BlueFin::GlBitBuffer::Position(this + 248, v32);
      BlueFin::GlBitBuffer::Position(this + 296, v32);
      goto LABEL_66;
    }

    v94 = &unk_2A1F09418;
    v95 = 0;
    v96 = 0;
    v97 = 0;
    memset(v98, 0, sizeof(v98));
    v99 = 0;
    v90 = &unk_2A1F09388;
    v91 = 0;
    v92 = -1;
    memset(v93, 0, sizeof(v93));
    v84[0] = &v98[2];
    v84[1] = 0;
    v85 = 0;
    v88 = 0;
    v87 = 0;
    v86 = v29;
    v89 = 0;
    LODWORD(v115) = 0;
    v117 = 0;
    v48 = BlueFin::GlBitBuffer::GetU(v112, 0x20u);
    BlueFin::GlBitBuffer::PutU(v84, v48, 0x20u);
    v49 = BlueFin::GlBitBuffer::GetU(v112, 0x20u);
    BlueFin::GlBitBuffer::PutU(v84, v49, 0x20u);
    v50 = BlueFin::GlBitBuffer::GetU(v112, 0x20u);
    BlueFin::GlBitBuffer::PutU(v84, v50, 0x20u);
    v51 = BlueFin::GlBitBuffer::GetU(v112, 0x20u);
    BlueFin::GlBitBuffer::PutU(v84, v51, 0x20u);
    v52 = BlueFin::GlBitBuffer::GetU(v112, 0x20u);
    BlueFin::GlBitBuffer::PutU(v84, v52, 0x20u);
    v53 = BlueFin::GlBitBuffer::GetU(v112, 0x20u);
    BlueFin::GlBitBuffer::PutU(v84, v53, 0x20u);
    v54 = BlueFin::GlBitBuffer::GetU(v112, 0x20u);
    BlueFin::GlBitBuffer::PutU(v84, v54, 0x20u);
    v55 = BlueFin::GlBitBuffer::GetU(v112, 0x20u);
    BlueFin::GlBitBuffer::PutU(v84, v55, 0x20u);
    v56 = BlueFin::GlBitBuffer::GetU(v112, 0x20u);
    BlueFin::GlBitBuffer::PutU(v84, v56, 0x20u);
    v57 = BlueFin::GlBitBuffer::GetU(v112, 4u);
    BlueFin::GlBitBuffer::PutU(v84, v57, 4u);
    v58 = 0;
    v86.i32[1] = v87;
    LODWORD(v87) = 0;
    v89 = 0;
    v59 = 286;
    do
    {
      v60 = BlueFin::GlBitBuffer::GetU(v84, 1u);
      v61 = v58 & 0x800000;
      if (v60)
      {
        v61 = v58 & 0x800000 ^ 0x800000;
      }

      if (v61)
      {
        v58 = (2 * (v58 & 0x7FFFFF)) ^ 0x864CFB;
      }

      else
      {
        v58 = 2 * (v58 & 0x7FFFFF);
      }

      --v59;
    }

    while (v59);
    if (!v58)
    {
      break;
    }

    *(this + 354) = 0;
LABEL_66:
    if (*(this + 68) == *(this + 69))
    {
      goto LABEL_67;
    }
  }

  *(this + 354) = 1;
  *(this + 352) = 1;
  if (v27 == 5231)
  {
    v63 = 2;
  }

  else
  {
    v63 = 1;
  }

  *(this + 89) = v63;
  v64 = *(a2 + 4) * 1000.0;
  if (v64 > 0.0)
  {
    v65 = 0.5;
    goto LABEL_76;
  }

  if (v64 < 0.0)
  {
    v65 = -0.5;
LABEL_76:
    v66 = (v64 + v65);
  }

  else
  {
    v66 = 0;
  }

  v67 = -20 * (*(this + 68) - *(this + 69));
  v99 = v67 + v66;
  *(this + 92) = v67 + *(a2 + 5);
  LOBYTE(v95) = *(a2 + 9);
  BlueFin::GlBitBuffer::Position(v84, 8u);
  v98[0] = BlueFin::GlBitBuffer::GetU(v84, 0x11u);
  v98[1] = 12 * v98[0];
  BlueFin::GlBitBuffer::Position(v84, 0x1Bu);
  v96 = BlueFin::GlBitBuffer::GetU(v84, 2u);
  if (!v96)
  {
    BlueFin::GlBitBuffer::Position(v84, 0x1Eu);
    v97 = BlueFin::GlBitBuffer::GetU(v84, 0xAu);
  }

  v68 = v98[1];
  v69 = 1000 * v98[1];
  *(this + 90) = 1000 * v98[1];
  v70 = *(a2 + 5) - 20 * (*(this + 68) - *(this + 69));
  *(this + 91) = v70;
  if (v68 >= 0x93A80)
  {
    v97 = (v97 + 1) & 0x3FF;
    v68 -= 604800;
    v98[1] = v68;
    *(this + 90) = v69 - 604800000;
  }

  *(this + 353) = 1;
  LOBYTE(v91) = v95;
  HIBYTE(v91) = v96 + 1;
  v93[11] = v99;
  v92 = v70;
  v93[0] = v68;
  memset(&v93[1], 0, 40);
  BlueFin::GlBitBuffer::Position(v84, 0);
  for (j = 20; j != 56; j += 4)
  {
    *(&v90 + j) |= BlueFin::GlBitBuffer::GetU(v84, 0x1Eu);
  }

  v72 = BlueFin::GlBitBuffer::GetU(v84, 0x16u);
  v93[10] |= v72;
  v73 = *(this + 43);
  v74 = *(this + 91);
  if (*v73 != v74)
  {
    (*(**(v73 + 8) + 32))(*(v73 + 8), &v90);
    *v73 = v74;
  }

  v75 = *(this + 69);
  v76 = *(this + 71) + v75;
  *(this + 71) = v76;
  v77 = *(this + 67);
  v19 = v76 >= v77;
  v78 = v76 - v77;
  if (v19)
  {
    *(this + 71) = v78;
  }

  *(this + 69) = *(this + 68) - v75;
  *(this + 68) = v77;
  *(this + 288) = 0;
  BlueFin::GlBitBuffer::Limit(this + 248, v77);
  v79 = *(this + 81);
  v80 = *(this + 83) + v79;
  *(this + 83) = v80;
  v81 = *(this + 79);
  v19 = v80 >= v81;
  v82 = v80 - v81;
  if (v19)
  {
    *(this + 83) = v82;
  }

  *(this + 81) = *(this + 80) - v79;
  *(this + 80) = v81;
  *(this + 336) = 0;
  return BlueFin::GlBitBuffer::Limit(this + 296, v81);
}

uint64_t BlueFin::GlPeNicEphDecData::Unpack(BlueFin::GlPeNicEphDecData *this, BlueFin::GlPeNicEphemeris *a2)
{
  if (*(this + 16) != 3)
  {
    DeviceFaultNotify("glpe_nicephmgr.cpp", 331, "Unpack", "AllSubframesPresent()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nicephmgr.cpp", 331, "AllSubframesPresent()");
  }

  (*(*a2 + 216))(a2, 0, *(this + 4));
  (*(*a2 + 216))(a2, 3, *(this + 6) >> 30);
  (*(*a2 + 216))(a2, 28, (*(this + 6) >> 20) & 0x3FF);
  HIDWORD(v4) = *(this + 6);
  LODWORD(v4) = *(this + 7);
  (*(*a2 + 216))(a2, 10, (v4 >> 20) >> 10);
  (*(*a2 + 216))(a2, 9, (*(this + 7) >> 14));
  (*(*a2 + 216))(a2, 8, (*(this + 7) >> 6));
  (*(*a2 + 216))(a2, 4, (*(this + 7) >> 2) & 0xF);
  HIDWORD(v4) = *(this + 7);
  LODWORD(v4) = *(this + 8);
  (*(*a2 + 216))(a2, 7, (v4 >> 2) >> 16);
  (*(*a2 + 216))(a2, 6, (*(this + 8) >> 10));
  HIDWORD(v4) = *(this + 8);
  LODWORD(v4) = *(this + 9);
  (*(*a2 + 216))(a2, 12, (v4 >> 10) >> 10);
  (*(*a2 + 216))(a2, 29, (*(this + 9) >> 12));
  HIDWORD(v4) = *(this + 9);
  LODWORD(v4) = *(this + 10);
  (*(*a2 + 216))(a2, 14, (v4 >> 12) >> 17);
  (*(*a2 + 216))(a2, 16, (*(this + 10) >> 14) & 0x7FFF);
  HIDWORD(v4) = *(this + 10);
  LODWORD(v4) = *(this + 11);
  (*(*a2 + 216))(a2, 19, (v4 >> 14) >> 17);
  (*(*a2 + 216))(a2, 21, *(this + 23) & 0x7FFF);
  (*(*a2 + 216))(a2, 23, *(this + 11) >> 1);
  HIDWORD(v4) = *(this + 11);
  LODWORD(v4) = *(this + 12);
  (*(*a2 + 216))(a2, 11, (v4 >> 1) >> 17);
  (*(*a2 + 216))(a2, 26, (*(this + 12) >> 4) & 0x3FFF);
  (*(*a2 + 216))(a2, 13, *(this + 13));
  (*(*a2 + 216))(a2, 18, *(this + 29));
  HIDWORD(v4) = *(this + 14);
  LODWORD(v4) = *(this + 15);
  (*(*a2 + 216))(a2, 15, (v4 >> 16));
  HIDWORD(v4) = *(this + 15);
  LODWORD(v4) = *(this + 16);
  (*(*a2 + 216))(a2, 17, (v4 >> 16));
  HIDWORD(v4) = *(this + 16);
  LODWORD(v4) = *(this + 17);
  (*(*a2 + 216))(a2, 20, (v4 >> 16));
  HIDWORD(v4) = *(this + 17);
  LODWORD(v4) = *(this + 18);
  (*(*a2 + 216))(a2, 24, (v4 >> 16));
  HIDWORD(v4) = *(this + 18);
  LODWORD(v4) = *(this + 19);
  (*(*a2 + 216))(a2, 25, (v4 >> 16) >> 10);
  HIDWORD(v4) = *(this + 19);
  LODWORD(v4) = *(this + 20);
  (*(*a2 + 216))(a2, 22, (v4 >> 26));
  v5 = (*(*a2 + 192))(a2, 18);
  v6 = (*(*a2 + 232))(a2, 18) * v5;
  v7 = (*(*a2 + 192))(a2, 28);
  v8 = (*(*a2 + 232))(a2, 28) * v7;
  v9 = *(this + 3);
  if (v6 + 302400 >= v9)
  {
    if (v9 + 302400 >= v6)
    {
      goto LABEL_7;
    }

    v10 = v8 - 1;
  }

  else
  {
    v10 = v8 + 1;
  }

  v8 = v10 & 0x3FF;
LABEL_7:
  (*(*a2 + 216))(a2, 27, 1);
  (*(*a2 + 216))(a2, 28, v8);
  (*(*a2 + 216))(a2, 2, *(this + 17) == 3);
  v11 = *(*a2 + 216);

  return v11(a2, 1, 0);
}

uint64_t BlueFin::GlPeNicEphemeris::GetFctS(BlueFin::GlPeNicEphemeris *this, const BlueFin::GlPeGnssTime *a2)
{
  if ((*(*this + 80))(this))
  {
    v4 = 604800 * (*(*this + 192))(this, 28);
    v5 = (*(*this + 192))(this, 18);
    return v4 + (*(*this + 232))(this, 18) * v5;
  }

  else
  {
    BlueFin::GlPeEphemeris::GetEphTime(v18, this, a2);
    v16 = &off_2A1F0E480;
    v17 = 0;
    Gal = BlueFin::GlPeGnssTime::GetGal(v18, &v16);
    v11 = (v16[4])(&v16, Gal);
    LODWORD(v10) = v17;
    *v11.i64 = v10 * 2.32830644e-10 + v9;
    *v12.i64 = *v11.i64 + trunc(*v11.i64 * 2.32830644e-10) * -4294967300.0;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v14 = vnegq_f64(v13);
    *&v15 = vbslq_s8(v14, v12, v11).u64[0];
    if (*v11.i64 > 4294967300.0)
    {
      *v11.i64 = v15;
    }

    if (*v11.i64 < -4294967300.0)
    {
      *v8.i64 = -*v11.i64;
      *v11.i64 = -(*v11.i64 - trunc(*v11.i64 * -2.32830644e-10) * -4294967300.0);
      *v11.i64 = -*vbslq_s8(v14, v11, v8).i64;
    }

    if (*v11.i64 < 0.0)
    {
      return --*v11.i64;
    }

    else
    {
      return *v11.i64;
    }
  }
}

uint64_t BlueFin::GlPeNicEphemeris::GetSatClkInfo(BlueFin::GlPeEphemeris *a1, uint64_t a2, double *a3, double *a4)
{
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 17);
  v9 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 15);
  v22 = v9;
  v10 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 12) + sqrt(3.986005e14 / (ScaledFloatingField * ScaledFloatingField * (ScaledFloatingField * ScaledFloatingField * (ScaledFloatingField * ScaledFloatingField))));
  v11 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 9);
  v12 = (*(*a1 + 64))(a1, a2, 0);
  v13 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 10) + v11 * v12;
  *a3 = v13;
  v14 = v13 - BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 6);
  v15 = (*(*a1 + 64))(a1, a2, 1) - v14;
  v21 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 13) + v10 * v15;
  v20 = 0.0;
  BlueFin::GlPeEphemeris::Kepler(&v21, &v22, &v20, v16);
  v17 = __sincos_stret(v20);
  v18 = ScaledFloatingField * (v9 * -4.44280763e-10);
  *a3 = *a3 + v18 * v17.__sinval;
  *a4 = v11 + v18 * v17.__cosval * v10;
  return 1;
}

uint64_t BlueFin::GlPeNicEphemeris::GetApproximateElevation(BlueFin::GlPeEphemeris *a1, uint64_t a2, double *a3)
{
  v5 = (*(*a1 + 64))(a1, a2, 1);
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 22);
  v7 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 12) + 0.000072918;
  v8 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 13) + v7 * v5;
  v9 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 24);
  v10 = __sincos_stret(v8 + v9);
  v11 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 20);
  v12 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 18);
  v13 = __sincos_stret(v11 + (v5 + v12) * -0.0000729211515);
  v14 = __sincos_stret(ScaledFloatingField);
  v15 = ((a3[1] * (v14.__cosval * (v10.__sinval * 42165305.6) * v13.__cosval + v10.__cosval * 42165305.6 * v13.__sinval) + (v10.__cosval * 42165305.6 * v13.__cosval - v14.__cosval * (v10.__sinval * 42165305.6) * v13.__sinval) * *a3 + v14.__sinval * (v10.__sinval * 42165305.6) * a3[2]) / 2.6847923e14 + -0.24) * 90.0;
  if (v15 <= 0.0)
  {
    if (v15 >= 0.0)
    {
      v17 = 0;
      goto LABEL_7;
    }

    v16 = -0.5;
  }

  else
  {
    v16 = 0.5;
  }

  v17 = (v15 + v16);
LABEL_7:
  if (v17 <= -90)
  {
    v17 = -90;
  }

  if (v17 >= 90)
  {
    return 90;
  }

  else
  {
    return v17;
  }
}

uint64_t BlueFin::GlPeNicEphMgr::SetDataSubFrmMeas(BlueFin::GlPeNicEphMgr *this, const BlueFin::GlDataSubFrmMeas *a2, int8x16_t a3, int8x16_t a4)
{
  v114 = *MEMORY[0x29EDCA608];
  if (*(a2 + 9) - 3 <= 0xFFFFFFFD)
  {
    v95 = "potDataSubFrmMeas.ucSubFrmId == 1 || potDataSubFrmMeas.ucSubFrmId == 2";
    DeviceFaultNotify("glpe_nicephmgr.cpp", 1412, "SetDataSubFrmMeas", "potDataSubFrmMeas.ucSubFrmId == 1 || potDataSubFrmMeas.ucSubFrmId == 2");
    v96 = 1412;
    goto LABEL_100;
  }

  v6 = *(this + 8);
  v101 = 7;
  LOBYTE(v102) = 0;
  result = BlueFin::GlPeSvIdConverter::SvId2Gnss(v6, a2 + 8, &v101, a3, a4);
  if (v101 > 6 || (v8 = v102, v102 - 1 >= 0x3F))
  {
    v95 = "otGnss.isValid()";
    DeviceFaultNotify("glpe_nicephmgr.cpp", 1415, "SetDataSubFrmMeas", "otGnss.isValid()");
    v96 = 1415;
    goto LABEL_100;
  }

  if (*(this + 3) != v101)
  {
    return result;
  }

  v99 = *(*(this + 2) + 2568);
  BlueFin::GlArray::EnsureValidHandle(this + 2112, v102);
  if (*(*(this + 266) + v8 - *(this + 2148)) == 255 && *(this + 2151) == 255)
  {
    *&v100[0] = this + 2112;
    BYTE8(v100[0]) = 0;
    if (*(this + 2150))
    {
      v66 = 0;
      v67 = 0;
      do
      {
        v68 = BlueFin::GlArrayIterator::Next(v100);
        v69 = *(BlueFin::GlArray::Get((this + 2112), v68) + 8);
        v70 = v99 - v69;
        if (v66 <= v99 - v69)
        {
          v71 = v68;
        }

        else
        {
          v71 = v67;
        }

        if (v66 > v70)
        {
          v70 = v66;
        }

        if (v99 > v69)
        {
          v67 = v71;
          v66 = v70;
        }
      }

      while (BYTE8(v100[0]) < *(*&v100[0] + 38));
      if (v66 > 0xEA60)
      {
        BlueFin::GlArray::Remove((this + 2112), v67);
        v8 = v102;
        goto LABEL_7;
      }

      v8 = v102;
    }

    v86 = BlueFin::GNSS2STR(*(this + 3));
    return GlCustomLog(13, "EphMgr(%s,%d)[%u]: No free decoders available! GnssId:%d\n", v86, v8, v99, v8);
  }

LABEL_7:
  BlueFin::GlArray::EnsureValidHandle(this + 2112, v8);
  v9 = (this + 2112);
  if (*(*(this + 266) + v8 - *(this + 2148)) != 255)
  {
    result = BlueFin::GlArray::Get(v9, v8);
    v10 = result;
    if (result)
    {
      goto LABEL_9;
    }

    v95 = "potDecoder != nullptr";
    DeviceFaultNotify("glpe_nicephmgr.cpp", 1569, "getDecoder", "potDecoder != nullptr");
    v96 = 1569;
LABEL_100:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nicephmgr.cpp", v96, v95);
  }

  v17 = BlueFin::GlArray::Add(v9, v8);
  if (!v17)
  {
    v95 = "pBuffer != nullptr";
    DeviceFaultNotify("glpe_nicephmgr.cpp", 1549, "getDecoder", "pBuffer != nullptr");
    v96 = 1549;
    goto LABEL_100;
  }

  v10 = v17;
  *v17 = *(this + 3);
  *(v17 + 4) = v8;
  *(v17 + 8) = -7200001;
  *(v17 + 24) = 0u;
  v18 = v17 + 24;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 68) = 0u;
  *(v17 + 12) = 0;
  *(v17 + 20) = 0;
  Time = BlueFin::GlPeTimeManager::GetTime(*(this + 2), 1, &v105);
  v20 = (*(*this + 368))(this, &v102, Time);
  result = (*(*v20 + 144))(v20);
  v21 = result;
  if (result <= 1 && v105.n128_u32[2] != -1 && *(&v107 + 4) != 4294967300.0)
  {
    result = BlueFin::GlPeEphemeris::isExpired(v20, &v105);
    if ((result & 1) == 0)
    {
      v23 = v21 == 0;
      v100[0] = v18;
      LOBYTE(v100[1]) = 0;
      DWORD1(v100[2]) = 0;
      *(&v100[1] + 12) = 0;
      *(&v100[1] + 4) = 0xE0000000E0;
      BYTE8(v100[2]) = 0;
      v24 = (*(*v20 + 192))(v20, 3);
      BlueFin::GlBitBuffer::PutU(v100, v24, 2u);
      v25 = (*(*v20 + 192))(v20, 28);
      BlueFin::GlBitBuffer::PutU(v100, v25, 0xAu);
      v26 = (*(*v20 + 208))(v20, 10);
      BlueFin::GlBitBuffer::PutU(v100, v26, 0x16u);
      v27 = (*(*v20 + 208))(v20, 9);
      BlueFin::GlBitBuffer::PutU(v100, v27, 0x10u);
      v28 = (*(*v20 + 208))(v20, 8);
      BlueFin::GlBitBuffer::PutU(v100, v28, 8u);
      v29 = (*(*v20 + 192))(v20, 4);
      BlueFin::GlBitBuffer::PutU(v100, v29, 4u);
      v30 = (*(*v20 + 192))(v20, 7);
      BlueFin::GlBitBuffer::PutU(v100, v30, 0x10u);
      v31 = (*(*v20 + 208))(v20, 6);
      BlueFin::GlBitBuffer::PutU(v100, v31, 8u);
      v32 = (*(*v20 + 208))(v20, 12);
      BlueFin::GlBitBuffer::PutU(v100, v32, 0x16u);
      v33 = (*(*v20 + 192))(v20, 29);
      BlueFin::GlBitBuffer::PutU(v100, v33, 8u);
      v34 = (*(*v20 + 208))(v20, 14);
      BlueFin::GlBitBuffer::PutU(v100, v34, 0xFu);
      v35 = (*(*v20 + 208))(v20, 16);
      BlueFin::GlBitBuffer::PutU(v100, v35, 0xFu);
      v36 = (*(*v20 + 208))(v20, 19);
      BlueFin::GlBitBuffer::PutU(v100, v36, 0xFu);
      v37 = (*(*v20 + 208))(v20, 21);
      BlueFin::GlBitBuffer::PutU(v100, v37, 0xFu);
      v38 = (*(*v20 + 208))(v20, 23);
      BlueFin::GlBitBuffer::PutU(v100, v38, 0xFu);
      v39 = (*(*v20 + 208))(v20, 11);
      BlueFin::GlBitBuffer::PutU(v100, v39, 0xFu);
      v40 = (*(*v20 + 208))(v20, 26);
      BlueFin::GlBitBuffer::PutU(v100, v40, 0xEu);
      v100[0] = (v10 + 52);
      LOBYTE(v100[1]) = 0;
      DWORD1(v100[2]) = 0;
      HIDWORD(v100[1]) = 0;
      *(&v100[1] + 4) = 0x10000000100;
      BYTE8(v100[2]) = 0;
      v41 = (*(*v20 + 208))(v20, 13);
      BlueFin::GlBitBuffer::PutU(v100, v41, 0x20u);
      v42 = (*(*v20 + 192))(v20, 18);
      BlueFin::GlBitBuffer::PutU(v100, v42, 0x10u);
      v43 = (*(*v20 + 192))(v20, 15);
      BlueFin::GlBitBuffer::PutU(v100, v43, 0x20u);
      v44 = (*(*v20 + 192))(v20, 17);
      BlueFin::GlBitBuffer::PutU(v100, v44, 0x20u);
      v45 = (*(*v20 + 208))(v20, 20);
      BlueFin::GlBitBuffer::PutU(v100, v45, 0x20u);
      v46 = (*(*v20 + 208))(v20, 24);
      BlueFin::GlBitBuffer::PutU(v100, v46, 0x20u);
      v47 = (*(*v20 + 208))(v20, 25);
      BlueFin::GlBitBuffer::PutU(v100, v47, 0x16u);
      v48 = (*(*v20 + 208))(v20, 22);
      BlueFin::GlBitBuffer::PutU(v100, v48, 0x20u);
      *(v10 + 16) = 3;
      if ((*(*v20 + 184))(v20))
      {
        v49 = 3;
      }

      else
      {
        v49 = 0;
      }

      *(v10 + 17) = v49;
      v50 = BlueFin::GNSS2STR(*(this + 3));
      v51 = v102;
      v52 = *(*(this + 2) + 2568);
      if (v23)
      {
        v53 = "SAT";
      }

      else
      {
        v53 = "ASST";
      }

      v54 = (*(*v20 + 192))(v20, 5);
      result = GlCustomLog(14, "EphMgr(%s,%d)[%u]: Pre-loaded with existing data.  Src:%s  IODC:%03x\n", v50, v51, v52, v53, v54);
    }
  }

LABEL_9:
  v11 = *(a2 + 9);
  if ((v11 - 3) <= 0xFDu)
  {
    DeviceFaultNotify("glpe_nicephmgr.cpp", 139, "InsertSubframe", "ucSubId == 1 || ucSubId == 2");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nicephmgr.cpp", 139, "ucSubId == 1 || ucSubId == 2");
  }

  v113 = 0;
  memset(v112, 0, sizeof(v112));
  v105.n128_u64[0] = v112;
  v105.n128_u64[1] = 0;
  v106 = 0;
  v108 = 0;
  v107 = vdup_n_s32(0x140u);
  v109 = 0;
  if (!(*(a2 + 5) >> 30))
  {
    v98 = v11 - 1;
    v12 = (a2 + 24);
    v13 = -1;
    v14 = 1;
    do
    {
      v15 = BlueFin::GlBitBuffer::Position(&v105, v14);
      result = BlueFin::GlBitBuffer::PutU(v15, *(v12 - 1), 0x1Eu);
      if (v13 == 8)
      {
        *(v10 + 18) = 0;
        v111[0] = v100;
        v111[1] = &v100[1] + 12;
        v55 = v111[v98];
        memset(v100, 0, 60);
        v56 = byte_298A3A840[v98];
        v104 = 0;
        __s2 = v55;
        BlueFin::GlBitBuffer::Initialize(v103, v55, v56);
        v57 = 0;
        v58 = BlueFin::GlPeNicEphDecData::InsertSubframe(BlueFin::GlDataSubFrmMeas const&)::aucFieldIdx[v98];
        if (BlueFin::GlPeNicEphDecData::InsertSubframe(BlueFin::GlDataSubFrmMeas const&)::aucNumFields[v98] <= 1u)
        {
          v59 = 1;
        }

        else
        {
          v59 = BlueFin::GlPeNicEphDecData::InsertSubframe(BlueFin::GlDataSubFrmMeas const&)::aucNumFields[v98];
        }

        do
        {
          v60 = (&BlueFin::GlPeNicEphDecData::InsertSubframe(BlueFin::GlDataSubFrmMeas const&)::aucSfFieldOffsets + 4 * (v58 + v57));
          v61 = BlueFin::GlBitBuffer::Position(&v105, *v60);
          LODWORD(v60) = *(v60 + 2);
          v62 = BlueFin::GlBitBuffer::GetU(v61, v60);
          BlueFin::GlBitBuffer::PutU(v103, v62, v60);
          ++v57;
        }

        while (v59 != v57);
        v110[0] = v10 + 24;
        v110[1] = v10 + 52;
        v63 = *(v10 + 17);
        v64 = v110[v98];
        v65 = 1 << v98;
        if (((1 << v98) & *(v10 + 16)) != 0)
        {
          if (!memcmp(v110[v98], __s2, v56))
          {
            *(v10 + 17) = v63 | v65;
            *(v10 + 18) = *(v10 + 19);
          }

          else
          {
            *(v10 + 17) = v63 & ~v65;
            *(v10 + 18) = 1;
            memcpy(v64, __s2, v56);
          }

          *(v10 + 19) = 0;
        }

        else
        {
          memcpy(v110[v98], __s2, v56);
          *(v10 + 16) |= v65;
          *(v10 + 18) = 1;
        }

        *(v10 + 8) = *(a2 + 15);
        *(v10 + 12) = *(a2 + 4);
        v73 = v63 != 3 && *(v10 + 17) == 3;
        *(v10 + 20) = v73;
        goto LABEL_59;
      }

      v16 = *v12++;
      ++v13;
      v14 += 30;
    }

    while (!(v16 >> 30));
    if (v13 < 9)
    {
      return result;
    }

LABEL_59:
    result = *(this + 2);
    if (*(result + 2576))
    {
      v74 = BlueFin::GlPeTimeManager::GetTime(result, 1, &v105);
      v75 = (*(*this + 368))(this, &v102, v74);
      v76 = (*(*v75 + 40))(v75);
      v77 = (*(*this + 312))(this, &v102);
      result = 0;
      if (v105.n128_u32[2] == -1)
      {
        v77 = 0;
      }

      if (v77 == 1 && *(&v107 + 4) != 4294967300.0)
      {
        if (BlueFin::GlPeEphemeris::isExpired(v75, &v105))
        {
          result = 0;
        }

        else
        {
          result = (*(*v75 + 184))(v75);
        }
      }

      if (*(v10 + 16) == 3)
      {
        HIDWORD(v78) = *(v10 + 28);
        LODWORD(v78) = *(v10 + 32);
        v79 = (v78 >> 2) >> 16;
        v80 = *(v10 + 56);
        if (v79 == HIWORD(v80))
        {
          v81 = *(v10 + 17);
          if ((*(v10 + 18) & 1) != 0 || *(v10 + 20) == 1)
          {
            if (((result ^ 1) & v76 & 1) != 0 || v81 == 3)
            {
              if ((((*(v75 + 8) & 0xF) != 0) & result) == 1 && v81 != 3)
              {
                DeviceFaultNotify("glpe_nicephmgr.cpp", 1488, "SetDataSubFrmMeas", "rotEphCurrent.GetFormat() == GlPeEphemeris::FORMAT_NONE || !bCurrentEphVerified || bAllNewEphSubframesVerified");
                __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nicephmgr.cpp", 1488, "rotEphCurrent.GetFormat() == GlPeEphemeris::FORMAT_NONE || !bCurrentEphVerified || bAllNewEphSubframesVerified");
              }

              WORD4(v100[0]) = 3937;
              *&v100[1] = &v100[2];
              *(&v100[1] + 1) = vdup_n_s32(0xFF9222FF);
              *&v100[0] = &unk_2A1F0DCC8;
              memset(&v100[2], 0, 60);
              BlueFin::GlPeNicEphDecData::Unpack(v10, v100);
              result = (*(*this + 376))(this, v100, 0);
              if (result)
              {
                v88 = BlueFin::GNSS2STR(*(this + 3));
                v89 = v102;
                if ((*(*&v100[0] + 40))(v100))
                {
                  v90 = 84;
                }

                else
                {
                  v90 = 70;
                }

                v91 = (*(*&v100[0] + 192))(v100, 5);
                if ((*(*&v100[0] + 184))(v100))
                {
                  v92 = 84;
                }

                else
                {
                  v92 = 70;
                }

                v93 = (*(*&v100[0] + 192))(v100, 18);
                v94 = (*(*&v100[0] + 192))(v100, 7);
                return GlCustomLog(14, "EphMgr(%s,%d)[%u]: Valid Eph decoded.  Healthy:%c  IODC:%u  Verified:%c, Toe %d, Toc %d\n", v88, v89, v99, v90, v91, v92, v93, v94);
              }
            }

            else
            {
              v82 = BlueFin::GNSS2STR(*(this + 3));
              if (v76)
              {
                v83 = "verified";
              }

              else
              {
                v83 = "unhealthy";
              }

              return GlCustomLog(14, "EphMgr(%s,%d)[%u]: Current ephemeris is %s, therefore wait for new set to be verified\n", v82, v102, v99, v83);
            }
          }
        }

        else
        {
          v84 = HIWORD(v80);
          v85 = BlueFin::GNSS2STR(*v10);
          return GlCustomLog(14, "EphMgr(%s,%d)[%u]: Ephemeris set transition detected.  [%02x  %02x]\n", v85, *(v10 + 4), *(v10 + 8), v79, v84);
        }
      }
    }

    else
    {
      *(v10 + 19) = 1;
    }
  }

  return result;
}