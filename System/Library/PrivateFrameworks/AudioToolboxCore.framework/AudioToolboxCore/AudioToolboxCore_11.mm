void IPCAUSharedMemoryBase::InitPhase2(IPCAUSharedMemoryBase *this)
{
  v1 = *(this + 8);
  v2 = *(this + 9);
  if (v1 != v2)
  {
    v4 = *(this + 3) + *(this + 14);
    do
    {
      v5 = *(v1 + 12);
      v7 = *(v1 + 24);
      v6 = *(v1 + 28);
      if ((v5 & 0x20) != 0)
      {
        v8 = v6;
      }

      else
      {
        v8 = 1;
      }

      v9 = *(this + 22);
      v10 = CADeprecated::CABufferList::New("", v5, v6);
      v11 = *(v1 + 40);
      *(v1 + 40) = v10;
      if (v11)
      {
        std::default_delete<CADeprecated::CABufferList>::operator()[abi:ne200100](v11);
      }

      v12 = CADeprecated::CABufferList::New("", *(v1 + 12), *(v1 + 28));
      v13 = *(v1 + 48);
      *(v1 + 48) = v12;
      if (v13)
      {
        std::default_delete<CADeprecated::CABufferList>::operator()[abi:ne200100](v13);
      }

      v14 = *(v1 + 40);
      *(v14 + 24) = v8;
      if (v8)
      {
        v15 = (v9 * v7 + 15) & 0xFFFFFFF0;
        v16 = *(v1 + 12);
        v17 = (v14 + 40);
        do
        {
          v18 = *(v1 + 28);
          if ((v16 & 0x20) != 0)
          {
            v18 = 1;
          }

          *v17 = v4;
          *(v17 - 2) = v18;
          *(v17 - 1) = v15;
          v4 += v15;
          v17 += 2;
          --v8;
        }

        while (v8);
      }

      v1 += 56;
    }

    while (v1 != v2);
  }

  __dmb(0xBu);
}

void *CADeprecated::CABufferList::New(uint64_t a1, char a2, unsigned int a3)
{
  if ((a2 & 0x20) != 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = 1;
  }

  if ((a2 & 0x20) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = a3;
  }

  result = operator new(16 * v4 + 32);
  *result = a1;
  result[1] = 0;
  *(result + 4) = 0;
  *(result + 6) = v4;
  if (v4)
  {
    v7 = result + 4;
    do
    {
      *v7 = v5;
      *(v7 + 1) = 0;
      v7[1] = 0;
      v7 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t (*IPCAUClient::AUInstance::LookupMethod_Music(IPCAUClient::AUInstance *this))(void *)
{
  v1 = IPCAU_MIDIEvent;
  if (this != 257)
  {
    if (this == 258)
    {
      return IPCAU_SysEx;
    }

    else if ((this - 1) > 0x13)
    {
      return 0;
    }

    else
    {
      return off_1F0325888[(this - 1)];
    }
  }

  return v1;
}

uint64_t IPCAU_MIDIEvent(void *a1, char a2, char a3, char a4, int a5)
{
  v5 = a1[4];
  v7[0] = 0;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  v8 = a5;
  return IPCAUClient::AUInstance::ControlMessage(v5, v7, 8uLL, 0, 0);
}

uint64_t IPCAU_SysEx(void *a1, const unsigned __int8 *a2, unsigned int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  if (*(v3 + 84) != 1)
  {
    return 4294956429;
  }

  v4 = 4294900547;
  v5 = *(*(v3 + 16) + 48);
  if (v5)
  {
    if (a3 <= 0x7F7)
    {
      LOWORD(v14.msgh_bits) = 1;
      HIWORD(v14.msgh_bits) = a3;
      return IPCAUClient::AUInstance::ControlMessage(v3, &v14, 4uLL, a2, a3);
    }

    v7 = *(v3 + 80);
    *v15 = 1;
    *&v15[4] = a2;
    v16 = 16777472;
    v17 = a3;
    v18 = *MEMORY[0x1E69E99E0];
    v19 = v7;
    v20 = a3;
    reply_port = mig_get_reply_port();
    *&v14.msgh_bits = 2147489043;
    v14.msgh_remote_port = v5;
    v14.msgh_local_port = reply_port;
    *&v14.msgh_voucher_port = 0x1606800000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v14);
      msgh_local_port = v14.msgh_local_port;
    }

    else
    {
      msgh_local_port = reply_port;
    }

    v10 = mach_msg(&v14, 275, 0x3Cu, 0x2Cu, msgh_local_port, gMediaServerTimeout, 0);
    v11 = v10;
    if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(v14.msgh_local_port);
    }

    else
    {
      if (!v10)
      {
        if (v14.msgh_id == 71)
        {
          v12 = 4294966988;
        }

        else if (v14.msgh_id == 90316)
        {
          v12 = 4294966996;
          if ((v14.msgh_bits & 0x80000000) == 0 && v14.msgh_size == 36 && !v14.msgh_remote_port)
          {
            v12 = *&v15[8];
            if (!*&v15[8])
            {
              return 0;
            }
          }
        }

        else
        {
          v12 = 4294966995;
        }

        goto LABEL_27;
      }

      mig_dealloc_reply_port(v14.msgh_local_port);
    }

    v12 = 268435460;
    if (v11 != 268435460)
    {
LABEL_28:
      if (v11 != 268435459 && v11 != -308)
      {
        return v11;
      }

      if (kInterAppAudioScope)
      {
        v13 = *kInterAppAudioScope;
        if (!*kInterAppAudioScope)
        {
          return v4;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14.msgh_bits = 136315906;
        *&v14.msgh_size = "IPCAUClient.cpp";
        LOWORD(v14.msgh_local_port) = 1024;
        *(&v14.msgh_local_port + 2) = 433;
        HIWORD(v14.msgh_voucher_port) = 1024;
        v14.msgh_id = v11;
        *v15 = 1024;
        *&v15[2] = -66749;
        _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d converting result %d -> %d", &v14, 0x1Eu);
      }

      return v4;
    }

    if ((v14.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v14.msgh_local_port);
    }

LABEL_27:
    mach_msg_destroy(&v14);
    v11 = v12;
    goto LABEL_28;
  }

  return v4;
}

uint64_t MP4::AudioSpecificConfig::Deserialize(_DWORD *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 2);
  v7 = *a2;
  v8 = *(a2 + 5);
  v16[2] = 0;
  v17 = 0;
  v18 = 0;
  v19[2] = 0;
  MP4AudioProgramConfig::Clear(v19);
  v21 = 0u;
  v20 = 0u;
  DecoderConfigDescr::cleanup(v16);
  bzero(v15, 0x5F0uLL);
  v9 = DecoderConfigDescr::DeserializeMPEG4AudioSpecificConfig(v16, a2, v3);
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "LATMHeader.cpp";
      v13 = 1024;
      v14 = 86;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioSpecificConfig::Deserialize: cannot parse AudioSpecificConfig", &v11, 0x12u);
    }
  }

  else
  {
    *a1 = v8 - *(a2 + 5) + 8 * (*a2 - *(a2 + 2) + v6 - v7);
  }

  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
  }

  if (*(&v20 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
  }

  return v9;
}

void sub_18F68DEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MP4AudioESDS::~MP4AudioESDS(va);
  _Unwind_Resume(a1);
}

uint64_t MP4::LATMHeader::PutVariableSizeValue(uint64_t a1, unsigned int a2)
{
  v6 = a2;
  if (HIBYTE(a2))
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if ((a2 & 0xFF00) != 0)
  {
    v3 = 1;
  }

  if ((a2 & 0xFF0000) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a1, v4, 2u);
  do
  {
    result = AT::TBitstreamWriter<unsigned int>::PutBits(a1, *(&v6 + v4--), 8u);
  }

  while (v4 != -1);
  return result;
}

uint64_t MP4::LATMHeader::GetVariableSizeValue(void *a1)
{
  v2 = *(a1 + 4);
  v3 = v2 >> 30;
  v4 = *(a1 + 5) - 2;
  *(a1 + 5) = v4;
  if (v4 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
    v7 = *(a1 + 4);
    v6 = *(a1 + 5);
    v4 = v6 + 32;
    v8 = v6 == -32;
    *a1 += 4;
    v3 |= v7 >> v6;
    v5 = v7 << -v6;
    if (v8)
    {
      v5 = 0;
    }

    *(a1 + 4) = v5;
    *(a1 + 5) = v4;
    if (v3 == -1)
    {
      return 0;
    }
  }

  else
  {
    v5 = 4 * v2;
    *(a1 + 4) = v5;
  }

  LODWORD(v9) = 0;
  v10 = v3 + 1;
  do
  {
    v11 = HIBYTE(v5);
    v4 -= 8;
    *(a1 + 5) = v4;
    if (v4 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
      *a1 += 4;
      v13 = *(a1 + 4);
      v12 = *(a1 + 5);
      v11 |= v13 >> v12;
      v4 = v12 + 32;
      *(a1 + 5) = v12 + 32;
      if (v12 == -32)
      {
        v5 = 0;
      }

      else
      {
        v5 = v13 << -v12;
      }
    }

    else
    {
      v5 <<= 8;
    }

    *(a1 + 4) = v5;
    v9 = v11 + (v9 << 8);
    --v10;
  }

  while (v10);
  return v9;
}

uint64_t MP4::LATMHeader::StreamFormatInfo(uint64_t a1, char *a2, unsigned int a3, std::vector<char> *a4, std::vector<char> *a5, AudioStreamBasicDescription *a6, unsigned int *a7)
{
  v57 = *MEMORY[0x1E69E9840];
  LODWORD(v50) = 0;
  v52 = 0;
  v53 = 0;
  v54[2] = 0;
  MP4AudioProgramConfig::Clear(v54);
  v56 = 0u;
  v55 = 0u;
  DecoderConfigDescr::cleanup(&v49);
  if (*(a1 + 1) & 1) != 0 || (*(a1 + 11))
  {
    goto LABEL_35;
  }

  v36 = a7;
  v14 = *(a1 + 28);
  v15 = *(a1 + 4);
  v16 = *(a1 + 20);
  v17 = v14 >> 3;
  if ((v14 & 7) != 0)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = v17;
  }

  begin = a4->__begin_;
  v20 = a4->__end_ - a4->__begin_;
  if (v18 <= v20)
  {
    if (v18 < v20)
    {
      a4->__end_ = &begin[v18];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a4, v18 - v20);
    begin = a4->__begin_;
  }

  v39 = a2;
  v40 = &a2[a3];
  LOBYTE(v41) = 0;
  HIDWORD(v41) = 0;
  MP4::LATMHeader::CopyBitsToByteAlignedBuffer(&v39, v16 + v15, v14, begin);
  bzero(v48, 0x5F0uLL);
  v51 = 6144;
  v50 = 0x500000040;
  v21 = v18;
  if (!v18)
  {
    v21 = DecoderConfigDescr::MPEG4AudioSpecificPayloadSerializeByteCount(&v49);
  }

  v22 = (v21 + 37);
  v23 = a5->__begin_;
  v24 = a5->__end_ - a5->__begin_;
  if (v22 <= v24)
  {
    if (v22 < v24)
    {
      a5->__end_ = &v23[v22];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a5, v22 - v24);
    v23 = a5->__begin_;
  }

  v39 = v23;
  v40 = v23;
  v25 = &v23[v22];
  v41 = &v23[v22];
  v42 = 0x2000000000;
  v43 = v23 & 3;
  v37[0] = v23;
  v37[1] = &v23[v22];
  v38 = 0;
  if ((v23 & 3) != 0)
  {
    v26 = 0;
    v27 = v23 + 1;
    v28 = -8;
    v29 = v27;
    do
    {
      HIDWORD(v38) = v28 + 16;
      v37[0] = v29;
      v26 = *(v29 - 1) | (v26 << 8);
      LODWORD(v38) = v26;
      v28 += 8;
      if ((v27 & 3) == 0)
      {
        break;
      }

      LOBYTE(v27) = v27 + 1;
    }

    while (v29++ < v25);
    LODWORD(v38) = v26 << (24 - v28);
  }

  if (MP4AudioESDS::Serialize(v48, &v39, v18, a4->__begin_))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "LATMHeader.cpp";
      v46 = 1024;
      v47 = 332;
      v31 = MEMORY[0x1E69E9C10];
      v32 = "%25s:%-5d  MP4AudioESDS::Serialize Failed";
LABEL_34:
      _os_log_impl(&dword_18F5DF000, v31, OS_LOG_TYPE_ERROR, v32, buf, 0x12u);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  if (MP4AudioESDS::Deserialize(v48, v37, 0, 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "LATMHeader.cpp";
      v46 = 1024;
      v47 = 340;
      v31 = MEMORY[0x1E69E9C10];
      v32 = "%25s:%-5d  MP4AudioESDS::Deserialize Failed";
      goto LABEL_34;
    }

LABEL_35:
    v34 = 0;
    goto LABEL_36;
  }

  if (DecoderConfigDescr::MakeStreamDescription(&v49, a6, v33))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "LATMHeader.cpp";
      v46 = 1024;
      v47 = 343;
      v31 = MEMORY[0x1E69E9C10];
      v32 = "%25s:%-5d  MP4AudioESDS::DecoderConfigDescr::MakeStreamDescription Failed";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (DecoderConfigDescr::GetChannelLayoutTag(&v49, v36))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "LATMHeader.cpp";
      v46 = 1024;
      v47 = 346;
      v31 = MEMORY[0x1E69E9C10];
      v32 = "%25s:%-5d  MP4AudioESDS::DecoderConfigDescr::GetChannelLayoutTag Failed";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v34 = 1;
LABEL_36:
  if (*(&v56 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v56 + 1));
  }

  if (*(&v55 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v55 + 1));
  }

  return v34;
}

void sub_18F68E48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  MP4AudioESDS::~MP4AudioESDS(va);
  _Unwind_Resume(a1);
}

unsigned __int8 **MP4::LATMHeader::CopyBitsToByteAlignedBuffer(unsigned __int8 **result, int a2, unsigned int a3, _BYTE *a4)
{
  v4 = *(result + 5);
  v5 = a2 - v4;
  if (a2 > v4)
  {
    *(result + 5) = 0;
    *(result + 16) = 0;
    v4 = 0;
    if (v5 >= 8)
    {
      *result += v5 >> 3;
      a2 = v5 & 7;
    }

    else
    {
      a2 = v5;
    }
  }

  if ((a2 - 9) >= 0xFFFFFFF8)
  {
    v6 = *(result + 16);
    v7 = v4 - a2;
    *(result + 5) = v7;
    if (v7 < 0)
    {
      v9 = *result;
      if (result[1] - *result < 1)
      {
        v10 = 255;
      }

      else
      {
        v10 = *v9;
      }

      v11 = v10 << -v7;
      v12 = v7 + 8;
      *(result + 5) = v12;
      *result = v9 + 1;
      if (v12)
      {
        LOBYTE(v8) = v11;
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

    else
    {
      v8 = v6 << a2;
    }

    *(result + 16) = v8;
  }

  if (a3 >= 8)
  {
    do
    {
      v13 = *(result + 16);
      v14 = *(result + 5);
      *(result + 5) = v14 - 8;
      if (v14 - 8 < 0)
      {
        v16 = *result;
        if (result[1] - *result < 1)
        {
          v17 = 255;
        }

        else
        {
          v17 = *v16;
        }

        *(result + 5) = v14;
        *result = v16 + 1;
        v13 |= v17 >> v14;
        if (v14)
        {
          v15 = v17 << (8 - v14);
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      *(result + 16) = v15;
      *a4++ = v13;
      a3 -= 8;
    }

    while (a3 > 7);
  }

  if (a3)
  {
    v18 = *(result + 16);
    v19 = v18 >> (8 - a3);
    v20 = *(result + 5) - a3;
    *(result + 5) = v20;
    if (v20 < 0)
    {
      v22 = *result;
      if (result[1] - *result < 1)
      {
        v23 = 255;
      }

      else
      {
        v23 = *v22;
      }

      v24 = v23 << -v20;
      v25 = v20 + 8;
      *(result + 5) = v25;
      *result = v22 + 1;
      v19 |= v23 >> v25;
      if (v25)
      {
        LOBYTE(v21) = v24;
      }

      else
      {
        LOBYTE(v21) = 0;
      }
    }

    else
    {
      v21 = v18 << a3;
    }

    *(result + 16) = v21;
    *a4 = v19 << (8 - a3);
  }

  return result;
}

uint64_t MP4::LOASHeader::Deserialize(unsigned int *a1, unsigned int **a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 2);
  v4 = *a2;
  v5 = v3 - v4;
  v6 = *(a2 + 5);
  if ((v6 + 8 * v5) < 0x18)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a2 + 4);
  v9 = v8 >> 21;
  v10 = v6 - 11;
  *(a2 + 5) = v10;
  if (v10 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v4);
    v4 = *a2 + 1;
    *a2 = v4;
    v13 = *(a2 + 4);
    v12 = *(a2 + 5);
    v9 |= v13 >> v12;
    v10 = v12 + 32;
    *(a2 + 5) = v12 + 32;
    v11 = v12 == -32 ? 0 : v13 << -v12;
  }

  else
  {
    v11 = v8 << 11;
  }

  *(a2 + 4) = v11;
  if (v9 != 695)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v11 >> 19;
  v15 = v10 - 13;
  *(a2 + 5) = v15;
  if (v15 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v4);
    v4 = *a2 + 1;
    *a2 = v4;
    v20 = *(a2 + 4);
    v19 = *(a2 + 5);
    v14 |= v20 >> v19;
    v15 = v19 + 32;
    *(a2 + 5) = v19 + 32;
    if (v19 == -32)
    {
      v16 = 0;
    }

    else
    {
      v16 = v20 << -v19;
    }
  }

  else
  {
    v16 = v11 << 13;
  }

  *(a2 + 4) = v16;
  *a1 = v14;
  v21 = v15 + 8 * (*(a2 + 2) - v4);
  if (*(a1 + 4) != 1 || (Bit = TBitstreamReader<unsigned int>::GetBit(a2), *(a1 + 5) = Bit != 0, Bit))
  {
    v23 = 0;
    goto LABEL_18;
  }

  v34 = *(a2 + 2);
  v35 = *a2;
  v36 = *(a2 + 5);
  a1[2] = v21 - v36 + 8 * (*a2 - v34);
  v37 = TBitstreamReader<unsigned int>::GetBit(a2);
  *(a1 + 12) = v37 != 0;
  if (v37)
  {
    v38 = TBitstreamReader<unsigned int>::GetBit(a2);
    *(a1 + 13) = v38 != 0;
    if (v38)
    {
      goto LABEL_40;
    }

    if (a1[3])
    {
      MP4::LATMHeader::GetVariableSizeValue(a2);
    }
  }

  else
  {
    *(a1 + 13) = 0;
  }

  v40 = TBitstreamReader<unsigned int>::GetBit(a2);
  *(a1 + 14) = v40 != 0;
  if (!v40)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v91 = 136315394;
      v92 = "LATMHeader.cpp";
      v93 = 1024;
      v94 = 150;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  allStreamsSameTimeFraming == false not supported", &v91, 0x12u);
    }

    v17 = 4294967293;
    goto LABEL_74;
  }

  v41 = *(a2 + 4);
  v42 = v41 >> 26;
  v43 = *(a2 + 5) - 6;
  *(a2 + 5) = v43;
  if (v43 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    ++*a2;
    v49 = *(a2 + 4);
    v48 = *(a2 + 5);
    v42 |= v49 >> v48;
    v43 = v48 + 32;
    *(a2 + 5) = v48 + 32;
    if (v48 == -32)
    {
      v44 = 0;
    }

    else
    {
      v44 = v49 << -v48;
    }
  }

  else
  {
    v44 = v41 << 6;
  }

  *(a2 + 4) = v44;
  *(a1 + 16) = v42;
  if (v42)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v91 = 136315394;
      v92 = "LATMHeader.cpp";
      v93 = 1024;
      v94 = 153;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  multiple subframes not supported", &v91, 0x12u);
    }

    v17 = 4294967292;
LABEL_74:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v91 = 136315394;
      v92 = "LATMHeader.cpp";
      v93 = 1024;
      v94 = 254;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Can't deserialize StreamMuxConfig", &v91, 0x12u);
    }

    return v17;
  }

  v50 = v44 >> 28;
  v51 = v43 - 4;
  *(a2 + 5) = v51;
  if (v51 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    ++*a2;
    v54 = *(a2 + 4);
    v53 = *(a2 + 5);
    v50 |= v54 >> v53;
    v51 = v53 + 32;
    *(a2 + 5) = v53 + 32;
    if (v53 == -32)
    {
      v52 = 0;
    }

    else
    {
      v52 = v54 << -v53;
    }
  }

  else
  {
    v52 = 16 * v44;
  }

  *(a2 + 4) = v52;
  *(a1 + 17) = v50;
  if (v50)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v91 = 136315394;
      v92 = "LATMHeader.cpp";
      v93 = 1024;
      v94 = 156;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  multiple programs not supported", &v91, 0x12u);
    }

    v17 = 4294967291;
    goto LABEL_74;
  }

  v55 = v36 + 8 * (v34 - v35);
  v56 = -1;
  do
  {
    v57 = v52 >> 29;
    v58 = v51 - 3;
    *(a2 + 5) = v58;
    if (v58 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      ++*a2;
      v61 = *(a2 + 4);
      v60 = *(a2 + 5);
      v57 |= v61 >> v60;
      *(a2 + 5) = v60 + 32;
      if (v60 == -32)
      {
        v59 = 0;
      }

      else
      {
        v59 = v61 << -v60;
      }
    }

    else
    {
      v59 = 8 * v52;
    }

    *(a2 + 4) = v59;
    if (v57)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v91 = 136315394;
        v92 = "LATMHeader.cpp";
        v93 = 1024;
        v94 = 161;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  multiple layers not supported", &v91, 0x12u);
      }

      v17 = 4294967290;
      goto LABEL_74;
    }

    if (v56 == -1)
    {
      *(a1 + 15) = 0;
    }

    else
    {
      v62 = TBitstreamReader<unsigned int>::GetBit(a2);
      *(a1 + 15) = v62 != 0;
      if (v62)
      {
        goto LABEL_92;
      }
    }

    if ((a1[3] & 1) == 0)
    {
      a1[6] = v55 - *(a2 + 5) + 8 * (*a2 - *(a2 + 2));
      if (!MP4::AudioSpecificConfig::Deserialize(a1 + 8, a2, 0))
      {
        goto LABEL_92;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v91 = 136315394;
        v92 = "LATMHeader.cpp";
        v93 = 1024;
        v94 = 176;
        v79 = MEMORY[0x1E69E9C10];
        goto LABEL_136;
      }

LABEL_137:
      v17 = 4294967289;
      goto LABEL_74;
    }

    VariableSizeValue = MP4::LATMHeader::GetVariableSizeValue(a2);
    v64 = VariableSizeValue;
    v65 = *(a2 + 5) + 8 * (*(a2 + 2) - *a2);
    a1[6] = v55 - v65;
    if (MP4::AudioSpecificConfig::Deserialize(a1 + 8, a2, VariableSizeValue))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v91 = 136315394;
        v92 = "LATMHeader.cpp";
        v93 = 1024;
        v94 = 185;
        v79 = MEMORY[0x1E69E9C10];
LABEL_136:
        _os_log_impl(&dword_18F5DF000, v79, OS_LOG_TYPE_ERROR, "%25s:%-5d  Can't deserialize AudioSpecificConfig", &v91, 0x12u);
        goto LABEL_137;
      }

      goto LABEL_137;
    }

    v66 = v65 - *(a2 + 5) + 8 * (*a2 - *(a2 + 2));
    if (v64 < v66)
    {
      v17 = 4294967288;
      goto LABEL_74;
    }

    TBitstreamReader<unsigned int>::SkipBits(a2, v64 - v66);
LABEL_92:
    v67 = *(a2 + 4);
    v68 = v67 >> 29;
    v69 = *(a2 + 5) - 3;
    *(a2 + 5) = v69;
    if (v69 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      ++*a2;
      v72 = *(a2 + 4);
      v71 = *(a2 + 5);
      v68 |= v72 >> v71;
      v69 = v71 + 32;
      *(a2 + 5) = v71 + 32;
      if (v71 == -32)
      {
        v70 = 0;
      }

      else
      {
        v70 = v72 << -v71;
      }
    }

    else
    {
      v70 = 8 * v67;
    }

    *(a2 + 4) = v70;
    if (v68 == 1)
    {
      *(a1 + 18) = 1;
      v73 = v70 >> 23;
      v51 = v69 - 9;
      *(a2 + 5) = v51;
      if (v51 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        ++*a2;
        v75 = *(a2 + 4);
        v74 = *(a2 + 5);
        v73 |= v75 >> v74;
        v51 = v74 + 32;
        *(a2 + 5) = v74 + 32;
        if (v74 == -32)
        {
          v52 = 0;
        }

        else
        {
          v52 = v75 << -v74;
        }
      }

      else
      {
        v52 = v70 << 9;
      }

      *(a2 + 4) = v52;
      a1[5] = v73 + 20;
    }

    else
    {
      if (v68)
      {
        v17 = 4294967287;
        goto LABEL_74;
      }

      *(a1 + 18) = 0;
      v51 = v69 - 8;
      *(a2 + 5) = v51;
      if (v51 >= 0)
      {
        v52 = v70 << 8;
LABEL_107:
        *(a2 + 4) = v52;
        goto LABEL_110;
      }

      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      v76 = *(a2 + 5);
      ++*a2;
      v51 = v76 + 32;
      *(a2 + 5) = v76 + 32;
      if (v76 != -32)
      {
        v52 = *(a2 + 4) << -v76;
        goto LABEL_107;
      }

      v52 = 0;
      *(a2 + 4) = 0;
    }

LABEL_110:
    ++v56;
  }

  while (v56 < *(a1 + 17));
  if (TBitstreamReader<unsigned int>::GetBit(a2))
  {
    if (a1[3])
    {
      v78 = MP4::LATMHeader::GetVariableSizeValue(a2);
    }

    else
    {
      v80 = 0;
      v82 = *(a2 + 4);
      v81 = *(a2 + 5);
      v83 = 4;
      do
      {
        v84 = v82 >> 23;
        v81 -= 9;
        *(a2 + 5) = v81;
        if (v81 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          ++*a2;
          v86 = *(a2 + 4);
          v85 = *(a2 + 5);
          v84 |= v86 >> v85;
          v81 = v85 + 32;
          *(a2 + 5) = v85 + 32;
          if (v85 == -32)
          {
            v82 = 0;
          }

          else
          {
            v82 = v86 << -v85;
          }
        }

        else
        {
          v82 <<= 9;
        }

        *(a2 + 4) = v82;
        v78 = v84 | (v80 << 8);
        v80 = v78;
        --v83;
      }

      while (v83);
    }

    a1[7] = v78;
  }

  if (TBitstreamReader<unsigned int>::GetBit(a2))
  {
    v87 = *(a2 + 4);
    v88 = *(a2 + 5) - 8;
    *(a2 + 5) = v88;
    if (v88 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      v90 = *(a2 + 5);
      ++*a2;
      *(a2 + 5) = v90 + 32;
      if (v90 == -32)
      {
        v89 = 0;
      }

      else
      {
        v89 = *(a2 + 4) << -v90;
      }
    }

    else
    {
      v89 = v87 << 8;
    }

    *(a2 + 4) = v89;
  }

LABEL_40:
  v23 = a1[7];
LABEL_18:
  if (*(a1 + 13))
  {
    return 4294967294;
  }

  v24 = 0;
  do
  {
    a1[9] = 0;
    if (*(a1 + 18))
    {
      a1[9] = a1[5];
      v25 = *(a2 + 5);
    }

    else
    {
      v26 = *(a2 + 4);
      v25 = *(a2 + 5);
      do
      {
        v27 = HIBYTE(v26);
        v25 -= 8;
        *(a2 + 5) = v25;
        if (v25 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          ++*a2;
          v29 = *(a2 + 4);
          v28 = *(a2 + 5);
          v27 |= v29 >> v28;
          v25 = v28 + 32;
          *(a2 + 5) = v28 + 32;
          if (v28 == -32)
          {
            v26 = 0;
          }

          else
          {
            v26 = v29 << -v28;
          }
        }

        else
        {
          v26 <<= 8;
        }

        *(a2 + 4) = v26;
        a1[9] += v27;
      }

      while (v27 == 255 && v25 + 8 * (*(a2 + 2) - *a2) > 8);
    }

    a1[10] = v21 - v25 + 8 * (*a2 - *(a2 + 2));
    if (v23)
    {
      TBitstreamReader<unsigned int>::SkipBits(a2, v23);
    }
  }

  while (v24++ < *(a1 + 16));
  v31 = *(a2 + 5);
  if ((v31 & 7) != 0)
  {
    v32 = *(a2 + 4);
    *(a2 + 5) = v31 & 0xFFFFFFF8;
    if (v31 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      v39 = *(a2 + 5);
      ++*a2;
      *(a2 + 5) = v39 + 32;
      if (v39 == -32)
      {
        v33 = 0;
      }

      else
      {
        v33 = *(a2 + 4) << -v39;
      }
    }

    else
    {
      v33 = v32 << (v31 & 7);
    }

    *(a2 + 4) = v33;
  }

  v45 = a1[10];
  v46 = a1[9] + (v45 >> 3);
  v47 = *a1;
  if (v46 > *a1)
  {
    return 4294967285;
  }

  v17 = 0;
  if ((v45 & 7) != 0 && v46 == v47)
  {
    return 4294967285;
  }

  return v17;
}

uint64_t MP4::LOASHeader::IsLOASSyncWord(MP4::LOASHeader *this, const unsigned __int8 *a2, _DWORD *a3, unsigned int *a4)
{
  v5 = this;
  v16[0] = this;
  v16[1] = this + a2;
  v17 = 0;
  if ((this & 3) != 0 && a2)
  {
    v6 = 0;
    v7 = this + 1;
    v8 = -8;
    do
    {
      v9 = *v5;
      v5 = (v5 + 1);
      v6 = v9 | (v6 << 8);
      v8 += 8;
      if ((v7 & 3) == 0)
      {
        break;
      }

      ++v7;
    }

    while (v5 < (this + a2));
    v16[0] = v5;
    v10 = v6 << (24 - v8);
    LODWORD(v17) = v10;
    *a3 = 0;
    if (a2 <= 2)
    {
      return 0;
    }

    v11 = v8 - 3;
    v12 = v10 >> 21;
    HIDWORD(v17) = v8 - 3;
    if (((v8 - 3) & 0x80000000) == 0)
    {
      v13 = v10 << 11;
      goto LABEL_14;
    }
  }

  else
  {
    *a3 = 0;
    if (a2 < 3)
    {
      return 0;
    }

    v12 = 0;
    HIDWORD(v17) = -11;
  }

  TBitstreamReader<unsigned int>::FillCacheFrom(v16, v5);
  v5 = (v16[0] + 4);
  v16[0] += 4;
  v12 |= v17 >> SBYTE4(v17);
  v11 = HIDWORD(v17) + 32;
  if (HIDWORD(v17) == -32)
  {
    v13 = 0;
  }

  else
  {
    v13 = v17 << -BYTE4(v17);
  }

LABEL_14:
  LODWORD(v17) = v13;
  if (v12 != 695)
  {
    return 0;
  }

  v14 = v13 >> 19;
  HIDWORD(v17) = v11 - 13;
  if (v11 - 13 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(v16, v5);
    v14 |= v17 >> SBYTE4(v17);
  }

  *a3 = v14 + 3;
  return 1;
}

uint64_t MP4::LOASHeader::CopyByteAlignedAccessUnitsFromAudioSyncStream(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, unsigned int a6, unsigned int *a7)
{
  if (!*a1)
  {
    v9 = 0;
    LODWORD(v8) = 0;
    v23 = 0;
    goto LABEL_41;
  }

  v34 = a7;
  v8 = 0;
  v9 = 0;
  v37 = a3 + 1;
  v38 = a3;
  while (1)
  {
    v10 = (a2 + 16 * v8);
    v11 = *v10;
    v12 = *(v10 + 3);
    v13 = (a3 + *v10);
    v49 = 0;
    v50 = 1;
    memset(v51, 0, 11);
    v52 = 0;
    v54 = 0;
    v53 = 0;
    v14 = v13 + v12;
    v47[0] = v13;
    v47[1] = (v13 + v12);
    v48 = 0;
    if ((v13 & 3) != 0 && v12 != 0)
    {
      v16 = 0;
      v17 = v37 + v11;
      v18 = -8;
      v19 = v13;
      do
      {
        v20 = v18;
        v21 = *v19;
        v19 = (v19 + 1);
        v16 = v21 | (v16 << 8);
        v18 += 8;
        if ((v17 & 3) == 0)
        {
          break;
        }

        ++v17;
      }

      while (v19 < v14);
      v47[0] = v19;
      LODWORD(v48) = v16 << (24 - v18);
      HIDWORD(v48) = v20 + 16;
    }

    v22 = MP4::LOASHeader::Deserialize(&v49, v47);
    if (v22)
    {
      break;
    }

    if (a4 && (v50 & 0x100) == 0 && (v51[1] & 0x1000000) == 0)
    {
      v27 = HIDWORD(v53);
      v35 = HIDWORD(v52);
      v36 = v51[0];
      v28 = HIDWORD(v53) >> 3;
      memset(&v46, 0, sizeof(v46));
      if ((v53 & 0x700000000) != 0)
      {
        v29 = v28 + 1;
      }

      else
      {
        v29 = v28;
      }

      if (v29)
      {
        std::vector<unsigned char>::__append(&v46, v29);
        begin = v46.__begin_;
      }

      else
      {
        begin = 0;
      }

      v43[0] = v13;
      v43[1] = v14;
      v44 = 0;
      v45 = 0;
      MP4::LATMHeader::CopyBitsToByteAlignedBuffer(v43, v36 + v35 + 24, v27, begin);
      if (*(a4 + 8) - *a4 == v29)
      {
        v31 = memcmp(begin, *a4, v29);
        v32 = v31 == 0;
        if (v31)
        {
          v23 = 4294967288;
        }

        else
        {
          v23 = 0;
        }

        if (!begin)
        {
LABEL_36:
          if (!v32)
          {
            goto LABEL_40;
          }

          goto LABEL_16;
        }
      }

      else
      {
        v32 = 0;
        v23 = 4294967288;
        if (!begin)
        {
          goto LABEL_36;
        }
      }

      operator delete(begin);
      goto LABEL_36;
    }

    v23 = 0;
LABEL_16:
    v24 = v54;
    v25 = v54 + v9;
    if (v54 + v9 > a6)
    {
      goto LABEL_40;
    }

    v26 = HIDWORD(v54) + 24;
    if ((v54 & 0x700000000) != 0)
    {
      v46.__begin_ = v13;
      v46.__end_ = v14;
      LOBYTE(v46.__end_cap_.__value_) = 0;
      HIDWORD(v46.__end_cap_.__value_) = 0;
      MP4::LATMHeader::CopyBitsToByteAlignedBuffer(&v46, v26, 8 * v54, a5);
    }

    else
    {
      memcpy(a5, v13 + (v26 >> 3), v54);
    }

    *v10 = v9;
    *(v10 + 2) = 0;
    *(v10 + 3) = v24;
    a5 += v24;
    ++v8;
    v9 += v24;
    a3 = v38;
    if (v8 >= *a1)
    {
      v9 = v25;
      goto LABEL_40;
    }
  }

  v23 = v22;
LABEL_40:
  a7 = v34;
LABEL_41:
  *a7 = v9;
  *a1 = v8;
  return v23;
}

void sub_18F68F518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SoundCheckAnalyzer::Finish(SoundCheckAnalyzer *this, CACFDictionary *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(this + 8) & 8) != 0)
  {
    v11 = MEMORY[0x1E695E9D8];
    v12 = MEMORY[0x1E695E9E8];
    *__str = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v23 = 257;
    Mutable = CFDictionaryCreateMutable(0, 0, v11, v12);
    v21 = 257;
    v18 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v19 = 257;
    if ((*(this + 8) & 2) != 0)
    {
      v13 = *(this + 7);
      if (v13)
      {
        computeItuLoudnessValue(v13);
        computeEbuLoudnessRange(*(this + 7));
        v14 = *(this + 7);
        if (*(v14 + 2148))
        {
          CACFDictionary::AddFloat32(&Mutable, @"aa itu loudness", *(v14 + 2144));
          v14 = *(this + 7);
        }

        if (*(v14 + 2156))
        {
          CACFDictionary::AddFloat32(&Mutable, @"aa ebu loudness range", *(v14 + 2152));
          v14 = *(this + 7);
        }

        if (*(v14 + 2164))
        {
          CACFDictionary::AddFloat32(&Mutable, @"aa ebu top of loudness range", *(v14 + 2160));
          v14 = *(this + 7);
        }

        if (*(v14 + 2172))
        {
          CACFDictionary::AddFloat32(&Mutable, @"aa ebu max momentary loudness", *(v14 + 2168));
          v14 = *(this + 7);
        }

        if (*(v14 + 2180))
        {
          CACFDictionary::AddFloat32(&Mutable, @"aa ebu max short-term loudness", *(v14 + 2176));
        }
      }
    }

    if ((*(this + 8) & 4) != 0 && TruePeakAnalyzer::PeakValue((this + 64)) >= *(this + 26))
    {
      v15 = TruePeakAnalyzer::PeakValue((this + 64));
      CACFDictionary::AddFloat32(&Mutable, @"aa itu true peak", v15);
      v16 = TruePeakAnalyzer::SamplePeakValue((this + 64));
      CACFDictionary::AddFloat32(&Mutable, @"aa itu sample peak", v16);
    }

    if (CACFDictionary::Size(__str))
    {
      CACFDictionary::AddDictionary(a2, @"sound check info", *__str);
    }

    if (CACFDictionary::Size(&Mutable))
    {
      CACFDictionary::AddDictionary(a2, @"main loudness parameters", Mutable);
    }

    if (CACFDictionary::Size(&v18))
    {
      CACFDictionary::AddDictionary(a2, @"additional loudness parameters", v18);
    }

    CACFDictionary::~CACFDictionary(&v18);
    CACFDictionary::~CACFDictionary(&Mutable);
    CACFDictionary::~CACFDictionary(__str);
  }

  else
  {
    snprintf(__str, 0x20uLL, "%u", 0);
    CACFDictionary::AddCString(a2, @"aa version", __str);
    if ((*(this + 8) & 2) != 0)
    {
      v4 = *(this + 7);
      if (v4)
      {
        computeItuLoudnessValue(v4);
        computeEbuLoudnessRange(*(this + 7));
        v6 = *(this + 7);
        if (*(v6 + 2148))
        {
          AddToDictionaryVA(a2, @"aa itu loudness", v5, *(v6 + 2144));
          v6 = *(this + 7);
        }

        if (*(v6 + 2156))
        {
          AddToDictionaryVA(a2, @"aa ebu loudness range", v5, *(v6 + 2152));
          v6 = *(this + 7);
        }

        if (*(v6 + 2164))
        {
          AddToDictionaryVA(a2, @"aa ebu top of loudness range", v5, *(v6 + 2160));
          v6 = *(this + 7);
        }

        if (*(v6 + 2172))
        {
          AddToDictionaryVA(a2, @"aa ebu max momentary loudness", v5, *(v6 + 2168));
          v6 = *(this + 7);
        }

        if (*(v6 + 2180))
        {
          AddToDictionaryVA(a2, @"aa ebu max short-term loudness", v5, *(v6 + 2176));
        }
      }
    }

    if ((*(this + 8) & 4) != 0 && TruePeakAnalyzer::PeakValue((this + 64)) >= *(this + 26))
    {
      v7 = TruePeakAnalyzer::PeakValue((this + 64));
      AddToDictionaryVA(a2, @"aa itu true peak", v8, v7);
      v9 = TruePeakAnalyzer::SamplePeakValue((this + 64));
      AddToDictionaryVA(a2, @"aa itu sample peak", v10, v9);
    }
  }

  return 0;
}

void sub_18F68F908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  CACFDictionary::~CACFDictionary(va);
  CACFDictionary::~CACFDictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t AddToDictionaryVA(CACFDictionary *a1, const __CFString *a2, const char *a3, ...)
{
  va_start(va, a3);
  v7 = *MEMORY[0x1E69E9840];
  result = vsnprintf(__str, 0x40uLL, "%6.2f", va);
  if ((result & 0x80000000) == 0)
  {
    return CACFDictionary::AddCString(a1, a2, __str);
  }

  return result;
}

void SoundCheckAnalyzer::~SoundCheckAnalyzer(SoundCheckAnalyzer *this)
{
  SoundCheckAnalyzer::~SoundCheckAnalyzer(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0325938;
  removeGatedLoudness(this + 7);
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    if (v3 != v2)
    {
      *(this + 12) = &v3[(v2 - v3 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v2);
    *(this + 11) = 0;
    *(this + 12) = 0;
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }
}

uint64_t SoundCheckAnalyzer::Start(int32x2_t *this, const AudioStreamBasicDescription *a2, const AudioChannelLayout *a3)
{
  if ((a2->mFormatFlags & 0x23) != 1)
  {
    return 4294967246;
  }

  v5 = *&a2->mSampleRate;
  v6 = *&a2->mBytesPerPacket;
  this[6] = *&a2->mBitsPerChannel;
  *this[2].i8 = v5;
  *this[4].i8 = v6;
  v7 = this[1].i32[0];
  if ((v7 & 2) == 0)
  {
    goto LABEL_7;
  }

  if (a3)
  {
    mChannelLayoutTag = a3->mChannelLayoutTag;
    mChannelsPerFrame = a2->mChannelsPerFrame;
  }

  else
  {
    mChannelsPerFrame = a2->mChannelsPerFrame;
    if (mChannelsPerFrame == 1)
    {
      mChannelLayoutTag = 6553601;
    }

    else
    {
      if (mChannelsPerFrame != 2)
      {
        return 1718449215;
      }

      mChannelLayoutTag = 6619138;
    }
  }

  v5.n128_u64[0] = *&a2->mSampleRate;
  v5.n128_f32[0] = a2->mSampleRate;
  result = initGatedLoudness(mChannelsPerFrame, mChannelLayoutTag, &this[7], v5);
  if (!result)
  {
    v7 = this[1].i32[0];
LABEL_7:
    if ((v7 & 4) == 0)
    {
      return 0;
    }

    v11 = a2->mChannelsPerFrame;
    v12 = this[8];
    this[9] = v12;
    if (v11)
    {
      v13 = *&this[10] - v12;
      if (v11 > v13 >> 7)
      {
        if ((v11 & 0x80000000) == 0)
        {
          v14 = v13 >> 6;
          if (v13 >> 6 <= v11)
          {
            v14 = v11;
          }

          if (v13 >= 0x7FFFFFFFFFFFFF80)
          {
            v15 = 0x1FFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (!(v15 >> 57))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v17 = v11 << 7;
      v16 = (v12 + 128 * v11);
      do
      {
        TruePeak::TruePeak(v12);
        v12 = (v12 + 128);
        v17 -= 128;
      }

      while (v17);
      this[9] = v16;
    }

    else
    {
      v16 = v12;
    }

    v18 = this[8];
    if (*&v16 != *&v18)
    {
      if (((*&v16 - *&v18) >> 7) <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = (*&v16 - *&v18) >> 7;
      }

      v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
      v21 = vdupq_n_s64(v19 - 1);
      v22 = xmmword_18F9016D0;
      v23 = xmmword_18F9016E0;
      v24 = xmmword_18F9016F0;
      v25 = xmmword_18F901700;
      v26 = xmmword_18F901710;
      v27 = xmmword_18F9016A0;
      v28 = xmmword_18F9016B0;
      v29 = xmmword_18F9016C0;
      v30 = vdupq_n_s64(0x10uLL);
      v31 = this[8];
      do
      {
        v32 = vmovn_s64(vcgeq_u64(v21, v29));
        if (vuzp1_s8(vuzp1_s16(v32, *v21.i8), *v21.i8).u8[0])
        {
          v31[112] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v32, *&v21), *&v21).i8[1])
        {
          v31[240] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v28))), *&v21).i8[2])
        {
          v31[368] = 0;
          v31[496] = 0;
        }

        v33 = vmovn_s64(vcgeq_u64(v21, v27));
        if (vuzp1_s8(*&v21, vuzp1_s16(v33, *&v21)).i32[1])
        {
          v31[624] = 0;
        }

        if (vuzp1_s8(*&v21, vuzp1_s16(v33, *&v21)).i8[5])
        {
          v31[752] = 0;
        }

        if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v26)))).i8[6])
        {
          v31[880] = 0;
          v31[1008] = 0;
        }

        v34 = vmovn_s64(vcgeq_u64(v21, v25));
        if (vuzp1_s8(vuzp1_s16(v34, *v21.i8), *v21.i8).u8[0])
        {
          v31[1136] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v34, *&v21), *&v21).i8[1])
        {
          v31[1264] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v24))), *&v21).i8[2])
        {
          v31[1392] = 0;
          v31[1520] = 0;
        }

        v35 = vmovn_s64(vcgeq_u64(v21, v23));
        if (vuzp1_s8(*&v21, vuzp1_s16(v35, *&v21)).i32[1])
        {
          v31[1648] = 0;
        }

        if (vuzp1_s8(*&v21, vuzp1_s16(v35, *&v21)).i8[5])
        {
          v31[1776] = 0;
        }

        if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v22)))).i8[6])
        {
          v31[1904] = 0;
          v31[2032] = 0;
        }

        v27 = vaddq_s64(v27, v30);
        v28 = vaddq_s64(v28, v30);
        v29 = vaddq_s64(v29, v30);
        v26 = vaddq_s64(v26, v30);
        v25 = vaddq_s64(v25, v30);
        v24 = vaddq_s64(v24, v30);
        v23 = vaddq_s64(v23, v30);
        v31 += 2048;
        v22 = vaddq_s64(v22, v30);
        v20 -= 16;
      }

      while (v20);
    }

    if (v11 >= 2)
    {
      std::valarray<float>::resize(&this[11], 0x8000);
      v18 = this[8];
      v16 = this[9];
    }

    if (*&v16 == *&v18)
    {
      return 0;
    }

    v36 = 0;
    v37 = 0;
    do
    {
      TruePeak::Reset((*&v18 + v36));
      ++v37;
      v18 = this[8];
      v38 = this[9];
      v36 += 128;
    }

    while (v37 < (*&v38 - *&v18) >> 7);
    if (*&v38 == *&v18)
    {
      return 0;
    }

    else
    {
      TruePeak::GetStats();
      result = 0;
      this[13] = vrev64_s32(v39);
    }
  }

  return result;
}

void parseInfoStringsChunk(unsigned __int8 *a1, unint64_t a2, CACFDictionary *a3)
{
  if (a2 >= 4 && *a1 && a2 >= 5)
  {
    v5 = 0;
    v6 = &a1[a2];
    v20 = bswap32(*a1);
    v7 = a1 + 4;
    v8 = *MEMORY[0x1E695E480];
    v9 = &a1[a2 - 1];
    v19 = &a1[a2 - 2];
    while (!*v7)
    {
      v10 = 0;
LABEL_14:
      v12 = CFStringCreateWithBytes(v8, v7, v10, 0x8000100u, 0);
      if (v12)
      {
        v13 = &v7[v10 + 1];
        if (v13 >= v6)
        {
          return;
        }

        v14 = v12;
        if (*v13)
        {
          v15 = 0;
          while (&v19[-v10] - v7 != v15)
          {
            if (!v7[v10 + 2 + v15++])
            {
              if (v15 < v6 - v13)
              {
                goto LABEL_23;
              }

              return;
            }
          }

          return;
        }

        v15 = 0;
LABEL_23:
        v17 = CFStringCreateWithBytes(v8, &v7[v10 + 1], v15, 0x8000100u, 0);
        if (v17)
        {
          v18 = v17;
          if (CFStringGetLength(v17) && CFStringGetLength(v14))
          {
            CACFDictionary::AddString(a3, v14, v18);
          }

          v13 += v15 + 1;
          CFRelease(v18);
        }

        CFRelease(v14);
        v7 = v13;
      }

      if (++v5 >= v20 || v7 >= v6)
      {
        return;
      }
    }

    v10 = 0;
    while (v9 - v7 != v10)
    {
      if (!v7[++v10])
      {
        if (v10 < v6 - v7)
        {
          goto LABEL_14;
        }

        return;
      }
    }
  }
}

uint64_t CAFtoAF_FormatListItem(uint64_t result, AudioFormatListItem *a2)
{
  *&a2->mASBD.mBitsPerChannel = 0;
  *&a2->mASBD.mSampleRate = 0u;
  *&a2->mASBD.mBytesPerPacket = 0u;
  a2->mASBD.mSampleRate = *result;
  v2 = *(result + 8);
  a2->mASBD.mFormatID = v2;
  v3 = *(result + 16);
  v4 = *(result + 20);
  a2->mASBD.mBytesPerPacket = v3;
  a2->mASBD.mFramesPerPacket = v4;
  v5 = *(result + 24);
  v6 = *(result + 28);
  a2->mASBD.mChannelsPerFrame = v5;
  a2->mASBD.mBitsPerChannel = v6;
  if (v4 == 1)
  {
    a2->mASBD.mBytesPerFrame = v3;
  }

  v7 = *(result + 12);
  if (v2 == 1819304813)
  {
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = 4;
    }

    v9 = (v8 | *(result + 12) & 2) ^ 2;
    if ((v6 & 7) != 0 || (v6 >> 3) * v5 != v3)
    {
      v10 = v9 | 0x10;
    }

    else
    {
      v10 = v9 | 8;
    }

    a2->mASBD.mFormatFlags = v10;
  }

  else
  {
    a2->mASBD.mFormatFlags = v7;
  }

  a2->mChannelLayoutTag = *(result + 32);
  return result;
}

BOOL CAFRegionChunk_BtoN(CAFRegionChunk *a1, unint64_t a2)
{
  mNumberRegions = a1->mNumberRegions;
  v3 = bswap32(mNumberRegions);
  a1->mSMPTE_TimeType = bswap32(a1->mSMPTE_TimeType);
  a1->mNumberRegions = v3;
  if (!mNumberRegions)
  {
    return 0;
  }

  v4 = 0;
  mRegions = a1->mRegions;
  while (1)
  {
    v6 = mRegions - a1 + 40 > a2;
    if (mRegions - a1 + 40 > a2)
    {
      break;
    }

    v7 = a2 - (mRegions - a1);
    v8 = v7 - 12;
    if (v7 < 0xC)
    {
      break;
    }

    *mRegions = vrev32_s8(*mRegions);
    v9 = mRegions[1].u32[0];
    v10 = bswap32(v9);
    mRegions[1].i32[0] = v10;
    if (v10 > (v8 / 0x1C))
    {
      break;
    }

    if (v9)
    {
      v11 = mRegions + 2;
      v12 = v10;
      do
      {
        v11[-1].i32[1] = bswap32(v11[-1].u32[1]);
        *v11 = bswap64(*v11);
        v11[1].i32[0] = bswap32(v11[1].u32[0]);
        v11[2] = vrev32_s8(v11[2]);
        v11 = (v11 + 28);
        --v12;
      }

      while (v12);
    }

    mRegions = (mRegions + 28 * v10 + 12);
    if (++v4 == v3)
    {
      return 0;
    }
  }

  a1->mNumberRegions = v4;
  return v6;
}

void std::vector<CAFStringsWrapper::CAFStringWrapper>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 4;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<CAFStringsWrapper::CAFStringWrapper>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = (v4 - *a1) >> 5;
    if ((v7 + 1) >> 59)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - *a1;
    v9 = v8 >> 4;
    if (v8 >> 4 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v26 = a1;
    if (v10)
    {
      if (!(v10 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 32 * v7;
    v23 = 0;
    v24 = 32 * v7;
    v25 = (32 * v7);
    *(32 * v7) = *a2;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((32 * v7 + 8), *(a2 + 8), *(a2 + 16));
      v12 = v24;
      v13 = v25;
    }

    else
    {
      *(32 * v7 + 8) = *(a2 + 8);
      *(32 * v7 + 0x18) = *(a2 + 24);
      v13 = 32 * v7;
    }

    *&v25 = v13 + 32;
    v15 = *a1;
    v14 = a1[1];
    v16 = v12 + *a1 - v14;
    if (*a1 != v14)
    {
      v17 = *a1;
      v18 = v16;
      do
      {
        *v18 = *v17;
        v19 = *(v17 + 8);
        *(v18 + 24) = *(v17 + 24);
        *(v18 + 8) = v19;
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
        *(v17 + 8) = 0;
        v17 += 32;
        v18 += 32;
      }

      while (v17 != v14);
      do
      {
        if (*(v15 + 31) < 0)
        {
          operator delete(*(v15 + 8));
        }

        v15 += 32;
      }

      while (v15 != v14);
    }

    v20 = *a1;
    *a1 = v16;
    v21 = a1[2];
    v22 = v25;
    *(a1 + 1) = v25;
    *&v25 = v20;
    *(&v25 + 1) = v21;
    v23 = v20;
    v24 = v20;
    std::__split_buffer<CAFStringsWrapper::CAFStringWrapper>::~__split_buffer(&v23);
    v11 = v22;
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 8);
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v6 = *(a2 + 8);
      *(v4 + 24) = *(a2 + 24);
      *&v5->__r_.__value_.__l.__data_ = v6;
    }

    v11 = v4 + 32;
    a1[1] = v4 + 32;
  }

  a1[1] = v11;
}

void sub_18F6904AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<CAFStringsWrapper::CAFStringWrapper>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<CAFStringsWrapper::CAFStringWrapper>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void CADeprecated::CAAutoFree<CAFStrings>::allocBytes(void **a1, size_t size)
{
  v4 = *a1;
  if (v4)
  {
    free(v4);
    *a1 = 0;
  }

  v5 = malloc_type_malloc(size, 0xB2C9138AuLL);
  v6 = v5;
  if (size && !v5)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v5, size);
  *a1 = v6;
}

char *CAFStringsWrapper::Get(CAFStringsWrapper *this, uint64_t a2, int a3)
{
  if (((a2 - this) & 0x1FFFFFFFE0) == 0)
  {
    return 0;
  }

  v3 = 0;
  v4 = this;
  while (1)
  {
    v5 = *v4;
    v4 = (v4 + 32);
    if (v5 == a3)
    {
      break;
    }

    if (((a2 - this) >> 5) == ++v3)
    {
      return 0;
    }
  }

  v7 = this + 32 * v3;
  result = v7 + 8;
  if (v7[31] < 0)
  {
    return *result;
  }

  return result;
}

void CAFStringsWrapper::Put(CAFStringsWrapper *this, int a2, std::string::value_type *__s)
{
  memset(&__p, 0, sizeof(__p));
  v11 = a2;
  std::string::__assign_external(&__p, __s);
  v5 = *(this + 1) - *this;
  if ((v5 & 0x1FFFFFFFE0) != 0)
  {
    v6 = 0;
    v7 = (v5 >> 5);
    v8 = *this;
    while (1)
    {
      v9 = *v8;
      v8 += 8;
      if (v9 == a2)
      {
        break;
      }

      if (v7 == ++v6)
      {
        goto LABEL_5;
      }
    }

    v10 = *this + 32 * v6;
    *v10 = v11;
    std::string::operator=((v10 + 8), &__p);
  }

  else
  {
LABEL_5:
    std::vector<CAFStringsWrapper::CAFStringWrapper>::push_back[abi:ne200100](this, &v11);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_18F6906CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int32x4_t *UpmixMonoToStereoInterleaved32_ARM(int32x4_t *result, __int32 *a2, unsigned int a3)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v3 = a2 + 8;
    do
    {
      v4 = result->i32[0];
      result = (result + 4);
      v5 = (a2 + 2);
      *a2 = v4;
      a2[1] = v4;
      v6 = a3 - 1;
      if ((v3 & 0xF) == 0)
      {
        break;
      }

      v3 += 8;
      a2 += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    v5 = a2;
    v6 = a3;
  }

  if (v6 >= 4)
  {
    v7 = v6 >> 2;
    do
    {
      v8 = *result++;
      *v5 = vzip1q_s32(v8, v8);
      v5[1] = vzip2q_s32(v8, v8);
      v5 += 2;
      --v7;
    }

    while (v7);
  }

  for (i = v6 & 3; i; --i)
  {
    v10 = result->i32[0];
    result = (result + 4);
    v5->i32[0] = v10;
    v5->i32[1] = v10;
    v5 = (v5 + 8);
  }

  return result;
}

int16x8_t *UpmixMonoToStereoInterleaved16_ARM(int16x8_t *result, __int16 *a2, unsigned int a3)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v3 = a2 + 4;
    do
    {
      v4 = result->i16[0];
      result = (result + 2);
      *a2 = v4;
      v5 = (a2 + 2);
      a2[1] = v4;
      v6 = a3 - 1;
      if ((v3 & 0xF) == 0)
      {
        break;
      }

      v3 += 4;
      a2 += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    v5 = a2;
    v6 = a3;
  }

  if (v6 >= 8)
  {
    v7 = v6 >> 3;
    do
    {
      v8 = *result++;
      *v5 = vzip1q_s16(v8, v8);
      v5[1] = vzip2q_s16(v8, v8);
      v5 += 2;
      --v7;
    }

    while (v7);
  }

  for (i = v6 & 7; i; --i)
  {
    v10 = result->i16[0];
    result = (result + 2);
    v5->i16[0] = v10;
    v5->i16[1] = v10;
    v5 = (v5 + 4);
  }

  return result;
}

__int16 *DownmixStereoInterleavedInt16ToMono_ARM(__int16 *result, int16x8_t *a2, unsigned int a3)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v3 = a2 + 2;
    do
    {
      v4 = result + 2;
      v5 = 23170 * (result[1] + *result);
      v6 = v5 >> 15;
      v7 = (v5 >> 31) ^ (v5 >> 15);
      if (v6 > 0)
      {
        v8 = 0x7FFF;
      }

      else
      {
        v8 = 0x8000;
      }

      if (v7 >= 0x8000)
      {
        v9 = v8;
      }

      else
      {
        v9 = v6;
      }

      a2->i16[0] = v9;
      a2 = (a2 + 2);
      v10 = a3 - 1;
      if ((v3 & 0xF) == 0)
      {
        break;
      }

      v3 += 2;
      result += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    v10 = a3;
    v4 = result;
  }

  if (v10 >= 8)
  {
    v11 = v10 >> 3;
    v12 = vdupq_n_s32(0x5A82u);
    do
    {
      v13 = *v4;
      v14 = *(v4 + 1);
      v4 += 16;
      *a2++ = vqrshrn_high_n_s32(vqrshrn_n_s32(vmulq_s32(vpaddlq_s16(v13), v12), 0xFuLL), vmulq_s32(vpaddlq_s16(v14), v12), 0xFuLL);
      --v11;
    }

    while (v11);
  }

  for (i = v10 & 7; i; --i)
  {
    v16 = 23170 * (v4[1] + *v4);
    v17 = v16 >> 15;
    v18 = (v16 >> 31) ^ (v16 >> 15);
    if (v17 > 0)
    {
      v19 = 0x7FFF;
    }

    else
    {
      v19 = 0x8000;
    }

    if (v18 >= 0x8000)
    {
      v20 = v19;
    }

    else
    {
      v20 = v17;
    }

    a2->i16[0] = v20;
    a2 = (a2 + 2);
    v4 += 2;
  }

  return result;
}

int16x8_t *NativeInt16ToNativeInt32_ARM(int16x8_t *result, uint32x4_t *a2, unsigned int a3, char a4)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v4 = a2 + 4;
    do
    {
      v5 = result->i16[0];
      result = (result + 2);
      a2->i32[0] = v5 << a4;
      a2 = (a2 + 4);
      v6 = a3 - 1;
      if ((v4 & 0xF) == 0)
      {
        break;
      }

      v4 += 4;
      --a3;
    }

    while (a3);
  }

  else
  {
    v6 = a3;
  }

  if (v6 >= 8)
  {
    v7 = vdupq_n_s32(a4);
    v8 = v6 >> 3;
    do
    {
      v9 = *result++;
      *a2 = vshlq_u32(vmovl_s16(*v9.i8), v7);
      a2[1] = vshlq_u32(vmovl_high_s16(v9), v7);
      a2 += 2;
      --v8;
    }

    while (v8);
  }

  for (i = v6 & 7; i; --i)
  {
    v11 = result->i16[0];
    result = (result + 2);
    a2->i32[0] = v11 << a4;
    a2 = (a2 + 4);
  }

  return result;
}

int32x4_t *NativeInt32ToNativeInt16_ARM(int32x4_t *result, int16x8_t *a2, unsigned int a3, int a4)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v4 = a2 + 2;
    do
    {
      v5 = result->i32[0];
      result = (result + 4);
      v6 = (v5 >> (a4 - 1)) + 1;
      v7 = v6 >> 1;
      v8 = (v6 >> 31) ^ (v6 >> 1);
      if (v7 > 0)
      {
        v9 = 0x7FFF;
      }

      else
      {
        v9 = 0x8000;
      }

      if (v8 >= 0x8000)
      {
        v10 = v9;
      }

      else
      {
        v10 = v7;
      }

      a2->i16[0] = v10;
      a2 = (a2 + 2);
      v11 = a3 - 1;
      if ((v4 & 0xF) == 0)
      {
        break;
      }

      v4 += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    v11 = a3;
  }

  if (v11 >= 0x10)
  {
    v12 = vdupq_n_s32(-a4);
    v13 = v11 >> 4;
    do
    {
      v14 = vqmovn_high_s32(vqmovn_s32(vqrshlq_s32(result[2], v12)), vqrshlq_s32(result[3], v12));
      *a2 = vqmovn_high_s32(vqmovn_s32(vqrshlq_s32(*result, v12)), vqrshlq_s32(result[1], v12));
      a2[1] = v14;
      a2 += 2;
      result += 4;
      --v13;
    }

    while (v13);
  }

  for (i = v11 & 0xF; i; --i)
  {
    v16 = result->i32[0];
    result = (result + 4);
    v17 = (v16 >> (a4 - 1)) + 1;
    v18 = v17 >> 1;
    v19 = (v17 >> 31) ^ (v17 >> 1);
    if (v18 > 0)
    {
      v20 = 0x7FFF;
    }

    else
    {
      v20 = 0x8000;
    }

    if (v19 >= 0x8000)
    {
      v21 = v20;
    }

    else
    {
      v21 = v18;
    }

    a2->i16[0] = v21;
    a2 = (a2 + 2);
  }

  return result;
}

int32x4_t *NativeInt32ToNativeInt24_ARM(int32x4_t *result, uint64_t a2, unsigned int a3, int a4)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v4 = a2 + 3;
    do
    {
      v5 = result->i32[0];
      result = (result + 4);
      v6 = (v5 >> (a4 - 1)) + 1;
      v7 = v6 >> 1;
      v8 = (v6 >> 31) ^ (v6 >> 1);
      if (v7 > 0)
      {
        v9 = 0x7FFFFF;
      }

      else
      {
        v9 = -8388608;
      }

      if (v8 >= 0x800000)
      {
        v10 = v9;
      }

      else
      {
        v10 = v7;
      }

      *a2 = v10;
      v11 = HIWORD(v10);
      v12 = a2 + 3;
      *(a2 + 2) = v11;
      v13 = a3 - 1;
      if ((v4 & 0xF) == 0)
      {
        break;
      }

      v4 += 3;
      a2 += 3;
      --a3;
    }

    while (a3);
  }

  else
  {
    v13 = a3;
    v12 = a2;
  }

  if (v13 >= 8)
  {
    v14 = vdupq_n_s32(-a4);
    v15 = v13 >> 3;
    do
    {
      v16 = *result;
      v17 = result[1];
      result += 2;
      v18 = vqrshlq_s32(v16, v14);
      v19 = vqrshlq_s32(v17, v14);
      *v12 = ((v18.i32[1] & 0xFFFFFF) << 24) | (v18.i32[2] << 48) | v18.i32[0] & 0xFFFFFF;
      *(v12 + 8) = v18.u8[10] | ((((v19.i32[0] & 0xFFFFFF) << 24) | (v19.u32[1] << 48) | v18.i32[3] & 0xFFFFFF) << 8);
      *(v12 + 16) = (v19.u32[3] << 40) | ((v19.i32[2] & 0xFFFFFF) << 16) | (v19.i32[1] >> 8);
      v12 += 24;
      --v15;
    }

    while (v15);
  }

  for (i = v13 & 7; i; --i)
  {
    v21 = result->i32[0];
    result = (result + 4);
    v22 = (v21 >> (a4 - 1)) + 1;
    v23 = v22 >> 1;
    v24 = (v22 >> 31) ^ (v22 >> 1);
    if (v23 > 0)
    {
      v25 = 0x7FFFFF;
    }

    else
    {
      v25 = -8388608;
    }

    if (v24 >= 0x800000)
    {
      v26 = v25;
    }

    else
    {
      v26 = v23;
    }

    *v12 = v26;
    *(v12 + 2) = BYTE2(v26);
    v12 += 3;
  }

  return result;
}

unsigned __int8 *NativeInt24ToNativeInt32_ARM(unsigned __int8 *result, uint64_t a2, unsigned int a3, char a4)
{
  v4 = 8 - a4;
  if ((result & 7) != 0 && a3)
  {
    v5 = result + 3;
    do
    {
      v6 = (*result << 8) | (result[1] << 16) | (result[2] << 24);
      result += 3;
      *a2 = v6 >> v4;
      a2 += 4;
      v7 = a3 - 1;
      if ((v5 & 7) == 0)
      {
        break;
      }

      v5 += 3;
      --a3;
    }

    while (a3);
  }

  else
  {
    v7 = a3;
  }

  if (v7 >= 8)
  {
    v8 = v7 >> 3;
    v9 = vdup_n_s32(a4);
    do
    {
      v10 = *result;
      v11 = *(result + 1);
      v12 = *(result + 2);
      result += 24;
      *a2 = vshl_u32(vmovn_s64(vshrq_n_s64(vshlq_u64(vdupq_n_s64(v10), xmmword_18F901720), 0x28uLL)), v9);
      *(a2 + 8) = ((v11 << 16) | HIWORD(v10)) << a4;
      *(a2 + 12) = vshl_u32(vmovn_s64(vshrq_n_s64(vshlq_u64(vdupq_n_s64(v11), xmmword_18F901730), 0x28uLL)), v9);
      *(a2 + 20) = ((v12 << 8) | HIBYTE(v11)) << a4;
      *(a2 + 24) = (v12 >> 8) >> 8 << a4;
      *(a2 + 28) = (v12 >> 40) << a4;
      a2 += 32;
      --v8;
    }

    while (v8);
  }

  for (i = v7 & 7; i; --i)
  {
    v14 = (*result << 8) | (result[1] << 16) | (result[2] << 24);
    result += 3;
    *a2 = v14 >> v4;
    a2 += 4;
  }

  return result;
}

int32x4_t *NativeInt32ToNativeInt32_ARM(int32x4_t *result, int32x4_t *a2, unsigned int a3, signed int a4)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v4 = a2 + 4;
    do
    {
      v5 = result->i32[0];
      result = (result + 4);
      v6 = v5 >> -a4;
      v7 = v5 << a4;
      if (a4 < 0)
      {
        v7 = v6;
      }

      a2->i32[0] = v7;
      a2 = (a2 + 4);
      v8 = a3 - 1;
      if ((v4 & 0xF) == 0)
      {
        break;
      }

      v4 += 4;
      --a3;
    }

    while (a3);
  }

  else
  {
    v8 = a3;
  }

  if (v8 >= 8)
  {
    v9 = vdupq_n_s32(a4);
    v10 = v8 >> 3;
    do
    {
      v11 = *result;
      v12 = result[1];
      result += 2;
      *a2 = vshlq_s32(v11, v9);
      a2[1] = vshlq_s32(v12, v9);
      a2 += 2;
      --v10;
    }

    while (v10);
  }

  for (i = v8 & 7; i; --i)
  {
    v14 = result->i32[0];
    result = (result + 4);
    v15 = v14 >> -a4;
    v16 = v14 << a4;
    if (a4 < 0)
    {
      v16 = v15;
    }

    a2->i32[0] = v16;
    a2 = (a2 + 4);
  }

  return result;
}

int32x4_t *Native824FixedToLowAlignedInt32_ARM(int32x4_t *result, int8x16_t *a2, unsigned int a3, int a4)
{
  v4 = a4 - 25;
  v5 = ~(-1 << a4);
  v6 = 32 - a4;
  if (a3 >= 4)
  {
    v7 = vdupq_n_s32(v4);
    v8 = vdupq_n_s32(v5);
    v9 = vdupq_n_s32(v6);
    v10 = a3 >> 2;
    v11 = vnegq_s32(v9);
    do
    {
      v12 = *result++;
      *a2++ = vandq_s8(vshlq_s32(vqshlq_s32(vqrshlq_s32(v12, v7), v9), v11), v8);
      --v10;
    }

    while (v10);
  }

  v13 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    do
    {
      v14 = result->i32[0];
      result = (result + 4);
      a2->i32[0] = (vqshls_s32(vqrshls_s32(v14, v4), v6) >> v6) & v5;
      a2 = (a2 + 4);
      --v13;
    }

    while (v13);
  }

  return result;
}

int16x8_t *NativeLowAlignedInt32ToInt16_ARM(int16x8_t *result, int16x8_t *a2, unsigned int a3)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v3 = a2 + 2;
    do
    {
      v4 = result->i32[0];
      result = (result + 4);
      a2->i16[0] = v4;
      a2 = (a2 + 2);
      v5 = a3 - 1;
      if ((v3 & 0xF) == 0)
      {
        break;
      }

      v3 += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    v5 = a3;
  }

  if (v5 >= 8)
  {
    v6 = v5 >> 3;
    do
    {
      v7 = *result;
      v8 = result[1];
      result += 2;
      *a2++ = vuzp1q_s16(v7, v8);
      --v6;
    }

    while (v6);
  }

  for (i = v5 & 7; i; --i)
  {
    v10 = result->i32[0];
    result = (result + 4);
    a2->i16[0] = v10;
    a2 = (a2 + 2);
  }

  return result;
}

_OWORD *NativeInt16ToLowAlignedInt32_ARM(_OWORD *result, uint32x4_t *a2, unsigned int a3)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v3 = a2 + 4;
    do
    {
      v4 = *result;
      result = (result + 2);
      a2->i32[0] = v4;
      a2 = (a2 + 4);
      v5 = a3 - 1;
      if ((v3 & 0xF) == 0)
      {
        break;
      }

      v3 += 4;
      --a3;
    }

    while (a3);
  }

  else
  {
    v5 = a3;
  }

  if (v5 >= 0x10)
  {
    v6 = v5 >> 4;
    do
    {
      v7 = *result;
      v8 = *(result + 1);
      result += 2;
      *a2 = vmovl_u16(*v7.i8);
      a2[1] = vmovl_high_u16(v7);
      a2[2] = vmovl_u16(*v8.i8);
      a2[3] = vmovl_high_u16(v8);
      a2 += 4;
      --v6;
    }

    while (v6);
  }

  for (i = v5 & 0xF; i; --i)
  {
    v10 = *result;
    result = (result + 2);
    a2->i32[0] = v10;
    a2 = (a2 + 4);
  }

  return result;
}

const __int16 *StereoDeinterleaveNativeInt16ToScaledFloat32_ARM(const __int16 *result, float32x4_t **a2, unsigned int a3, float a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (((v5 ^ *a2) & 0xF) != 0 || (*a2 & 0xF) == 0 || a3 == 0)
  {
    v8 = a3;
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = result[v12 / 2 + 1] * a4;
      v4->f32[v12 / 4] = result[v12 / 2] * a4;
      v5->f32[v12 / 4] = v13;
      v8 = a3 - 1;
      v14 = v4 + 4 + v12;
      v12 += 4;
      if ((v14 & 0xF) == 0)
      {
        break;
      }

      --a3;
    }

    while (a3);
    v5 = (v5 + v12);
    result = (result + v12);
    v4 = (v4 + v12);
    *a2 = v4;
    a2[1] = v5;
  }

  if (v8 >= 8)
  {
    v9 = v8 >> 3;
    do
    {
      v15 = vld2q_s16(result);
      result += 16;
      *v4 = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v15.val[0].i8)), a4);
      (*a2)[1] = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v15.val[0])), a4);
      *a2[1] = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v15.val[1].i8)), a4);
      a2[1][1] = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v15.val[1])), a4);
      v4 = *a2 + 2;
      v5 = a2[1] + 2;
      *a2 = v4;
      a2[1] = v5;
      --v9;
    }

    while (v9);
  }

  v10 = v8 & 7;
  if (v10)
  {
    do
    {
      v11 = result[1] * a4;
      v4->f32[0] = *result * a4;
      v4 = (v4 + 4);
      v5->f32[0] = v11;
      v5 = (v5 + 4);
      result += 2;
      --v10;
    }

    while (v10);
    *a2 = v4;
    a2[1] = v5;
  }

  return result;
}

float32_t StereoDeinterleaveInt824ToFloat32_ARM(int *a1, float32x4_t *a2, float32x4_t *a3, unsigned int a4)
{
  if (((a3 ^ a2) & 0xF) != 0 || (a2 & 0xF) == 0 || a4 == 0)
  {
    v6 = a4;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = a1 + 2;
      v9.f32[0] = vcvts_n_f32_s32(*a1, 0x18uLL);
      v15 = vcvts_n_f32_s32(a1[1], 0x18uLL);
      a2->i32[v13] = v9.i32[0];
      a3->f32[v13] = v15;
      v6 = a4 - 1;
      v16 = a2 + 4 + v13 * 4;
      ++v13;
      if ((v16 & 0xF) == 0)
      {
        break;
      }

      a1 += 2;
      --a4;
    }

    while (a4);
    a2 = (a2 + v13 * 4);
    a3 = (a3 + v13 * 4);
    a1 = v14;
  }

  if (v6 >= 4)
  {
    v7 = v6 >> 2;
    do
    {
      v18 = vld2q_f32(a1);
      a1 += 8;
      v8 = vcvtq_n_f32_s32(v18.val[0], 0x18uLL);
      v9 = vcvtq_n_f32_s32(v18.val[1], 0x18uLL);
      *a2++ = v8;
      *a3++ = v9;
      --v7;
    }

    while (v7);
  }

  for (i = v6 & 3; i; --i)
  {
    v11 = *a1;
    v12 = a1[1];
    a1 += 2;
    v9.f32[0] = vcvts_n_f32_s32(v11, 0x18uLL);
    a2->i32[0] = v9.i32[0];
    a2 = (a2 + 4);
    a3->f32[0] = vcvts_n_f32_s32(v12, 0x18uLL);
    a3 = (a3 + 4);
  }

  return v9.f32[0];
}

float32_t StereoInterleaveFloat32ToInt824_ARM(float32x4_t *a1, float32x4_t *a2, uint64_t a3, unsigned int a4)
{
  if ((a3 & 0xF) != 0 && a4)
  {
    v4 = 0;
    v5 = a3 + 8;
    do
    {
      v6.i32[0] = vcvts_n_s32_f32(a2->f32[v4], 0x18uLL);
      v7 = a3 + 8;
      *a3 = vcvts_n_s32_f32(a1->f32[v4], 0x18uLL);
      *(a3 + 4) = v6.i32[0];
      v8 = a4 - 1;
      ++v4;
      if ((v5 & 0xF) == 0)
      {
        break;
      }

      v5 += 8;
      a3 += 8;
      --a4;
    }

    while (a4);
    a1 = (a1 + v4 * 4);
    a2 = (a2 + v4 * 4);
    a3 = v7;
  }

  else
  {
    v8 = a4;
  }

  if (v8 >= 4)
  {
    v9 = v8 >> 2;
    do
    {
      v10 = *a1++;
      v6 = v10;
      v11 = *a2++;
      v18.val[0] = vcvtq_n_s32_f32(v6, 0x18uLL);
      v18.val[1] = vcvtq_n_s32_f32(v11, 0x18uLL);
      vst2q_f32(a3, v18);
      a3 += 32;
      --v9;
    }

    while (v9);
  }

  for (i = v8 & 3; i; --i)
  {
    v13 = a1->i32[0];
    a1 = (a1 + 4);
    v14 = *&v13;
    v15 = a2->f32[0];
    a2 = (a2 + 4);
    v16 = vcvts_n_s32_f32(v14, 0x18uLL);
    v6.i32[0] = vcvts_n_s32_f32(v15, 0x18uLL);
    *a3 = v16;
    *(a3 + 4) = v6.i32[0];
    a3 += 8;
  }

  return v6.f32[0];
}

_OWORD *StereoInterleaveInt824ToInt16_ARM(_OWORD *result, _OWORD *a2, __int16 *a3, unsigned int a4)
{
  if ((a3 & 0xF) != 0 && a4)
  {
    v4 = 0;
    do
    {
      v5 = &a3[v4 / 2];
      v6 = *(result + v4);
      v7 = v6 >> 9;
      v8 = (v6 >> 31) ^ (v6 >> 9);
      if (v7 > 0)
      {
        v9 = 0x7FFF;
      }

      else
      {
        v9 = 0x8000;
      }

      if (v8 >= 0x8000)
      {
        v10 = v9;
      }

      else
      {
        v10 = v7;
      }

      *v5 = v10;
      v11 = *(a2 + v4);
      v12 = v11 >> 9;
      v13 = (v11 >> 31) ^ (v11 >> 9);
      if (v12 > 0)
      {
        v14 = 0x7FFF;
      }

      else
      {
        v14 = 0x8000;
      }

      if (v13 >= 0x8000)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      v5[1] = v15;
      v16 = a4 - 1;
      v17 = a3 + 4 + v4;
      v4 += 4;
      if ((v17 & 0xF) == 0)
      {
        break;
      }

      --a4;
    }

    while (a4);
    result = (result + v4);
    a2 = (a2 + v4);
    a3 = (a3 + v4);
  }

  else
  {
    v16 = a4;
  }

  if (v16 >= 8)
  {
    v18 = v16 >> 3;
    do
    {
      v19 = *result;
      v20 = *(result + 1);
      result += 2;
      v21 = *a2;
      v22 = *(a2 + 1);
      a2 += 2;
      v33.val[0] = vqshrn_high_n_s32(vqshrn_n_s32(v19, 9uLL), v20, 9uLL);
      v33.val[1] = vqshrn_high_n_s32(vqshrn_n_s32(v21, 9uLL), v22, 9uLL);
      vst2q_s16(a3, v33);
      a3 += 16;
      --v18;
    }

    while (v18);
  }

  for (i = v16 & 7; i; --i)
  {
    v24 = *result;
    result = (result + 4);
    v25 = v24 >> 9;
    v26 = (v24 >> 31) ^ (v24 >> 9);
    if (v24 >> 9 > 0)
    {
      v27 = 0x7FFF;
    }

    else
    {
      v27 = 0x8000;
    }

    if (v26 >= 0x8000)
    {
      v28 = v27;
    }

    else
    {
      v28 = v25;
    }

    v29 = *a2;
    a2 = (a2 + 4);
    *a3 = v28;
    v30 = v29 >> 9;
    v31 = (v29 >> 31) ^ (v29 >> 9);
    if (v29 >> 9 > 0)
    {
      v32 = 0x7FFF;
    }

    else
    {
      v32 = 0x8000;
    }

    if (v31 >= 0x8000)
    {
      LOWORD(v30) = v32;
    }

    a3[1] = v30;
    a3 += 2;
  }

  return result;
}

const __int16 *StereoDeinterleaveInt16ToInt824_ARM(const __int16 *result, int32x4_t *a2, int32x4_t *a3, unsigned int a4)
{
  if ((a2 & 0xF) != 0)
  {
    v4 = 0;
    do
    {
      if (((a3 + v4) & 0xF) == 0 || a4 == 0)
      {
        break;
      }

      v6 = result[v4 / 2 + 1];
      a2->i32[v4 / 4] = result[v4 / 2] << 9;
      a3->i32[v4 / 4] = v6 << 9;
      --a4;
      LOBYTE(v6) = a2 + 4 + v4;
      v4 += 4;
    }

    while ((v6 & 0xF) != 0);
    result = (result + v4);
    a2 = (a2 + v4);
    a3 = (a3 + v4);
  }

  if (a4 >= 8)
  {
    v7 = a4 >> 3;
    do
    {
      v9 = vld2q_s16(result);
      result += 16;
      *a2 = vshll_n_s16(*v9.val[0].i8, 9uLL);
      a2[1] = vshll_high_n_s16(v9.val[0], 9uLL);
      a2 += 2;
      *a3 = vshll_n_s16(*v9.val[1].i8, 9uLL);
      a3[1] = vshll_high_n_s16(v9.val[1], 9uLL);
      a3 += 2;
      --v7;
    }

    while (v7);
  }

  v8 = a4 & 7;
  if ((a4 & 7) != 0)
  {
    do
    {
      a2->i32[0] = *result << 9;
      a2 = (a2 + 4);
      a3->i32[0] = result[1] << 9;
      a3 = (a3 + 4);
      result += 2;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint32x4_t *NativeLowAlignedInt32To824Fixed_ARM(uint32x4_t *result, int32x4_t *a2, unsigned int a3, int a4)
{
  v4 = 32 - a4;
  v5 = a3 - 12;
  if (a3 >= 0xC)
  {
    v6 = vdupq_n_s32(v4);
    v7 = result + 3;
    a3 &= 3u;
    v8 = vshrq_n_s32(vshlq_u32(*result, v6), 7uLL);
    v9 = vshlq_u32(result[1], v6);
    v10 = result[2];
    if (v5 >= 4)
    {
      v12 = v5 >> 2;
      do
      {
        *a2++ = v8;
        v13 = *v7++;
        v11 = v13;
        v8 = vshrq_n_s32(v9, 7uLL);
        v9 = vshlq_u32(v10, v6);
        v10 = v13;
        --v12;
      }

      while (v12);
    }

    else
    {
      v11 = result[2];
    }

    *a2 = v8;
    a2[1] = vshrq_n_s32(v9, 7uLL);
    a2[2] = vshrq_n_s32(vshlq_u32(v11, v6), 7uLL);
    a2 += 3;
    result = v7;
  }

  for (; a3; --a3)
  {
    v14 = result->i32[0];
    result = (result + 4);
    a2->i32[0] = v14 << v4 >> 7;
    a2 = (a2 + 4);
  }

  return result;
}

int32x4_t *NativeInt32ToFloat32Scaled_ARM(int32x4_t *result, float32x4_t *a2, unsigned int a3, float a4)
{
  if (a3 >= 16)
  {
    v4 = vcvtq_f32_s32(result[1]);
    v5 = vmulq_n_f32(vcvtq_f32_s32(*result), a4);
    v6 = result[2];
    result += 3;
    v7 = a3 - 12;
    do
    {
      v8 = a2;
      *a2++ = v5;
      v5 = vmulq_n_f32(v4, a4);
      v4 = vcvtq_f32_s32(v6);
      v9 = *result++;
      v6 = v9;
      v7 -= 4;
    }

    while (v7 > 3);
    v10 = a3 & 3;
    *a2 = v5;
    a2[1] = vmulq_n_f32(v4, a4);
    a2[2] = vmulq_n_f32(vcvtq_f32_s32(v6), a4);
    a2 = v8 + 4;
    if ((a3 & 3) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (a3 < 4)
  {
    v10 = a3;
    if (!a3)
    {
      return result;
    }

    goto LABEL_9;
  }

  do
  {
    v11 = *result++;
    *a2++ = vmulq_n_f32(vcvtq_f32_s32(v11), a4);
    v10 = a3 - 4;
    v12 = a3 > 7;
    a3 -= 4;
  }

  while (v12);
  for (; v10; --v10)
  {
LABEL_9:
    v13 = result->i32[0];
    result = (result + 4);
    a2->f32[0] = llroundf(v13) * a4;
    a2 = (a2 + 4);
  }

  return result;
}

float32x4_t *Float32ToNativeInt32Scaled_ARM(float32x4_t *result, int32x4_t *a2, unsigned int a3, float a4)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v4 = a2 + 4;
    do
    {
      v5 = result->f32[0];
      result = (result + 4);
      a2->i32[0] = llroundf(v5 * a4);
      a2 = (a2 + 4);
      v6 = a3 - 1;
      if ((v4 & 0xF) == 0)
      {
        break;
      }

      v4 += 4;
      --a3;
    }

    while (a3);
  }

  else
  {
    v6 = a3;
  }

  if (v6 >= 8)
  {
    v7 = v6 >> 3;
    do
    {
      v8 = *result;
      v9 = result[1];
      result += 2;
      *a2 = vcvtaq_s32_f32(vmulq_n_f32(v8, a4));
      a2[1] = vcvtaq_s32_f32(vmulq_n_f32(v9, a4));
      a2 += 2;
      --v7;
    }

    while (v7);
  }

  for (i = v6 & 7; i; --i)
  {
    v11 = result->f32[0];
    result = (result + 4);
    a2->i32[0] = llroundf(v11 * a4);
    a2 = (a2 + 4);
  }

  return result;
}

float32x4_t *Float32ToNativeLowAlignedInt32_ARM(float32x4_t *result, uint32x4_t *a2, unsigned int a3, int a4, double a5)
{
  LODWORD(a5) = 1065353216 - (a4 << 23);
  v5 = vdupq_lane_s32(*&a5, 0);
  v6 = vdupq_n_s32(a4 - 32);
  if (a3 < 0x18)
  {
    if (a3 >= 4)
    {
      do
      {
        v19 = *result++;
        v20 = vcvtq_n_s32_f32(vaddq_f32(v5, v19), 0x1FuLL);
        *a2++ = vshlq_u32(vqaddq_s32(v20, vcltzq_s32(v20)), v6);
        a3 -= 4;
      }

      while (a3 > 3);
    }
  }

  else
  {
    a3 -= 20;
    v7 = vcvtq_n_s32_f32(vaddq_f32(v5, *result), 0x1FuLL);
    v8 = vcvtq_n_s32_f32(vaddq_f32(v5, result[1]), 0x1FuLL);
    v9 = vshlq_u32(vqaddq_s32(v7, vcltzq_s32(v7)), v6);
    v10 = vqaddq_s32(v8, vcltzq_s32(v8));
    v11 = vcvtq_n_s32_f32(vaddq_f32(v5, result[2]), 0x1FuLL);
    v12 = vaddq_f32(v5, result[3]);
    v13 = result[4];
    result += 5;
    v14 = vcltzq_s32(v11);
    do
    {
      v15 = a2;
      *a2++ = v9;
      v9 = vshlq_u32(v10, v6);
      v10 = vqaddq_s32(v11, v14);
      v11 = vcvtq_n_s32_f32(v12, 0x1FuLL);
      v12 = vaddq_f32(v5, v13);
      v16 = *result++;
      v13 = v16;
      v14 = vcltzq_s32(v11);
      a3 -= 4;
    }

    while (a3 > 3);
    v17 = vcvtq_n_s32_f32(v12, 0x1FuLL);
    *a2 = v9;
    a2[1] = vshlq_u32(v10, v6);
    v18 = vcvtq_n_s32_f32(vaddq_f32(v5, v13), 0x1FuLL);
    a2[2] = vshlq_u32(vqaddq_s32(v11, v14), v6);
    a2[3] = vshlq_u32(vqaddq_s32(v17, vcltzq_s32(v17)), v6);
    a2[4] = vshlq_u32(vqaddq_s32(v18, vcltzq_s32(v18)), v6);
    a2 = v15 + 6;
  }

  for (; a3; --a3)
  {
    v21 = result->f32[0];
    result = (result + 4);
    v22 = vcvts_n_s32_f32(v21 + *&a5, 0x1FuLL);
    a2->i32[0] = (v22 - (v22 > 0x80000000)) >> (32 - a4);
    a2 = (a2 + 4);
  }

  return result;
}

float NativeLowAlignedInt32ToFloat32_ARM(uint32x4_t *a1, uint64_t a2, unsigned int a3, int a4)
{
  v4 = vdupq_n_s32(32 - a4);
  if (a3 < 0x10)
  {
    if (a3 >= 4)
    {
      do
      {
        v10 = *a1++;
        *a2 = vcvtq_n_f32_s32(vshlq_u32(v10, v4), 0x1FuLL);
        a2 += 16;
        a3 -= 4;
      }

      while (a3 > 3);
    }
  }

  else
  {
    a3 -= 12;
    v5 = vcvtq_n_f32_s32(vshlq_u32(*a1, v4), 0x1FuLL);
    v6 = vshlq_u32(a1[1], v4);
    v7 = a1[2];
    a1 += 3;
    do
    {
      v8 = a2;
      *a2 = v5;
      a2 += 16;
      v5 = vcvtq_n_f32_s32(v6, 0x1FuLL);
      v6 = vshlq_u32(v7, v4);
      v9 = *a1++;
      v7 = v9;
      a3 -= 4;
    }

    while (a3 > 3);
    *a2 = v5;
    *(a2 + 16) = vcvtq_n_f32_s32(v6, 0x1FuLL);
    v4 = vcvtq_n_f32_s32(vshlq_u32(v7, v4), 0x1FuLL);
    *(a2 + 32) = v4;
    a2 = v8 + 64;
  }

  for (; a3; --a3)
  {
    v11 = a1->i32[0];
    a1 = (a1 + 4);
    *v4.i32 = vcvts_n_f32_s32(v11 << (32 - a4), 0x1FuLL);
    *a2 = v4.i32[0];
    a2 += 4;
  }

  return *v4.i32;
}

float32x4_t *MultiChannelInterleaveFloat32ToNativeLowAlignedInt32_ARM(float32x4_t *result, float32x4_t *a2, unsigned int a3, int a4, double a5)
{
  v6 = a3;
  v7 = a2;
  v8 = result;
  v9 = result->u32[0];
  if (v9 == 1)
  {
    result = Float32ToNativeLowAlignedInt32_ARM(result[1].i64[0], a2, a3, a4, a5);
  }

  v10 = &v8->i64[1];
  LODWORD(a5) = 1065353216 - (a4 << 23);
  v11 = vdupq_lane_s32(*&a5, 0);
  v12 = vdupq_n_s32(a4 - 32);
  if (v9 < 4)
  {
    i = v9;
  }

  else
  {
    v13 = v9;
    for (i = v9; i > 3; i -= 4)
    {
      v15 = v10[1];
      v16 = v10[3];
      v17 = v7;
      v18 = v10[5];
      v19 = v6;
      result = v7;
      v20 = v10[7];
      if (v6 >= 4)
      {
        do
        {
          v21 = *v15++;
          v22 = v21;
          v23 = *v16++;
          v24 = v23;
          v25 = *v18++;
          v26 = v25;
          v27 = *v20++;
          v28 = vcvtq_n_s32_f32(vaddq_f32(v11, v22), 0x1FuLL);
          v29 = vcvtq_n_s32_f32(vaddq_f32(v11, v24), 0x1FuLL);
          v30 = vcvtq_n_s32_f32(vaddq_f32(v11, v26), 0x1FuLL);
          v31 = vcvtq_n_s32_f32(vaddq_f32(v11, v27), 0x1FuLL);
          v32 = vshlq_u32(vqaddq_s32(v28, vcltzq_s32(v28)), v12);
          v33 = vshlq_u32(vqaddq_s32(v29, vcltzq_s32(v29)), v12);
          v34 = vshlq_u32(vqaddq_s32(v30, vcltzq_s32(v30)), v12);
          v35 = vshlq_u32(vqaddq_s32(v31, vcltzq_s32(v31)), v12);
          result->i32[0] = v32.i32[0];
          result->i32[1] = v33.i32[0];
          result->i32[2] = v34.i32[0];
          result->i32[3] = v35.i32[0];
          v17 = &result[v9];
          v36 = (result + v13 * 4);
          *v36 = v32.i32[1];
          v36[1] = v33.i32[1];
          v36[2] = v34.i32[1];
          v36[3] = v35.i32[1];
          v37 = &v36[v13];
          *v37 = v32.i32[2];
          v37[1] = v33.i32[2];
          v37[2] = v34.i32[2];
          v37[3] = v35.i32[2];
          v38 = &v37[v13];
          *v38 = v32.i32[3];
          v38[1] = v33.i32[3];
          v38[2] = v34.i32[3];
          v38[3] = v35.i32[3];
          result = &v38[v13];
          v19 -= 4;
        }

        while (v19 > 3);
      }

      for (; v19; --v19)
      {
        v39 = v15->i32[0];
        v15 = (v15 + 4);
        v40.i32[0] = v39;
        v40.i32[1] = v16->i32[0];
        v16 = (v16 + 4);
        v40.i32[2] = v18->i32[0];
        v18 = (v18 + 4);
        v40.i32[3] = v20->i32[0];
        v20 = (v20 + 4);
        v41 = vcvtq_n_s32_f32(vaddq_f32(v11, v40), 0x1FuLL);
        *v17 = vqaddq_s32(v41, vcltzq_s32(v41));
        v17 = (v17 + v13 * 4);
      }

      v10 += 8;
      ++v7;
    }
  }

  if (i > 1)
  {
    v42 = v10[1];
    v43 = v10[3];
    v44 = v9;
    if (v6 < 4)
    {
      v56 = v7;
      j = v6;
      if (!v6)
      {
LABEL_21:
        i -= 2;
        v10 += 4;
        v7 = (v7 + 8);
        goto LABEL_22;
      }
    }

    else
    {
      v45 = v7;
      for (j = v6; j > 3; j -= 4)
      {
        v47 = *v42++;
        v48 = v47;
        v49 = *v43++;
        v50 = vcvtq_n_s32_f32(vaddq_f32(v11, v48), 0x1FuLL);
        v51 = vcvtq_n_s32_f32(vaddq_f32(v11, v49), 0x1FuLL);
        v52 = vshlq_u32(vqaddq_s32(v50, vcltzq_s32(v50)), v12);
        v53 = vshlq_u32(vqaddq_s32(v51, vcltzq_s32(v51)), v12);
        v54 = v45;
        v55 = (v45 + v44 * 4);
        v54->i32[0] = v52.i32[0];
        v54->i32[1] = v53.i32[0];
        v56 = &v54[v9];
        *v55 = v52.i32[1];
        v55[1] = v53.i32[1];
        v57 = &v55[v44];
        *v57 = v52.i32[2];
        v57[1] = v53.i32[2];
        v58 = &v57[v44];
        *v58 = v52.i32[3];
        v58[1] = v53.i32[3];
        v45 = &v58[v44];
      }

      if (!j)
      {
        goto LABEL_21;
      }
    }

    v59 = vdup_lane_s32(*&a5, 0);
    do
    {
      v60 = v42->i32[0];
      v42 = (v42 + 4);
      v61.i32[0] = v60;
      v61.i32[1] = v43->i32[0];
      v43 = (v43 + 4);
      v62 = vcvt_n_s32_f32(vadd_f32(v59, v61), 0x1FuLL);
      *v56 = vqadd_s32(v62, vcltz_s32(v62));
      v56 = (v56 + v44 * 4);
      --j;
    }

    while (j);
    goto LABEL_21;
  }

LABEL_22:
  if (i)
  {
    v63 = v10[1];
    v64 = 4 * v9;
    if (v6 >= 4)
    {
      do
      {
        v65 = v7;
        v66 = *v63++;
        v67 = vcvtq_n_s32_f32(vaddq_f32(v11, v66), 0x1FuLL);
        v68 = vshlq_u32(vqaddq_s32(v67, vcltzq_s32(v67)), v12);
        v7->i32[0] = v68.i32[0];
        v7->i32[v9] = v68.i32[1];
        v69 = (v7 + v64 + v64);
        *v69 = v68.i32[2];
        v70 = &v69[v64 / 4];
        *v70 = v68.i32[3];
        v6 -= 4;
        v7 = &v70[v64 / 4];
      }

      while (v6 > 3);
      v7 = &v65[v9];
    }

    for (; v6; --v6)
    {
      v71 = v63->f32[0];
      v63 = (v63 + 4);
      v72 = vcvts_n_s32_f32(v71 + *&a5, 0x1FuLL);
      if (v72 == 0x80000000)
      {
        v73 = 0x80000000;
      }

      else
      {
        v73 = v72 + (v72 >> 31);
      }

      v7->i32[0] = v73 >> (32 - a4);
      v7 = (v7 + v64);
    }
  }

  return result;
}

float32x4_t *Float32ToNativeLowAlignedInt64_ARM(float32x4_t *a1, int32x4_t *a2, unsigned int a3, int a4, double a5)
{
  v6 = a2;
  v7 = (a2 + 4 * a3);
  result = Float32ToNativeLowAlignedInt32_ARM(a1, v7, a3, a4, a5);
  if (a3 >= 4)
  {
    v9 = a3 >> 2;
    do
    {
      v10 = *v7++;
      *v6 = vzip1q_s32(v10, 0);
      v6[1] = vzip2q_s32(v10, 0);
      v6 += 2;
      --v9;
    }

    while (v9);
  }

  v11 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    do
    {
      v12 = v7->i32[0];
      v7 = (v7 + 4);
      v6->i64[0] = v12;
      v6 = (v6 + 8);
      --v11;
    }

    while (v11);
  }

  return result;
}

float NativeLowAlignedInt64ToFloat32_ARM(const float *a1, uint32x4_t *a2, unsigned int a3, int a4)
{
  if (a3 >= 4)
  {
    v5 = a3 >> 2;
    v4 = a2;
    do
    {
      v6 = vld2q_f32(a1);
      a1 += 8;
      *v4++ = v6;
      --v5;
    }

    while (v5);
  }

  else
  {
    v4 = a2;
  }

  v7 = a3 & 3;
  if ((a3 & 3) != 0)
  {
    do
    {
      v8 = *a1;
      a1 += 2;
      v4->i32[0] = v8;
      v4 = (v4 + 4);
      --v7;
    }

    while (v7);
  }

  return NativeLowAlignedInt32ToFloat32_ARM(a2, a2, a3, a4);
}

void removeGatedLoudness(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[266];
      if (v3)
      {
        free(v3);
        v2 = *a1;
      }

      v4 = v2[267];
      if (v4)
      {
        free(v4);
        v2 = *a1;
      }

      v5 = v2[6];
      if (v5)
      {
        free(v5);
        v2 = *a1;
      }

      v6 = v2[3];
      if (v6)
      {
        free(v6);
        v2 = *a1;
      }

      v7 = v2[273];
      if (v7)
      {
        v8 = v7[2];
        if (v8)
        {
          vDSP_biquad_DestroySetup(v8);
        }

        v9 = v7[3];
        if (v9)
        {
          v10 = v7[4];
          if (v10 != v9)
          {
            v7[4] = &v10[(v9 - v10 + 3) & 0xFFFFFFFFFFFFFFFCLL];
          }

          operator delete(v9);
          v7[3] = 0;
          v7[4] = 0;
        }

        MEMORY[0x193ADF220](v7, 0x10A0C40B6373B8BLL);
        v2[273] = 0;
        v2 = *a1;
      }

      free(v2);
      *a1 = 0;
    }
  }
}

uint64_t initGatedLoudness(CAAudioChannelLayout *a1, int a2, void *a3, __n128 a4)
{
  v35 = *MEMORY[0x1E69E9840];
  inSpecifier = a2;
  if (a1 > 0x200)
  {
    return 4294967246;
  }

  v5 = a1;
  v30 = a4.n128_u64[0];
  memset_pattern16(__b, &unk_18F901E20, 0x400uLL);
  v6 = 0;
  v7 = xmmword_18F901740;
  v8.i64[0] = 0x400000004;
  v8.i64[1] = 0x400000004;
  do
  {
    *&__src[v6] = v7;
    v7 = vaddq_s32(v7, v8);
    v6 += 4;
  }

  while (v6 != 256);
  if (v5 < 3)
  {
    v9 = v5;
    goto LABEL_6;
  }

  v21 = caulk::numeric::exceptional_mul<unsigned int>(v5, 0x14u);
  ioPropertyDataSize[0] = caulk::numeric::exceptional_add<unsigned int>(12, v21);
  v22 = CAAudioChannelLayout::Create(v5);
  if (AudioFormatGetProperty(0x636D706Cu, 4u, &inSpecifier, ioPropertyDataSize, v22))
  {
    MEMORY[0x193ADE5A0](v22);
    return 4294967246;
  }

  v5 = v22[2];
  if (!v5)
  {
    MEMORY[0x193ADE5A0](v22);
    v9 = 0;
LABEL_6:
    if (!a3 || *a3)
    {
      return 4294967246;
    }

    v10 = malloc_type_calloc(1uLL, 0x890uLL, 0x10900409F0D3898uLL);
    *ioPropertyDataSize = v10;
    if (!v9 || (v11 = v10) == 0 || (*v10 = v5, v10[1] = v9, v12 = 4 * v9, memcpy(v10 + 14, __src, v12), memcpy(v11 + 270, __b, v12), v13.i32[1] = HIDWORD(v30), v14 = vcvt_u32_f32(vmla_n_f32(0x3F0000003F000000, 0x404000003ECCCCCDLL, *&v30)), v15 = vcvt_f32_u32(v14), v11[4] = ((v15.f32[0] * 0.25) + 0.5), *v13.i32 = ((v15.f32[0] * 0.25) + 0.5), *(v11 + 1) = v14, *(v11 + 9) = vcvt_u32_f32(vadd_f32(vdiv_f32(v15, vdup_lane_s32(v13, 0)), 0x3F0000003F000000)), v11[8] = 0, *(v11 + 526) = xmmword_18F901750, v11[530] = 715, v16 = malloc_type_calloc(0x2CBuLL, 4uLL, 0x100004052888210uLL), (*(v11 + 266) = v16) == 0) || (v17 = malloc_type_calloc(v11[530], 4uLL, 0x100004052888210uLL), (*(v11 + 267) = v17) == 0) || (v18 = malloc_type_malloc(8 * (v11[10] * v5), 0x100004000313F17uLL), (*(v11 + 6) = v18) == 0) || (v19 = malloc_type_malloc(4 * (v11[4] * v5), 0x100004052888210uLL), (*(v11 + 3) = v19) == 0))
    {
      removeGatedLoudness(ioPropertyDataSize);
      return 4294967246;
    }

    v11[5] = 0;
    *(v11 + 2148) = 0;
    *(v11 + 2156) = 0;
    *(v11 + 2164) = 0;
    *(v11 + 2180) = 0;
    *(v11 + 2172) = 0;
    v11[544] = -525502228;
    v11[542] = -525502228;
    initKfilter(v5, v11 + 273, *&v30);
    result = 0;
    *a3 = v11;
    return result;
  }

  v23 = 0;
  v24 = 0;
  v9 = 0;
  v25 = 3;
  do
  {
    v26 = v22[v25];
    if (v26 <= 300)
    {
      v28 = v26 + 1;
      if ((v26 + 1) <= 0x2E)
      {
        if (((1 << v28) & 0x30000018C0) != 0)
        {
          __b[v9] = 1068792545;
LABEL_29:
          __src[v9++] = v23;
          goto LABEL_42;
        }

        if (((1 << v28) & 0x400000000003) != 0)
        {
          goto LABEL_41;
        }

        if (((1 << v28) & 0x4000000020) != 0)
        {
          goto LABEL_42;
        }
      }

      if ((v26 - 200) >= 8 && v26 != 100)
      {
        goto LABEL_29;
      }
    }

    else if (v26 < 0x10000)
    {
      v29 = (v26 - 301) > 3 || v26 == 303;
      if (v29 && v26 != 400)
      {
        goto LABEL_29;
      }
    }

    else if ((v26 - 0x10000) >= 0x10 && v26 != 0x1FFFF)
    {
      goto LABEL_29;
    }

LABEL_41:
    v24 = 1;
LABEL_42:
    v23 = (v23 + 1);
    v25 += 5;
  }

  while (v5 != v23);
  MEMORY[0x193ADE5A0](v22);
  if (!v24)
  {
    goto LABEL_6;
  }

  return 4294967246;
}

void computeItuLoudnessValue(uint64_t a1)
{
  v2 = *(a1 + 2120);
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = 0;
  v4 = 0;
  v5 = *(a1 + 2112);
  v6 = *(a1 + 2104);
  v7 = 0.0;
  do
  {
    if ((v5 + (v3 * v6)) > -70.0)
    {
      v8 = __exp10f(((v5 + ((v3 + 0.5) * v6)) + 0.691) * 0.1);
      v9 = *(*(a1 + 2128) + 4 * v3);
      v7 = v7 + (v8 * v9);
      v4 += v9;
    }

    ++v3;
  }

  while (v2 != v3);
  if (!v4)
  {
LABEL_13:
    v19 = -70.0;
    goto LABEL_14;
  }

  v10 = v7;
  v11 = log10f(v10 / v4);
  v12 = 0;
  v13 = 0;
  v14 = ((v11 * 10.0) + -0.691) + -10.0;
  v15 = 0.0;
  do
  {
    if ((v5 + (v12 * v6)) > v14)
    {
      v16 = __exp10f(((v5 + ((v12 + 0.5) * v6)) + 0.691) * 0.1);
      v17 = *(*(a1 + 2128) + 4 * v12);
      v15 = v15 + (v16 * v17);
      v13 += v17;
    }

    ++v12;
  }

  while (v2 != v12);
  if (v13)
  {
    v18 = v15;
    v19 = (log10f(v18 / v13) * 10.0) + -0.691;
LABEL_14:
    *(a1 + 2144) = v19;
    *(a1 + 2148) = 1;
  }
}

void computeEbuLoudnessRange(uint64_t a1)
{
  v1 = *(a1 + 2120);
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a1 + 2112);
    v6 = *(a1 + 2104);
    v7 = 0.0;
    do
    {
      if ((v5 + (v3 * v6)) > -70.0)
      {
        v8 = __exp10f(((v5 + ((v3 + 0.5) * v6)) + 0.691) * 0.1);
        v9 = *(*(a1 + 2136) + 4 * v3);
        v7 = v7 + (v8 * v9);
        v4 += v9;
      }

      ++v3;
    }

    while (v1 != v3);
    if (v4)
    {
      v10 = v7;
      v11 = log10f(v10 / v4);
      v12 = 0;
      v13 = 0;
      v14 = ((v11 * 10.0) + -0.691) + -20.0;
      do
      {
        if ((v5 + (v12 * v6)) > v14)
        {
          v13 += *(*(a1 + 2136) + 4 * v12);
        }

        ++v12;
      }

      while (v1 != v12);
      if (v13)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = v13;
        v20 = ((v13 * 0.1) + 0.5);
        v21 = ((v19 * 0.95) + 0.5);
        v22 = 0.0;
        v23 = 0.0;
        do
        {
          if ((v5 + (v15 * v6)) > v14)
          {
            v16 += *(*(a1 + 2136) + 4 * v15);
            if (!((v16 < v20) | v18 & 1))
            {
              v23 = (v5 + ((v15 + 0.5) * v6));
            }

            v18 |= ((v16 < v20) | v18) ^ 1;
            if (!((v16 < v21) | v17 & 1))
            {
              v22 = (v5 + ((v15 + 0.5) * v6));
            }

            v17 |= v16 >= v21;
          }

          ++v15;
        }

        while (v1 != v15);
        if (v18 & v17)
        {
          v24 = v22 - v23;
          *(a1 + 2152) = v24;
          *(a1 + 2156) = 1;
          v25 = v22;
          *(a1 + 2160) = v25;
          *(a1 + 2164) = 1;
        }
      }
    }
  }
}

void loudnessMeasurementGenerateBlocks(_DWORD *a1, unsigned int a2, char *__src)
{
  v3 = __src;
  v4 = a2;
  v5 = a1;
  v62 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[4];
  v56 = a1[10];
  v57 = ((v56 - 1) * v7);
  v9 = a1 + 14;
  v10 = a1 + 270;
  v11 = a1[2];
  v12 = a2;
  v59 = v8;
  v51 = *a1;
  v55 = a1[9];
  do
  {
    v13 = *(v5 + 5);
    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = v8 > v4;
    }

    if (!v14)
    {
      v18 = v12;
      v19 = &v3[4 * (v4 - v12) * v6];
      v58 = v18 - v8;
LABEL_15:
      memmove(v5[6], v5[6] + 8 * v7, 8 * ((v56 - 1) * v7));
      v20 = v5[273];
      if (v20)
      {
        v21 = v5[6];
        v22 = &v21[8 * v57];
        if (v7)
        {
          bzero(&v21[8 * v57], 8 * v7);
        }

        if (v59)
        {
          v23 = v59;
          do
          {
            if (v23 >= 0x100)
            {
              v24 = 256;
            }

            else
            {
              v24 = v23;
            }

            if (v7)
            {
              for (i = 0; i != v7; ++i)
              {
                v26 = 0;
                __C = 0.0;
                v27 = v9[i];
                v28 = *(v20 + 2);
                do
                {
                  __Y[v26++] = *&v19[4 * v27];
                  v27 += v28;
                }

                while (v24 != v26);
                vDSP_biquad(*(v20 + 2), (*(v20 + 3) + 4 * (6 * i)), __Y, 1, __Y, 1, v24);
                vDSP_svesq(__Y, 1, &__C, v24);
                v22[i] = v22[i] + __C;
              }
            }

            v19 += 4 * (*(v20 + 2) * v24);
            v23 -= v24;
          }

          while (v23);
        }

        if (*v20 != 1.0 && v7 != 0)
        {
          v30 = (*v20 * *v20);
          v31 = v7;
          do
          {
            *v22 = *v22 * v30;
            ++v22;
            --v31;
          }

          while (v31);
        }

        v3 = __src;
        v5 = a1;
        v6 = v51;
        v4 = a2;
      }

      v32 = *(v5 + 8);
      if (v32 < v56)
      {
        *(v5 + 8) = ++v32;
      }

      v8 = v59;
      if (v32 >= v55)
      {
        if (v7)
        {
          v33 = 0;
          v34 = 0.0;
          do
          {
            v35 = 0.0;
            if (v55)
            {
              v36 = 0;
              v37 = 0.0;
              v38 = v55;
              do
              {
                v37 = v37 + *(v5[6] + v57 + v33 - v36);
                v36 += v7;
                --v38;
              }

              while (v38);
              v35 = v37;
            }

            v34 = v34 + (*&v10[v33++] * v35);
          }

          while (v33 != v7);
        }

        else
        {
          v34 = 0.0;
        }

        v39 = (log10f(v34 / v11) * 10.0) + -0.691;
        v40 = v39 - *(v5 + 528);
        if (v40 >= 0.0)
        {
          v41 = (v40 * *(v5 + 527));
          if (*(v5 + 530) > v41)
          {
            ++*(v5[266] + v41);
          }
        }

        if (*(v5 + 542) < v39)
        {
          *(v5 + 542) = v39;
          *(v5 + 2172) = 1;
        }
      }

      if (*(v5 + 8) >= v56)
      {
        if (v7)
        {
          v42 = 0;
          v43 = 0.0;
          do
          {
            v44 = 0.0;
            if (v56)
            {
              v45 = 0;
              v46 = 0.0;
              v47 = v56;
              do
              {
                v46 = v46 + *(v5[6] + v57 + v42 - v45);
                v45 += v7;
                --v47;
              }

              while (v47);
              v44 = v46;
            }

            v43 = v43 + (*&v10[v42++] * v44);
          }

          while (v42 != v7);
        }

        else
        {
          v43 = 0.0;
        }

        v48 = (log10f(v43 / *(v5 + 3)) * 10.0) + -0.691;
        v49 = v48 - *(v5 + 528);
        if (v49 >= 0.0)
        {
          v50 = (v49 * *(v5 + 527));
          if (*(v5 + 530) > v50)
          {
            ++*(v5[267] + v50);
          }
        }

        v12 = v58;
        if (*(v5 + 544) < v48)
        {
          *(v5 + 544) = v48;
          *(v5 + 2180) = 1;
        }
      }

      else
      {
        v12 = v58;
      }

      continue;
    }

    if (v8 - v13 >= v4)
    {
      v15 = v4;
    }

    else
    {
      v15 = v8 - v13;
    }

    memcpy(v5[3] + 4 * (v13 * v6), v3, 4 * v15 * v6);
    v12 = v4 - v15;
    v16 = *(v5 + 5) + v15;
    v8 = v59;
    v17 = v16 >= v59;
    if (v16 >= v59)
    {
      v16 = 0;
    }

    *(v5 + 5) = v16;
    if (v17)
    {
      v58 = v12;
      v19 = v5[3];
      goto LABEL_15;
    }
  }

  while (v12 >= v8);
  if (v12)
  {
    memcpy(v5[3] + 4 * (*(v5 + 5) * v6), &v3[4 * (v4 - v12) * v6], 4 * v12 * v6);
    *(v5 + 5) += v12;
  }
}

uint64_t acv2::SampleRateConverter::SetPropertySettings(acv2::SampleRateConverter *this, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"parameters");
  if (Value)
  {
    v4 = Value;
    ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
    if (ValueAtIndex)
    {
      v20 = 0;
      v18 = ValueAtIndex;
      v19 = 0;
      if ((CACFDictionary::GetUInt32(&v18, @"current value", &v20) & 1) == 0)
      {
        goto LABEL_26;
      }

      if (v20 <= 1)
      {
        if (!v20)
        {
          v17 = 0;
          goto LABEL_16;
        }

        if (v20 == 1)
        {
          v6 = 32;
          goto LABEL_15;
        }
      }

      else if (v20 != 2)
      {
        if (v20 == 3)
        {
          v6 = 96;
          goto LABEL_15;
        }

        if (v20 == 4)
        {
          v6 = 127;
LABEL_15:
          v17 = v6;
LABEL_16:
          v7 = (*(*this + 96))(this, 1936876401, 4, &v17);
          if (v7)
          {
LABEL_27:
            CACFDictionary::~CACFDictionary(&v18);
            return v7;
          }

          v8 = CFArrayGetValueAtIndex(v4, 1);
          if (v8)
          {
            v15 = v8;
            v16 = 256;
            if (CACFDictionary::GetUInt32(&v15, @"current value", &v20))
            {
              v7 = (*(*this + 96))(this, 1886547309, 4, &v20);
              if (!v7)
              {
                if (CFArrayGetCount(v4) < 3)
                {
                  goto LABEL_40;
                }

                v9 = CFArrayGetValueAtIndex(v4, 2);
                if (!v9)
                {
                  goto LABEL_40;
                }

                v13 = v9;
                v14 = 256;
                if ((CACFDictionary::GetUInt32(&v13, @"current value", &v20) & 1) == 0)
                {
LABEL_39:
                  CACFDictionary::~CACFDictionary(&v13);
LABEL_40:
                  v7 = 0;
                  goto LABEL_41;
                }

                if (v20 > 1)
                {
                  if (v20 != 2)
                  {
                    if (v20 == 3)
                    {
                      v11 = 1835626096;
                      goto LABEL_37;
                    }

                    goto LABEL_34;
                  }

                  v11 = 1650553971;
                }

                else
                {
                  if (v20)
                  {
LABEL_34:
                    v11 = 1852797549;
                    goto LABEL_37;
                  }

                  v11 = 1818848869;
                }

LABEL_37:
                v12 = v11;
                v7 = (*(*this + 96))(this, 1936876385, 4, &v12);
                if (v7)
                {
                  CACFDictionary::~CACFDictionary(&v13);
                  goto LABEL_41;
                }

                goto LABEL_39;
              }
            }

            else
            {
              v7 = 4294967246;
            }

LABEL_41:
            CACFDictionary::~CACFDictionary(&v15);
            goto LABEL_27;
          }

LABEL_26:
          v7 = 4294967246;
          goto LABEL_27;
        }
      }

      v6 = 64;
      goto LABEL_15;
    }
  }

  return 4294967246;
}

void sub_18F692B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  CACFDictionary::~CACFDictionary(va);
  CACFDictionary::~CACFDictionary(va1);
  CACFDictionary::~CACFDictionary(va2);
  _Unwind_Resume(a1);
}

void acv2::SampleRateConverter::GetPropertySettings(acv2::SampleRateConverter *this@<X0>, CFMutableDictionaryRef *a2@<X8>)
{
  v71 = *MEMORY[0x1E69E9840];
  CABundleLocker::CABundleLocker(&v57);
  v4 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v4 = sAudioToolboxBundle;
  }

  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = Mutable;
  if (!Mutable)
  {
    *a2 = 0;
    goto LABEL_65;
  }

  *a2 = Mutable;
  v8 = CFGetTypeID(Mutable);
  if (v8 != CFDictionaryGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  valuePtr = 0;
  if (v4)
  {
    v9 = CFBundleCopyLocalizedString(v4, @"Sample Rate Converter", @"Sample Rate Converter", @"ConverterNames");
  }

  else
  {
    v9 = CFRetain(@"Sample Rate Converter");
  }

  v10 = v9;
  CFDictionaryAddValue(v7, @"name", v9);
  CFRelease(v10);
  v11 = (*(*this + 56))(this);
  CFDictionaryAddValue(v7, @"converter", v11);
  valuePtr = 0;
  v12 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(v7, @"version", v12);
  CFRelease(v12);
  v55 = v7;
  theDict = 0;
  v69 = 0;
  v70 = 0;
  TypeID = CFNumberGetTypeID();
  v14 = 0;
  v15 = MEMORY[0x1E695E9D8];
  valuePtr = TypeID;
  v16 = MEMORY[0x1E695E9E8];
  do
  {
    v17 = CFDictionaryCreateMutable(v5, 0, v15, v16);
    *(&theDict + v14) = v17;
    v18 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(v17, @"value type", v18);
    CFRelease(v18);
    v14 += 8;
  }

  while (v14 != 24);
  if (v4)
  {
    v19 = CFBundleCopyLocalizedString(v4, @"Quality", @"Quality", @"ConverterSettings");
  }

  else
  {
    v19 = CFRetain(@"Quality");
  }

  v20 = v19;
  v21 = theDict;
  CFDictionaryAddValue(theDict, @"key", @"Quality");
  CFDictionaryAddValue(v21, @"name", v20);
  CFRelease(v20);
  valuePtr = 0;
  v22 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(v21, @"hint", v22);
  CFRelease(v22);
  v67 = 0;
  *values = 0u;
  v66 = 0u;
  if (v4)
  {
    values[0] = CFBundleCopyLocalizedString(v4, @"Faster", @"Faster", @"ConverterSettings");
    values[1] = CFBundleCopyLocalizedString(v4, @"Fast", @"Fast", @"ConverterSettings");
    *&v66 = CFBundleCopyLocalizedString(v4, @"Normal", @"Normal", @"ConverterSettings");
    *(&v66 + 1) = CFBundleCopyLocalizedString(v4, @"Better", @"Better", @"ConverterSettings");
    v23 = CFBundleCopyLocalizedString(v4, @"Best", @"Best", @"ConverterSettings");
  }

  else
  {
    values[0] = CFRetain(@"Faster");
    values[1] = CFRetain(@"Fast");
    *&v66 = CFRetain(@"Normal");
    *(&v66 + 1) = CFRetain(@"Better");
    v23 = CFRetain(@"Best");
  }

  v67 = v23;
  v24 = CFArrayCreate(v5, values, 5, MEMORY[0x1E695E9C0]);
  CFDictionaryAddValue(v21, @"available values", v24);
  for (i = 0; i != 5; ++i)
  {
    CFRelease(values[i]);
  }

  CFRelease(v24);
  v26 = *(this + 69);
  if (v26 > 0xF)
  {
    if (v26 > 0x2F)
    {
      if (v26 > 0x4F)
      {
        if (v26 > 0x6E)
        {
          v27 = 4;
        }

        else
        {
          v27 = 3;
        }
      }

      else
      {
        v27 = 2;
      }
    }

    else
    {
      v27 = 1;
    }

    valuePtr = v27;
  }

  else
  {
    valuePtr = 0;
  }

  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(v21, @"current value", v28);
  CFRelease(v28);
  if (v4)
  {
    v29 = CFBundleCopyLocalizedString(v4, @"Quality setting for the sample rate converter.", @"Quality setting for the sample rate converter.", @"ConverterSettings");
  }

  else
  {
    v29 = CFRetain(@"Quality setting for the sample rate converter.");
  }

  v30 = v29;
  CFDictionaryAddValue(v21, @"summary", v29);
  CFRelease(v30);
  if (v4)
  {
    v31 = CFBundleCopyLocalizedString(v4, @"Priming Method", @"Priming Method", @"ConverterSettings");
  }

  else
  {
    v31 = CFRetain(@"Priming Method");
  }

  v32 = v31;
  v33 = v69;
  CFDictionaryAddValue(v69, @"key", @"Priming Method");
  CFDictionaryAddValue(v33, @"name", v32);
  CFRelease(v32);
  valuePtr = 2;
  v34 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(v33, @"hint", v34);
  CFRelease(v34);
  v62 = 0;
  v63 = 0;
  v64 = 0;
  if (v4)
  {
    v62 = CFBundleCopyLocalizedString(v4, @"Pre", @"Pre", @"ConverterSettings");
    v63 = CFBundleCopyLocalizedString(v4, @"Normal", @"Normal", @"ConverterSettings");
    v35 = CFBundleCopyLocalizedString(v4, @"None", @"None", @"ConverterSettings");
  }

  else
  {
    v62 = CFRetain(@"Pre");
    v63 = CFRetain(@"Normal");
    v35 = CFRetain(@"None");
  }

  v64 = v35;
  v36 = CFArrayCreate(v5, &v62, 3, MEMORY[0x1E695E9C0]);
  CFDictionaryAddValue(v33, @"available values", v36);
  for (j = 0; j != 24; j += 8)
  {
    CFRelease(*(&v62 + j));
  }

  CFRelease(v36);
  valuePtr = *(this + 70);
  v38 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(v33, @"current value", v38);
  CFRelease(v38);
  if (v4)
  {
    v39 = CFBundleCopyLocalizedString(v4, @"Priming method for the sample rate converter.", @"Priming method for the sample rate converter.", @"ConverterSettings");
  }

  else
  {
    v39 = CFRetain(@"Priming method for the sample rate converter.");
  }

  v40 = v39;
  CFDictionaryAddValue(v33, @"summary", v39);
  CFRelease(v40);
  if (v4)
  {
    v41 = CFBundleCopyLocalizedString(v4, @"Complexity", @"Complexity", @"ConverterSettings");
  }

  else
  {
    v41 = CFRetain(@"Complexity");
  }

  v42 = v41;
  v43 = v70;
  CFDictionaryAddValue(v70, @"key", @"Complexity");
  CFDictionaryAddValue(v43, @"name", v42);
  CFRelease(v42);
  valuePtr = 1;
  v44 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(v43, @"hint", v44);
  CFRelease(v44);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  if (v4)
  {
    v58 = CFBundleCopyLocalizedString(v4, @"Linear", @"Linear", @"ConverterSettings");
    v59 = CFBundleCopyLocalizedString(v4, @"Normal", @"Normal", @"ConverterSettings");
    v60 = CFBundleCopyLocalizedString(v4, @"Mastering", @"Mastering", @"ConverterSettings");
    v45 = CFBundleCopyLocalizedString(v4, @"Minimum Phase", @"Minimum Phase", @"ConverterSettings");
  }

  else
  {
    v58 = CFRetain(@"Linear");
    v59 = CFRetain(@"Normal");
    v60 = CFRetain(@"Mastering");
    v45 = CFRetain(@"Minimum Phase");
  }

  v61 = v45;
  v46 = CFArrayCreate(v5, &v62, 3, MEMORY[0x1E695E9C0]);
  CFDictionaryAddValue(v43, @"available values", v46);
  for (k = 0; k != 24; k += 8)
  {
    CFRelease(*(&v58 + k));
  }

  CFRelease(v46);
  v48 = *(this + 68);
  if (v48 <= 1835626095)
  {
    if (v48 != 1650553971)
    {
      if (v48 == 1818848869)
      {
        valuePtr = 0;
      }

      goto LABEL_61;
    }

    v49 = 2;
    goto LABEL_60;
  }

  if (v48 == 1835626096)
  {
    v49 = 3;
    goto LABEL_60;
  }

  if (v48 == 1852797549)
  {
    v49 = 1;
LABEL_60:
    valuePtr = v49;
  }

LABEL_61:
  v50 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(v43, @"current value", v50);
  CFRelease(v50);
  if (v4)
  {
    v51 = CFBundleCopyLocalizedString(v4, @"sample rate converter complexity setting.", @"sample rate converter complexity setting.", @"ConverterSettings");
  }

  else
  {
    v51 = CFRetain(@"sample rate converter complexity setting.");
  }

  v52 = v51;
  CFDictionaryAddValue(v43, @"summary", v51);
  CFRelease(v52);
  v53 = CFArrayCreate(v5, &theDict, 2, MEMORY[0x1E695E9C0]);
  CFRelease(theDict);
  CFRelease(v69);
  CFDictionaryAddValue(v55, @"parameters", v53);
  CFRelease(v53);
LABEL_65:
  CABundleLocker::~CABundleLocker(&v57);
}

void sub_18F693604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_free_exception(v14);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v15);
  CABundleLocker::~CABundleLocker(&a14);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t acv2::SampleRateConverter::GetProperty(acv2::SampleRateConverter *this, int a2, unsigned int *a3, double *a4)
{
  result = 1886547824;
  if (a2 > 1936876399)
  {
    if (a2 > 2020175986)
    {
      if (a2 == 2020175987)
      {
        if (*a3 == 4)
        {
          result = 0;
          v11 = *(this + 8);
          goto LABEL_36;
        }

        return 561211770;
      }

      if (a2 != 2020569203)
      {
        return result;
      }

      if (*a3 != 4)
      {
        return 561211770;
      }

      result = 0;
      v11 = *(this + 18);
    }

    else
    {
      if (a2 == 1936876400)
      {
        if (*a3 == 8)
        {
          v16 = (*(**(this + 20) + 56))(*(this + 20));
          result = 0;
          *a4 = v16;
          return result;
        }

        return 561211770;
      }

      if (a2 != 1936876401)
      {
        return result;
      }

      if (*a3 != 4)
      {
        return 561211770;
      }

      result = 0;
      v11 = *(this + 69);
    }

LABEL_36:
    *a4 = v11;
    return result;
  }

  if (a2 > 1835626095)
  {
    if (a2 == 1835626096)
    {
      if (*a3 != 4)
      {
        return 561211770;
      }

      v12 = (*(**(this + 20) + 72))(*(this + 20));
    }

    else
    {
      if (a2 != 1886547309)
      {
        return result;
      }

      if (*a3 != 4)
      {
        return 561211770;
      }

      v12 = (*(**(this + 20) + 40))(*(this + 20));
    }

    v11 = v12;
    result = 0;
    goto LABEL_36;
  }

  v7 = *(this + 10);
  if (a2 == 1667850867)
  {
    if (*a3 == 4)
    {
      v13 = *a4 % v7;
      if (v13)
      {
        v14 = v7 - v13;
      }

      else
      {
        v14 = 0;
      }

      v10 = (*(**(this + 20) + 80))(*(this + 20), (v14 + *a4) / v7);
      goto LABEL_28;
    }
  }

  else
  {
    if (a2 != 1668244083)
    {
      return result;
    }

    if (*a3 == 4)
    {
      v8 = *a4 % v7;
      if (v8)
      {
        v9 = v7 - v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = (*(**(this + 20) + 88))(*(this + 20), (v9 + *a4) / v7);
LABEL_28:
      v15 = v10;
      result = 0;
      v11 = v15 * v7;
      goto LABEL_36;
    }
  }

  return 561211770;
}

uint64_t acv2::SampleRateConverter::GetPropertyInfo(acv2::SampleRateConverter *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  result = 1886547824;
  if (a2 <= 1886547308)
  {
    if (a2 <= 1835626095)
    {
      if (a2 != 1667850867)
      {
        v7 = 1668244083;
LABEL_9:
        if (a2 != v7)
        {
          return result;
        }
      }

LABEL_10:
      if (!a3)
      {
        goto LABEL_13;
      }

      v8 = 4;
      goto LABEL_12;
    }

    if (a2 != 1835626096)
    {
      if (a2 != 1886546285)
      {
        return result;
      }

      if (!a3)
      {
LABEL_13:
        if (a4)
        {
          v9 = 0;
LABEL_32:
          result = 0;
          *a4 = v9;
          return result;
        }

        return 0;
      }

      v8 = 8;
LABEL_12:
      *a3 = v8;
      goto LABEL_13;
    }
  }

  else
  {
    if (a2 <= 1936876400)
    {
      if (a2 == 1886547309)
      {
        if (a3)
        {
          *a3 = 4;
        }

        if (a4)
        {
          v9 = (*(**(this + 20) + 32))(*(this + 20));
          goto LABEL_32;
        }

        return 0;
      }

      if (a2 != 1936876400)
      {
        return result;
      }

      if (!a3)
      {
        goto LABEL_26;
      }

      v10 = 8;
      goto LABEL_25;
    }

    if (a2 != 1936876401)
    {
      if (a2 != 2020569203)
      {
        v7 = 2020175987;
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

  if (!a3)
  {
    goto LABEL_26;
  }

  v10 = 4;
LABEL_25:
  *a3 = v10;
LABEL_26:
  if (a4)
  {
    v9 = 1;
    goto LABEL_32;
  }

  return 0;
}

uint64_t acv2::SampleRateConverter::description@<X0>(acv2::SampleRateConverter *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  acv2::AudioConverterBase::description(__p, this);
  if ((v17 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v5 = v17;
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v4, v5);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "    Algorithm ", 14);
  v6 = MEMORY[0x193ADEE60](&v18, *(this + 68));
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", quality ", 10);
  v8 = MEMORY[0x193ADEE60](v7, *(this + 69));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", ", 2);
  v9 = (*(**(this + 20) + 104))(*(this + 20));
  v10 = strlen(v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " @ ", 3);
  v11 = MEMORY[0x193ADEE30](v8, *(this + 20));
  LOBYTE(__p[0]) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, __p, 1);
  if ((v25 & 0x10) != 0)
  {
    v13 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v13 = v21;
    }

    locale = v20[4].__locale_;
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v12 = 0;
      a2[23] = 0;
      goto LABEL_22;
    }

    locale = v20[1].__locale_;
    v13 = v20[3].__locale_;
  }

  v12 = v13 - locale;
  if ((v13 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  a2[23] = v12;
  if (v12)
  {
    memmove(a2, locale, v12);
  }

LABEL_22:
  a2[v12] = 0;
  v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(v22);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x193ADF120](&v26);
}

void sub_18F693EB8(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ostringstream::~ostringstream(&a12);
  MEMORY[0x193ADF120](va);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x193ADF120](a1 + 112);
  return a1;
}

void acv2::SampleRateConverter::~SampleRateConverter(acv2::SampleRateConverter *this)
{
  *this = &unk_1F0325960;
  ACAudioSpan::~ACAudioSpan((this + 168));
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  acv2::AudioConverterBase::~AudioConverterBase(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0325960;
  ACAudioSpan::~ACAudioSpan((this + 168));
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  acv2::AudioConverterBase::~AudioConverterBase(this);
}

uint64_t _ZNSt3__18optionalI19ACMetadataContainerE7emplaceB8ne200100IJEvEERS1_DpOT_(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    std::vector<char,caulk::rt_allocator<char>>::__destroy_vector::operator()[abi:ne200100](a1);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1;
  return a1;
}

void VorbisComment::Clear(VorbisComment *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  v4 = *(this + 1);
  for (i = *(this + 2); i != v4; std::allocator_traits<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>,void,0>(i))
  {
    i -= 16;
  }

  *(this + 2) = v4;
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void VorbisComment::SetVendorString(const void **a1, const void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t *std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::reserve(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::allocate_at_least[abi:ne200100](a2);
  }

  return result;
}

void *applesauce::CF::StringRef::from_create(void *this, CFTypeRef cf)
{
  *this = cf;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    this = CFStringGetTypeID();
    if (v2 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return this;
}

void sub_18F6943B4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::DataRef::DataRef(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

void applesauce::CF::DataRef::~DataRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void VorbisComment::ConvertBase64FieldValueToAlbumArtwork(VorbisComment *this, const applesauce::CF::StringRef *a2, applesauce::CF::DataRef *a3)
{
  if (*this)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:*this options:0];
    if (([v3 length] - 1) <= 0xFFFFFFFE)
    {
      operator new();
    }
  }
}

void sub_18F69454C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  MEMORY[0x193ADF220](v9, 0x10D1C40E0437BB5, a3, a4, a5, a6, a7, a8);

  _Unwind_Resume(a1);
}

const void **applesauce::CF::DataRef::operator=(const void **a1, CFTypeRef cf)
{
  v3 = *a1;
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void VorbisComment::AddUserComment(VorbisComment *this, CFTypeRef cf, const void **a3)
{
  if (cf && *a3)
  {
    CFRetain(cf);
    v6 = *a3;
    if (v6)
    {
      CFRetain(v6);
    }

    v7 = *(this + 2);
    v8 = *(this + 3);
    if (v7 >= v8)
    {
      v9 = *(this + 1);
      v10 = (v7 - v9) >> 4;
      v11 = v10 + 1;
      if ((v10 + 1) >> 60)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v12 = v8 - v9;
      if (v12 >> 3 > v11)
      {
        v11 = v12 >> 3;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      v21 = this + 8;
      if (v13)
      {
        std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::allocate_at_least[abi:ne200100](v13);
      }

      v14 = (16 * v10);
      v18 = 0;
      v19 = v14;
      *v14 = cf;
      v14[1] = v6;
      v20 = (16 * v10 + 16);
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>,std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>*>(this + 8, v9, v7, 0);
      v15 = *(this + 1);
      *(this + 1) = 0;
      v16 = *(this + 3);
      v17 = v20;
      *(this + 1) = v20;
      *&v20 = v15;
      *(&v20 + 1) = v16;
      v18 = v15;
      v19 = v15;
      std::__split_buffer<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::~__split_buffer(&v18);
      *(this + 2) = v17;
    }

    else
    {
      *v7 = cf;
      *(v7 + 1) = v6;
      *(this + 2) = v7 + 16;
    }
  }
}

void sub_18F69474C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>::~pair(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>,std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      a4[1] = v6[1];
      v6[1] = 0;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>,void,0>(v5);
      v5 += 2;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 16;
    std::allocator_traits<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>,void,0>(v3 - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>,void,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

uint64_t VorbisComment::ParsePictureBlock(VorbisComment *this, DataSource *a2, _DWORD *a3, unsigned int *a4, applesauce::CF::DataRef *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v31 = 0;
  memset(length, 0, sizeof(length));
  memset(&v29, 0, sizeof(v29));
  v9 = (*(*this + 48))(this, 0, a2, 4, &v31, &v31 + 4);
  if (!v9)
  {
    if (*a3 <= 3u)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return 4294967246;
      }

      *buf = 136315394;
      *&buf[4] = "VorbisComment.mm";
      v33 = 1024;
      v34 = 510;
      v12 = MEMORY[0x1E69E9C10];
LABEL_8:
      _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d  VorbisComment::ParsePicture: exceeded total metadata block size", buf, 0x12u);
      return 4294967246;
    }

    LODWORD(v31) = bswap32(v31);
    v9 = (*(*this + 48))(this, 0, a2 + 4, 4, &length[2], &v31 + 4);
    if (v9)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return v9;
      }

      *buf = 136315394;
      *&buf[4] = "VorbisComment.mm";
      v33 = 1024;
      v34 = 514;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  VorbisComment::ParsePicture: Read MIME type string length failed";
      goto LABEL_4;
    }

    v13 = bswap32(length[2]);
    length[2] = v13;
    if (v13 + 8 > *a3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return 4294967246;
      }

      *buf = 136315394;
      *&buf[4] = "VorbisComment.mm";
      v33 = 1024;
      v34 = 528;
      v12 = MEMORY[0x1E69E9C10];
      goto LABEL_8;
    }

    v14 = a2 + v13 + 8;
    v9 = (*(*this + 48))(this, 0, v14, 4, &length[1], &v31 + 4);
    if (v9)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return v9;
      }

      *buf = 136315394;
      *&buf[4] = "VorbisComment.mm";
      v33 = 1024;
      v34 = 530;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  VorbisComment::ParsePicture: Read description string length failed";
      goto LABEL_4;
    }

    v15 = bswap32(length[1]);
    length[1] = v15;
    v16 = v13 + v15 + 12;
    if (v16 > *a3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return 4294967246;
      }

      *buf = 136315394;
      *&buf[4] = "VorbisComment.mm";
      v33 = 1024;
      v34 = 544;
      v12 = MEMORY[0x1E69E9C10];
      goto LABEL_8;
    }

    v17 = &v14[v15];
    v9 = (*(*this + 48))(this, 0, v17 + 20, 4, length, &v31 + 4);
    if (v9)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return v9;
      }

      *buf = 136315394;
      *&buf[4] = "VorbisComment.mm";
      v33 = 1024;
      v34 = 547;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  VorbisComment::ParsePicture: Read picture data length failed";
      goto LABEL_4;
    }

    v18 = length[0];
    v19 = bswap32(length[0]);
    length[0] = v19;
    v20 = v16 + 20;
    v21 = *a3;
    v22 = v16 + 20 + v19;
    if (4294967275u - v16 >= v19 && v22 > v21 && (v22 & 0xFFFFFF) == v21)
    {
      LODWORD(v21) = v19 + v20;
      *a3 = v19 + v20;
    }

    if (v22 > v21)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return 4294967246;
      }

      *buf = 136315394;
      *&buf[4] = "VorbisComment.mm";
      v33 = 1024;
      v34 = 562;
      v12 = MEMORY[0x1E69E9C10];
      goto LABEL_8;
    }

    v9 = 0;
    if (!v18 || v31 != 3)
    {
      return v9;
    }

    std::vector<unsigned char>::resize(&v29, v19);
    begin = v29.__begin_;
    v9 = (*(*this + 48))(this, 0, v17 + 24, length[0], v29.__begin_, &v31 + 4);
    if (v9)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 136315394;
      *&buf[4] = "VorbisComment.mm";
      v33 = 1024;
      v34 = 566;
      v24 = MEMORY[0x1E69E9C10];
      v25 = "%25s:%-5d  VorbisComment::ParsePicture: Read picture data failed";
    }

    else
    {
      if (HIDWORD(v31) >= length[0])
      {
        v26 = CFDataCreate(*MEMORY[0x1E695E480], begin, length[0]);
        applesauce::CF::DataRef::DataRef(buf, v26);
        v27 = *a4;
        *a4 = *buf;
        *buf = v27;
        applesauce::CF::DataRef::~DataRef(buf);
        v9 = 0;
LABEL_42:
        if (begin)
        {
          operator delete(begin);
        }

        return v9;
      }

      v9 = 1685348671;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 136315394;
      *&buf[4] = "VorbisComment.mm";
      v33 = 1024;
      v34 = 567;
      v24 = MEMORY[0x1E69E9C10];
      v25 = "%25s:%-5d  Unexpected eof while reading FLAC picture block";
    }

    _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_ERROR, v25, buf, 0x12u);
    goto LABEL_42;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "VorbisComment.mm";
    v33 = 1024;
    v34 = 507;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "%25s:%-5d  VorbisComment::ParsePicture: Read picture type failed";
LABEL_4:
    _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0x12u);
  }

  return v9;
}

void sub_18F694FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v9)
  {
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::resize(std::vector<char> *a1, unint64_t a2)
{
  v2 = a1->__end_ - a1->__begin_;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<unsigned char>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1->__end_ = &a1->__begin_[a2];
  }
}

applesauce::CF::DataRef *applesauce::CF::DataRef::DataRef(applesauce::CF::DataRef *this, CFTypeRef cf)
{
  *this = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != CFDataGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return this;
}

void sub_18F69509C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>,void,0>(i))
    {
      i -= 16;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void VorbisComment::VorbisComment(VorbisComment *this, DataSource *a2, uint64_t a3, unsigned int a4, int a5)
{
  v54 = *MEMORY[0x1E69E9840];
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  numBytes = 0;
  v45 = 0;
  VorbisComment::Clear(this);
  if (a2 && a4)
  {
    if ((*(*a2 + 48))(a2, 0, a3, 4, &numBytes, &numBytes + 4))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "VorbisComment.mm";
        v51 = 1024;
        v52 = 117;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  VorbisComment::VorbisComment: Read vendor string length failed";
LABEL_33:
        _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, v11, __p, 0x12u);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    v12 = numBytes;
    if (numBytes + 4 > a4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "VorbisComment.mm";
        v51 = 1024;
        v52 = 121;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  VorbisComment::VorbisComment: exceed total metadata block size";
        goto LABEL_33;
      }

LABEL_34:
      VorbisComment::Clear(this);
      return;
    }

    v13 = a3 + 4;
    if (numBytes)
    {
      std::string::basic_string[abi:ne200100](__p, (numBytes + 1));
      v14 = v53 >= 0 ? __p : *__p;
      v15 = (*(*a2 + 48))(a2, 0, v13, numBytes, v14, &numBytes + 4);
      if (v15)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VorbisComment.mm";
          v48 = 1024;
          v49 = 126;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  VorbisComment::VorbisComment: Read vendor string failed", buf, 0x12u);
        }
      }

      else
      {
        v16 = v53 >= 0 ? __p : *__p;
        v17 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v16, numBytes, 0x8000100u, 1u);
        v18 = v17;
        v44 = v17;
        if (v17)
        {
          v19 = CFGetTypeID(v17);
          if (v19 != CFStringGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

          VorbisComment::SetVendorString(this, v18);
          CFRelease(v18);
        }

        else
        {
          VorbisComment::SetVendorString(this, 0);
        }

        v13 += numBytes;
      }

      if (v53 < 0)
      {
        operator delete(*__p);
      }

      if (v15)
      {
        goto LABEL_34;
      }
    }

    if ((*(*a2 + 48))(a2, 0, v13, 4, &v45, &numBytes + 4))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "VorbisComment.mm";
        v51 = 1024;
        v52 = 132;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  VorbisComment::VorbisComment: Read number of user comments failed";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    v20 = a4;
    v21 = v12 + 8;
    if (v12 + 8 > a4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "VorbisComment.mm";
        v51 = 1024;
        v52 = 136;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  VorbisComment::VorbisComment: exceed total metadata block size";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::reserve(this + 1, v45);
    v22 = v13 + 4;
    if (v45)
    {
      v23 = 0;
      alloc = *MEMORY[0x1E695E480];
      v24 = MEMORY[0x1E69E9C10];
      while (1)
      {
        v43 = 0;
        if ((*(*a2 + 48))(a2, 0, v22, 4, &v43, &numBytes + 4))
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_34;
          }

          *__p = 136315394;
          *&__p[4] = "VorbisComment.mm";
          v51 = 1024;
          v52 = 142;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d  VorbisComment::VorbisComment: Read user comment string length failed";
          goto LABEL_33;
        }

        v21 += v43 + 4;
        if (v21 > v20)
        {
          break;
        }

        std::string::basic_string[abi:ne200100](__p, v43 + 1);
        v22 += 4;
        if (v53 >= 0)
        {
          v25 = __p;
        }

        else
        {
          v25 = *__p;
        }

        v26 = (*(*a2 + 48))(a2, 0, v22, v43, v25, &numBytes + 4);
        if (v26)
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "VorbisComment.mm";
            v48 = 1024;
            v49 = 150;
            _os_log_impl(&dword_18F5DF000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d  VorbisComment::VorbisComment: Read user comment string failed", buf, 0x12u);
          }

          v27 = 0;
        }

        else
        {
          v22 += v43;
          if (v53 < 0)
          {
            v28 = *__p;
            v29 = *__p;
          }

          else
          {
            v28 = __p;
            v29 = __p;
          }

          v30 = strchr(v29, 61);
          if (v30)
          {
            v31 = v30;
            v32 = CFStringCreateWithBytes(alloc, v28, v30 - v28, 0x8000100u, 1u);
            applesauce::CF::StringRef::from_create(buf, v32);
            if (v53 >= 0)
            {
              v33 = __p;
            }

            else
            {
              v33 = *__p;
            }

            v34 = CFStringCreateWithBytes(alloc, v31 + 1, v33 - (v31 + 1) + v43, 0x8000100u, 1u);
            applesauce::CF::StringRef::from_create(&v42, v34);
            if (*buf && v42)
            {
              v55.length = CFStringGetLength(v32);
              v55.location = 0;
              if (CFStringCompareWithOptions(v32, @"METADATA_BLOCK_PICTURE", v55, 1uLL))
              {
                VorbisComment::AddUserComment(this, *buf, &v42);
              }

              else
              {
                applesauce::CF::DataRef::DataRef(&cf, *(this + 4));
                v36 = cf;
                applesauce::CF::DataRef::~DataRef(&cf);
                if (!v36)
                {
                  cf = 0;
                  VorbisComment::ConvertBase64FieldValueToAlbumArtwork(&v42, &cf, v37);
                  applesauce::CF::DataRef::DataRef(&v40, cf);
                  applesauce::CF::DataRef::operator=(this + 4, v40);
                  applesauce::CF::DataRef::~DataRef(&v40);
                  applesauce::CF::DataRef::~DataRef(&cf);
                }
              }
            }

            applesauce::CF::StringRef::~StringRef(&v42);
            applesauce::CF::StringRef::~StringRef(buf);
            v26 = 0;
            v27 = 1;
          }

          else
          {
            v35 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "VorbisComment.mm";
              v48 = 1024;
              v49 = 153;
              _os_log_impl(&dword_18F5DF000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d  VorbisComment::VorbisComment: could not find equal sign in user comment", buf, 0x12u);
            }

            v27 = 0;
            v26 = -50;
          }
        }

        if (v53 < 0)
        {
          operator delete(*__p);
        }

        if ((v27 & 1) == 0)
        {
          goto LABEL_87;
        }

        ++v23;
        v24 = MEMORY[0x1E69E9C10];
        if (v23 >= v45)
        {
          goto LABEL_70;
        }
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *__p = 136315394;
      *&__p[4] = "VorbisComment.mm";
      v51 = 1024;
      v52 = 146;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  VorbisComment::VorbisComment: exceed total metadata block size";
      goto LABEL_33;
    }

    v26 = 0;
LABEL_70:
    if (a5)
    {
      if (v21 >= v20)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        *__p = 136315394;
        *&__p[4] = "VorbisComment.mm";
        v51 = 1024;
        v52 = 176;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d  VorbisComment::VorbisComment: exceed total metadata block size";
        goto LABEL_33;
      }

      LOBYTE(v42) = 0;
      v26 = (*(*a2 + 48))(a2, 0, v22, 1, &v42, &numBytes + 4);
      if (v26 || !HIDWORD(numBytes))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *__p = 136315394;
          *&__p[4] = "VorbisComment.mm";
          v51 = 1024;
          v52 = 179;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  VorbisComment::VorbisComment: Read of framing bit failed", __p, 0x12u);
        }
      }

      else if (v42)
      {
        v26 = 0;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *__p = 136315394;
          *&__p[4] = "VorbisComment.mm";
          v51 = 1024;
          v52 = 181;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  VorbisComment::VorbisComment: Framing bit not set", __p, 0x12u);
        }

        v26 = -50;
      }
    }

LABEL_87:
    if (v26)
    {
      goto LABEL_34;
    }
  }
}

void sub_18F695B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, const void **a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  applesauce::CF::DataRef::~DataRef(&a13);
  applesauce::CF::StringRef::~StringRef(&a14);
  applesauce::CF::StringRef::~StringRef(&a19);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::DataRef::~DataRef(v28 + 4);
  a19 = v28 + 1;
  std::vector<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&a19);
  applesauce::CF::StringRef::~StringRef(v28);
  _Unwind_Resume(a1);
}

uint64_t VorbisComment::GetVorbisCommentFieldList(const void **a1, unsigned int *a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (*a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4 == v3;
  }

  if (v6)
  {
    return 0;
  }

  v8 = (v4 - v3) >> 4;
  v9 = 24 * v8 + 16;
  if (*a2 < v9)
  {
    return 561211770;
  }

  if (24 * v8 == -16)
  {
    return 0;
  }

  v18 = *a1;
  keys = @"VENDOR";
  if (v5)
  {
    *a3 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &v18, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v3 = a1[1];
    v4 = a1[2];
  }

  *(a3 + 8) = v8;
  if (v3 != v4)
  {
    v13 = 0;
    v14 = a3 + 16;
    do
    {
      v16 = *v3;
      v15 = *(v3 + 1);
      v17 = (v14 + 24 * v13);
      *v17 = *v3;
      v17[1] = v15;
      if (v16)
      {
        CFRetain(v16);
        v15 = v17[1];
      }

      if (v15)
      {
        CFRetain(v15);
      }

      v17[2] = 0;
      ++v13;
      v3 += 16;
    }

    while (v3 != v4);
  }

  result = 0;
  *a2 = v9;
  return result;
}

void VorbisComment::SetVendorString(const void **this, const __CFString *a2)
{
  Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
  v4 = Copy;
  if (Copy)
  {
    v5 = CFGetTypeID(Copy);
    if (v5 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    VorbisComment::SetVendorString(this, v4);
    CFRelease(v4);
  }

  else
  {

    VorbisComment::SetVendorString(this, 0);
  }
}

void sub_18F695E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

void VorbisComment::RemoveUserCommentsWithFieldName(VorbisComment *this, const __CFString *a2)
{
  v2 = *(this + 1);
  if (v2 != *(this + 2))
  {
    do
    {
      v5 = *v2;
      v13.length = CFStringGetLength(*v2);
      v13.location = 0;
      if (CFStringCompareWithOptions(v5, a2, v13, 1uLL))
      {
        v2 += 2;
        v6 = *(this + 2);
      }

      else
      {
        v7 = *(this + 2);
        if (v2 + 2 == v7)
        {
          v6 = v2;
        }

        else
        {
          v8 = v2;
          v6 = v2;
          do
          {
            v9 = *(v6 + 1);
            v6 += 2;
            v10 = *v8;
            v11 = v8[1];
            *v8 = v9;
            *v6 = v10;
            v8[3] = v11;
            v12 = v8 + 4;
            v8 = v6;
          }

          while (v12 != v7);
          v7 = *(this + 2);
        }

        while (v7 != v6)
        {
          v7 -= 16;
          std::allocator_traits<std::allocator<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef,applesauce::CF::StringRef>,void,0>(v7);
        }

        *(this + 2) = v6;
      }
    }

    while (v2 != v6);
  }
}

void VorbisComment::FillInfoDictionary(const __CFString **this, CACFDictionary *a2)
{
  if (*this)
  {
    CACFDictionary::AddString(a2, @"source encoder", *this);
  }

  else if (this[2] == this[1])
  {
    return;
  }

  if (sInitKeyDictionariesOnce != -1)
  {
    dispatch_once_f(&sInitKeyDictionariesOnce, 0, InitializeKeyDictionaries);
  }

  v4 = this[1];
  v5 = this[2];
  if (v4 != v5)
  {
    v6 = sVorbisCommentKeysToInfoDictionaryKeys;
    v7 = *MEMORY[0x1E695E480];
    do
    {
      Length = CFStringGetLength(*v4);
      MutableCopy = CFStringCreateMutableCopy(v7, Length, *v4);
      CFStringUppercase(MutableCopy, 0);
      cf = MutableCopy;
      if (MutableCopy)
      {
        v10 = CFGetTypeID(MutableCopy);
        if (v10 != CFStringGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }

        v11 = cf;
      }

      else
      {
        v11 = 0;
      }

      Value = CFDictionaryGetValue(v6, v11);
      if (Value && (CACFDictionary::HasKey(a2, Value) & 1) == 0)
      {
        CACFDictionary::AddString(a2, Value, v4[1]);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      v4 += 2;
    }

    while (v4 != v5);
  }
}

void sub_18F6960D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

CFDictionaryRef InitializeKeyDictionaries(void *a1)
{
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], &sVorbisCommentKeys, &sInfoDictionaryKeys, 9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  sVorbisCommentKeysToInfoDictionaryKeys = result;
  return result;
}

uint64_t VorbisComment::FillLoudnessInfoDictionary(VorbisComment *this, CACFDictionary *a2)
{
  v4 = 2003334207;
  if (__PAIR128__(*(this + 2), 0) != *this)
  {
    v5 = MEMORY[0x1E695E9D8];
    v6 = MEMORY[0x1E695E9E8];
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v29 = 257;
    v26 = CFDictionaryCreateMutable(0, 0, v5, v6);
    v27 = 257;
    v8 = *(this + 1);
    v7 = *(this + 2);
    if (v8 != v7)
    {
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = *v8;
        Length = CFStringGetLength(*v8);
        v30.location = 0;
        v30.length = Length;
        if (CFStringCompareWithOptions(v11, @"LOUDNESS", v30, 1uLL))
        {
          v31.location = 0;
          v31.length = Length;
          if (CFStringCompareWithOptions(v11, @"iTunLOUD", v31, 0))
          {
            v32.location = 0;
            v32.length = Length;
            if (CFStringCompareWithOptions(v11, @"iTunNORM", v32, 0))
            {
              AddTextToReplayGainDict(v11, v8[1], &v26);
            }

            else if (!CACFDictionary::Size(&Mutable))
            {
              applesauce::CF::convert_to<std::string,0>(&__p, v8[1]);
              v17 = (v25 & 0x80u) == 0 ? &__p : __p;
              ParseiTunesNORMData(v17, &Mutable, v16);
              if (v25 < 0)
              {
                operator delete(__p);
              }
            }

            if ((v10 & 1) == 0)
            {
LABEL_32:
              v10 = 0;
              goto LABEL_33;
            }
          }

          else if ((v10 & 1) == 0)
          {
            applesauce::CF::convert_to<std::string,0>(&__p, v8[1]);
            cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v22 = 257;
            if ((v25 & 0x80u) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if ((v25 & 0x80u) == 0)
            {
              v14 = v25;
            }

            else
            {
              v14 = v24;
            }

            v15 = ParseiTunesLOUDData(p_p, v14, &cf);
            if (!v15)
            {
              CACFDictionary::SetCFMutableDictionaryFromCopy(a2, cf, 1);
              v9 += CACFDictionary::Size(&cf);
            }

            CACFDictionary::~CACFDictionary(&cf);
            if (v25 < 0)
            {
              operator delete(__p);
              if (v15)
              {
                goto LABEL_32;
              }
            }

            else if (v15)
            {
              goto LABEL_32;
            }
          }
        }

        else if ((v10 & 1) == 0)
        {
          applesauce::CF::convert_to<std::string,0>(&__p, v8[1]);
          operator new[]();
        }

        if (CACFDictionary::Size(&Mutable) && CACFDictionary::Size(&v26) == 4)
        {
          goto LABEL_38;
        }

        v10 = 1;
LABEL_33:
        v8 += 2;
        if (v8 == v7)
        {
          goto LABEL_38;
        }
      }
    }

    v9 = 0;
LABEL_38:
    if (CACFDictionary::Size(&Mutable))
    {
      v18 = CACFDictionary::Size(&Mutable);
      CACFDictionary::AddDictionary(a2, @"sound check info", Mutable);
      v9 += v18;
    }

    if (CACFDictionary::Size(&v26))
    {
      v19 = CACFDictionary::Size(&v26);
      CACFDictionary::AddDictionary(a2, @"REPLAYGAIN", v26);
      v9 += v19;
    }

    CACFDictionary::~CACFDictionary(&v26);
    CACFDictionary::~CACFDictionary(&Mutable);
    if (v9)
    {
      return 0;
    }

    else
    {
      return 2003334207;
    }
  }

  return v4;
}

void sub_18F6966A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  CACFDictionary::~CACFDictionary(&a18);
  CACFDictionary::~CACFDictionary(&a20);
  _Unwind_Resume(a1);
}

CFMutableDictionaryRef CACFDictionary::SetCFMutableDictionaryFromCopy(CACFDictionary *this, CFDictionaryRef theDict, char a3)
{
  if (*(this + 8) == 1)
  {
    v6 = *this;
    if (*this)
    {
      CFRelease(v6);
    }
  }

  result = CFDictionaryCreateMutableCopy(0, 0, theDict);
  *this = result;
  *(this + 9) = 1;
  *(this + 8) = a3;
  return result;
}

void applesauce::CF::details::parse_object<minijson::const_buffer_context>(CFDictionaryRef *a1, minijson::detail::buffer_context_base *a2, int a3)
{
  v48 = 0;
  v49 = 0;
  v47 = &v48;
  v4 = *(a2 + 1);
  if (v4 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &unk_1F0325A28;
    v9 = (a2 + 40);
    v42 = 12;
    goto LABEL_102;
  }

  LOBYTE(v6) = 0;
  v50 = 0;
  if (*a2 <= 2u)
  {
    v7 = 8 * (*a2 & 3);
    v6 = 0x5B7B00u >> v7;
    v50 = 1u >> v7;
  }

  v8 = 0;
  *a2 = 0;
  v9 = (a2 + 40);
  v45 = *MEMORY[0x1E695E4D0];
  v44 = *MEMORY[0x1E695E4C0];
  v10 = "";
  v11 = MEMORY[0x1E69E9830];
LABEL_5:
  while (2)
  {
    v12 = v50;
    while (1)
    {
      while (1)
      {
        do
        {
          if (*(a2 + 1) != v4)
          {
            exception = __cxa_allocate_exception(0x18uLL);
            *exception = &unk_1F0325A28;
            v42 = 11;
            goto LABEL_102;
          }

          if (v12)
          {
            v13 = *(a2 + 5);
            if (v13 >= *(a2 + 4))
            {
              v15 = 0;
              LOBYTE(v6) = 0;
              goto LABEL_13;
            }

            v14 = *(a2 + 2);
            *(a2 + 5) = v13 + 1;
            LOBYTE(v6) = *(v14 + v13);
          }

          v15 = v6;
          if ((v6 & 0x80) != 0)
          {
            v16 = __maskrune(v6, 0x4000uLL);
            goto LABEL_14;
          }

LABEL_13:
          v16 = *(v11 + 4 * v15 + 60) & 0x4000;
LABEL_14:
          v12 = 1;
        }

        while (v16);
        if (v8 <= 2)
        {
          break;
        }

        if (v8 == 3)
        {
          v8 = 4;
          if (v6 != 58)
          {
            exception = __cxa_allocate_exception(0x18uLL);
            *exception = &unk_1F0325A28;
            v42 = 9;
            goto LABEL_102;
          }
        }

        else
        {
          if (v8 != 5)
          {
            v50 = 1;
            v51 = v6;
            minijson::detail::parse_value_helper<minijson::const_buffer_context>(&v52, a2, &v51, &v50);
            if (v52 <= 2)
            {
              if (v52)
              {
                if (v52 != 1)
                {
                  if (v52 != 2)
                  {
                    goto LABEL_71;
                  }

                  if (v54)
                  {
                    v17 = v45;
                  }

                  else
                  {
                    v17 = v44;
                  }

                  v58 = v17;
                  std::string::basic_string[abi:ne200100]<0>(&valuePtr, v10);
                  p_valuePtr = &valuePtr;
                  v18 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v47, &valuePtr, &p_valuePtr);
                  v19 = v18[7];
                  v18[7] = v17;
                  v58 = v19;
                  if (SHIBYTE(v57) < 0)
                  {
                    operator delete(valuePtr);
                    if (!v19)
                    {
                      goto LABEL_71;
                    }
                  }

                  else if (!v19)
                  {
                    goto LABEL_71;
                  }

                  goto LABEL_68;
                }

                valuePtr = *(&v54 + 1);
                v58 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
                if (!v58)
                {
                  v43 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v43, "Could not construct");
                }

                std::string::basic_string[abi:ne200100]<0>(&valuePtr, v10);
                p_valuePtr = &valuePtr;
                v24 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v47, &valuePtr, &p_valuePtr);
                v22 = v24[7];
                v24[7] = v58;
                v58 = v22;
                if (SHIBYTE(v57) < 0)
                {
                  operator delete(valuePtr);
                  v22 = v58;
                  if (!v58)
                  {
                    goto LABEL_71;
                  }
                }

                else if (!v22)
                {
                  goto LABEL_71;
                }
              }

              else
              {
                applesauce::CF::TypeRef::TypeRef(&v58, v53);
                std::string::basic_string[abi:ne200100]<0>(&valuePtr, v10);
                p_valuePtr = &valuePtr;
                v21 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v47, &valuePtr, &p_valuePtr);
                v22 = v21[7];
                v21[7] = v58;
                v58 = v22;
                if (SHIBYTE(v57) < 0)
                {
                  operator delete(valuePtr);
                  v22 = v58;
                  if (!v58)
                  {
                    goto LABEL_71;
                  }
                }

                else if (!v22)
                {
                  goto LABEL_71;
                }
              }

              CFRelease(v22);
              goto LABEL_71;
            }

            switch(v52)
            {
              case 3:
                applesauce::CF::details::parse_object<minijson::const_buffer_context>(&v58, a2);
                std::string::basic_string[abi:ne200100]<0>(&valuePtr, v10);
                p_valuePtr = &valuePtr;
                v23 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v47, &valuePtr, &p_valuePtr);
                v19 = v23[7];
                v23[7] = v58;
                v58 = v19;
                if (SHIBYTE(v57) < 0)
                {
                  operator delete(valuePtr);
                  if (!v19)
                  {
                    goto LABEL_71;
                  }

                  break;
                }

                if (!v19)
                {
                  goto LABEL_71;
                }

                break;
              case 4:
                applesauce::CF::details::parse_array<minijson::const_buffer_context>(&v58, a2);
                std::string::basic_string[abi:ne200100]<0>(&valuePtr, v10);
                p_valuePtr = &valuePtr;
                v25 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v47, &valuePtr, &p_valuePtr);
                v19 = v25[7];
                v25[7] = v58;
                v58 = v19;
                if (SHIBYTE(v57) < 0)
                {
                  operator delete(valuePtr);
                  if (!v19)
                  {
                    goto LABEL_71;
                  }

                  break;
                }

                if (!v19)
                {
                  goto LABEL_71;
                }

                break;
              case 5:
                v58 = 0;
                std::string::basic_string[abi:ne200100]<0>(&valuePtr, v10);
                p_valuePtr = &valuePtr;
                v20 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v47, &valuePtr, &p_valuePtr);
                v19 = v20[7];
                v20[7] = 0;
                v58 = v19;
                if (SHIBYTE(v57) < 0)
                {
                  operator delete(valuePtr);
                  if (!v19)
                  {
                    goto LABEL_71;
                  }

                  break;
                }

                if (!v19)
                {
LABEL_71:
                  v8 = 5;
                  LOBYTE(v6) = v51;
                  if (!v51)
                  {
                    v26 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v26, "This line should never be reached, please file a bug report");
                  }

                  goto LABEL_5;
                }

                break;
              default:
                goto LABEL_71;
            }

LABEL_68:
            CFRelease(v19);
            goto LABEL_71;
          }

          v8 = 2;
          if (v6 != 44)
          {
            if (v6 == 125)
            {
              goto LABEL_74;
            }

            exception = __cxa_allocate_exception(0x18uLL);
            *exception = &unk_1F0325A28;
            v42 = 10;
LABEL_102:
            v40 = *v9 - 1;
            if (!*v9)
            {
              v40 = 0;
            }

            exception[1] = v40;
            *(exception + 4) = v42;
          }
        }
      }

      if (v8)
      {
        break;
      }

      v8 = 1;
      if (v6 != 123)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = &unk_1F0325A28;
        v42 = 8;
        goto LABEL_102;
      }
    }

    if (v8 != 1)
    {
      v50 = 1;
      v51 = v6;
      if (v6 != 34)
      {
        goto LABEL_100;
      }

LABEL_39:
      *(a2 + 7) = *(a2 + 3) + *(a2 + 6);
      minijson::detail::read_quoted_string<minijson::const_buffer_context>(a2, a2, a3);
      v10 = *(a2 + 7);
      v8 = 3;
      LOBYTE(v6) = 34;
      continue;
    }

    break;
  }

  v50 = 1;
  v51 = v6;
  if (v6 == 34)
  {
    goto LABEL_39;
  }

  if (v6 != 125)
  {
LABEL_100:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &unk_1F0325A28;
    v42 = 1;
    goto LABEL_102;
  }

LABEL_74:
  v27 = *(a2 + 1);
  if (v27)
  {
    *(a2 + 1) = v27 - 1;
  }

  valuePtr = 0;
  v57 = 0uLL;
  if (v49)
  {
    if (!(v49 >> 60))
    {
      v55 = &valuePtr;
      std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v49);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  v28 = v47;
  if (v47 != &v48)
  {
    v29 = v57;
    do
    {
      if (v29 >= *(&v57 + 1))
      {
        v30 = (v29 - valuePtr) >> 4;
        if ((v30 + 1) >> 60)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v31 = (*(&v57 + 1) - valuePtr) >> 3;
        if (v31 <= v30 + 1)
        {
          v31 = v30 + 1;
        }

        if (*(&v57 + 1) - valuePtr >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v32 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v31;
        }

        v55 = &valuePtr;
        if (v32)
        {
          std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](v32);
        }

        v52 = 0;
        v53 = (16 * v30);
        v54 = (16 * v30);
        std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::TypeRef const&,void,0>((16 * v30), v28 + 32, v28 + 7);
        *&v54 = v54 + 16;
        v33 = &valuePtr[v53 - v57];
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(&valuePtr, valuePtr, v57, v33);
        v34 = valuePtr;
        v35 = *(&v57 + 1);
        valuePtr = v33;
        v46 = v54;
        v57 = v54;
        *&v54 = v34;
        *(&v54 + 1) = v35;
        v52 = v34;
        v53 = v34;
        std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v52);
        v29 = v46;
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::TypeRef const&,void,0>(v29, v28 + 32, v28 + 7);
        v29 += 16;
      }

      *&v57 = v29;
      v36 = v28[1];
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = v28[2];
          v38 = *v37 == v28;
          v28 = v37;
        }

        while (!v38);
      }

      v28 = v37;
    }

    while (v37 != &v48);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&valuePtr);
  v52 = &valuePtr;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v52);
  *a1 = CFDictionaryRef;
  std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(v48);
}

void sub_18F697004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef((v27 - 96));
  std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(a14);
  _Unwind_Resume(a1);
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 7);
    if (v2)
    {
      CFRelease(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(char **a1)
{
  v2 = (a1[1] - *a1) >> 4;
  keys = 0;
  v33 = 0;
  v34 = 0;
  std::vector<void const*>::reserve(&keys, v2);
  values = 0;
  v30 = 0;
  v31 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v4 = *a1;
  v3 = a1[1];
  v5 = keys;
  v6 = values;
  v28 = v3;
  if (v4 != v3)
  {
    v27 = v2;
    v7 = v33;
    v8 = v34;
    v10 = v30;
    v9 = v31;
    do
    {
      v11 = *v4;
      if (!*v4 || !*(v4 + 1))
      {
        keys = v5;
        values = v6;
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (v7 >= v8)
      {
        v12 = v7 - v5;
        v13 = (v7 - v5) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          keys = v5;
          values = v6;
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        if ((v8 - v5) >> 2 > v14)
        {
          v14 = (v8 - v5) >> 2;
        }

        if (v8 - v5 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = (8 * v13);
        v8 = 0;
        *v16 = v11;
        v7 = (v16 + 1);
        memcpy(0, v5, v12);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      v17 = *(v4 + 1);
      if (v10 >= v9)
      {
        v18 = v10 - v6;
        v19 = (v10 - v6) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          keys = v5;
          values = v6;
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        if ((v9 - v6) >> 2 > v20)
        {
          v20 = (v9 - v6) >> 2;
        }

        if (v9 - v6 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v21);
        }

        v22 = (8 * v19);
        v9 = 0;
        *v22 = v17;
        v10 = (v22 + 1);
        memcpy(0, v6, v18);
        if (v6)
        {
          operator delete(v6);
        }

        v6 = 0;
      }

      else
      {
        *v10 = v17;
        v10 += 8;
      }

      v4 += 16;
    }

    while (v4 != v28);
    v33 = v7;
    v34 = v8;
    v31 = v9;
    keys = v5;
    values = v6;
    v30 = v10;
    v2 = v27;
  }

  v23 = CFDictionaryCreate(0, v5, v6, v2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v23)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  return v23;
}

void sub_18F697474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_free_exception(v14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void *std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::TypeRef const&,void,0>(void *a1, const UInt8 *a2, const void **a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  result = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = *a3;
  if (v8)
  {
    result = CFRetain(v8);
  }

  a1[1] = v8;
  return result;
}

void std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(i))
    {
      i -= 16;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      a4[1] = v6[1];
      v6[1] = 0;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v5);
      v5 += 2;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 16;
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v3 - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::vector<void const*>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }
}

void *minijson::detail::read_quoted_string<minijson::const_buffer_context>(minijson::detail::buffer_context_base *this, uint64_t a2, int a3)
{
  v45 = 0;
  v44 = 0;
  v4 = *(this + 5);
  if (v4 >= *(this + 4))
  {
LABEL_72:
    exception = __cxa_allocate_exception(0x18uLL);
    v27 = *(this + 5);
    v28 = v27 != 0;
    v29 = v27 - 1;
    if (!v28)
    {
      v29 = 0;
    }

    *exception = &unk_1F0325A28;
    exception[1] = v29;
    v30 = 5;
    goto LABEL_75;
  }

  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = MEMORY[0x1E69E9830];
  while (1)
  {
    v9 = *(this + 2);
    *(this + 5) = v4 + 1;
    v10 = *(v9 + v4);
    if (!v10)
    {
      goto LABEL_72;
    }

    if (v7 != 3)
    {
      break;
    }

    *(&v44 + v5) = v10;
    if (v5 == 3)
    {
      for (i = 0; i != 4; ++i)
      {
        v12 = *(&v44 + i);
        if (v12 < 0 || (*(v8 + 4 * v12 + 60) & 0x10000) == 0)
        {
          v32 = __cxa_allocate_exception(1uLL);
        }
      }

      v13 = minijson::detail::parse_long(&v44, 0x10);
      if (!(v13 | v6))
      {
        v35 = __cxa_allocate_exception(0x18uLL);
        v36 = *(this + 5);
        v28 = v36 != 0;
        v37 = v36 - 1;
        if (!v28)
        {
          v37 = 0;
        }

        *v35 = &unk_1F0325A28;
        v35[1] = v37;
        *(v35 + 4) = 13;
      }

      if (v6)
      {
        if (((v6 + 0x2000) >> 11) > 0x1Eu)
        {
          if ((v6 >> 10) > 0x36u || ((v13 + 0x2000) >> 10) <= 0x3Eu)
          {
LABEL_84:
            v38 = __cxa_allocate_exception(1uLL);
          }

          v20 = ((v6 + 10240) << 10) + v13 + 74752;
          v14 = (v20 >> 18) | 0xF0;
          v17 = (v20 >> 12) & 0x3F | 0x80;
          v16 = (v20 >> 6) & 0x3F | 0x80;
          v15 = ((v13 & 0x3F) << 24) | 0x80000000;
        }

        else
        {
          if (v13)
          {
            goto LABEL_84;
          }

          v14 = v6;
          if (v6 >= 0x80u)
          {
            v15 = 0;
            if (v6 > 0x7FFu)
            {
              v17 = (v6 >> 6) & 0x3F | 0x80;
              v16 = v6 & 0x3F | 0x80;
              v14 = (v6 >> 12) | 0xE0;
            }

            else
            {
              v16 = 0;
              v17 = v6 & 0x3F | 0x80;
              v14 = (v6 >> 6) | 0xC0;
            }
          }

          else
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
          }
        }

        v21 = 0;
        v43 = v15 | (v16 << 16) | (v17 << 8) | v14;
        do
        {
          if (v21 && !*(&v43 + v21))
          {
            break;
          }

          minijson::detail::buffer_context_base::write(this, *(&v43 + v21++));
        }

        while (v21 != 4);
LABEL_68:
        v5 = 0;
LABEL_69:
        v6 = 0;
LABEL_70:
        v7 = 1;
        goto LABEL_71;
      }

      if (v13 >> 10 != 54)
      {
        if (((v13 + 0x2000) >> 11) > 0x1Eu)
        {
          v41 = __cxa_allocate_exception(1uLL);
        }

        v22 = v13;
        if (v13 >= 0x80u)
        {
          if (v13 > 0x7FFu)
          {
            v22 = (v13 >> 12) | 0xE0;
            v24 = (v13 >> 6) & 0x3F | 0x80;
            v23 = ((v13 & 0x3F) << 16) | 0x800000;
          }

          else
          {
            v23 = 0;
            v22 = (v13 >> 6) | 0xC0;
            v24 = v13 & 0x3F | 0x80;
          }
        }

        else
        {
          v23 = 0;
          v24 = 0;
        }

        v25 = 0;
        v42 = v23 | (v24 << 8) | v22;
        do
        {
          if (v25 && !*(&v42 + v25))
          {
            break;
          }

          minijson::detail::buffer_context_base::write(this, *(&v42 + v25++));
        }

        while (v25 != 4);
        goto LABEL_68;
      }

      v5 = 0;
      v7 = 1;
      v6 = v13;
    }

    else
    {
      v7 = 3;
      ++v5;
    }

LABEL_71:
    v4 = *(this + 5);
    if (v4 >= *(this + 4))
    {
      goto LABEL_72;
    }
  }

  if (v7 == 2)
  {
    if (v10 <= 101)
    {
      if (v10 > 91)
      {
        if (v10 == 92)
        {
          v18 = this;
          v19 = 92;
        }

        else
        {
          if (v10 != 98)
          {
            goto LABEL_85;
          }

          v18 = this;
          v19 = 8;
        }
      }

      else if (v10 == 34)
      {
        v18 = this;
        v19 = 34;
      }

      else
      {
        if (v10 != 47)
        {
          goto LABEL_85;
        }

        v18 = this;
        v19 = 47;
      }
    }

    else if (v10 <= 113)
    {
      if (v10 == 102)
      {
        v18 = this;
        v19 = 12;
      }

      else
      {
        if (v10 != 110)
        {
LABEL_85:
          exception = __cxa_allocate_exception(0x18uLL);
          v39 = *(this + 5);
          v28 = v39 != 0;
          v40 = v39 - 1;
          if (!v28)
          {
            v40 = 0;
          }

          *exception = &unk_1F0325A28;
          exception[1] = v40;
          v30 = 3;
          goto LABEL_75;
        }

        v18 = this;
        v19 = 10;
      }
    }

    else
    {
      switch(v10)
      {
        case 'r':
          v18 = this;
          v19 = 13;
          break;
        case 't':
          v18 = this;
          v19 = 9;
          break;
        case 'u':
          v7 = 3;
          goto LABEL_71;
        default:
          goto LABEL_85;
      }
    }

    minijson::detail::buffer_context_base::write(v18, v19);
    goto LABEL_70;
  }

  if (v10 == 92)
  {
    v7 = 2;
    goto LABEL_71;
  }

  if (v6)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v33 = *(this + 5);
    v28 = v33 != 0;
    v34 = v33 - 1;
    if (!v28)
    {
      v34 = 0;
    }

    *exception = &unk_1F0325A28;
    exception[1] = v34;
    v30 = 2;
LABEL_75:
    *(exception + 4) = v30;
  }

  if (v10 != 34)
  {
    minijson::detail::buffer_context_base::write(this, v10);
    goto LABEL_69;
  }

  return minijson::detail::buffer_context_base::write(this, 0);
}

void sub_18F697DB0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    exception = __cxa_allocate_exception(0x18uLL);
    v4 = *(v2 + 40);
    v5 = v4 != 0;
    v6 = v4 - 1;
    if (!v5)
    {
      v6 = 0;
    }

    *exception = &unk_1F0325A28;
    exception[1] = v6;
    *(exception + 4) = 4;
  }

  _Unwind_Resume(exception_object);
}

uint64_t minijson::detail::parse_value_helper<minijson::const_buffer_context>(uint64_t result, minijson::detail::buffer_context_base *this, _BYTE *a3, _BYTE *a4)
{
  v5 = result;
  v6 = *a3;
  switch(v6)
  {
    case '""':
      *(this + 7) = *(this + 3) + *(this + 6);
      result = minijson::detail::read_quoted_string<minijson::const_buffer_context>(this, this, a3);
      v8 = *(this + 7);
      *v5 = 0;
      *(v5 + 4) = 0;
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(v5 + 8) = v8;
      return result;
    case '[':
      *result = 4;
      *(result + 4) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 8) = "";
      v7 = 2;
      goto LABEL_6;
    case '{':
      *result = 3;
      *(result + 4) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 8) = "";
      v7 = 1;
LABEL_6:
      *this = v7;
      ++*(this + 1);
      return result;
  }

  *(this + 7) = *(this + 3) + *(this + 6);
  if (v6)
  {
    minijson::detail::buffer_context_base::write(this, v6);
  }

  v11 = *(this + 5);
  if (v11 >= *(this + 4))
  {
    goto LABEL_23;
  }

  v12 = MEMORY[0x1E69E9830];
  while (1)
  {
    v13 = *(this + 2);
    *(this + 5) = v11 + 1;
    v14 = *(v13 + v11);
    v15 = v14;
    if (v14 <= 92)
    {
      if (v14 == 44)
      {
        goto LABEL_27;
      }

      if (!v14)
      {
        goto LABEL_23;
      }
    }

    else if (v14 == 93 || v14 == 125)
    {
      goto LABEL_27;
    }

    if ((v14 & 0x80000000) == 0)
    {
      if ((*(v12 + 4 * v14 + 60) & 0x4000) != 0)
      {
        break;
      }

      goto LABEL_22;
    }

    if (__maskrune(v14, 0x4000uLL))
    {
      break;
    }

LABEL_22:
    minijson::detail::buffer_context_base::write(this, v15);
    v11 = *(this + 5);
    if (v11 >= *(this + 4))
    {
      goto LABEL_23;
    }
  }

  if (!v15)
  {
LABEL_23:
    exception = __cxa_allocate_exception(0x18uLL);
    v17 = *(this + 5);
    v18 = v17 != 0;
    v19 = v17 - 1;
    if (!v18)
    {
      v19 = 0;
    }

    *exception = &unk_1F0325A28;
    exception[1] = v19;
    *(exception + 4) = 7;
  }

LABEL_27:
  minijson::detail::buffer_context_base::write(this, 0);
  v20 = *(this + 7);
  if (!strcmp(v20, "true"))
  {
    v24 = 2;
    result = 1;
    v21 = 1.0;
LABEL_33:
    v23 = 1;
    v22 = 1;
    goto LABEL_34;
  }

  v21 = 0.0;
  if (!strcmp(v20, "false"))
  {
    result = 0;
    v24 = 2;
    goto LABEL_33;
  }

  if (!strcmp(v20, "null"))
  {
    result = 0;
    v23 = 0;
    v22 = 0;
    v24 = 5;
  }

  else
  {
    result = minijson::detail::parse_long(v20, 0xA);
    v21 = result;
    v22 = 1;
    v23 = 1;
    v24 = 1;
  }

LABEL_34:
  *v5 = v24;
  *(v5 + 4) = v22;
  *(v5 + 5) = v23;
  *(v5 + 8) = v20;
  *(v5 + 16) = result;
  *(v5 + 24) = v21;
  *a3 = v15;
  *a4 = 0;
  return result;
}

void sub_18F6980FC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    minijson::detail::parse_double(v2, v3);
    __cxa_end_catch();
    JUMPOUT(0x18F698084);
  }

  _Unwind_Resume(exception_object);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRef::TypeRef(applesauce::CF::TypeRef *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  if ((v9 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = v9;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = CFStringCreateWithBytes(0, v3, v4, 0x8000100u, 0);
  *this = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_18F698274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t **a1, void *a2, _OWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v3;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v3 + 4) & 0x80) == 0)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, a2) & 0x80) == 0)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void applesauce::CF::details::parse_array<minijson::const_buffer_context>(CFArrayRef *a1, minijson::detail::buffer_context_base *a2)
{
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v3 = *(a2 + 1);
  if (v3 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &unk_1F0325A28;
    v58 = (a2 + 40);
    v57 = 12;
LABEL_114:
    v54 = *v58 - 1;
    if (!*v58)
    {
      v54 = 0;
    }

    exception[1] = v54;
    *(exception + 4) = v57;
  }

  v4 = 0;
  v5 = *a2;
  v6 = v5 >= 3;
  v7 = v5 < 3;
  v8 = 8 * (*a2 & 3);
  v9 = 0x5B7B00u >> v8;
  v10 = 1u >> v8;
  if (v6)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  *a2 = 0;
  v58 = (a2 + 40);
  v12 = v7 & v10;
  v60 = *MEMORY[0x1E695E4D0];
  v13 = *MEMORY[0x1E695E4C0];
  v14 = MEMORY[0x1E69E9830];
  do
  {
    while (1)
    {
      do
      {
        if (*(a2 + 1) != v3)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = &unk_1F0325A28;
          v57 = 11;
          goto LABEL_114;
        }

        if (v12)
        {
          v15 = *(a2 + 5);
          if (v15 >= *(a2 + 4))
          {
            v17 = 0;
            v11 = 0;
            goto LABEL_13;
          }

          v16 = *(a2 + 2);
          *(a2 + 5) = v15 + 1;
          v11 = *(v16 + v15);
        }

        v17 = v11;
        if (v11 < 0)
        {
          v18 = __maskrune(v11, 0x4000uLL);
          goto LABEL_14;
        }

LABEL_13:
        v18 = *(v14 + 4 * v17 + 60) & 0x4000;
LABEL_14:
        v12 = 1;
      }

      while (v18);
      v68 = 1;
      v69 = v11;
      if (v4 > 1)
      {
        break;
      }

      if (v4)
      {
        if (v11 == 93)
        {
          goto LABEL_105;
        }

LABEL_23:
        minijson::detail::parse_value_helper<minijson::const_buffer_context>(&v64, a2, &v69, &v68);
        if (v64 > 2)
        {
          switch(v64)
          {
            case 3:
              applesauce::CF::details::parse_object<minijson::const_buffer_context>(&v70, a2);
              v26 = v62;
              if (v62 < v63)
              {
                goto LABEL_50;
              }

              v27 = v62 - v61;
              if ((v27 + 1) >> 61)
              {
                std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
              }

              v28 = (v63 - v61) >> 2;
              if (v28 <= v27 + 1)
              {
                v28 = v27 + 1;
              }

              if (v63 - v61 >= 0x7FFFFFFFFFFFFFF8)
              {
                v29 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v28;
              }

              v75 = &v61;
              if (v29)
              {
                std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v29);
              }

              break;
            case 4:
              applesauce::CF::details::parse_array<minijson::const_buffer_context>(&v70, a2);
              v26 = v62;
              if (v62 < v63)
              {
LABEL_50:
                *v26 = v70;
                v24 = v26 + 1;
                goto LABEL_101;
              }

              v27 = v62 - v61;
              if ((v27 + 1) >> 61)
              {
                std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
              }

              v43 = (v63 - v61) >> 2;
              if (v43 <= v27 + 1)
              {
                v43 = v27 + 1;
              }

              if (v63 - v61 >= 0x7FFFFFFFFFFFFFF8)
              {
                v29 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v43;
              }

              v75 = &v61;
              if (v29)
              {
                std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v29);
              }

              break;
            case 5:
              v23 = v62;
              if (v62 >= v63)
              {
                v37 = v62 - v61;
                if ((v37 + 1) >> 61)
                {
                  goto LABEL_119;
                }

                v38 = (v63 - v61) >> 2;
                if (v38 <= v37 + 1)
                {
                  v38 = v37 + 1;
                }

                if (v63 - v61 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v39 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v39 = v38;
                }

                v75 = &v61;
                if (v39)
                {
                  std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v39);
                }

                __p = 0;
                v72 = (8 * v37);
                v74 = 0;
                *(8 * v37) = 0;
                v45 = 8 * v37 + 8;
                goto LABEL_100;
              }

              *v62 = 0;
              v24 = v23 + 1;
LABEL_101:
              v62 = v24;
              goto LABEL_102;
            default:
              goto LABEL_102;
          }

          v44 = (v29 + 8 * v27);
          __p = v29;
          v72 = v44;
          v74 = v29;
          *v44 = v70;
          v45 = (v44 + 1);
          v70 = 0;
          goto LABEL_100;
        }

        switch(v64)
        {
          case 0:
            v25 = v62;
            if (v62 >= v63)
            {
              v31 = v62 - v61;
              if ((v31 + 1) >> 61)
              {
                goto LABEL_119;
              }

              v32 = (v63 - v61) >> 2;
              if (v32 <= v31 + 1)
              {
                v32 = v31 + 1;
              }

              if (v63 - v61 >= 0x7FFFFFFFFFFFFFF8)
              {
                v33 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v33 = v32;
              }

              v75 = &v61;
              if (v33)
              {
                std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v33);
              }

              __p = 0;
              v72 = (8 * v31);
              v73 = 8 * v31;
              v74 = 0;
              applesauce::CF::TypeRef::TypeRef((8 * v31), v65);
              goto LABEL_99;
            }

            applesauce::CF::TypeRef::TypeRef(v62, v65);
            v24 = v25 + 1;
            goto LABEL_101;
          case 1:
            v30 = v62;
            if (v62 < v63)
            {
              std::allocator_traits<std::allocator<applesauce::CF::TypeRef>>::construct[abi:ne200100]<applesauce::CF::TypeRef,double,void,0>(v62, v67);
              v24 = v30 + 1;
              goto LABEL_101;
            }

            v40 = v62 - v61;
            if ((v40 + 1) >> 61)
            {
LABEL_119:
              std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
            }

            v41 = (v63 - v61) >> 2;
            if (v41 <= v40 + 1)
            {
              v41 = v40 + 1;
            }

            if (v63 - v61 >= 0x7FFFFFFFFFFFFFF8)
            {
              v42 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v42 = v41;
            }

            v75 = &v61;
            if (v42)
            {
              std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v42);
            }

            __p = 0;
            v72 = (8 * v40);
            v73 = 8 * v40;
            v74 = 0;
            std::allocator_traits<std::allocator<applesauce::CF::TypeRef>>::construct[abi:ne200100]<applesauce::CF::TypeRef,double,void,0>((8 * v40), v67);
LABEL_99:
            v45 = v73 + 8;
LABEL_100:
            v73 = v45;
            std::vector<applesauce::CF::TypeRef>::__swap_out_circular_buffer(&v61, &__p);
            v24 = v62;
            std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(&__p);
            goto LABEL_101;
          case 2:
            v20 = v62;
            if (v62 >= v63)
            {
              v34 = v62 - v61;
              if ((v34 + 1) >> 61)
              {
                goto LABEL_119;
              }

              v35 = (v63 - v61) >> 2;
              if (v35 <= v34 + 1)
              {
                v35 = v34 + 1;
              }

              if (v63 - v61 >= 0x7FFFFFFFFFFFFFF8)
              {
                v36 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v36 = v35;
              }

              v75 = &v61;
              if (v36)
              {
                std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](v36);
              }

              v46 = (8 * v34);
              __p = 0;
              v72 = (8 * v34);
              v74 = 0;
              v47 = v60;
              if (!v66)
              {
                v47 = v13;
              }

              *v46 = v47;
              v73 = (v46 + 1);
              std::vector<applesauce::CF::TypeRef>::__swap_out_circular_buffer(&v61, &__p);
              v22 = v62;
              std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(&__p);
            }

            else
            {
              v21 = v60;
              if (!v66)
              {
                v21 = v13;
              }

              *v62 = v21;
              v22 = v20 + 1;
            }

            v62 = v22;
            break;
        }

LABEL_102:
        v11 = v69;
        if (!v69)
        {
          v55 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v55, "This line should never be reached, please file a bug report");
        }

        v4 = 3;
        v12 = v68;
      }

      else
      {
        v19 = v11;
        v11 = 91;
        v4 = 1;
        if (v19 != 91)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = &unk_1F0325A28;
          v57 = 8;
          goto LABEL_114;
        }
      }
    }

    if (v4 == 2)
    {
      goto LABEL_23;
    }

    v4 = 2;
  }

  while (v11 == 44);
  if (v11 != 93)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &unk_1F0325A28;
    v57 = 10;
    goto LABEL_114;
  }

LABEL_105:
  v48 = *(a2 + 1);
  if (v48)
  {
    *(a2 + 1) = v48 - 1;
  }

  std::vector<void const*>::vector[abi:ne200100](&__p, v62 - v61);
  v49 = v61;
  v50 = v62;
  v51 = __p;
  if (v61 != v62)
  {
    do
    {
      v52 = *v49++;
      *v51++ = v52;
    }

    while (v49 != v50);
    v51 = __p;
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(v51, v72);
  if (__p)
  {
    v72 = __p;
    operator delete(__p);
  }

  *a1 = CFArray;
  __p = &v61;
  std::vector<applesauce::CF::TypeRef>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_18F698A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  a16 = &a13;
  std::vector<applesauce::CF::TypeRef>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void std::vector<applesauce::CF::TypeRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
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
        v6 = *(v4 - 1);
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void *std::vector<void const*>::vector[abi:ne200100](void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_18F698C3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<void const*>(const void **values, uint64_t a2)
{
  result = CFArrayCreate(0, values, (a2 - values) >> 3, MEMORY[0x1E695E9C0]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

void std::allocator<applesauce::CF::TypeRef>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<applesauce::CF::TypeRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::TypeRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::TypeRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::TypeRef>>::construct[abi:ne200100]<applesauce::CF::TypeRef,double,void,0>(CFNumberRef *a1, double a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}