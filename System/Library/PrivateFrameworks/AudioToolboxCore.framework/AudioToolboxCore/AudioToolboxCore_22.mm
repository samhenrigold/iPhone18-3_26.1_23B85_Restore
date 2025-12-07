uint64_t ID3FileStream::GetPropertyInfo(ID3FileStream *this, signed int a2, unsigned int *a3, unsigned __int8 *a4)
{
  if (a2 > 1768842862)
  {
    if (a2 != 1768842863 && a2 != 1819243876 && a2 != 1935893603)
    {
      return AudioFileStreamObject::GetPropertyInfo(this, a2, a3, a4);
    }
  }

  else if (a2 != 1280922179 && a2 != 1768174433)
  {
    if (a2 == 1768174437)
    {
      if (a3)
      {
        v4 = 4;
LABEL_12:
        *a3 = v4;
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    return AudioFileStreamObject::GetPropertyInfo(this, a2, a3, a4);
  }

  if (a3)
  {
    v4 = 8;
    goto LABEL_12;
  }

LABEL_13:
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

void ID3FileStream::~ID3FileStream(ID3FileStream *this)
{
  ID3FileStream::~ID3FileStream(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032BAA8;
  v2 = *(this + 42);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 44);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 45);
  if (v4)
  {
    CACFDictionary::~CACFDictionary(v4);
    MEMORY[0x193ADF220]();
  }

  v5 = *(this + 46);
  if (v5)
  {
    CACFDictionary::~CACFDictionary(v5);
    MEMORY[0x193ADF220]();
  }

  v6 = *(this + 47);
  if (v6)
  {
    CACFDictionary::~CACFDictionary(v6);
    MEMORY[0x193ADF220]();
  }

  v7 = *(this + 48);
  if (v7)
  {
    CACFDictionary::~CACFDictionary(v7);
    MEMORY[0x193ADF220]();
  }

  v8 = *(this + 55);
  if (v8)
  {
    free(v8);
  }

  v9 = *(this + 60);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 61);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 62);
  if (v11)
  {
    free(v11);
  }

  if (*(this + 616) == 1)
  {
    AudioFileAllowListFilter::~AudioFileAllowListFilter((this + 544));
  }

  if (*(this + 536) == 1)
  {
    v12 = *(this + 64);
    if (v12)
    {
      *(this + 65) = v12;
      operator delete(v12);
    }
  }

  AudioFileStreamObject::~AudioFileStreamObject(this);
}

uint64_t ID3FileFormat::FileDataIsThisFormat(ID3FileFormat *this, unsigned int a2, _BYTE *a3)
{
  if (a2 < 3)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a3 == 17481 && a3[2] == 51)
  {
    return 1;
  }

  return *a3 == 16724 && a3[2] == 71;
}

uint64_t std::optional<AudioFileAllowListFilter>::operator=[abi:ne200100]<AudioFileAllowListFilter const&,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) == 1)
  {
    AudioFileAllowListFilter::operator=(a1, a2);
  }

  else
  {
    *(a1 + 64) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 25) = 0u;
    AudioFileAllowListFilter::operator=(a1, a2);
    *(a1 + 72) = 1;
  }

  return a1;
}

void sub_18F742C5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 64) == 1)
  {
    v3 = *(v1 + 40);
    if (v3)
    {
      *(v1 + 48) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioFileObject::ScanForPackets(AudioFileObject *this, uint64_t a2, DataSource *a3)
{
  if ((*(*this + 248))(this, a2, a3) >= a2)
  {
    return 0;
  }

  else
  {
    return 4294967257;
  }
}

uint64_t MakeSNDSoundStruct(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == 1634492791)
  {
    v8 = 27;
    goto LABEL_24;
  }

  if (v2 == 1970037111)
  {
    v8 = 1;
    goto LABEL_24;
  }

  v3 = 1718449215;
  if (v2 != 1819304813)
  {
    return v3;
  }

  v4 = *(a1 + 12);
  v5 = *(a1 + 32);
  if (v4)
  {
    if (v5 == 32)
    {
      v8 = 6;
      if ((v4 & 2) == 0)
      {
        return v3;
      }

      goto LABEL_24;
    }

    if (v5 == 64)
    {
      v8 = 7;
      if ((v4 & 2) != 0)
      {
LABEL_24:
        v3 = 0;
        v9 = *a1;
        v10 = *(a1 + 28);
        *a2 = 0x1C2E736E64;
        *(a2 + 8) = 0;
        *(a2 + 12) = v8;
        *(a2 + 16) = v9;
        *(a2 + 20) = v10;
      }
    }
  }

  else
  {
    HIDWORD(v7) = v5 - 8;
    LODWORD(v7) = v5 - 8;
    v6 = v7 >> 3;
    if (v6 <= 1)
    {
      if (v6)
      {
        if (v6 != 1)
        {
          return v3;
        }

        v8 = 3;
        if ((v4 & 2) == 0)
        {
          return v3;
        }
      }

      else
      {
        v8 = 2;
      }

      goto LABEL_24;
    }

    if (v6 == 3)
    {
      v8 = 5;
      if ((v4 & 2) == 0)
      {
        return v3;
      }

      goto LABEL_24;
    }

    if (v6 == 2)
    {
      v8 = 4;
      if ((v4 & 2) != 0)
      {
        goto LABEL_24;
      }
    }
  }

  return v3;
}

uint64_t NextAudioFile::UpdateSize(NextAudioFile *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = (*(*this + 232))(this);
  *(this + 37) = v2;
  v8 = 0;
  v9 = bswap32(v2);
  v3 = (*(**(this + 13) + 56))(*(this + 13), 0, 8, 4, &v9, &v8);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "NextAudioFile.cpp";
      v12 = 1024;
      v13 = 336;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  WriteBytes Failed";
LABEL_7:
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0x12u);
    }
  }

  else
  {
    v4 = (*(**(this + 13) + 32))(*(this + 13), (*(this + 37) + *(this + 36)));
    if (v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "NextAudioFile.cpp";
      v12 = 1024;
      v13 = 339;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d  SetSize Failed";
      goto LABEL_7;
    }
  }

  return v4;
}

uint64_t NextAudioFile::UpdateDataFormat(NextAudioFile *this, const AudioStreamBasicDescription *a2)
{
  result = MakeSNDSoundStruct(a2, &v9);
  if (!result)
  {
    result = (*(*this + 184))(this, a2);
    if (!result)
    {
      v5 = vrev32q_s8(v9);
      v6 = v5;
      v5.i64[0] = v10;
      *(this + 19) = vextq_s8(v9, v5, 0xCuLL).u64[0];
      *(this + 40) = v5.i32[1];
      v7 = vrev32_s8(*v5.i8);
      v8 = v11;
      return (*(**(this + 13) + 56))(*(this + 13), 0, 12, 12, &v6 | 0xC, 0);
    }
  }

  return result;
}

uint64_t NextAudioFile::InitializeDataSource(NextAudioFile *this, const AudioStreamBasicDescription *a2)
{
  v3 = 0;
  v13 = *MEMORY[0x1E69E9840];
  mFormatID = a2->mFormatID;
  do
  {
    v5 = sNextFormatIDs[v3];
  }

  while (v5 != mFormatID && v3++ != 2);
  if (v5 != mFormatID)
  {
    return 1718449215;
  }

  SNDSoundStruct = MakeSNDSoundStruct(a2, this + 140);
  if (SNDSoundStruct)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "NextAudioFile.cpp";
      v11 = 1024;
      v12 = 318;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  MakeSNDSoundStruct Failed", &v9, 0x12u);
    }
  }

  else
  {
    NextAudioFile::WriteHeader(this);
  }

  return SNDSoundStruct;
}

void NextAudioFile::WriteHeader(NextAudioFile *this)
{
  v9 = *MEMORY[0x1E69E9840];
  *(this + 9) = 28;
  v2 = vrev32q_s8(*(this + 140));
  v3 = vrev32_s8(*(this + 156));
  v4 = *(this + 41);
  v1 = 0;
  if ((*(**(this + 13) + 56))(*(this + 13), 0, 0, 28, &v2, &v1))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v6 = "NextAudioFile.cpp";
      v7 = 1024;
      v8 = 388;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  WriteBytes Failed", buf, 0x12u);
    }
  }
}

uint64_t NextAudioFile::OpenFromDataSource(NextAudioFile *this)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v2 = (*(**(this + 13) + 48))(*(this + 13), 0, 0, 28, this + 140, &v11);
  v3 = vrev32q_s8(*(this + 140));
  *(this + 140) = v3;
  v4 = vrev32_s8(*(this + 156));
  *(this + 156) = v4;
  if (v2)
  {
    v5 = v2;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "NextAudioFile.cpp";
      v14 = 1024;
      v15[0] = 367;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ReadBytes Failed", buf, 0x12u);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "NextAudioFile.cpp";
      v14 = 1024;
      v15[0] = 300;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "%25s:%-5d  NextAudioFile::OpenFromDataSource - ReadHeader Failed";
LABEL_12:
      _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, v7, buf, 0x12u);
    }
  }

  else
  {
    if (v4.i32[0] >= 0xFFFF0000)
    {
      *(this + 39) = v4.u16[0];
    }

    *(this + 9) = v3.u32[1];
    v8 = ASBDfromSNDSoundStruct(this + 35, buf);
    if (v8 || (v8 = (*(*this + 184))(this, buf), v8))
    {
      v5 = v8;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "NextAudioFile.cpp";
        v14 = 1024;
        v15[0] = 303;
        v6 = MEMORY[0x1E69E9C10];
        v7 = "%25s:%-5d  NextAudioFile::OpenFromDataSource - ParseHeader Failed";
        goto LABEL_12;
      }
    }

    else
    {
      v10 = *(this + 37);
      if (v10 == -1)
      {
        (*(**(this + 13) + 16))(*(this + 13), this + 148);
        v10 = *(this + 37);
      }

      (*(*this + 240))(this, v10);
      (*(*this + 256))(this, (*(this + 37) / *(v15 + 2)));
      (*(*this + 656))(this, *(v15 + 2));
      return 0;
    }
  }

  return v5;
}

uint64_t ASBDfromSNDSoundStruct(_DWORD *a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 12) = 10;
  *a2 = a1[4];
  v2 = a1[5];
  *(a2 + 28) = v2;
  *(a2 + 20) = 1;
  v3 = a1[3];
  result = 1718449215;
  if (v3 > 4)
  {
    if (v3 <= 6)
    {
      if (v3 == 5)
      {
        v5 = 0xE6C70636DLL;
      }

      else
      {
        v5 = 0xB6C70636DLL;
      }

      *(a2 + 8) = v5;
      v6 = 4;
      v7 = 32;
      goto LABEL_21;
    }

    if (v3 == 7)
    {
      *(a2 + 8) = 0xB6C70636DLL;
      v6 = 8;
      v7 = 64;
      goto LABEL_21;
    }

    if (v3 != 27)
    {
      return result;
    }

    v8 = 1634492791;
  }

  else
  {
    if (v3 > 2)
    {
      *(a2 + 8) = 0xE6C70636DLL;
      if (v3 == 3)
      {
        v6 = 2;
        v7 = 16;
      }

      else
      {
        v6 = 3;
        v7 = 24;
      }

      goto LABEL_21;
    }

    if (v3 != 1)
    {
      if (v3 != 2)
      {
        return result;
      }

      *(a2 + 8) = 0xE6C70636DLL;
      goto LABEL_16;
    }

    v8 = 1970037111;
  }

  *(a2 + 8) = v8;
LABEL_16:
  v6 = 1;
  v7 = 8;
LABEL_21:
  result = 0;
  *(a2 + 32) = v7;
  v9 = v6 * v2;
  *(a2 + 24) = v9;
  *(a2 + 16) = v9;
  return result;
}

uint64_t NextAudioFile::Create(NextAudioFile *this, const __CFURL *a2, const AudioStreamBasicDescription *a3)
{
  v6 = 0;
  mFormatID = a3->mFormatID;
  do
  {
    v8 = sNextFormatIDs[v6];
  }

  while (v8 != mFormatID && v6++ != 2);
  if (v8 != mFormatID)
  {
    return 1718449215;
  }

  result = MakeSNDSoundStruct(a3, this + 140);
  if (!result)
  {
    result = AudioFileObject::Create(this, a2, a3);
    if (!result)
    {
      (*(*this + 656))(this, a3->mBytesPerFrame);
      NextAudioFile::WriteHeader(this);
      return 0;
    }
  }

  return result;
}

void NextAudioFile::~NextAudioFile(NextAudioFile *this)
{
  AudioFileObject::~AudioFileObject(this);

  JUMPOUT(0x193ADF220);
}

uint64_t NextAudioFormat::GetHFSCodes(NextAudioFormat *this, unsigned int *a2, void *__dst)
{
  __src[2] = *MEMORY[0x1E69E9840];
  qmemcpy(__src, "sTxNTXeNSTxN", 12);
  v3 = *a2 >> 2;
  if (v3 >= 3)
  {
    v3 = 3;
  }

  v4 = 4 * v3;
  *a2 = v4;
  if (__dst)
  {
    memcpy(__dst, __src, v4);
  }

  return 0;
}

uint64_t NextAudioFormat::GetAvailableStreamDescriptions(NextAudioFormat *this, int a2, unsigned int *a3, void *__dst)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = 1634492791;
  if (a2 == 1634492791 || (v6 = 1970037111, a2 == 1970037111))
  {
    *&v15 = 0;
    outPropertyData = 0u;
    v14 = 0u;
    DWORD2(outPropertyData) = v6;
    ioPropertyDataSize = 40;
    AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, &outPropertyData);
    v9 = 1;
  }

  else
  {
    if (a2 != 1819304813)
    {
      *a3 = 0;
      return 1718449215;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = &v14 + 1;
    outPropertyData = 0u;
    v14 = 0u;
    v8 = -32;
    do
    {
      *(v7 - 3) = 0xE6C70636DLL;
      v7[3] = v8 + 40;
      *v7 = 1;
      v7 += 10;
      v8 += 8;
    }

    while (v8);
    *(&v23 + 1) = 0xB6C70636DLL;
    LODWORD(v25) = 32;
    DWORD1(v24) = 1;
    *&v26 = 0xB6C70636DLL;
    DWORD2(v27) = 64;
    HIDWORD(v26) = 1;
    v9 = 6;
  }

  if (*a3 / 0x28 < v9)
  {
    v9 = *a3 / 0x28;
  }

  v10 = 40 * v9;
  *a3 = v10;
  if (__dst)
  {
    memcpy(__dst, &outPropertyData, v10);
  }

  return 0;
}

uint64_t NextAudioFormat::GetAvailableFormatIDs(NextAudioFormat *this, unsigned int *a2, void *__dst)
{
  v3 = *a2 >> 2;
  if (v3 >= 3)
  {
    v3 = 3;
  }

  v4 = 4 * v3;
  *a2 = v4;
  if (__dst)
  {
    memcpy(__dst, sNextFormatIDs, v4);
  }

  return 0;
}

void NextAudioFormat::GetFileTypeName(NextAudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v5);
  v3 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v3 = sAudioToolboxBundle;
    if (sAudioToolboxBundle)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = CFRetain(@"NeXT/Sun");
    goto LABEL_6;
  }

  if (!sAudioToolboxBundle)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = CFBundleCopyLocalizedString(v3, @"NeXT/Sun", @"NeXT/Sun", @"FileTypeNames");
LABEL_6:
  *a2 = v4;
  CABundleLocker::~CABundleLocker(&v5);
}

const __CFArray *NextAudioFormat::GetMIMETypes(NextAudioFormat *this, const __CFArray **a2)
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"audio/basic";
  v4[1] = @"audio/au";
  v4[2] = @"audio/snd";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v4, 3, MEMORY[0x1E695E9C0]);
  *a2 = result;
  return result;
}

const __CFArray *NextAudioFormat::GetUTIs(NextAudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"public.au-audio";
  values[1] = @"public.ulaw-audio";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  return result;
}

const __CFArray *NextAudioFormat::GetExtensions(NextAudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"snd";
  values[1] = @"au";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  return result;
}

BOOL NextAudioFormat::ExtensionIsThisFormat(NextAudioFormat *this, CFStringRef theString1)
{
  v3 = 1;
  if (CFStringCompare(theString1, @"snd", 1uLL))
  {
    return CFStringCompare(theString1, @"au", 1uLL) == kCFCompareEqualTo;
  }

  return v3;
}

void CA::AudioMetadataDeserializer::AudioMetadataDeserializer(CA::AudioMetadataDeserializer *this, AudioMetadataMemoryPool *a2)
{
  operator new();
}

{
  operator new();
}

double CA::AudioMetadataDeserializer::Impl::Impl(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *a1 = a2;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a1 + 208;
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 1065353216;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 1065353216;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 1065353216;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 1065353216;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 1065353216;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 1065353216;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 1065353216;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 1065353216;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 1065353216;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 1065353216;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 1065353216;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 1065353216;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 1065353216;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 1065353216;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 1065353216;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 1065353216;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 1065353216;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 1065353216;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 1065353216;
  return result;
}

void CA::AudioMetadataDeserializer::~AudioMetadataDeserializer(CA::AudioMetadataDeserializer *this)
{
  std::unique_ptr<CA::AudioMetadataDeserializer::Impl>::reset[abi:ne200100](this, 0);
}

{
  std::unique_ptr<CA::AudioMetadataDeserializer::Impl>::reset[abi:ne200100](this, 0);
}

uint64_t *std::unique_ptr<CA::AudioMetadataDeserializer::Impl>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 944);
    *(v2 + 944) = 0;
    if (v3)
    {
      operator delete(v3);
    }

    v4 = *(v2 + 920);
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = *(v2 + 904);
    *(v2 + 904) = 0;
    if (v6)
    {
      operator delete(v6);
    }

    v7 = *(v2 + 760);
    if (v7)
    {
      do
      {
        v8 = *v7;
        operator delete(v7);
        v7 = v8;
      }

      while (v8);
    }

    v9 = *(v2 + 744);
    *(v2 + 744) = 0;
    if (v9)
    {
      operator delete(v9);
    }

    v10 = *(v2 + 704);
    *(v2 + 704) = 0;
    if (v10)
    {
      operator delete(v10);
    }

    v11 = *(v2 + 424);
    *(v2 + 424) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    v12 = *(v2 + 400);
    if (v12)
    {
      do
      {
        v13 = *v12;
        operator delete(v12);
        v12 = v13;
      }

      while (v13);
    }

    v14 = *(v2 + 384);
    *(v2 + 384) = 0;
    if (v14)
    {
      operator delete(v14);
    }

    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(v2 + 208));
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(v2 + 184));
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(v2 + 160));
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(v2 + 136));
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(v2 + 112));
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(v2 + 88));
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(v2 + 64));
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(v2 + 40));
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(*(v2 + 16));

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<anonymous namespace::BlockFormatID,std::vector<anonymous namespace::FormatID>>,std::__unordered_map_hasher<anonymous namespace::BlockFormatID,std::__hash_value_type<anonymous namespace::BlockFormatID,std::vector<anonymous namespace::FormatID>>,std::hash<anonymous namespace::BlockFormatID>,std::equal_to<anonymous namespace::BlockFormatID>,true>,std::__unordered_map_equal<anonymous namespace::BlockFormatID,std::__hash_value_type<anonymous namespace::BlockFormatID,std::vector<anonymous namespace::FormatID>>,std::equal_to<anonymous namespace::BlockFormatID>,std::hash<anonymous namespace::BlockFormatID>,true>,std::allocator<std::__hash_value_type<anonymous namespace::BlockFormatID,std::vector<anonymous namespace::FormatID>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[3];
      if (v3)
      {
        v1[4] = v3;
        operator delete(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<anonymous namespace::FormatID,std::vector<anonymous namespace::FormatID>>,std::__unordered_map_hasher<anonymous namespace::FormatID,std::__hash_value_type<anonymous namespace::FormatID,std::vector<anonymous namespace::FormatID>>,std::hash<anonymous namespace::FormatID>,std::equal_to<anonymous namespace::FormatID>,true>,std::__unordered_map_equal<anonymous namespace::FormatID,std::__hash_value_type<anonymous namespace::FormatID,std::vector<anonymous namespace::FormatID>>,std::equal_to<anonymous namespace::FormatID>,std::hash<anonymous namespace::FormatID>,true>,std::allocator<std::__hash_value_type<anonymous namespace::FormatID,std::vector<anonymous namespace::FormatID>>>>::~__hash_table(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void *CA::AudioMetadataDeserializer::AudioMetadataDeserializer(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

uint64_t *CA::AudioMetadataDeserializer::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  std::unique_ptr<CA::AudioMetadataDeserializer::Impl>::reset[abi:ne200100](a1, v3);
  return a1;
}

uint64_t CA::AudioMetadataDeserializer::Impl::deserialize(uint64_t *a1, _anonymous_namespace_ *this, unsigned __int8 *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v85 = *MEMORY[0x1E69E9840];
  v78 = 0;
  v77 = 0;
  if (v8)
  {
    v10 = v8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AudioMetadataDeserializer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 503;
      v12 = "%25s:%-5d ...at packet version/type";
      goto LABEL_4;
    }

    return v10;
  }

  v15 = v77;
  if (v77 >= 4u)
  {
    v10 = 4294900723;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return v10;
    }

    *buf = 136315650;
    *&buf[4] = "AudioMetadataDeserializer.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 508;
    v81 = 1024;
    v82 = v15 >> 2;
    v12 = "%25s:%-5d Unsupported packet version (%d)";
    goto LABEL_12;
  }

  if (v77 != 2)
  {
    if (v77 == 3)
    {
      v10 = 4294900722;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        return v10;
      }

      *buf = 136315650;
      *&buf[4] = "AudioMetadataDeserializer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 517;
      v81 = 1024;
      v82 = 3;
      v12 = "%25s:%-5d Unknown packet type (%d)";
LABEL_12:
      v13 = v16;
      v14 = 24;
      goto LABEL_13;
    }

    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(a1[2]);
    a1[1] = (a1 + 2);
    a1[3] = 0;
    a1[2] = 0;
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(a1[5]);
    a1[4] = (a1 + 5);
    a1[6] = 0;
    a1[5] = 0;
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(a1[8]);
    a1[7] = (a1 + 8);
    a1[9] = 0;
    a1[8] = 0;
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(a1[11]);
    a1[10] = (a1 + 11);
    a1[12] = 0;
    a1[11] = 0;
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(a1[14]);
    a1[13] = (a1 + 14);
    a1[15] = 0;
    a1[14] = 0;
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(a1[17]);
    a1[16] = (a1 + 17);
    a1[18] = 0;
    a1[17] = 0;
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(a1[20]);
    v18 = a1[23];
    a1[19] = (a1 + 20);
    a1[20] = 0;
    a1[21] = 0;
    std::__tree<std::__value_type<void *,std::shared_ptr<void>>,std::__map_value_compare<void *,std::__value_type<void *,std::shared_ptr<void>>,std::less<void *>,true>,std::allocator<std::__value_type<void *,std::shared_ptr<void>>>>::destroy(v18);
    a1[23] = 0;
    a1[24] = 0;
    a1[22] = (a1 + 23);
    if (a1[51])
    {
      v19 = a1[50];
      if (v19)
      {
        do
        {
          v20 = *v19;
          operator delete(v19);
          v19 = v20;
        }

        while (v20);
      }

      a1[50] = 0;
      v21 = a1[49];
      if (v21)
      {
        for (i = 0; i != v21; ++i)
        {
          *(a1[48] + 8 * i) = 0;
        }
      }

      a1[51] = 0;
    }

    if (a1[56])
    {
      a1[55] = 0;
      v23 = a1[54];
      if (v23)
      {
        for (j = 0; j != v23; ++j)
        {
          *(a1[53] + 8 * j) = 0;
        }
      }

      a1[56] = 0;
    }

    if (a1[91])
    {
      a1[90] = 0;
      v25 = a1[89];
      if (v25)
      {
        for (k = 0; k != v25; ++k)
        {
          *(a1[88] + 8 * k) = 0;
        }
      }

      a1[91] = 0;
    }

    if (a1[96])
    {
      v27 = a1[95];
      if (v27)
      {
        do
        {
          v28 = *v27;
          operator delete(v27);
          v27 = v28;
        }

        while (v28);
      }

      a1[95] = 0;
      v29 = a1[94];
      if (v29)
      {
        for (m = 0; m != v29; ++m)
        {
          *(a1[93] + 8 * m) = 0;
        }
      }

      a1[96] = 0;
    }

    if (a1[116])
    {
      v31 = a1[115];
      if (v31)
      {
        do
        {
          v32 = *v31;
          operator delete(v31);
          v31 = v32;
        }

        while (v32);
      }

      a1[115] = 0;
      v33 = a1[114];
      if (v33)
      {
        for (n = 0; n != v33; ++n)
        {
          *(a1[113] + 8 * n) = 0;
        }
      }

      a1[116] = 0;
    }

    if (a1[121])
    {
      a1[120] = 0;
      v35 = a1[119];
      if (v35)
      {
        for (ii = 0; ii != v35; ++ii)
        {
          *(a1[118] + 8 * ii) = 0;
        }
      }

      a1[121] = 0;
    }
  }

  v76 = 0;
  if (v37)
  {
    v10 = v37;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AudioMetadataDeserializer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 552;
      v12 = "%25s:%-5d ...at packet element count";
      goto LABEL_4;
    }

    return v10;
  }

  v71 = v76;
  if (!v76)
  {
LABEL_151:
    AudioMetadataMemoryPool::create<AudioMetadataFormatExtended>(buf, *a1);
  }

  v39 = 0;
  v69 = a1 + 2;
  v70 = a1 + 8;
  while (1)
  {
    if (v15 == 2)
    {
      LOBYTE(__p) = 0;
      if (v40)
      {
        v10 = v40;
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          return v10;
        }

        *buf = 136315394;
        *&buf[4] = "AudioMetadataDeserializer.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 561;
        v12 = "%25s:%-5d ...at packet status";
        goto LABEL_4;
      }

      v41 = __p >> 6;
    }

    else
    {
      v41 = 0;
    }

    LOBYTE(v74) = 0;
    if (v42)
    {
      goto LABEL_152;
    }

    LOBYTE(__p) = v74 >> 4;
    LOWORD(v79.__r_.__value_.__l.__data_) = 0;
    if (v74 >= 0x30u)
    {
      if (v42)
      {
        goto LABEL_152;
      }
    }

    LOWORD(v75) = 0;
    if (v42)
    {
      goto LABEL_152;
    }

    if (__p <= 3u)
    {
      if (__p < 3u)
      {
        WORD2(__p) = v75;
        goto LABEL_74;
      }

      if (__p != 3)
      {
LABEL_171:
        v10 = 4294900722;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "AudioMetadataDeserializer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 296;
          v81 = 1024;
          v82 = __p;
          _os_log_impl(&dword_18F5DF000, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown element type (%d)", buf, 0x18u);
        }

        goto LABEL_153;
      }

LABEL_73:
      WORD2(__p) = v79.__r_.__value_.__l.__data_;
      HIWORD(__p) = v75;
      goto LABEL_74;
    }

    if (__p - 5 < 3)
    {
      goto LABEL_73;
    }

    if (__p != 4)
    {
      if (__p != 8)
      {
        goto LABEL_171;
      }

      *buf = 0;
      if (!v42)
      {
        WORD2(__p) = v79.__r_.__value_.__l.__data_;
        HIWORD(__p) = v75;
        LODWORD(v73) = *buf;
        goto LABEL_74;
      }

LABEL_152:
      v10 = v42;
LABEL_153:
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        return v10;
      }

      *buf = 136315394;
      *&buf[4] = "AudioMetadataDeserializer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 569;
      v12 = "%25s:%-5d ...at packet element ID";
      goto LABEL_4;
    }

    buf[0] = 0;
    if (v42)
    {
      goto LABEL_152;
    }

    WORD2(__p) = v79.__r_.__value_.__l.__data_;
    HIWORD(__p) = v75;
    LOBYTE(v73) = buf[0];
LABEL_74:
    v75 = 0;
    if (v45)
    {
      v10 = v45;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        return v10;
      }

      *buf = 136315394;
      *&buf[4] = "AudioMetadataDeserializer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 575;
      v12 = "%25s:%-5d ...at packet element size";
      goto LABEL_4;
    }

    if (v41 <= 1)
    {
      break;
    }

    if (v41 != 2)
    {
      v10 = 4294900722;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AudioMetadataDeserializer.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 675;
        v81 = 1024;
        v82 = 3;
        v66 = "%25s:%-5d Unknown element status (%d)";
        goto LABEL_168;
      }

      goto LABEL_169;
    }

    if (__p <= 3u)
    {
      if (__p > 1u)
      {
        if (__p == 2)
        {
          std::__tree<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>>>::__erase_unique<unsigned short>(a1 + 7, WORD2(__p));
        }

        else
        {
          if (__p != 3)
          {
            goto LABEL_173;
          }

          CA::AudioMetadataDeserializer::Impl::expire_stream_format(a1, WORD2(__p), HIWORD(__p));
        }
      }

      else if (__p)
      {
        std::__tree<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>>>::__erase_unique<unsigned short>(a1 + 4, WORD2(__p));
      }

      else
      {
        std::__tree<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>>>::__erase_unique<unsigned short>(a1 + 1, WORD2(__p));
      }
    }

    else if (__p <= 5u)
    {
      if (__p == 4)
      {
        CA::AudioMetadataDeserializer::Impl::expire_track_format(a1, &__p + 2);
      }

      else
      {
        if (__p != 5)
        {
LABEL_173:
          v10 = 4294900722;
          if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_169;
          }

          *buf = 136315650;
          *&buf[4] = "AudioMetadataDeserializer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 668;
          v81 = 1024;
          v82 = __p;
          v66 = "%25s:%-5d Unknown element type expired (%d)";
          goto LABEL_168;
        }

        CA::AudioMetadataDeserializer::Impl::expire_track_uid(a1, WORD2(__p), HIWORD(__p));
      }
    }

    else
    {
      switch(__p)
      {
        case 6u:
          CA::AudioMetadataDeserializer::Impl::expire_pack_format(a1, WORD2(__p), HIWORD(__p));
          break;
        case 7u:
          CA::AudioMetadataDeserializer::Impl::expire_channel_format(a1, WORD2(__p), HIWORD(__p));
          break;
        case 8u:
          CA::AudioMetadataDeserializer::Impl::expire_block_format(a1, &__p + 2);
          break;
        default:
          goto LABEL_173;
      }
    }

LABEL_145:
    if (++v39 == v71)
    {
      goto LABEL_151;
    }
  }

  v47 = v78;
  v48 = v75;
  if (v41)
  {
    if (__p == 2)
    {
      v58 = *v70;
      if (*v70)
      {
        v59 = a1 + 8;
        do
        {
          v60 = *(v58 + 32);
          v53 = v60 >= WORD2(__p);
          v61 = v60 < WORD2(__p);
          if (v53)
          {
            v59 = v58;
          }

          v58 = *(v58 + 8 * v61);
        }

        while (v58);
        if (v59 != v70 && WORD2(__p) >= *(v59 + 16))
        {
          v79.__r_.__value_.__r.__words[0] = 0;
          if (v10)
          {
            if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_144;
            }

            *buf = 136315394;
            *&buf[4] = "AudioMetadataDeserializer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2169;
            v56 = v62;
            v57 = "%25s:%-5d ...at object extension duration";
            goto LABEL_115;
          }

          v63 = v59[5];
          *(v63 + 28) = 1;
          *(v63 + 32) = v79.__r_.__value_.__r.__words[0];
LABEL_144:
          if (v10)
          {
            goto LABEL_169;
          }

          goto LABEL_145;
        }
      }

      v10 = 4294900724;
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_169;
      }

      *buf = 136315650;
      *&buf[4] = "AudioMetadataDeserializer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2163;
      v81 = 1024;
      v82 = WORD2(__p);
      v66 = "%25s:%-5d Object extension refers to missing object AO_%04hx";
LABEL_168:
      _os_log_impl(&dword_18F5DF000, v65, OS_LOG_TYPE_ERROR, v66, buf, 0x18u);
      goto LABEL_169;
    }

    if (!__p)
    {
      v50 = *v69;
      if (*v69)
      {
        v51 = a1 + 2;
        do
        {
          v52 = *(v50 + 32);
          v53 = v52 >= WORD2(__p);
          v54 = v52 < WORD2(__p);
          if (v53)
          {
            v51 = v50;
          }

          v50 = *(v50 + 8 * v54);
        }

        while (v50);
        if (v51 != v69 && WORD2(__p) >= *(v51 + 16))
        {
          v79.__r_.__value_.__r.__words[0] = 0;
          if (v10)
          {
            if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_144;
            }

            *buf = 136315394;
            *&buf[4] = "AudioMetadataDeserializer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 2425;
            v56 = v55;
            v57 = "%25s:%-5d ...at programme extension end";
LABEL_115:
            _os_log_impl(&dword_18F5DF000, v56, OS_LOG_TYPE_ERROR, v57, buf, 0x12u);
            goto LABEL_144;
          }

          v64 = v51[5];
          *(v64 + 36) = 1;
          *(v64 + 40) = v79.__r_.__value_.__r.__words[0];
          goto LABEL_144;
        }
      }

      v10 = 4294900724;
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_169;
      }

      *buf = 136315650;
      *&buf[4] = "AudioMetadataDeserializer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 2419;
      v81 = 1024;
      v82 = WORD2(__p);
      v66 = "%25s:%-5d Programme extension refers to missing programme AP_%04hx";
      goto LABEL_168;
    }

    v10 = 4294900722;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AudioMetadataDeserializer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 632;
      v81 = 1024;
      v82 = __p;
      v66 = "%25s:%-5d Expected element type for extension (%d)";
      goto LABEL_168;
    }

LABEL_169:
    if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      return v10;
    }

    *buf = 136315906;
    *&buf[4] = "AudioMetadataDeserializer.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 680;
    v81 = 1024;
    v82 = v39 + 1;
    v83 = 1024;
    v84 = v71;
    v12 = "%25s:%-5d ...at element #%d of %d";
    v13 = v67;
    v14 = 30;
    goto LABEL_13;
  }

  if (__p <= 3u)
  {
    if (__p <= 1u)
    {
      if (__p)
      {
        CA::AudioMetadataDeserializer::Impl::decode_content(a1, this, (v75 + v78), &v78, &__p + 2);
      }

      CA::AudioMetadataDeserializer::Impl::decode_programme(a1, this, (v75 + v78), &v78, &__p + 2);
    }

    if (__p == 2)
    {
      CA::AudioMetadataDeserializer::Impl::decode_object(a1, this, (v75 + v78), &v78, &__p + 2);
    }

    if (__p == 3)
    {
      CA::AudioMetadataDeserializer::Impl::decode_stream_format(a1, this, (v75 + v78), &v78, &__p + 2);
    }

    goto LABEL_175;
  }

  if (__p <= 5u)
  {
    if (__p == 4)
    {
      CA::AudioMetadataDeserializer::Impl::decode_track_format(a1, this, (v75 + v78), &v78, &__p + 2);
    }

    if (__p == 5)
    {
      CA::AudioMetadataDeserializer::Impl::decode_track_uid(a1, this, (v75 + v78), &v78, &__p + 2);
    }

LABEL_175:
    v10 = 4294900722;
    if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_169;
    }

    *buf = 136315650;
    *&buf[4] = "AudioMetadataDeserializer.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 617;
    v81 = 1024;
    v82 = __p;
    v66 = "%25s:%-5d Unknown element type (%d)";
    goto LABEL_168;
  }

  if (__p == 6)
  {
    CA::AudioMetadataDeserializer::Impl::decode_pack_format(a1, this, (v75 + v78), &v78, &__p + 2);
  }

  if (__p == 7)
  {
    CA::AudioMetadataDeserializer::Impl::decode_channel_format(a1, this, (v75 + v78), &v78, &__p + 2);
  }

  if (__p != 8)
  {
    goto LABEL_175;
  }

  v79.__r_.__value_.__s.__data_[0] = 0;
  if (!v49)
  {
    v10 = CA::AudioMetadataDeserializer::Impl::decode_block_format(a1, this, (v48 + v47), &v78, &__p + 2, v79.__r_.__value_.__s.__data_[0] >> 5);
    goto LABEL_144;
  }

  v10 = v49;
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    return v10;
  }

  *buf = 136315394;
  *&buf[4] = "AudioMetadataDeserializer.cpp";
  *&buf[12] = 1024;
  *&buf[14] = 610;
  v12 = "%25s:%-5d ...at block format type";
LABEL_4:
  v13 = v11;
  v14 = 18;
LABEL_13:
  _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
  return v10;
}

void sub_18F7475FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  v67 = *(v65 - 128);
  if (v67)
  {
    operator delete(v67);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a48)
  {
    operator delete(a48);
  }

  if (a53)
  {
    operator delete(a53);
  }

  if (a58)
  {
    operator delete(a58);
  }

  v68 = *(v65 - 200);
  if (v68)
  {
    operator delete(v68);
  }

  if (a65)
  {
    operator delete(a65);
  }

  v69 = *(v65 - 256);
  if (v69)
  {
    operator delete(v69);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::decode_byte(_anonymous_namespace_ *this, const unsigned __int8 *a2, void *a3, unint64_t *a4, unsigned __int8 *a5)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*a3 >= a2)
  {
    v5 = 4294900721;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "AudioMetadataDeserializer.cpp";
      v10 = 1024;
      v11 = 155;
      _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Metadata serialized element truncated...", &v8, 0x12u);
    }
  }

  else
  {
    v5 = 0;
    *a4 = *(this + (*a3)++);
  }

  return v5;
}

uint64_t anonymous namespace::log()
{
  v0 = &unk_1EAD30000;
  {
    v0 = &unk_1EAD30000;
    if (v2)
    {
      v0 = &unk_1EAD30000;
    }
  }

  return v0[456];
}

void std::unordered_map<anonymous namespace::FormatID,std::vector<anonymous namespace::FormatID>>::clear[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 24))
  {
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *std::unordered_map<anonymous namespace::FormatID,anonymous namespace::FormatID>::clear[abi:ne200100](void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t anonymous namespace::decode_var_uint(_anonymous_namespace_ *this, const unsigned __int8 *a2, void *a3, unint64_t *a4, unsigned __int8 *a5)
{
  *a4 = 0;
  while (1)
  {
    LOBYTE(v11) = 0;
    if (result)
    {
      break;
    }

    v10 = v11;
    *a4 = v11 & 0x7F | (*a4 << 7);
    if ((v10 & 0x80) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t anonymous namespace::decode_uint16(_anonymous_namespace_ *this, const unsigned __int8 *a2, unint64_t *a3, unint64_t *a4, unsigned __int16 *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *a3 + 2;
  if (v5 <= a2)
  {
    v6 = 0;
    *a4 = bswap32(*(this + *a3)) >> 16;
    *a3 = v5;
  }

  else
  {
    v6 = 4294900721;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "AudioMetadataDeserializer.cpp";
      v11 = 1024;
      v12 = 390;
      _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Metadata serialized element truncated...", &v9, 0x12u);
    }
  }

  return v6;
}

uint64_t anonymous namespace::decode_uint32(_anonymous_namespace_ *this, const unsigned __int8 *a2, unint64_t *a3, unint64_t *a4, unsigned int *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *a3 + 4;
  if (v5 <= a2)
  {
    v6 = 0;
    *a4 = bswap32(*(this + *a3));
    *a3 = v5;
  }

  else
  {
    v6 = 4294900721;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "AudioMetadataDeserializer.cpp";
      v11 = 1024;
      v12 = 404;
      _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Metadata serialized element truncated...", &v9, 0x12u);
    }
  }

  return v6;
}

void sub_18F748FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (*(v48 - 217) < 0)
  {
    operator delete(*(v48 - 240));
  }

  if (*(v48 - 185) < 0)
  {
    operator delete(*(v48 - 208));
  }

  if (*(v48 - 137) < 0)
  {
    operator delete(*(v48 - 160));
  }

  if (*(v48 - 105) < 0)
  {
    operator delete(*(v48 - 128));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a45);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F749C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v34 < 0)
  {
    operator delete(*(v35 + 104));
  }

  if (v36 < 0)
  {
    operator delete(*(v35 + 136));
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v35 + 8))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v35 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_18F74AD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (v35)
  {
    operator delete(v35);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F74B4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, int a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F74BB04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v23 < 0)
  {
    operator delete(*(v25 - 160));
  }

  if (a14 < 0)
  {
    operator delete(*(v25 - 128));
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v24 < 0)
  {
    operator delete(__p);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F74C2A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F74CF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a13 < 0)
  {
    operator delete(__p);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F74D9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v37 < 0)
  {
    operator delete(__p);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v38 < 0)
  {
    operator delete(a21);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::AudioMetadataDeserializer::Impl::decode_block_format(uint64_t *a1, _anonymous_namespace_ *a2, const unsigned __int8 *a3, unint64_t *a4, unsigned __int16 *a5, int a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v14 = *a5;
  v15 = a5[1];
  {
    AudioMetadataMemoryPool::create<AudioMetadataBlockFormat>(&v13, *a1);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = *a5;
    v10 = a5[1];
    v11 = *(a5 + 1);
    buf[0] = 136316674;
    *&buf[1] = "AudioMetadataDeserializer.cpp";
    v17 = 1024;
    v18 = 1258;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    v23 = 1024;
    v24 = v9;
    v25 = 1024;
    v26 = v10;
    v27 = 1024;
    v28 = v11;
    _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Missing channel format AC_%04hx%04hx for block format AB_%04hx%04hx_%08x", buf, 0x30u);
  }

  return 4294900724;
}

void sub_18F75029C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, std::__shared_weak_count *a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a13 < 0)
  {
    operator delete(__p);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  v50 = *(v48 - 208);
  if (v50)
  {
    operator delete(v50);
  }

  if (*(v48 - 232))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v48 - 232));
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataProgramme>>>>::__erase_unique<unsigned short>(uint64_t **a1, unsigned __int16 a2)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = *(v6 + 16);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && *(v5 + 16) <= a2)
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v5);
      v14 = v5[6];
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      operator delete(v5);
    }
  }
}

void CA::AudioMetadataDeserializer::Impl::expire_stream_format(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1 + 23 != v4)
  {
    v5 = v4;
    v6 = v4[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v8 = v4;
      do
      {
        v7 = v8[2];
        v9 = *v7 == v8;
        v8 = v7;
      }

      while (!v9);
    }

    if (a1[22] == v4)
    {
      a1[22] = v7;
    }

    v10 = a1[23];
    --a1[24];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v10, v5);
    v11 = v5[6];
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    operator delete(v5);
  }
}

void CA::AudioMetadataDeserializer::Impl::expire_track_format(void *a1, unsigned __int16 *a2)
{
  if (a1 + 20 != v3)
  {
    v4 = v3;
    v5 = v3[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    if (a1[19] == v3)
    {
      a1[19] = v6;
    }

    v9 = a1[20];
    --a1[21];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v4);
    v10 = v4[6];
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    operator delete(v4);
  }
}

void CA::AudioMetadataDeserializer::Impl::expire_track_uid(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1 + 17 != v4)
  {
    v5 = v4;
    v6 = v4[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v8 = v4;
      do
      {
        v7 = v8[2];
        v9 = *v7 == v8;
        v8 = v7;
      }

      while (!v9);
    }

    if (a1[16] == v4)
    {
      a1[16] = v7;
    }

    v10 = a1[17];
    --a1[18];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v10, v5);
    v11 = v5[6];
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    operator delete(v5);
  }
}

void CA::AudioMetadataDeserializer::Impl::expire_pack_format(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1 + 11 != v4)
  {
    v5 = v4;
    v6 = v4[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v8 = v4;
      do
      {
        v7 = v8[2];
        v9 = *v7 == v8;
        v8 = v7;
      }

      while (!v9);
    }

    if (a1[10] == v4)
    {
      a1[10] = v7;
    }

    v10 = a1[11];
    --a1[12];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v10, v5);
    v11 = v5[6];
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    operator delete(v5);
  }
}

void CA::AudioMetadataDeserializer::Impl::expire_channel_format(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1 + 14 != v4)
  {
    v5 = v4;
    v6 = v4[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v8 = v4;
      do
      {
        v7 = v8[2];
        v9 = *v7 == v8;
        v8 = v7;
      }

      while (!v9);
    }

    if (a1[13] == v4)
    {
      a1[13] = v7;
    }

    v10 = a1[14];
    --a1[15];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v10, v5);
    v11 = v5[6];
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    operator delete(v5);
  }
}

void CA::AudioMetadataDeserializer::Impl::expire_block_format(void *a1, unsigned __int16 *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1 + 26 != v4)
  {
    v5 = v4;
    v6 = v4[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v8 = v4;
      do
      {
        v7 = v8[2];
        v20 = *v7 == v8;
        v8 = v7;
      }

      while (!v20);
    }

    if (a1[25] == v4)
    {
      a1[25] = v7;
    }

    v9 = a1[26];
    --a1[27];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v5);
    v10 = v5[6];
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    operator delete(v5);
  }

  v11 = a1[89];
  if (!*&v11 || ((v12 = *a2, v13 = a2[1], v14 = v13 + v12, v15 = vcnt_s8(v11), v15.i16[0] = vaddlv_u8(v15), v15.u32[0] > 1uLL) ? (v14 >= *&v11 ? (v16 = v14 % v11.i32[0]) : (v16 = v13 + v12)) : (v16 = (v11.i32[0] - 1) & v14), (v17 = *(a1[88] + 8 * v16)) == 0 || (v18 = *v17) == 0))
  {
LABEL_34:
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *a2;
      v23 = a2[1];
      v24 = *(a2 + 1);
      v28 = 136316674;
      v29 = "AudioMetadataDeserializer.cpp";
      v30 = 1024;
      v31 = 2633;
      v32 = 1024;
      v33 = v22;
      v34 = 1024;
      v35 = v23;
      v36 = 1024;
      v37 = v24;
      v38 = 1024;
      v39 = v22;
      v40 = 1024;
      v41 = v23;
      _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Expired block format AB_%04hx%04hx_%08x for unknown channel format AC_%04hx%04hx", &v28, 0x30u);
    }

    return;
  }

  while (1)
  {
    v19 = v18[1];
    if (v19 == v14)
    {
      break;
    }

    if (v15.u32[0] > 1uLL)
    {
      if (v19 >= *&v11)
      {
        v19 %= *&v11;
      }
    }

    else
    {
      v19 &= *&v11 - 1;
    }

    if (v19 != v16)
    {
      goto LABEL_34;
    }

LABEL_33:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_34;
    }
  }

  v20 = *(v18 + 8) == v12 && *(v18 + 9) == v13;
  if (!v20)
  {
    goto LABEL_33;
  }

  v26 = v18[3];
  v25 = v18[4];
  if (v26 != v25)
  {
    while (__PAIR64__(v26[1], *v26) != __PAIR64__(v13, v12) || *(v26 + 1) != *(a2 + 1))
    {
      v26 += 4;
      if (v26 == v25)
      {
        return;
      }
    }

    v27 = v25 - (v26 + 4);
    if (v25 != v26 + 4)
    {
      memmove(v26, v26 + 4, v25 - (v26 + 4));
    }

    v18[4] = (v26 + v27);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<unsigned short>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<unsigned short>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(float *a1, unsigned __int16 a2, _WORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % *(a1 + 1);
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 8) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_18F751034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F75112C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F751224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F75131C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void CA::AudioMetadataDeserializer::Impl::check_common_pack_format_ref(uint64_t *a1, unsigned __int16 *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2[1];
  if (v2 <= 0xFFF && (v2 & 0xFFF) != 0)
  {
    v5 = *a2;
    {
      snprintf(__str, 0xCuLL, "AP_%04hx%04hx", v5, v2);
      v6 = CA::ADMCommonFormats::pack_formats;
      v7 = 347;
      do
      {
        if (!strcmp(__str, *v6))
        {
          AudioMetadataMemoryPool::create<AudioMetadataPackFormat>(&v8, *a1);
        }

        --v7;
        v6 += 6;
      }

      while (v7);
    }
  }
}

void sub_18F7516F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<anonymous namespace::FormatID,std::vector<anonymous namespace::FormatID>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = *(i + 8);
    v6 = *(i + 9);
    v7 = v6 + v5;
    v8 = *(a1 + 8);
    if (!*&v8)
    {
      goto LABEL_22;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = v6 + v5;
      if (v7 >= *&v8)
      {
        v10 = v7 % v8.i32[0];
      }
    }

    else
    {
      v10 = (v8.i32[0] - 1) & v7;
    }

    v11 = *(*a1 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        break;
      }

      if (v9.u32[0] > 1uLL)
      {
        if (v13 >= *&v8)
        {
          v13 %= *&v8;
        }
      }

      else
      {
        v13 &= *&v8 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_22;
      }

LABEL_21:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    if (*(v12 + 8) != v5 || *(v12 + 9) != v6)
    {
      goto LABEL_21;
    }
  }

  return a1;
}

void CA::AudioMetadataDeserializer::Impl::check_common_channel_format_ref(uint64_t *a1, unsigned __int16 *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2[1];
  if (v2 <= 0xFFF && (v2 & 0xFFF) != 0)
  {
    v5 = *a2;
    {
      snprintf(__str, 0xCuLL, "AC_%04hx%04hx", v5, v2);
      AudioMetadataMemoryPool::create<AudioMetadataChannelFormat>(&v6, *a1);
    }
  }
}

void sub_18F751FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v42 = *(v40 - 216);
  if (v42)
  {
    operator delete(v42);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<anonymous namespace::TrackFormatID,std::shared_ptr<AudioMetadataTrackFormat>>,std::__map_value_compare<anonymous namespace::TrackFormatID,std::__value_type<anonymous namespace::TrackFormatID,std::shared_ptr<AudioMetadataTrackFormat>>,std::less<anonymous namespace::TrackFormatID>,true>,std::allocator<std::__value_type<anonymous namespace::TrackFormatID,std::shared_ptr<AudioMetadataTrackFormat>>>>::find<anonymous namespace::TrackFormatID>(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  v8 = *(a2 + 4);
  do
  {
    v9 = *(v3 + 16);
    if (v9 < v5)
    {
LABEL_4:
      ++v3;
      goto LABEL_7;
    }

    if (v9 > v5)
    {
      goto LABEL_6;
    }

    v10 = *(v3 + 17);
    if (v10 < v6)
    {
      goto LABEL_4;
    }

    if (v10 > v6)
    {
LABEL_6:
      v7 = v3;
    }

    else
    {
      v11 = *(v3 + 36);
      v12 = v11 >= v8;
      v13 = v11 < v8;
      if (v12)
      {
        v7 = v3;
      }

      v3 += v13;
    }

LABEL_7:
    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v14 = *(v7 + 16);
  if (v5 < v14)
  {
    return v2;
  }

  if (v5 <= v14)
  {
    v16 = *(v7 + 17);
    if (v6 < v16 || v6 <= v16 && v8 < *(v7 + 36))
    {
      return v2;
    }
  }

  return v7;
}

void sub_18F752344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void CA::AudioMetadataDeserializer::Impl::check_common_stream_format_ref(uint64_t *a1, unsigned __int16 *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2[1];
  if (v2 <= 0xFFF && (v2 & 0xFFF) != 0)
  {
    v5 = *a2;
    {
      snprintf(__str, 0xCuLL, "AS_%04hx%04hx", v5, v2);
      AudioMetadataMemoryPool::create<AudioMetadataStreamFormat>(&v6, *a1);
    }
  }
}

void sub_18F752750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::map<anonymous namespace::TrackFormatID,std::shared_ptr<AudioMetadataTrackFormat>>::operator[](uint64_t **a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!v2)
  {
LABEL_14:
    operator new();
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 4);
  while (1)
  {
    while (1)
    {
      v6 = v2;
      v7 = *(v2 + 16);
      if (v3 >= v7)
      {
        break;
      }

LABEL_4:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_14;
      }
    }

    if (v3 <= v7)
    {
      v8 = *(v6 + 17);
      if (v4 < v8)
      {
        goto LABEL_4;
      }

      if (v4 <= v8)
      {
        v9 = *(v6 + 36);
        if (v5 < v9)
        {
          goto LABEL_4;
        }

        if (v9 >= v5)
        {
          return v6 + 5;
        }
      }
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_14;
    }
  }
}

void sub_18F7529E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::unordered_map<unsigned short,std::vector<anonymous namespace::FormatID>>::operator[](float *a1, _WORD *a2)
{
  v2 = *a2;
  v3 = *(a1 + 2);
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *(a1 + 1);
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7 + 3;
}

void sub_18F752E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

void sub_18F752F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F753014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::unordered_map<anonymous namespace::FormatID,std::vector<anonymous namespace::FormatID>>::operator[](void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 + v2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 + v2;
    if (v4 >= *&v5)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 8) != v2 || *(v9 + 9) != v3)
  {
    goto LABEL_21;
  }

  return v9 + 3;
}

void sub_18F753280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

void std::vector<AudioMetadataChannelFormat *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::allocator<std::shared_ptr<AudioMetadataTimeline::Node<AudioMetadataProgramme,AudioMetadataTimeline::Node<AudioMetadataFormatExtended,decltype(nullptr)>>> *>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_18F753444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F75353C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ***std::unordered_map<anonymous namespace::FormatID,anonymous namespace::FormatID>::find[abi:ne200100](void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = (a3 + a2);
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v4 >= *&v3 ? v4 % v3.i32[0] : a3 + a2;
  }

  else
  {
    v6 = (v3.i32[0] - 1) & v4;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (*(result + 8) == a2 && *(result + 9) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v3)
        {
          v9 %= *&v3;
        }
      }

      else
      {
        v9 &= *&v3 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_18F753700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::unordered_map<anonymous namespace::FormatID,std::vector<anonymous namespace::BlockFormatID>>::operator[](float *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 + v2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 + v2;
    if (v4 >= *&v5)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 8) != v2 || *(v9 + 9) != v3)
  {
    goto LABEL_21;
  }

  return v9 + 3;
}

void sub_18F753B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<anonymous namespace::BlockFormatID,std::shared_ptr<AudioMetadataBlockFormat>>,std::__map_value_compare<anonymous namespace::BlockFormatID,std::__value_type<anonymous namespace::BlockFormatID,std::shared_ptr<AudioMetadataBlockFormat>>,std::less<anonymous namespace::BlockFormatID>,true>,std::allocator<std::__value_type<anonymous namespace::BlockFormatID,std::shared_ptr<AudioMetadataBlockFormat>>>>::find<anonymous namespace::BlockFormatID>(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  v8 = *(a2 + 1);
  do
  {
    v9 = *(v3 + 16);
    if (v9 < v5)
    {
LABEL_4:
      ++v3;
      goto LABEL_7;
    }

    if (v9 > v5)
    {
      goto LABEL_6;
    }

    v10 = *(v3 + 17);
    if (v10 < v6)
    {
      goto LABEL_4;
    }

    if (v10 > v6)
    {
LABEL_6:
      v7 = v3;
    }

    else
    {
      v11 = *(v3 + 9);
      v12 = v11 >= v8;
      v13 = v11 < v8;
      if (v12)
      {
        v7 = v3;
      }

      v3 += v13;
    }

LABEL_7:
    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v14 = *(v7 + 16);
  if (v5 < v14)
  {
    return v2;
  }

  if (v5 <= v14)
  {
    v16 = *(v7 + 17);
    if (v6 < v16 || v6 <= v16 && v8 < *(v7 + 9))
    {
      return v2;
    }
  }

  return v7;
}

void sub_18F753CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F753DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F753EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<anonymous namespace::FormatID,std::shared_ptr<AudioMetadataStreamFormat>>,std::__map_value_compare<anonymous namespace::FormatID,std::__value_type<anonymous namespace::FormatID,std::shared_ptr<AudioMetadataStreamFormat>>,std::less<anonymous namespace::FormatID>,true>,std::allocator<std::__value_type<anonymous namespace::FormatID,std::shared_ptr<AudioMetadataStreamFormat>>>>::find<anonymous namespace::FormatID>(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (!v5)
  {
    return v3;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 16);
    if (v7 >= a2)
    {
      if (v7 > a2)
      {
        v6 = v4;
      }

      else
      {
        v8 = *(v4 + 17);
        v9 = v8 >= a3;
        v10 = v8 < a3;
        if (v9)
        {
          v6 = v4;
        }

        v4 += v10;
      }
    }

    else
    {
      ++v4;
    }

    v4 = *v4;
  }

  while (v4);
  if (v6 == v3)
  {
    return v3;
  }

  v11 = *(v6 + 16);
  if (v11 > a2 || v11 >= a2 && *(v6 + 17) > a3)
  {
    return v3;
  }

  return v6;
}

void sub_18F754060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F754158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unordered_map<anonymous namespace::BlockFormatID,anonymous namespace::FormatID>::find[abi:ne200100](void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 1);
  v6 = v4 + v3 + v5;
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 + v3 + v5;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = (*&v2 - 1) & v6;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v11 == v6)
    {
      if (__PAIR64__(*(result + 9), *(result + 8)) == __PAIR64__(v4, v3) && *(result + 5) == v5)
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v2)
        {
          v11 %= *&v2;
        }
      }

      else
      {
        v11 &= *&v2 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::unordered_map<anonymous namespace::BlockFormatID,std::vector<anonymous namespace::FormatID>>::operator[](float *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 1);
  v5 = v3 + v2 + v4;
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3 + v2 + v4;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (__PAIR64__(*(v10 + 9), *(v10 + 8)) != __PAIR64__(v3, v2) || *(v10 + 5) != v4)
  {
    goto LABEL_18;
  }

  return v10 + 3;
}

void sub_18F754694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<anonymous namespace::FormatID,std::vector<anonymous namespace::FormatID>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<anonymous namespace::FormatID,std::vector<anonymous namespace::FormatID>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
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
        v2[4] = v3;
        operator delete(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_18F754890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::map<anonymous namespace::FormatID,std::shared_ptr<AudioMetadataStreamFormat>>::operator[](uint64_t **a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!v2)
  {
LABEL_10:
    operator new();
  }

  v3 = *a2;
  v4 = a2[1];
  while (1)
  {
    while (1)
    {
      v5 = v2;
      v6 = *(v2 + 16);
      if (v3 >= v6)
      {
        break;
      }

LABEL_4:
      v2 = *v5;
      if (!*v5)
      {
        goto LABEL_10;
      }
    }

    if (v3 <= v6)
    {
      v7 = *(v5 + 17);
      if (v4 < v7)
      {
        goto LABEL_4;
      }

      if (v7 >= v4)
      {
        return v5 + 5;
      }
    }

    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_10;
    }
  }
}

void sub_18F754A0C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    MEMORY[0x193ADF1F0](v1, 0x1000C8077774924);
  }

  __cxa_rethrow();
}

void std::vector<std::shared_ptr<char []>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

uint64_t std::__shared_ptr_pointer<char  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x193ADF1F0);
  }

  return result;
}

void std::__shared_ptr_pointer<char  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::__shared_ptr_emplace<AudioMetadataStreamFormat>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032EB98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::__shared_ptr_emplace<AudioMetadataTrackFormat>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032EB60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void sub_18F754E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F755030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AudioMetadataBlockFormat>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032EAF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::__shared_ptr_emplace<AudioMetadataChannelFormat>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032EAB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void sub_18F7552E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<anonymous namespace::FormatID>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 2;
    if ((v6 + 1) >> 62)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = (4 * v6);
    *v10 = *a2;
    v5 = 4 * v6 + 4;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::__shared_ptr_emplace<AudioMetadataPackFormat>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032EA80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned short,std::vector<unsigned short>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t anonymous namespace::decode_double(_anonymous_namespace_ *this, const unsigned __int8 *a2, unint64_t *a3, unint64_t *a4, double *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *a3 + 8;
  if (v5 <= a2)
  {
    v6 = 0;
    v8 = this + *a3;
    v9 = ((*v8 << 56) | (v8[1] << 48) | (v8[2] << 40) | (v8[3] << 32) | (v8[4] << 24) | (v8[5] << 16) | (v8[6] << 8)) + v8[7];
    *a3 = v5;
    *a4 = v9;
  }

  else
  {
    v6 = 4294900721;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "AudioMetadataDeserializer.cpp";
      v13 = 1024;
      v14 = 224;
      _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Metadata serialized element truncated...", &v11, 0x12u);
    }
  }

  return v6;
}

uint64_t anonymous namespace::decode_float(_anonymous_namespace_ *this, const unsigned __int8 *a2, unint64_t *a3, unint64_t *a4, float *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *a3 + 4;
  if (v5 <= a2)
  {
    v6 = 0;
    v8 = bswap32(*(this + *a3));
    *a3 = v5;
    *a4 = v8;
  }

  else
  {
    v6 = 4294900721;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "AudioMetadataDeserializer.cpp";
      v12 = 1024;
      v13 = 310;
      _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Metadata serialized element truncated...", &v10, 0x12u);
    }
  }

  return v6;
}

uint64_t anonymous namespace::decode_string(_anonymous_namespace_ *a1, const unsigned __int8 *a2, uint64_t *a3, uint64_t a4, unsigned __int8 *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0;
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AudioMetadataDeserializer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 375;
      v12 = "%25s:%-5d ...at string length";
LABEL_7:
      _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x12u);
    }
  }

  else
  {
    v13 = *a3;
    v14 = v20;
    if (v20 + *a3 <= a2)
    {
      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v20 >= 0x17)
      {
        operator new();
      }

      buf[23] = v20;
      v15 = buf;
      if (v20)
      {
        v16 = a1 + v13;
        v17 = v20;
        do
        {
          v18 = *v16++;
          *v15++ = v18;
          --v17;
        }

        while (v17);
      }

      *v15 = 0;
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v10 = 0;
      *a4 = *buf;
      *(a4 + 16) = *&buf[16];
      *a3 += v14;
    }

    else
    {
      v10 = 4294900721;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AudioMetadataDeserializer.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 379;
        v12 = "%25s:%-5d Metadata serialized element truncated at string content";
        goto LABEL_7;
      }
    }
  }

  return v10;
}

uint64_t anonymous namespace::decode_coordinates(_anonymous_namespace_ *a1, const unsigned __int8 *a2, unint64_t *a3, uint64_t a4, float *a5)
{
  v5 = a5;
  v24 = *MEMORY[0x1E69E9840];
  LODWORD(v20) = 0;
  if (v10)
  {
    v12 = v10;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(v20) = 136315394;
      v21 = "AudioMetadataDeserializer.cpp";
      v22 = 1024;
      v23 = 189;
      v14 = "%25s:%-5d ...at position x/azimuth";
LABEL_10:
      _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, v14, &v20 + 4, 0x12u);
    }
  }

  else
  {
    HIDWORD(v19) = 0;
    if (v15)
    {
      v12 = v15;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        HIDWORD(v20) = 136315394;
        v21 = "AudioMetadataDeserializer.cpp";
        v22 = 1024;
        v23 = 195;
        v14 = "%25s:%-5d ...at position y/elevation";
        goto LABEL_10;
      }
    }

    else
    {
      LODWORD(v19) = 0;
      if (!v12)
      {
        *(a4 + 12) = v5;
        v18 = HIDWORD(v19);
        *a4 = v20;
        *(a4 + 4) = v18;
        *(a4 + 8) = v19;
        return v12;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        HIDWORD(v20) = 136315394;
        v21 = "AudioMetadataDeserializer.cpp";
        v22 = 1024;
        v23 = 201;
        v14 = "%25s:%-5d ...at position z/distance";
        goto LABEL_10;
      }
    }
  }

  return v12;
}

uint64_t *std::unordered_map<anonymous namespace::BlockFormatID,anonymous namespace::FormatID>::operator[](float *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 1);
  v5 = v3 + v2 + v4;
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3 + v2 + v4;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_19;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  if (__PAIR64__(*(v10 + 9), *(v10 + 8)) != __PAIR64__(v3, v2) || *(v10 + 5) != v4)
  {
    goto LABEL_18;
  }

  return v10 + 3;
}

uint64_t anonymous namespace::decode_jump_position(_anonymous_namespace_ *a1, const unsigned __int8 *a2, unint64_t *a3, uint64_t a4, unsigned __int8 *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  if (v9)
  {
    v11 = v9;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *&v16[1] = 136315394;
      *&v16[5] = "AudioMetadataDeserializer.cpp";
      v17 = 1024;
      v18 = 355;
      v13 = "%25s:%-5d ...at jump position flags";
LABEL_4:
      _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, v13, &v16[1], 0x12u);
    }
  }

  else
  {
    v14 = v16[0];
    *(a4 + 4) = v16[0] >> 7;
    if ((v14 & 0x40) == 0)
    {
      return 0;
    }

    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *&v16[1] = 136315394;
        *&v16[5] = "AudioMetadataDeserializer.cpp";
        v17 = 1024;
        v18 = 363;
        v13 = "%25s:%-5d ...at jump position interpolation length";
        goto LABEL_4;
      }
    }
  }

  return v11;
}

void sub_18F7561EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F7563B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AudioMetadataZone>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032E8F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void std::__shared_ptr_emplace<AudioMetadataMatrixCoefficient>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032E968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t anonymous namespace::decode_format_refs(_anonymous_namespace_ *a1, const unsigned __int8 *a2, unint64_t *a3, void *a4, unsigned __int8 *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  *&v23[4] = 0;
  if (v9)
  {
    v11 = v9;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "AudioMetadataDeserializer.cpp";
      v26 = 1024;
      v27 = 329;
      v13 = "%25s:%-5d ...at format refs count";
      v14 = v12;
      v15 = 18;
LABEL_15:
      _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    }
  }

  else
  {
    a4[1] = *a4;
    v16 = *&v23[4];
    if (*&v23[4])
    {
      v17 = 0;
      while (1)
      {
        if (v18)
        {
          v11 = v18;
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            return v11;
          }

          *buf = 136315906;
          v25 = "AudioMetadataDeserializer.cpp";
          v26 = 1024;
          v27 = 337;
          v28 = 1024;
          v29 = v17 + 1;
          v30 = 1024;
          v31 = v16;
          v13 = "%25s:%-5d ...at format ref #%d of %d, major";
          goto LABEL_14;
        }

        if (v20)
        {
          break;
        }

        if (v16 == ++v17)
        {
          return 0;
        }
      }

      v11 = v20;
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        return v11;
      }

      *buf = 136315906;
      v25 = "AudioMetadataDeserializer.cpp";
      v26 = 1024;
      v27 = 342;
      v28 = 1024;
      v29 = v17 + 1;
      v30 = 1024;
      v31 = v16;
      v13 = "%25s:%-5d ...at format ref #%d of %d, minor";
LABEL_14:
      v14 = v21;
      v15 = 30;
      goto LABEL_15;
    }

    return 0;
  }

  return v11;
}

uint64_t std::unordered_map<anonymous namespace::FormatID,anonymous namespace::FormatID>::operator[](float *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 + v2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 + v2;
    if (v4 >= *&v5)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 8) != v2 || *(v9 + 9) != v3)
  {
    goto LABEL_21;
  }

  return v9 + 20;
}

void sub_18F756CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<anonymous namespace::FormatID,anonymous namespace::TrackFormatID>::operator[](float *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 + v2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 + v2;
    if (v4 >= *&v5)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 8) != v2 || *(v9 + 9) != v3)
  {
    goto LABEL_21;
  }

  return v9 + 20;
}

void std::__shared_ptr_emplace<AudioMetadataTrackUID>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032EB28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void sub_18F75731C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::decode_content_refs(_anonymous_namespace_ *a1, const unsigned __int8 *a2, unint64_t *a3, void *a4, unsigned __int8 *a5)
{
  v40 = *MEMORY[0x1E69E9840];
  *&v31[2] = 0;
  if (v9)
  {
    v11 = v9;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "AudioMetadataDeserializer.cpp";
      v34 = 1024;
      v35 = 168;
      v13 = "%25s:%-5d ...at content refs count";
      v14 = v12;
      v15 = 18;
LABEL_4:
      _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    }
  }

  else
  {
    a4[1] = *a4;
    v16 = *&v31[2];
    if (!*&v31[2])
    {
      return 0;
    }

    v17 = 0;
    while (1)
    {
      *v31 = 0;
      if (v18)
      {
        break;
      }

      v20 = a4[1];
      v19 = a4[2];
      if (v20 >= v19)
      {
        v22 = *a4;
        v23 = v20 - *a4;
        v24 = v23 >> 1;
        if (v23 >> 1 <= -2)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v25 = v19 - v22;
        if (v25 <= v24 + 1)
        {
          v26 = v24 + 1;
        }

        else
        {
          v26 = v25;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v27 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          std::allocator<APAC::UI13>::allocate_at_least[abi:ne200100](v27);
        }

        *(2 * v24) = *v31;
        v21 = 2 * v24 + 2;
        memcpy(0, v22, v23);
        v28 = *a4;
        *a4 = 0;
        a4[1] = v21;
        a4[2] = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v20 = *v31;
        v21 = (v20 + 1);
      }

      a4[1] = v21;
      if (v16 == ++v17)
      {
        return 0;
      }
    }

    v11 = v18;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v33 = "AudioMetadataDeserializer.cpp";
      v34 = 1024;
      v35 = 176;
      v36 = 1024;
      v37 = v17 + 1;
      v38 = 1024;
      v39 = v16;
      v13 = "%25s:%-5d ...at content ref #%d of %d";
      v14 = v30;
      v15 = 30;
      goto LABEL_4;
    }
  }

  return v11;
}

void std::__shared_ptr_emplace<AudioMetadataObject>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032EA48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void sub_18F7577B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataContent>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::shared_ptr<AudioMetadataContent>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::shared_ptr<AudioMetadataContent>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t **a1, unsigned __int16 a2, _WORD **a3)
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
      v4 = v3;
      v5 = *(v3 + 16);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void std::__shared_ptr_emplace<AudioMetadataContent>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032EA10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void sub_18F757AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AudioMetadataProgramme>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032E9D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t AUv3InstanceBase::MIDIEvent(AUv3InstanceBase *this, unsigned __int8 a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  NextMIDIEvent(v6, &v7);
  (*(*(this + 23) + 16))();
  return 0;
}

void sub_18F757D3C(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x18F757D2CLL);
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::Start(void)::{lambda(void)#1}>(uint64_t a1)
{
  v1 = *(**a1 + 72);
  v7 = 0;
  v2 = [v1 startHardwareAndReturnError:&v7];
  v3 = v7;
  v4 = v3;
  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 code];
  }

  return v5;
}

uint64_t AUv3InstanceBase::ScheduleParameters(AUv3InstanceBase *this, const AudioUnitParameterEvent *a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v4[0] = &v6;
  v4[1] = &v5;
  v4[2] = this;
  return AUv3InstanceBase::NSExceptionBarrier(caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::ScheduleParameters(AudioUnitParameterEvent const*,unsigned int)::$_0>, v4);
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::ScheduleParameters(AudioUnitParameterEvent const*,unsigned int)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  if (**(*a1 + 8))
  {
    v2 = 0;
    v3 = *(v1 + 16);
    v4 = (**v1 + 16);
    do
    {
      v5 = *(v4 - 1);
      v6 = *(v3 + 176);
      if (v5 == 100)
      {
        (*(v6 + 16))(v6, 1589718640, 0, 1589718640, 1589700000.0);
      }

      else
      {
        v7 = *(v4 - 2);
        v8 = (*(v4 - 4) << 61) | ((*(v4 - 3) & 0x1FFFFFFF) << 32);
        if (v5 == 1)
        {
          (*(v6 + 16))(v6, *v4 | 0xFFFFFFFF00000000, 0, v8 | v7, v4[1]);
        }

        else
        {
          (*(v6 + 16))(v6, *v4 | 0xFFFFFFFF00000000, 0, v8 | v7, v4[2]);
          (*(*(v3 + 176) + 16))(v4[3]);
        }
      }

      ++v2;
      v4 += 8;
    }

    while (v2 < **(v1 + 8));
  }

  return 0;
}

uint64_t AUv3InstanceBase::Render(AUv3InstanceBase *this, unsigned int *a2, const AudioTimeStamp *a3, unsigned int a4, uint64_t a5, AudioBufferList *a6)
{
  v7 = *(this + 21);
  if (!v7)
  {
    return 4294967292;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN17AUv3RenderAdapter6RenderERjRK14AudioTimeStampjjR15AudioBufferList_block_invoke;
  v9[3] = &__block_descriptor_40_e106_i44__0_I8r__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_16I24q28__AudioBufferList_I_1_AudioBuffer_II_v___36l;
  v9[4] = this + 136;
  return (*(v7 + 16))(v7, a2, a3, a5, a4, a6, v9);
}

uint64_t AUv3InstanceBase::SetParameter(id **this, unsigned int a2, unsigned int a3, unsigned int a4, float a5, int a6)
{
  v15 = a5;
  v14 = a6;
  v8 = AUv3InstanceBase::ParameterMap::findParameterByScopeElementID(this + 25, a3, a4, a2);
  v13 = v8;
  if (v8)
  {
    if (*(this + 80) == 1)
    {
      v12[0] = &v13;
      v12[1] = this;
      v12[2] = &v15;
      v12[3] = &v14;
      v10 = AUv3InstanceBase::NSExceptionBarrier(caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::$_0>, v12);
    }

    else
    {
      *&v9 = a5;
      [v8 setValue:10 originator:v9];
      v10 = 0;
    }
  }

  else
  {
    v10 = 4294956418;
  }

  return v10;
}

id AUv3InstanceBase::ParameterMap::findParameterByScopeElementID(id **this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  AUv3InstanceBase::ParameterMap::checkCacheParameters(this);
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v8 = this[3];
  v9 = this[4];
  if (v9 == v8)
  {
    goto LABEL_16;
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 4);
  do
  {
    v11 = v10 >> 1;
    v12 = &v8[6 * (v10 >> 1)];
    v13 = *v12 < a2;
    if (*v12 == a2)
    {
      v14 = *(v12 + 1);
      v15 = v14 == a3;
      v13 = v14 < a3;
      if (v15)
      {
        v13 = *(v12 + 2) < a4;
      }
    }

    v16 = v12 + 6;
    v10 += ~v11;
    if (v13)
    {
      v8 = v16;
    }

    else
    {
      v10 = v11;
    }
  }

  while (v10);
  if (v8 != v9 && *v8 == a2 && *(v8 + 1) == a3 && *(v8 + 2) == a4)
  {
    WeakRetained = objc_loadWeakRetained(v8 + 2);
  }

  else
  {
LABEL_16:
    WeakRetained = 0;
  }

  objc_destroyWeak(v19 + 1);

  return WeakRetained;
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::$_0>(void ***a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v3 = AUv3InstanceBase::sAUParameter_address(***a1, AUv3InstanceBase::sSel_address);
  add = atomic_fetch_add(v2 + 94, 1u);
  v5 = add + 1;
  if (add == -1)
  {
    v5 = atomic_fetch_add(v2 + 94, 1u) + 1;
  }

  (*(v2 + 48))(*(v2 + 9), AUv3InstanceBase::sSel_SetV2Parameter, v3, *v1[3], v5, *v1[2]);
  return 0;
}

uint64_t AUv3InstanceBase::ParameterMap::checkCacheParameters(uint64_t this)
{
  v48[16] = *MEMORY[0x1E69E9840];
  v1 = (this + 16);
  v2 = atomic_load((this + 16));
  if ((v2 & 1) == 0)
  {
    v3 = this;
    os_unfair_recursive_lock_lock_with_options();
    v4 = atomic_load(v1);
    if ((v4 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(v3);
      v6 = [WeakRetained parameterTree];

      if (v6)
      {
        v43 = [v6 _autoCreatedForV2AU] != 0;
        memset(v41, 0, sizeof(v41));
        v42 = 1065353216;
        v7 = [v6 allParameters];
        v9 = *(v3 + 24);
        v8 = *(v3 + 32);
        if (v8 != v9)
        {
          do
          {
            v10 = v8 - 48;
            objc_destroyWeak((v8 - 32));
            v8 = v10;
          }

          while (v10 != v9);
        }

        v11 = *(v3 + 48);
        *(v3 + 32) = v9;
        v12 = *(v3 + 56);
        if (v12 != v11)
        {
          do
          {
            v13 = v12 - 48;
            objc_destroyWeak((v12 - 32));
            v12 = v13;
          }

          while (v13 != v11);
        }

        v14 = *(v3 + 104);
        *(v3 + 56) = v11;
        std::__tree<std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AUParameterGroup * {__strong}>>>::destroy(v14);
        *(v3 + 104) = 0;
        *(v3 + 112) = 0;
        *(v3 + 96) = v3 + 104;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        std::vector<AUv3InstanceBase::ScopeElementIDObj>::reserve((v3 + 24), [v7 count]);
        std::vector<AUv3InstanceBase::ScopeElementIDObj>::reserve((v3 + 48), [v7 count]);
        std::vector<AUv3InstanceBase::ScopeElementIDObj>::reserve(&v38, [v7 count]);
        v35[4] = &v38;
        v36 = 0;
        v37 = 0;
        v35[0] = &v43;
        v35[1] = v41;
        v35[2] = &v36;
        v35[3] = v3;
        v15 = v6;
        AUv3InstanceBase::ParameterMap::checkCacheParameters(void)::$_0::operator()(v35, 0, v15);
        if ([v15 isGroup])
        {
          v16 = v15;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v17 = [v16 children];
          v18 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
          if (v18)
          {
            v19 = *v45;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v45 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = *(*(&v44 + 1) + 8 * i);
                TraverseParameterTree<AUv3InstanceBase::ParameterMap::checkCacheParameters(void)::$_0 &>(v16, v21, v35);
              }

              v18 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
            }

            while (v18);
          }
        }

        v22 = *(v3 + 24);
        v23 = *(v3 + 32);
        v24 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 4));
        v48[0] = AUv3InstanceBase::ScopeElementIDObj::lessByID;
        if (v23 == v22)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24;
        }

        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,false>(v22, v23, v48, v25, 1);
        v26 = *(v3 + 48);
        v27 = *(v3 + 56);
        v28 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 4));
        v48[0] = AUv3InstanceBase::ScopeElementIDObj::lessByOriginalOrder;
        if (v27 == v26)
        {
          v29 = 0;
        }

        else
        {
          v29 = v28;
        }

        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,false>(v26, v27, v48, v29, 1);
        v30 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 4));
        v48[0] = AUv3InstanceBase::ScopeElementIDObj::lessByAddress;
        if (v39 == v38)
        {
          v31 = 0;
        }

        else
        {
          v31 = v30;
        }

        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,false>(v38, v39, v48, v31, 1);
        v32 = *(*(v3 + 8) + 40);
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3321888768;
        v33[2] = ___ZN16AUv3InstanceBase12ParameterMap20checkCacheParametersEv_block_invoke;
        v33[3] = &__block_descriptor_64_ea8_32c79_ZTSNSt3__16vectorIN16AUv3InstanceBase17ScopeElementIDObjENS_9allocatorIS2_EEEE_e46_v24__0q8r__AUParameterAutomationEvent_QQfIQ_16l;
        memset(v34, 0, 24);
        std::vector<AUv3InstanceBase::ScopeElementIDObj>::__init_with_size[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj*,AUv3InstanceBase::ScopeElementIDObj*>(v34, v38, v39, 0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 4));
        v34[3] = v32;
        atomic_store([v15 tokenByAddingParameterAutomationObserver:v33], (v3 + 88));
        objc_storeWeak((v3 + 128), v15);
        atomic_store(1u, (v3 + 16));
        v48[0] = v34;
        std::vector<AUv3InstanceBase::ScopeElementIDObj>::__destroy_vector::operator()[abi:ne200100](v48);

        v48[0] = &v38;
        std::vector<AUv3InstanceBase::ScopeElementIDObj>::__destroy_vector::operator()[abi:ne200100](v48);
      }
    }

    return os_unfair_recursive_lock_unlock();
  }

  return this;
}

void sub_18F758724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  a19 = &a26;
  std::vector<AUv3InstanceBase::ScopeElementIDObj>::__destroy_vector::operator()[abi:ne200100](&a19);

  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

BOOL AUv3InstanceBase::ScopeElementIDObj::lessByID(unsigned int *a1, unsigned int *a2)
{
  v3 = *a1;
  result = *a1 < *a2;
  if (v3 == *a2)
  {
    v5 = a1[1];
    v6 = a2[1];
    result = v5 < v6;
    if (v5 == v6)
    {
      return a1[2] < a2[2];
    }
  }

  return result;
}

void std::__tree<std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AUParameterGroup * {__strong}>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AUParameterGroup * {__strong}>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AUParameterGroup * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AUParameterGroup * {__strong}>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t *std::vector<AUv3InstanceBase::ScopeElementIDObj>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      std::allocator<AUv3InstanceBase::ScopeElementIDObj>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void AUv3InstanceBase::ParameterMap::checkCacheParameters(void)::$_0::operator()(unsigned __int8 **a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[3];
  if (([v6 isGroup] & 1) == 0)
  {
    v60 = v7;
    v61 = v5;
    v8 = v6;
    v64 = 0;
    v65 = [v8 _originalOrder];
    if (**a1 == 1)
    {
      v9 = [v8 address];
      LODWORD(v62) = v9 >> 61;
      HIDWORD(v62) = HIDWORD(v9) & 0x1FFFFFFF;
      v63 = v9;
    }

    else
    {
      v10 = [v8 keyPath];
      v11 = [v10 UTF8String];
      v12 = *v11;
      if (*v11)
      {
        v13 = v11 + 1;
        v14 = 5381;
        do
        {
          v14 = 33 * v14 + v12;
          v15 = *v13++;
          v12 = v15;
        }

        while (v15);
      }

      else
      {
        v14 = 5381;
      }

      v16 = a1[1];
      v17 = *(v16 + 1);
      v18 = vcnt_s8(v17);
      v18.i16[0] = vaddlv_u8(v18);
      v19 = v17 - 1;
      v20 = v17 - 1;
      v21 = v14;
LABEL_10:
      if (!v17)
      {
        goto LABEL_40;
      }

      if (v18.u32[0] > 1uLL)
      {
        v22 = v21;
        if (v17 <= v21)
        {
          v22 = v21 % v17;
        }
      }

      else
      {
        v22 = v19 & v21;
      }

      v23 = *(*v16 + 8 * v22);
      if (v23)
      {
        for (i = *v23; i; i = *i)
        {
          v25 = i[1];
          if (v25 == v21)
          {
            if (*(i + 4) == v21)
            {
              ++v21;
              goto LABEL_10;
            }
          }

          else
          {
            if (v18.u32[0] > 1uLL)
            {
              if (v25 >= v17)
              {
                v25 %= v17;
              }
            }

            else
            {
              v25 &= v20;
            }

            if (v25 != v22)
            {
              break;
            }
          }
        }
      }

      if (v18.u32[0] > 1uLL)
      {
        v26 = v21;
        if (v17 <= v21)
        {
          v26 = v21 % v17;
        }
      }

      else
      {
        v26 = v19 & v21;
      }

      v27 = *(*v16 + 8 * v26);
      if (!v27)
      {
LABEL_40:
        operator new();
      }

      do
      {
        while (1)
        {
          v27 = *v27;
          if (!v27)
          {
            goto LABEL_40;
          }

          v28 = v27[1];
          if (v28 == v21)
          {
            break;
          }

          if (v18.u32[0] > 1uLL)
          {
            if (v28 >= v17)
            {
              v28 %= v17;
            }
          }

          else
          {
            v28 &= v20;
          }

          if (v28 != v26)
          {
            goto LABEL_40;
          }
        }
      }

      while (*(v27 + 4) != v21);
      v62 = 0;
      v63 = v21;
    }

    objc_storeWeak(&v64, v8);
    v66 = [v8 address];
    v67 = 0;
    if (v61 && [v61 isGroup])
    {
      v29 = a1[2];
      if (*v29 != v61)
      {
        v30 = **a1;
        v31 = v8;
        v32 = v61;
        v33 = [v32 identifier];
        v34 = [v33 length];

        if (v34)
        {
          v57 = v31;
          v58 = v32;
          if (v30)
          {
            v35 = [v31 _clumpID];
          }

          else
          {
            v37 = [v32 keyPath];
            v38 = [v37 UTF8String];
            v39 = *v38;
            if (*v38)
            {
              v40 = v38 + 1;
              LODWORD(v35) = 5381;
              do
              {
                v35 = (33 * v35 + v39);
                v41 = *v40++;
                v39 = v41;
              }

              while (v41);
            }

            else
            {
              v35 = 5381;
            }
          }

          v43 = v60 + 13;
          v42 = v60[13];
          v44 = v60 + 13;
          if (!v42)
          {
            goto LABEL_82;
          }

          v45 = v60 + 13;
          do
          {
            v46 = *(v42 + 32);
            v47 = v46 >= v35;
            v48 = v46 < v35;
            if (v47)
            {
              v45 = v42;
            }

            v42 = *(v42 + 8 * v48);
          }

          while (v42);
          v44 = v60 + 13;
          if (v45 == v43 || (v44 = v60 + 13, v35 < *(v45 + 8)) || (v44 = v45, v45[5] != v58))
          {
LABEL_82:
            if (!v30 || ([v58 identifier], v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"clump_%d", v35), v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v49, "isEqualToString:", v50), v50, v49, v45 = v44, v31 = v57, v51))
            {
              while (1)
              {
                v52 = v58;
                v53 = *v43;
                if (!*v43)
                {
                  break;
                }

                while (1)
                {
                  while (1)
                  {
                    v54 = v53;
                    v55 = *(v53 + 32);
                    if (v35 >= v55)
                    {
                      break;
                    }

                    v53 = *v54;
                    if (!*v54)
                    {
                      goto LABEL_73;
                    }
                  }

                  if (v55 >= v35)
                  {
                    break;
                  }

                  v53 = v54[1];
                  if (!v53)
                  {
                    goto LABEL_73;
                  }
                }

                LODWORD(v35) = v35 + 1;
              }

LABEL_73:
              operator new();
            }
          }

          v36 = *(v45 + 8);
          v32 = v58;
        }

        else
        {
          v36 = 0;
        }

        v56 = a1[2];
        objc_storeStrong(v56, a2);
        *(v56 + 2) = v36;
        v29 = a1[2];
      }

      v67 = *(v29 + 2);
    }

    std::vector<AUv3InstanceBase::ScopeElementIDObj>::push_back[abi:ne200100](v60 + 3, &v62);
    std::vector<AUv3InstanceBase::ScopeElementIDObj>::push_back[abi:ne200100](v60 + 6, &v62);
    std::vector<AUv3InstanceBase::ScopeElementIDObj>::push_back[abi:ne200100](a1[4], &v62);
    objc_destroyWeak(&v64);

    v5 = v61;
  }
}

void sub_18F759140(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void TraverseParameterTree<AUv3InstanceBase::ParameterMap::checkCacheParameters(void)::$_0 &>(void *a1, void *a2, unsigned __int8 **a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  AUv3InstanceBase::ParameterMap::checkCacheParameters(void)::$_0::operator()(a3, v5, v6);
  if ([v6 isGroup])
  {
    v7 = v6;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v7 children];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          TraverseParameterTree<AUv3InstanceBase::ParameterMap::checkCacheParameters(void)::$_0 &>(v7, v12, a3);

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,false>(uint64_t *a1, char *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
  v160 = a1 - 6;
  while (1)
  {
    v10 = a2 - v9;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 4);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        if (!(*a3)(a2 - 6, v9))
        {
          return;
        }

        v72 = v9;
        v73 = (a2 - 48);
LABEL_181:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v72, v73);
        return;
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      v77 = (a2 - 48);
      v78 = (*a3)(v9 + 6, v9);
      v79 = (*a3)(v77, v9 + 6);
      if (v78)
      {
        if (v79)
        {
          v72 = v9;
        }

        else
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v9, v9 + 6);
          if (!(*a3)(v77, v9 + 6))
          {
            return;
          }

          v72 = v9 + 6;
        }

        v73 = v77;
      }

      else
      {
        if (!v79)
        {
          return;
        }

        v75 = v9 + 6;
        v76 = v77;
LABEL_167:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v75, v76);
        if (!(*a3)(v9 + 6, v9))
        {
          return;
        }

        v73 = v9 + 6;
        v72 = v9;
      }

      goto LABEL_181;
    }

    if (v11 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,0>(v9, v9 + 6, v9 + 12, a2 - 6, a3);
      return;
    }

    if (v11 == 5)
    {
      break;
    }

LABEL_9:
    if (v10 <= 1151)
    {
      if (a5)
      {
        if (v9 != a2)
        {
          v80 = (v9 + 6);
          if (v9 + 6 != a2)
          {
            v81 = 0;
            v82 = v9;
            do
            {
              v83 = v80;
              if ((*a3)(v80, v82))
              {
                v84 = a2;
                v85 = *v83;
                v171 = *(v83 + 8);
                v170 = v85;
                objc_moveWeak(&v172, v82 + 8);
                v173 = *(v82 + 9);
                v174 = *(v82 + 22);
                v86 = v81;
                while (1)
                {
                  v87 = v86;
                  v88 = v9 + v86;
                  *(v88 + 6) = *(v9 + v86);
                  *(v88 + 14) = *(v9 + v86 + 8);
                  v89 = (v9 + v86 + 16);
                  WeakRetained = objc_loadWeakRetained(v89);
                  objc_storeWeak(v88 + 8, WeakRetained);

                  *(v88 + 72) = *(v88 + 24);
                  *(v88 + 22) = *(v88 + 10);
                  if (!v87)
                  {
                    break;
                  }

                  v91 = (*a3)(&v170, v88 - 6);
                  v86 = v87 - 48;
                  if ((v91 & 1) == 0)
                  {
                    v92 = (v9 + v87);
                    v93 = v9 + v87;
                    v94 = v9 + v87 + 24;
                    v89 = (v93 + 16);
                    goto LABEL_127;
                  }
                }

                v94 = (v88 + 24);
                v92 = v9;
LABEL_127:
                v95 = v170;
                *(v92 + 2) = v171;
                *v92 = v95;
                v96 = objc_loadWeakRetained(&v172);
                objc_storeWeak(v89, v96);

                v97 = v173;
                *(v94 + 16) = v174;
                *v94 = v97;
                objc_destroyWeak(&v172);
                a2 = v84;
              }

              v80 = v83 + 48;
              v81 += 48;
              v82 = v83;
            }

            while ((v83 + 48) != a2);
          }
        }
      }

      else if (v9 != a2)
      {
        v146 = (v9 + 6);
        if (v9 + 6 != a2)
        {
          v147 = v9 + 9;
          do
          {
            v148 = v146;
            if ((*a3)(v146, v9))
            {
              v149 = a2;
              v150 = *v148;
              v171 = *(v148 + 8);
              v170 = v150;
              objc_moveWeak(&v172, v9 + 8);
              v173 = *(v9 + 9);
              v174 = *(v9 + 22);
              v151 = v147;
              do
              {
                v152 = v151;
                *(v151 - 3) = *(v151 - 9);
                *(v151 - 4) = *(v151 - 16);
                v153 = (v151 - 7);
                v154 = objc_loadWeakRetained(v151 - 7);
                objc_storeWeak(v151 - 1, v154);

                *v151 = *(v151 - 3);
                *(v151 + 4) = *(v151 - 8);
                v155 = (*a3)(&v170, v151 - 15);
                v151 -= 6;
              }

              while ((v155 & 1) != 0);
              v156 = v152 - 9;
              v157 = v170;
              *(v156 + 2) = v171;
              *v156 = v157;
              v158 = objc_loadWeakRetained(&v172);
              objc_storeWeak(v153, v158);

              v159 = v173;
              *(v152 - 8) = v174;
              *v151 = v159;
              objc_destroyWeak(&v172);
              a2 = v149;
            }

            v146 = v148 + 48;
            v147 += 6;
            v9 = v148;
          }

          while ((v148 + 48) != a2);
        }
      }

      return;
    }

    if (!a4)
    {
      if (v9 != a2)
      {
        v98 = (v11 - 2) >> 1;
        v161 = a2;
        v164 = v98;
        do
        {
          v99 = v98;
          if (v164 >= v98)
          {
            v100 = (2 * v98) | 1;
            v101 = &v9[6 * v100];
            if (2 * v98 + 2 < v11 && (*a3)(&v9[6 * v100], (v101 + 48)))
            {
              v101 += 48;
              v100 = 2 * v99 + 2;
            }

            v102 = &v9[6 * v99];
            a2 = v161;
            if (((*a3)(v101, v102) & 1) == 0)
            {
              v103 = *v102;
              v171 = *(v102 + 2);
              v170 = v103;
              objc_moveWeak(&v172, v102 + 2);
              v104 = *(v102 + 3);
              v174 = *(v102 + 10);
              v173 = v104;
              do
              {
                v105 = v101;
                v106 = *v101;
                *(v102 + 2) = *(v101 + 8);
                *v102 = v106;
                v107 = objc_loadWeakRetained((v101 + 16));
                objc_storeWeak(v102 + 2, v107);

                v108 = *(v105 + 24);
                *(v102 + 10) = *(v105 + 40);
                *(v102 + 3) = v108;
                if (v164 < v100)
                {
                  break;
                }

                v109 = (2 * v100) | 1;
                v101 = &v9[6 * v109];
                v100 = 2 * v100 + 2;
                if (v100 >= v11)
                {
                  v100 = v109;
                }

                else if ((*a3)(&v9[6 * v109], (v101 + 48)))
                {
                  v101 += 48;
                }

                else
                {
                  v100 = v109;
                }

                v102 = v105;
              }

              while (!(*a3)(v101, &v170));
              v110 = v170;
              *(v105 + 8) = v171;
              *v105 = v110;
              v111 = objc_loadWeakRetained(&v172);
              objc_storeWeak((v105 + 16), v111);

              v112 = v173;
              *(v105 + 40) = v174;
              *(v105 + 24) = v112;
              objc_destroyWeak(&v172);
              a2 = v161;
            }
          }

          v98 = v99 - 1;
        }

        while (v99);
        v113 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 4);
        do
        {
          v162 = a2;
          if (v113 >= 2)
          {
            v166 = *(v9 + 2);
            v165 = *v9;
            objc_moveWeak(&v167, v9 + 2);
            v114 = 0;
            v115 = *(v9 + 3);
            v169 = *(v9 + 10);
            v168 = v115;
            v116 = v9;
            do
            {
              v117 = &v116[6 * v114];
              v118 = (v117 + 6);
              v119 = (2 * v114) | 1;
              v120 = 2 * v114 + 2;
              if (v120 < v113)
              {
                v121 = v117 + 12;
                if ((*a3)(v117 + 6, v117 + 12))
                {
                  v118 = v121;
                  v119 = v120;
                }
              }

              v122 = *v118;
              *(v116 + 2) = *(v118 + 8);
              *v116 = v122;
              v123 = objc_loadWeakRetained((v118 + 16));
              objc_storeWeak(v116 + 2, v123);

              v124 = *(v118 + 24);
              *(v116 + 10) = *(v118 + 40);
              *(v116 + 3) = v124;
              v116 = v118;
              v114 = v119;
            }

            while (v119 <= ((v113 - 2) >> 1));
            v125 = (a2 - 48);
            if (v118 == v162 - 48)
            {
              *(v118 + 8) = v166;
              *v118 = v165;
              v143 = objc_loadWeakRetained(&v167);
              objc_storeWeak((v118 + 16), v143);

              v144 = v168;
              *(v118 + 40) = v169;
              *(v118 + 24) = v144;
            }

            else
            {
              v126 = *v125;
              *(v118 + 8) = *(v162 - 10);
              *v118 = v126;
              v127 = objc_loadWeakRetained(v162 - 4);
              objc_storeWeak((v118 + 16), v127);

              v128 = *(v162 - 24);
              *(v118 + 40) = *(v162 - 2);
              *(v118 + 24) = v128;
              *(v162 - 10) = v166;
              *v125 = v165;
              v129 = objc_loadWeakRetained(&v167);
              objc_storeWeak(v162 - 4, v129);

              v130 = v168;
              *(v162 - 2) = v169;
              *(v162 - 24) = v130;
              v131 = v118 - v9 + 48;
              if (v131 >= 49)
              {
                v132 = (-2 - 0x5555555555555555 * (v131 >> 4)) >> 1;
                v133 = &v9[6 * v132];
                if ((*a3)(v133, v118))
                {
                  v134 = *v118;
                  v171 = *(v118 + 8);
                  v170 = v134;
                  objc_moveWeak(&v172, (v118 + 16));
                  v135 = *(v118 + 24);
                  v174 = *(v118 + 40);
                  v173 = v135;
                  do
                  {
                    v136 = v133;
                    v137 = *v133;
                    *(v118 + 8) = *(v133 + 8);
                    *v118 = v137;
                    v138 = objc_loadWeakRetained((v133 + 16));
                    objc_storeWeak((v118 + 16), v138);

                    v139 = *(v136 + 24);
                    *(v118 + 40) = *(v136 + 40);
                    *(v118 + 24) = v139;
                    if (!v132)
                    {
                      break;
                    }

                    v132 = (v132 - 1) >> 1;
                    v133 = &v9[6 * v132];
                    v118 = v136;
                  }

                  while (((*a3)(v133, &v170) & 1) != 0);
                  v140 = v170;
                  *(v136 + 8) = v171;
                  *v136 = v140;
                  v141 = objc_loadWeakRetained(&v172);
                  objc_storeWeak((v136 + 16), v141);

                  v142 = v173;
                  *(v136 + 40) = v174;
                  *(v136 + 24) = v142;
                  objc_destroyWeak(&v172);
                }
              }
            }

            objc_destroyWeak(&v167);
          }

          a2 = v162 - 48;
        }

        while (v113-- > 2);
      }

      return;
    }

    v12 = &v9[6 * (v11 >> 1)];
    v13 = *a3;
    if (v10 >= 0x1801)
    {
      v14 = a4;
      v15 = v13(v12, v9);
      v16 = (*a3)(a2 - 6, v12);
      if (v15)
      {
        if (v16)
        {
          v17 = v9;
        }

        else
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v9, v12);
          if (!(*a3)(a2 - 6, v12))
          {
            goto LABEL_28;
          }

          v17 = &v9[6 * (v11 >> 1)];
        }

        v21 = (a2 - 48);
      }

      else
      {
        if (!v16 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v12, a2 - 6), !(*a3)(v12, v9)))
        {
LABEL_28:
          v23 = (*a3)((v12 - 48), v9 + 6);
          v24 = (*a3)(a2 - 12, (v12 - 48));
          if (v23)
          {
            if (v24)
            {
              v25 = v9 + 6;
            }

            else
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v9 + 6, (v12 - 48));
              if (!(*a3)(a2 - 12, (v12 - 48)))
              {
                goto LABEL_42;
              }

              v25 = (v12 - 48);
            }

            v26 = (a2 - 96);
          }

          else
          {
            if (!v24 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>((v12 - 48), a2 - 12), !(*a3)((v12 - 48), v9 + 6)))
            {
LABEL_42:
              v27 = (*a3)((v12 + 48), v9 + 12);
              v28 = (*a3)(a2 - 18, (v12 + 48));
              if (v27)
              {
                if (v28)
                {
                  v29 = v9 + 12;
                }

                else
                {
                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v9 + 12, (v12 + 48));
                  if (!(*a3)(a2 - 18, (v12 + 48)))
                  {
                    goto LABEL_52;
                  }

                  v29 = (v12 + 48);
                }

                v30 = (a2 - 144);
              }

              else
              {
                if (!v28 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>((v12 + 48), a2 - 18), !(*a3)((v12 + 48), v9 + 12)))
                {
LABEL_52:
                  v31 = (*a3)(v12, (v12 - 48));
                  v32 = (*a3)((v12 + 48), v12);
                  if (v31)
                  {
                    if (v32)
                    {
                      v33 = (v12 + 48);
                      v34 = (v12 - 48);
                    }

                    else
                    {
                      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>((v12 - 48), v12);
                      if (!(*a3)((v12 + 48), v12))
                      {
LABEL_61:
                        v35 = *v9;
                        v171 = *(v9 + 2);
                        v170 = v35;
                        objc_moveWeak(&v172, v9 + 2);
                        v36 = *(v9 + 3);
                        v174 = *(v9 + 10);
                        v173 = v36;
                        v37 = *(v12 + 8);
                        *v9 = *v12;
                        *(v9 + 2) = v37;
                        v38 = objc_loadWeakRetained((v12 + 16));
                        objc_storeWeak(v9 + 2, v38);

                        v39 = *(v12 + 24);
                        *(v9 + 10) = *(v12 + 40);
                        *(v9 + 3) = v39;
                        v40 = v170;
                        *(v12 + 8) = v171;
                        *v12 = v40;
                        v41 = objc_loadWeakRetained(&v172);
                        objc_storeWeak((v12 + 16), v41);

                        v42 = v173;
                        *(v12 + 40) = v174;
                        *(v12 + 24) = v42;
                        objc_destroyWeak(&v172);
                        a4 = v14;
                        goto LABEL_62;
                      }

                      v33 = (v12 + 48);
                      v34 = &v9[6 * (v11 >> 1)];
                    }
                  }

                  else
                  {
                    if (!v32)
                    {
                      goto LABEL_61;
                    }

                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v12, (v12 + 48));
                    if (!(*a3)(v12, (v12 - 48)))
                    {
                      goto LABEL_61;
                    }

                    v34 = (v12 - 48);
                    v33 = &v9[6 * (v11 >> 1)];
                  }

                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v34, v33);
                  goto LABEL_61;
                }

                v29 = v9 + 12;
                v30 = (v12 + 48);
              }

              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v29, v30);
              goto LABEL_52;
            }

            v25 = v9 + 6;
            v26 = (v12 - 48);
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v25, v26);
          goto LABEL_42;
        }

        v17 = v9;
        v21 = &v9[6 * (v11 >> 1)];
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v17, v21);
      goto LABEL_28;
    }

    v18 = v13(v9, v12);
    v19 = (*a3)(a2 - 6, v9);
    if (v18)
    {
      if (v19)
      {
        v20 = &v9[6 * (v11 >> 1)];
LABEL_36:
        v22 = (a2 - 48);
        goto LABEL_37;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v12, v9);
      if ((*a3)(a2 - 6, v9))
      {
        v20 = v9;
        goto LABEL_36;
      }
    }

    else if (v19)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v9, a2 - 6);
      if ((*a3)(v9, v12))
      {
        v20 = &v9[6 * (v11 >> 1)];
        v22 = v9;
LABEL_37:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v20, v22);
      }
    }

LABEL_62:
    --a4;
    if ((a5 & 1) == 0 && ((*a3)(v160, v9) & 1) == 0)
    {
      v58 = *v9;
      v171 = *(v9 + 2);
      v170 = v58;
      objc_moveWeak(&v172, v9 + 2);
      v59 = *(v9 + 3);
      v174 = *(v9 + 10);
      v173 = v59;
      if ((*a3)(&v170, a2 - 6))
      {
        a1 = v9;
        do
        {
          a1 += 6;
        }

        while (((*a3)(&v170, a1) & 1) == 0);
      }

      else
      {
        v60 = v9 + 6;
        do
        {
          a1 = v60;
          if (v60 >= a2)
          {
            break;
          }

          v61 = (*a3)(&v170, v60);
          v60 = a1 + 6;
        }

        while (!v61);
      }

      v62 = a2;
      if (a1 < a2)
      {
        v62 = a2;
        do
        {
          v62 -= 6;
        }

        while (((*a3)(&v170, v62) & 1) != 0);
      }

      while (a1 < v62)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a1, v62);
        do
        {
          a1 += 6;
        }

        while (!(*a3)(&v170, a1));
        do
        {
          v62 -= 6;
        }

        while (((*a3)(&v170, v62) & 1) != 0);
      }

      v63 = a2;
      v64 = a1 - 6;
      if (a1 - 6 != v9)
      {
        v65 = *v64;
        *(v9 + 2) = *(a1 - 10);
        *v9 = v65;
        v66 = objc_loadWeakRetained(a1 - 4);
        objc_storeWeak(v9 + 2, v66);

        v67 = *(a1 - 3);
        *(v9 + 10) = *(a1 - 2);
        *(v9 + 3) = v67;
      }

      v68 = v170;
      *(a1 - 10) = v171;
      *v64 = v68;
      v69 = objc_loadWeakRetained(&v172);
      objc_storeWeak(a1 - 4, v69);

      v70 = v173;
      *(a1 - 2) = v174;
      *(a1 - 3) = v70;
      objc_destroyWeak(&v172);
      a5 = 0;
      a2 = v63;
      goto LABEL_1;
    }

    v43 = *v9;
    v171 = *(v9 + 2);
    v170 = v43;
    objc_moveWeak(&v172, v9 + 2);
    v44 = *(v9 + 3);
    v174 = *(v9 + 10);
    v173 = v44;
    v45 = v9;
    do
    {
      v45 += 6;
    }

    while (((*a3)(v45, &v170) & 1) != 0);
    v46 = a4;
    v47 = a2;
    if (v45 - 6 == v9)
    {
      v47 = a2;
      do
      {
        if (v45 >= v47)
        {
          break;
        }

        v47 -= 48;
      }

      while (((*a3)(v47, &v170) & 1) == 0);
    }

    else
    {
      do
      {
        v47 -= 48;
      }

      while (!(*a3)(v47, &v170));
    }

    if (v45 >= v47)
    {
      a1 = v45;
    }

    else
    {
      v48 = v47;
      a1 = v45;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a1, v48);
        do
        {
          a1 += 6;
        }

        while (((*a3)(a1, &v170) & 1) != 0);
        do
        {
          v48 -= 6;
        }

        while (!(*a3)(v48, &v170));
      }

      while (a1 < v48);
    }

    v49 = a1 - 6;
    if (a1 - 6 != v9)
    {
      v50 = *v49;
      *(v9 + 2) = *(a1 - 10);
      *v9 = v50;
      v51 = objc_loadWeakRetained(a1 - 4);
      objc_storeWeak(v9 + 2, v51);

      v52 = *(a1 - 3);
      *(v9 + 10) = *(a1 - 2);
      *(v9 + 3) = v52;
    }

    v53 = v170;
    *(a1 - 10) = v171;
    *v49 = v53;
    v54 = objc_loadWeakRetained(&v172);
    objc_storeWeak(a1 - 4, v54);

    v55 = v173;
    *(a1 - 2) = v174;
    *(a1 - 3) = v55;
    objc_destroyWeak(&v172);
    v56 = v45 >= v47;
    a4 = v46;
    if (!v56)
    {
      goto LABEL_88;
    }

    v57 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*>(v9, a1 - 48, a3);
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*>(a1, a2, a3))
    {
      if (v57)
      {
        goto LABEL_1;
      }

LABEL_88:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,false>(v9, (a1 - 6), a3, v46, a5 & 1);
      a5 = 0;
      goto LABEL_1;
    }

    a2 = (a1 - 6);
    if (v57)
    {
      return;
    }
  }

  v74 = (a2 - 48);
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,0>(v9, v9 + 6, v9 + 12, v9 + 18, a3);
  if ((*a3)(v74, v9 + 18))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v9 + 18, v74);
    if ((*a3)(v9 + 18, v9 + 12))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v9 + 12, v9 + 18);
      if ((*a3)(v9 + 12, v9 + 6))
      {
        v75 = v9 + 6;
        v76 = v9 + 12;
        goto LABEL_167;
      }
    }
  }
}

void ___ZN16AUv3InstanceBase12ParameterMap20checkCacheParametersEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    for (i = 0; i != a2; ++i)
    {
      v7 = a3 + 32 * i;
      if (*(v7 + 24))
      {
        v8 = *(v7 + 8);
        v9 = *(v7 + 20);
        v22[0] = 0u;
        v21 = 0u;
        v22[1] = v8;
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        if (v11 != v10)
        {
          v12 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 4);
          do
          {
            v13 = v12 >> 1;
            v14 = &v10[6 * (v12 >> 1)];
            v15 = v14[4];
            v16 = v14 + 6;
            v12 += ~(v12 >> 1);
            if (v15 < v8)
            {
              v10 = v16;
            }

            else
            {
              v12 = v13;
            }
          }

          while (v12);
          if (v10 != v11 && v10[4] == v8)
          {
            if (v9 == 2)
            {
              v17 = kAudioUnitEvent_EndParameterChangeGesture;
            }

            else
            {
              v17 = v9 == 1;
            }

            v20.mEventType = v17;
            v18 = *(v10 + 2);
            v20.mArgument.mParameter.mAudioUnit = *(a1 + 56);
            v19 = *v10;
            v20.mArgument.mParameter.mParameterID = v18;
            *&v20.mArgument.mProperty.mScope = v19;
            AUEventListenerNotify(0, 0, &v20);
          }
        }

        objc_destroyWeak(v22);
      }
    }
  }
}

void std::vector<AUv3InstanceBase::ScopeElementIDObj>::__init_with_size[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj*,AUv3InstanceBase::ScopeElementIDObj*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      std::allocator<AUv3InstanceBase::ScopeElementIDObj>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<AUv3InstanceBase::ScopeElementIDObj>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 6;
        objc_destroyWeak(v4 - 4);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<AUv3InstanceBase::ScopeElementIDObj>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void __copy_helper_block_ea8_32c79_ZTSNSt3__16vectorIN16AUv3InstanceBase17ScopeElementIDObjENS_9allocatorIS2_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = (a1 + 32);
  v2[2] = 0;
  std::vector<AUv3InstanceBase::ScopeElementIDObj>::__init_with_size[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj*,AUv3InstanceBase::ScopeElementIDObj*>(v2, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 4));
}

BOOL AUv3InstanceBase::ScopeElementIDObj::lessByOriginalOrder(unsigned int *a1, unsigned int *a2)
{
  v3 = *a1;
  result = *a1 < *a2;
  if (v3 == *a2)
  {
    v5 = a1[1];
    v6 = a2[1];
    result = v5 < v6;
    if (v5 == v6)
    {
      return a1[6] < a2[6];
    }
  }

  return result;
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(uint64_t *a1, uint64_t *a2)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  objc_moveWeak(&v10, a1 + 2);
  v11 = *(a1 + 3);
  v12 = *(a1 + 10);
  v4 = *(a2 + 2);
  *a1 = *a2;
  *(a1 + 2) = v4;
  WeakRetained = objc_loadWeakRetained(a2 + 2);
  objc_storeWeak(a1 + 2, WeakRetained);

  v6 = *(a2 + 3);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 3) = v6;
  *a2 = v8;
  *(a2 + 2) = v9;
  v7 = objc_loadWeakRetained(&v10);
  objc_storeWeak(a2 + 2, v7);

  *(a2 + 3) = v11;
  *(a2 + 10) = v12;
  objc_destroyWeak(&v10);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (**a5)(uint64_t *, uint64_t *))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1;
LABEL_9:
      v13 = a3;
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a1, a2);
    if ((*a5)(a3, a2))
    {
      v12 = a2;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a2, a3);
    if ((*a5)(a2, a1))
    {
      v12 = a1;
      v13 = a2;
LABEL_10:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v12, v13);
    }
  }

  if ((*a5)(a4, a3))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a3, a4);
    if ((*a5)(a3, a2))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a2, a3);
      if ((*a5)(a2, a1))
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a1, a2);
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*>(uint64_t *a1, char *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      if ((*a3)(a2 - 6, a1))
      {
        v7 = a1;
        v8 = v4 - 6;
LABEL_30:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v7, v8);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v15 = a1 + 12;
    v16 = (*a3)(a1 + 6, a1);
    v17 = (*a3)(a1 + 12, a1 + 6);
    if (v16)
    {
      if (v17)
      {
        v18 = a1;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a1, a1 + 6);
        if (!(*a3)(a1 + 12, a1 + 6))
        {
          goto LABEL_35;
        }

        v18 = a1 + 6;
      }

      v19 = a1 + 12;
    }

    else
    {
      if (!v17 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a1 + 6, a1 + 12), !(*a3)(a1 + 6, a1)))
      {
LABEL_35:
        v20 = a1 + 18;
        if (a1 + 18 != v4)
        {
          v21 = 0;
          v22 = 0;
          v35 = v4;
          while (1)
          {
            if ((*a3)(v20, v15))
            {
              v36 = *v20;
              v37 = *(v20 + 2);
              objc_moveWeak(&v38, v20 + 2);
              v39 = *(v20 + 3);
              v40 = *(v20 + 10);
              v23 = v21;
              while (1)
              {
                v24 = v23;
                v25 = a1 + v23;
                *(v25 + 18) = *(a1 + v23 + 96);
                *(v25 + 38) = *(a1 + v23 + 104);
                v26 = (a1 + v23 + 112);
                WeakRetained = objc_loadWeakRetained(v26);
                objc_storeWeak(v25 + 20, WeakRetained);

                *(v25 + 168) = *(v25 + 120);
                *(v25 + 46) = *(v25 + 34);
                if (v24 == -96)
                {
                  break;
                }

                v28 = (*a3)(&v36, v25 + 6);
                v23 = v24 - 48;
                if ((v28 & 1) == 0)
                {
                  v29 = (a1 + v23 + 144);
                  v30 = a1 + v24;
                  v31 = a1 + v24 + 120;
                  v26 = (v30 + 112);
                  goto LABEL_43;
                }
              }

              v31 = v25 + 120;
              v29 = a1;
LABEL_43:
              *v29 = v36;
              *(v29 + 2) = v37;
              v32 = objc_loadWeakRetained(&v38);
              objc_storeWeak(v26, v32);

              *v31 = v39;
              *(v31 + 4) = v40;
              if (++v22 == 8)
              {
                v33 = v20 + 6 == v35;
                objc_destroyWeak(&v38);
                return v33;
              }

              objc_destroyWeak(&v38);
              v4 = v35;
            }

            v15 = v20;
            v21 += 48;
            v20 += 6;
            if (v20 == v4)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v19 = a1 + 6;
      v18 = a1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v18, v19);
    goto LABEL_35;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,0>(a1, a1 + 6, a1 + 12, a2 - 6, a3);
      return 1;
    }

    if (v6 != 5)
    {
      goto LABEL_16;
    }

    v9 = (a2 - 48);
    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(AUv3InstanceBase::ScopeElementIDObj const&,AUv3InstanceBase::ScopeElementIDObj const&),AUv3InstanceBase::ScopeElementIDObj*,0>(a1, a1 + 6, a1 + 12, a1 + 18, a3);
    if (!(*a3)(v9, a1 + 18))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a1 + 18, v9);
    if (!(*a3)(a1 + 18, a1 + 12))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a1 + 12, a1 + 18);
    if (!(*a3)(a1 + 12, a1 + 6))
    {
      return 1;
    }

    v10 = a1 + 6;
    v11 = a1 + 12;
    goto LABEL_22;
  }

  v12 = (a2 - 48);
  v13 = (*a3)(a1 + 6, a1);
  v14 = (*a3)(v12, a1 + 6);
  if (v13)
  {
    if (v14)
    {
      v7 = a1;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(a1, a1 + 6);
      if (!(*a3)(v12, a1 + 6))
      {
        return 1;
      }

      v7 = a1 + 6;
    }

    v8 = v12;
    goto LABEL_30;
  }

  if (v14)
  {
    v10 = a1 + 6;
    v11 = v12;
LABEL_22:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AUv3InstanceBase::ScopeElementIDObj *&,AUv3InstanceBase::ScopeElementIDObj *&>(v10, v11);
    if ((*a3)(a1 + 6, a1))
    {
      v8 = a1 + 6;
      v7 = a1;
      goto LABEL_30;
    }
  }

  return 1;
}

void std::vector<AUv3InstanceBase::ScopeElementIDObj>::push_back[abi:ne200100](unint64_t *a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v11;
    }

    v23 = a1;
    if (v12)
    {
      std::allocator<AUv3InstanceBase::ScopeElementIDObj>::allocate_at_least[abi:ne200100](v12);
    }

    *(&v22 + 1) = 0;
    v13 = *a2;
    v14 = 48 * v9;
    *(v14 + 8) = *(a2 + 2);
    *v14 = v13;
    objc_copyWeak((v14 + 16), a2 + 2);
    v15 = *(a2 + 3);
    *(v14 + 40) = *(a2 + 10);
    *(v14 + 24) = v15;
    *&v22 = v14 + 48;
    v16 = a1[1];
    v17 = v14 + *a1 - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AUv3InstanceBase::ScopeElementIDObj>,AUv3InstanceBase::ScopeElementIDObj*>(*a1, v16, v17);
    v18 = *a1;
    *a1 = v17;
    v19 = a1[2];
    v20 = v22;
    *(a1 + 1) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v21[0] = v18;
    v21[1] = v18;
    std::__split_buffer<AUv3InstanceBase::ScopeElementIDObj>::~__split_buffer(v21);
    v8 = v20;
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    objc_copyWeak((v5 + 16), a2 + 2);
    v7 = *(a2 + 3);
    *(v5 + 40) = *(a2 + 10);
    *(v5 + 24) = v7;
    v8 = v5 + 48;
  }

  a1[1] = v8;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AUv3InstanceBase::ScopeElementIDObj>,AUv3InstanceBase::ScopeElementIDObj*>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      v7 = *v6;
      *(a3 + 8) = *(v6 + 2);
      *a3 = v7;
      objc_moveWeak((a3 + 16), v6 + 2);
      v8 = *(v6 + 3);
      *(a3 + 40) = *(v6 + 10);
      *(a3 + 24) = v8;
      v6 += 6;
      a3 += 48;
    }

    while (v6 != a2);
    do
    {
      objc_destroyWeak(v5 + 2);
      v5 += 6;
    }

    while (v5 != a2);
  }
}

uint64_t std::__split_buffer<AUv3InstanceBase::ScopeElementIDObj>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    objc_destroyWeak((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t AUv3InstanceBase::GetParameter(AUv3InstanceBase *this, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  v7 = AUv3InstanceBase::ParameterMap::findParameterByScopeElementID(this + 25, a3, a4, a2);
  v13 = v7;
  if (!v7)
  {
    return 4294956418;
  }

  if ((*(this + 80) & 1) != 0 || (v8 = v7, [*(this + 9) isLocalCachingDisabled]))
  {
    v12[0] = &v13;
    v12[1] = this;
    v12[2] = a5;
    v9 = AUv3InstanceBase::NSExceptionBarrier(caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::GetParameter(unsigned int,unsigned int,unsigned int,float &)::$_0>, v12);
    v8 = v13;
  }

  else
  {
    [v8 value];
    v9 = 0;
    *a5 = v10;
  }

  return v9;
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::GetParameter(unsigned int,unsigned int,unsigned int,float &)::$_0>(void ***a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v3 = AUv3InstanceBase::sAUParameter_address(***a1, AUv3InstanceBase::sSel_address);
  *v1[2] = (v2[49])(v2[9], AUv3InstanceBase::sSel_GetV2Parameter, v3, *(v2 + 94));
  return 0;
}

uint64_t AUv3InstanceBase::RemovePropertyListener(AUv3InstanceBase *this, int a2, void (*a3)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a4, char a5)
{
  v10 = a2;
  v8 = a4;
  v9 = a3;
  v7 = a5;
  v6[0] = this;
  v6[1] = &v10;
  v6[2] = &v9;
  v6[3] = &v7;
  v6[4] = &v8;
  return AUv3InstanceBase::NSExceptionBarrier(caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::RemovePropertyListener(unsigned int,void (*)(void *,OpaqueAudioComponentInstance *,unsigned int,unsigned int,unsigned int),void *,BOOL)::$_0>, v6);
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::RemovePropertyListener(unsigned int,void (*)(void *,OpaqueAudioComponentInstance *,unsigned int,unsigned int,unsigned int),void *,BOOL)::$_0>(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = (*a1)[2];
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  os_unfair_recursive_lock_lock_with_options();
  v6 = *(v1 + 112);
  if (*(v1 + 104) == v6)
  {
    v7 = *(v1 + 104);
  }

  else
  {
    v7 = *(v1 + 104);
    while (1)
    {
      v8 = *v7;
      if (*(*v7 + 24) == *v2 && *(v8 + 32) == *v3 && (*v4 != 1 || *(v8 + 40) == *v5))
      {
        break;
      }

      v7 += 2;
      if (v7 == v6)
      {
        goto LABEL_17;
      }
    }

    if (v7 != v6)
    {
      v11 = v7 + 2;
      if (v7 + 2 != v6)
      {
        do
        {
          v12 = *v11;
          if (*(*v11 + 24) != *v2 || *(v12 + 32) != *v3 || *v4 == 1 && *(v12 + 40) != *v5)
          {
            v13 = v11[1];
            *v11 = 0;
            v11[1] = 0;
            v14 = v7[1];
            *v7 = v12;
            v7[1] = v13;
            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }

            v7 += 2;
          }

          v11 += 2;
        }

        while (v11 != v6);
        v6 = *(v1 + 112);
      }
    }
  }

  if (v7 != v6)
  {
    while (v6 != v7)
    {
      v9 = *(v6 - 1);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      v6 -= 2;
    }

    *(v1 + 112) = v7;
  }

LABEL_17:
  os_unfair_recursive_lock_unlock();
  return 0;
}

uint64_t AUv3InstanceBase::AddPropertyListener(AUv3InstanceBase *this, int a2, void (*a3)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v5[0] = &v8;
  v5[1] = this;
  v5[2] = &v7;
  v5[3] = &v6;
  return AUv3InstanceBase::NSExceptionBarrier(caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::AddPropertyListener(unsigned int,void (*)(void *,OpaqueAudioComponentInstance *,unsigned int,unsigned int,unsigned int),void *)::$_0>, v5);
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::AddPropertyListener(unsigned int,void (*)(void *,OpaqueAudioComponentInstance *,unsigned int,unsigned int,unsigned int),void *)::$_0>(unsigned int ***a1)
{
  v1 = *a1;
  v2 = ***a1;
  v3 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v3 + 8), v2);
  if (Value)
  {
    v5 = Value;
    if ((Value[2] & 2) == 0)
    {
      os_unfair_recursive_lock_lock_with_options();
      v6 = v5[1];
      operator new();
    }
  }

  v7 = **v1;
  result = 4294956417;
  if (v7 <= 0x13)
  {
    v9 = 1 << v7;
    if ((v9 & 0x818) != 0)
    {
      os_unfair_recursive_lock_lock_with_options();
      operator new();
    }

    if ((v9 & 0x80100) != 0)
    {
      os_unfair_recursive_lock_lock_with_options();
      operator new();
    }
  }

  return result;
}

void sub_18F75B88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<AUv3InstanceBase::ClientPropertyListener>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::allocator<std::shared_ptr<CA::ADMContent>>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(a1 + 8) = v5;
}

void AUv3InstanceBase::ClientPropertyListener::~ClientPropertyListener(id *this)
{

  JUMPOUT(0x193ADF220);
}

{
}

void std::__shared_ptr_emplace<AUv3InstanceBase::ClientPropertyListener>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032BFC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

id AUv3InstanceBase::Proxy(AUv3InstanceBase *this)
{
  v2 = *(this + 11);
  if (!v2)
  {
    v3 = objc_alloc_init(AUExtensionInstanceProxy);
    v4 = *(this + 11);
    *(this + 11) = v3;

    [*(this + 11) setAuInstance:this];
    v2 = *(this + 11);
  }

  return v2;
}

void AUv3InstanceBase::BusPropertyListener::call(AUv3InstanceBase::BusPropertyListener *this, NSObject *a2, NSString *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [*(*(this + 1) + 72) inputBusses];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v21;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      v7 = (v7 + v6);
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v20 + 1) + 8 * v9) == v4)
        {
          v15 = 1;
LABEL_20:

          (*(this + 4))(*(this + 5), *(*(this + 1) + 40), *(this + 6), v15, v10);
          goto LABEL_21;
        }

        v10 = (v10 + 1);
        ++v9;
      }

      while (v6 != v9);
      v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [*(*(this + 1) + 72) outputBusses];
  v11 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = 0;
    v13 = *v17;
    while (2)
    {
      v14 = 0;
      v10 = v12;
      v12 = (v12 + v11);
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v16 + 1) + 8 * v14) == v4)
        {
          v15 = 2;
          goto LABEL_20;
        }

        v10 = (v10 + 1);
        ++v14;
      }

      while (v11 != v14);
      v11 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
}

void AUv3InstanceBase::BusPropertyListener::~BusPropertyListener(AUv3InstanceBase::BusPropertyListener *this)
{
  AUv3InstanceBase::BusPropertyListener::~BusPropertyListener(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032BF98;
  v2 = [*(*(this + 1) + 72) inputBusses];
  v3 = AUv3InstanceBase::Proxy(*(this + 1));
  [v2 removeObserverFromAllBusses:v3 forKeyPath:*(this + 2) context:this];

  v4 = [*(*(this + 1) + 72) outputBusses];
  v5 = AUv3InstanceBase::Proxy(*(this + 1));
  [v4 removeObserverFromAllBusses:v5 forKeyPath:*(this + 2) context:this];
}

void std::__shared_ptr_emplace<AUv3InstanceBase::BusPropertyListener>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032BF60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void AUv3InstanceBase::GlobalPropertyListener::~GlobalPropertyListener(AUv3InstanceBase::GlobalPropertyListener *this)
{
  AUv3InstanceBase::GlobalPropertyListener::~GlobalPropertyListener(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032BF10;
  v2 = *(this + 1);
  v3 = *(v2 + 9);
  v4 = AUv3InstanceBase::Proxy(v2);
  [v3 removeObserver:v4 forKeyPath:*(this + 2) context:this];
}

void std::__shared_ptr_emplace<AUv3InstanceBase::GlobalPropertyListener>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F032BED8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t AUv3InstanceBase::SetProperty(AUv3InstanceBase *this, int a2, int a3, int a4, const void *a5, int a6)
{
  v11 = a3;
  v12 = a2;
  v10 = a4;
  v9 = a5;
  v8 = a6;
  v7[0] = this;
  v7[1] = &v12;
  v7[2] = &v11;
  v7[3] = &v10;
  v7[4] = &v9;
  v7[5] = &v8;
  return AUv3InstanceBase::NSExceptionBarrier(caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::SetProperty(unsigned int,unsigned int,unsigned int,void const*,unsigned int)::{lambda(void)#1}>, v7);
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::SetProperty(unsigned int,unsigned int,unsigned int,void const*,unsigned int)::{lambda(void)#1}>(uint64_t **a1)
{
  v79 = *MEMORY[0x1E69E9840];
  v1 = **a1;
  v2 = *(*a1)[1];
  v3 = *(*a1)[2];
  v4 = *(*a1)[3];
  v5 = *(*a1)[4];
  v6 = *(*a1)[5];
  v73 = 0;
  v7 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v7 + 8), v2);
  if (!Value || (v9 = Value, (v10 = Value[10]) == 0))
  {
    v72[0] = v5;
    v16 = *(v1 + 72);
    v72[1] = v16;
    if (v2 > 26)
    {
      if (v2 <= 55)
      {
        if (v2 <= 47)
        {
          if (v2 != 27)
          {
            if (v2 == 36)
            {
              v17 = objc_opt_new();
              [v17 setNumber:*v5];
              v18 = *(v5 + 1);
              if (v18)
              {
                CFRetain(*(v5 + 1));
                *aBlock = v18;
                v19 = CFGetTypeID(v18);
                if (v19 != CFStringGetTypeID())
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Could not construct");
                }

                v20 = *aBlock;
              }

              else
              {
                v20 = 0;
                *aBlock = 0;
              }

              [v17 setName:v20];
              v59 = *(v1 + 72);
              *__dst = 0;
              [v59 _setValue:v17 forKey:@"currentPreset" error:__dst];
              v11 = *__dst;
              if (*aBlock)
              {
                CFRelease(*aBlock);
              }

              goto LABEL_105;
            }

LABEL_71:
            if (!gAudioComponentLogCategory)
            {
              operator new();
            }

            v45 = *gAudioComponentLogCategory;
            if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
            {
              *aBlock = 136316418;
              *&aBlock[4] = "AUv3Instance.mm";
              *&aBlock[12] = 1024;
              *&aBlock[14] = 1435;
              *&aBlock[18] = 1024;
              *&aBlock[20] = v2;
              *&aBlock[24] = 1024;
              *&aBlock[26] = v3;
              *&aBlock[30] = 1024;
              LODWORD(v75) = v4;
              WORD2(v75) = 1024;
              *(&v75 + 6) = v6;
              _os_log_impl(&dword_18F5DF000, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid property id %d (scope %d, element %d, size %d)", aBlock, 0x2Au);
            }

            v11 = 0;
            v12 = 4294956417;
            goto LABEL_123;
          }

          *(v1 + 368) = 0;
          *(v1 + 336) = 0u;
          *(v1 + 352) = 0u;
          if (v6 >= 0x28)
          {
            v44 = 40;
          }

          else
          {
            v44 = v6;
          }

          memcpy((v1 + 336), v5, v44);
          if (*(v1 + 344) || *(v1 + 352))
          {
            *aBlock = MEMORY[0x1E69E9820];
            *&aBlock[8] = 3221225472;
            *&aBlock[16] = ___ZN16AUv3InstanceBase16setHostCallbacksEPK16HostCallbackInfom_block_invoke;
            *&aBlock[24] = &__block_descriptor_40_e29_B56__0_d8_d16_q24_d32_q40_d48l;
            *&v75 = v1 + 336;
            [*(v1 + 72) setMusicalContextBlock:aBlock];
          }

          else
          {
            [*(v1 + 72) setMusicalContextBlock:0];
          }

          if (*(v1 + 360) || *(v1 + 368))
          {
            *__dst = MEMORY[0x1E69E9820];
            *&__dst[8] = 3221225472;
            *&__dst[16] = ___ZN16AUv3InstanceBase16setHostCallbacksEPK16HostCallbackInfom_block_invoke_2;
            *&__dst[24] = &__block_descriptor_40_e21_B40__0_Q8_d16_d24_d32l;
            v78 = v1 + 336;
            [*(v1 + 72) setTransportStateBlock:__dst];
          }

          else
          {
            [*(v1 + 72) setTransportStateBlock:0];
          }

LABEL_121:
          v11 = 0;
          goto LABEL_122;
        }

        if (v2 != 48)
        {
          if (v2 != 50)
          {
            goto LABEL_71;
          }

          *aBlock = 0;
          AUv3InstanceBase::setProperty(unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_0::operator()(v72, @"fullStateForDocument", aBlock);
LABEL_74:
          v11 = *aBlock;
          goto LABEL_105;
        }

LABEL_51:
        v36 = [*(v1 + 72) renderResourcesAllocated];
        if (v36)
        {
          v37 = [*(v1 + 72) transportStateBlock];
          v38 = [*(v1 + 72) musicalContextBlock];
          [*(v1 + 72) deallocateRenderResources];
        }

        else
        {
          v38 = 0;
          v37 = 0;
        }

        if (v2 == 63)
        {
          v49 = _Block_copy(*v5);
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 3221225472;
          *&aBlock[16] = ___ZN16AUv3InstanceBase11setPropertyEjjjPKvj_block_invoke_2;
          *&aBlock[24] = &unk_1E72C1268;
          v50 = v49;
          *&v75 = v50;
          v51 = _Block_copy(aBlock);
          [*(v1 + 72) setMIDIOutputEventListBlock:v51];
        }

        else
        {
          *__dst = 0uLL;
          if (v6 >= 0x10)
          {
            v46 = 16;
          }

          else
          {
            v46 = v6;
          }

          memcpy(__dst, v5, v46);
          v47 = (*(*v1 + 216))(v1);
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 3221225472;
          *&aBlock[16] = ___ZN16AUv3InstanceBase11setPropertyEjjjPKvj_block_invoke;
          *&aBlock[24] = &__block_descriptor_49_e18_i36__0q8C16q20r_28l;
          v76 = v47;
          v75 = *__dst;
          v48 = _Block_copy(aBlock);
          [*(v1 + 72) setMIDIOutputEventBlock:v48];
        }

        if (v36)
        {
          [*(v1 + 72) setTransportStateBlock:v37];
          [*(v1 + 72) setMusicalContextBlock:v38];
          v52 = *(v1 + 72);
          v71 = 0;
          [v52 allocateRenderResourcesAndReturnError:&v71];
          v53 = v71;
          if (v53)
          {
            v54 = v53;
            if (!gAudioComponentLogCategory)
            {
              operator new();
            }

            v55 = *gAudioComponentLogCategory;
            if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
            {
              *__dst = 136315650;
              *&__dst[4] = "AUv3Instance.mm";
              *&__dst[12] = 1024;
              *&__dst[14] = 1386;
              *&__dst[18] = 2112;
              *&__dst[20] = v54;
              _os_log_impl(&dword_18F5DF000, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d Error occured while trying to reinitialize AU when setting MIDIOutputBlock: %@", __dst, 0x1Cu);
            }

            v11 = 0;
            v12 = 4294956447;
            goto LABEL_123;
          }
        }

        goto LABEL_121;
      }

      if (v2 > 1841)
      {
        if (v2 == 1842)
        {
          v11 = 0;
          [*(v1 + 72) setRequestViewControllerSynchronously:*v5];
          goto LABEL_122;
        }

        if (v2 == 3503)
        {
          v11 = 0;
          [*(v1 + 72) setLocalCachingDisabled:*v5];
          goto LABEL_122;
        }

        goto LABEL_71;
      }

      if (v2 != 56)
      {
        if (v2 != 63)
        {
          goto LABEL_71;
        }

        goto LABEL_51;
      }

      WeakRetained = objc_loadWeakRetained(v5);
      [*(v1 + 72) requestViewControllerWithCompletionHandler:WeakRetained];
LABEL_120:

      goto LABEL_121;
    }

    if (v2 <= 7)
    {
      if (!v2)
      {
        *aBlock = 0;
        AUv3InstanceBase::setProperty(unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_0::operator()(v72, @"fullState", aBlock);
        goto LABEL_74;
      }

      if (v2 == 1)
      {
        goto LABEL_42;
      }

      if (v2 != 2)
      {
        goto LABEL_71;
      }

      if (v6 < 8)
      {
        goto LABEL_57;
      }

      if (v3)
      {
        v23 = v4;
      }

      else
      {
        v23 = 0;
      }

      if (v3)
      {
        v24 = v3;
      }

      else
      {
        v24 = 2;
      }

      v25 = AUv3InstanceBase::GetBus(v1, v24, v23, &v73);
      v26 = v25;
      v12 = v73;
      if (!v73)
      {
        v11 = [v25 format];
        if (!v11)
        {

          v12 = 4294956445;
          goto LABEL_123;
        }

        v27 = [v26 format];
        v28 = [v27 streamDescription];
        v29 = *v28;
        v30 = *(v28 + 16);
        *&v75 = *(v28 + 32);
        *aBlock = v29;
        *&aBlock[16] = v30;

        *aBlock = *v5;
        v31 = objc_alloc(getAVAudioFormatClass());
        v32 = [v26 format];
        v33 = [v32 channelLayout];
        v34 = [v31 initWithStreamDescription:aBlock channelLayout:v33];

        *__dst = 0;
        [v26 setFormat:v34 error:__dst];
        v11 = *__dst;

        goto LABEL_105;
      }
    }

    else
    {
      if (v2 <= 18)
      {
        if (v2 != 8)
        {
          if (v2 != 11)
          {
            goto LABEL_71;
          }

          if (v6 >= 4)
          {
            v21 = *v5;
            if (v3 == 2)
            {
              v67 = [*(v1 + 72) outputBusses];
              *aBlock = 0;
              [v67 setBusCount:v21 error:aBlock];
              v11 = *aBlock;
            }

            else
            {
              if (v3 != 1)
              {
                v11 = 0;
                v12 = 4294956430;
                goto LABEL_123;
              }

              v22 = [*(v1 + 72) inputBusses];
              *aBlock = 0;
              [v22 setBusCount:v21 error:aBlock];
              v11 = *aBlock;

              std::vector<AUv3RenderAdapter::AUInputElement>::resize((v1 + 144), v21);
            }

LABEL_105:
            if (v11)
            {
              v12 = [v11 code];
              goto LABEL_123;
            }

LABEL_122:
            v12 = 0;
            goto LABEL_123;
          }

          goto LABEL_57;
        }

        if (v6 < 0x28)
        {
LABEL_57:
          v11 = 0;
          v12 = 4294967246;
LABEL_123:

          goto LABEL_124;
        }

        if (v3)
        {
          v56 = v4;
        }

        else
        {
          v56 = 0;
        }

        if (v3)
        {
          v57 = v3;
        }

        else
        {
          v57 = 2;
        }

        v26 = AUv3InstanceBase::GetBus(v1, v57, v56, &v73);
        v12 = v73;
        if (!v73)
        {
          v63 = *(v5 + 7);
          if (v63 < 3)
          {
            v66 = 0;
          }

          else
          {
            AVAudioChannelLayoutClass = getAVAudioChannelLayoutClass();
            v65 = [v26 format];
            v66 = [AVAudioChannelLayoutClass layoutWithLayoutTag:{AUv3InstanceBase::setProperty(unsigned int, unsigned int, unsigned int, void const*, unsigned int)::$_1::operator()(v65, v5, v63 | 0x930000)}];
          }

          v69 = [objc_alloc(getAVAudioFormatClass()) initWithStreamDescription:v5 channelLayout:v66];
          *aBlock = 0;
          [v26 setFormat:v69 error:aBlock];
          v11 = *aBlock;

          goto LABEL_105;
        }

        goto LABEL_95;
      }

      if (v2 != 19)
      {
        if (v2 != 23)
        {
          goto LABEL_71;
        }

LABEL_42:
        WeakRetained = AUv3InstanceBase::GetBus(v1, v3, v4, &v73);
        v12 = v73;
        if (!v73)
        {
          v12 = AUv3RenderAdapter::SetProperty((v1 + 136), v2, v3, v4, v5, v6);
          v73 = v12;
          if (!v12)
          {
            v60 = *(v1 + 144);
            v61 = 0xCCCCCCCCCCCCCCCDLL * ((*(v1 + 152) - v60) >> 3) > v4 && *(v60 + 40 * v4) != 0;
            [WeakRetained setEnabled:v61];
            goto LABEL_120;
          }
        }

        goto LABEL_96;
      }

      v26 = AUv3InstanceBase::GetBus(v1, v3, v4, &v73);
      v12 = v73;
      if (!v73)
      {
        v40 = [getAVAudioChannelLayoutClass() layoutWithLayout:v5];
        v41 = objc_alloc(getAVAudioFormatClass());
        v42 = [v26 format];
        v43 = [v41 initWithStreamDescription:objc_msgSend(v42 channelLayout:{"streamDescription"), v40}];

        *aBlock = 0;
        [v26 setFormat:v43 error:aBlock];
        v11 = *aBlock;

        goto LABEL_105;
      }
    }

LABEL_95:

LABEL_96:
    v11 = 0;
    goto LABEL_123;
  }

  *aBlock = v5;
  *__dst = v6;
  v11 = (*(*v10 + 48))(v10, aBlock, __dst, &v73);
  v12 = v73;
  if (!v73)
  {
    if ((v9[2] & 2) != 0)
    {
      v39 = AUv3InstanceBase::GetBus(v1, v3, v4, &v73);
      v15 = v39;
      v12 = v73;
      if (!v73)
      {
        [v39 setValue:v11 forKey:v9[1]];
        v12 = 0;
      }
    }

    else
    {
      v13 = *(v1 + 72);
      v14 = v9[1];
      *aBlock = 0;
      [v13 _setValue:v11 forKey:v14 error:aBlock];
      v15 = *aBlock;

      if (!v15)
      {
        v12 = 0;
        goto LABEL_124;
      }

      v12 = [v15 code];
    }
  }

LABEL_124:

  return v12;
}

id AUv3InstanceBase::GetBus(id *this, int a2, unsigned int a3, int *a4)
{
  if (a2 == 2)
  {
    v6 = [this[9] outputBusses];
  }

  else
  {
    if (a2 != 1)
    {
      v8 = 0;
      *a4 = -10866;
      goto LABEL_9;
    }

    v6 = [this[9] inputBusses];
  }

  v7 = v6;
  if ([v6 count] <= a3)
  {
    *a4 = -10877;

    v8 = 0;
  }

  else
  {
    *a4 = 0;
    v8 = [v7 objectAtIndexedSubscript:?];
  }

LABEL_9:

  return v8;
}

void std::vector<AUv3RenderAdapter::AUInputElement>::resize(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a1) >> 3);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    if (a2 >= v4)
    {
      return;
    }

    v10 = &v3[40 * a2];
  }

  else
  {
    v6 = a1[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v6 - v2) >> 3) < v5)
    {
      if (a2 <= 0x666666666666666)
      {
        v7 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v3) >> 3);
        v8 = 2 * v7;
        if (2 * v7 <= a2)
        {
          v8 = a2;
        }

        if (v7 >= 0x333333333333333)
        {
          v9 = 0x666666666666666;
        }

        else
        {
          v9 = v8;
        }

        if (v9 <= 0x666666666666666)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0;
    v12 = (40 * v5 - 40) / 0x28;
    v13 = vdupq_n_s64(v12);
    v14 = (v12 + 4) & 0xFFFFFFFFFFFFFFCLL;
    v15 = v2 + 80;
    do
    {
      v16 = vdupq_n_s64(v11);
      v17 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_18F9016C0)));
      if (vuzp1_s16(v17, *v13.i8).u8[0])
      {
        *(v15 - 20) = 0;
      }

      if (vuzp1_s16(v17, *&v13).i8[2])
      {
        *(v15 - 10) = 0;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_18F9016B0)))).i32[1])
      {
        *v15 = 0;
        v15[10] = 0;
      }

      v11 += 4;
      v15 += 40;
    }

    while (v14 != v11);
    v10 = &v2[40 * v5];
  }

  a1[1] = v10;
}

id getAVAudioChannelLayoutClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVAudioChannelLayoutClass(void)::softClass;
  v7 = getAVAudioChannelLayoutClass(void)::softClass;
  if (!getAVAudioChannelLayoutClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL28getAVAudioChannelLayoutClassv_block_invoke;
    v3[3] = &unk_1E72C2B68;
    v3[4] = &v4;
    ___ZL28getAVAudioChannelLayoutClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18F75D468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AUv3InstanceBase::setProperty(unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_1::operator()(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 channelLayout];
  if (v6)
  {
    v7 = [v5 channelLayout];
    v8 = [v7 layout];
    if (!a2 || !v8)
    {

      goto LABEL_7;
    }

    v9 = [v5 channelLayout];
    v10 = [v9 channelCount];
    v11 = *(a2 + 28);

    if (v10 == v11)
    {
      v6 = [v5 channelLayout];
      a3 = *[v6 layout];
LABEL_7:
    }
  }

  return a3;
}

id getAVAudioFormatClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVAudioFormatClass(void)::softClass;
  v7 = getAVAudioFormatClass(void)::softClass;
  if (!getAVAudioFormatClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL21getAVAudioFormatClassv_block_invoke;
    v3[3] = &unk_1E72C2B68;
    v3[4] = &v4;
    ___ZL21getAVAudioFormatClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18F75D64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN16AUv3InstanceBase11setPropertyEjjjPKvj_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, void *__src)
{
  v7 = a2;
  v8 = *(a1 + 48) == 0;
  if (*(a1 + 48))
  {
    v7 = 0.0;
  }

  v16 = v7;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 1;
  v12 = 1;
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v13 = v9;
  v14 = a4;
  if (a4 >= 0x100)
  {
    v10 = 256;
  }

  else
  {
    v10 = a4;
  }

  memcpy(&v15, __src, v10);
  return (*(a1 + 32))(*(a1 + 40), &v16, a3, &v12);
}

void AUv3InstanceBase::setProperty(unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_0::operator()(CFTypeRef **a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = **a1;
  if (v5)
  {
    CFRetain(**a1);
    cf = v5;
    v6 = CFGetTypeID(v5);
    if (v6 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v7 = cf;
  }

  else
  {
    v7 = 0;
    cf = 0;
  }

  [(CFTypeRef *)a1[1] _setValue:v7 forKey:v9 error:a3, v9];
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_18F75D804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);

  _Unwind_Resume(a1);
}

uint64_t ___ZN16AUv3InstanceBase16setHostCallbacksEPK16HostCallbackInfom_block_invoke(uint64_t a1, void *a2, double *a3, void *a4, void *a5, void *a6, void *a7)
{
  v14 = *(a1 + 32);
  v15 = v14[1];
  if (v15 && !v15(*v14, a5, a2))
  {
    v16 = 1;
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    v16 = 0;
    if (a2)
    {
      *a2 = 0x405E000000000000;
    }
  }

  v21 = 4;
  v22 = 0;
  v20 = 4.0;
  v17 = *(a1 + 32);
  v18 = v17[2];
  if (v18 && !v18(*v17, &v22, &v20, &v21, a7))
  {
    if (a6)
    {
      *a6 = v22;
    }

    if (a3)
    {
      *a3 = v20;
    }

    if (a4)
    {
      *a4 = v21;
    }

    return 1;
  }

  else
  {
    if (a6)
    {
      *a6 = 0;
    }

    if (a3)
    {
      *a3 = 4.0;
    }

    if (a4)
    {
      *a4 = 0;
    }

    if (a7)
    {
      *a7 = 0;
    }
  }

  return v16;
}

uint64_t ___ZN16AUv3InstanceBase16setHostCallbacksEPK16HostCallbackInfom_block_invoke_2(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  v11 = 0;
  v6 = *(a1 + 32);
  v7 = v6[4];
  if (v7)
  {
    if (!v7(*v6, &v12 + 1, &v12, &v11 + 1, a3, &v11, a4, a5))
    {
      if (a2)
      {
        v8 = (2 * (HIBYTE(v12) != 0)) | (4 * (v12 != 0));
LABEL_10:
        if (HIBYTE(v11))
        {
          ++v8;
        }

        *a2 = v8 | (8 * (v11 != 0));
        return 1;
      }

      return 1;
    }

    return 0;
  }

  v9 = v6[3];
  if (!v9 || v9(*v6, &v12 + 1, &v11 + 1, a3, &v11, a4, a5))
  {
    return 0;
  }

  if (a2)
  {
    v8 = 2 * (HIBYTE(v12) != 0);
    goto LABEL_10;
  }

  return 1;
}

void ___ZL21getAVAudioFormatClassv_block_invoke(uint64_t a1)
{
  AVFAudioLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAudioFormat");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioFormatClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVAudioFormatClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AVFASoftLink.h" lineNumber:64 description:{@"Unable to find class %s", "AVAudioFormat"}];

    __break(1u);
  }
}

void AVFAudioLibrary(void)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL19AVFAudioLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72C0DA0;
    v5 = 0;
    AVFAudioLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!AVFAudioLibraryCore(char **)::frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AVFAudioLibrary()"];
    [v1 handleFailureInFunction:v2 file:@"AVFASoftLink.h" lineNumber:63 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t ___ZL19AVFAudioLibraryCorePPc_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AVFAudioLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void ___ZL28getAVAudioChannelLayoutClassv_block_invoke(uint64_t a1)
{
  AVFAudioLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVAudioChannelLayout");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVAudioChannelLayoutClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVAudioChannelLayoutClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"AVFASoftLink.h" lineNumber:65 description:{@"Unable to find class %s", "AVAudioChannelLayout"}];

    __break(1u);
  }
}

uint64_t AUv3InstanceBase::GetProperty(AUv3InstanceBase *this, int a2, int a3, int a4, void *a5, unsigned int *a6)
{
  v10 = a3;
  v11 = a2;
  v9 = a4;
  v8 = a5;
  v7[0] = this;
  v7[1] = &v11;
  v7[2] = &v10;
  v7[3] = &v9;
  v7[4] = &v8;
  v7[5] = a6;
  return AUv3InstanceBase::NSExceptionBarrier(caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::GetProperty(unsigned int,unsigned int,unsigned int,void *,unsigned int &)::{lambda(void)#1}>, v7);
}

uint64_t caulk::function_ref<int ()(void)>::functor_invoker<AUv3InstanceBase::GetProperty(unsigned int,unsigned int,unsigned int,void *,unsigned int &)::{lambda(void)#1}>(uint64_t **a1)
{
  v93 = *MEMORY[0x1E69E9840];
  v1 = **a1;
  v2 = *(*a1)[1];
  v3 = *(*a1)[2];
  v4 = *(*a1)[3];
  v5 = (*a1)[5];
  v6 = *(*a1)[4];
  v91 = 0;
  if (*(v1 + 80) == 1 && (v2 == 20 || v2 == 12))
  {
    [*(v1 + 72) flushEventSchedule];
  }

  v8 = CADeprecated::TSingleton<AUAudioUnitProperties>::instance();
  Value = CFDictionaryGetValue(*(v8 + 8), v2);
  if (Value)
  {
    v10 = Value;
    if (*(Value + 6))
    {
      if ((Value[16] & 2) != 0)
      {
        v25 = AUv3InstanceBase::GetBus(v1, v3, v4, &v91);
        v26 = v25;
        v12 = v91;
        if (v91)
        {

          v11 = 0;
          goto LABEL_171;
        }

        v11 = [v25 valueForKey:*(v10 + 1)];
      }

      else
      {
        if (v3)
        {
          v11 = 0;
          v12 = 4294956430;
LABEL_171:

          return v12;
        }

        if (v4)
        {
          v11 = 0;
          v12 = 4294956419;
          goto LABEL_171;
        }

        if (v2 == 29 && AUv3InstanceBase::isOutOfProcessAUv2(v1))
        {
          if (*v5 >= 4)
          {
            v11 = 0;
            v12 = 0;
            *v6 = 0;
            goto LABEL_171;
          }

          v11 = 0;
          goto LABEL_146;
        }

        v77 = *(v1 + 72);
        v78 = *(v10 + 1);
        v79 = [AUAudioUnitProperty propertyWithKey:v78 v2propID:*(v10 + 5) scope:0 element:0];
        *__src.name = 0;
        v11 = [v77 _valueForProperty:v79 error:&__src];
        v80 = *__src.name;

        if (v80)
        {
          v12 = [v80 code];

          goto LABEL_171;
        }
      }

      if (v11)
      {
        v12 = std::function<int ()(objc_object *,void *,unsigned int &)>::operator()((v10 + 24), v11, v6, v5);
        goto LABEL_171;
      }

LABEL_146:
      v12 = 4294956445;
      goto LABEL_171;
    }
  }

  if (v2 <= 33)
  {
    if (v2 <= 12)
    {
      if (v2 > 3)
      {
        if (v2 == 4)
        {
          if (*v5 >= 0x64)
          {
            v12 = AUv3InstanceBase::ParameterMap::parameterInfo((v1 + 200), v3, v4, &__src);
            if (!v12)
            {
              v56 = *__src.name;
              v57 = *&__src.name[32];
              *(v6 + 16) = *&__src.name[16];
              *(v6 + 32) = v57;
              *v6 = v56;
              v58 = *&__src.name[48];
              v59 = *&__src.clumpID;
              v60 = *&__src.unit;
              *(v6 + 96) = *&__src.flags;
              *(v6 + 64) = v59;
              *(v6 + 80) = v60;
              *(v6 + 48) = v58;
            }

            return v12;
          }

          return 4294967246;
        }

        if (v2 != 8)
        {
          if (v2 == 11)
          {
            if (*v5 >= 4)
            {
              if (v3)
              {
                if (v3 == 2)
                {
                  v13 = [*(v1 + 72) outputBusses];
                  v14 = [v13 count];
                }

                else
                {
                  if (v3 != 1)
                  {
                    return 4294956430;
                  }

                  v13 = [*(v1 + 72) inputBusses];
                  v14 = [v13 count];
                }

                *v6 = v14;
              }

              else
              {
                *v6 = 1;
              }

              v12 = 0;
              *v5 = 4;
              return v12;
            }

            return 4294967246;
          }

          goto LABEL_140;
        }

        if (*v5 < 0x28)
        {
          return 4294967246;
        }

        if (v3)
        {
          v38 = v4;
        }

        else
        {
          v38 = 0;
        }

        if (v3)
        {
          v39 = v3;
        }

        else
        {
          v39 = 2;
        }

        v40 = AUv3InstanceBase::GetBus(v1, v39, v38, &v91);
        v41 = v40;
        v12 = v91;
        if (!v91)
        {
          v42 = [v40 format];
          v43 = [v42 streamDescription];

          if (v43)
          {
            v44 = *v43;
            v45 = *(v43 + 16);
            *(v6 + 32) = *(v43 + 32);
            *v6 = v44;
            *(v6 + 16) = v45;
            v46 = 40;
LABEL_133:
            *v5 = v46;
LABEL_173:

            return 0;
          }

LABEL_163:
          v12 = 4294956445;
          goto LABEL_164;
        }

        goto LABEL_164;
      }

      if (v2 == 2)
      {
        if (*v5 < 8)
        {
          return 4294967246;
        }

        if (v3)
        {
          v69 = v4;
        }

        else
        {
          v69 = 0;
        }

        if (v3)
        {
          v70 = v3;
        }

        else
        {
          v70 = 2;
        }

        v71 = AUv3InstanceBase::GetBus(v1, v70, v69, &v91);
        v41 = v71;
        v12 = v91;
        if (!v91)
        {
          v72 = [v71 format];
          v73 = [v72 streamDescription];

          if (v73)
          {
            *v6 = *v73;
            v46 = 8;
            goto LABEL_133;
          }

          goto LABEL_163;
        }

LABEL_164:

        return v12;
      }

      if (v2 != 3)
      {
        goto LABEL_140;
      }

      AUv3InstanceBase::ParameterMap::paramIDsForScope(&__src, (v1 + 200), v3);
      v30 = *__src.name;
      v31 = (*&__src.name[8] - *__src.name) & 0xFFFFFFFC;
      if (v31 >= *v5)
      {
        v32 = *v5;
      }

      else
      {
        v32 = v31;
      }

      memcpy(v6, *__src.name, v32);
      *v5 = v32;
      if (v30)
      {
        operator delete(v30);
      }

      return 0;
    }

    if (v2 > 18)
    {
      if (v2 == 19)
      {
        v63 = AUv3InstanceBase::GetBus(v1, v3, v4, &v91);
        v41 = v63;
        v12 = v91;
        if (!v91)
        {
          v64 = [v63 format];
          v65 = [v64 channelLayout];

          if (v65)
          {
            v66 = layoutSize(v65);
            if (v66 <= *v5)
            {
              memcpy(v6, [(AVAudioChannelLayout *)v65 layout], v66);
              *v5 = v66;

              goto LABEL_173;
            }

            v12 = 4294967246;
          }

          else
          {
            v12 = 4294956445;
          }
        }

        goto LABEL_164;
      }

      if (v2 == 27)
      {
        if (*v5 >= 0x28)
        {
          v12 = 0;
          v54 = *(v1 + 336);
          v55 = *(v1 + 352);
          *(v6 + 32) = *(v1 + 368);
          *v6 = v54;
          *(v6 + 16) = v55;
          return v12;
        }

        return 4294967246;
      }

      if (v2 != 33)
      {
        goto LABEL_140;
      }

      if (*v5 < 0x18)
      {
        return 4294967246;
      }

      v27 = *v6;
      v28 = *(v6 + 8);

      return AUv3InstanceBase::ParameterMap::parameterStringFromValue((v1 + 200), v3, v27, v28, (v6 + 16));
    }

    if (v2 == 13)
    {
      v74 = [*(v1 + 72) channelCapabilities];
      v41 = v74;
      if (v74)
      {
        v75 = [v74 count];
        if (*v5 >= (2 * v75))
        {
          if (v75 >= 1)
          {
            v84 = 0;
            v85 = v75 & 0x7FFFFFFF;
            do
            {
              v86 = [v41 objectAtIndexedSubscript:v84];
              *(v6 + 2 * v84) = [v86 shortValue];

              ++v84;
            }

            while (v85 != v84);
          }

          goto LABEL_173;
        }

        v12 = 4294967246;
      }

      else
      {
        v12 = 4294956417;
      }

      goto LABEL_164;
    }

    if (v2 != 16)
    {
      goto LABEL_140;
    }

    if (*v5 < 8)
    {
      return 4294967246;
    }

    *__src.name = 0;
    v12 = AUv3InstanceBase::ParameterMap::parameterValueStrings((v1 + 200), v3, v4, &__src);
    v34 = *__src.name;
    if (v12)
    {

      return v12;
    }

LABEL_107:
    *v6 = v34;
    return v12;
  }

  if (v2 > 1848)
  {
    if (v2 <= 3500)
    {
      if (v2 == 1849)
      {
        v12 = 0;
        *v6 = *(v1 + 72);
        return v12;
      }

      if (v2 != 2015)
      {
        goto LABEL_140;
      }

      v35 = [*(v1 + 72) osWorkgroup];
      v36 = v35;
      if (v35)
      {
        v37 = v35;
      }

      *v6 = v36;

      return 0;
    }

    if (v2 == 3501)
    {
      if (*v5 < 8)
      {
        return 4294967246;
      }

      v67 = [*(v1 + 72) XPCListenerEndpoint];
      v41 = [v67 _endpoint];

      if (v41)
      {
        v68 = v41;
      }

      *v6 = v41;
      goto LABEL_173;
    }

    if (v2 != 3502)
    {
      if (v2 == 3503)
      {
        if (*v5)
        {
          v12 = 0;
          *v6 = [*(v1 + 72) isLocalCachingDisabled];
          return v12;
        }

        return 4294967246;
      }

LABEL_140:
      if (!gAudioComponentLogCategory)
      {
        operator new();
      }

      v76 = *gAudioComponentLogCategory;
      if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
      {
        *__src.name = 136316162;
        *&__src.name[4] = "AUv3Instance.mm";
        *&__src.name[12] = 1024;
        *&__src.name[14] = 1196;
        *&__src.name[18] = 1024;
        *&__src.name[20] = v2;
        *&__src.name[24] = 1024;
        *&__src.name[26] = v3;
        *&__src.name[30] = 1024;
        *&__src.name[32] = v4;
        _os_log_impl(&dword_18F5DF000, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid property id %d (scope %d, element %d)", &__src, 0x24u);
      }

      return 4294956417;
    }

    if (*v5 < 8)
    {
      return 4294967246;
    }

    v34 = [*(v1 + 72) audioUnitInstanceUUID];
    v12 = 0;
    goto LABEL_107;
  }

  if (v2 <= 37)
  {
    if (v2 == 34)
    {
      if (*v5 < 0x10)
      {
        return 4294967246;
      }

      v81 = *v6;
      v82 = *(v6 + 4);

      return AUv3InstanceBase::ParameterMap::parameterIDName((v1 + 200), v3, v81, v82, (v6 + 8));
    }

    else
    {
      if (v2 != 35)
      {
        goto LABEL_140;
      }

      if (*v5 < 0x10)
      {
        return 4294967246;
      }

      v33 = *v6;

      return AUv3InstanceBase::ParameterMap::parameterGroupName((v1 + 200), v33, (v6 + 8));
    }
  }

  else
  {
    if (v2 != 38)
    {
      if (v2 == 45)
      {
        v47 = AUv3InstanceBase::ParameterMap::findParameterByScopeElementID((v1 + 200), v3, 0, v4);
        v48 = v47;
        if (!v47)
        {
          return 4294967246;
        }

        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v49 = [v47 dependentParameters];
        v50 = [v49 countByEnumeratingWithState:&v87 objects:&__src count:16];
        if (v50)
        {
          v51 = *v88;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v88 != v51)
              {
                objc_enumerationMutation(v49);
              }

              v53 = [*(*(&v87 + 1) + 8 * i) unsignedLongLongValue];
              *v6 = v53 >> 61;
              *(v6 + 4) = v53;
              v6 += 8;
            }

            v50 = [v49 countByEnumeratingWithState:&v87 objects:&__src count:16];
          }

          while (v50);
        }
      }

      else
      {
        if (v2 != 57)
        {
          goto LABEL_140;
        }

        v15 = *v5 / 0x18uLL;
        v16 = [*(v1 + 72) parametersForOverviewWithCount:v15];
        v17 = [v16 count];
        if (v17 >= v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = v17;
        }

        *v5 = 24 * v18;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v19 = v16;
        v20 = [v19 countByEnumeratingWithState:&v87 objects:&__src count:16];
        if (v20)
        {
          v21 = *v88;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v88 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v87 + 1) + 8 * j);
              *v6 = *(v1 + 40);
              v24 = [v23 unsignedLongLongValue];
              *(v6 + 12) = v24 >> 61;
              *(v6 + 16) = HIDWORD(v24) & 0x1FFFFFFF;
              *(v6 + 8) = v24;
              v6 += 24;
            }

            v20 = [v19 countByEnumeratingWithState:&v87 objects:&__src count:16];
          }

          while (v20);
        }
      }

      return 0;
    }

    if (*v5 < 0x18)
    {
      return 4294967246;
    }

    v61 = *v6;
    v62 = *(v6 + 8);

    return AUv3InstanceBase::ParameterMap::parameterValueFromString((v1 + 200), v3, v61, v62, (v6 + 16));
  }
}