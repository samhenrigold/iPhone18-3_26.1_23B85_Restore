uint64_t TLocaleInfo::toLower(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 <= 127)
  {
    if (a2 == 73 && (*(a1 + 80) & 1) != 0)
    {
      return 305;
    }

    else
    {
      return __tolower(a2);
    }
  }

  if (!TLocaleInfo::isUpper(a1, a2))
  {
    return v2;
  }

  if (BYTE1(v2) <= 0x1Du)
  {
    if (BYTE1(v2) <= 2u)
    {
      if (BYTE1(v2))
      {
        if (BYTE1(v2) == 1 || v2 <= 0x24F)
        {
          return s_szTableLowercase0100to024F[v2 - 256];
        }
      }

      else if (v2 != 215 && (v2 - 192) <= 0x1E)
      {
        return v2 | 0x20;
      }

      return v2;
    }

    if (BYTE1(v2) - 4 >= 2)
    {
      if (BYTE1(v2) != 3)
      {
        if (BYTE1(v2) == 16 && (v2 - 4256) <= 0x25)
        {
          return (v2 + 7264);
        }

        return v2;
      }

      v4 = v2 - 880;
      if (v2 < 0x370)
      {
        return v2;
      }

      v5 = s_szTableLowercase0370to03FF;
      return v5[v4];
    }

    if ((v2 - 1120) <= 0x21 || (v2 - 1162) <= 0x35)
    {
      return v2 | 1;
    }

    if ((v2 - 1217) > 0xD)
    {
      if ((v2 - 1232) > 0x55)
      {
        if ((v2 & 0x7FFFFFF0) == 0x400)
        {
          return v2 | 0x50;
        }

        if ((v2 - 1040) > 0x1F)
        {
          if (v2 == 1216)
          {
            return 1231;
          }

          if ((v2 - 1329) > 0x25)
          {
            return v2;
          }

          return (v2 + 48);
        }

        return (v2 + 32);
      }

      return v2 | 1;
    }

    return (v2 & 1) + v2;
  }

  if (BYTE1(v2) <= 0x2Bu)
  {
    switch(BYTE1(v2))
    {
      case 0x1Eu:
        if (v2 >> 1 <= 0xF4A || v2 >> 5 >= 0xF5)
        {
          return v2 | 1;
        }

        if (v2 == 7838)
        {
          return 223;
        }

        break;
      case 0x1Fu:
        if (v2 <= 0x1FFC)
        {
          return s_szTableLowercase1F00to1FFC[v2 - 7936];
        }

        break;
      case 0x21u:
        if (v2 == 8498)
        {
          return 8526;
        }

        else if (v2 == 8579)
        {
          return 8580;
        }

        break;
    }
  }

  else
  {
    if (BYTE1(v2) <= 0xA6u)
    {
      if (BYTE1(v2) == 44)
      {
        if ((v2 & 0x7FFFFFE0) == 0x2C60)
        {
          v4 = v2 - 11360;
          v5 = s_szTableLowercase2C60to2C7F;
          return v5[v4];
        }

        if ((v2 - 11392) > 0xE && (v2 - 11499) > 3)
        {
          if ((v2 - 11264) > 0x2E)
          {
            return v2;
          }

          return (v2 + 48);
        }
      }

      else if (BYTE1(v2) != 166 || (v2 - 42560) > 0x2D && (v2 - 42624) > 0x17)
      {
        return v2;
      }

      return v2 | 1;
    }

    if (BYTE1(v2) != 167)
    {
      if (BYTE1(v2) != 255 || (v2 - 65313) > 0x19)
      {
        return v2;
      }

      return (v2 + 32);
    }

    if ((v2 - 42786) <= 0xD || (v2 - 42802) <= 0x3D)
    {
      return (v2 & 1) + v2;
    }

    if ((v2 - 42873) <= 3)
    {
      return v2 | 1;
    }

    if ((v2 - 42878) <= 9)
    {
      return (v2 & 1) + v2;
    }

    if (v2 == 42877)
    {
      return 7545;
    }

    else if (v2 == 42891)
    {
      return 42892;
    }
  }

  return v2;
}

double TLocaleInfo::stringToFloat(int a1, __int32 *a2, BOOL *a3)
{
  v16 = 0.0;
  v5 = wcslen(a2);
  if (v5 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 5)
  {
    if ((v5 | 1) == 5)
    {
      v7 = 7;
    }

    else
    {
      v7 = (v5 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(&__p, v7);
  }

  *(&__p.__r_.__value_.__s + 23) = v5;
  if (v5)
  {
    memmove(&__p, a2, 4 * v5);
  }

  __p.__r_.__value_.__s.__data_[v6] = 0;
  std::wistringstream::basic_istringstream[abi:ne200100](v11, &__p, 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  MEMORY[0x26672B000](v11, &v16);
  *a3 = (*(&v13[1].__locale_ + *(v11[0] - 24)) & 7) != 2;
  v8 = v16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v13);
  std::wistream::~wistream();
  MEMORY[0x26672B170](&v15);
  return v8;
}

void sub_26269AE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x26672B170](v15 + 120);
  _Unwind_Resume(a1);
}

uint64_t std::wistringstream::basic_istringstream[abi:ne200100](uint64_t a1, const std::wstring *a2, int a3)
{
  *(a1 + 168) = 0;
  *a1 = &unk_28752B040;
  *(a1 + 8) = 0;
  *(a1 + 120) = &unk_28752B068;
  std::ios_base::init((a1 + 120), (a1 + 16));
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  std::wstringbuf::basic_stringbuf[abi:ne200100](a1 + 16, a2, a3 | 8);
  return a1;
}

void sub_26269AF6C(_Unwind_Exception *a1)
{
  std::wistream::~wistream();
  MEMORY[0x26672B170](v1);
  _Unwind_Resume(a1);
}

uint64_t std::wistringstream::~wistringstream(uint64_t a1)
{
  MEMORY[0x26672B170](v2 + 120);
  return a1;
}

uint64_t TLocaleInfo::stringToULong(uint64_t a1, uint64_t a2, BOOL *a3, int a4)
{
  for (i = (a2 + 4); ; ++i)
  {
    v7 = *(i - 1);
    {
      operator new();
    }

    if (v7 > 159)
    {
      break;
    }

    v8 = v7 > 0x20 || ((1 << v7) & 0x100002600) == 0;
    if (v8)
    {
      goto LABEL_21;
    }

LABEL_18:
    ;
  }

  if (v7 >= 12288)
  {
    if (v7 != 65279 && v7 != 12288)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v7 == 160 || v7 == 8203)
  {
    goto LABEL_18;
  }

LABEL_21:
  v10 = *(i - 1);
  if (!a4)
  {
    {
      operator new();
    }

    v12 = v10 - 48;
    if (v10 >= 48)
    {
      if (v10 <= 0x39)
      {
        goto LABEL_34;
      }

      if (v10 >= 0x660)
      {
        LODWORD(v12) = TLocaleInfo::getDigitExtended(v12, v10);
        goto LABEL_33;
      }
    }

LABEL_83:
    result = 0;
    *a3 = 1;
    return result;
  }

  {
    operator new();
  }

  LODWORD(v12) = v10 - 48;
  if (v10 < 48)
  {
    goto LABEL_83;
  }

  if (v10 <= 0x39)
  {
    goto LABEL_34;
  }

  if (v10 < 0x41)
  {
    goto LABEL_83;
  }

  if (v10 <= 0x46)
  {
    LODWORD(v12) = v10 - 55;
    goto LABEL_34;
  }

  if (v10 - 97 >= 6)
  {
    goto LABEL_83;
  }

  LODWORD(v12) = v10 - 87;
LABEL_33:
  if (v12 == -1)
  {
    goto LABEL_83;
  }

LABEL_34:
  v13 = v12;
  v14 = *i;
  if (!*i)
  {
    goto LABEL_59;
  }

  if (a4)
  {
    v15 = 16;
  }

  else
  {
    v15 = 10;
  }

  while (2)
  {
    if (a4)
    {
      {
        operator new();
      }

      LODWORD(v17) = v14 - 48;
      if (v14 < 48)
      {
        break;
      }

      if (v14 <= 0x39)
      {
        goto LABEL_53;
      }

      if (v14 < 0x41)
      {
        break;
      }

      if (v14 <= 0x46)
      {
        LODWORD(v17) = v14 - 55;
        goto LABEL_53;
      }

      if (v14 - 97 >= 6)
      {
        break;
      }

      LODWORD(v17) = v14 - 87;
      goto LABEL_52;
    }

    {
      operator new();
    }

    v17 = v14 - 48;
    if (v14 >= 48)
    {
      if (v14 <= 0x39)
      {
LABEL_53:
        v13 = v13 * v15 + v17;
        v18 = i[1];
        ++i;
        v14 = v18;
        if (!v18)
        {
          break;
        }

        continue;
      }

      if (v14 < 0x660)
      {
        break;
      }

      LODWORD(v17) = TLocaleInfo::getDigitExtended(v17, v14);
LABEL_52:
      if (v17 == -1)
      {
        break;
      }

      goto LABEL_53;
    }

    break;
  }

LABEL_59:
  while (2)
  {
    v19 = *i;
    {
      operator new();
    }

    if (v19 <= 159)
    {
      if (v19 > 0x20 || ((1 << v19) & 0x100002600) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_75;
    }

    if (v19 >= 12288)
    {
      if (v19 != 65279 && v19 != 12288)
      {
        goto LABEL_78;
      }

LABEL_75:
      ++i;
      continue;
    }

    break;
  }

  if (v19 == 160 || v19 == 8203)
  {
    goto LABEL_75;
  }

LABEL_78:
  v8 = *i == 0;
  *a3 = *i != 0;
  if (v8)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

void sub_26269B3E8(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

const void **TLocaleInfo::valueToString(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = a2;
  if (a4)
  {
    v6 = 16;
  }

  else
  {
    v6 = 10;
  }

  if (v6 <= a2)
  {
    v7 = 1;
    v8 = a2;
    do
    {
      v8 /= v6;
      v7 *= v6;
    }

    while (v6 <= v8);
    if (v7)
    {
      do
      {
        v9 = (v5 / v7) | 0x30;
        if (v5 / v7 >= 0xA)
        {
          v9 = v5 / v7 + 55;
        }

        v12 = v9;
        TBuffer<wchar_t>::insert(a3, *(a3 + 16), &v12, 1uLL);
        v5 %= v7;
        v7 /= v6;
      }

      while (v7 > 1);
    }
  }

  v10 = v5 | 0x30;
  if (v5 >= 0xA)
  {
    v10 = v5 + 55;
  }

  v13 = v10;
  return TBuffer<wchar_t>::insert(a3, *(a3 + 16), &v13, 1uLL);
}

uint64_t std::wistringstream::~wistringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 24));

  return std::wistream::~wistream();
}

void virtual thunk tostd::wistringstream::~wistringstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  if (SHIBYTE(v1[12].__locale_) < 0)
  {
    operator delete(v1[10].__locale_);
  }

  v1[2].__locale_ = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v1 + 3);
  std::wistream::~wistream();

  JUMPOUT(0x26672B170);
}

{
  v1 = (a1 + *(*a1 - 24));
  if (SHIBYTE(v1[12].__locale_) < 0)
  {
    operator delete(v1[10].__locale_);
  }

  v1[2].__locale_ = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v1 + 3);
  std::wistream::~wistream();
  MEMORY[0x26672B170](&v1[15]);

  JUMPOUT(0x26672B1B0);
}

void std::wistringstream::~wistringstream(uint64_t a1)
{
  v2 = a1 + 120;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 24));
  std::wistream::~wistream();
  MEMORY[0x26672B170](v2);

  JUMPOUT(0x26672B1B0);
}

uint64_t std::wstringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::wstring *a2, int a3)
{
  *a1 = MEMORY[0x277D82870] + 16;
  MEMORY[0x26672B0F0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::wstring::operator=((a1 + 64), a2);
  std::wstringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_26269BA0C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void MrecInitModule_voc_voc(void)
{
  if (!gParDebugVocGetPics)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugVocGetPics", &unk_26288830E, &unk_26288830E, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugVocGetPics = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugVocGetPics);
  }
}

void Voc::Voc(Voc *this, __int16 a2)
{
  SvcCompatData::SvcCompatData((this + 40));
  *(this + 10) = 0;
  *(this + 11) = 0;
  FileSpec::FileSpec((this + 104));
  FileHistory::FileHistory((this + 144));
  PhnMgr::PhnMgr((this + 184));
  *(this + 34) = 0;
  *(this + 35) = 0;
  HashProbeKEV<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>::HashProbeKEV(this + 312, 0, 16);
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  MrecTime::MrecTime((this + 416));
  DgnString::DgnString((this + 448));
  DgnString::DgnString((this + 464));
  DgnString::DgnString((this + 488));
  DgnString::DgnString((this + 504));
  DFileProgressInfo::DFileProgressInfo((this + 520));
  *(this + 84) = a2;
  *(this + 66) = 0;
  *(this + 288) = 0;
  *(this + 170) = 0;
  *(this + 31) = 0;
  *(this + 253) = 0;
  *(this + 77) = 0;
  *(this + 300) = 0;
  *(this + 292) = 0;
  *(this + 43) = this;
  *(this + 54) = this;
  *(this + 178) = 0;
  *(this + 15) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 32) = -1;
  *(this + 17) = 0;
  *(this + 110) = 0;
  *(this + 120) = 0;
  *(this + 152) = 0;
}

void sub_26269BBD8(_Unwind_Exception *a1)
{
  DgnString::~DgnString(v1 + 504);
  DgnString::~DgnString(v1 + 488);
  DgnString::~DgnString(v1 + 464);
  DgnString::~DgnString(v1 + 448);
  DgnString::~DgnString(v1 + 416);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 400);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 384);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 368);
  DgnIArray<Utterance *>::~DgnIArray(v1 + 352);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 328);
  MrecInitModule_sdpres_sdapi();
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 272);
  PhnMgr::~PhnMgr((v1 + 184));
  FileHistory::~FileHistory((v1 + 144));
  FileSpec::~FileSpec(v2 + 24);
  DgnIOwnArray<WordNgramTemplate *>::releaseAll(v2);
  SvcCompatData::SvcCompatData((v1 + 40));
  _Unwind_Resume(a1);
}

void Voc::~Voc(Voc *this)
{
  if (*(this + 85))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 196, "voc/voc", 1, "%.500s %d %.500s %d", "delete voc", *(this + 84), "mVocReferringLatticeCount", *(this + 85));
  }

  if (*(this + 86))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 200, "voc/voc", 1, "%.500s %d %.500s %d", "delete voc", *(this + 84), "mVocReferringPrefilterResultCount", *(this + 86));
  }

  if (*(this + 87))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 203, "voc/voc", 1, "%.500s %d %.500s %d", "delete voc", *(this + 84), "mVocReferringSausageCount", *(this + 87));
  }

  if (*(this + 88))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 206, "voc/voc", 1, "%.500s %d %.500s %d", "delete voc", *(this + 84), "mVocReferringReproCount", *(this + 88));
  }

  v2 = *(this + 62);
  if (v2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 210, "voc/voc", 1, "%.500s %d %.500s %d", "delete voc", *(this + 84), "mnPrefilterers", v2);
  }

  v3 = *(this + 63);
  if (v3)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 214, "voc/voc", 1, "%.500s %d %.500s %d", "delete voc", *(this + 84), "mnTransducers", v3);
  }

  v4 = *(this + 64);
  if (v4)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 218, "voc/voc", 1, "%.500s %d %.500s %d", "delete voc", *(this + 84), "mnTransducerGrammars", v4);
  }

  DgnDelete<RuleMgr>(*(this + 8));
  *(this + 8) = 0;
  DgnDelete<StateMgr>(*(this + 7));
  *(this + 7) = 0;
  DgnDelete<EnvMgr>(*this);
  *this = 0;
  DgnDelete<CharInfo>(*(this + 1));
  *(this + 1) = 0;
  DgnDelete<CollMgr>(*(this + 2));
  *(this + 2) = 0;
  DgnDelete<PronCollMgr>(*(this + 3));
  *(this + 3) = 0;
  DgnDelete<LanguageModel>(*(this + 9));
  *(this + 9) = 0;
  DgnDelete<WordList>(*(this + 6));
  *(this + 6) = 0;
  DgnDelete<CharInfo>(*(this + 4));
  *(this + 4) = 0;
  v5 = *(this + 15);
  if (v5)
  {
    DgnSharedMemSet::unrefDSMEx(v5, *(this + 32));
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 560);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 544);
  DgnArray<DgnString>::releaseAll(this + 528);
  DgnString::~DgnString(this + 504);
  DgnString::~DgnString(this + 488);
  DgnString::~DgnString(this + 464);
  DgnString::~DgnString(this + 448);
  DgnString::~DgnString(this + 416);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 400);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 384);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 368);
  DgnIArray<Utterance *>::~DgnIArray(this + 352);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  MrecInitModule_sdpres_sdapi();
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 272);
  PhnMgr::~PhnMgr((this + 184));
  FileHistory::~FileHistory((this + 144));
  FileSpec::~FileSpec(this + 104);
  DgnIOwnArray<WordNgramTemplate *>::releaseAll(this + 80);
  SvcCompatData::SvcCompatData((this + 40));
}

CollMgr *DgnDelete<CollMgr>(CollMgr *result)
{
  if (result)
  {
    CollMgr::~CollMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

PronCollMgr *DgnDelete<PronCollMgr>(PronCollMgr *result)
{
  if (result)
  {
    PronCollMgr::~PronCollMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void (***DgnDelete<LanguageModel>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

EnvMgr **DgnDelete<WordList>(EnvMgr **result)
{
  if (result)
  {
    WordList::~WordList(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t Voc::computePrefLmScores(Voc *this)
{
  v27 = 0;
  v28 = 0;
  v2 = *(this + 66);
  if (!v2)
  {
    v13 = *(*(this + 6) + 388);
    v14 = *(this + 71);
    if (v13 <= v14)
    {
      *(this + 70) = v13;
      if (!v13)
      {
LABEL_25:
        v4 = &v27;
        goto LABEL_26;
      }
    }

    else
    {
      DgnPrimArray<short>::reallocElts(this + 272, v13 - v14, 0);
      *(this + 70) = v13;
    }

    v15 = 0;
    do
    {
      v16 = *(this + 6);
      if (v15 < *(v16 + 388) && *(*(v16 + 104) + v15))
      {
        v17 = v28;
        if (v28 == HIDWORD(v28))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v27, 1, 1);
          v17 = v28;
        }

        *(v27 + 4 * v17) = v15;
        LODWORD(v28) = v28 + 1;
      }

      else
      {
        *(*(this + 34) + 2 * v15) = 20000;
      }

      ++v15;
    }

    while (v13 != v15);
    goto LABEL_25;
  }

  CollWords = StateMgr::getCollWords(*(this + 7), v2, 0xFFFFu, 1);
  v4 = CollWords;
  v5 = *(CollWords + 8);
  if (!v5)
  {
    v11 = (this + 272);
    v12 = *(this + 71);
    v10 = 1;
    if (v12)
    {
LABEL_14:
      *(this + 70) = v10;
      goto LABEL_15;
    }

LABEL_13:
    DgnPrimArray<short>::reallocElts(v11, v10 - v12, 0);
    goto LABEL_14;
  }

  v6 = 0;
  v7 = *CollWords;
  do
  {
    v9 = *v7++;
    v8 = v9;
    if (v6 <= v9)
    {
      v6 = v8;
    }

    --v5;
  }

  while (v5);
  v10 = v6 + 1;
  v11 = (this + 272);
  v12 = *(this + 71);
  if (v12 < v6 + 1)
  {
    goto LABEL_13;
  }

  *(this + 70) = v10;
  if (v6 != -1)
  {
LABEL_15:
    memset_pattern16(*v11, &unk_262888330, 2 * v10);
  }

LABEL_26:
  if (*(v4 + 2))
  {
    v26[0] = 0;
    v26[1] = 0;
    (*(**(this + 9) + 520))(*(this + 9), v4, v26);
    v18 = *(v4 + 2);
    if (v18)
    {
      v19 = *v4;
      v20 = v26[0];
      v21 = **(this + 4);
      v22 = *(this + 34);
      do
      {
        v24 = *v19++;
        v23 = v24;
        LOWORD(v24) = *v20++;
        *(v22 + 2 * v23) = v24 + v21;
        --v18;
      }

      while (v18);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v26);
  }

  *(this + 260) = 1;
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
}

void sub_26269C2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void *Voc::notifyPrefLmScoresBad(Voc *this)
{
  *(this + 260) = 0;
  result = *(this + 34);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(this + 34) = 0;
  }

  *(this + 35) = 0;
  return result;
}

uint64_t Voc::getPrefPron(uint64_t this, unsigned int a2, const unsigned __int16 **a3, unsigned int *a4)
{
  *a3 = (*(*(this + 48) + 72) + 2 * *(*(*(this + 48) + 48) + 4 * a2));
  v4 = *(*(*(this + 48) + 32) + 2 * a2);
  *a4 = v4;
  v5 = *(this + 300);
  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = *(this + 300);
  }

  if (v5)
  {
    v4 = v6;
  }

  *a4 = v4;
  return this;
}

uint64_t Voc::computePrefWordIdsSortedByPron(Voc *this)
{
  CollWords = StateMgr::getCollWords(*(this + 7), *(this + 76), 0xFFFFu, 1);
  v10 = 0;
  v11 = 0;
  v3 = *(CollWords + 8);
  if (v3)
  {
    v4 = CollWords;
    v5 = 0;
    v6 = 0;
    for (i = 0; i < v3; ++i)
    {
      v8 = *(*v4 + 4 * i);
      if (*(*(*(this + 6) + 32) + 2 * v8))
      {
        if (v6 == HIDWORD(v11))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v10, 1, 1);
          v6 = v11;
          v5 = v10;
        }

        *(v5 + 4 * v6) = v8;
        v6 = v11 + 1;
        LODWORD(v11) = v11 + 1;
        v3 = *(v4 + 8);
      }
    }
  }

  PrefiltererWordIdPronCollArray::addArray(this + 104, &v10);
  *(this + 288) = 1;
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v10);
}

void *Voc::notifyPrefWordIdsSortedByPronBad(Voc *this)
{
  *(this + 288) = 0;
  PrefiltererWordIdPronCollArray::removeAll(this + 416);
  PrefiltererWordIdPronCollArray::compact(this + 416);

  return Voc::clearPrefPicModels(this);
}

void *Voc::clearPrefPicModels(Voc *this)
{
  *(this + 78) = 0;
  if (*(this + 84))
  {
    v2 = 0;
    v3 = *(this + 41);
    do
    {
      *(v3 + 4 * v2++) = -1;
    }

    while (v2 < *(this + 84));
  }

  v4 = *(this + 44);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(this + 44) = 0;
  }

  *(this + 45) = 0;
  v5 = *(this + 46);
  if (v5)
  {
    MemChunkFree(v5, 0);
    *(this + 46) = 0;
  }

  *(this + 47) = 0;
  v6 = *(this + 48);
  if (v6)
  {
    MemChunkFree(v6, 0);
    *(this + 48) = 0;
  }

  *(this + 49) = 0;
  result = *(this + 50);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(this + 50) = 0;
  }

  *(this + 51) = 0;
  return result;
}

void (***Voc::loadPrefLmScores(Voc *this, const char **a2, DFileChecksums *a3))(void)
{
  v20 = 0;
  v6 = OpenAndReadMrecHeader(a2, 0x40u, 1, "MRPRLM!?", &v20 + 1, &v20);
  if (HIDWORD(v20) == 17 && v20 == 2)
  {
    MrecHeaderCheckLatestVersionIfShared(a2, "MRPRLM!?", 17, 2, 23, 4);
    v19 = 0;
    v12 = (this + 272);
    readObject<short>(v6, this + 272, &v19);
    v18 = 0;
    readObject(v6, &v18, &v19);
    readObjectChecksumAndVerify(v6, v19);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 64, v19);
    DgnDelete<DgnStream>(v6);
    *(this + 260) = 0;
    v14 = *(this + 34);
    if (v14)
    {
      MemChunkFree(v14, 0);
      *v12 = 0;
    }

    *(this + 35) = 0;
    goto LABEL_22;
  }

  v8 = HIDWORD(v20) == 23 && v20 == 3;
  v9 = v8;
  if (v8)
  {
    v10 = 23;
    v11 = 3;
  }

  else
  {
    if (*(a2 + 6))
    {
      v15 = a2[2];
    }

    else
    {
      v15 = &unk_26288830E;
    }

    MrecHeaderCheckVersions(v15, "MRPRLM!?", HIDWORD(v20), v20, 0x17u, 4u);
    v11 = v20;
    v10 = HIDWORD(v20);
  }

  MrecHeaderCheckLatestVersionIfShared(a2, "MRPRLM!?", v10, v11, 23, 4);
  v19 = 0;
  readObject(v6, this + 66, &v19);
  v12 = (this + 272);
  readObject<short>(v6, this + 272, &v19);
  v18 = 0;
  readObjectChecksumAndVerify(v6, v19);
  v16 = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, v16, 64, v19);
  result = DgnDelete<DgnStream>(v6);
  *(this + 260) = *(this + 70) != 0;
  if (v9)
  {
LABEL_22:
    *(this + 66) = 0;
    *(this + 260) = 0;
    result = *(this + 34);
    if (result)
    {
      result = MemChunkFree(result, 0);
      *v12 = 0;
    }

    *(this + 35) = 0;
  }

  return result;
}

void (***Voc::savePrefLmScores(Voc *this, DFile *a2, DFileChecksums *a3, uint64_t a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x40u, a4, "MRPRLM!?", 23, 4);
  v10 = 0;
  writeObject(v7, this + 66, &v10);
  writeObject<short>(v7, this + 272, &v10);
  writeObjectChecksum(v7, &v10);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 64, v10);
  return DgnDelete<DgnStream>(v7);
}

void (***Voc::loadPrefWordIdsSortedByPron(Voc *this, const char **a2, DFileChecksums *a3))(void)
{
  v19 = 0;
  v6 = OpenAndReadMrecHeader(a2, 0x48u, 1, "MRPRWD!?", &v19 + 1, &v19);
  v7 = v19;
  v8 = v19 == 2 && HIDWORD(v19) == 23;
  v9 = (v19 & 0xFFFFFFFE) == 2 && HIDWORD(v19) == 23;
  if (v9 || v19 == 0x1700000004)
  {
    v10 = 0;
    v11 = 23;
  }

  else
  {
    if (*(a2 + 6))
    {
      v12 = a2[2];
    }

    else
    {
      v12 = &unk_26288830E;
    }

    MrecHeaderCheckVersions(v12, "MRPRWD!?", HIDWORD(v19), v19, 0x18u, 5u);
    v7 = v19;
    v11 = HIDWORD(v19);
    v10 = 1;
  }

  MrecHeaderCheckLatestVersionIfShared(a2, "MRPRWD!?", v11, v7, 24, 5);
  v18 = 0;
  if (!v8)
  {
    v17 = 0;
    readObject(v6, &v17, &v18);
    v13 = v17 - 1;
    if ((v17 - 2) >= 4)
    {
      v13 = 0;
    }

    *(this + 73) = v13;
  }

  if (v10)
  {
    v17 = 0;
    readObject(v6, &v17, &v18);
    v14 = v17 - 1;
    if ((v17 - 2) >= 3)
    {
      v14 = 0;
    }

    *(this + 74) = v14;
  }

  readObject(v6, this + 75, &v18);
  readObject(v6, this + 76, &v18);
  if (!v8)
  {
    readObject(v6, this + 77, &v18);
    readObject<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>(v6, this + 78, &v18);
    readObject<OpaquePelIdAndDurId>(v6, this + 352, &v18);
    readObject<unsigned short>(v6, this + 368, &v18);
    readObject<unsigned int>(v6, this + 384, &v18);
    readObject<unsigned int>(v6, this + 400, &v18);
  }

  PrefiltererWordIdPronCollArray::readObject((this + 416), v6, &v18);
  readObjectChecksumAndVerify(v6, v18);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 72, v18);
  result = DgnDelete<DgnStream>(v6);
  *(this + 288) = 1;
  if (v9)
  {
    *(this + 76) = 0;
    return Voc::notifyPrefWordIdsSortedByPronBad(this);
  }

  return result;
}

void readObject<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>(DgnStream *a1, _DWORD *a2, unsigned int *a3)
{
  readObject(a1, a2, a3);
  readObject(a1, a2 + 1, a3);
  readObject(a1, a2 + 2, a3);

  readObject<unsigned int>(a1, (a2 + 4), a3);
}

uint64_t readObject<OpaquePelIdAndDurId>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v11 = 0;
  result = readObject(a1, &v11, a3);
  v7 = v11;
  v8 = *(a2 + 12);
  if (v11 <= v8)
  {
    *(a2 + 8) = v11;
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    DgnPrimArray<unsigned int>::reallocElts(a2, v11 - v8, 0);
    *(a2 + 8) = v7;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    result = readObject(a1, (*a2 + v9), a3);
    ++v10;
    v9 += 4;
  }

  while (v10 < *(a2 + 8));
  return result;
}

void (***Voc::savePrefWordIdsSortedByPron(Voc *this, DFile *a2, DFileChecksums *a3, uint64_t a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x48u, a4, "MRPRWD!?", 24, 5);
  v8 = v7;
  v9 = *(this + 73);
  if (v9 < 5)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  v16 = v10;
  v17 = 0;
  writeObject(v7, &v16, &v17);
  v11 = *(this + 74);
  if (v11 < 4)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 0;
  }

  v15 = v12;
  writeObject(v8, &v15, &v17);
  writeObject(v8, this + 75, &v17);
  writeObject(v8, this + 76, &v17);
  writeObject(v8, this + 77, &v17);
  writeObject<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>(v8, this + 78, &v17);
  writeObject<OpaquePelIdAndDurId>(v8, this + 352, &v17);
  writeObject<unsigned short>(v8, this + 368, &v17);
  writeObject<unsigned int>(v8, this + 384, &v17);
  writeObject<unsigned int>(v8, this + 400, &v17);
  PrefiltererWordIdPronCollArray::writeObject((this + 416), v8, &v17);
  writeObjectChecksum(v8, &v17);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 72, v17);
  return DgnDelete<DgnStream>(v8);
}

uint64_t writeObject<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>(DgnStream *a1, int *a2, unsigned int *a3)
{
  v9 = *a2;
  writeObject(a1, &v9, a3);
  v8 = a2[1];
  writeObject(a1, &v8, a3);
  v7 = a2[2];
  writeObject(a1, &v7, a3);
  return writeObject<unsigned int>(a1, (a2 + 4), a3);
}

uint64_t writeObject<OpaquePelIdAndDurId>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject(a1, (*a2 + v7), a3);
      ++v8;
      v7 += 4;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void Voc::loadAndDiscardReproData(Voc *this, FileSpec **a2)
{
  DgnTextFileParser::DgnTextFileParser(v3);
  DgnTextFileParser::openDgnTextFileParser(v3, a2, 76, 1);
  DgnTextFileParser::verifyMatchingFileType(v3, "ReproData");
  DgnTextFileParser::~DgnTextFileParser(v3);
}

void sub_26269CE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnTextFileParser::~DgnTextFileParser(va);
  _Unwind_Resume(a1);
}

void Voc::loadAndDiscardReproResult(Voc *this, FileSpec **a2)
{
  DgnTextFileParser::DgnTextFileParser(v4);
  DgnTextFileParser::openDgnTextFileParser(v4, a2, 77, 1);
  DgnTextFileParser::verifyMatchingFileType(v4, "ResultData");
  FileVersion = DgnTextFile::getFileVersion(v4);
  if (FileVersion != 19 || (HIDWORD(FileVersion) - 5) >= 7)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 692, "voc/voc", 31, "%s", &errStr_voc_voc_E_RSD_PRESENT);
  }

  DgnTextFileParser::~DgnTextFileParser(v4);
}

void sub_26269CF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnTextFileParser::~DgnTextFileParser(va);
  _Unwind_Resume(a1);
}

uint64_t Voc::getVocSvcCompatibility(const char **this, const char **a2, DFile *a3)
{
  v3 = a3;
  if (DFile::subFileExists(this, 0x2Fu))
  {
    v6 = DFile::subFileExists(this, 0x51u);
    v7 = v6;
    if (a2)
    {
      v8 = DFile::subFileExists(a2, 0x51u);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = 0;
      if (v6)
      {
LABEL_4:
        SvcCompatData::SvcCompatData(&v26);
        SvcCompatData::loadSvcCompatData(&v26, this, 0);
        if (v26 != 2)
        {
          if (v26 != 1)
          {
            if (v26)
            {
              if (v3)
              {
                if (*(this + 6))
                {
                  v14 = this[2];
                }

                else
                {
                  v14 = &unk_26288830E;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 837, "voc/voc", 18, "%.500s", v14);
              }

              goto LABEL_71;
            }

            if (a2)
            {
              v9 = 3;
            }

            else
            {
              v9 = 1;
            }

            if (!a2 || !v3)
            {
              goto LABEL_72;
            }

            if (*(this + 6))
            {
              v10 = this[2];
            }

            else
            {
              v10 = &unk_26288830E;
            }

            v17 = "%.500s %.500s";
            v18 = 20;
            v19 = 758;
            if (*(a2 + 6))
            {
              goto LABEL_63;
            }

            goto LABEL_69;
          }

          if (a2)
          {
            v12 = v8 & v3;
            if (v8)
            {
              v9 = 3;
            }

            else
            {
              v9 = 4;
            }

            if (v12 != 1)
            {
              goto LABEL_72;
            }

            if (*(this + 6))
            {
              v10 = this[2];
            }

            else
            {
              v10 = &unk_26288830E;
            }

            v17 = "%.500s %.500s";
            v18 = 19;
            v19 = 781;
            if (*(a2 + 6))
            {
LABEL_63:
              v20 = a2[2];
LABEL_70:
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", v19, "voc/voc", v18, v17, v10, v20);
              goto LABEL_71;
            }

LABEL_69:
            v20 = &unk_26288830E;
            goto LABEL_70;
          }

          if (v3)
          {
            v15 = 772;
            if (*(this + 6))
            {
LABEL_50:
              v16 = this[2];
LABEL_54:
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", v15, "voc/voc", 21, "%.500s", v16);
              goto LABEL_55;
            }

LABEL_53:
            v16 = &unk_26288830E;
            goto LABEL_54;
          }

          goto LABEL_55;
        }

        if (!a2)
        {
          if (v3)
          {
            v15 = 795;
            if (*(this + 6))
            {
              goto LABEL_50;
            }

            goto LABEL_53;
          }

LABEL_55:
          v9 = 2;
LABEL_72:
          SvcCompatData::SvcCompatData(&v26);
          return v9;
        }

        if ((v8 & 1) == 0)
        {
          if (!v3)
          {
LABEL_71:
            v9 = 3;
            goto LABEL_72;
          }

          if (*(this + 6))
          {
            v10 = this[2];
          }

          else
          {
            v10 = &unk_26288830E;
          }

          v17 = "%.500s %.500s";
          v18 = 19;
          v19 = 804;
          if (*(a2 + 6))
          {
            goto LABEL_63;
          }

          goto LABEL_69;
        }

        SvcCompatData::SvcCompatData(&v24);
        SvcCompatData::loadSvcCompatData(&v24, a2, 0);
        if (v24 == 3)
        {
          if (v27 == v25)
          {
            v9 = 0;
          }

          else
          {
            v9 = 3;
          }

          if (v27 == v25 || !v3)
          {
            goto LABEL_85;
          }

          if (*(this + 6))
          {
            v13 = this[2];
          }

          else
          {
            v13 = &unk_26288830E;
          }

          if (*(a2 + 6))
          {
            v23 = a2[2];
          }

          else
          {
            v23 = &unk_26288830E;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 824, "voc/voc", 17, "%.500s %.500s", v13, v23);
        }

        else if (v3)
        {
          if (*(a2 + 6))
          {
            v21 = a2[2];
          }

          else
          {
            v21 = &unk_26288830E;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 814, "voc/voc", 18, "%.500s", v21);
        }

        v9 = 3;
LABEL_85:
        SvcCompatData::SvcCompatData(&v24);
        goto LABEL_72;
      }
    }

    v11 = a2 == 0 || (v8 & 1) == 0;
    if (a2 == 0 || (v8 & 1) == 0)
    {
      v9 = 4;
    }

    else
    {
      v9 = 3;
    }

    if (!v11 && v3)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 741, "voc/voc", 19, "%.500s %.500s");
      return 3;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    if (a2 && v3)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 715, "voc/voc", 19, "%.500s %.500s");
      return 3;
    }
  }

  return v9;
}

void sub_26269D38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  SvcCompatData::SvcCompatData(va);
  _Unwind_Resume(a1);
}

void *Voc::loadVoc(Voc *this, const char **a2, DFile *a3, DgnSharedMemSet *a4, uint64_t a5, uint64_t a6, _BOOL4 a7, BOOL a8, BOOL *a9, DFileChecksums *a10, BOOL *a11)
{
  v14 = a5;
  v80 = 0u;
  v81 = 0u;
  SnapTime::recordTime(&v80, 1, 1, 1, 1);
  EnvHolder::errorIfFileObviouslyIsNotOfTypeVoc(a2, v19);
  *(this + 6) = 0;
  if (a8)
  {
    if (a3)
    {
      if (*(a3 + 6))
      {
        v21 = *(a3 + 2);
      }

      else
      {
        v21 = &unk_26288830E;
      }

      if (*(a2 + 6))
      {
        v24 = a2[2];
      }

      else
      {
        v24 = &unk_26288830E;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 866, "voc/voc", 22, "%.500s %.500s", v21, v24);
      *(this + 12) = a6;
      v22 = (this + 96);
      goto LABEL_20;
    }

    *(this + 12) = a6;
    v22 = (this + 96);
    if (a6)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  Voc::getVocSvcCompatibility(a2, a3, 1);
  *(this + 12) = a6;
  v22 = (this + 96);
  if (!a3 && a6)
  {
LABEL_10:
    if (*(a2 + 6))
    {
      v23 = a2[2];
    }

    else
    {
      v23 = &unk_26288830E;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 872, "voc/voc", 28, "%lld %.500s", a6, v23);
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    v72 = 1;
    goto LABEL_29;
  }

LABEL_20:
  if (a6 <= -2)
  {
    if (*(a2 + 6))
    {
      v25 = a2[2];
    }

    else
    {
      v25 = &unk_26288830E;
    }

    if (*(a3 + 6))
    {
      v26 = *(a3 + 2);
    }

    else
    {
      v26 = &unk_26288830E;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 877, "voc/voc", 27, "%lld %.500s %.500s", a6, v25, v26);
  }

  v72 = 0;
LABEL_29:
  if (a7)
  {
    *v22 = 0;
  }

  WordListInTextFormat = WordList::willLoadWordListInTextFormat(a2, v20);
  if (WordListInTextFormat && *(this + 32) != -1 && *(DgnSharedMemSet::getSetCacheDir(*(this + 15)) + 8) <= 1u)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 884, "voc/voc", 32, "%s", &errStr_voc_voc_E_VOC_UNSHARABLE);
  }

  v28 = MemChunkAlloc(0x110uLL, 0);
  EnvMgr::EnvMgr(v28, 2);
  *this = v29;
  EnvMgr::loadEnvMgr(v29, a2, a10);
  v30 = MemChunkAlloc(4uLL, 0);
  CharInfo::CharInfo(v30);
  *(this + 1) = v31;
  CharInfo::loadCharInfo(v31, a2, a10, WordListInTextFormat);
  v32 = MemChunkAlloc(0x148uLL, 0);
  CollMgr::CollMgr(v32, *(this + 1));
  *(this + 2) = v33;
  CollMgr::loadCollMgr(v33, a2, a10, WordListInTextFormat);
  PhnMgr::loadPhnMgr((this + 184), a2, a10, WordListInTextFormat);
  v34 = MemChunkAlloc(0x18uLL, 0);
  v35 = TRegExp::TRegExp(v34, this + 184);
  *(this + 3) = v35;
  PronCollMgr::loadPronCollMgr(v35, a2, a10, WordListInTextFormat);
  v36 = MemChunkAlloc(0x10uLL, 0);
  DgnString::DgnString(v36);
  *(this + 4) = v37;
  VocCompatData::loadVocCompatData(v37, a2, a10, WordListInTextFormat);
  v38 = MemChunkAlloc(0x290uLL, 0);
  WordList::WordList(v38, *(this + 2), *(this + 3), (this + 184));
  *(this + 6) = v39;
  WordList::loadWordList(v39, a2, a10);
  v78 = 0;
  v79 = 0;
  v73[0] = 0;
  HIDWORD(v79) = realloc_array(0, v73, 8uLL, 0, 0, 1) >> 3;
  v78 = v73[0];
  if (v79 <= 1)
  {
    if (!v79)
    {
      *v73[0] = 0;
    }
  }

  else if (v79 >= 2)
  {
    v40 = v79 - 1;
    do
    {
      DgnDelete<DgnStream>(v78[v40]);
      v78[v40] = 0;
      v41 = v40-- + 1;
    }

    while (v41 > 2);
  }

  LODWORD(v79) = 1;
  if (a4)
  {
    v42 = MemChunkAlloc(0x50uLL, 0);
    v43 = DgnSharedMemStream::DgnSharedMemStream(v42, a4, v14, 0);
    *v78 = v43;
  }

  v77 = 0;
  v44 = *v78;
  if (*(this + 32) == -1)
  {
    v45 = 0;
  }

  else
  {
    v45 = (*(DgnSharedMemSet::getSetCacheDir(*(this + 15)) + 8) < 2u);
  }

  HIBYTE(v71) = a8;
  LOBYTE(v71) = a7;
  v46 = LanguageModel::CreateAndLoadLanguageModel(a2, a3, a10, v44, v45, WordListInTextFormat, 1, 0, *(*(this + 4) + 4), v69, *(this + 6), 0, 0xFFFFFFu, 0xFFFFFFu, v71, a9, &v77, 0);
  *(this + 9) = v46;
  if (a4)
  {
    v47 = 0;
  }

  else
  {
    v47 = (*(*v46 + 32))(v46);
    v46 = *(this + 9);
  }

  v75 = 0;
  v76 = 0;
  (*(*v46 + 152))(v46, &v76, &v75);
  v48 = 0;
  do
  {
    LODWORD(v73[0]) = 4;
    HIDWORD(v73[0]) = v48;
    DFile::pushCurrentSubDirComponent(a2, v73);
    if ((DFile::subFileExists(a2, 0x76u) & 1) != 0 || DFile::subFileExists(a2, 0x75u))
    {
      v49 = MemChunkAlloc(0xB0uLL, 0);
      WordNgramTemplate::WordNgramTemplate(v49, *(this + 6), v76, v75);
      v50 = *(this + 22);
      if (v50 == *(this + 23))
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 80, 1, 1);
        v50 = *(this + 22);
      }

      *(*(this + 10) + 8 * v50) = v49;
      *(this + 22) = v50 + 1;
      WordNgramTemplate::loadWordNgramTemplate(*(*(this + 10) + 8 * v48), a2, a10, WordListInTextFormat);
      v51 = 1;
    }

    else
    {
      v51 = 0;
    }

    DFile::popCurrentSubDirComponent(a2);
    ++v48;
  }

  while ((v51 & 1) != 0);
  LOBYTE(v70) = *a9;
  v68[4] = *(this + 22) != 0;
  *v68 = 0xFFFFFF;
  (*(**(this + 9) + 48))(*(this + 9), *(this + 9), a2, a10, *v78, WordListInTextFormat, 0, 0xFFFFFFLL, *v68, this + 80, v70, v47, *(this + 12));
  if (WordListInTextFormat)
  {
    if (*(a2 + 6))
    {
      v52 = a2[2];
    }

    else
    {
      v52 = &unk_26288830E;
    }

    (*(**(this + 9) + 216))(*(this + 9), 1, v52);
  }

  if (((v72 | a7) & 1) == 0 && !v77 && !a8 && !*a9)
  {
    FileSpec::operator=((this + 104), (a3 + 16));
  }

  if (v79 >= 1)
  {
    v53 = 8 * v79 - 8;
    do
    {
      DgnDelete<DgnStream>(*(v78 + v53));
      *(v78 + v53) = 0;
      v53 -= 8;
    }

    while (v53 != -8);
  }

  LODWORD(v79) = 0;
  if (v77 || *a9 || a8)
  {
    if (!DFile::subFileExists(a2, 0x51u))
    {
      goto LABEL_75;
    }

    SvcCompatData::SvcCompatData(v73);
    SvcCompatData::loadSvcCompatData(v73, a2, a10);
    goto LABEL_74;
  }

  if (!DFile::subFileExists(a2, 0x51u))
  {
    if (v72)
    {
      goto LABEL_75;
    }

    if ((DFile::subFileExists(a3, 0x51u) & 1) == 0)
    {
      *(this + 10) = 1;
      goto LABEL_75;
    }

    if (*(a2 + 6))
    {
      v62 = a2[2];
    }

    else
    {
      v62 = &unk_26288830E;
    }

    v64 = 1061;
    if (!*(a3 + 6))
    {
LABEL_122:
      v65 = &unk_26288830E;
      goto LABEL_123;
    }

LABEL_119:
    v65 = *(a3 + 2);
LABEL_123:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", v64, "voc/voc", 19, "%.500s %.500s", v62, v65);
    goto LABEL_75;
  }

  SvcCompatData::loadSvcCompatData((this + 40), a2, a10);
  if ((v72 & 1) == 0)
  {
    if (DFile::subFileExists(a3, 0x51u))
    {
      SvcCompatData::SvcCompatData(v73);
      SvcCompatData::loadSvcCompatData(v73, a3, 0);
      if (LODWORD(v73[0]) != 3)
      {
        if (*(a3 + 6))
        {
          v63 = *(a3 + 2);
        }

        else
        {
          v63 = &unk_26288830E;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1028, "voc/voc", 18, "%.500s", v63);
      }

      if (HIDWORD(v73[0]) != *(this + 11))
      {
        if (*(a2 + 6))
        {
          v66 = a2[2];
        }

        else
        {
          v66 = &unk_26288830E;
        }

        if (*(a3 + 6))
        {
          v67 = *(a3 + 2);
        }

        else
        {
          v67 = &unk_26288830E;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1032, "voc/voc", 17, "%.500s %.500s", v66, v67);
      }

LABEL_74:
      SvcCompatData::SvcCompatData(v73);
      goto LABEL_75;
    }

    if (*(this + 10) == 1)
    {
      goto LABEL_75;
    }

    if (*(a2 + 6))
    {
      v62 = a2[2];
    }

    else
    {
      v62 = &unk_26288830E;
    }

    v64 = 1039;
    if (!*(a3 + 6))
    {
      goto LABEL_122;
    }

    goto LABEL_119;
  }

  if (*(this + 10))
  {
    if (*(a2 + 6))
    {
      v61 = a2[2];
    }

    else
    {
      v61 = &unk_26288830E;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1046, "voc/voc", 21, "%.500s", v61);
  }

LABEL_75:
  v54 = MemChunkAlloc(0x300uLL, 0);
  StateMgr::StateMgr(v54, this);
  *(this + 7) = v55;
  if (DFile::subFileExists(a2, 0x59u))
  {
    StateMgr::loadStateMgr(*(this + 7), a2, a10, WordListInTextFormat, *(this + 84));
  }

  v56 = MemChunkAlloc(0x58uLL, 0);
  RuleMgr::RuleMgr(v56, this);
  *(this + 8) = v57;
  if (DFile::subFileExists(a2, 0x4Eu))
  {
    v58 = *(this + 7);
    if (!*(v58 + 181))
    {
      StateMgr::makeSpecialEouStateId(v58);
    }

    RuleMgr::loadRuleMgr(*(this + 8), a2, a10, WordListInTextFormat, a11, *(this + 84));
  }

  if (DFile::subFileExists(a2, 0x40u))
  {
    if (WordListInTextFormat)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1103, "voc/voc", 16, "%s", &errStr_voc_voc_E_LOADING_MIXED_TEXT_AND_BINARY_SUBFILES);
    }

    Voc::loadPrefLmScores(this, a2, a10);
  }

  if (DFile::subFileExists(a2, 0x48u))
  {
    if (WordListInTextFormat)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1110, "voc/voc", 16, "%s", &errStr_voc_voc_E_LOADING_MIXED_TEXT_AND_BINARY_SUBFILES);
    }

    Voc::loadPrefWordIdsSortedByPron(this, a2, a10);
  }

  if ((WordListInTextFormat & 1) == 0)
  {
    *(this + 152) = 0;
    SubFileExtensionString = GetSubFileExtensionString(0x2Fu);
    *(this + 152) ^= DFileChecksums::getChecksum(a10, SubFileExtensionString);
  }

  FileHistory::loadFileHistory((this + 144), a2, WordListInTextFormat);
  *v73 = 0u;
  v74 = 0u;
  SnapTime::recordTime(v73, 1, 1, 1, 1);
  *v73 = vsubq_s64(*v73, v80);
  v74 = vsubq_s64(v74, v81);
  FileHistory::addEntryWithElapsedTime((this + 144), " loadVoc time: ", v73);
  if (*a9)
  {
    FileHistory::addEntry((this + 144), " Lobotomized one or more LMs without matching static components");
  }

  if (v77)
  {
    FileHistory::addEntry((this + 144), " Reabsorbed one or more static LM components into dynamic LM");
  }

  *(this + 178) = WordListInTextFormat;
  return DgnIOwnArray<DgnSharedMemStream *>::releaseAll(&v78);
}

void sub_26269DF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  DgnIOwnArray<DgnSharedMemStream *>::releaseAll(va);
  _Unwind_Resume(a1);
}

void Voc::saveVocShared(Voc *this, DgnSharedMemSet *a2, uint64_t a3, const FileSpec *a4, uint64_t a5)
{
  DgnSharedMemStream::DgnSharedMemStream(v10, a2, a3);
  DgnSharedMemStream::openDSM(v10, 0, -1);
  (*(**(this + 9) + 80))(*(this + 9), v10, a5);
  v9 = DgnSharedMemStream::tell(v10);
  DgnSharedMemStream::closeDSM(v10);
  DgnSharedMemStream::openDSM(v10, 1, v9);
  (*(**(this + 9) + 80))(*(this + 9), v10, a5);
  DgnSharedMemStream::closeDSM(v10);
  if (DgnSharedMemSet::createMaybeRemapDSMEx(a2, a3, 0))
  {
    DgnSharedMemStream::openDSM(v10, 3, -1);
    (*(**(this + 9) + 88))(*(this + 9), v10, a5);
    DgnSharedMemStream::closeDSM(v10);
  }

  DgnSharedMemStream::~DgnSharedMemStream(v10);
}

void Voc::writeVocGroupInfo(uint64_t a1, VocGroupInfo *a2, uint64_t a3)
{
  DFileOwner::DFileOwner(v7);
  v5 = DFile::openDFile(a3, 2, 2, v7);
  VocGroupInfo::saveVocGroupInfo(a2, v5);
  DFileOwner::setRemoveFileOnDestruction(v7, 0);
  DFileOwner::~DFileOwner(v7, v6);
}

uint64_t Voc::shouldSaveSubFilesInTextFormat(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      if (a2 == 1 && ((*(**(a1 + 72) + 64))(*(a1 + 72)) & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1207, "voc/voc", 23, "%s", &errStr_voc_voc_E_LM_SAVE_TEXT);
      }

      return 1;
    }

    return 0;
  }

  if (*(a1 + 178) != 1 || *(*a1 + 264) != 1)
  {
    return 0;
  }

  v3 = *(**(a1 + 72) + 64);

  return v3();
}

void Voc::saveVoc(uint64_t a1, uint64_t a2, char **a3, _DWORD *a4, DFileChecksums *a5, uint64_t a6, DFileChecksums *a7, unsigned int a8, unsigned int a9)
{
  v38 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  SnapTime::recordTime(&v34, 1, 1, 1, 1);
  DFileOwner::DFileOwner(v33);
  DFileOwner::DFileOwner(v32);
  *a4 = 1;
  v17 = DFile::openDFile(a2, 1, 2, v33);
  if (FileSpec::isValid(a3))
  {
    if (a6)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1260, "voc/voc", 26, "%s", &errStr_voc_voc_E_NO_TEXT_SVC);
    }

    v18 = DFile::openDFile(a3, 1, 9, v32);
  }

  else
  {
    v18 = 0;
  }

  (*(*v17 + 96))(v17, a1 + 520);
  *a4 = 2;
  DFileProgressInfo::resetReportedInfo((a1 + 520));
  EnvMgr::saveEnvMgr(*a1, v17, a5, a6, a7);
  CharInfo::saveCharInfo(*(a1 + 8), v17, a5, a6, a7);
  CollMgr::saveCollMgr(*(a1 + 16), v17, a5, a6, a7);
  PhnMgr::savePhnMgr((a1 + 184), v17, a5, a6, a7);
  PronCollMgr::savePronCollMgr(*(a1 + 24), v17, a5, a6, a7);
  VocCompatData::saveVocCompatData(*(a1 + 32), v17, a5, a6, a7);
  WordList::saveWordList(*(a1 + 48), v17, a5, a6, a7);
  SvcCompatData::SvcCompatData(v31, (a1 + 40));
  if (v18)
  {
    DFileChecksums::DFileChecksums(__str);
    v19 = *(a1 + 72);
    v20 = (*(*v19 + 40))(v19);
    (*(*v19 + 96))(v19, v17, v18, a5, __str, a7, v20, *(*(a1 + 32) + 8), __PAIR64__(a9, a8));
    v31[0] = 2;
    v31[1] = v37.i32[0];
    SvcCompatData::SvcCompatData(&v29, 3, v37.i32[0]);
    SvcCompatData::saveSvcCompatData(&v29, v18, 0);
    SvcCompatData::SvcCompatData(&v29);
    DFileChecksums::~DFileChecksums(__str);
  }

  else
  {
    (*(**(a1 + 72) + 72))(*(a1 + 72), v17, a5, a6, a7);
  }

  if (*(a1 + 88))
  {
    v21 = 0;
    do
    {
      *__str = 4;
      *&__str[4] = v21;
      DFile::pushCurrentSubDirComponent(v17, __str);
      WordNgramTemplate::saveWordNgramTemplate(*(*(a1 + 80) + 8 * v21), v17, a5, a6, a7);
      DFile::popCurrentSubDirComponent(v17);
      ++v21;
    }

    while (v21 < *(a1 + 88));
  }

  if ((a6 & 1) == 0)
  {
    SvcCompatData::saveSvcCompatData(v31, v17, a5);
    StateMgr::saveStateMgr(*(a1 + 56), v17, a5, 0, a7);
    RuleMgr::saveRuleMgr(*(a1 + 64), v17, a5, 0, a7);
    if (*(a1 + 260) == 1)
    {
      Voc::savePrefLmScores(a1, v17, a5, a7);
    }

    if (*(a1 + 288) == 1)
    {
      Voc::savePrefWordIdsSortedByPron(a1, v17, a5, a7);
    }
  }

  v22 = *(a1 + 480);
  if (*(a1 + 440) | v22)
  {
    snprintf(__str, 0x64uLL, " %u words added, %u words deleted since last save", *(a1 + 440), v22);
    FileHistory::addEntry((a1 + 144), __str);
    if (*(a1 + 440))
    {
      DgnString::DgnString(&v29, " First added word: ");
      DgnString::operator+=(&v29, a1 + 448);
      if (v30)
      {
        v23 = v29;
      }

      else
      {
        v23 = &unk_26288830E;
      }

      FileHistory::addEntry((a1 + 144), v23);
      DgnString::operator=(&v29, " Last added word: ");
      DgnString::operator+=(&v29, a1 + 464);
      if (v30)
      {
        v24 = v29;
      }

      else
      {
        v24 = &unk_26288830E;
      }

      FileHistory::addEntry((a1 + 144), v24);
      DgnString::~DgnString(&v29);
    }

    if (*(a1 + 480))
    {
      DgnString::DgnString(&v29, " First deleted word: ");
      DgnString::operator+=(&v29, a1 + 488);
      if (v30)
      {
        v25 = v29;
      }

      else
      {
        v25 = &unk_26288830E;
      }

      FileHistory::addEntry((a1 + 144), v25);
      DgnString::operator=(&v29, " Last deleted word: ");
      DgnString::operator+=(&v29, a1 + 504);
      if (v30)
      {
        v26 = v29;
      }

      else
      {
        v26 = &unk_26288830E;
      }

      FileHistory::addEntry((a1 + 144), v26);
      DgnString::~DgnString(&v29);
    }
  }

  *(a1 + 440) = 0;
  *(a1 + 480) = 0;
  *(a1 + 456) = 0;
  *(a1 + 472) = 0;
  *(a1 + 496) = 0;
  *(a1 + 512) = 0;
  if (v18)
  {
    FileHistory::addEntry((a1 + 144), " Saved voc as static and dynamic parts");
  }

  *__str = 0u;
  v37 = 0u;
  SnapTime::recordTime(__str, 1, 1, 1, 1);
  *__str = vsubq_s64(*__str, v34);
  v37 = vsubq_s64(v37, v35);
  FileHistory::addEntryWithElapsedTime((a1 + 144), " saveVoc time: ", __str);
  FileHistory::saveFileHistory((a1 + 144), v17, a6);
  DFileOwner::setRemoveFileOnDestruction(v33, 0);
  DFileOwner::setRemoveFileOnDestruction(v32, 0);
  *a4 = 0;
  SvcCompatData::SvcCompatData(v31);
  DFileOwner::~DFileOwner(v32, v27);
  DFileOwner::~DFileOwner(v33, v28);
}

void sub_26269E824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  SvcCompatData::SvcCompatData(va);
  DFileOwner::~DFileOwner(va1, v12);
  DFileOwner::~DFileOwner(va2, v13);
  _Unwind_Resume(a1);
}

void Voc::printSize(Voc *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1445);
  if (v215)
  {
    v13 = v214;
  }

  else
  {
    v13 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288830E, a3, &unk_26288830E, v13);
  DgnString::~DgnString(&v214);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288830E);
  v15 = *this;
  if (*this)
  {
    v213 = 0;
    v214 = 0;
    v16 = (a3 + 1);
    v212 = 0;
    EnvMgr::printSize(v15, 0xFFFFFFFFLL, v16, &v214, &v213, &v212);
    *a4 += v214;
    *a5 += v213;
    *a6 += v212;
  }

  else
  {
    v16 = (a3 + 1);
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v17 = 4;
  }

  else
  {
    v17 = 8;
  }

  v18 = (34 - a3);
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1446);
  if (v215)
  {
    v20 = v214;
  }

  else
  {
    v20 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, v16, &unk_26288830E, (34 - a3), (34 - a3), v20, v17, v17, 0);
  DgnString::~DgnString(&v214);
  *a4 += v17;
  *a5 += v17;
  v21 = *(this + 1);
  if (v21)
  {
    v213 = 0;
    v214 = 0;
    v212 = 0;
    CharInfo::printSize(v21, 0xFFFFFFFFLL, v16, &v214, &v213, &v212);
    *a4 += v214;
    *a5 += v213;
    *a6 += v212;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 8;
  }

  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1448);
  if (v215)
  {
    v24 = v214;
  }

  else
  {
    v24 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v16, &unk_26288830E, (34 - a3), (34 - a3), v24, v22, v22, 0);
  DgnString::~DgnString(&v214);
  *a4 += v22;
  *a5 += v22;
  v25 = *(this + 2);
  if (v25)
  {
    v213 = 0;
    v214 = 0;
    v212 = 0;
    CollMgr::printSize(v25, 0xFFFFFFFFLL, v16, &v214, &v213, &v212);
    *a4 += v214;
    *a5 += v213;
    *a6 += v212;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v26 = 4;
  }

  else
  {
    v26 = 8;
  }

  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1449);
  if (v215)
  {
    v28 = v214;
  }

  else
  {
    v28 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v16, &unk_26288830E, (34 - a3), (34 - a3), v28, v26, v26, 0);
  DgnString::~DgnString(&v214);
  *a4 += v26;
  *a5 += v26;
  v29 = *(this + 3);
  if (v29)
  {
    v213 = 0;
    v214 = 0;
    v212 = 0;
    PronCollMgr::printSize(v29, 0xFFFFFFFFLL, v16, &v214, &v213, &v212);
    *a4 += v214;
    *a5 += v213;
    *a6 += v212;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v30 = 4;
  }

  else
  {
    v30 = 8;
  }

  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1451);
  if (v215)
  {
    v32 = v214;
  }

  else
  {
    v32 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v16, &unk_26288830E, (34 - a3), (34 - a3), v32, v30, v30, 0);
  DgnString::~DgnString(&v214);
  *a4 += v30;
  *a5 += v30;
  v33 = *(this + 4);
  if (v33)
  {
    v213 = 0;
    v214 = 0;
    v212 = 0;
    VocCompatData::printSize(v33, 0xFFFFFFFFLL, v16, &v214, &v213, &v212);
    *a4 += v214;
    *a5 += v213;
    *a6 += v212;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v34 = 4;
  }

  else
  {
    v34 = 8;
  }

  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1453);
  if (v215)
  {
    v36 = v214;
  }

  else
  {
    v36 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v16, &unk_26288830E, (34 - a3), (34 - a3), v36, v34, v34, 0);
  DgnString::~DgnString(&v214);
  *a4 += v34;
  *a5 += v34;
  v37 = *(this + 6);
  if (v37)
  {
    v213 = 0;
    v214 = 0;
    v212 = 0;
    WordList::printSize(v37, 0xFFFFFFFFLL, v16, &v214, &v213, &v212);
    *a4 += v214;
    *a5 += v213;
    *a6 += v212;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v38 = 4;
  }

  else
  {
    v38 = 8;
  }

  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1455);
  if (v215)
  {
    v40 = v214;
  }

  else
  {
    v40 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v16, &unk_26288830E, (34 - a3), (34 - a3), v40, v38, v38, 0);
  DgnString::~DgnString(&v214);
  *a4 += v38;
  *a5 += v38;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1457);
  if (v215)
  {
    v42 = v214;
  }

  else
  {
    v42 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v41, v16, &unk_26288830E, v16, &unk_26288830E, v42);
  v210 = a6;
  v211 = a3;
  DgnString::~DgnString(&v214);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v43, v16, &unk_26288830E);
  v44 = *(this + 22);
  if (v44)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    do
    {
      v49 = *(this + 10);
      if (*(v49 + 8 * v45))
      {
        v213 = 0;
        v214 = 0;
        v212 = 0;
        WordNgramTemplate::printSize(*(v49 + 8 * v45), v45, (v211 + 2), &v214, &v213, &v212);
        v46 += v214;
        v47 += v213;
        v48 += v212;
        v44 = *(this + 22);
      }

      ++v45;
    }

    while (v45 < v44);
  }

  else
  {
    v48 = 0;
    v47 = 0;
    v46 = 0;
    v44 = 0;
  }

  v50 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v50 = 12;
  }

  v51 = v50 + v46;
  v52 = v50 + v47;
  v53 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v53 = 3;
  }

  v54 = v51 + (*(this + 23) << v53);
  v55 = v52 + (v44 << v53);
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1457);
  if (v215)
  {
    v57 = v214;
  }

  else
  {
    v57 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v16, &unk_26288830E, v18, v18, v57, v54, v55, v48);
  DgnString::~DgnString(&v214);
  *a4 += v54;
  *a5 += v55;
  *v210 += v48;
  v58 = *(this + 7);
  if (v58)
  {
    v213 = 0;
    v214 = 0;
    v212 = 0;
    StateMgr::printSize(v58, 0xFFFFFFFFLL, v16, &v214, &v213, &v212);
    *a4 += v214;
    *a5 += v213;
    *v210 += v212;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v59 = 4;
  }

  else
  {
    v59 = 8;
  }

  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1459);
  if (v215)
  {
    v61 = v214;
  }

  else
  {
    v61 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v16, &unk_26288830E, v18, v18, v61, v59, v59, 0);
  DgnString::~DgnString(&v214);
  *a4 += v59;
  *a5 += v59;
  v62 = *(this + 8);
  if (v62)
  {
    v213 = 0;
    v214 = 0;
    v212 = 0;
    RuleMgr::printSize(v62, 0xFFFFFFFFLL, v16, &v214, &v213, &v212);
    *a4 += v214;
    *a5 += v213;
    *v210 += v212;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v63 = 4;
  }

  else
  {
    v63 = 8;
  }

  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1460);
  if (v215)
  {
    v65 = v214;
  }

  else
  {
    v65 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v16, &unk_26288830E, v18, v18, v65, v63, v63, 0);
  DgnString::~DgnString(&v214);
  *a4 += v63;
  *a5 += v63;
  v66 = *(this + 9);
  if (v66)
  {
    v213 = 0;
    v214 = 0;
    v212 = 0;
    (*(*v66 + 16))(v66, 0xFFFFFFFFLL, v16, &v214, &v213, &v212);
    *a4 += v214;
    *a5 += v213;
    *v210 += v212;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v67 = 4;
  }

  else
  {
    v67 = 8;
  }

  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1462);
  if (v215)
  {
    v69 = v214;
  }

  else
  {
    v69 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v16, &unk_26288830E, v18, v18, v69, v67, v67, 0);
  DgnString::~DgnString(&v214);
  *a4 += v67;
  *a5 += v67;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1464);
  if (v215)
  {
    v71 = v214;
  }

  else
  {
    v71 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v16, &unk_26288830E, v18, v18, v71, 8, 8, 0);
  DgnString::~DgnString(&v214);
  *a4 += 8;
  *a5 += 8;
  v213 = 0;
  v214 = 0;
  v212 = 0;
  PhnMgr::printSize((this + 184), 0xFFFFFFFFLL, v16, &v214, &v213, &v212);
  *a4 += v214;
  *a5 += v213;
  *v210 += v212;
  v72 = FileSpec::sizeObject(this + 104, 0);
  v73 = FileSpec::sizeObject(this + 104, 1);
  v74 = FileSpec::sizeObject(this + 104, 3);
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1467);
  if (v215)
  {
    v76 = v214;
  }

  else
  {
    v76 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v75, v16, &unk_26288830E, v18, v18, v76, v72, v73, v74);
  DgnString::~DgnString(&v214);
  *a4 += v72;
  *a5 += v73;
  *v210 += v74;
  v77 = sizeObject(this + 144, 0);
  v78 = sizeObject(this + 144, 1);
  v79 = sizeObject(this + 144, 3);
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1468);
  if (v215)
  {
    v81 = v214;
  }

  else
  {
    v81 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v16, &unk_26288830E, v18, v18, v81, v77, v78, v79);
  DgnString::~DgnString(&v214);
  *a4 += v77;
  *a5 += v78;
  *v210 += v79;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1469);
  if (v215)
  {
    v83 = v214;
  }

  else
  {
    v83 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v82, v16, &unk_26288830E, v18, v18, v83, 2, 2, 0);
  DgnString::~DgnString(&v214);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1471);
  if (v215)
  {
    v85 = v214;
  }

  else
  {
    v85 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v84, v16, &unk_26288830E, v18, v18, v85, 2, 2, 0);
  DgnString::~DgnString(&v214);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1473);
  if (v215)
  {
    v87 = v214;
  }

  else
  {
    v87 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v16, &unk_26288830E, v18, v18, v87, 2, 2, 0);
  DgnString::~DgnString(&v214);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1475);
  if (v215)
  {
    v89 = v214;
  }

  else
  {
    v89 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v88, v16, &unk_26288830E, v18, v18, v89, 2, 2, 0);
  DgnString::~DgnString(&v214);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1477);
  if (v215)
  {
    v91 = v214;
  }

  else
  {
    v91 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v90, v16, &unk_26288830E, v18, v18, v91, 2, 2, 0);
  DgnString::~DgnString(&v214);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1479);
  if (v215)
  {
    v93 = v214;
  }

  else
  {
    v93 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v92, v16, &unk_26288830E, v18, v18, v93, 4, 4, 0);
  DgnString::~DgnString(&v214);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1481);
  if (v215)
  {
    v95 = v214;
  }

  else
  {
    v95 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v94, v16, &unk_26288830E, v18, v18, v95, 4, 4, 0);
  DgnString::~DgnString(&v214);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1483);
  if (v215)
  {
    v97 = v214;
  }

  else
  {
    v97 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v96, v16, &unk_26288830E, v18, v18, v97, 4, 4, 0);
  DgnString::~DgnString(&v214);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1485);
  if (v215)
  {
    v99 = v214;
  }

  else
  {
    v99 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v98, v16, &unk_26288830E, v18, v18, v99, 1, 1, 0);
  DgnString::~DgnString(&v214);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1487);
  if (v215)
  {
    v101 = v214;
  }

  else
  {
    v101 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v100, v16, &unk_26288830E, v18, v18, v101, 4, 4, 0);
  DgnString::~DgnString(&v214);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v102 = 12;
  }

  else
  {
    v102 = 16;
  }

  v103 = *(this + 70);
  v104 = *(this + 71);
  if (v104 >= v103)
  {
    v105 = 0;
    if (v103 > 0)
    {
      v102 += 2 * (v103 - 1) + 2;
    }

    v106 = v102 + 2 * (v104 - v103);
  }

  else
  {
    v105 = 2 * v103;
    v106 = v102;
  }

  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1489);
  if (v215)
  {
    v108 = v214;
  }

  else
  {
    v108 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v107, v16, &unk_26288830E, v18, v18, v108, v106, v102, v105);
  DgnString::~DgnString(&v214);
  *a4 += v106;
  *a5 += v102;
  *v210 += v105;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1491);
  if (v215)
  {
    v110 = v214;
  }

  else
  {
    v110 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v109, v16, &unk_26288830E, v18, v18, v110, 1, 1, 0);
  DgnString::~DgnString(&v214);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1493);
  if (v215)
  {
    v112 = v214;
  }

  else
  {
    v112 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v111, v16, &unk_26288830E, v18, v18, v112, 4, 4, 0);
  DgnString::~DgnString(&v214);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1495);
  if (v215)
  {
    v114 = v214;
  }

  else
  {
    v114 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v113, v16, &unk_26288830E, v18, v18, v114, 4, 4, 0);
  DgnString::~DgnString(&v214);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1497);
  if (v215)
  {
    v116 = v214;
  }

  else
  {
    v116 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v115, v16, &unk_26288830E, v18, v18, v116, 4, 4, 0);
  DgnString::~DgnString(&v214);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1499);
  if (v215)
  {
    v118 = v214;
  }

  else
  {
    v118 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v117, v16, &unk_26288830E, v18, v18, v118, 4, 4, 0);
  DgnString::~DgnString(&v214);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1501);
  if (v215)
  {
    v120 = v214;
  }

  else
  {
    v120 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v119, v16, &unk_26288830E, v18, v18, v120, 4, 4, 0);
  DgnString::~DgnString(&v214);
  *a4 += 4;
  *a5 += 4;
  v121 = 12;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v121 = 16;
  }

  v122 = *(this + 84);
  v123 = *(this + 85);
  if (v123 >= v122)
  {
    v126 = 0;
    if (v122 > 0)
    {
      v121 += 4 * (v122 - 1) + 4;
    }

    v128 = v123 - v122;
    v129 = 20;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v129 = 16;
    }

    v125 = v129 + v121;
    v127 = v129 + v121 + 4 * v128;
  }

  else
  {
    v124 = 8;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v124 = 4;
    }

    v125 = v121 + v124 + 12;
    v126 = 4 * v122;
    v127 = v125;
  }

  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1503);
  if (v215)
  {
    v131 = v214;
  }

  else
  {
    v131 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v130, v16, &unk_26288830E, v18, v18, v131, v127, v125, v126);
  DgnString::~DgnString(&v214);
  *a4 += v127;
  *a5 += v125;
  *v210 += v126;
  v132 = sizeObject<ParseToken>(this + 352, 0);
  v133 = sizeObject<ParseToken>(this + 352, 1);
  sizeObject(&v214, 2);
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1505);
  if (v215)
  {
    v135 = v214;
  }

  else
  {
    v135 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v134, v16, &unk_26288830E, v18, v18, v135, v132, v133, 0);
  DgnString::~DgnString(&v214);
  *a4 += v132;
  *a5 += v133;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v136 = 12;
  }

  else
  {
    v136 = 16;
  }

  v137 = *(this + 94);
  v138 = *(this + 95);
  if (v138 >= v137)
  {
    v139 = 0;
    if (v137 > 0)
    {
      v136 += 2 * (v137 - 1) + 2;
    }

    v140 = v136 + 2 * (v138 - v137);
  }

  else
  {
    v139 = 2 * v137;
    v140 = v136;
  }

  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1507);
  if (v215)
  {
    v142 = v214;
  }

  else
  {
    v142 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v141, v16, &unk_26288830E, v18, v18, v142, v140, v136, v139);
  DgnString::~DgnString(&v214);
  *a4 += v140;
  *a5 += v136;
  *v210 += v139;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v143 = 12;
  }

  else
  {
    v143 = 16;
  }

  v144 = *(this + 98);
  v145 = *(this + 99);
  if (v145 >= v144)
  {
    v146 = 0;
    if (v144 > 0)
    {
      v143 += 4 * (v144 - 1) + 4;
    }

    v147 = v143 + 4 * (v145 - v144);
  }

  else
  {
    v146 = 4 * v144;
    v147 = v143;
  }

  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1509);
  if (v215)
  {
    v149 = v214;
  }

  else
  {
    v149 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v148, v16, &unk_26288830E, v18, v18, v149, v147, v143, v146);
  DgnString::~DgnString(&v214);
  *a4 += v147;
  *a5 += v143;
  *v210 += v146;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v150 = 12;
  }

  else
  {
    v150 = 16;
  }

  v151 = *(this + 102);
  v152 = *(this + 103);
  if (v152 >= v151)
  {
    v153 = 0;
    if (v151 > 0)
    {
      v150 += 4 * (v151 - 1) + 4;
    }

    v154 = v150 + 4 * (v152 - v151);
  }

  else
  {
    v153 = 4 * v151;
    v154 = v150;
  }

  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1511);
  if (v215)
  {
    v156 = v214;
  }

  else
  {
    v156 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v155, v16, &unk_26288830E, v18, v18, v156, v154, v150, v153);
  DgnString::~DgnString(&v214);
  *a4 += v154;
  *a5 += v150;
  *v210 += v153;
  v157 = PrefiltererWordIdPronCollArray::sizeObject(this + 416, 0);
  v158 = PrefiltererWordIdPronCollArray::sizeObject(this + 416, 1);
  v159 = PrefiltererWordIdPronCollArray::sizeObject(this + 416, 3);
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1513);
  if (v215)
  {
    v161 = v214;
  }

  else
  {
    v161 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v160, v16, &unk_26288830E, v18, v18, v161, v157, v158, v159);
  DgnString::~DgnString(&v214);
  *a4 += v157;
  *a5 += v158;
  *v210 += v159;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1515);
  if (v215)
  {
    v163 = v214;
  }

  else
  {
    v163 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v162, v16, &unk_26288830E, v18, v18, v163, 1, 1, 0);
  DgnString::~DgnString(&v214);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v164 = 4;
  }

  else
  {
    v164 = 8;
  }

  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1516);
  if (v215)
  {
    v166 = v214;
  }

  else
  {
    v166 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v165, v16, &unk_26288830E, v18, v18, v166, v164, v164, 0);
  DgnString::~DgnString(&v214);
  *a4 += v164;
  *a5 += v164;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1517);
  if (v215)
  {
    v168 = v214;
  }

  else
  {
    v168 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v167, v16, &unk_26288830E, v18, v18, v168, 4, 4, 0);
  DgnString::~DgnString(&v214);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v169 = 4;
  }

  else
  {
    v169 = 8;
  }

  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1519);
  if (v215)
  {
    v171 = v214;
  }

  else
  {
    v171 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v170, v16, &unk_26288830E, v18, v18, v171, v169, v169, 0);
  DgnString::~DgnString(&v214);
  *a4 += v169;
  *a5 += v169;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1521);
  if (v215)
  {
    v173 = v214;
  }

  else
  {
    v173 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v172, v16, &unk_26288830E, v18, v18, v173, 4, 4, 0);
  DgnString::~DgnString(&v214);
  *a4 += 4;
  *a5 += 4;
  v174 = sizeObject(this + 448, 0);
  v175 = sizeObject(this + 448, 1);
  v176 = sizeObject(this + 448, 3);
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1523);
  if (v215)
  {
    v178 = v214;
  }

  else
  {
    v178 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v177, v16, &unk_26288830E, v18, v18, v178, v174, v175, v176);
  DgnString::~DgnString(&v214);
  *a4 += v174;
  *a5 += v175;
  *v210 += v176;
  v179 = sizeObject(this + 464, 0);
  v180 = sizeObject(this + 464, 1);
  v181 = sizeObject(this + 464, 3);
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1525);
  if (v215)
  {
    v183 = v214;
  }

  else
  {
    v183 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v182, v16, &unk_26288830E, v18, v18, v183, v179, v180, v181);
  DgnString::~DgnString(&v214);
  *a4 += v179;
  *a5 += v180;
  *v210 += v181;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1527);
  if (v215)
  {
    v185 = v214;
  }

  else
  {
    v185 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v184, v16, &unk_26288830E, v18, v18, v185, 4, 4, 0);
  DgnString::~DgnString(&v214);
  *a4 += 4;
  *a5 += 4;
  v186 = sizeObject(this + 488, 0);
  v187 = sizeObject(this + 488, 1);
  v188 = sizeObject(this + 488, 3);
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1529);
  if (v215)
  {
    v190 = v214;
  }

  else
  {
    v190 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v189, v16, &unk_26288830E, v18, v18, v190, v186, v187, v188);
  DgnString::~DgnString(&v214);
  *a4 += v186;
  *a5 += v187;
  *v210 += v188;
  v191 = sizeObject(this + 504, 0);
  v192 = sizeObject(this + 504, 1);
  v193 = sizeObject(this + 504, 3);
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1531);
  if (v215)
  {
    v195 = v214;
  }

  else
  {
    v195 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v194, v16, &unk_26288830E, v18, v18, v195, v191, v192, v193);
  DgnString::~DgnString(&v214);
  *a4 += v191;
  *a5 += v192;
  *v210 += v193;
  v196 = sizeObject(this + 520, 0);
  v197 = sizeObject(this + 520, 1);
  v198 = sizeObject(this + 520, 3);
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1533);
  if (v215)
  {
    v200 = v214;
  }

  else
  {
    v200 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v199, v16, &unk_26288830E, v18, v18, v200, v196, v197, v198);
  DgnString::~DgnString(&v214);
  *a4 += v196;
  *a5 += v197;
  *v210 += v198;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1535);
  if (v215)
  {
    v202 = v214;
  }

  else
  {
    v202 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v201, v16, &unk_26288830E, v18, v18, v202, 4, 4, 0);
  DgnString::~DgnString(&v214);
  *a4 += 4;
  *a5 += 4;
  v203 = sizeObject(this + 40, 0);
  v204 = sizeObject(this + 40, 1);
  v205 = sizeObject(this + 40, 3);
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1537);
  if (v215)
  {
    v207 = v214;
  }

  else
  {
    v207 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v206, v16, &unk_26288830E, v18, v18, v207, v203, v204, v205);
  DgnString::~DgnString(&v214);
  *a4 += v203;
  *a5 += v204;
  *v210 += v205;
  getShipObjectSizeDescription(&v214, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1538);
  if (v215)
  {
    v209 = v214;
  }

  else
  {
    v209 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v208, v211, &unk_26288830E, (35 - v211), (35 - v211), v209, *a4, *a5, *v210);
  DgnString::~DgnString(&v214);
}

void sub_2626A07F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

DgnSharedMemSet *Voc::canUnloadCachedLM(Voc *this)
{
  result = *(this + 15);
  if (result)
  {
    return (*(DgnSharedMemSet::getSetCacheDir(result) + 8) > 1u);
  }

  return result;
}

BOOL Voc::isPhonemeSetCompatibleWithVoc(Voc *this, const Voc *a2, int a3)
{
  if (!PhnMgr::operator==(this + 184, a2 + 184))
  {
    if (a3)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1655, "voc/voc", 25, "%.500s");
    }

    return 0;
  }

  if ((DgnArray<DgnPrimArray<BOOL>>::operator==((*(this + 6) + 400), (*(a2 + 6) + 400)) & 1) == 0)
  {
    if (a3)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1661, "voc/voc", 25, "%.500s");
    }

    return 0;
  }

  result = PronCollMgr::operator==(*(this + 3), *(a2 + 3));
  if (!result && a3)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1666, "voc/voc", 25, "%.500s");
    return 0;
  }

  return result;
}

uint64_t Voc::removePrefWordIdsSortedByPron(uint64_t a1, uint64_t *a2)
{
  result = PrefiltererWordIdPronCollArray::removeArray(a1 + 416, a2);
  if (*(a1 + 376) && *(a2 + 2))
  {
    v5 = 0;
    v6 = *a2;
    v7 = *(a1 + 368);
    v8 = *(a1 + 384);
    do
    {
      v9 = *(v6 + 4 * v5);
      *(v7 + 2 * v9) = 0;
      *(v8 + 4 * v9) = 0;
      ++v5;
    }

    while (v5 < *(a2 + 2));
  }

  return result;
}

uint64_t Voc::notifyWordFamilyAdded(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  StateMgr::addWordIdsToStatesWithId(*(a1 + 56), a3, a2);
  v8 = *(a1 + 48);
  v9 = (*(v8 + 28) + *(*(v8 + 25) + 4 * a2));
  result = WordList::numAltProns(v8, v9);
  if (*(a3 + 8))
  {
    v11 = result;
    v12 = 0;
    do
    {
      v13 = *(*a3 + 4 * v12);
      result = (*(**(a1 + 72) + 360))(*(a1 + 72), v13, a4);
      if (*(a1 + 88))
      {
        v14 = 0;
        do
        {
          result = WordNgramTemplate::addWord(*(*(a1 + 80) + 8 * v14++), v13, a4);
        }

        while (v14 < *(a1 + 88));
      }

      ++v12;
      v15 = *(a3 + 8);
    }

    while (v12 < v15);
    if (v15)
    {
      if (*(a1 + 260))
      {
        v16 = *(a1 + 264);
        if (!v16 || (result = StateMgr::isWordIdInState(*(a1 + 56), v16, a2, 1), result))
        {
          v24[0] = 0;
          v24[1] = 0;
          (*(**(a1 + 72) + 520))(*(a1 + 72), a3, v24);
          v17 = *(a3 + 8);
          if (v17)
          {
            v18 = 0;
            v19 = *(a1 + 280);
            do
            {
              v20 = *(*a3 + 4 * v18);
              if (v20 >= v19)
              {
                do
                {
                  if (v19 == *(a1 + 284))
                  {
                    DgnPrimArray<short>::reallocElts(a1 + 272, 1, 1);
                    v19 = *(a1 + 280);
                  }

                  v21 = *(a1 + 272);
                  *(v21 + 2 * v19++) = 20000;
                  *(a1 + 280) = v19;
                }

                while (v20 >= v19);
                v17 = *(a3 + 8);
              }

              else
              {
                v21 = *(a1 + 272);
              }

              *(v21 + 2 * v20) = *(v24[0] + 2 * v18++) + **(a1 + 32);
            }

            while (v18 < v17);
          }

          result = DgnPrimArray<unsigned int>::~DgnPrimArray(v24);
        }
      }
    }

    v22 = *(a3 + 8);
    if (v22)
    {
      v23 = *(a1 + 440);
      if (v23)
      {
        *(a1 + 440) = v23 + v22;
        if (a4 != 0xFFFFFF)
        {
          return DgnString::stringPrintf((a1 + 464), "%.500s pron %u (cloned from %u)");
        }
      }

      else
      {
        if (a4 != 0xFFFFFF)
        {
          DgnString::stringPrintf((a1 + 448), "%.500s pron %u (cloned from %u)", v9, v11, a4);
          *(a1 + 440) += *(a3 + 8);
          return DgnString::stringPrintf((a1 + 464), "%.500s pron %u (cloned from %u)");
        }

        DgnString::stringPrintf((a1 + 448), "%.500s pron %u", v9, v11);
        *(a1 + 440) += *(a3 + 8);
      }

      return DgnString::stringPrintf((a1 + 464), "%.500s pron %u");
    }
  }

  return result;
}

void sub_2626A0D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t Voc::notifyWordFamilyAboutToDeleteProns(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (*(result + 288) == 1)
  {
    v3 = result;
    if (*(*(*(result + 48) + 32) + 2 * a3))
    {
      v8 = 0;
      v9 = 0;
      if (*(a2 + 8))
      {
        v5 = 0;
        do
        {
          if (StateMgr::isWordIdInState(*(v3 + 56), *(v3 + 304), *(*a2 + 4 * v5), 1))
          {
            v6 = *(*a2 + 4 * v5);
            v7 = v9;
            if (v9 == HIDWORD(v9))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v8, 1, 1);
              v7 = v9;
            }

            *(v8 + 4 * v7) = v6;
            LODWORD(v9) = v9 + 1;
          }

          ++v5;
        }

        while (v5 < *(a2 + 8));
      }

      Voc::removePrefWordIdsSortedByPron(v3, &v8);
      return DgnPrimArray<unsigned int>::~DgnPrimArray(&v8);
    }
  }

  return result;
}

void Voc::notifyWordFamilyDeleted(uint64_t a1, unsigned int **a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  DgnString::stringPrintf((a1 + 504), "%.500s pron %u", (*(*(a1 + 48) + 224) + *(*(*(a1 + 48) + 200) + 4 * a3)), *(*(*(a1 + 48) + 104) + **a2));
  v10 = *(a1 + 480);
  if (!v10)
  {
    DgnString::operator=((a1 + 488), (a1 + 504));
    v10 = *(a1 + 480);
  }

  *(a1 + 480) = v10 + *(a2 + 2);
  StateMgr::deleteWordIdsFromStatesWithId(*(a1 + 56), a2, a3);
  LODWORD(v11) = *(a2 + 2);
  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = (*a2)[v12];
      (*(**(a1 + 72) + 376))(*(a1 + 72), v13, a4, a5);
      if (*(a1 + 88))
      {
        v14 = 0;
        do
        {
          WordNgramTemplate::deleteWord(*(*(a1 + 80) + 8 * v14++), v13);
        }

        while (v14 < *(a1 + 88));
      }

      ++v12;
      v11 = *(a2 + 2);
    }

    while (v12 < v11);
  }

  if (*(a1 + 260))
  {
    v15 = *(a1 + 264);
    if (v15)
    {
      if (!StateMgr::isWordIdInState(*(a1 + 56), v15, a3, 1))
      {
        return;
      }

      LODWORD(v11) = *(a2 + 2);
    }

    if (v11)
    {
      v16 = *a2;
      v17 = *(a1 + 272);
      v11 = v11;
      do
      {
        v18 = *v16++;
        *(v17 + 2 * v18) = 20000;
        --v11;
      }

      while (v11);
    }
  }
}

uint64_t *Voc::addPrefPicModelIdPron(uint64_t *result, unsigned int a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(result + 94);
  if (v6 <= a2)
  {
    do
    {
      if (v6 == *(v5 + 380))
      {
        result = DgnPrimArray<short>::reallocElts(v5 + 368, 1, 1);
        v6 = *(v5 + 376);
      }

      *(*(v5 + 368) + 2 * v6) = 0;
      *(v5 + 376) = v6 + 1;
      v8 = *(v5 + 392);
      if (v8 == *(v5 + 396))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(v5 + 384, 1, 1);
        v8 = *(v5 + 392);
      }

      v7 = *(v5 + 384);
      *(v7 + 4 * v8) = 0;
      ++*(v5 + 392);
      v6 = *(v5 + 376);
    }

    while (v6 <= a2);
  }

  else
  {
    v7 = result[48];
  }

  *(*(v5 + 368) + 2 * a2) = *(a3 + 2);
  v9 = *(v5 + 408);
  *(v7 + 4 * a2) = v9;
  v10 = *(a3 + 2);
  v11 = v9 + v10;
  v12 = *(v5 + 412);
  if (v11 > v12)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(v5 + 400, v11 - v12, 1);
    v10 = *(a3 + 2);
  }

  if (v10)
  {
    v13 = 0;
    v14 = *a3;
    v15 = *(v5 + 400);
    do
    {
      *(v15 + 4 * (v13 + *(v5 + 408))) = *(v14 + 4 * v13);
      ++v13;
      v16 = *(a3 + 2);
    }

    while (v13 < v16);
  }

  else
  {
    LODWORD(v16) = 0;
  }

  *(v5 + 408) += v16;
  return result;
}

void *Voc::getPrefPicModelIdPron(void *this, unsigned int a2, const unsigned int **a3, unsigned int *a4)
{
  *a3 = (this[50] + 4 * *(this[48] + 4 * a2));
  *a4 = *(this[46] + 2 * a2);
  return this;
}

uint64_t Voc::findOrAddPrefPicModel(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 360) | (a2[2] << 24);
  v5 = HashProbeKEV<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>::insert(a1 + 312, v4, a2);
  if (v5 == v4)
  {
    v6 = a2[2];
    v7 = *(a1 + 360) + v6;
    v8 = *(a1 + 364);
    if (v7 > v8)
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 352, v7 - v8, 1);
      v6 = a2[2];
    }

    if (v6)
    {
      v9 = 0;
      do
      {
        *(*(a1 + 352) + 4 * (v9 + *(a1 + 360))) = *(*a2 + 4 * v9);
        ++v9;
        v10 = a2[2];
      }

      while (v9 < v10);
    }

    else
    {
      LODWORD(v10) = 0;
    }

    *(a1 + 360) += v10;
  }

  return v5;
}

uint64_t HashProbeKEV<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>::insert(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v6 = *(a1 + 4);
  if (*a1 >= v6 >> 1)
  {
    HashProbeKEV<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>::upSize(a1, 2 * v6);
  }

  v7 = a3[2];
  if (v7)
  {
    v8 = 0;
    v9 = (*a3 + 2);
    do
    {
      HIDWORD(v10) = v8;
      LODWORD(v10) = v8;
      v11 = (v10 >> 19) + *(v9 - 1);
      v12 = *v9;
      v9 += 2;
      HIDWORD(v10) = v11;
      LODWORD(v10) = v11;
      v8 = (v10 >> 19) + v12;
      --v7;
    }

    while (v7);
    LODWORD(v7) = -1640531527 * v8;
  }

  v13 = *(a1 + 8);
  v14 = v7 >> -v13;
  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 16);
  v17 = *(v16 + 4 * v15);
  if (v17 == -1)
  {
LABEL_18:
    v19 = (v16 + 4 * v15);
    *v19 = a2;
    ++*a1;
    return *v19;
  }

  if ((Voc::equalKeys(*(a1 + 32), v17, a3) & 1) == 0)
  {
    do
    {
      v15 = v15 + 1 == *(a1 + 4) ? 0 : (v15 + 1);
      v16 = *(a1 + 16);
      v18 = *(v16 + 4 * v15);
      if (v18 == -1)
      {
        goto LABEL_18;
      }
    }

    while (!Voc::equalKeys(*(a1 + 32), v18, a3));
  }

  v19 = (*(a1 + 16) + 4 * v15);
  return *v19;
}

void Voc::deleteWordsFromWordList(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  WordList::deleteWords(*(a1 + 48), a2, &v3);
  if (v3)
  {
    (*(**(a1 + 72) + 400))(*(a1 + 72));
  }
}

double Voc::verifyCanDeleteWords(Voc *this, unsigned int a2)
{
  if ((*(**(this + 9) + 192))(*(this + 9)))
  {
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1970, "voc/voc", 2, "%d %.500s %d", a2, (*(*(this + 6) + 224) + *(*(*(this + 6) + 200) + 4 * a2)), *(this + 84));
  }

  return result;
}

uint64_t Voc::deleteWordIdArrayFamily(Voc *a1, uint64_t a2, void *a3)
{
  Voc::verifyCanDeleteWords(a1, **a2);
  v6 = *(a2 + 8);
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(*a3 + 16 * v8 + 8);
      if (HIDWORD(v20) < v9)
      {
        break;
      }

      LODWORD(v20) = *(*a3 + 16 * v8 + 8);
      if (v9)
      {
        goto LABEL_6;
      }

LABEL_8:
      Voc::notifyWordFamilyAboutToDeleteProns(a1, &v19, *(*a2 + 4 * v8));
      Voc::notifyWordFamilyDeleted(a1, &v19, *(*a2 + 4 * v8), &v18 + 1, &v18);
      v7 = v20;
      if ((v22 + v20) > HIDWORD(v22))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v21, (v22 + v20 - HIDWORD(v22)), 1);
        v7 = v20;
      }

      if (v7)
      {
        v14 = 0;
        v15 = v19;
        v16 = v21;
        do
        {
          *(v16 + 4 * (v14 + v22)) = v15[v14];
          ++v14;
        }

        while (v14 < v20);
        v7 = v20;
      }

      LODWORD(v22) = v22 + v7;
      if (++v8 == v6)
      {
        goto LABEL_15;
      }
    }

    v23 = 0;
    v10 = realloc_array(v19, &v23, 4 * v9, 4 * v7, 4 * v7, 1);
    v19 = v23;
    LODWORD(v20) = v9;
    HIDWORD(v20) = v10 >> 2;
LABEL_6:
    v11 = *(*a3 + 16 * v8);
    v12 = v19;
    v13 = v9 - 1;
    do
    {
      *v12++ = *(v11 + 4 * v13--);
      --v9;
    }

    while (v9);
    goto LABEL_8;
  }

LABEL_15:
  Voc::deleteWordsFromWordList(a1, &v21);
  if (HIBYTE(v18) == 1)
  {
    (*(**(a1 + 9) + 384))(*(a1 + 9));
  }

  if (v18 == 1)
  {
    (*(**(a1 + 9) + 392))(*(a1 + 9));
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v19);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
}

void sub_2626A164C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

uint64_t Voc::createWord(WordList **this, char *a2, uint64_t a3, const char *a4)
{
  if (!a2 || !*a2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 2020, "voc/voc", 15, "%s", &errStr_voc_voc_E_BAD_WORDNAME);
  }

  if (WordList::lookupWord(this[6], a2) != 0xFFFFFF)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 2023, "voc/voc", 5, "%d %.500s", *(this + 84), a2);
  }

  v8 = WordList::addWord(this[6], a2, 1, 1, 1, a4);
  v10 = 0;
  v11 = 0;
  DgnPrimArray<unsigned int>::reallocElts(&v10, 1, 1);
  *(v10 + 4 * v11) = v8;
  LODWORD(v11) = v11 + 1;
  Voc::notifyWordFamilyAdded(this, v8, &v10, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v10);
  return v8;
}

void sub_2626A179C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t Voc::addClientPronsAvoidDuplicates(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, int a8, uint64_t a9, uint64_t a10)
{
  *(a3 + 8) = 0;
  *(a4 + 8) = 0;
  return WordList::addClientPronsAvoidDuplicates(*(a1 + 48), a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t Voc::deleteWordClientProns(WordList **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  WordList::verifyModifiable(a1[6], a2);
  v8 = a1[6];
  v9 = *(v8[25] + 4 * v6);
  v10 = v8[28];
  v13[0] = 0;
  v13[1] = 0;
  WordList::lookupAllClientAddedProns(v8, v10 + v9, v13);
  Voc::notifyWordFamilyAboutToDeleteProns(a1, v13, v6);
  WordList::deleteWordClientProns(a1[6], v6, v13, a3, a4);
  if (*(a4 + 8))
  {
    Voc::verifyCanDeleteWords(a1, v6);
    v12 = 0;
    Voc::notifyWordFamilyDeleted(a1, a4, v6, &v12 + 1, &v12);
    Voc::deleteWordsFromWordList(a1, a4);
  }

  if (*(a3 + 8))
  {
    StateMgr::notifyPronsChanged(a1[7], a3);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(v13);
}

void sub_2626A18AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t Voc::getPics(uint64_t a1, _DWORD *a2, unsigned int a3, __int16 *a4, __int16 *a5, char a6, _DWORD *a7)
{
  result = *a2 & 0xFFFFFF;
  v12 = a4[1];
  v13 = *a4;
  v14 = *a5;
  v15 = a5[1];
  v16 = *(a1 + 48);
  v17 = *(v16[4] + 2 * result);
  v18 = (v16[9] + 2 * *(v16[6] + 4 * result));
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v18 += v17 - 1;
      if (v17 >= 2)
      {
        if (v17 != 2)
        {
          v13 = *(v18 - 2);
        }

        v12 = v13;
        v13 = *(v18 - 1);
      }
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_12;
      }

      if (v17 >= 2)
      {
        if (v17 != 2)
        {
          v14 = v18[2];
        }

        v19 = v18[1];
        v21 = 1;
        goto LABEL_11;
      }
    }

    v21 = 1;
    v19 = *a5;
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v19 = v18[v17 - 1];
        v12 = *a4;
        v20 = *v18++;
        v13 = v20;
        v21 = v17 - 2;
LABEL_11:
        v15 = v14;
        goto LABEL_19;
      }

LABEL_12:
      v21 = 0;
      v22 = *v18;
      a7[2] = 0;
      v23 = v14;
LABEL_28:
      v19 = v15;
      goto LABEL_30;
    }

    v19 = *a5;
    v21 = *(v16[4] + 2 * result);
  }

LABEL_19:
  v22 = *v18;
  v24 = a7[3];
  if (v21 > v24)
  {
    v48 = a1;
    v49 = *a2 & 0xFFFFFF;
    v46 = v15;
    v47 = a3;
    v25 = a6;
    v45 = v21;
    DgnArray<RuleDesc>::reallocElts(a7, v21 - v24, 0);
    a3 = v47;
    a6 = v25;
    v21 = v45;
    v15 = v46;
    a1 = v48;
    result = v49;
  }

  v26 = a7[2];
  if (v26 < v21)
  {
    v27 = v21 - v26;
    v28 = 12 * v26;
    do
    {
      v29 = *a7 + v28;
      *v29 = -1;
      *(v29 + 8) = 0xFFFF;
      v28 += 12;
      --v27;
    }

    while (v27);
  }

  a7[2] = v21;
  if (v21 < 2)
  {
    v14 = v19;
    v23 = v19;
    goto LABEL_28;
  }

  v23 = v18[1];
  v14 = v19;
  if (v21 != 2)
  {
    v19 = v18[2];
  }

LABEL_30:
  v30 = *a7;
  *v30 = v12;
  v30[1] = v13;
  v30[2] = v22;
  v30[3] = v23;
  v30[4] = v19;
  v30[5] = 0;
  if (v21 >= 2)
  {
    v31 = 12;
    v32 = 3;
    do
    {
      v33 = v13;
      v13 = v22;
      v22 = v23;
      v23 = v19;
      v19 = v14;
      if (12 * (v21 - 2) != v31)
      {
        v19 = v15;
        if (12 * (v21 - 1) != v31)
        {
          v19 = v18[v32];
        }
      }

      v34 = (*a7 + v31);
      *v34 = v33;
      v34[1] = v13;
      v34[2] = v22;
      v34[3] = v23;
      v34[4] = v19;
      v34[5] = 0;
      ++v32;
      v31 += 12;
    }

    while (12 * v21 != v31);
  }

  if ((a6 & 1) != 0 || (v35 = a2[2], !v35))
  {
    v37 = 1;
    v38 = 1;
  }

  else
  {
    v36 = *(a1 + 56);
    v37 = *(*(v36 + 352) + v35) != 0;
    v38 = *(*(v36 + 368) + v35) != 0;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (v37)
      {
        *(*a7 + 10) = 1;
      }

      if (v38)
      {
        v44 = *(v16[6] + 4 * result);
        if ((*(v16[11] + ((v44 >> 3) & 0x1FFFFFFC)) >> v44))
        {
          *(*a7 + 11) = 1;
        }
      }
    }

    else if (a3 == 3)
    {
      if (v38)
      {
        *(*a7 + 11) = 1;
      }

      if (v37)
      {
        if (v17 == 1 || (v39 = v17 + *(v16[6] + 4 * result) - 2, ((*(v16[11] + 4 * (v39 >> 5)) >> v39) & 1) != 0))
        {
          *(*a7 + 10) = 1;
        }
      }
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      --v21;
    }

    else
    {
      if (v37)
      {
        *(*a7 + 10) = 1;
      }

      if (v38)
      {
        *(*a7 + 12 * (v21 - 1) + 11) = 1;
      }
    }

    if (v21 > a3)
    {
      v40 = v21 - a3;
      v41 = 11;
      v42 = 1;
      do
      {
        v43 = a3 + v42 + *(v16[6] + 4 * result) - 1;
        if ((*(v16[11] + 4 * (v43 >> 5)) >> v43))
        {
          if (v38)
          {
            *(*a7 + v41) = 1;
          }

          if (v37)
          {
            *(*a7 + 12 * v42 + 10) = 1;
          }
        }

        v41 += 12;
        ++v42;
        --v40;
      }

      while (v40);
    }
  }

  return result;
}

uint64_t HashProbeKEV<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>::HashProbeKEV(uint64_t a1, const char *a2, int a3)
{
  HashProbeBase::HashProbeBase(a1, a2);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 8));
  *a1 = 0;
  *(a1 + 4) = v6;
  HashProbeKEV<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>::initBuckets(a1);
  *(a1 + 32) = 0;
  return a1;
}

void sub_2626A1D90(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

uint64_t *HashProbeKEV<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>::initBuckets(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 1);
  v3 = *(result + 7);
  if (v2 <= v3)
  {
    *(result + 6) = v2;
    v4 = (result + 3);
    if (!v2)
    {
      return result;
    }
  }

  else
  {
    result = DgnPrimArray<unsigned int>::reallocElts((result + 2), v2 - v3, 0);
    *(v1 + 6) = v2;
    v4 = (v1 + 3);
  }

  v5 = 0;
  v6 = v1[2];
  do
  {
    *(v6 + 4 * v5++) = -1;
  }

  while (v5 < *v4);
  return result;
}

void *DgnIOwnArray<WordNgramTemplate *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<WordNgramTemplate>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void *DgnDelete<WordNgramTemplate>(void *result)
{
  if (result)
  {
    v1 = result;
    DgnPrimArray<unsigned int>::~DgnPrimArray((result + 18));
    Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::~Hash((v1 + 4));

    return MemChunkFree(v1, 0);
  }

  return result;
}

void Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::~Hash(uint64_t a1)
{
  *a1 = &unk_287523F78;
  if (*(a1 + 8))
  {
    Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

{
  Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::removeAll(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(v1 + 80);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *v5;
          v7 = *(v1 + 96);
          if (v7)
          {
            result = v7(v5 + 12);
          }

          v8 = *(v1 + 104);
          if (v8)
          {
            result = v8(v5 + 2);
          }

          *v5 = *(v1 + 32);
          *(v1 + 32) = v5;
          v5 = v6;
        }

        while (v6);
        v4 = *(v1 + 80);
        v2 = *(v1 + 88);
      }

      *(v4 + 8 * i) = 0;
    }
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t HashProbeKEV<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>::upSize(uint64_t a1, int a2)
{
  v22 = 0;
  RoundUpToPowerOf2(a2, &v22);
  v20 = 0;
  v21 = 0;
  DgnPrimArray<int>::copyArraySlice(&v20, (a1 + 16), 0, *(a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(a1 + 16) = 0;
  }

  *(a1 + 24) = 0;
  v5 = v22;
  *(a1 + 4) = a2;
  *(a1 + 8) = v5;
  HashProbeKEV<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>::initBuckets(a1);
  v6 = v21;
  if (v21)
  {
    v7 = 0;
    v8 = v20;
    do
    {
      v9 = *(v8 + 4 * v7);
      if (v9 != -1)
      {
        v10 = HIBYTE(v9);
        if (HIBYTE(v9))
        {
          v11 = 0;
          v12 = *&v9 & 0xFFFFFFLL;
          v13 = (*(*(a1 + 32) + 352) + 4 * (*&v9 & 0xFFFFFFLL) + 2);
          do
          {
            HIDWORD(v14) = v11;
            LODWORD(v14) = v11;
            v15 = (v14 >> 19) + *(v13 - 1);
            v16 = *v13;
            v13 += 2;
            HIDWORD(v14) = v15;
            LODWORD(v14) = v15;
            v11 = (v14 >> 19) + v16;
            ++v12;
          }

          while (v12 < (v9 & 0xFFFFFF) + HIBYTE(v9));
          v10 = -1640531527 * v11;
        }

        LODWORD(v17) = v10 >> -v22;
        if (v22)
        {
          v17 = v17;
        }

        else
        {
          v17 = 0;
        }

        v18 = *(a1 + 16);
        while (*(v18 + 4 * v17) != -1)
        {
          if (v17 + 1 == *(a1 + 4))
          {
            v17 = 0;
          }

          else
          {
            v17 = (v17 + 1);
          }
        }

        *(v18 + 4 * v17) = v9;
        v6 = v21;
      }

      ++v7;
    }

    while (v7 < v6);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v20);
}

void sub_2626A2168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t Voc::equalKeys(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v3 = HIBYTE(a2);
  if (v3 == a3[2])
  {
    if (!v3)
    {
      return 1;
    }

    v4 = (*(a1 + 352) + 4 * (a2 & 0xFFFFFF) + 2);
    for (i = (*a3 + 2); *(v4 - 1) == *(i - 1) && *v4 == *i; i += 2)
    {
      v4 += 2;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t *TransducerGrammarMgr::startupTransducerGrammarMgr(uint64_t a1)
{
  result = MemChunkAlloc(8uLL, 0);
  *result = a1;
  TransducerGrammarMgr::smpTransducerGrammarMgr = result;
  return result;
}

void TransducerGrammarMgr::printSize(TransducerGrammarMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/trgrmmgr.cpp", 67);
  if (v20)
  {
    v12 = v19;
  }

  else
  {
    v12 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, a3, &byte_262899963, a3, &byte_262899963, v12);
  DgnString::~DgnString(&v19);
  if (a2 != -1)
  {
    xlprintf("%d ", v13, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v13, a3, &byte_262899963);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v14 = 4;
  }

  else
  {
    v14 = 8;
  }

  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/trgrmmgr.cpp", 69);
  if (v20)
  {
    v16 = v19;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v15, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v16, v14, v14, 0);
  DgnString::~DgnString(&v19);
  *a4 += v14;
  *a5 += v14;
  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/trgrmmgr.cpp", 71);
  if (v20)
  {
    v18 = v19;
  }

  else
  {
    v18 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, a3, &byte_262899963, (35 - a3), (35 - a3), v18, *a4, *a5, *a6);
  DgnString::~DgnString(&v19);
}

void sub_2626A23D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void OnePhonemeSyncNet::~OnePhonemeSyncNet(OnePhonemeSyncNet *this)
{
  *this = &unk_287526F30;
  HmmNet::deleteInPorts(this);

  BaseSyncNet::~BaseSyncNet(this, v2);
}

{
  OnePhonemeSyncNet::~OnePhonemeSyncNet(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t OnePhonemeSyncNet::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = BaseSyncNet::sizeObject(a1, a2);
  v5 = *(a1 + 64);
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = *(*(a1 + 56) + 8 * i);
      if (v7)
      {
        v4 += sizeObject(v7, v2);
        v5 = *(a1 + 64);
      }
    }
  }

  return v4;
}

double OnePhonemeSyncNet::addEpsilonNode(OnePhonemeSyncNet *this)
{
  v1 = MemChunkAlloc(0x18uLL, 0);
  *&result = 0x100000001;
  *v1 = 0x100000001;
  *(v1 + 2) = 1310740000;
  *(v1 + 12) = 0;
  *(v1 + 5) = -65536;
  return result;
}

uint64_t OnePhonemeSyncNet::scoreNetInternal(OnePhonemeSyncNet *this, int a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = a4;
  v8 = *(this + 26);
  v46 = *(this + 38);
  v47 = 0;
  if (v8)
  {
    v9 = *(this + 71) <= a3;
  }

  else
  {
    v9 = 0;
  }

  *(this + 282) = v9;
  *(this + 71) = 20000;
  v10 = BaseSyncNet::scoreIntSilNode1<false>(this, v9, *(this + 114), a3, a4, a5, a6, &v47);
  v11 = v10;
  if (v10 != 20000)
  {
    v12 = **(this + 9);
    v13 = *(v12 + 16);
    *(v12 + 8) = v10;
    *v12 = *v13;
    *(v12 + 4) = v13[1];
  }

  if (*(this + 282))
  {
    v15 = *(this + 26);
    v14 = *(this + 27);
    v16 = *(this + 56);
    v17 = *(this + 25);
    v18 = *(this + 1);
    v19 = -25056;
    goto LABEL_10;
  }

  if (*(this + 112))
  {
    v14 = *(this + 27);
    v16 = *(this + 56);
    v17 = *(this + 23);
    v15 = *(this + 24);
    v18 = *(this + 1);
    v19 = -25052;
LABEL_10:
    *(v18 + (v19 | 0x40000u)) += v16;
    v20 = v15 >> 1;
    v43 = v17;
    v44 = v17;
    do
    {
      v22 = *v14++;
      v21 = v22;
      if (v15)
      {
        v23 = *(*(v21 + v20) + v43);
      }

      else
      {
        v23 = v44;
      }

      v24 = v23(v21 + v20);
      if (v24 < *(this + 71))
      {
        *(this + 71) = v24;
      }

      --v16;
    }

    while (v16);
    *(this + 281) = 1;
    v25 = *(this + 20);
    if (*(this + 114) == 1)
    {
      if (v25 >= 1)
      {
        v26 = v25 - 1;
        do
        {
          v27 = *(*(this + 9) + 8 * v26);
          v28 = *(this + 1);
          LODWORD(v45) = 0;
          BestPredWithTrace = PredStruct::getBestPredWithTrace((v27 + 16), &v45, v28 + 302936, v6);
          v30 = *(BestPredWithTrace + 4);
          *(v27 + 8) = *(BestPredWithTrace + 4);
          *v27 = *BestPredWithTrace;
          *(v27 + 4) = v45;
          if (v11 >= v30)
          {
            v11 = v30;
          }

          v31 = v26-- + 1;
        }

        while (v31 > 1);
      }
    }

    else if (v25 >= 1)
    {
      v32 = v25 - 1;
      do
      {
        v33 = *(*(this + 9) + 8 * v32);
        v45 = 0;
        v34 = ExternalOutPort::seedOutPort<false>(v33, &v45);
        if (v34 < v11)
        {
          v11 = v34;
        }

        v35 = v32-- + 1;
      }

      while (v35 > 1);
    }

    goto LABEL_34;
  }

  if (*(this + 281) == 1)
  {
    *(this + 281) = 0;
    v36 = *(this + 20);
    if (v36 >= 2)
    {
      v37 = v36 + 1;
      v38 = (*(this + 9) + 8 * v36 - 8);
      do
      {
        v39 = *v38--;
        *(v39 + 8) = 20000;
        --v37;
      }

      while (v37 > 2);
    }
  }

LABEL_34:
  v40 = *(this + 1) + 299008;
  *(v40 + 3572) = *(*(this + 1) + 302580) + 1;
  *(v40 + 3592) += v47;
  *(this + 26) = v46;
  result = (*(*this + 328))(this);
  *(this + 55) = result;
  *(this + 54) = v11;
  v42 = *(this + 1);
  if (v11 < *(v42 + 246))
  {
    *(v42 + 246) = v11;
  }

  return result;
}

uint64_t BaseSyncNet::scoreIntSilNode1<false>(uint64_t a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7, _DWORD *a8)
{
  *(a1 + 113) = 0;
  v14 = (a1 + 113);
  v25 = -1;
  v15 = *(a1 + 152);
  if (!a2)
  {
    BestPredWithTrace = 0;
    goto LABEL_12;
  }

  v16 = a4;
  if (a3)
  {
    BestPredWithTrace = PredStruct::getBestPredWithTrace((a1 + 264), &v25, *(a1 + 8) + 302936, a4);
  }

  else
  {
    v18 = *(a1 + 272);
    if (v18 == 1)
    {
      BestPredWithTrace = *(a1 + 264);
    }

    else
    {
      v19 = *(a1 + 264);
      v20 = (v18 - 1);
      BestPredWithTrace = *(v19 + 8 * v20);
      v21 = *(BestPredWithTrace + 4);
      v22 = v19 - 8;
      do
      {
        if (v21 >= *(*(v22 + 8 * v20) + 8))
        {
          BestPredWithTrace = *(v22 + 8 * v20);
          v21 = *(BestPredWithTrace + 4);
        }

        --v20;
      }

      while (v20);
    }
  }

  if (*(BestPredWithTrace + 4) > v16)
  {
LABEL_12:
    if (!v15)
    {
      *(a1 + 248) = 1310740000;
      return 20000;
    }

    v23 = 1;
    if (a3)
    {
      goto LABEL_14;
    }

LABEL_17:
    Node::scoreNodeWithPattern(a1 + 240, BestPredWithTrace, v23, a5, a6, *(a1 + 8), 0, a7, v14, a1);
    goto LABEL_18;
  }

  v23 = (v15 != 0) | 0x20;
  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_14:
  Node::scoreNodeWithPatternNBest(a1 + 240, BestPredWithTrace, v25, v23, a5, a6, *(a1 + 8), 0, a7, v14, a1);
LABEL_18:
  ++*a8;
  return *(a1 + 248);
}

uint64_t ExternalOutPort::seedOutPort<false>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = (v2 - 1);
    v3 = *(v4 + 8 * v5);
    v6 = *(v3 + 8);
    v7 = v4 - 8;
    do
    {
      if (v6 >= *(*(v7 + 8 * v5) + 8))
      {
        v3 = *(v7 + 8 * v5);
        v6 = *(v3 + 8);
      }

      --v5;
    }

    while (v5);
  }

  v8 = *(v3 + 8);
  *(a1 + 8) = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 4) = *(v3 + 4);
  *a2 = v3;
  return v8;
}

uint64_t OnePhonemeSyncNet::thresholdNetInternal(OnePhonemeSyncNet *this, uint64_t a2, int a3)
{
  result = BaseSyncNet::scoreIntSilNode2(this, a2, a3);
  *(this + 26) = 1;
  if (*(this + 55) > a3)
  {
    *(this + 26) = 0;
    *(this + 55) = 20000;
  }

  return result;
}

uint64_t OnePhonemeSyncNet::calcNumActiveNodes(OnePhonemeSyncNet *this, int a2)
{
  v2 = *(this + 38);
  if (*(this + 71) <= a2)
  {
    v3 = *(this + 56);
    if (v3)
    {
      v5 = *(this + 27);
      do
      {
        v6 = *v5++;
        v2 = Sequence::calcNumActiveNodes(v6, a2) + v2;
        --v3;
      }

      while (v3);
    }
  }

  return v2;
}

uint64_t *OnePhonemeSyncNet::addNodesSequential(uint64_t a1, Sequence *a2, int a3)
{
  if (a3 == 2)
  {
    v5 = Sequence::newSequence(a2);
    v6 = *(a1 + 224);
    if (v6 == *(a1 + 228))
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1 + 216, 1, 1);
      v6 = *(a1 + 224);
    }

    *(*(a1 + 216) + 8 * v6) = v5;
    *(a1 + 224) = v6 + 1;
    return v5 + 2;
  }

  else if (a3)
  {
    return 0;
  }

  else
  {
    result = (a1 + 240);
    *(a1 + 280) = 1;
  }

  return result;
}

uint64_t BaseSyncNet::addCallBack(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *(result + 160) = a2;
  *(result + 168) = a3;
  *(result + 176) = a4;
  return result;
}

uint64_t *Sequence::newSequence(Sequence *this)
{
  v1 = this;
  result = MemChunkAlloc(24 * this + 16, 0);
  *result = 0;
  *(result + 4) = 0;
  *(result + 5) = v1;
  if (v1)
  {
    v3 = result + 3;
    v4 = v1;
    do
    {
      *(v3 - 1) = 0x100000001;
      *v3 = 1310740000;
      *(v3 + 4) = 0;
      *(v3 + 3) = -65536;
      v3 += 3;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t ustrcmp(_BYTE *a1, unsigned __int8 *a2)
{
  while (1)
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    ++a1;
    v3 = *a2++;
    v4 = (v2 - v3);
    if (v4)
    {
      return v4;
    }
  }

  return -*a2;
}

uint64_t ustrncmp(_BYTE *a1, unsigned __int8 *a2, int a3)
{
  while (1)
  {
    if (!a3)
    {
      return 0;
    }

    v3 = *a1;
    if (!*a1)
    {
      break;
    }

    ++a1;
    v4 = *a2++;
    --a3;
    v5 = (v3 - v4);
    if (v5)
    {
      return v5;
    }
  }

  return -*a2;
}

uint64_t Uns8StringLength(uint64_t result)
{
  v1 = result;
  LODWORD(result) = -1;
  do
  {
    result = (result + 1);
  }

  while (*(v1 + result));
  return result;
}

uint64_t Uns32StringLength(uint64_t result)
{
  v1 = result;
  LODWORD(result) = -1;
  do
  {
    result = (result + 1);
  }

  while (*(v1 + 4 * result));
  return result;
}

uint64_t isValidName(const char *a1)
{
  v1 = *a1;
  if ((v1 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v1 + 60) & 0x500) != 0)
  {
    v2 = *(a1 + 1);
    if (!a1[1])
    {
      return 1;
    }

    v3 = a1 + 2;
    while ((v2 & 0x80) == 0 && ((*(MEMORY[0x277D85DE0] + 4 * v2 + 60) & 0x500) != 0 || v2 == 95))
    {
      v4 = *v3++;
      v2 = v4;
      if (!v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t isValidRestrictedName(const char *a1)
{
  result = isValidName(a1);
  if (result)
  {
    return *a1 - 58 < 0xFFFFFFF6;
  }

  return result;
}

uint64_t SDColl_StringCompare(unint64_t a1, unint64_t a2, CharInfo *a3, CharInfo *a4)
{
  SdapiInsurance::SdapiInsurance(v15, "SDColl_StringCompare", 1, 1, 39);
  if (v15[97] == 1)
  {
    if (!a3)
    {
      v9 = throwBadStringPointer();
    }

    v16 = 0;
    if (!a4)
    {
      v9 = throwBadStringPointer();
    }

    v16 = 0;
    if (gbShowCalls == 1)
    {
      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, '%.500s', '%.500s')\n", v8, v9, "SDColl_StringCompare", a1, a2, a3, a4);
    }

    v10 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    v11 = *(ModelMgr::getVocOrThrow(v10, a1) + 16);
    if (a2 == -1)
    {
      LOWORD(a2) = -1;
    }

    else if (a2 == -2)
    {
      LOWORD(a2) = -2;
    }

    else
    {
      if (HIDWORD(a2) || (a2 & 0xFFFF0000) != 0)
      {
        v12 = throwBadSdapiArgument("SDhColl", a2);
      }

      if (a2 == 0xFFFF || !a2)
      {
        v12 = throwBadSdapiArgument("SDhColl", a2);
      }
    }

    v13 = CollMgr::collStrcmpUns8(v11, a2, a3, a4, v12);
  }

  else
  {
    v13 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v15);
  return v13;
}

void MrecInitModule_wavedata_frame(void)
{
  if (!gParDebugWaveCompression)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugWaveCompression", byte_262888354, byte_262888354, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugWaveCompression = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugWaveCompression);
  }
}

void WaveData::WaveData(WaveData *this, const WaveData *a2)
{
  BitArray::BitArray(this, a2);
  v4 = *(a2 + 12);
  *(v5 + 32) = 0;
  *(v5 + 24) = v4;
  *(v5 + 26) = 0;
  *(v5 + 28) = 0;
  *(v5 + 16) = *(a2 + 4);
  *(v5 + 20) = 0;
  *(v5 + 40) = 0;
  *(v5 + 52) = *(a2 + 26);
  DgnPrimFixArray<short>::copyArraySlice((v5 + 32), a2 + 4, 0, *(a2 + 10));
  *(this + 12) = *(a2 + 12);
  *(this + 7) = *(a2 + 7);
}

void sub_2626A30A8(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  BitArray::~BitArray(v1);
  _Unwind_Resume(a1);
}

void WaveData::~WaveData(WaveData *this)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 32);

  BitArray::~BitArray(this);
}

uint64_t *DgnPrimFixArray<short>::copyArraySlice(uint64_t *result, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  if (!a4 || *(result + 2))
  {
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    result = MemChunkAlloc(2 * a4, 0);
    *v7 = result;
    *(v7 + 8) = a4;
  }

  v8 = *a2;
  v9 = *v7;
  v10 = a4;
  do
  {
    *v9++ = *(v8 + 2 * a3++);
    --v10;
  }

  while (v10);
  return result;
}

unint64_t DgnPRandom::normalizedNext(DgnPRandom *this, unsigned int a2)
{
  v2 = *(this + 58);
  v3 = *(this + v2 + 1) + *(this + *(this + 57) + 1);
  *(this + v2 + 1) = v3;
  v4 = vadd_s32(*(this + 228), -1);
  *(this + 228) = vbsl_s8(vceqz_s32(v4), 0x3700000037, v4);
  return (v3 * a2) >> 32;
}

uint64_t DgnPRandom::initialize(uint64_t this, int a2)
{
  v2 = &sPRandTable;
  for (i = 224; i != 4; i -= 4)
  {
    v4 = *v2++;
    *(this + i) = v4;
  }

  *(this + 228) = 0x3700000018;
  if (a2)
  {
    *(this + 8) = a2;
  }

  *this = 1;
  v5 = a2 + 10001;
  v6 = 24;
  v7 = 55;
  do
  {
    *(this + 4 + 4 * v7) += *(this + 4 + 4 * v6);
    v8 = vadd_s32(*(this + 228), -1);
    v9 = vbsl_s8(vceqz_s32(v8), 0x3700000037, v8);
    *(this + 228) = v9;
    v7 = v9.i32[1];
    v6 = v9.i32[0];
    --v5;
  }

  while (v5 > 1);
  return this;
}

void IntruderSet::~IntruderSet(IntruderSet *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 80);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this);
}

uint64_t writeObject<DgnPrimArray<unsigned char>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<unsigned char>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void readObject<DgnPrimArray<unsigned char>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v16 = 0;
  readObject(a1, &v16, a3);
  v6 = v16;
  v7 = *(a2 + 12);
  if (v16 > v7)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, v16 - v7, 0);
  }

  v8 = *(a2 + 8);
  if (v8 <= v6)
  {
    if (v8 < v6)
    {
      v11 = v6 - v8;
      v12 = 16 * v8;
      do
      {
        v13 = (*a2 + v12);
        *v13 = 0;
        v13[1] = 0;
        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v9 = v8;
    v10 = 16 * v8 - 16;
    do
    {
      --v9;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a2 + v10);
      v10 -= 16;
    }

    while (v9 > v6);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      readObject<unsigned char>(a1, *a2 + v14, a3);
      ++v15;
      v14 += 16;
    }

    while (v15 < *(a2 + 8));
  }
}

uint64_t IntruderSet::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject<DgnPrimArray<unsigned char>>(a1, a2);
  v5 = sizeObject<unsigned short>(a1 + 16, a2) + v4;
  v6 = sizeObject<unsigned short>(a1 + 32, a2);
  v7 = v5 + v6 + sizeObject<unsigned int>(a1 + 48, a2);
  v8 = sizeObject<unsigned int>(a1 + 64, a2);
  v9 = v8 + sizeObject<unsigned short>(a1 + 80, a2);
  v10 = v7 + v9 + sizeObject<unsigned short>(a1 + 96, a2);
  return v10 + sizeObject<unsigned short>(a1 + 112, a2);
}

uint64_t sizeObject<DgnPrimArray<unsigned char>>(uint64_t a1, int a2)
{
  v2 = 0;
  v10[0] = 0;
  v10[1] = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 12;
  }

  else
  {
    v3 = 16;
  }

  if (a2 != 3)
  {
    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v2 = v3;
    }

    else
    {
      v6 = *(a1 + 8);
      v2 = v3;
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        v2 = v3;
        do
        {
          v2 += sizeObject<unsigned char>(*a1 + v8, a2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v2 += v3 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v10);
  return v2;
}

void IntruderMgr::~IntruderMgr(IntruderMgr *this)
{
  *(this + 1) = 0;
  DgnDelete<PelScorer>(*(this + 2));
  *(this + 2) = 0;
  *(this + 17) = 0;
  *(this + 44) = 0;
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 176);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 160);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 144);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 96);
  DgnIOwnArray<IntruderSet *>::releaseAll(this + 72);
  AdaptConfig::clear(this + 5);
  FileSpec::~FileSpec(this + 24);
}

void IntruderMgr::printSize(IntruderMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 388);
  if (v88)
  {
    v13 = v87;
  }

  else
  {
    v13 = &unk_262888448;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_262888448, a3, &unk_262888448, v13);
  DgnString::~DgnString(&v87);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_262888448);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 389);
  if (v88)
  {
    v18 = v87;
  }

  else
  {
    v18 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_262888448, (34 - a3), (34 - a3), v18, 2, 2, 0);
  DgnString::~DgnString(&v87);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 390);
  if (v88)
  {
    v20 = v87;
  }

  else
  {
    v20 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_262888448, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v87);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 8;
  }

  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 391);
  if (v88)
  {
    v23 = v87;
  }

  else
  {
    v23 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, (a3 + 1), &unk_262888448, (34 - a3), (34 - a3), v23, v21, v21, 0);
  DgnString::~DgnString(&v87);
  *a4 += v21;
  *a5 += v21;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v24 = 4;
  }

  else
  {
    v24 = 8;
  }

  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 392);
  if (v88)
  {
    v26 = v87;
  }

  else
  {
    v26 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, (a3 + 1), &unk_262888448, (34 - a3), (34 - a3), v26, v24, v24, 0);
  v86 = a3;
  DgnString::~DgnString(&v87);
  *a4 += v24;
  *a5 += v24;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v27 = 4;
  }

  else
  {
    v27 = 8;
  }

  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 393);
  if (v88)
  {
    v29 = v87;
  }

  else
  {
    v29 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, (a3 + 1), &unk_262888448, (34 - a3), (34 - a3), v29, v27, v27, 0);
  DgnString::~DgnString(&v87);
  *a4 += v27;
  *a5 += v27;
  v30 = sizeObject(this + 40, 0);
  v31 = sizeObject(this + 40, 1);
  v32 = sizeObject(this + 40, 3);
  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 394);
  if (v88)
  {
    v34 = v87;
  }

  else
  {
    v34 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v15, &unk_262888448, v16, v16, v34, v30, v31, v32);
  DgnString::~DgnString(&v87);
  *a4 += v30;
  *a5 += v31;
  *a6 += v32;
  v35 = FileSpec::sizeObject(this + 24, 0);
  v36 = FileSpec::sizeObject(this + 24, 1);
  v37 = FileSpec::sizeObject(this + 24, 3);
  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 395);
  if (v88)
  {
    v39 = v87;
  }

  else
  {
    v39 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v15, &unk_262888448, v16, v16, v39, v35, v36, v37);
  DgnString::~DgnString(&v87);
  *a4 += v35;
  *a5 += v36;
  *a6 += v37;
  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 397);
  if (v88)
  {
    v41 = v87;
  }

  else
  {
    v41 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v15, &unk_262888448, v16, v16, v41, 4, 4, 0);
  DgnString::~DgnString(&v87);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 399);
  if (v88)
  {
    v43 = v87;
  }

  else
  {
    v43 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v15, &unk_262888448, v16, v16, v43, 4, 4, 0);
  DgnString::~DgnString(&v87);
  *a4 += 4;
  *a5 += 4;
  v44 = sizeObject<IntruderSet *>(this + 72, 0);
  v45 = sizeObject<IntruderSet *>(this + 72, 1);
  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 401);
  if (v88)
  {
    v47 = v87;
  }

  else
  {
    v47 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v15, &unk_262888448, v16, v16, v47, v44, v45, 0);
  DgnString::~DgnString(&v87);
  *a4 += v44;
  *a5 += v45;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v48 = 12;
  }

  else
  {
    v48 = 16;
  }

  v49 = *(this + 26);
  v50 = *(this + 27);
  if (v50 >= v49)
  {
    v51 = 0;
    if (v49 > 0)
    {
      v48 += 8 * (v49 - 1) + 8;
    }

    v52 = v48 + 8 * (v50 - v49);
  }

  else
  {
    v51 = 8 * v49;
    v52 = v48;
  }

  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 403);
  if (v88)
  {
    v54 = v87;
  }

  else
  {
    v54 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v15, &unk_262888448, v16, v16, v54, v52, v48, v51);
  DgnString::~DgnString(&v87);
  *a4 += v52;
  *a5 += v48;
  *a6 += v51;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v55 = 12;
  }

  else
  {
    v55 = 16;
  }

  v56 = *(this + 30);
  v57 = *(this + 31);
  if (v57 >= v56)
  {
    v58 = 0;
    if (v56 > 0)
    {
      v55 += 8 * (v56 - 1) + 8;
    }

    v59 = v55 + 8 * (v57 - v56);
  }

  else
  {
    v58 = 8 * v56;
    v59 = v55;
  }

  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 405);
  if (v88)
  {
    v61 = v87;
  }

  else
  {
    v61 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v15, &unk_262888448, v16, v16, v61, v59, v55, v58);
  DgnString::~DgnString(&v87);
  *a4 += v59;
  *a5 += v55;
  *a6 += v58;
  v62 = sizeObject<DgnPrimArray<double>>(this + 128, 0);
  v63 = sizeObject<DgnPrimArray<double>>(this + 128, 1);
  v87 = 0;
  v88 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v87);
  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 407);
  if (v88)
  {
    v65 = v87;
  }

  else
  {
    v65 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v15, &unk_262888448, v16, v16, v65, v62, v63, 0);
  DgnString::~DgnString(&v87);
  *a4 += v62;
  *a5 += v63;
  v66 = sizeObject<DgnPrimArray<double>>(this + 144, 0);
  v67 = sizeObject<DgnPrimArray<double>>(this + 144, 1);
  v87 = 0;
  v88 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v87);
  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 409);
  if (v88)
  {
    v69 = v87;
  }

  else
  {
    v69 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v15, &unk_262888448, v16, v16, v69, v66, v67, 0);
  DgnString::~DgnString(&v87);
  *a4 += v66;
  *a5 += v67;
  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 411);
  if (v88)
  {
    v71 = v87;
  }

  else
  {
    v71 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v15, &unk_262888448, v16, v16, v71, 1, 1, 0);
  DgnString::~DgnString(&v87);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 413);
  if (v88)
  {
    v73 = v87;
  }

  else
  {
    v73 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v72, v15, &unk_262888448, v16, v16, v73, 1, 1, 0);
  DgnString::~DgnString(&v87);
  ++*a4;
  ++*a5;
  v74 = sizeObject<DgnPrimArray<unsigned int>>(this + 160, 0);
  v75 = sizeObject<DgnPrimArray<unsigned int>>(this + 160, 1);
  v87 = 0;
  v88 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v87);
  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 414);
  if (v88)
  {
    v77 = v87;
  }

  else
  {
    v77 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v15, &unk_262888448, v16, v16, v77, v74, v75, 0);
  DgnString::~DgnString(&v87);
  *a4 += v74;
  *a5 += v75;
  v78 = sizeObject<DgnPrimArray<unsigned int>>(this + 176, 0);
  v79 = sizeObject<DgnPrimArray<unsigned int>>(this + 176, 1);
  v87 = 0;
  v88 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v87);
  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 415);
  if (v88)
  {
    v81 = v87;
  }

  else
  {
    v81 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v15, &unk_262888448, v16, v16, v81, v78, v79, 0);
  DgnString::~DgnString(&v87);
  *a4 += v78;
  *a5 += v79;
  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 416);
  if (v88)
  {
    v83 = v87;
  }

  else
  {
    v83 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v82, v15, &unk_262888448, v16, v16, v83, 8, 8, 0);
  DgnString::~DgnString(&v87);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 417);
  if (v88)
  {
    v85 = v87;
  }

  else
  {
    v85 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v84, v86, &unk_262888448, (35 - v86), (35 - v86), v85, *a4, *a5, *a6);
  DgnString::~DgnString(&v87);
}

void sub_2626A4224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<IntruderSet *>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v4 = gShadowDiagnosticShowIdealizedObjectSizes;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = *(a1 + 8);
    if (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v8)
        {
          v9 = 4;
        }

        else
        {
          v9 = 8;
        }

        v10 = *(*a1 + 8 * v7);
        if (v10)
        {
          v9 += IntruderSet::sizeObject(v10, a2);
          v8 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v9;
        v11 = v7-- + 1;
      }

      while (v11 > 1);
    }

    if (!a2)
    {
      v12 = 2;
      if ((v4 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

uint64_t DgnArray<DgnPrimArray<unsigned char>>::copyArraySlice(uint64_t result, void *a2, unsigned int a3, int a4)
{
  v7 = result;
  v8 = *(result + 8);
  if (v8 >= 1)
  {
    v9 = 16 * v8 - 16;
    do
    {
      result = DgnPrimArray<unsigned int>::~DgnPrimArray(*v7 + v9);
      v9 -= 16;
    }

    while (v9 != -16);
  }

  *(v7 + 8) = 0;
  v10 = *(v7 + 12);
  if (a4 <= v10)
  {
    v11 = 0;
    v12 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v7, a4 - v10, 0);
    v11 = *(v7 + 8);
  }

  v13 = a4;
  v12 = v11;
  do
  {
    v14 = *a2 + 16 * a3;
    v15 = (*v7 + 16 * v12);
    *v15 = 0;
    v15[1] = 0;
    result = DgnPrimArray<unsigned char>::copyArraySlice(v15, v14, 0, *(v14 + 8));
    v12 = *(v7 + 8) + 1;
    *(v7 + 8) = v12;
    ++a3;
    --v13;
  }

  while (v13);
  if (v12 > a4)
  {
    if (v12 > a4)
    {
      v16 = v12;
      v17 = 16 * v12 - 16;
      do
      {
        --v16;
        result = DgnPrimArray<unsigned int>::~DgnPrimArray(*v7 + v17);
        v17 -= 16;
      }

      while (v16 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  if (v12 < a4)
  {
    v18 = a4 - v12;
    v19 = 16 * v12;
    do
    {
      v20 = (*v7 + v19);
      *v20 = 0;
      v20[1] = 0;
      v19 += 16;
      --v18;
    }

    while (v18);
  }

LABEL_17:
  *(v7 + 8) = a4;
  return result;
}

void *DgnIOwnArray<IntruderSet *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<IntruderSet>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

uint64_t TInputStream::verifyVersion(TInputStream *this, char *a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v11 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(this + 152, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (this + 160 != v11)
  {
    LOBYTE(__p[0]) = 0;
    v12 = (v11 + 56);
    if (v11[79] < 0)
    {
      v12 = *v12;
    }

    {
      operator new();
    }

    v13 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v12, __p);
    if (LOBYTE(__p[0]) == 1)
    {
      v14 = (this + 16);
      if (*(this + 39) < 0)
      {
        v14 = *v14;
      }

      tknPrintf("Error: %s : Expected %s in range [%llu,%llu]\n", v10, v14, a2, a3, a4);
      return 1;
    }

    a5 = v13;
  }

  if (a5 >= a3 && a5 <= a4)
  {
    return 0;
  }

  v16 = (this + 16);
  if (*(this + 39) < 0)
  {
    v16 = *v16;
  }

  tknPrintf("Error: %s : %llu : Expected %s in range [%llu,%llu]\n", v10, v16, a5, a2, a3, a4);
  return 1;
}

void sub_2626A46A4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  MEMORY[0x26672B1B0](v19, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t TInputStream::verifyHeader(uint64_t a1, char *__s, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + 40);
  v9 = strlen(__s);
  v11 = v9;
  v12 = *(a1 + 63);
  if (v12 < 0)
  {
    if (v9 != *(a1 + 48))
    {
      goto LABEL_8;
    }

    if (v9 == -1)
    {
      std::wstring::__throw_out_of_range[abi:ne200100]();
    }

    v13 = *v8;
  }

  else
  {
    v13 = v8;
    if (v11 != v12)
    {
LABEL_8:
      v14 = (a1 + 16);
      if (*(a1 + 39) < 0)
      {
        v14 = *v14;
        if ((v12 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }
      }

      else if ((v12 & 0x80000000) == 0)
      {
LABEL_10:
        tknPrintf("Error: File '%s' : '%s' : Bad file type, expected '%s'\n", v10, v14, v8, __s);
        return 1;
      }

      v8 = *v8;
      goto LABEL_10;
    }
  }

  if (memcmp(v13, __s, v11))
  {
    goto LABEL_8;
  }

  if (!a4)
  {
LABEL_36:
    v27 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v27 = *v27;
    }

    v28 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v28 = *v28;
    }

    tknPrintf("Error: File '%s' : '%s' : Unsupported file version prefix. Supported file versions: ", v10, v27, v28);
    if (a4)
    {
      v30 = (a3 + 24);
      v31 = 1;
      do
      {
        if (!*(v30 - 2))
        {
          if ((v31 & 1) == 0)
          {
            tknPrintString(", ");
          }

          if (**(v30 - 1))
          {
            tknPrintf("%s.", v29, *(v30 - 1));
          }

          tknPrintf("%llu", v29, *v30);
          v31 = 0;
        }

        v30 += 4;
        --a4;
      }

      while (a4);
    }

    tknPrintString("\n");
    return 1;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = *(a1 + 95);
  v34 = a3;
  v20 = (a3 + 24);
  v21 = a4;
  do
  {
    v22 = strlen(*(v20 - 1));
    v23 = v22;
    if ((v19 & 0x80) != 0)
    {
      if (v22 != *(a1 + 80))
      {
        goto LABEL_30;
      }

      if (v22 == -1)
      {
        std::wstring::__throw_out_of_range[abi:ne200100]();
      }

      v24 = *(a1 + 72);
    }

    else
    {
      v24 = (a1 + 72);
      if (v23 != v19)
      {
        goto LABEL_30;
      }
    }

    if (!memcmp(v24, *(v20 - 1), v23))
    {
      if (*(a1 + 96) == *v20)
      {
        v21 = v16;
      }

      if (v18)
      {
        v25 = v18;
      }

      else
      {
        v25 = *v20;
      }

      if (!*(v20 - 2))
      {
        v18 = v25;
        v17 = *v20;
      }
    }

LABEL_30:
    ++v16;
    v20 += 4;
  }

  while (a4 != v16);
  a3 = v34;
  if (!v18)
  {
    goto LABEL_36;
  }

  if (v21 == a4)
  {
    v26 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v26 = *v26;
    }

    tknPrintf("Error: %s : %llu : Expected file version in range [%llu,%llu]\n", v10, v26, *(a1 + 96), v18, v17);
    return 1;
  }

  v32 = *(v34 + 32 * v21 + 8);
  if (v32)
  {
    v33 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v33 = *v33;
    }

    tknPrintf("Error: %s : %llu : Deprecated in or around TextProc version %s. Expected file version in range [%llu,%llu]\n", v10, v33, *(a1 + 96), v32, v18, v17);
    return 1;
  }

  return 0;
}

uint64_t TInputStream::readHeader(std::string *this)
{
  v177 = *MEMORY[0x277D85DE8];
  if (this->__r_.__value_.__s.__data_[8] != 1)
  {
    return 0;
  }

  MEMORY[0x26672AEC0](&this[3], &byte_262899963);
  this[4].__r_.__value_.__r.__words[0] = 1;
  if (this[2].__r_.__value_.__s.__data_[15] < 0)
  {
    *this[1].__r_.__value_.__r.__words[2] = 0;
    this[2].__r_.__value_.__r.__words[0] = 0;
  }

  else
  {
    this[1].__r_.__value_.__s.__data_[16] = 0;
    this[2].__r_.__value_.__s.__data_[15] = 0;
  }

  std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::destroy(&this[6].__r_.__value_.__l.__size_, this[6].__r_.__value_.__r.__words[2]);
  this[6].__r_.__value_.__l.__size_ = &this[6].__r_.__value_.__r.__words[2];
  this[7].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__r.__words[2] = 0;
  std::istream::tellg();
  v3 = v164;
  __s1 = v175;
  v174 = xmmword_26286B6F0;
  v176 = 1;
  TInputStream::getNextLine(this, &__s1);
  if (*(&v174 + 1) >= v174)
  {
    if (v176)
    {
      __str[0].__r_.__value_.__s.__data_[0] = 0;
      TBuffer<char>::insert(&__s1, *(&v174 + 1), __str, 1uLL);
      --*(&v174 + 1);
    }

    else if (v174)
    {
      __s1[v174 - 1] = 0;
    }
  }

  else
  {
    __s1[*(&v174 + 1)] = 0;
  }

  v4 = __s1;
  if (!strncmp(__s1, "TKNHEADER_", 0xAuLL))
  {
    __str[0].__r_.__value_.__r.__words[0] = &__str[1];
    *&__str[0].__r_.__value_.__r.__words[1] = xmmword_26286B6F0;
    v165 = 1;
    while (1)
    {
      if (*(&v174 + 1) >= v174)
      {
        if (v176)
        {
          v170[0] = 0;
          TBuffer<char>::insert(&__s1, *(&v174 + 1), v170, 1uLL);
          --*(&v174 + 1);
        }

        else if (v174)
        {
          __s1[v174 - 1] = 0;
        }
      }

      else
      {
        __s1[*(&v174 + 1)] = 0;
      }

      NextToken = getNextToken(__s1, &__str[0].__r_.__value_.__l.__data_, " ");
      if (__str[0].__r_.__value_.__r.__words[2] >= __str[0].__r_.__value_.__l.__size_)
      {
        if (v165)
        {
          v170[0] = 0;
          TBuffer<char>::insert(&__str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__r.__words[2]--, v170, 1uLL);
        }

        else if (__str[0].__r_.__value_.__l.__size_)
        {
          *(__str[0].__r_.__value_.__r.__words[0] + __str[0].__r_.__value_.__l.__size_ - 1) = 0;
        }
      }

      else
      {
        *(__str[0].__r_.__value_.__r.__words[0] + __str[0].__r_.__value_.__r.__words[2]) = 0;
      }

      v6 = __str[0].__r_.__value_.__r.__words[0];
      if (!strcmp(__str[0].__r_.__value_.__l.__data_, "TKNHEADER_END"))
      {
        break;
      }

      if (!NextToken)
      {
        v59 = &this->__r_.__value_.__r.__words[2];
        if (this[1].__r_.__value_.__s.__data_[15] < 0)
        {
          v59 = *v59;
        }

        v60 = TBuffer<char>::c_str(&__s1);
        tknPrintf("Error: File '%s' : '%s' : Bad entry in file header\n", v61, v59, v60);
        std::string::basic_string[abi:ne200100]<0>(__s, &byte_262899963);
        *v170 = byte_287529580;
        if ((__s[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&v170[8], *__s, *&__s[8]);
        }

        else
        {
          *&v170[8] = *__s;
          v171[0] = *&__s[16];
        }

        *v170 = &unk_287527330;
        if (v171[0] >= 0)
        {
          v83 = &v170[8];
        }

        else
        {
          v83 = *&v170[8];
        }

        conditionalAssert(v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 239);
        *v170 = byte_287529580;
        if (SHIBYTE(v171[0]) < 0)
        {
          operator delete(*&v170[8]);
        }

        if ((__s[23] & 0x80000000) != 0)
        {
          operator delete(*__s);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v170, &byte_262899963);
        *exception = byte_287529580;
        v85 = (exception + 1);
        if ((v170[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v85, *v170, *&v170[8]);
        }

        else
        {
          v107 = *v170;
          exception[3] = *&v170[16];
          *&v85->__r_.__value_.__l.__data_ = v107;
        }

        *exception = &unk_287527330;
      }

      if (__str[0].__r_.__value_.__r.__words[2] >= __str[0].__r_.__value_.__l.__size_)
      {
        if (v165)
        {
          v170[0] = 0;
          TBuffer<char>::insert(&__str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__r.__words[2]--, v170, 1uLL);
        }

        else if (__str[0].__r_.__value_.__l.__size_)
        {
          v6->__r_.__value_.__s.__data_[__str[0].__r_.__value_.__l.__size_ - 1] = 0;
        }
      }

      else
      {
        v6->__r_.__value_.__s.__data_[__str[0].__r_.__value_.__r.__words[2]] = 0;
      }

      v8 = __str[0].__r_.__value_.__r.__words[0];
      if (!strcmp(__str[0].__r_.__value_.__l.__data_, "TKNHEADER_FILETYPE"))
      {
        getNextToken(NextToken, &__str[0].__r_.__value_.__l.__data_, " ");
        if (__str[0].__r_.__value_.__r.__words[2] >= __str[0].__r_.__value_.__l.__size_)
        {
          if (v165)
          {
            v170[0] = 0;
            TBuffer<char>::insert(&__str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__r.__words[2]--, v170, 1uLL);
          }

          else if (__str[0].__r_.__value_.__l.__size_)
          {
            *(__str[0].__r_.__value_.__r.__words[0] + __str[0].__r_.__value_.__l.__size_ - 1) = 0;
          }
        }

        else
        {
          *(__str[0].__r_.__value_.__r.__words[0] + __str[0].__r_.__value_.__r.__words[2]) = 0;
        }

        MEMORY[0x26672AEC0](&this[1].__r_.__value_.__r.__words[2], __str[0].__r_.__value_.__r.__words[0]);
      }

      else
      {
        if (__str[0].__r_.__value_.__r.__words[2] >= __str[0].__r_.__value_.__l.__size_)
        {
          if (v165)
          {
            v170[0] = 0;
            TBuffer<char>::insert(&__str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__r.__words[2]--, v170, 1uLL);
          }

          else if (__str[0].__r_.__value_.__l.__size_)
          {
            *(v8 + __str[0].__r_.__value_.__l.__size_ - 1) = 0;
          }
        }

        else
        {
          *(v8 + __str[0].__r_.__value_.__r.__words[2]) = 0;
        }

        if (strcmp(__str[0].__r_.__value_.__l.__data_, "TKNHEADER_FILEVERSION"))
        {
          v63 = &this->__r_.__value_.__r.__words[2];
          if (this[1].__r_.__value_.__s.__data_[15] < 0)
          {
            v63 = *v63;
          }

          v64 = TBuffer<char>::c_str(__str);
          tknPrintf("Error: File '%s' : '%s' : Bad entry in file header\n", v65, v63, v64);
          std::string::basic_string[abi:ne200100]<0>(__s, &byte_262899963);
          *v170 = byte_287529580;
          if ((__s[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v170[8], *__s, *&__s[8]);
          }

          else
          {
            *&v170[8] = *__s;
            v171[0] = *&__s[16];
          }

          *v170 = &unk_287527330;
          if (v171[0] >= 0)
          {
            v89 = &v170[8];
          }

          else
          {
            v89 = *&v170[8];
          }

          conditionalAssert(v89, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 255);
          *v170 = byte_287529580;
          if (SHIBYTE(v171[0]) < 0)
          {
            operator delete(*&v170[8]);
          }

          if ((__s[23] & 0x80000000) != 0)
          {
            operator delete(*__s);
          }

          v90 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v170, &byte_262899963);
          *v90 = byte_287529580;
          v91 = (v90 + 1);
          if ((v170[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v91, *v170, *&v170[8]);
          }

          else
          {
            v109 = *v170;
            v90[3] = *&v170[16];
            *&v91->__r_.__value_.__l.__data_ = v109;
          }

          *v90 = &unk_287527330;
        }

        this[4].__r_.__value_.__r.__words[0] = atol(NextToken);
      }

      if (!TInputStream::getNextLine(this, &__s1))
      {
        v10 = &this->__r_.__value_.__r.__words[2];
        if (this[1].__r_.__value_.__s.__data_[15] < 0)
        {
          v10 = *v10;
        }

        tknPrintf("Error: File '%s' : Missing TKNHEADER_END\n", v9, v10);
        std::string::basic_string[abi:ne200100]<0>(__s, &byte_262899963);
        *v170 = byte_287529580;
        if ((__s[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&v170[8], *__s, *&__s[8]);
        }

        else
        {
          *&v170[8] = *__s;
          v171[0] = *&__s[16];
        }

        *v170 = &unk_287527330;
        if (v171[0] >= 0)
        {
          v74 = &v170[8];
        }

        else
        {
          v74 = *&v170[8];
        }

        conditionalAssert(v74, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 263);
        *v170 = byte_287529580;
        if (SHIBYTE(v171[0]) < 0)
        {
          operator delete(*&v170[8]);
        }

        if ((__s[23] & 0x80000000) != 0)
        {
          operator delete(*__s);
        }

        v75 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v170, &byte_262899963);
        *v75 = byte_287529580;
        v76 = (v75 + 1);
        if ((v170[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v76, *v170, *&v170[8]);
        }

        else
        {
          v100 = *v170;
          v75[3] = *&v170[16];
          *&v76->__r_.__value_.__l.__data_ = v100;
        }

        *v75 = &unk_287527330;
      }
    }

    if (!NextToken)
    {
      v98 = &this->__r_.__value_.__r.__words[2];
      if (this[1].__r_.__value_.__s.__data_[15] < 0)
      {
        v98 = *v98;
      }

      tknPrintf("Error: '%s' : TKNHEADER_END does not take a parameter\n", v7, v98);
      std::string::basic_string[abi:ne200100]<0>(__s, &byte_262899963);
      *v170 = byte_287529580;
      if ((__s[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v170[8], *__s, *&__s[8]);
      }

      else
      {
        *&v170[8] = *__s;
        v171[0] = *&__s[16];
      }

      *v170 = &unk_287527330;
      if (v171[0] >= 0)
      {
        v118 = &v170[8];
      }

      else
      {
        v118 = *&v170[8];
      }

      conditionalAssert(v118, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 228);
      *v170 = byte_287529580;
      if (SHIBYTE(v171[0]) < 0)
      {
        operator delete(*&v170[8]);
      }

      if ((__s[23] & 0x80000000) != 0)
      {
        operator delete(*__s);
      }

      v119 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v170, &byte_262899963);
      *v119 = byte_287529580;
      v120 = (v119 + 1);
      if ((v170[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v120, *v170, *&v170[8]);
      }

      else
      {
        v140 = *v170;
        v119[3] = *&v170[16];
        *&v120->__r_.__value_.__l.__data_ = v140;
      }

      *v119 = &unk_287527330;
    }

    data = this[2].__r_.__value_.__s.__data_[15];
    if ((data & 0x8000000000000000) != 0)
    {
      data = this[2].__r_.__value_.__l.__data_;
    }

    if (!data)
    {
      v99 = &this->__r_.__value_.__r.__words[2];
      if (this[1].__r_.__value_.__s.__data_[15] < 0)
      {
        v99 = *v99;
      }

      tknPrintf("Error: File '%s' : Missing TKNHEADER_FILETYPE\n", v7, v99);
      std::string::basic_string[abi:ne200100]<0>(__s, &byte_262899963);
      *v170 = byte_287529580;
      if ((__s[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v170[8], *__s, *&__s[8]);
      }

      else
      {
        *&v170[8] = *__s;
        v171[0] = *&__s[16];
      }

      *v170 = &unk_287527330;
      if (v171[0] >= 0)
      {
        v121 = &v170[8];
      }

      else
      {
        v121 = *&v170[8];
      }

      conditionalAssert(v121, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 269);
      *v170 = byte_287529580;
      if (SHIBYTE(v171[0]) < 0)
      {
        operator delete(*&v170[8]);
      }

      if ((__s[23] & 0x80000000) != 0)
      {
        operator delete(*__s);
      }

      v122 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v170, &byte_262899963);
      *v122 = byte_287529580;
      v123 = (v122 + 1);
      if ((v170[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v123, *v170, *&v170[8]);
      }

      else
      {
        v141 = *v170;
        v122[3] = *&v170[16];
        *&v123->__r_.__value_.__l.__data_ = v141;
      }

      *v122 = &unk_287527330;
    }

    if (v165 == 1 && v6 != &__str[1] && v6)
    {
      v12 = v6;
      goto LABEL_263;
    }

LABEL_264:
    v2 = 1;
    goto LABEL_265;
  }

  if (*(&v174 + 1) >= v174)
  {
    if (v176)
    {
      __str[0].__r_.__value_.__s.__data_[0] = 0;
      TBuffer<char>::insert(&__s1, *(&v174 + 1), __str, 1uLL);
      --*(&v174 + 1);
    }

    else if (v174)
    {
      v4[v174 - 1] = 0;
    }
  }

  else
  {
    v4[*(&v174 + 1)] = 0;
  }

  if (!strcmp(__s1, "HEADER_BEGIN"))
  {
    *v170 = v171;
    *&v170[8] = xmmword_26286B6F0;
    v13 = 1;
    v172 = 1;
    *__s = v168;
    *&__s[8] = xmmword_26286B6F0;
    v169 = 1;
    v151 = *(this[7].__r_.__value_.__l.__size_ + 64);
    v154 = 0;
    v155 = 0;
    v156 = 0;
    while (1)
    {
      if (!TInputStream::getNextLine(this, &__s1))
      {
        v62 = &this->__r_.__value_.__r.__words[2];
        if (this[1].__r_.__value_.__s.__data_[15] < 0)
        {
          v62 = *v62;
        }

        tknPrintf("Error: File '%s' : Missing HEADER_END\n", v14, v62);
        std::string::basic_string[abi:ne200100]<0>(&v157, &byte_262899963);
        __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
        if (SHIBYTE(v157.__end_) < 0)
        {
          std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v157.__first_, v157.__begin_);
        }

        else
        {
          *&__str[0].__r_.__value_.__r.__words[1] = *&v157.__first_;
          __str[1].__r_.__value_.__r.__words[0] = v157.__end_;
        }

        __str[0].__r_.__value_.__r.__words[0] = &unk_287527330;
        if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
        {
          size = &__str[0].__r_.__value_.__s.__data_[8];
        }

        else
        {
          size = __str[0].__r_.__value_.__l.__size_;
        }

        conditionalAssert(size, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 384);
        __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
        if (__str[1].__r_.__value_.__s.__data_[7] < 0)
        {
          operator delete(__str[0].__r_.__value_.__l.__size_);
        }

        if (SHIBYTE(v157.__end_) < 0)
        {
          operator delete(v157.__first_);
        }

        v78 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
        *v78 = byte_287529580;
        v79 = (v78 + 1);
        if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v79, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
        }

        else
        {
          v106 = *&__str[0].__r_.__value_.__l.__data_;
          v78[3] = *(&__str[0].__r_.__value_.__l + 2);
          *&v79->__r_.__value_.__l.__data_ = v106;
        }

        *v78 = &unk_287527330;
      }

      if (*(&v174 + 1) >= v174)
      {
        if (v176)
        {
          LOBYTE(v157.__first_) = 0;
          TBuffer<char>::insert(&__s1, *(&v174 + 1), &v157, 1uLL);
          --*(&v174 + 1);
        }

        else if (v174)
        {
          __s1[v174 - 1] = 0;
        }
      }

      else
      {
        __s1[*(&v174 + 1)] = 0;
      }

      v15 = getNextToken(__s1, v170, " ");
      v16 = getNextToken(v15, __s, " ");
      if (*&v170[16] >= *&v170[8])
      {
        if (v172)
        {
          LOBYTE(v157.__first_) = 0;
          TBuffer<char>::insert(v170, *&v170[16], &v157, 1uLL);
          --*&v170[16];
        }

        else if (*&v170[8])
        {
          *(*v170 + *&v170[8] - 1) = 0;
        }
      }

      else
      {
        *(*v170 + *&v170[16]) = 0;
      }

      v17 = *v170;
      if (!strcmp(*v170, "HEADER_END"))
      {
        if (v16)
        {
          v101 = &this->__r_.__value_.__r.__words[2];
          if (this[1].__r_.__value_.__s.__data_[15] < 0)
          {
            v101 = *v101;
          }

          tknPrintf("Error: '%s' : HEADER_END does not take a parameter\n", v18, v101);
          std::string::basic_string[abi:ne200100]<0>(&v157, &byte_262899963);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (SHIBYTE(v157.__end_) < 0)
          {
            std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v157.__first_, v157.__begin_);
          }

          else
          {
            *&__str[0].__r_.__value_.__r.__words[1] = *&v157.__first_;
            __str[1].__r_.__value_.__r.__words[0] = v157.__end_;
          }

          __str[0].__r_.__value_.__r.__words[0] = &unk_287527330;
          if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
          {
            v124 = &__str[0].__r_.__value_.__s.__data_[8];
          }

          else
          {
            v124 = __str[0].__r_.__value_.__l.__size_;
          }

          conditionalAssert(v124, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 297);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (__str[1].__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(v157.__end_) < 0)
          {
            operator delete(v157.__first_);
          }

          v125 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
          *v125 = byte_287529580;
          v126 = (v125 + 1);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v126, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
          }

          else
          {
            v142 = *&__str[0].__r_.__value_.__l.__data_;
            v125[3] = *(&__str[0].__r_.__value_.__l + 2);
            *&v126->__r_.__value_.__l.__data_ = v142;
          }

          *v125 = &unk_287527330;
        }

        v50 = this[2].__r_.__value_.__s.__data_[15];
        if ((v50 & 0x8000000000000000) != 0)
        {
          v50 = this[2].__r_.__value_.__l.__data_;
        }

        if (!v50)
        {
          v102 = &this->__r_.__value_.__r.__words[2];
          if (this[1].__r_.__value_.__s.__data_[15] < 0)
          {
            v102 = *v102;
          }

          tknPrintf("Error: File '%s' : Missing FILE_TYPE\n", v18, v102);
          std::string::basic_string[abi:ne200100]<0>(&v157, &byte_262899963);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (SHIBYTE(v157.__end_) < 0)
          {
            std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v157.__first_, v157.__begin_);
          }

          else
          {
            *&__str[0].__r_.__value_.__r.__words[1] = *&v157.__first_;
            __str[1].__r_.__value_.__r.__words[0] = v157.__end_;
          }

          __str[0].__r_.__value_.__r.__words[0] = &unk_287527330;
          if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
          {
            v127 = &__str[0].__r_.__value_.__s.__data_[8];
          }

          else
          {
            v127 = __str[0].__r_.__value_.__l.__size_;
          }

          conditionalAssert(v127, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 390);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (__str[1].__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(v157.__end_) < 0)
          {
            operator delete(v157.__first_);
          }

          v128 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
          *v128 = byte_287529580;
          v129 = (v128 + 1);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v129, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
          }

          else
          {
            v143 = *&__str[0].__r_.__value_.__l.__data_;
            v128[3] = *(&__str[0].__r_.__value_.__l + 2);
            *&v129->__r_.__value_.__l.__data_ = v143;
          }

          *v128 = &unk_287527330;
        }

        if (*(this[7].__r_.__value_.__l.__size_ + 64) != v151)
        {
          v103 = &this->__r_.__value_.__r.__words[2];
          if (this[1].__r_.__value_.__s.__data_[15] < 0)
          {
            v103 = *v103;
          }

          tknPrintf("Error: File '%s' : File codepage does not match the voc codepage\n", v18, v103);
          std::string::basic_string[abi:ne200100]<0>(&v157, &byte_262899963);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (SHIBYTE(v157.__end_) < 0)
          {
            std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v157.__first_, v157.__begin_);
          }

          else
          {
            *&__str[0].__r_.__value_.__r.__words[1] = *&v157.__first_;
            __str[1].__r_.__value_.__r.__words[0] = v157.__end_;
          }

          __str[0].__r_.__value_.__r.__words[0] = &unk_287526298;
          if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
          {
            v130 = &__str[0].__r_.__value_.__s.__data_[8];
          }

          else
          {
            v130 = __str[0].__r_.__value_.__l.__size_;
          }

          conditionalAssert(v130, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 397);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (__str[1].__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(v157.__end_) < 0)
          {
            operator delete(v157.__first_);
          }

          v131 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
          *v131 = byte_287529580;
          v132 = (v131 + 1);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v132, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
          }

          else
          {
            v144 = *&__str[0].__r_.__value_.__l.__data_;
            v131[3] = *(&__str[0].__r_.__value_.__l + 2);
            *&v132->__r_.__value_.__l.__data_ = v144;
          }

          *v131 = &unk_287526298;
        }

        __str[0].__r_.__value_.__r.__words[0] = &__str[1];
        *&__str[0].__r_.__value_.__r.__words[1] = xmmword_26286B6F0;
        v166 = 1;
        if (v155 == v154)
        {
          goto LABEL_254;
        }

        v51 = 0;
        v52 = 0;
        do
        {
          TBuffer<wchar_t>::resize(__str, 0);
          p_second = &v154[v51].second;
          if (SHIBYTE(v154[v51].second.__r_.__value_.__r.__words[2]) < 0)
          {
            p_second = *p_second;
          }

          TLocaleInfo::multiByteToUnicode(this[7].__r_.__value_.__l.__size_, p_second, __str);
          v54 = &v154[v51];
          if (SHIBYTE(v154[v51].first.__r_.__value_.__r.__words[2]) < 0)
          {
            v54 = *v54;
          }

          if (TInputStream::isParameter(this, v54))
          {
            v72 = &this->__r_.__value_.__r.__words[2];
            if (this[1].__r_.__value_.__s.__data_[15] < 0)
            {
              v72 = *v72;
            }

            v73 = &v154[v51];
            if (SHIBYTE(v154[v51].first.__r_.__value_.__r.__words[2]) < 0)
            {
              v73 = *v73;
            }

            tknPrintf("Error: %s : Duplicate setting for %s parameter\n", v55, v72, v73);
            std::string::basic_string[abi:ne200100]<0>(v152, &byte_262899963);
            v157.__first_ = byte_287529580;
            if (SHIBYTE(v153) < 0)
            {
              std::string::__init_copy_ctor_external(&v157.__begin_, v152[0], v152[1]);
            }

            else
            {
              *&v157.__begin_ = *v152;
              v157.__end_cap_.__value_ = v153;
            }

            v157.__first_ = &unk_287528000;
            if (SHIBYTE(v157.__end_cap_.__value_) >= 0)
            {
              p_begin = &v157.__begin_;
            }

            else
            {
              p_begin = v157.__begin_;
            }

            conditionalAssert(p_begin, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 414);
            v157.__first_ = byte_287529580;
            if (SHIBYTE(v157.__end_cap_.__value_) < 0)
            {
              operator delete(v157.__begin_);
            }

            if (SHIBYTE(v153) < 0)
            {
              operator delete(v152[0]);
            }

            v87 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(&v157, &byte_262899963);
            *v87 = byte_287529580;
            v88 = (v87 + 1);
            if (SHIBYTE(v157.__end_) < 0)
            {
              std::string::__init_copy_ctor_external(v88, v157.__first_, v157.__begin_);
            }

            else
            {
              v108 = *&v157.__first_;
              v87[3] = v157.__end_;
              *&v88->__r_.__value_.__l.__data_ = v108;
            }

            *v87 = &unk_287528000;
          }

          if (__str[0].__r_.__value_.__r.__words[2] >= __str[0].__r_.__value_.__l.__size_)
          {
            if (v166)
            {
              LODWORD(v157.__first_) = 0;
              TBuffer<wchar_t>::insert(&__str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__r.__words[2], &v157, 1uLL);
              v56 = __str[0].__r_.__value_.__r.__words[0];
              --__str[0].__r_.__value_.__r.__words[2];
            }

            else
            {
              v56 = __str[0].__r_.__value_.__r.__words[0];
              if (__str[0].__r_.__value_.__l.__size_)
              {
                *(__str[0].__r_.__value_.__r.__words[0] + 4 * __str[0].__r_.__value_.__l.__size_ - 4) = 0;
              }
            }
          }

          else
          {
            v56 = __str[0].__r_.__value_.__r.__words[0];
            *(__str[0].__r_.__value_.__r.__words[0] + 4 * __str[0].__r_.__value_.__r.__words[2]) = 0;
          }

          v157.__first_ = &v154[v51];
          v57 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&this[6].__r_.__value_.__l.__size_, &v154[v51].first.__r_.__value_.__l.__data_, &std::piecewise_construct, &v157, v152);
          MEMORY[0x26672AF30](v57 + 7, v56);
          ++v52;
          ++v51;
        }

        while (v52 < 0xAAAAAAAAAAAAAAABLL * ((v155 - v154) >> 4));
        if (v166)
        {
LABEL_254:
          if (__str[0].__r_.__value_.__l.__data_ != &__str[1] && __str[0].__r_.__value_.__r.__words[0])
          {
            MEMORY[0x26672B1B0]();
          }
        }

        __str[0].__r_.__value_.__r.__words[0] = &v154;
        std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](__str);
        if (v169 == 1 && *__s != v168 && *__s)
        {
          MEMORY[0x26672B1B0]();
        }

        if (v172 == 1)
        {
          v12 = *v170;
          if (*v170 != v171)
          {
            if (*v170)
            {
LABEL_263:
              MEMORY[0x26672B1B0](v12, 0x1000C4077774924);
            }
          }
        }

        goto LABEL_264;
      }

      if (!v16)
      {
        v66 = &this->__r_.__value_.__r.__words[2];
        if (this[1].__r_.__value_.__s.__data_[15] < 0)
        {
          v66 = *v66;
        }

        v67 = TBuffer<char>::c_str(&__s1);
        tknPrintf("Error: File '%s' : %s : Syntax error in header\n", v68, v66, v67);
        std::string::basic_string[abi:ne200100]<0>(&v157, &byte_262899963);
        __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
        if (SHIBYTE(v157.__end_) < 0)
        {
          std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v157.__first_, v157.__begin_);
        }

        else
        {
          *&__str[0].__r_.__value_.__r.__words[1] = *&v157.__first_;
          __str[1].__r_.__value_.__r.__words[0] = v157.__end_;
        }

        __str[0].__r_.__value_.__r.__words[0] = &unk_287527330;
        if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
        {
          v92 = &__str[0].__r_.__value_.__s.__data_[8];
        }

        else
        {
          v92 = __str[0].__r_.__value_.__l.__size_;
        }

        conditionalAssert(v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 308);
        __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
        if (__str[1].__r_.__value_.__s.__data_[7] < 0)
        {
          operator delete(__str[0].__r_.__value_.__l.__size_);
        }

        if (SHIBYTE(v157.__end_) < 0)
        {
          operator delete(v157.__first_);
        }

        v93 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
        *v93 = byte_287529580;
        v94 = (v93 + 1);
        if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v94, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
        }

        else
        {
          v110 = *&__str[0].__r_.__value_.__l.__data_;
          v93[3] = *(&__str[0].__r_.__value_.__l + 2);
          *&v94->__r_.__value_.__l.__data_ = v110;
        }

        *v93 = &unk_287527330;
      }

      if (*&v170[16] >= *&v170[8])
      {
        if (v172)
        {
          LOBYTE(v157.__first_) = 0;
          TBuffer<char>::insert(v170, *&v170[16], &v157, 1uLL);
          --*&v170[16];
        }

        else if (*&v170[8])
        {
          *(v17 + *&v170[8] - 1) = 0;
        }
      }

      else
      {
        *(v17 + *&v170[16]) = 0;
      }

      v19 = *v170;
      if (!strcmp(*v170, "VERSION"))
      {
        break;
      }

      if (*&v170[16] >= *&v170[8])
      {
        if (v172)
        {
          LOBYTE(v157.__first_) = 0;
          TBuffer<char>::insert(v170, *&v170[16], &v157, 1uLL);
          --*&v170[16];
        }

        else if (*&v170[8])
        {
          *(v19 + *&v170[8] - 1) = 0;
        }
      }

      else
      {
        *(v19 + *&v170[16]) = 0;
      }

      v21 = *v170;
      if (!strcmp(*v170, "FILE_TYPE"))
      {
        if (*&__s[16] >= *&__s[8])
        {
          if (v169)
          {
            LOBYTE(v157.__first_) = 0;
            TBuffer<char>::insert(__s, *&__s[16], &v157, 1uLL);
            --*&__s[16];
          }

          else if (*&__s[8])
          {
            *(*__s + *&__s[8] - 1) = 0;
          }
        }

        else
        {
          *(*__s + *&__s[16]) = 0;
        }

        MEMORY[0x26672AEC0](&this[1].__r_.__value_.__r.__words[2], *__s);
        goto LABEL_194;
      }

      if (*&v170[16] >= *&v170[8])
      {
        if (v172)
        {
          LOBYTE(v157.__first_) = 0;
          TBuffer<char>::insert(v170, *&v170[16], &v157, 1uLL);
          --*&v170[16];
        }

        else if (*&v170[8])
        {
          *(v21 + *&v170[8] - 1) = 0;
        }
      }

      else
      {
        *(v21 + *&v170[16]) = 0;
      }

      v22 = *v170;
      if (!strcmp(*v170, "FILE_VERSION"))
      {
        if (*&__s[16] >= *&__s[8])
        {
          if (v169)
          {
            LOBYTE(v157.__first_) = 0;
            TBuffer<char>::insert(__s, *&__s[16], &v157, 1uLL);
            --*&__s[16];
          }

          else if (*&__s[8])
          {
            *(*__s + *&__s[8] - 1) = 0;
          }
        }

        else
        {
          *(*__s + *&__s[16]) = 0;
        }

        v38 = *__s;
        v39 = strrchr(*__s, 46);
        if (v39)
        {
          v40 = v39;
          if (*&__s[16] >= *&__s[8])
          {
            if (v169)
            {
              LOBYTE(v157.__first_) = 0;
              TBuffer<char>::insert(__s, *&__s[16], &v157, 1uLL);
              --*&__s[16];
            }

            else if (*&__s[8])
            {
              *(v38 + *&__s[8] - 1) = 0;
            }
          }

          else
          {
            *(v38 + *&__s[16]) = 0;
          }

          std::string::basic_string[abi:ne200100]<0>(__str, *__s);
          if (*&__s[16] >= *&__s[8])
          {
            if (v169)
            {
              LOBYTE(v157.__first_) = 0;
              TBuffer<char>::insert(__s, *&__s[16], &v157, 1uLL);
              --*&__s[16];
            }

            else if (*&__s[8])
            {
              *(*__s + *&__s[8] - 1) = 0;
            }
          }

          else
          {
            *(*__s + *&__s[16]) = 0;
          }

          std::string::assign(this + 3, __str, 0, &v40[-*__s]);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }

          v41 = v40 + 1;
        }

        else
        {
          if (*&__s[16] >= *&__s[8])
          {
            if (v169)
            {
              LOBYTE(v157.__first_) = 0;
              TBuffer<char>::insert(__s, *&__s[16], &v157, 1uLL);
              --*&__s[16];
            }

            else if (*&__s[8])
            {
              *(v38 + *&__s[8] - 1) = 0;
            }
          }

          else
          {
            *(v38 + *&__s[16]) = 0;
          }

          v41 = *__s;
        }

        this[4].__r_.__value_.__r.__words[0] = atol(v41);
        goto LABEL_194;
      }

      if (*&v170[16] >= *&v170[8])
      {
        if (v172)
        {
          LOBYTE(v157.__first_) = 0;
          TBuffer<char>::insert(v170, *&v170[16], &v157, 1uLL);
          --*&v170[16];
        }

        else if (*&v170[8])
        {
          *(v22 + *&v170[8] - 1) = 0;
        }
      }

      else
      {
        *(v22 + *&v170[16]) = 0;
      }

      v23 = *v170;
      if (!strcmp(*v170, "PARAMETER"))
      {
        v24 = getNextToken(v15 + 1, v170, "=");
        if (!v24)
        {
          v69 = &this->__r_.__value_.__r.__words[2];
          if (this[1].__r_.__value_.__s.__data_[15] < 0)
          {
            v69 = *v69;
          }

          v70 = TBuffer<char>::c_str(&__s1);
          tknPrintf("Error: File '%s' : %s : PARAMETER must contain 'name=value'\n", v71, v69, v70);
          std::string::basic_string[abi:ne200100]<0>(&v157, &byte_262899963);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (SHIBYTE(v157.__end_) < 0)
          {
            std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v157.__first_, v157.__begin_);
          }

          else
          {
            *&__str[0].__r_.__value_.__r.__words[1] = *&v157.__first_;
            __str[1].__r_.__value_.__r.__words[0] = v157.__end_;
          }

          __str[0].__r_.__value_.__r.__words[0] = &unk_287527330;
          if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
          {
            v95 = &__str[0].__r_.__value_.__s.__data_[8];
          }

          else
          {
            v95 = __str[0].__r_.__value_.__l.__size_;
          }

          conditionalAssert(v95, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 353);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (__str[1].__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(v157.__end_) < 0)
          {
            operator delete(v157.__first_);
          }

          v96 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
          *v96 = byte_287529580;
          v97 = (v96 + 1);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v97, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
          }

          else
          {
            v111 = *&__str[0].__r_.__value_.__l.__data_;
            v96[3] = *(&__str[0].__r_.__value_.__l + 2);
            *&v97->__r_.__value_.__l.__data_ = v111;
          }

          *v96 = &unk_287527330;
        }

        if (*&v170[16] >= *&v170[8])
        {
          if (v172)
          {
            LOBYTE(v157.__first_) = 0;
            TBuffer<char>::insert(v170, *&v170[16], &v157, 1uLL);
            --*&v170[16];
          }

          else if (*&v170[8])
          {
            *(*v170 + *&v170[8] - 1) = 0;
          }
        }

        else
        {
          *(*v170 + *&v170[16]) = 0;
        }

        v152[0] = *v170;
        v152[1] = v24 + 1;
        std::pair<std::string,std::string>::pair[abi:ne200100]<char const*,char const*,0>(__str, v152);
        v25 = v155;
        if (v155 >= v156)
        {
          v28 = 0xAAAAAAAAAAAAAAABLL * ((v155 - v154) >> 4);
          v29 = v28 + 1;
          if (v28 + 1 > 0x555555555555555)
          {
            std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v156 - v154) >> 4) > v29)
          {
            v29 = 0x5555555555555556 * ((v156 - v154) >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v156 - v154) >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v30 = 0x555555555555555;
          }

          else
          {
            v30 = v29;
          }

          v157.__end_cap_.__value_ = &v154;
          if (v30)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(&v154, v30);
          }

          v31 = 16 * ((v155 - v154) >> 4);
          v32 = *&__str[0].__r_.__value_.__l.__data_;
          *(v31 + 16) = *(&__str[0].__r_.__value_.__l + 2);
          *v31 = v32;
          memset(__str, 0, 24);
          v33 = *&__str[1].__r_.__value_.__l.__data_;
          *(v31 + 40) = *(&__str[1].__r_.__value_.__l + 2);
          *(v31 + 24) = v33;
          memset(&__str[1], 0, sizeof(std::string));
          v34 = (48 * v28 - (v155 - v154));
          memcpy(v34, v154, v155 - v154);
          v35 = v154;
          v36 = v156;
          v154 = v34;
          v155 = (48 * v28 + 48);
          v156 = 0;
          v157.__first_ = v35;
          v157.__end_ = v35;
          v157.__end_cap_.__value_ = v36;
          v157.__begin_ = v35;
          std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v157);
          v155 = (48 * v28 + 48);
          if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[1].__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v26 = *&__str[0].__r_.__value_.__l.__data_;
          *(v155 + 2) = *(&__str[0].__r_.__value_.__l + 2);
          *v25 = v26;
          memset(__str, 0, 24);
          v27 = __str[1].__r_.__value_.__r.__words[2];
          *(v25 + 24) = *&__str[1].__r_.__value_.__l.__data_;
          *(v25 + 5) = v27;
          memset(&__str[1], 0, sizeof(std::string));
          v155 = v25 + 48;
        }

        if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[0].__r_.__value_.__l.__data_);
        }

        v13 = 0;
      }

      else
      {
        if (*&v170[16] >= *&v170[8])
        {
          if (v172)
          {
            LOBYTE(v157.__first_) = 0;
            TBuffer<char>::insert(v170, *&v170[16], &v157, 1uLL);
            --*&v170[16];
          }

          else if (*&v170[8])
          {
            *(v23 + *&v170[8] - 1) = 0;
          }
        }

        else
        {
          *(v23 + *&v170[16]) = 0;
        }

        if (!strcmp(*v170, "CODEPAGE"))
        {
          if (*&__s[16] >= *&__s[8])
          {
            if (v169)
            {
              LOBYTE(v157.__first_) = 0;
              TBuffer<char>::insert(__s, *&__s[16], &v157, 1uLL);
              --*&__s[16];
            }

            else if (*&__s[8])
            {
              *(*__s + *&__s[8] - 1) = 0;
            }
          }

          else
          {
            *(*__s + *&__s[16]) = 0;
          }

          std::string::basic_string[abi:ne200100]<0>(__str, *__s);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            if (__str[0].__r_.__value_.__l.__size_ != 4)
            {
              if (__str[0].__r_.__value_.__l.__size_ == 7)
              {
                v44 = __str[0].__r_.__value_.__r.__words[0];
                if (*__str[0].__r_.__value_.__l.__data_ != 1769234764 || *(__str[0].__r_.__value_.__r.__words[0] + 3) != 1227714153)
                {
                  goto LABEL_414;
                }

LABEL_224:
                v48 = 1;
              }

              else
              {
                v44 = __str[0].__r_.__value_.__r.__words[0];
                if (__str[0].__r_.__value_.__l.__size_ != 5)
                {
                  goto LABEL_414;
                }

                if (*__str[0].__r_.__value_.__l.__data_ != 759583829 || *(__str[0].__r_.__value_.__r.__words[0] + 4) != 56)
                {
                  goto LABEL_414;
                }

                v48 = 2;
              }

              v151 = v48;
              operator delete(__str[0].__r_.__value_.__l.__data_);
              goto LABEL_194;
            }

            v44 = __str[0].__r_.__value_.__r.__words[0];
            if (*__str[0].__r_.__value_.__l.__data_ != 842347057)
            {
              goto LABEL_414;
            }

            goto LABEL_224;
          }

          if (HIBYTE(__str[0].__r_.__value_.__r.__words[2]) != 4)
          {
            if (HIBYTE(__str[0].__r_.__value_.__r.__words[2]) == 5)
            {
              if (LODWORD(__str[0].__r_.__value_.__l.__data_) != 759583829 || __str[0].__r_.__value_.__s.__data_[4] != 56)
              {
LABEL_413:
                v44 = __str;
LABEL_414:
                tknPrintf("Error: '%s' : Invalid codepage.\n", v42, v44);
                if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str[0].__r_.__value_.__l.__data_);
                }

                v112 = &this->__r_.__value_.__r.__words[2];
                if (this[1].__r_.__value_.__s.__data_[15] < 0)
                {
                  v112 = *v112;
                }

                v113 = TBuffer<char>::c_str(__s);
                tknPrintf("Error: File '%s' : '%s' : Invalid codepage\n", v114, v112, v113);
                std::string::basic_string[abi:ne200100]<0>(&v157, &byte_262899963);
                __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
                if (SHIBYTE(v157.__end_) < 0)
                {
                  std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v157.__first_, v157.__begin_);
                }

                else
                {
                  *&__str[0].__r_.__value_.__r.__words[1] = *&v157.__first_;
                  __str[1].__r_.__value_.__r.__words[0] = v157.__end_;
                }

                __str[0].__r_.__value_.__r.__words[0] = &unk_287526298;
                if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
                {
                  v147 = &__str[0].__r_.__value_.__s.__data_[8];
                }

                else
                {
                  v147 = __str[0].__r_.__value_.__l.__size_;
                }

                conditionalAssert(v147, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 367);
                __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
                if (__str[1].__r_.__value_.__s.__data_[7] < 0)
                {
                  operator delete(__str[0].__r_.__value_.__l.__size_);
                }

                if (SHIBYTE(v157.__end_) < 0)
                {
                  operator delete(v157.__first_);
                }

                v148 = __cxa_allocate_exception(0x20uLL);
                std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
                *v148 = byte_287529580;
                v149 = (v148 + 1);
                if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(v149, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
                }

                else
                {
                  v150 = *&__str[0].__r_.__value_.__l.__data_;
                  v148[3] = *(&__str[0].__r_.__value_.__l + 2);
                  *&v149->__r_.__value_.__l.__data_ = v150;
                }

                *v148 = &unk_287526298;
              }

              v47 = 2;
            }

            else
            {
              if (HIBYTE(__str[0].__r_.__value_.__r.__words[2]) != 7)
              {
                goto LABEL_413;
              }

              if (LODWORD(__str[0].__r_.__value_.__l.__data_) != 1769234764 || *(__str[0].__r_.__value_.__r.__words + 3) != 1227714153)
              {
                goto LABEL_413;
              }

LABEL_221:
              v47 = 1;
            }

            v151 = v47;
            goto LABEL_194;
          }

          if (LODWORD(__str[0].__r_.__value_.__l.__data_) != 842347057)
          {
            goto LABEL_413;
          }

          goto LABEL_221;
        }

LABEL_194:
        v13 = 0;
        if (getNextToken(v16, __s, " "))
        {
          v80 = &this->__r_.__value_.__r.__words[2];
          if (this[1].__r_.__value_.__s.__data_[15] < 0)
          {
            v80 = *v80;
          }

          v81 = TBuffer<char>::c_str(&__s1);
          tknPrintf("Error: File '%s' : %s : Syntax error in header\n", v82, v80, v81);
          std::string::basic_string[abi:ne200100]<0>(&v157, &byte_262899963);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (SHIBYTE(v157.__end_) < 0)
          {
            std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v157.__first_, v157.__begin_);
          }

          else
          {
            *&__str[0].__r_.__value_.__r.__words[1] = *&v157.__first_;
            __str[1].__r_.__value_.__r.__words[0] = v157.__end_;
          }

          __str[0].__r_.__value_.__r.__words[0] = &unk_287527330;
          if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
          {
            v115 = &__str[0].__r_.__value_.__s.__data_[8];
          }

          else
          {
            v115 = __str[0].__r_.__value_.__l.__size_;
          }

          conditionalAssert(v115, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 375);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (__str[1].__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(v157.__end_) < 0)
          {
            operator delete(v157.__first_);
          }

          v116 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
          *v116 = byte_287529580;
          v117 = (v116 + 1);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v117, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
          }

          else
          {
            v139 = *&__str[0].__r_.__value_.__l.__data_;
            v116[3] = *(&__str[0].__r_.__value_.__l + 2);
            *&v117->__r_.__value_.__l.__data_ = v139;
          }

          *v116 = &unk_287527330;
        }
      }
    }

    if ((v13 & 1) == 0)
    {
      v104 = &this->__r_.__value_.__r.__words[2];
      if (this[1].__r_.__value_.__s.__data_[15] < 0)
      {
        v104 = *v104;
      }

      tknPrintf("Error: '%s' : VERSION must be the first line in header\n", v20, v104);
      std::string::basic_string[abi:ne200100]<0>(&v157, &byte_262899963);
      __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
      if (SHIBYTE(v157.__end_) < 0)
      {
        std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v157.__first_, v157.__begin_);
      }

      else
      {
        *&__str[0].__r_.__value_.__r.__words[1] = *&v157.__first_;
        __str[1].__r_.__value_.__r.__words[0] = v157.__end_;
      }

      __str[0].__r_.__value_.__r.__words[0] = &unk_287527330;
      if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
      {
        v133 = &__str[0].__r_.__value_.__s.__data_[8];
      }

      else
      {
        v133 = __str[0].__r_.__value_.__l.__size_;
      }

      conditionalAssert(v133, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 317);
      __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
      if (__str[1].__r_.__value_.__s.__data_[7] < 0)
      {
        operator delete(__str[0].__r_.__value_.__l.__size_);
      }

      if (SHIBYTE(v157.__end_) < 0)
      {
        operator delete(v157.__first_);
      }

      v134 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
      *v134 = byte_287529580;
      v135 = (v134 + 1);
      if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v135, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
      }

      else
      {
        v145 = *&__str[0].__r_.__value_.__l.__data_;
        v134[3] = *(&__str[0].__r_.__value_.__l + 2);
        *&v135->__r_.__value_.__l.__data_ = v145;
      }

      *v134 = &unk_287527330;
    }

    if (*&__s[16] >= *&__s[8])
    {
      if (v169)
      {
        LOBYTE(v157.__first_) = 0;
        TBuffer<char>::insert(__s, *&__s[16], &v157, 1uLL);
        --*&__s[16];
      }

      else if (*&__s[8])
      {
        *(*__s + *&__s[8] - 1) = 0;
      }
    }

    else
    {
      *(*__s + *&__s[16]) = 0;
    }

    if (atol(*__s) != 1)
    {
      v105 = &this->__r_.__value_.__r.__words[2];
      if (this[1].__r_.__value_.__s.__data_[15] < 0)
      {
        v105 = *v105;
      }

      tknPrintf("Error: '%s' : VERSION must be 1\n", v37, v105);
      std::string::basic_string[abi:ne200100]<0>(&v157, &byte_262899963);
      __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
      if (SHIBYTE(v157.__end_) < 0)
      {
        std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v157.__first_, v157.__begin_);
      }

      else
      {
        *&__str[0].__r_.__value_.__r.__words[1] = *&v157.__first_;
        __str[1].__r_.__value_.__r.__words[0] = v157.__end_;
      }

      __str[0].__r_.__value_.__r.__words[0] = &unk_287526298;
      if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
      {
        v136 = &__str[0].__r_.__value_.__s.__data_[8];
      }

      else
      {
        v136 = __str[0].__r_.__value_.__l.__size_;
      }

      conditionalAssert(v136, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 325);
      __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
      if (__str[1].__r_.__value_.__s.__data_[7] < 0)
      {
        operator delete(__str[0].__r_.__value_.__l.__size_);
      }

      if (SHIBYTE(v157.__end_) < 0)
      {
        operator delete(v157.__first_);
      }

      v137 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
      *v137 = byte_287529580;
      v138 = (v137 + 1);
      if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v138, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
      }

      else
      {
        v146 = *&__str[0].__r_.__value_.__l.__data_;
        v137[3] = *(&__str[0].__r_.__value_.__l + 2);
        *&v138->__r_.__value_.__l.__data_ = v146;
      }

      *v137 = &unk_287526298;
    }

    goto LABEL_194;
  }

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v159 = 0u;
  memset(__str, 0, sizeof(__str));
  v164 = v3;
  std::istream::seekg();
  v2 = 0;
LABEL_265:
  if (v176 == 1 && __s1 != v175 && __s1)
  {
    MEMORY[0x26672B1B0]();
  }

  return v2;
}

void sub_2626A73D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, char *__p, void *a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if ((v35 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v35)
  {
LABEL_6:
    __p = &a21;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (LOBYTE(STACK[0x5E0]) == 1 && STACK[0x4C8] != a11 && STACK[0x4C8] != 0)
    {
      MEMORY[0x26672B1B0]();
    }

    if (LOBYTE(STACK[0x700]) == 1)
    {
      v38 = STACK[0x5E8];
      if (STACK[0x5E8] != a12)
      {
        if (v38)
        {
          MEMORY[0x26672B1B0](v38, 0x1000C4077774924);
        }
      }
    }

    if (LOBYTE(STACK[0x820]) == 1)
    {
      v39 = STACK[0x708];
      if (STACK[0x708] != a14)
      {
        if (v39)
        {
          MEMORY[0x26672B1B0](v39, 0x1000C4077774924);
        }
      }
    }

    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v34);
  goto LABEL_6;
}

BOOL TInputStream::getNextLine(uint64_t a1, const void **a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 104);
  v4 = MEMORY[0x277D82680];
  v5 = MEMORY[0x277D85DE0];
  while (1)
  {
    std::ios_base::getloc((*a1 + *(**a1 - 24)));
    v6 = std::locale::use_facet(&v23, v4);
    (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v23);
    v7 = std::istream::getline();
    v8 = *(v7 + *(*v7 - 24) + 32) & 5;
    if (v8)
    {
      return v8 == 0;
    }

    ++*(a1 + 64);
    if (*(a1 + 127) < 0)
    {
      if (*(a1 + 112))
      {
        v9 = *v3;
LABEL_8:
        v10 = strstr(__s1, v9);
        if (v10)
        {
          *v10 = 0;
        }
      }
    }

    else
    {
      v9 = v3;
      if (*(a1 + 127))
      {
        goto LABEL_8;
      }
    }

    v11 = __s1[0];
    if (__s1[0])
    {
      v12 = __s1;
      do
      {
        if ((v11 & 0x80) != 0)
        {
          v13 = __maskrune(v11, 0x4000uLL);
        }

        else
        {
          v13 = *(v5 + 4 * v11 + 60) & 0x4000;
        }

        if (!v13)
        {
          break;
        }

        v14 = *++v12;
        v11 = v14;
      }

      while (v14);
    }

    else
    {
      v12 = __s1;
    }

    v15 = &__s1[strlen(__s1)];
    v16 = v15 - v12;
    do
    {
      v17 = v15;
      v18 = v16;
      if (v15 <= v12)
      {
        break;
      }

      --v15;
      v19 = *(v17 - 1);
      v20 = v19 < 0 ? __maskrune(*(v17 - 1), 0x4000uLL) : *(v5 + 4 * v19 + 60) & 0x4000;
      v16 = v18 - 1;
    }

    while (v20);
    if (v17 != v12)
    {
      TBuffer<char>::resize(a2, 0);
      TBuffer<char>::insert(a2, 0, v12, v18);
      return v8 == 0;
    }
  }
}

{
  v29 = *MEMORY[0x277D85DE8];
  v22 = (a1 + 128);
  __s1 = v25;
  v24 = xmmword_26286B6F0;
  v26 = 1;
  while (1)
  {
    std::ios_base::getloc((*a1 + *(**a1 - 24)));
    v3 = std::locale::use_facet(&v27, MEMORY[0x277D82680]);
    (v3->__vftable[2].~facet_0)(v3, 10);
    std::locale::~locale(&v27);
    v4 = std::istream::getline();
    v5 = *(v4 + *(*v4 - 24) + 32) & 5;
    if (v5)
    {
      goto LABEL_78;
    }

    ++*(a1 + 64);
    TBuffer<wchar_t>::resize(&__s1, 0);
    TLocaleInfo::multiByteToUnicode(*(a1 + 176), v28, &__s1);
    if ((*(a1 + 151) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 136))
      {
LABEL_7:
        if (*(&v24 + 1) >= v24)
        {
          if (v26)
          {
            LODWORD(v27.__locale_) = 0;
            TBuffer<wchar_t>::insert(&__s1, *(&v24 + 1), &v27, 1uLL);
            v6 = __s1;
            --*(&v24 + 1);
          }

          else
          {
            v6 = __s1;
            if (v24)
            {
              __s1[v24 - 1] = 0;
            }
          }
        }

        else
        {
          v6 = __s1;
          __s1[*(&v24 + 1)] = 0;
        }

        v7 = v22;
        if (*(a1 + 151) < 0)
        {
          v7 = *v22;
        }

        v8 = wcsstr(v6, v7);
        if (v8)
        {
          if (*(&v24 + 1) >= v24)
          {
            if (v26)
            {
              LODWORD(v27.__locale_) = 0;
              TBuffer<wchar_t>::insert(&__s1, *(&v24 + 1), &v27, 1uLL);
              v9 = __s1;
              --*(&v24 + 1);
            }

            else
            {
              v9 = __s1;
              if (v24)
              {
                __s1[v24 - 1] = 0;
              }
            }
          }

          else
          {
            v9 = __s1;
            __s1[*(&v24 + 1)] = 0;
          }

          TBuffer<wchar_t>::resize(&__s1, v8 - v9);
        }
      }
    }

    else if (*(a1 + 151))
    {
      goto LABEL_7;
    }

    if (*(&v24 + 1))
    {
      v10 = 0;
      while (1)
      {
        v11 = __s1[v10];
        {
          operator new();
        }

        if (v11 <= 159)
        {
          if (v11 > 0x20 || ((1 << v11) & 0x100002600) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_44;
        }

        if (v11 >= 12288)
        {
          break;
        }

        if (v11 != 160 && v11 != 8203)
        {
          goto LABEL_48;
        }

LABEL_44:
        ++v10;
        v15 = *(&v24 + 1);
        if (v10 >= *(&v24 + 1))
        {
          goto LABEL_49;
        }
      }

      if (v11 == 12288 || v11 == 65279)
      {
        goto LABEL_44;
      }

LABEL_48:
      v15 = *(&v24 + 1);
LABEL_49:
      if (v15 > v10)
      {
        do
        {
          v16 = __s1[v15 - 1];
          {
            operator new();
          }

          if (v16 > 159)
          {
            if (v16 >= 12288)
            {
              if (v16 != 65279 && v16 != 12288)
              {
                goto LABEL_70;
              }
            }

            else if (v16 != 160 && v16 != 8203)
            {
              goto LABEL_70;
            }
          }

          else if (v16 > 0x20 || ((1 << v16) & 0x100002600) == 0)
          {
            goto LABEL_70;
          }

          --v15;
        }

        while (v15 > v10);
        v15 = v10;
      }

LABEL_70:
      if (v15 != v10)
      {
        break;
      }
    }
  }

  if (*(&v24 + 1) >= v24)
  {
    if (v26)
    {
      LODWORD(v27.__locale_) = 0;
      TBuffer<wchar_t>::insert(&__s1, *(&v24 + 1), &v27, 1uLL);
      v19 = __s1;
      --*(&v24 + 1);
    }

    else
    {
      v19 = __s1;
      if (v24)
      {
        __s1[v24 - 1] = 0;
      }
    }
  }

  else
  {
    v19 = __s1;
    __s1[*(&v24 + 1)] = 0;
  }

  TBuffer<wchar_t>::resize(a2, 0);
  TBuffer<wchar_t>::insert(a2, 0, &v19[v10], v15 - v10);
LABEL_78:
  if (v26 == 1 && __s1 != v25 && __s1)
  {
    MEMORY[0x26672B1B0]();
  }

  return v5 == 0;
}

BOOL TInputStream::isParameter(TInputStream *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v3 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(this + 152, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return (this + 160) != v3;
}

void sub_2626A7A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2626A7F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  MEMORY[0x26672B1B0](a10, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (LOBYTE(STACK[0x440]) == 1 && a14 != a11 && a14 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t TInputStream::getBoolParameter(TInputStream *this, char *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v6 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(this + 152, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (this + 160 != v6)
  {
    v19 = 0;
    v7 = (v6 + 56);
    if (v6[79] < 0)
    {
      v7 = *v7;
    }

    {
      operator new();
    }

    v8 = TLocaleInfo::stringToBool(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v7, &v19);
    if (v19)
    {
      tknPrintf("Error: Expected Boolean value for '%s'\n", v9, a2);
      std::string::basic_string[abi:ne200100]<0>(v15, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v16) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v15[0], v15[1]);
      }

      else
      {
        *&__p[8] = *v15;
        v18 = v16;
      }

      *__p = &unk_287528000;
      if (v18 >= 0)
      {
        v11 = &__p[8];
      }

      else
      {
        v11 = *&__p[8];
      }

      conditionalAssert(v11, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 525);
      *__p = byte_287529580;
      if (SHIBYTE(v18) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(v15[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *exception = byte_287529580;
      v13 = (exception + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v13, *__p, *&__p[8]);
      }

      else
      {
        v14 = *__p;
        exception[3] = *&__p[16];
        *&v13->__r_.__value_.__l.__data_ = v14;
      }

      *exception = &unk_287528000;
    }

    return v8;
  }

  return a3;
}

void sub_2626A8240(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, void *a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26)
{
  MEMORY[0x26672B1B0](v26, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

const void **TInputStream::getStringParameter(uint64_t a1, char *a2, const void **a3, int *a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(a1 + 152, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 160 != v7)
  {
    a4 = (v7 + 56);
    if (*(v7 + 79) < 0)
    {
      a4 = *a4;
    }
  }

  return TBuffer<wchar_t>::assign(a3, a4);
}

void sub_2626A837C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TOutputStream::operator<<(uint64_t a1, unsigned int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  __s = v9;
  v8 = xmmword_26286B6F0;
  v10 = 1;
  TLocaleInfo::unicodeToMultiByte(*(a1 + 16), a2, &__s);
  v3 = *a1;
  if (*(&v8 + 1) >= v8)
  {
    if (v10)
    {
      v6 = 0;
      TBuffer<char>::insert(&__s, *(&v8 + 1), &v6, 1uLL);
      --*(&v8 + 1);
    }

    else if (v8)
    {
      __s[v8 - 1] = 0;
    }
  }

  else
  {
    __s[*(&v8 + 1)] = 0;
  }

  v4 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __s, v4);
  if (v10 == 1 && __s != v9 && __s)
  {
    MEMORY[0x26672B1B0]();
  }

  return a1;
}

void sub_2626A84D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a45 == 1)
  {
    TPToken_Tokenize_cold_1(&a10, v45);
  }

  _Unwind_Resume(exception_object);
}

void *TOutputStream::writeHeader(void **a1, const char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3 + 32 * a4;
  v10 = *(v8 - 16);
  v9 = *(v8 - 8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, "HEADER_BEGIN\n", 13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, "  VERSION 1\n", 12);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, "  FILE_TYPE ", 12);
  v12 = strlen(a2);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, a2, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, "  FILE_VERSION ", 15);
  if (*v10)
  {
    v14 = strlen(v10);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, v10, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ".", 1);
  }

  v16 = MEMORY[0x26672B080](*a1, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, "  CODEPAGE ", 11);
  if (*(a1[2] + 16) == 2)
  {
    v18 = "UTF-8";
  }

  else
  {
    v18 = "1252";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v18);
  if (v40 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v40 >= 0)
  {
    v20 = HIBYTE(v40);
  }

  else
  {
    v20 = v40;
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, p_p, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "\n", 1);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p);
    if (!a5)
    {
      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, "HEADER_END\n", 11);
    }
  }

  else if (!a5)
  {
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, "HEADER_END\n", 11);
  }

  v24 = *a5;
  v22 = a5 + 1;
  v23 = v24;
  __p = v41;
  v40 = xmmword_26286B6F0;
  v42 = 1;
  if (v24 == v22)
  {
    goto LABEL_38;
  }

  do
  {
    TBuffer<char>::resize(&__p, 0);
    v25 = (v23 + 7);
    if (*(v23 + 79) < 0)
    {
      v25 = *v25;
    }

    TLocaleInfo::unicodeToMultiByte(a1[2], v25, &__p);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, "  PARAMETER ", 12);
    v27 = *(v23 + 55);
    if (v27 >= 0)
    {
      v28 = (v23 + 4);
    }

    else
    {
      v28 = v23[4];
    }

    if (v27 >= 0)
    {
      v29 = *(v23 + 55);
    }

    else
    {
      v29 = v23[5];
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "=", 1);
    if (*(&v40 + 1) >= v40)
    {
      if (v42)
      {
        v38 = 0;
        TBuffer<char>::insert(&__p, *(&v40 + 1), &v38, 1uLL);
        --*(&v40 + 1);
      }

      else if (v40)
      {
        *(__p + v40 - 1) = 0;
      }
    }

    else
    {
      *(__p + *(&v40 + 1)) = 0;
    }

    v32 = strlen(__p);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, __p, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "\n", 1);
    v34 = v23[1];
    if (v34)
    {
      do
      {
        v35 = v34;
        v34 = *v34;
      }

      while (v34);
    }

    else
    {
      do
      {
        v35 = v23[2];
        v36 = *v35 == v23;
        v23 = v35;
      }

      while (!v36);
    }

    v23 = v35;
  }

  while (v35 != v22);
  if (v42)
  {
LABEL_38:
    v36 = __p == v41 || __p == 0;
    if (!v36)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, "HEADER_END\n", 11);
}

void sub_2626A887C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TInputModel::TInputModel(TInputModel *this, const TDataManager *a2, const TDataManager *a3, char a4, const char *a5)
{
  *this = a2;
  *(this + 1) = a3;
  IntVar = TInputModel::getIntVar(this, "Version", 1);
  *(this + 2) = IntVar;
  if ((IntVar - 3) <= 0xFFFFFFFD)
  {
    tknPrintf("Error: %llu : Expected %s in range [%llu,%llu]\n", v9, IntVar, "Version", 1, 2);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v113 = byte_287529580;
    if (SHIBYTE(v112) < 0)
    {
      std::string::__init_copy_ctor_external(&v113[8], __p[0], __p[1]);
    }

    else
    {
      *&v113[8] = *__p;
      v114 = v112;
    }

    *v113 = &unk_287528000;
    if (v114 >= 0)
    {
      v43 = &v113[8];
    }

    else
    {
      v43 = *&v113[8];
    }

    conditionalAssert(v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 609);
    *v113 = byte_287529580;
    if (SHIBYTE(v114) < 0)
    {
      operator delete(*&v113[8]);
    }

    if (SHIBYTE(v112) < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v113, &byte_262899963);
    *exception = byte_287529580;
    v45 = (exception + 1);
    if ((v113[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v45, *v113, *&v113[8]);
    }

    else
    {
      v76 = *v113;
      exception[3] = *&v113[16];
      *&v45->__r_.__value_.__l.__data_ = v76;
    }

    *exception = &unk_287528000;
  }

  if (IntVar != 1)
  {
    v16 = *(this + 1);
    if (v16)
    {
      if (!(*(*v16 + 40))(v16, "Version", 0, 0))
      {
        tknPrintf("Error: bad model. Couldn't locate %s in static component.\n", v17, "Version");
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v113 = byte_287529580;
        if (SHIBYTE(v112) < 0)
        {
          std::string::__init_copy_ctor_external(&v113[8], __p[0], __p[1]);
        }

        else
        {
          *&v113[8] = *__p;
          v114 = v112;
        }

        *v113 = &unk_287528000;
        if (v114 >= 0)
        {
          v55 = &v113[8];
        }

        else
        {
          v55 = *&v113[8];
        }

        conditionalAssert(v55, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 683);
        *v113 = byte_287529580;
        if (SHIBYTE(v114) < 0)
        {
          operator delete(*&v113[8]);
        }

        if (SHIBYTE(v112) < 0)
        {
          operator delete(__p[0]);
        }

        v56 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v113, &byte_262899963);
        *v56 = byte_287529580;
        v57 = (v56 + 1);
        if ((v113[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v57, *v113, *&v113[8]);
        }

        else
        {
          v95 = *v113;
          v56[3] = *&v113[16];
          *&v57->__r_.__value_.__l.__data_ = v95;
        }

        *v56 = &unk_287528000;
      }

      if ((TDataManager::getBoolVar(*(this + 1), "IsStaticComponent", 0) & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "Bad static data spec");
        *v113 = byte_287529580;
        if (SHIBYTE(v112) < 0)
        {
          std::string::__init_copy_ctor_external(&v113[8], __p[0], __p[1]);
        }

        else
        {
          *&v113[8] = *__p;
          v114 = v112;
        }

        *v113 = &unk_287528000;
        if (v114 >= 0)
        {
          v58 = &v113[8];
        }

        else
        {
          v58 = *&v113[8];
        }

        conditionalAssert(v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 689);
        *v113 = byte_287529580;
        if (SHIBYTE(v114) < 0)
        {
          operator delete(*&v113[8]);
        }

        if (SHIBYTE(v112) < 0)
        {
          operator delete(__p[0]);
        }

        v59 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v113, "Bad static data spec");
        *v59 = byte_287529580;
        v60 = (v59 + 1);
        if ((v113[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v60, *v113, *&v113[8]);
        }

        else
        {
          v96 = *v113;
          v59[3] = *&v113[16];
          *&v60->__r_.__value_.__l.__data_ = v96;
        }

        *v59 = &unk_287528000;
      }
    }

    if (*this)
    {
      if (!(*(**this + 40))(*this, "Version", 0, 0))
      {
        tknPrintf("Error: bad model. Couldn't locate %s in dynamic component.\n", v18, "Version");
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v113 = byte_287529580;
        if (SHIBYTE(v112) < 0)
        {
          std::string::__init_copy_ctor_external(&v113[8], __p[0], __p[1]);
        }

        else
        {
          *&v113[8] = *__p;
          v114 = v112;
        }

        *v113 = &unk_287528000;
        if (v114 >= 0)
        {
          v61 = &v113[8];
        }

        else
        {
          v61 = *&v113[8];
        }

        conditionalAssert(v61, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 699);
        *v113 = byte_287529580;
        if (SHIBYTE(v114) < 0)
        {
          operator delete(*&v113[8]);
        }

        if (SHIBYTE(v112) < 0)
        {
          operator delete(__p[0]);
        }

        v62 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v113, &byte_262899963);
        *v62 = byte_287529580;
        v63 = (v62 + 1);
        if ((v113[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v63, *v113, *&v113[8]);
        }

        else
        {
          v97 = *v113;
          v62[3] = *&v113[16];
          *&v63->__r_.__value_.__l.__data_ = v97;
        }

        *v62 = &unk_287528000;
      }

      if (TDataManager::getBoolVar(*this, "IsStaticComponent", 0))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "Bad dynamic data spec");
        *v113 = byte_287529580;
        if (SHIBYTE(v112) < 0)
        {
          std::string::__init_copy_ctor_external(&v113[8], __p[0], __p[1]);
        }

        else
        {
          *&v113[8] = *__p;
          v114 = v112;
        }

        *v113 = &unk_287528000;
        if (v114 >= 0)
        {
          v64 = &v113[8];
        }

        else
        {
          v64 = *&v113[8];
        }

        conditionalAssert(v64, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 705);
        *v113 = byte_287529580;
        if (SHIBYTE(v114) < 0)
        {
          operator delete(*&v113[8]);
        }

        if (SHIBYTE(v112) < 0)
        {
          operator delete(__p[0]);
        }

        v65 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v113, "Bad dynamic data spec");
        *v65 = byte_287529580;
        v66 = (v65 + 1);
        if ((v113[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v66, *v113, *&v113[8]);
        }

        else
        {
          v98 = *v113;
          v65[3] = *&v113[16];
          *&v66->__r_.__value_.__l.__data_ = v98;
        }

        *v65 = &unk_287528000;
      }

      if (*this)
      {
        v19 = *(this + 1);
        if (v19)
        {
          v20 = TDataManager::getIntVar(v19, "Version", 1);
          if (v20 != TDataManager::getIntVar(*this, "Version", 1))
          {
            tknPrintf("Error: %s : Unmatched dynamic and static data specs\n", v21, "Version");
            std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
            *v113 = byte_287529580;
            if (SHIBYTE(v112) < 0)
            {
              std::string::__init_copy_ctor_external(&v113[8], __p[0], __p[1]);
            }

            else
            {
              *&v113[8] = *__p;
              v114 = v112;
            }

            *v113 = &unk_287528000;
            if (v114 >= 0)
            {
              v80 = &v113[8];
            }

            else
            {
              v80 = *&v113[8];
            }

            conditionalAssert(v80, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 715);
            *v113 = byte_287529580;
            if (SHIBYTE(v114) < 0)
            {
              operator delete(*&v113[8]);
            }

            if (SHIBYTE(v112) < 0)
            {
              operator delete(__p[0]);
            }

            v81 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v113, &byte_262899963);
            *v81 = byte_287529580;
            v82 = (v81 + 1);
            if ((v113[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v82, *v113, *&v113[8]);
            }

            else
            {
              v103 = *v113;
              v81[3] = *&v113[16];
              *&v82->__r_.__value_.__l.__data_ = v103;
            }

            *v81 = &unk_287528000;
          }

          __p[0] = 0;
          __p[1] = 0;
          v112 = 0;
          TDataManager::getStringVar(*this, "EnhVersion", __p);
          v109[0] = 0;
          v109[1] = 0;
          v110 = 0;
          TDataManager::getStringVar(*(this + 1), "EnhVersion", v109);
          v23 = HIBYTE(v112);
          if (v112 >= 0)
          {
            v24 = HIBYTE(v112);
          }

          else
          {
            v24 = __p[1];
          }

          v25 = HIBYTE(v110);
          v26 = SHIBYTE(v110);
          if (v110 < 0)
          {
            v25 = v109[1];
          }

          if (v24 != v25 || (v112 >= 0 ? (v27 = __p) : (v27 = __p[0]), (v28 = v109[0], v110 >= 0) ? (v29 = v109) : (v29 = v109[0]), memcmp(v27, v29, v24)))
          {
            tknPrintf("Error: %s : Unmatched dynamic and static data specs\n", v22, "EnhVersion");
            std::string::basic_string[abi:ne200100]<0>(v107, &byte_262899963);
            *v113 = byte_287529580;
            if (SHIBYTE(v108) < 0)
            {
              std::string::__init_copy_ctor_external(&v113[8], v107[0], v107[1]);
            }

            else
            {
              *&v113[8] = *v107;
              v114 = v108;
            }

            *v113 = &unk_287528000;
            if (v114 >= 0)
            {
              v92 = &v113[8];
            }

            else
            {
              v92 = *&v113[8];
            }

            conditionalAssert(v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 726);
            *v113 = byte_287529580;
            if (SHIBYTE(v114) < 0)
            {
              operator delete(*&v113[8]);
            }

            if (SHIBYTE(v108) < 0)
            {
              operator delete(v107[0]);
            }

            v93 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v113, &byte_262899963);
            *v93 = byte_287529580;
            v94 = (v93 + 1);
            if ((v113[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v94, *v113, *&v113[8]);
            }

            else
            {
              v106 = *v113;
              v93[3] = *&v113[16];
              *&v94->__r_.__value_.__l.__data_ = v106;
            }

            *v93 = &unk_287528000;
          }

          if (v26 < 0)
          {
            operator delete(v28);
            v23 = HIBYTE(v112);
          }

          if (v23 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    if (g_bCheckVocCompatibility != 1)
    {
      return;
    }

    __p[0] = 0;
    __p[1] = 0;
    v112 = 0;
    TInputModel::getStringVar(this, "VocVersionID", __p, &byte_262899963);
    v30 = HIBYTE(v112);
    if (v112 >= 0)
    {
      v31 = HIBYTE(v112);
    }

    else
    {
      v31 = __p[1];
    }

    if (!v31 || !*a5)
    {
LABEL_82:
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      return;
    }

    v32 = strlen(a5);
    v33 = v32;
    if (v112 < 0)
    {
      if (v32 != __p[1])
      {
        goto LABEL_151;
      }

      if (__p[1] == -1)
      {
        std::wstring::__throw_out_of_range[abi:ne200100]();
      }

      v34 = __p[0];
    }

    else
    {
      if (v32 != HIBYTE(v112))
      {
        goto LABEL_151;
      }

      v34 = __p;
    }

    if (!memcmp(v34, a5, v33))
    {
      goto LABEL_82;
    }

LABEL_151:
    std::string::basic_string[abi:ne200100]<0>(v109, "The model and lexicon are incompatible (different VocVersionID)");
    *v113 = byte_287529580;
    if (SHIBYTE(v110) < 0)
    {
      std::string::__init_copy_ctor_external(&v113[8], v109[0], v109[1]);
    }

    else
    {
      *&v113[8] = *v109;
      v114 = v110;
    }

    *v113 = &unk_287528000;
    if (v114 >= 0)
    {
      v86 = &v113[8];
    }

    else
    {
      v86 = *&v113[8];
    }

    conditionalAssert(v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 740);
    *v113 = byte_287529580;
    if (SHIBYTE(v114) < 0)
    {
      operator delete(*&v113[8]);
    }

    if (SHIBYTE(v110) < 0)
    {
      operator delete(v109[0]);
    }

    v87 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v113, "The model and lexicon are incompatible (different VocVersionID)");
    *v87 = byte_287529580;
    v88 = (v87 + 1);
    if ((v113[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v88, *v113, *&v113[8]);
    }

    else
    {
      v105 = *v113;
      v87[3] = *&v113[16];
      *&v88->__r_.__value_.__l.__data_ = v105;
    }

    *v87 = &unk_287528000;
  }

  if (!*this)
  {
    tknPrintf("Error: Bad model. %s is 1 but there is not dynamic component.\n", v9, "Version");
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v113 = byte_287529580;
    if (SHIBYTE(v112) < 0)
    {
      std::string::__init_copy_ctor_external(&v113[8], __p[0], __p[1]);
    }

    else
    {
      *&v113[8] = *__p;
      v114 = v112;
    }

    *v113 = &unk_287528000;
    if (v114 >= 0)
    {
      v46 = &v113[8];
    }

    else
    {
      v46 = *&v113[8];
    }

    conditionalAssert(v46, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 617);
    *v113 = byte_287529580;
    if (SHIBYTE(v114) < 0)
    {
      operator delete(*&v113[8]);
    }

    if (SHIBYTE(v112) < 0)
    {
      operator delete(__p[0]);
    }

    v47 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v113, &byte_262899963);
    *v47 = byte_287529580;
    v48 = (v47 + 1);
    if ((v113[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v48, *v113, *&v113[8]);
    }

    else
    {
      v89 = *v113;
      v47[3] = *&v113[16];
      *&v48->__r_.__value_.__l.__data_ = v89;
    }

    *v47 = &unk_287528000;
  }

  if (!(*(**this + 40))(*this, "Version", 0, 0))
  {
    tknPrintf("Error: Bad model. Couldn't locate %s\n", v10, "Version");
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v113 = byte_287529580;
    if (SHIBYTE(v112) < 0)
    {
      std::string::__init_copy_ctor_external(&v113[8], __p[0], __p[1]);
    }

    else
    {
      *&v113[8] = *__p;
      v114 = v112;
    }

    *v113 = &unk_287528000;
    if (v114 >= 0)
    {
      v49 = &v113[8];
    }

    else
    {
      v49 = *&v113[8];
    }

    conditionalAssert(v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 624);
    *v113 = byte_287529580;
    if (SHIBYTE(v114) < 0)
    {
      operator delete(*&v113[8]);
    }

    if (SHIBYTE(v112) < 0)
    {
      operator delete(__p[0]);
    }

    v50 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v113, &byte_262899963);
    *v50 = byte_287529580;
    v51 = (v50 + 1);
    if ((v113[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v51, *v113, *&v113[8]);
    }

    else
    {
      v90 = *v113;
      v50[3] = *&v113[16];
      *&v51->__r_.__value_.__l.__data_ = v90;
    }

    *v50 = &unk_287528000;
  }

  if (g_bCheckVocCompatibility != 1)
  {
    goto LABEL_55;
  }

  __p[0] = 0;
  __p[1] = 0;
  v112 = 0;
  TDataManager::getStringVar(*this, "VocVersionID", __p);
  v11 = HIBYTE(v112);
  if (v112 >= 0)
  {
    v12 = HIBYTE(v112);
  }

  else
  {
    v12 = __p[1];
  }

  if (v12 && *a5)
  {
    v13 = strlen(a5);
    v14 = v13;
    if (v112 < 0)
    {
      if (v13 != __p[1])
      {
        goto LABEL_149;
      }

      if (__p[1] == -1)
      {
        std::wstring::__throw_out_of_range[abi:ne200100]();
      }

      v15 = __p[0];
    }

    else
    {
      if (v13 != HIBYTE(v112))
      {
        goto LABEL_149;
      }

      v15 = __p;
    }

    if (!memcmp(v15, a5, v14))
    {
      goto LABEL_53;
    }

LABEL_149:
    std::string::basic_string[abi:ne200100]<0>(v109, "The model and lexicon are incompatible (different VocVersionID)");
    *v113 = byte_287529580;
    if (SHIBYTE(v110) < 0)
    {
      std::string::__init_copy_ctor_external(&v113[8], v109[0], v109[1]);
    }

    else
    {
      *&v113[8] = *v109;
      v114 = v110;
    }

    *v113 = &unk_287528000;
    if (v114 >= 0)
    {
      v83 = &v113[8];
    }

    else
    {
      v83 = *&v113[8];
    }

    conditionalAssert(v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 635);
    *v113 = byte_287529580;
    if (SHIBYTE(v114) < 0)
    {
      operator delete(*&v113[8]);
    }

    if (SHIBYTE(v110) < 0)
    {
      operator delete(v109[0]);
    }

    v84 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v113, "The model and lexicon are incompatible (different VocVersionID)");
    *v84 = byte_287529580;
    v85 = (v84 + 1);
    if ((v113[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v85, *v113, *&v113[8]);
    }

    else
    {
      v104 = *v113;
      v84[3] = *&v113[16];
      *&v85->__r_.__value_.__l.__data_ = v104;
    }

    *v84 = &unk_287528000;
  }

LABEL_53:
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_55:
  if (TDataManager::getBoolVar(*this, "IsStaticComponent", 0))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Bad data spec");
    *v113 = byte_287529580;
    if (SHIBYTE(v112) < 0)
    {
      std::string::__init_copy_ctor_external(&v113[8], __p[0], __p[1]);
    }

    else
    {
      *&v113[8] = *__p;
      v114 = v112;
    }

    *v113 = &unk_287528000;
    if (v114 >= 0)
    {
      v52 = &v113[8];
    }

    else
    {
      v52 = *&v113[8];
    }

    conditionalAssert(v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 641);
    *v113 = byte_287529580;
    if (SHIBYTE(v114) < 0)
    {
      operator delete(*&v113[8]);
    }

    if (SHIBYTE(v112) < 0)
    {
      operator delete(__p[0]);
    }

    v53 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v113, "Bad data spec");
    *v53 = byte_287529580;
    v54 = (v53 + 1);
    if ((v113[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v54, *v113, *&v113[8]);
    }

    else
    {
      v91 = *v113;
      v53[3] = *&v113[16];
      *&v54->__r_.__value_.__l.__data_ = v91;
    }

    *v53 = &unk_287528000;
  }

  v35 = *(this + 1);
  BoolVar = TDataManager::getBoolVar(*this, "HasStaticComponent", 0);
  if (v35)
  {
    if ((BoolVar & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "Bad static data spec");
      *v113 = byte_287529580;
      if (SHIBYTE(v112) < 0)
      {
        std::string::__init_copy_ctor_external(&v113[8], __p[0], __p[1]);
      }

      else
      {
        *&v113[8] = *__p;
        v114 = v112;
      }

      *v113 = &unk_287528000;
      if (v114 >= 0)
      {
        v67 = &v113[8];
      }

      else
      {
        v67 = *&v113[8];
      }

      conditionalAssert(v67, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 657);
      *v113 = byte_287529580;
      if (SHIBYTE(v114) < 0)
      {
        operator delete(*&v113[8]);
      }

      if (SHIBYTE(v112) < 0)
      {
        operator delete(__p[0]);
      }

      v68 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v113, "Bad static data spec");
      *v68 = byte_287529580;
      v69 = (v68 + 1);
      if ((v113[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v69, *v113, *&v113[8]);
      }

      else
      {
        v99 = *v113;
        v68[3] = *&v113[16];
        *&v69->__r_.__value_.__l.__data_ = v99;
      }

      *v68 = &unk_287528000;
    }

    if ((TDataManager::getBoolVar(*(this + 1), "IsStaticComponent", 0) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "Bad static data spec");
      *v113 = byte_287529580;
      if (SHIBYTE(v112) < 0)
      {
        std::string::__init_copy_ctor_external(&v113[8], __p[0], __p[1]);
      }

      else
      {
        *&v113[8] = *__p;
        v114 = v112;
      }

      *v113 = &unk_287528000;
      if (v114 >= 0)
      {
        v70 = &v113[8];
      }

      else
      {
        v70 = *&v113[8];
      }

      conditionalAssert(v70, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 662);
      *v113 = byte_287529580;
      if (SHIBYTE(v114) < 0)
      {
        operator delete(*&v113[8]);
      }

      if (SHIBYTE(v112) < 0)
      {
        operator delete(__p[0]);
      }

      v71 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v113, "Bad static data spec");
      *v71 = byte_287529580;
      v72 = (v71 + 1);
      if ((v113[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v72, *v113, *&v113[8]);
      }

      else
      {
        v100 = *v113;
        v71[3] = *&v113[16];
        *&v72->__r_.__value_.__l.__data_ = v100;
      }

      *v71 = &unk_287528000;
    }

    __p[0] = 0;
    __p[1] = 0;
    v112 = 0;
    TDataManager::getStringVar(*this, "EnhVersion", __p);
    v109[0] = 0;
    v109[1] = 0;
    v110 = 0;
    TDataManager::getStringVar(*(this + 1), "EnhVersion", v109);
    v30 = HIBYTE(v112);
    if (v112 >= 0)
    {
      v37 = HIBYTE(v112);
    }

    else
    {
      v37 = __p[1];
    }

    v38 = HIBYTE(v110);
    v39 = SHIBYTE(v110);
    if (v110 < 0)
    {
      v38 = v109[1];
    }

    if (v37 != v38 || (v112 >= 0 ? (v40 = __p) : (v40 = __p[0]), (v41 = v109[0], v110 >= 0) ? (v42 = v109) : (v42 = v109[0]), memcmp(v40, v42, v37)))
    {
      std::string::basic_string[abi:ne200100]<0>(v107, "Unmatched data spec and static data spec");
      *v113 = byte_287529580;
      if (SHIBYTE(v108) < 0)
      {
        std::string::__init_copy_ctor_external(&v113[8], v107[0], v107[1]);
      }

      else
      {
        *&v113[8] = *v107;
        v114 = v108;
      }

      *v113 = &unk_287528000;
      if (v114 >= 0)
      {
        v73 = &v113[8];
      }

      else
      {
        v73 = *&v113[8];
      }

      conditionalAssert(v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 671);
      *v113 = byte_287529580;
      if (SHIBYTE(v114) < 0)
      {
        operator delete(*&v113[8]);
      }

      if (SHIBYTE(v108) < 0)
      {
        operator delete(v107[0]);
      }

      v74 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v113, "Unmatched data spec and static data spec");
      *v74 = byte_287529580;
      v75 = (v74 + 1);
      if ((v113[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v75, *v113, *&v113[8]);
      }

      else
      {
        v101 = *v113;
        v74[3] = *&v113[16];
        *&v75->__r_.__value_.__l.__data_ = v101;
      }

      *v74 = &unk_287528000;
    }

    if (v39 < 0)
    {
      operator delete(v41);
      v30 = HIBYTE(v112);
    }

    goto LABEL_82;
  }

  if ((a4 & 1) == 0 && ((BoolVar ^ 1) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "The data spec has a static component but it was not specified");
    *v113 = byte_287529580;
    if (SHIBYTE(v112) < 0)
    {
      std::string::__init_copy_ctor_external(&v113[8], __p[0], __p[1]);
    }

    else
    {
      *&v113[8] = *__p;
      v114 = v112;
    }

    *v113 = &unk_287528000;
    if (v114 >= 0)
    {
      v77 = &v113[8];
    }

    else
    {
      v77 = *&v113[8];
    }

    conditionalAssert(v77, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 649);
    *v113 = byte_287529580;
    if (SHIBYTE(v114) < 0)
    {
      operator delete(*&v113[8]);
    }

    if (SHIBYTE(v112) < 0)
    {
      operator delete(__p[0]);
    }

    v78 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v113, "The data spec has a static component but it was not specified");
    *v78 = byte_287529580;
    v79 = (v78 + 1);
    if ((v113[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v79, *v113, *&v113[8]);
    }

    else
    {
      v102 = *v113;
      v78[3] = *&v113[16];
      *&v79->__r_.__value_.__l.__data_ = v102;
    }

    *v78 = &unk_287528000;
  }
}