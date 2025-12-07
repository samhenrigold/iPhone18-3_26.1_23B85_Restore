unint64_t Lattice<WordLatticeLC>::connectOutLinkUnordered(unint64_t result, unsigned int a2)
{
  v3 = *(result + 128) + 136 * a2;
  v4 = *(v3 + 116);
  v5 = *(result + 80) + 24 * v4;
  v6 = *(v5 + 20);
  *(v5 + 20) = a2;
  *(v3 + 128) = v6;
  v7 = *(v5 + 12);
  *(v5 + 12) = v7 + 1;
  if (!v7)
  {
    return DgnPrimArray<unsigned int>::removeKeepOrder((result + 48), v4);
  }

  return result;
}

void (***DgnDelete<Recognizer>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void TTokenizerParamManager::TTokenizerParamManager(TTokenizerParamManager *this, TLocaleInfo *a2)
{
  TParamManager::TParamManager(this, 0, a2);
  *v3 = &unk_287525438;
  v4 = (v3 + 18);
  TBoolParam::TBoolParam((v3 + 18), "S", "I", 0, 0, "9", &dword_262873E64);
  TBoolParam::TBoolParam(this + 392, "P", "I", 0, 0, "9", &dword_262873E64);
  TBoolParam::TBoolParam(this + 640, "T", "T", 0, 0, "9", &dword_262873E64);
  TBoolParam::TBoolParam(this + 888, "A", "I", 0, 0, "9", &dword_262873E64);
  TBoolParam::TBoolParam(this + 1136, "M", "I", 0, 1, "9", &dword_262873E64);
  TBoolParam::TBoolParam(this + 1384, "T", "I", 0, 1, "9", &dword_262873E64);
  TBoolParam::TBoolParam(this + 1632, "T", "A", 0, 1, "1", &dword_262873E64);
  TBoolParam::TBoolParam(this + 1880, "S", "I", 0, 0, "9", &dword_262873E64);
  TBoolParam::TBoolParam(this + 2128, "M", "I", 0, 1, "1", "1");
  TStringParam::TStringParam(this + 2376, "C", "A", 0, "'", "1", &dword_262873E64);
  TStringParam::TStringParam(this + 3752, "C", "A", 0, &dword_262873E64, "1", &dword_262873E64);
  TBoolParam::TBoolParam(this + 5128, "D", "I", 0, 1, "9", &dword_262873E64);
  TBoolParam::TBoolParam(this + 5376, "D", "I", 0, 0, "9", &dword_262873E64);
  TBoolParam::TBoolParam(this + 5624, "D", "I", 0, 0, "9", &dword_262873E64);
  TBoolParam::TBoolParam(this + 5872, "D", "I", 0, 0, "9", &dword_262873E64);
  TBoolParam::TBoolParam(this + 6120, "D", "I", 0, 0, "9", &dword_262873E64);
  TStringParam::TStringParam(this + 6368, "D", "B", 0, &dword_262873E64, "1", "1");
  TBoolParam::TBoolParam(this + 7744, "C", "R", 0, 0, "9", &dword_262873E64);
  TStringParam::TStringParam(this + 7992, "C", "S", 256, &dword_262873E64, "9", &dword_262873E64);
  TStringParam::TStringParam(this + 9368, "C", "W", 0, "x", "1", "1");
  TStringParam::TStringParam(this + 10744, "V", "T", 0, &dword_262873E64, "9", &dword_262873E64);
  TBoolParam::TBoolParam(this + 12120, "U", "I", 0, 1, "9", &dword_262873E64);
  TBoolParam::TBoolParam(this + 12368, "R", "I", 0, 0, "9", &dword_262873E64);
  TBoolParam::TBoolParam(this + 12616, "C", "N", 0, 1, "1", &dword_262873E64);
  TBoolParam::TBoolParam(this + 12864, "C", "T", 0, 0, "1", &dword_262873E64);
  TBoolParam::TBoolParam(this + 13112, "D", "I", 0, 0, "9", &dword_262873E64);
  TBoolParam::TBoolParam(this + 13360, "H", "S", 0, 0, "1", &dword_262873E64);
  TIntParam::TIntParam((this + 13608), "N", "I", 0, 0, 1000, 30, "9", &dword_262873E64);
  TIntParam::TIntParam((this + 13960), "M", "I", 0, 0, 1000, 5, "9", &dword_262873E64);
  TIntParam::TIntParam((this + 14312), "N", "W", 0, 0, 4, 0, "1", &dword_262873E64);
  TIntParam::TIntParam((this + 14664), "P", "T", 0, 0, 300, 0, "1", &dword_262873E64);
  TBoolParam::TBoolParam(this + 15016, "P", "I", 0, 0, "9", "1");
  TBoolParam::TBoolParam(this + 15264, "A", "I", 0, 1, "1", &dword_262873E64);
  TBoolParam::TBoolParam(this + 15512, "M", "I", 0, 1, "1", "1");
  TIntParam::TIntParam((this + 15760), "P", "T", 0, -1, 100, 10, "1", &dword_262873E64);
  TIntParam::TIntParam((this + 16112), "C", "P", 0, 1, 256, 4, "1", &dword_262873E64);
  TIntParam::TIntParam((this + 16464), "A", "P", 0, 1, 256, 4, "1", &dword_262873E64);
  TIntParam::TIntParam((this + 16816), "P", "S", 0, -1, 100, 20, "1", &dword_262873E64);
  TIntParam::TIntParam((this + 17168), "P", "S", 0, -1, 100, 30, "1", &dword_262873E64);
  TIntParam::TIntParam((this + 17520), "P", "S", 0, -1, 100, 40, "1", &dword_262873E64);
  TBoolParam::TBoolParam(this + 17872, "O", "O", 0, 0, "1", &dword_262873E64);
  TIntParam::TIntParam((this + 18120), "P", "S", 0, -1, 100, -1, "1", &dword_262873E64);
  TIntParam::TIntParam((this + 18472), "P", "S", 0, -1, 100, 50, "1", &dword_262873E64);
  TIntParam::TIntParam((this + 18824), "P", "S", 0, -1, 100, 60, "1", &dword_262873E64);
  TBoolParam::TBoolParam(this + 19176, "U", "I", 0, 1, "1", "1");
  TBoolParam::TBoolParam(this + 19424, "U", "I", 0, 1, "1", "1");
  TBoolParam::TBoolParam(this + 19672, "U", "I", 0, 1, "1", "1");
  TBoolParam::TBoolParam(this + 19920, "U", "I", 0, 1, "1", "1");
  TBoolParam::TBoolParam(this + 20168, "U", "I", 0, 0, "1", "1");
  TBoolParam::TBoolParam(this + 20416, "U", "I", 0, 1, "1", "1");
  TBoolParam::TBoolParam(this + 20664, "L", "I", 0, 0, "1", &dword_262873E64);
  TBoolParam::TBoolParam(this + 20912, "L", "I", 0, 0, "1", &dword_262873E64);
  TIntParam::TIntParam((this + 21160), "M", "M", 0, 1, 100, 10, "1", &dword_262873E64);
  TBoolParam::TBoolParam(this + 21512, "L", "L", 0, 0, "9", &dword_262873E64);
  TBoolParam::TBoolParam(this + 21760, "L", "L", 0, 0, "9", &dword_262873E64);
  TBoolParam::TBoolParam(this + 22008, "D", "D", 32, 1, "9", &dword_262873E64);
  TBoolParam::TBoolParam(this + 22256, "D", "D", 288, 1, "1", &dword_262873E64);
  TStringParam::TStringParam(this + 22504, "D", "D", 32, &dword_262873E64, "9", &dword_262873E64);
  TStringParam::TStringParam(this + 23880, "D", "D", 288, &dword_262873E64, "1", &dword_262873E64);
  TIntParam::TIntParam((this + 25256), "D", "D", 32, -1, 10, 5, "9", &dword_262873E64);
  TIntParam::TIntParam((this + 25608), "D", "D", 288, -1, 10, 5, "1", &dword_262873E64);
  TStringParam::TStringParam(this + 3245, "D");
  TStringParam::TStringParam(this + 3417, "D");
  TFloatParam::TFloatParam(this + 28712, "D", "D", 32, "9", &dword_262873E64, 0.0);
  TFloatParam::TFloatParam(this + 29248, "D", "D", 288, "1", &dword_262873E64, 0.0);
  TParamManager::add(this, v4);
  TParamManager::add(this, (this + 392));
  TParamManager::add(this, (this + 640));
  TParamManager::add(this, (this + 888));
  TParamManager::add(this, (this + 1136));
  TParamManager::add(this, (this + 1384));
  TParamManager::add(this, (this + 1632));
  TParamManager::add(this, (this + 1880));
  TParamManager::add(this, (this + 2128));
  TParamManager::add(this, (this + 2376));
  TParamManager::add(this, (this + 3752));
  TParamManager::add(this, (this + 5128));
  TParamManager::add(this, (this + 5376));
  TParamManager::add(this, (this + 5624));
  TParamManager::add(this, (this + 5872));
  TParamManager::add(this, (this + 6120));
  TParamManager::add(this, (this + 6368));
  TParamManager::add(this, (this + 7744));
  TParamManager::add(this, (this + 7992));
  TParamManager::add(this, (this + 9368));
  TParamManager::add(this, (this + 10744));
  TParamManager::add(this, (this + 12120));
  TParamManager::add(this, (this + 12368));
  TParamManager::add(this, (this + 12616));
  TParamManager::add(this, (this + 12864));
  TParamManager::add(this, (this + 13112));
  TParamManager::add(this, (this + 13360));
  TParamManager::add(this, (this + 13608));
  TParamManager::add(this, (this + 13960));
  TParamManager::add(this, (this + 14312));
  TParamManager::add(this, (this + 14664));
  TParamManager::add(this, (this + 15016));
  TParamManager::add(this, (this + 15264));
  TParamManager::add(this, (this + 15512));
  TParamManager::add(this, (this + 15760));
  TParamManager::add(this, (this + 16112));
  TParamManager::add(this, (this + 16464));
  TParamManager::add(this, (this + 16816));
  TParamManager::add(this, (this + 17168));
  TParamManager::add(this, (this + 17520));
  TParamManager::add(this, (this + 17872));
  TParamManager::add(this, (this + 18120));
  TParamManager::add(this, (this + 18472));
  TParamManager::add(this, (this + 18824));
  TParamManager::add(this, (this + 19176));
  TParamManager::add(this, (this + 19424));
  TParamManager::add(this, (this + 19672));
  TParamManager::add(this, (this + 19920));
  TParamManager::add(this, (this + 20168));
  TParamManager::add(this, (this + 20416));
  TParamManager::add(this, (this + 20664));
  TParamManager::add(this, (this + 20912));
  TParamManager::add(this, (this + 21160));
  TParamManager::add(this, (this + 21512));
  TParamManager::add(this, (this + 21760));
  TParamManager::add(this, (this + 22008));
  TParamManager::add(this, (this + 22256));
  TParamManager::add(this, (this + 22504));
  TParamManager::add(this, (this + 23880));
  TParamManager::add(this, (this + 25256));
  TParamManager::add(this, (this + 25608));
  MEMORY[0x26672AF30](this + 26000, "D");
  MEMORY[0x26672AF30](this + 26024, "9");
  MEMORY[0x26672AF30](this + 26048, &dword_262873E64);
  *(this + 3259) |= 0x20uLL;
  std::vector<std::wstring>::vector[abi:ne200100](v11, 4uLL);
  std::vector<std::wstring>::vector[abi:ne200100](v10, 4uLL);
  v5 = 0;
  v6 = "a";
  do
  {
    MEMORY[0x26672AF30](&v11[0][v5], v6);
    v6 += wcslen(v6) + 1;
    ++v5;
  }

  while (v5 != 4);
  TStringParam::setAllowables(this + 25960, v11, 0, 0);
  TStringParam::setOriginal(this + 3245, 0, &dword_262873E64);
  TParamManager::add(this, (this + 25960));
  v12 = v10;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v12);
  v10[0] = v11;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](v10);
  MEMORY[0x26672AF30](this + 27376, "D");
  MEMORY[0x26672AF30](this + 27400, "1");
  MEMORY[0x26672AF30](this + 27424, &dword_262873E64);
  *(this + 3431) |= 0x120uLL;
  std::vector<std::wstring>::vector[abi:ne200100](v11, 4uLL);
  std::vector<std::wstring>::vector[abi:ne200100](v10, 4uLL);
  v7 = 0;
  v8 = "a";
  do
  {
    MEMORY[0x26672AF30](&v11[0][v7], v8);
    v8 += wcslen(v8) + 1;
    ++v7;
  }

  while (v7 != 4);
  TStringParam::setAllowables(this + 27336, v11, 0, 0);
  TStringParam::setOriginal(this + 3417, 0, &dword_262873E64);
  TParamManager::add(this, (this + 27336));
  v12 = v10;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v12);
  v10[0] = v11;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](v10);
  TParamManager::add(this, (this + 28712));
  TParamManager::add(this, (this + 29248));
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *(this + 29784) = v9;
  *(this + 29800) = v9;
}

void sub_262609FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a10);
  TParam::~TParam((v13 + v19));
  TParam::~TParam((v13 + v18));
  TStringParam::~TStringParam((v13 + v17));
  TStringParam::~TStringParam((v13 + v16));
  TParam::~TParam((v13 + v15));
  TParam::~TParam((v13 + v20));
  TStringParam::~TStringParam(v13 + 2985);
  TStringParam::~TStringParam(v13 + 2813);
  TBoolParam::~TBoolParam(v13 + 2782);
  TBoolParam::~TBoolParam(v13 + 2751);
  TBoolParam::~TBoolParam(v13 + 2720);
  TBoolParam::~TBoolParam(v13 + 2689);
  TParam::~TParam(v13 + 2645);
  TBoolParam::~TBoolParam(v13 + 2614);
  TBoolParam::~TBoolParam(v13 + 2583);
  TBoolParam::~TBoolParam(v13 + 2552);
  TBoolParam::~TBoolParam(v13 + 2521);
  TBoolParam::~TBoolParam(v13 + 2490);
  TBoolParam::~TBoolParam(v13 + 2459);
  TBoolParam::~TBoolParam(v13 + 2428);
  TBoolParam::~TBoolParam(v13 + 2397);
  TParam::~TParam(v13 + 2353);
  TParam::~TParam(v13 + 2309);
  TParam::~TParam(v13 + 2265);
  TBoolParam::~TBoolParam(v13 + 2234);
  TParam::~TParam(v13 + 2190);
  TParam::~TParam(v13 + 2146);
  TParam::~TParam(v13 + 2102);
  TParam::~TParam(v13 + 2058);
  TParam::~TParam(v13 + 2014);
  TParam::~TParam(v13 + 1970);
  TBoolParam::~TBoolParam(v13 + 1939);
  TBoolParam::~TBoolParam(v13 + 1908);
  TBoolParam::~TBoolParam(v13 + 1877);
  TParam::~TParam(v13 + 1833);
  TParam::~TParam(v13 + 1789);
  TParam::~TParam(v13 + 1745);
  TParam::~TParam(v13 + 1701);
  TBoolParam::~TBoolParam(v13 + 1670);
  TBoolParam::~TBoolParam(v13 + 1639);
  TBoolParam::~TBoolParam(v13 + 1608);
  TBoolParam::~TBoolParam(v13 + 1577);
  TBoolParam::~TBoolParam(v13 + 1546);
  TBoolParam::~TBoolParam(v13 + 1515);
  TStringParam::~TStringParam(v13 + 1343);
  TStringParam::~TStringParam(v13 + 1171);
  TStringParam::~TStringParam(v13 + 999);
  TBoolParam::~TBoolParam(v13 + 968);
  TStringParam::~TStringParam(v13 + 796);
  TBoolParam::~TBoolParam(v13 + 765);
  TBoolParam::~TBoolParam(v13 + 734);
  TBoolParam::~TBoolParam(v13 + 703);
  TBoolParam::~TBoolParam(v13 + 672);
  TBoolParam::~TBoolParam(v13 + 641);
  TStringParam::~TStringParam(v13 + 469);
  TStringParam::~TStringParam(v13 + 297);
  TBoolParam::~TBoolParam(v13 + 266);
  TBoolParam::~TBoolParam(v13 + 235);
  TBoolParam::~TBoolParam(v13 + 204);
  TBoolParam::~TBoolParam(v13 + 173);
  TBoolParam::~TBoolParam(v13 + 142);
  TBoolParam::~TBoolParam(v13 + 111);
  TBoolParam::~TBoolParam(v13 + 80);
  TBoolParam::~TBoolParam(v13 + 49);
  TBoolParam::~TBoolParam(v14);
  TParamManager::~TParamManager(v13);
  _Unwind_Resume(a1);
}

void TTokenizerParamManager::notifyChange(TTokenizerParamManager *this, const TParam *a2)
{
  v2 = (this + 3752);
  if ((this + 3752) == a2)
  {
    v3 = TStringParam::get((this + 3752));
    if (wcslen(v3))
    {
      v4 = TStringParam::get(v2);
      loggableUnicode(v4, __p);
      if (v8 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      tknPrintf("Warning: CharacterMapping contains an odd number of characters: <%s>\n", v5, v6);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_26260A5A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *TTokenizerParamManager::upgradeParam(void *this, const TParam *a2)
{
  v2 = this;
  v3 = (this + 2397);
  if (this + 2397 == a2)
  {
    ActiveConfigHandle = TParam::getActiveConfigHandle((this + 2397));
    ValidConfig = TParam::getValidConfig(v3, ActiveConfigHandle);
    v6 = 2102;
    if (*(v2 + ValidConfig + 19328) != 1)
    {
      goto LABEL_23;
    }

    v7 = v2[17];
    v2[2116] &= ~(1 << (v7 + 33));
LABEL_20:

    return TParam::notifyChange(&v2[v6], v7);
  }

  if (this + 2428 == a2)
  {
    v8 = TParam::getActiveConfigHandle((this + 2428));
    v6 = 2146;
    if (*(v2 + TParam::getValidConfig((v2 + 2428), v8) + 19576) != 1)
    {
      goto LABEL_23;
    }

    v7 = v2[17];
    v2[2160] &= ~(1 << (v7 + 33));
    goto LABEL_20;
  }

  if (this + 2459 == a2)
  {
    v9 = TParam::getActiveConfigHandle((this + 2459));
    v6 = 2190;
    if (*(v2 + TParam::getValidConfig((v2 + 2459), v9) + 19824) != 1)
    {
      goto LABEL_23;
    }

    v7 = v2[17];
    v2[2204] &= ~(1 << (v7 + 33));
    goto LABEL_20;
  }

  if (this + 2521 != a2)
  {
    if (this + 2552 != a2)
    {
      if (this + 2490 != a2)
      {
        return this;
      }

      v16 = TParam::getActiveConfigHandle((this + 2490));
      v6 = 2353;
      if (*(v2 + TParam::getValidConfig((v2 + 2490), v16) + 20072) == 1)
      {
        v7 = v2[17];
        v2[2367] &= ~(1 << (v7 + 33));
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    v15 = TParam::getActiveConfigHandle((this + 2552));
    v6 = 2309;
    if (*(v2 + TParam::getValidConfig((v2 + 2552), v15) + 20568) == 1)
    {
      v7 = v2[17];
      v2[2323] &= ~(1 << (v7 + 33));
      goto LABEL_20;
    }

LABEL_23:
    v12 = TParam::getActiveConfigHandle(&v2[v6]);
    goto LABEL_24;
  }

  v10 = TParam::getActiveConfigHandle((this + 2521));
  v11 = *(v2 + TParam::getValidConfig((v2 + 2521), v10) + 20320);
  v6 = 2265;
  v12 = TParam::getActiveConfigHandle((v2 + 2265));
  if (v11 != 1)
  {
LABEL_24:
    v13 = &v2[v6];
    v14 = -1;
    goto LABEL_25;
  }

  v13 = (v2 + 2265);
  v14 = 45;
LABEL_25:

  return TIntParam::set(v13, v12, v14);
}

uint64_t TTokenizerParamManager::initializeParamConfigs(TTokenizerParamManager *this)
{
  Config = TParamManager::getConfig(this, "A");
  *(this + 3724) = Config;
  if (Config == -1)
  {
    *(this + 3724) = TParamManager::newConfig(this, "A", 1);
  }

  v3 = TParamManager::getConfig(this, "B");
  *(this + 3725) = v3;
  if (v3 == -1)
  {
    v4 = TParamManager::newConfig(this, "B", 1);
    *(this + 3725) = v4;
    *(this + v4 + 18024) = 1;
    *(this + 2248) |= 1 << (v4 + 9);
    TParam::notifyChange(this + 17872, v4);
  }

  v5 = TParamManager::getConfig(this, "A");
  *(this + 3726) = v5;
  if (v5 == -1)
  {
    v6 = TParamManager::newConfig(this, "A", 1);
    *(this + 3726) = v6;
    TIntParam::setOriginal((this + 14312), v6, 0);
    TIntParam::setOriginal((this + 17520), *(this + 3726), -1);
    TIntParam::setOriginal((this + 18120), *(this + 3726), -1);
    TIntParam::setOriginal((this + 18472), *(this + 3726), -1);
    TIntParam::setOriginal((this + 18824), *(this + 3726), -1);
  }

  result = TParamManager::getConfig(this, "F");
  *(this + 3723) = result;
  if (result == -1)
  {
    v8 = TParamManager::newConfig(this, "F", *(this + 3724));
    *(this + 3723) = v8;
    *(this + v8 + 792) = 1;
    *(this + 94) |= 1 << (v8 + 9);

    return TParam::notifyChange(this + 640, v8);
  }

  return result;
}

void TTokenizerParamManager::~TTokenizerParamManager(void **this)
{
  TTokenizerParamManager::~TTokenizerParamManager(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287525438;
  TParam::~TParam(this + 3656);
  TParam::~TParam(this + 3589);
  this[3417] = &unk_287528A10;
  v86 = this + 3586;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 3583;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 3580;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v2 = this + 3577;
  v3 = -1152;
  do
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    v2 -= 3;
    v3 += 24;
  }

  while (v3);
  TParam::~TParam(this + 3417);
  this[3245] = &unk_287528A10;
  v86 = this + 3414;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 3411;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 3408;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v4 = this + 3405;
  v5 = -1152;
  do
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    v4 -= 3;
    v5 += 24;
  }

  while (v5);
  TParam::~TParam(this + 3245);
  TParam::~TParam(this + 3201);
  TParam::~TParam(this + 3157);
  this[2985] = &unk_287528A10;
  v86 = this + 3154;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 3151;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 3148;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v6 = this + 3145;
  v7 = -1152;
  do
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    v6 -= 3;
    v7 += 24;
  }

  while (v7);
  TParam::~TParam(this + 2985);
  this[2813] = &unk_287528A10;
  v86 = this + 2982;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 2979;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 2976;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v8 = this + 2973;
  v9 = -1152;
  do
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    v8 -= 3;
    v9 += 24;
  }

  while (v9);
  TParam::~TParam(this + 2813);
  this[2782] = &unk_2875295A0;
  v10 = this + 2810;
  v11 = -48;
  do
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    v10 -= 3;
    v11 += 24;
  }

  while (v11);
  TParam::~TParam(this + 2782);
  this[2751] = &unk_2875295A0;
  v12 = this + 2779;
  v13 = -48;
  do
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    v12 -= 3;
    v13 += 24;
  }

  while (v13);
  TParam::~TParam(this + 2751);
  this[2720] = &unk_2875295A0;
  v14 = this + 2748;
  v15 = -48;
  do
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    v14 -= 3;
    v15 += 24;
  }

  while (v15);
  TParam::~TParam(this + 2720);
  this[2689] = &unk_2875295A0;
  v16 = this + 2717;
  v17 = -48;
  do
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v16 -= 3;
    v17 += 24;
  }

  while (v17);
  TParam::~TParam(this + 2689);
  TParam::~TParam(this + 2645);
  this[2614] = &unk_2875295A0;
  v18 = this + 2642;
  v19 = -48;
  do
  {
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    v18 -= 3;
    v19 += 24;
  }

  while (v19);
  TParam::~TParam(this + 2614);
  this[2583] = &unk_2875295A0;
  v20 = this + 2611;
  v21 = -48;
  do
  {
    if (*(v20 + 23) < 0)
    {
      operator delete(*v20);
    }

    v20 -= 3;
    v21 += 24;
  }

  while (v21);
  TParam::~TParam(this + 2583);
  this[2552] = &unk_2875295A0;
  v22 = this + 2580;
  v23 = -48;
  do
  {
    if (*(v22 + 23) < 0)
    {
      operator delete(*v22);
    }

    v22 -= 3;
    v23 += 24;
  }

  while (v23);
  TParam::~TParam(this + 2552);
  this[2521] = &unk_2875295A0;
  v24 = this + 2549;
  v25 = -48;
  do
  {
    if (*(v24 + 23) < 0)
    {
      operator delete(*v24);
    }

    v24 -= 3;
    v25 += 24;
  }

  while (v25);
  TParam::~TParam(this + 2521);
  this[2490] = &unk_2875295A0;
  v26 = this + 2518;
  v27 = -48;
  do
  {
    if (*(v26 + 23) < 0)
    {
      operator delete(*v26);
    }

    v26 -= 3;
    v27 += 24;
  }

  while (v27);
  TParam::~TParam(this + 2490);
  this[2459] = &unk_2875295A0;
  v28 = this + 2487;
  v29 = -48;
  do
  {
    if (*(v28 + 23) < 0)
    {
      operator delete(*v28);
    }

    v28 -= 3;
    v29 += 24;
  }

  while (v29);
  TParam::~TParam(this + 2459);
  this[2428] = &unk_2875295A0;
  v30 = this + 2456;
  v31 = -48;
  do
  {
    if (*(v30 + 23) < 0)
    {
      operator delete(*v30);
    }

    v30 -= 3;
    v31 += 24;
  }

  while (v31);
  TParam::~TParam(this + 2428);
  this[2397] = &unk_2875295A0;
  v32 = this + 2425;
  v33 = -48;
  do
  {
    if (*(v32 + 23) < 0)
    {
      operator delete(*v32);
    }

    v32 -= 3;
    v33 += 24;
  }

  while (v33);
  TParam::~TParam(this + 2397);
  TParam::~TParam(this + 2353);
  TParam::~TParam(this + 2309);
  TParam::~TParam(this + 2265);
  this[2234] = &unk_2875295A0;
  v34 = this + 2262;
  v35 = -48;
  do
  {
    if (*(v34 + 23) < 0)
    {
      operator delete(*v34);
    }

    v34 -= 3;
    v35 += 24;
  }

  while (v35);
  TParam::~TParam(this + 2234);
  TParam::~TParam(this + 2190);
  TParam::~TParam(this + 2146);
  TParam::~TParam(this + 2102);
  TParam::~TParam(this + 2058);
  TParam::~TParam(this + 2014);
  TParam::~TParam(this + 1970);
  this[1939] = &unk_2875295A0;
  v36 = this + 1967;
  v37 = -48;
  do
  {
    if (*(v36 + 23) < 0)
    {
      operator delete(*v36);
    }

    v36 -= 3;
    v37 += 24;
  }

  while (v37);
  TParam::~TParam(this + 1939);
  this[1908] = &unk_2875295A0;
  v38 = this + 1936;
  v39 = -48;
  do
  {
    if (*(v38 + 23) < 0)
    {
      operator delete(*v38);
    }

    v38 -= 3;
    v39 += 24;
  }

  while (v39);
  TParam::~TParam(this + 1908);
  this[1877] = &unk_2875295A0;
  v40 = this + 1905;
  v41 = -48;
  do
  {
    if (*(v40 + 23) < 0)
    {
      operator delete(*v40);
    }

    v40 -= 3;
    v41 += 24;
  }

  while (v41);
  TParam::~TParam(this + 1877);
  TParam::~TParam(this + 1833);
  TParam::~TParam(this + 1789);
  TParam::~TParam(this + 1745);
  TParam::~TParam(this + 1701);
  this[1670] = &unk_2875295A0;
  v42 = this + 1698;
  v43 = -48;
  do
  {
    if (*(v42 + 23) < 0)
    {
      operator delete(*v42);
    }

    v42 -= 3;
    v43 += 24;
  }

  while (v43);
  TParam::~TParam(this + 1670);
  this[1639] = &unk_2875295A0;
  v44 = this + 1667;
  v45 = -48;
  do
  {
    if (*(v44 + 23) < 0)
    {
      operator delete(*v44);
    }

    v44 -= 3;
    v45 += 24;
  }

  while (v45);
  TParam::~TParam(this + 1639);
  this[1608] = &unk_2875295A0;
  v46 = this + 1636;
  v47 = -48;
  do
  {
    if (*(v46 + 23) < 0)
    {
      operator delete(*v46);
    }

    v46 -= 3;
    v47 += 24;
  }

  while (v47);
  TParam::~TParam(this + 1608);
  this[1577] = &unk_2875295A0;
  v48 = this + 1605;
  v49 = -48;
  do
  {
    if (*(v48 + 23) < 0)
    {
      operator delete(*v48);
    }

    v48 -= 3;
    v49 += 24;
  }

  while (v49);
  TParam::~TParam(this + 1577);
  this[1546] = &unk_2875295A0;
  v50 = this + 1574;
  v51 = -48;
  do
  {
    if (*(v50 + 23) < 0)
    {
      operator delete(*v50);
    }

    v50 -= 3;
    v51 += 24;
  }

  while (v51);
  TParam::~TParam(this + 1546);
  this[1515] = &unk_2875295A0;
  v52 = this + 1543;
  v53 = -48;
  do
  {
    if (*(v52 + 23) < 0)
    {
      operator delete(*v52);
    }

    v52 -= 3;
    v53 += 24;
  }

  while (v53);
  TParam::~TParam(this + 1515);
  this[1343] = &unk_287528A10;
  v86 = this + 1512;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 1509;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 1506;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v54 = this + 1503;
  v55 = -1152;
  do
  {
    if (*(v54 + 23) < 0)
    {
      operator delete(*v54);
    }

    v54 -= 3;
    v55 += 24;
  }

  while (v55);
  TParam::~TParam(this + 1343);
  this[1171] = &unk_287528A10;
  v86 = this + 1340;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 1337;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 1334;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v56 = this + 1331;
  v57 = -1152;
  do
  {
    if (*(v56 + 23) < 0)
    {
      operator delete(*v56);
    }

    v56 -= 3;
    v57 += 24;
  }

  while (v57);
  TParam::~TParam(this + 1171);
  this[999] = &unk_287528A10;
  v86 = this + 1168;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 1165;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 1162;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v58 = this + 1159;
  v59 = -1152;
  do
  {
    if (*(v58 + 23) < 0)
    {
      operator delete(*v58);
    }

    v58 -= 3;
    v59 += 24;
  }

  while (v59);
  TParam::~TParam(this + 999);
  this[968] = &unk_2875295A0;
  v60 = this + 996;
  v61 = -48;
  do
  {
    if (*(v60 + 23) < 0)
    {
      operator delete(*v60);
    }

    v60 -= 3;
    v61 += 24;
  }

  while (v61);
  TParam::~TParam(this + 968);
  this[796] = &unk_287528A10;
  v86 = this + 965;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 962;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 959;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v62 = this + 956;
  v63 = -1152;
  do
  {
    if (*(v62 + 23) < 0)
    {
      operator delete(*v62);
    }

    v62 -= 3;
    v63 += 24;
  }

  while (v63);
  TParam::~TParam(this + 796);
  this[765] = &unk_2875295A0;
  v64 = this + 793;
  v65 = -48;
  do
  {
    if (*(v64 + 23) < 0)
    {
      operator delete(*v64);
    }

    v64 -= 3;
    v65 += 24;
  }

  while (v65);
  TParam::~TParam(this + 765);
  this[734] = &unk_2875295A0;
  v66 = this + 762;
  v67 = -48;
  do
  {
    if (*(v66 + 23) < 0)
    {
      operator delete(*v66);
    }

    v66 -= 3;
    v67 += 24;
  }

  while (v67);
  TParam::~TParam(this + 734);
  this[703] = &unk_2875295A0;
  v68 = this + 731;
  v69 = -48;
  do
  {
    if (*(v68 + 23) < 0)
    {
      operator delete(*v68);
    }

    v68 -= 3;
    v69 += 24;
  }

  while (v69);
  TParam::~TParam(this + 703);
  this[672] = &unk_2875295A0;
  v70 = this + 700;
  v71 = -48;
  do
  {
    if (*(v70 + 23) < 0)
    {
      operator delete(*v70);
    }

    v70 -= 3;
    v71 += 24;
  }

  while (v71);
  TParam::~TParam(this + 672);
  this[641] = &unk_2875295A0;
  v72 = this + 669;
  v73 = -48;
  do
  {
    if (*(v72 + 23) < 0)
    {
      operator delete(*v72);
    }

    v72 -= 3;
    v73 += 24;
  }

  while (v73);
  TParam::~TParam(this + 641);
  this[469] = &unk_287528A10;
  v86 = this + 638;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 635;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 632;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v74 = this + 629;
  v75 = -1152;
  do
  {
    if (*(v74 + 23) < 0)
    {
      operator delete(*v74);
    }

    v74 -= 3;
    v75 += 24;
  }

  while (v75);
  TParam::~TParam(this + 469);
  this[297] = &unk_287528A10;
  v86 = this + 466;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 463;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 460;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  for (i = 0; i != -144; i -= 3)
  {
    if (SHIBYTE(this[i + 459]) < 0)
    {
      operator delete(this[i + 457]);
    }
  }

  TParam::~TParam(this + 297);
  v77 = 0;
  this[266] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v77 + 296]) < 0)
    {
      operator delete(this[v77 + 294]);
    }

    v77 -= 3;
  }

  while (v77 != -6);
  TParam::~TParam(this + 266);
  v78 = 0;
  this[235] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v78 + 265]) < 0)
    {
      operator delete(this[v78 + 263]);
    }

    v78 -= 3;
  }

  while (v78 != -6);
  TParam::~TParam(this + 235);
  v79 = 0;
  this[204] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v79 + 234]) < 0)
    {
      operator delete(this[v79 + 232]);
    }

    v79 -= 3;
  }

  while (v79 != -6);
  TParam::~TParam(this + 204);
  v80 = 0;
  this[173] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v80 + 203]) < 0)
    {
      operator delete(this[v80 + 201]);
    }

    v80 -= 3;
  }

  while (v80 != -6);
  TParam::~TParam(this + 173);
  v81 = 0;
  this[142] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v81 + 172]) < 0)
    {
      operator delete(this[v81 + 170]);
    }

    v81 -= 3;
  }

  while (v81 != -6);
  TParam::~TParam(this + 142);
  v82 = 0;
  this[111] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v82 + 141]) < 0)
    {
      operator delete(this[v82 + 139]);
    }

    v82 -= 3;
  }

  while (v82 != -6);
  TParam::~TParam(this + 111);
  v83 = 0;
  this[80] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v83 + 110]) < 0)
    {
      operator delete(this[v83 + 108]);
    }

    v83 -= 3;
  }

  while (v83 != -6);
  TParam::~TParam(this + 80);
  v84 = 0;
  this[49] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v84 + 79]) < 0)
    {
      operator delete(this[v84 + 77]);
    }

    v84 -= 3;
  }

  while (v84 != -6);
  TParam::~TParam(this + 49);
  v85 = 0;
  this[18] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v85 + 48]) < 0)
    {
      operator delete(this[v85 + 46]);
    }

    v85 -= 3;
  }

  while (v85 != -6);
  TParam::~TParam(this + 18);
  TParamManager::~TParamManager(this);
}

uint64_t TFloatParam::TFloatParam(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v9 = TParam::TParam(a1, 3, a2, a3, a4, a5, a6);
  *v9 = &unk_287528F10;
  *(v9 + 152) = a7;
  *(v9 + 112) |= 0x200uLL;
  TParam::notifyChange(v9, 0);
  return a1;
}

void CTModelRelevance::~CTModelRelevance(CTModelRelevance *this)
{
  *this = 0;
  v2 = this + 8;
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 8);
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(this + 24);
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(this + 24);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v2);
}

uint64_t sizeObject<DgnArray<DgnPrimArray<long long>>>(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 12;
  }

  else
  {
    v4 = 16;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v11);
  v5 = 0;
  if (a2 != 3)
  {
    v5 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = *(a1 + 8);
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        do
        {
          v5 += sizeObject<DgnPrimArray<double>>(*a1 + v8, a2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v5 += v4 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v10);
  return v5;
}

uint64_t CTModelRelevance::computeModelRelevance(CTModelRelevance *this, PelMgr *a2, unsigned int a3, double a4, int a5, int a6, int a7, int a8, char a9)
{
  *this = 0;
  v14 = *(a2 + 33);
  v223 = *(a2 + 4);
  v15 = (a6 ^ 1 | a7) == 1 && a5 == 0;
  if (!v15 || (a9 & 1) == 0)
  {
    v17 = v14 + 1;
LABEL_11:
    v16 = 1;
    v222 = v17;
    goto LABEL_12;
  }

  v16 = 0;
  v17 = v14 + 1;
  v222 = 2;
  if (v223 == 1 && (a8 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v18 = *(this + 5);
  if (v14 > v18)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 8, v14 - v18, 0);
  }

  v221 = v17;
  v226 = this;
  v19 = *(this + 4);
  v220 = a3;
  if (v19 <= v14)
  {
    v20 = this;
    if (v19 < v14)
    {
      v23 = v14 - v19;
      v24 = 16 * v19;
      do
      {
        v25 = (*(this + 1) + v24);
        *v25 = 0;
        v25[1] = 0;
        v24 += 16;
        --v23;
      }

      while (v23);
    }
  }

  else
  {
    v20 = this;
    if (v19 > v14)
    {
      v21 = v19;
      v22 = 16 * v19 - 16;
      do
      {
        --v21;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 1) + v22);
        v22 -= 16;
      }

      while (v21 > v14);
    }
  }

  *(v20 + 4) = v14;
  v26 = v20;
  if (v14)
  {
    v27 = 0;
    while (1)
    {
      v28 = *(v20 + 1) + v27;
      v29 = *(v28 + 12);
      if (v222 > v29)
      {
        break;
      }

      *(v28 + 8) = v222;
      if (v222)
      {
        goto LABEL_27;
      }

LABEL_28:
      v27 += 16;
      if (16 * v14 == v27)
      {
        goto LABEL_29;
      }
    }

    DgnPrimArray<unsigned long long>::reallocElts(*(v20 + 1) + v27, v222 - v29, 0);
    *(v28 + 8) = v222;
LABEL_27:
    bzero(*(*(v20 + 1) + v27), 8 * v222);
    goto LABEL_28;
  }

LABEL_29:
  v30 = a8;
  if (v223 != 1)
  {
    v30 = 1;
  }

  if (v30)
  {
    v31 = v14;
  }

  else
  {
    v31 = (v221 * v14) >> 1;
  }

  v26[10] = v31;
  v32 = v26[9];
  if (v31 > v32)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts((v26 + 6), v31 - v32, 0);
  }

  v33 = v26[8];
  if (v33 <= v31)
  {
    v34 = v226;
    if (v33 < v31)
    {
      v37 = v31 - v33;
      v38 = 16 * v33;
      do
      {
        v39 = (*(v226 + 3) + v38);
        *v39 = 0;
        v39[1] = 0;
        v38 += 16;
        --v37;
      }

      while (v37);
    }
  }

  else
  {
    v34 = v226;
    if (v33 > v31)
    {
      v35 = v33;
      v36 = 16 * v33 - 16;
      do
      {
        DgnArray<DgnPrimArray<unsigned char>>::releaseAll(*(v34 + 3) + v36);
        --v35;
        v36 -= 16;
        v34 = v226;
      }

      while (v35 > v31);
    }
  }

  *(v34 + 8) = v31;
  v40 = v222;
  v229 = v16;
  if (*(v34 + 10))
  {
    v41 = 0;
    v42 = v222;
    do
    {
      v227 = v41;
      v43 = *(v34 + 3) + 16 * v41;
      v44 = *(v43 + 12);
      if (v40 > v44)
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(v43, v40 - v44, 0);
      }

      v45 = *(v43 + 8);
      if (v45 <= v40)
      {
        if (v45 < v40)
        {
          v48 = v222 - v45;
          v49 = 16 * v45;
          do
          {
            v50 = (*v43 + v49);
            *v50 = 0;
            v50[1] = 0;
            v49 += 16;
            --v48;
          }

          while (v48);
        }
      }

      else if (v45 > v40)
      {
        v46 = v45;
        v47 = 16 * v45 - 16;
        do
        {
          --v46;
          DgnPrimArray<unsigned int>::~DgnPrimArray(*v43 + v47);
          v47 -= 16;
        }

        while (v46 > v42);
      }

      *(v43 + 8) = v222;
      if (v222)
      {
        v51 = 0;
        v52 = *(*(v226 + 3) + 16 * v227);
        v53 = 8;
        v54 = 8;
        v55 = v52;
        do
        {
          v56 = *(v52 + v54 + 4);
          if (v51 >= v56)
          {
            DgnPrimArray<unsigned long long>::reallocElts(v52 + v54 - 8, (v51 - v56 + 1), 0);
            v55 = *(*(v226 + 3) + 16 * v227);
          }

          *(v52 + v54) = ++v51;
          bzero(*(v55 + v54 - 8), v53);
          v54 += 16;
          v53 += 8;
          v52 = v55;
        }

        while (v222 != v51);
      }

      v34 = v226;
      v41 = v227 + 1;
      v40 = v222;
      v16 = v229;
      v42 = v222;
    }

    while (v227 + 1 < *(v226 + 10));
  }

  v242[0] = 0;
  v242[1] = 0;
  v240 = 0;
  v241 = 0;
  if (!v221)
  {
    v58 = 0;
    LODWORD(v241) = 0;
    v238 = 0;
    v239 = 0;
LABEL_69:
    if (v58 < v221)
    {
      v61 = v221 - v58;
      v62 = 2 * v58;
      do
      {
        v63 = &v238[v62];
        *v63 = 0;
        v63[1] = 0;
        v62 += 2;
        --v61;
      }

      while (v61);
    }

LABEL_72:
    LODWORD(v239) = v221;
    if (!v221)
    {
      goto LABEL_85;
    }

    goto LABEL_75;
  }

  v232 = 0;
  v57 = realloc_array(0, &v232, 8 * v221, 0, 0, 1);
  v239 = 0;
  v240 = v232;
  LODWORD(v241) = v221;
  HIDWORD(v241) = v57 >> 3;
  v238 = 0;
  v232 = 0;
  HIDWORD(v239) = realloc_array(0, &v232, 16 * v221, 0, 0, 1) >> 4;
  v238 = v232;
  v58 = v239;
  if (v239 <= v221)
  {
    goto LABEL_69;
  }

  if (v239 > v221)
  {
    v59 = v239;
    v60 = 16 * v239 - 16;
    do
    {
      --v59;
      DgnPrimArray<unsigned int>::~DgnPrimArray(v238 + v60);
      v60 -= 16;
    }

    while (v59 > v221);
    goto LABEL_72;
  }

  LODWORD(v239) = v221;
LABEL_75:
  v64 = 0;
  v65 = 1;
  v66 = v221;
  do
  {
    v67 = &v238[v64];
    if (v64 * 8)
    {
      v68 = 2;
    }

    else
    {
      v68 = 1;
    }

    if (v16)
    {
      v69 = v65;
    }

    else
    {
      v69 = v68;
    }

    v70 = *(v67 + 3);
    if (v69 > v70)
    {
      DgnPrimArray<unsigned long long>::reallocElts(&v238[v64], v69 - v70, 0);
    }

    *(v67 + 2) = v69;
    v64 += 2;
    ++v65;
    --v66;
  }

  while (v66);
LABEL_85:
  v71 = (v220 * 256.0 + 0.5);
  *v226 = v71;
  v72 = 40.7436654;
  v73 = 100.0 / a4;
  if (v223 == 1)
  {
    v72 = 1.0;
  }

  v74 = ((v71 * v72 + 0.5) & 0x3FFFFFFFFFFFLL) << 10;
  if (v223 == 1)
  {
    v110 = *(a2 + 38);
    v237[0] = 0;
    v237[1] = 0;
    v235 = 0;
    v236 = 0;
    if (a8)
    {
      v111 = 1;
    }

    else
    {
      v111 = v14;
    }

    v112 = v111 * v14;
    if (v111 * v14)
    {
      v235 = MemChunkAlloc(8 * (v111 * v14), 0);
      v236 = v112;
    }

    v113 = 0;
    v224 = 0;
    v225 = 0;
    v114 = 1.0 / (1 << (*(a2 + 40) + *(a2 + 41)));
    v76 = v222;
    v115 = v74;
    while (1)
    {
      if (!PelMgr::getComponentByIndex(a2, v113, v242, v237))
      {
        DgnPrimFixArray<double>::~DgnPrimFixArray(&v235);
        DgnPrimArray<unsigned int>::~DgnPrimArray(v237);
        goto LABEL_246;
      }

      v116 = v240;
      *v240 = 1;
      if (v14)
      {
        v117 = v242[0];
        v118 = v116 + 1;
        v119 = v14;
        do
        {
          v120 = *v117++;
          *v118++ = v120;
          --v119;
        }

        while (v119);
      }

      v121 = v238;
      **v238 = 0x400000;
      if (v221 >= 2)
      {
        v122 = 1;
        do
        {
          v123 = 0;
          v124 = v122++;
          if (v122 <= 1)
          {
            v125 = 1;
          }

          else
          {
            v125 = v122;
          }

          if (v229)
          {
            v126 = 1;
          }

          else
          {
            v126 = v124;
          }

          v127 = v121[2 * v124];
          if (!v229)
          {
            v125 = 2;
          }

          do
          {
            v128 = v123;
            if (v123)
            {
              v129 = 8;
            }

            else
            {
              v129 = 15;
            }

            *v127++ = (v116[v124] << v129) * v116[v123];
            v123 += v126;
            --v125;
          }

          while (v125);
        }

        while (v122 != v221);
        v130 = 256;
        if (!v128)
        {
          v130 = 0x8000;
        }

        v225 = v130;
      }

      if (a8)
      {
        break;
      }

      LODWORD(v232) = v14;
      HIDWORD(v232) = v14;
      v234 = 0;
      v233 = 0;
      if (v14 * v14)
      {
        v233 = MemChunkAlloc(8 * (v14 * v14), 0);
        v234 = v14 * v14;
      }

      if (v14)
      {
        v143 = 0;
        v144 = v235;
        do
        {
          v145 = 0;
          v146 = v237[0];
          v147 = v232;
          v148 = v233;
          do
          {
            if (v110)
            {
              v149 = *(a2 + 23);
              v150 = 0.0;
              v151 = v110;
              v152 = v146;
              do
              {
                v153 = *v152++;
                v154 = v153;
                v155 = *v149;
                v149 += 2;
                v150 = v150 + v154 * *(*(v155 + 16 * v143) + 4 * v145);
                --v151;
              }

              while (v151);
            }

            else
            {
              v150 = 0.0;
            }

            v156 = v114 * v150;
            *&v144[(v14 * v143 + v145)] = v156;
            if (a6)
            {
              *&v148[(v143 + v147 * v145)] = v156;
            }

            ++v145;
          }

          while (v145 != v14);
          ++v143;
        }

        while (v143 != v14);
      }

      if (a6)
      {
        DgnMatrix::invert(&v230, &v232);
        if (v14)
        {
          v157 = 0;
          v158 = v230;
          v159 = v231;
          v160 = v238;
          do
          {
            if (v229)
            {
              v161 = v157;
            }

            else
            {
              v161 = 1;
            }

            v162 = v157 + 1;
            if (v161)
            {
              v163 = 0;
              v164 = v160[2 * v162];
              do
              {
                if (v229)
                {
                  v165 = v163;
                }

                else
                {
                  v165 = v157;
                }

                if (v229)
                {
                  v166 = v163 + 1;
                }

                else
                {
                  v166 = 1;
                }

                v164[v166] += (*(v159 + 8 * (v157 + v158 * v165)) * v225);
                ++v163;
              }

              while (v161 != v163);
            }

            ++v157;
          }

          while (v162 != v14);
        }

        DgnPrimFixArray<double>::~DgnPrimFixArray(&v231);
      }

      DgnPrimFixArray<double>::~DgnPrimFixArray(&v233);
      if (v14)
      {
        goto LABEL_203;
      }

LABEL_224:
      v186 = *(v226 + 10);
      if (v186)
      {
        v187 = 0;
        v188 = 0;
        v189 = 0;
        v190 = v235;
        v191 = v238;
        do
        {
          if (a8)
          {
            v192 = v187;
          }

          else
          {
            v192 = v188 + v189 * v14;
            if (v188 + 1 <= v189)
            {
              ++v188;
            }

            else
            {
              ++v189;
              v188 = 0;
            }
          }

          v193 = *&v190[v192];
          if (v193 < 0.0)
          {
            v194 = -0.5;
          }

          else
          {
            v194 = 0.5;
          }

          v195 = v187 + 1;
          if (v222)
          {
            v196 = 0;
            v197 = v194 + v193 * v115;
            if (v229)
            {
              v198 = 1;
            }

            else
            {
              v198 = v187 + 1;
            }

            v199 = *(*(v226 + 3) + 16 * v187);
            v200 = 1;
            do
            {
              v201 = 0;
              v202 = v191[2 * (v198 * v196)];
              v203 = *(v199 + 16 * v196);
              do
              {
                *(v203 + 8 * v201) += (v202[v201] * v197) >> 18;
                ++v201;
              }

              while (v200 != v201);
              ++v196;
              ++v200;
            }

            while (v196 != v222);
          }

          v187 = v195;
        }

        while (v195 != v186);
      }

      v113 = (++v224 * v73 + 0.5);
    }

    if (!v14)
    {
      goto LABEL_224;
    }

    v131 = 0;
    v132 = v237[0];
    v133 = v235;
    do
    {
      if (v110)
      {
        v134 = *(a2 + 23);
        v135 = 0.0;
        v136 = v110;
        v137 = v132;
        do
        {
          v138 = *v137++;
          v139 = v138;
          v140 = *v134;
          v134 += 2;
          v135 = v135 + v139 * *(*(v140 + 16 * v131) + 4 * v131);
          --v136;
        }

        while (v136);
      }

      else
      {
        v135 = 0.0;
      }

      v141 = v114 * v135;
      *&v133[v131] = v141;
      if (a6)
      {
        v141 = v225 / v141;
        if (v229)
        {
          v142 = v131 + 1;
        }

        else
        {
          v142 = 1;
        }

        ++v131;
        v121[2 * v131][v142] += v141;
      }

      else
      {
        ++v131;
      }
    }

    while (v131 != v14);
LABEL_203:
    v167 = 0;
    v168 = 0;
    v169 = v235;
    v170 = v242[0];
    v171 = v240;
    do
    {
      if (a8)
      {
        LODWORD(v141) = v170[v168];
        v172 = *&v169[v168] * *&v141;
      }

      else
      {
        v172 = 0.0;
        v173 = v14;
        v174 = v170;
        v175 = v167;
        do
        {
          v176 = *v174++;
          v172 = v172 + *&v169[v175++] * v176;
          --v173;
        }

        while (v173);
      }

      if (v172 < 0.0)
      {
        v141 = -0.5;
      }

      else
      {
        v141 = 0.5;
      }

      v177 = v168 + 1;
      if (v222)
      {
        v178 = 0;
        v179 = v141 + v172 * v115;
        if (v229)
        {
          v180 = 1;
        }

        else
        {
          v180 = v168 + 1;
        }

        v181 = *(*(v226 + 1) + 16 * v168);
        v182 = v222;
        do
        {
          v183 = v178;
          if (v178)
          {
            v184 = 8;
          }

          else
          {
            v184 = 15;
          }

          *v181++ += (v171[v183] * (v179 << v184)) >> 18;
          v178 = v183 + v180;
          --v182;
        }

        while (v182);
        v185 = 256;
        if (!v183)
        {
          v185 = 0x8000;
        }

        v225 = v185;
      }

      v167 += v14;
      v168 = v177;
    }

    while (v177 != v14);
    goto LABEL_224;
  }

  v75 = 0;
  v224 = 0;
  v232 = 0;
  v233 = 0;
  v76 = v222;
  while (PelMgr::getComponentByIndex(a2, v75, v242, &v232))
  {
    v77 = v240;
    *v240 = 1;
    if (v14)
    {
      v78 = v242[0];
      v79 = v77 + 1;
      v80 = v14;
      do
      {
        v81 = *v78++;
        *v79++ = v81;
        --v80;
      }

      while (v80);
    }

    v82 = v238;
    **v238 = 0x400000;
    if (v221 >= 2)
    {
      v83 = v232 - 4;
      v84 = 1;
      do
      {
        v85 = 0;
        v86 = v84++;
        if (v229)
        {
          LODWORD(v87) = v84;
        }

        else
        {
          LODWORD(v87) = 2;
        }

        if (v229)
        {
          v88 = 1;
        }

        else
        {
          v88 = v86;
        }

        v89 = v82[2 * v86];
        v90 = v87 - 1;
        if (v87 <= 1)
        {
          v87 = 1;
        }

        else
        {
          v87 = v87;
        }

        v91 = v82[2 * v86];
        do
        {
          if (v85)
          {
            v92 = 8;
          }

          else
          {
            v92 = 15;
          }

          *v91++ = (v77[v86] << v92) * v77[v85];
          v85 += v88;
          --v87;
        }

        while (v87);
        if (a6)
        {
          v89[v90] += (((*&v83[4 * v86] << v92) * *&v83[4 * v86]) * 0.0245436926);
        }
      }

      while (v84 != v221);
    }

    if (v14)
    {
      v93 = 0;
      v94 = v232;
      v95 = v242[0];
      do
      {
        v96 = v93 + 1;
        if (v222)
        {
          v97 = 0;
          v98 = (v94[v93] * v94[v93]);
          v99 = *(v95 + 4 * v93);
          v100 = 16 * v93;
          v101 = *(*(v226 + 1) + 16 * v93);
          if (v229)
          {
            v102 = 1;
          }

          else
          {
            v102 = v96;
          }

          v103 = *(*(v226 + 3) + v100);
          v104 = 1;
          v105 = (v74 + (v98 >> 1)) / v98;
          do
          {
            v106 = 0;
            if (v102 * v97)
            {
              v107 = 8;
            }

            else
            {
              v107 = 15;
            }

            *(v101 + 8 * v97) += (v77[(v102 * v97)] * v105 * (v99 << v107)) >> 18;
            v108 = v82[2 * (v102 * v97)];
            v109 = *(v103 + 16 * v97);
            do
            {
              *(v109 + 8 * v106) += (v108[v106] * v105) >> 18;
              ++v106;
            }

            while (v104 != v106);
            ++v97;
            ++v104;
          }

          while (v97 != v222);
        }

        v93 = v96;
      }

      while (v96 != v14);
    }

    v75 = (++v224 * v73 + 0.5);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v232);
LABEL_246:
  v204 = v224 >> 1;
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (v76)
      {
        v206 = *(*(v226 + 1) + 16 * i);
        v207 = v76;
        do
        {
          v208 = (*v206 + v204) / v224;
          if ((*v206 & 0x8000000000000000) != 0)
          {
            v208 = -((v204 - *v206) / v224);
          }

          *v206++ = v208;
          --v207;
        }

        while (v207);
      }
    }
  }

  v209 = *(v226 + 10);
  if (v209)
  {
    for (j = 0; j != v209; ++j)
    {
      if (v76)
      {
        v211 = 0;
        v212 = *(*(v226 + 3) + 16 * j);
        v213 = 1;
        do
        {
          v214 = 0;
          v215 = *(v212 + 16 * v211);
          do
          {
            v216 = *(v215 + 8 * v214);
            v217 = (v204 - v216) / v224;
            v15 = v216 >= 0;
            v218 = (v216 + v204) / v224;
            if (!v15)
            {
              v218 = -v217;
            }

            *(v215 + 8 * v214++) = v218;
          }

          while (v213 != v214);
          ++v211;
          ++v213;
        }

        while (v211 != v76);
      }
    }
  }

  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v238);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v240);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v242);
}

void sub_26260CCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a26);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a28);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v29 - 152);
  _Unwind_Resume(a1);
}

uint64_t CTPelAccum::CTPelAccum(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, char a7, char a8, char a9, int a10, uint64_t a11, double **a12, uint64_t a13)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 20) = a4;
  *(a1 + 21) = a5 | a9;
  *(a1 + 23) = a6;
  *(a1 + 24) = a7;
  *(a1 + 25) = a8;
  *(a1 + 26) = a9;
  *(a1 + 28) = a10;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 40) = a11;
  *(a1 + 48) = a13;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 16) = *(a2 + 132);
  *(a1 + 22) = 0;
  CTPelAccum::init(a1, a12);
  return a1;
}

void sub_26260CE2C(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 144);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v2);
  _Unwind_Resume(a1);
}

void CTPelAccum::init(uint64_t a1, double **a2)
{
  if (*(*a1 + 16) == 1)
  {
    v3 = *(a1 + 20) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 28))
  {
    v4 = CTPelAccum::determineNumSignificantSingularValues(a1, a2);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 27) = v4;
  *(a1 + 56) = 0;
  if (*(a1 + 26))
  {
    *(a1 + 160) = 0;
    v5 = (a1 + 160);
    *(a1 + 96) = 0;
    v6 = *(a1 + 16);
    *(a1 + 120) = v6;
    v7 = (a1 + 24);
    if ((*(a1 + 24) & 1) == 0)
    {
      goto LABEL_47;
    }

    v8 = (a1 + 104);
    v9 = *(a1 + 116);
    v10 = v6;
    if (v6 > v9)
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1 + 104, v6 - v9, 0);
      v10 = *(a1 + 16);
    }

    *(a1 + 112) = v6;
    if (!v10)
    {
      goto LABEL_47;
    }

LABEL_46:
    bzero(*v8, 8 * v10);
    goto LABEL_47;
  }

  if (v3)
  {
    v11 = (*(a1 + 16) + *(a1 + 16) * *(a1 + 16)) >> 1;
    *(a1 + 96) = v11;
    v12 = (a1 + 96);
  }

  else
  {
    v12 = (a1 + 96);
    if (v4)
    {
      v11 = *(a1 + 32);
    }

    else
    {
      v11 = *(a1 + 16);
    }

    *(a1 + 96) = v11;
  }

  *(a1 + 160) = v11;
  v5 = (a1 + 160);
  *(a1 + 120) = 0;
  v7 = (a1 + 24);
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_47;
  }

  if (*(*a1 + 16) == 1)
  {
    v13 = *(a1 + 20);
  }

  else
  {
    v13 = 1;
  }

  v14 = *(a1 + 16);
  if (*(a1 + 25) & v13)
  {
    v15 = 2;
  }

  else
  {
    v15 = v14 + 1;
  }

  v16 = *(a1 + 76);
  if (v14 > v16)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 64, v14 - v16, 0);
  }

  v17 = *(a1 + 72);
  if (v17 <= v14)
  {
    if (v17 < v14)
    {
      v20 = v14 - v17;
      v21 = 16 * v17;
      do
      {
        v22 = (*(a1 + 64) + v21);
        *v22 = 0;
        v22[1] = 0;
        v21 += 16;
        --v20;
      }

      while (v20);
    }
  }

  else if (v17 > v14)
  {
    v18 = v17;
    v19 = 16 * v17 - 16;
    do
    {
      --v18;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(a1 + 64) + v19);
      v19 -= 16;
    }

    while (v18 > v14);
  }

  *(a1 + 72) = v14;
  if (*(a1 + 16))
  {
    v23 = 0;
    v24 = 0;
    while (1)
    {
      v25 = *(a1 + 64) + v23;
      v26 = *(v25 + 12);
      if (v15 > v26)
      {
        break;
      }

      *(v25 + 8) = v15;
      if (v15)
      {
        goto LABEL_41;
      }

LABEL_42:
      ++v24;
      v23 += 16;
      if (v24 >= *(a1 + 16))
      {
        goto LABEL_43;
      }
    }

    DgnPrimArray<unsigned long long>::reallocElts(*(a1 + 64) + v23, v15 - v26, 0);
    *(v25 + 8) = v15;
LABEL_41:
    bzero(*(*(a1 + 64) + v23), 8 * v15);
    goto LABEL_42;
  }

LABEL_43:
  v27 = (v15 + v15 * v15) >> 1;
  v8 = (a1 + 80);
  v28 = *(a1 + 92);
  v29 = *(a1 + 96) * v27;
  v10 = v29;
  if (v29 > v28)
  {
    DgnPrimArray<unsigned long long>::reallocElts(a1 + 80, v29 - v28, 0);
    v10 = *v12 * v27;
  }

  *(a1 + 88) = v29;
  if (v10)
  {
    goto LABEL_46;
  }

LABEL_47:
  if (*v7 == 1 && *(a1 + 21) != 1 || *(a1 + 23) == 1)
  {
    v30 = *(a1 + 16);
    v31 = *(a1 + 140);
    if (v30 > v31)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 128, v30 - v31, 0);
    }

    v32 = *(a1 + 136);
    if (v32 <= v30)
    {
      if (v32 < v30)
      {
        v35 = v30 - v32;
        v36 = 16 * v32;
        do
        {
          v37 = (*(a1 + 128) + v36);
          *v37 = 0;
          v37[1] = 0;
          v36 += 16;
          --v35;
        }

        while (v35);
      }
    }

    else if (v32 > v30)
    {
      v33 = v32;
      v34 = 16 * v32 - 16;
      do
      {
        --v33;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*(a1 + 128) + v34);
        v34 -= 16;
      }

      while (v33 > v30);
    }

    v38 = v30 + 1;
    *(a1 + 136) = v30;
    if (*(a1 + 16))
    {
      v39 = 0;
      v40 = 0;
      while (1)
      {
        v41 = *(a1 + 128) + v39;
        v42 = *(v41 + 12);
        if (v38 > v42)
        {
          break;
        }

        *(v41 + 8) = v38;
        if (v30 != -1)
        {
          goto LABEL_65;
        }

LABEL_66:
        ++v40;
        v39 += 16;
        if (v40 >= *(a1 + 16))
        {
          goto LABEL_67;
        }
      }

      DgnPrimArray<unsigned long long>::reallocElts(*(a1 + 128) + v39, v38 - v42, 0);
      *(v41 + 8) = v38;
LABEL_65:
      bzero(*(*(a1 + 128) + v39), 8 * (v30 + 1));
      goto LABEL_66;
    }

LABEL_67:
    v43 = (v38 * (v30 + 2)) >> 1;
    v44 = *(a1 + 156);
    v45 = *(a1 + 160) * v43;
    v46 = v45;
    if (v45 > v44)
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1 + 144, v45 - v44, 0);
      v46 = *v5 * v43;
    }

    *(a1 + 152) = v45;
    if (v46)
    {
      v47 = *(a1 + 144);

      bzero(v47, 8 * v46);
    }
  }
}

void CTPelAccum::~CTPelAccum(CTPelAccum *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 144);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 104);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 80);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 64);
}

uint64_t CTPelAccum::determineNumSignificantSingularValues(uint64_t a1, double **a2)
{
  v2 = 0;
  if (a2)
  {
    if (*(a1 + 40))
    {
      v2 = *(a1 + 48);
      if (v2)
      {
        v3 = *(*a1 + 132);
        v4 = **a2;
        v5 = 0.0 - v4;
        if (v4 < 0.0)
        {
          v4 = 0.0 - v4;
        }

        if (v3 < 2)
        {
          LODWORD(v7) = 1;
        }

        else
        {
          LODWORD(v5) = *(a1 + 28);
          v6 = *&v5 * 0.01 * v4;
          v7 = 1;
          while (1)
          {
            v8 = (*a2)[v7];
            if (v8 < 0.0)
            {
              v8 = 0.0 - v8;
            }

            if (v8 < v6)
            {
              break;
            }

            if (v3 == ++v7)
            {
              LODWORD(v7) = *(*a1 + 132);
              break;
            }
          }
        }

        *(a1 + 32) = v7;
        return 1;
      }
    }
  }

  return v2;
}

void CTPelAccum::reset(CTPelAccum *this)
{
  *(this + 7) = 0;
  if (*(this + 24) != 1)
  {
    goto LABEL_21;
  }

  if (*(this + 26) == 1)
  {
    v2 = (this + 104);
    v3 = *(this + 4);
    v4 = *(this + 29);
    v5 = v3;
    if (v3 > v4)
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 104, v3 - v4, 0);
      v5 = *(this + 4);
    }

    *(this + 28) = v3;
    if (!v5)
    {
      goto LABEL_21;
    }

LABEL_20:
    bzero(*v2, 8 * v5);
    goto LABEL_21;
  }

  if (*(*this + 16) == 1)
  {
    v6 = *(this + 20);
  }

  else
  {
    v6 = 1;
  }

  v7 = *(this + 25) & v6;
  v8 = *(this + 4);
  if (v7)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8 + 1;
  }

  if (v8)
  {
    v10 = 0;
    v11 = 16 * v8;
    do
    {
      if (v9)
      {
        bzero(*(*(this + 8) + v10), 8 * v9);
      }

      v10 += 16;
    }

    while (v11 != v10);
  }

  v5 = *(this + 24) * ((v9 + v9 * v9) >> 1);
  if (v5)
  {
    v2 = (this + 80);
    goto LABEL_20;
  }

LABEL_21:
  if (*(this + 24) == 1 && *(this + 21) != 1 || *(this + 23) == 1)
  {
    v12 = *(this + 4);
    if (v12)
    {
      v13 = 0;
      v14 = v12 + 1;
      do
      {
        if (v12 != -1)
        {
          bzero(*(*(this + 16) + v13), 8 * (v12 + 1));
        }

        v13 += 16;
      }

      while (16 * v12 != v13);
    }

    else
    {
      v14 = 1;
    }

    v15 = *(this + 40);
    if (v15 * ((v14 * (v12 + 2)) >> 1))
    {
      bzero(*(this + 18), 8 * v15 * ((v14 * (v12 + 2)) >> 1));
    }
  }

  *(this + 22) = 0;
}

uint64_t writeObject<DgnPrimArray<long long>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<unsigned long long>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void CTPelAccum::addAccum(uint64_t this, const CTPelAccum *a2, char a3)
{
  *(this + 56) += *(a2 + 7);
  if (*(this + 24) != 1)
  {
    goto LABEL_37;
  }

  if (*(this + 26) == 1)
  {
    v4 = *(this + 16);
    if (v4)
    {
      v5 = *(a2 + 13);
      v6 = *(this + 104);
      v7 = *(this + 16);
      do
      {
        v8 = *v5++;
        *v6++ += v8;
        --v7;
      }

      while (v7);
      LODWORD(v9) = v4;
    }

    else
    {
      LODWORD(v9) = 0;
    }
  }

  else
  {
    if (*(*this + 16) == 1)
    {
      v10 = *(this + 20);
    }

    else
    {
      v10 = 1;
    }

    v9 = *(this + 16);
    if (*(this + 25) & v10)
    {
      v11 = 2;
    }

    else
    {
      v11 = (v9 + 1);
    }

    if (v9)
    {
      v12 = 0;
      v13 = *(a2 + 8);
      do
      {
        if (v11)
        {
          v14 = *(v13 + 16 * v12);
          v15 = *(*(this + 64) + 16 * v12);
          v16 = v11;
          do
          {
            v17 = *v14++;
            *v15++ += v17;
            --v16;
          }

          while (v16);
        }

        ++v12;
      }

      while (v12 != v9);
    }

    v53 = (v11 + v11 * v11) >> 1;
    if ((a3 & 1) != 0 || *(a2 + 27) != 1)
    {
      v26 = *(this + 96) * v53;
      if (v26)
      {
        v27 = *(a2 + 10);
        v28 = *(this + 80);
        do
        {
          v29 = *v27++;
          *v28++ += v29;
          --v26;
        }

        while (v26);
      }
    }

    else
    {
      v51 = *(this + 96);
      if (v51)
      {
        v48 = a3;
        v49 = this;
        v57 = 0;
        v18 = 0;
        v55 = v9;
        do
        {
          if (v9 != -1)
          {
            v19 = 0;
            v20 = 0;
            v21 = *(v49 + 80);
            v22 = 2;
            v23 = 1;
            do
            {
              v24 = 0;
              do
              {
                *(v21 + 8 * (v57 + (v19 >> 1) + v24)) += (CTPelAccum::getDataDataAccumUnscaled(a2, v18, v20, v24) + 0.5);
                ++v24;
              }

              while (v23 != v24);
              ++v23;
              v19 += v22;
              v22 += 2;
              LODWORD(v9) = v55;
            }

            while (v20++ != v55);
          }

          ++v18;
          v57 += v53;
        }

        while (v18 != v51);
        this = v49;
        a3 = v48;
      }
    }
  }

  if (*(this + 21) == 1)
  {
LABEL_37:
    if (*(this + 23) != 1)
    {
      return;
    }

    LODWORD(v9) = *(this + 16);
  }

  if (v9)
  {
    v30 = 0;
    v31 = v9 + 1;
    v32 = *(a2 + 16);
    do
    {
      if (v9 != -1)
      {
        v33 = *(v32 + 16 * v30);
        v34 = *(*(this + 128) + 16 * v30);
        v35 = (v9 + 1);
        do
        {
          v36 = *v33++;
          *v34++ += v36;
          --v35;
        }

        while (v35);
      }

      ++v30;
    }

    while (v30 != v9);
  }

  else
  {
    v31 = 1;
  }

  v54 = (v31 * (v9 + 2)) >> 1;
  if ((a3 & 1) != 0 || *(a2 + 27) != 1)
  {
    v44 = *(this + 160) * v54;
    if (v44)
    {
      v45 = *(a2 + 18);
      v46 = *(this + 144);
      do
      {
        v47 = *v45++;
        *v46++ += v47;
        --v44;
      }

      while (v44);
    }
  }

  else
  {
    v50 = this;
    v52 = *(this + 160);
    if (v52)
    {
      v58 = 0;
      v37 = 0;
      v56 = v31;
      do
      {
        if (v31)
        {
          v38 = 0;
          v39 = 0;
          v40 = *(v50 + 144);
          v41 = 2;
          v42 = 1;
          do
          {
            v43 = 0;
            v59 = v39 + 1;
            do
            {
              *(v40 + 8 * (v58 + (v38 >> 1) + v43)) += (CTPelAccum::getMeanMeanAccumUnscaled(a2, v37, v39, v43) + 0.5);
              ++v43;
            }

            while (v42 != v43);
            ++v42;
            v38 += v41;
            v41 += 2;
            v31 = v56;
            ++v39;
          }

          while (v59 != v56);
        }

        ++v37;
        v58 += v54;
      }

      while (v37 != v52);
    }
  }
}

double CTPelAccum::getDataDataAccumUnscaled(CTPelAccum *this, unsigned int a2, int a3, int a4)
{
  if (*(*this + 16) == 1)
  {
    v4 = *(this + 20);
  }

  else
  {
    v4 = 1;
  }

  if (*(this + 25) == 1 && (v4 & 1) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = *(this + 4) + 1;
  }

  v6 = a4 + ((a3 + a3 * a3) >> 1);
  v7 = (v5 + v5 * v5) >> 1;
  if (*(this + 27) != 1)
  {
    return *(*(this + 10) + 8 * (v6 + v7 * a2));
  }

  v8 = *(this + 8);
  if (!v8)
  {
    return 0.0;
  }

  v9 = *(this + 6);
  v10 = *v9;
  v11 = *(v9 + 1);
  result = 0.0;
  do
  {
    result = result + *(v11 + 8 * a2) * *(*(this + 10) + 8 * v6);
    v6 += v7;
    a2 += v10;
    --v8;
  }

  while (v8);
  return result;
}

double CTPelAccum::getMeanMeanAccumUnscaled(CTPelAccum *this, unsigned int a2, int a3, int a4)
{
  v4 = a4 + ((a3 + a3 * a3) >> 1);
  v5 = (*(this + 4) + 2 + (*(this + 4) + 2) * *(this + 4)) >> 1;
  if (*(this + 27) != 1)
  {
    return *(*(this + 18) + 8 * (v4 + v5 * a2));
  }

  v6 = *(this + 8);
  if (!v6)
  {
    return 0.0;
  }

  v7 = *(this + 6);
  v8 = *v7;
  v9 = *(v7 + 1);
  result = 0.0;
  do
  {
    result = result + *(v9 + 8 * a2) * *(*(this + 18) + 8 * v4);
    v4 += v5;
    a2 += v8;
    --v6;
  }

  while (v6);
  return result;
}

uint64_t CTPelAccum::scaleAccum(uint64_t this, double a2)
{
  if (a2 != 1.0)
  {
    *(this + 56) = (*(this + 56) * a2 + 0.5);
    if (*(this + 24) != 1)
    {
      goto LABEL_34;
    }

    if (*(this + 26) == 1)
    {
      LODWORD(v2) = *(this + 16);
      if (v2)
      {
        v3 = *(this + 104);
        v4 = *(this + 16);
        do
        {
          if (*v3 < 0)
          {
            v5 = -0.5;
          }

          else
          {
            v5 = 0.5;
          }

          *v3 = (v5 + *v3 * a2);
          ++v3;
          --v4;
        }

        while (v4);
      }
    }

    else
    {
      if (*(*this + 16) == 1)
      {
        v6 = *(this + 20);
      }

      else
      {
        v6 = 1;
      }

      v7 = *(this + 25) & v6;
      v2 = *(this + 16);
      if (v7)
      {
        v8 = 2;
      }

      else
      {
        v8 = (v2 + 1);
      }

      if (v2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (v8)
          {
            v10 = *(*(this + 64) + 16 * i);
            v11 = v8;
            do
            {
              if (*v10 < 0)
              {
                v12 = -0.5;
              }

              else
              {
                v12 = 0.5;
              }

              *v10 = (v12 + *v10 * a2);
              ++v10;
              --v11;
            }

            while (v11);
          }
        }
      }

      v13 = *(this + 96) * ((v8 + v8 * v8) >> 1);
      if (v13)
      {
        v14 = *(this + 80);
        do
        {
          if (*v14 < 0)
          {
            v15 = -0.5;
          }

          else
          {
            v15 = 0.5;
          }

          *v14 = (v15 + *v14 * a2);
          ++v14;
          --v13;
        }

        while (v13);
      }
    }

    if (*(this + 21) == 1)
    {
LABEL_34:
      if (*(this + 23) != 1)
      {
        return this;
      }

      LODWORD(v2) = *(this + 16);
    }

    if (v2)
    {
      v16 = 0;
      v17 = v2 + 1;
      do
      {
        if (v2 != -1)
        {
          v18 = *(*(this + 128) + 16 * v16);
          v19 = (v2 + 1);
          do
          {
            if (*v18 < 0)
            {
              v20 = -0.5;
            }

            else
            {
              v20 = 0.5;
            }

            *v18 = (v20 + *v18 * a2);
            ++v18;
            --v19;
          }

          while (v19);
        }

        ++v16;
      }

      while (v16 != v2);
    }

    else
    {
      v17 = 1;
    }

    v21 = *(this + 160);
    if (v21)
    {
      v22 = 0;
      v23 = 0;
      v24 = (v17 * (v2 + 2)) >> 1;
      do
      {
        if (v17)
        {
          v25 = 0;
          v26 = 0;
          v27 = *(this + 144);
          v28 = 2;
          v29 = 1;
          do
          {
            v30 = v22 + (v25 >> 1);
            ++v26;
            v31 = v29;
            do
            {
              v32 = *(v27 + 8 * v30);
              if (v32 < 0)
              {
                v33 = -0.5;
              }

              else
              {
                v33 = 0.5;
              }

              *(v27 + 8 * v30++) = (v33 + v32 * a2);
              --v31;
            }

            while (v31);
            ++v29;
            v25 += v28;
            v28 += 2;
          }

          while (v26 != v17);
        }

        ++v23;
        v22 += v24;
      }

      while (v23 != v21);
    }
  }

  return this;
}

unint64_t CTPelAccum::sizeObject(uint64_t a1, int a2)
{
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 8;
  }

  else
  {
    v4 = 16;
  }

  v5 = sizeObject<DgnPrimArray<double>>(a1 + 64, a2);
  v6 = sizeObject<unsigned long long>(a1 + 80, a2);
  v7 = sizeObject<unsigned long long>(a1 + 104, a2);
  v8 = sizeObject<DgnPrimArray<double>>(a1 + 128, a2);
  v9 = sizeObject<unsigned long long>(a1 + 144, a2);
  if (a2 == 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

  v11 = 12;
  if (a2 == 3)
  {
    v11 = 0;
  }

  return (v11 & 0xFFFFFFFFFFFFFFFDLL | (2 * (a2 != 3))) + v5 + v6 + v7 + v8 + v9 + ((2 * (a2 != 3)) | (8 * (a2 != 3))) + v10;
}

BOOL CTPelAccum::adaptOneFrame(void *a1, unsigned int a2, BOOL a3, AdaptStats *a4, double a5, double a6, uint64_t a7, uint64_t a8)
{
  if (a5 == 0.0)
  {
    return 0;
  }

  v10 = a7;
  v16 = a1;
  v284 = 0;
  v283 = 0;
  v17 = *(*(*a1 + 288) + 2 * a2);
  v282 = 0u;
  v281 = 0u;
  v280 = 0u;
  v279 = 0u;
  v278 = 0u;
  v277 = 0u;
  v276 = 0u;
  v275 = 0u;
  PelStats::resetStats(v274);
  if (!*(a8 + 8))
  {
    a8 = PelScorer::setFrameStaticsForGenoneAdapt(v16[1], v17, a3, v274);
  }

  v273[0] = 0;
  v273[1] = 0;
  DgnPrimArray<unsigned char>::copyArraySlice(v273, a8, 0, *(a8 + 8));
  ComponentProbs = PelScorer::getComponentProbs(v16[1], a2, &v283, v10);
  if (ComponentProbs == 0.0)
  {
    v8 = 0;
    goto LABEL_237;
  }

  if (*(v16 + 24) == 1)
  {
    v255 = *(v16 + 21) ^ 1;
  }

  else
  {
    v255 = 0;
  }

  v19 = *(*v16 + 16);
  if (v19 == 1)
  {
    v20 = *(v16 + 20);
  }

  else
  {
    v20 = 1;
  }

  v271 = 0;
  v272 = 0;
  v269 = 0;
  v270 = 0;
  v21 = (*(v16 + 4) + 1);
  v267 = 0;
  v22 = realloc_array(0, &v267, v21, 0, 0, 1);
  v271 = v267;
  v272 = __PAIR64__(v22, v21);
  *v267 = 1;
  LODWORD(v23) = *(v16 + 4);
  if (v23)
  {
    v24 = 0;
    do
    {
      v271[v24 + 1] = *(v273[0] + v24);
      v23 = *(v16 + 4);
      ++v24;
    }

    while (v24 < v23);
  }

  if (*(v16 + 24) == 1)
  {
    v25 = *(v16 + 25) & v20;
    v26 = (v23 + 2 + (v23 + 2) * v23) >> 1;
    v27 = 2 * v23 + 2;
    if (v25)
    {
      v28 = v27;
    }

    else
    {
      v28 = v26;
    }

    v29 = v269;
    if (HIDWORD(v270) < v28)
    {
      v267 = 0;
      HIDWORD(v270) = realloc_array(v269, &v267, 8 * v28, 8 * v270, 8 * v270, 1) >> 3;
      v29 = v267;
      v269 = v267;
    }

    LODWORD(v270) = v28;
    *v29 = 0x400000;
    if (v25)
    {
      v29[1] = 0;
    }

    LODWORD(v23) = *(v16 + 4);
    v30 = (v23 + 1);
    if (v30 >= 2)
    {
      v31 = v271;
      v32 = 1;
      do
      {
        v33 = 0;
        v34 = v32++;
        if (v32 <= 1)
        {
          v35 = 1;
        }

        else
        {
          v35 = v32;
        }

        if (v25)
        {
          v36 = v34;
        }

        else
        {
          v36 = 1;
        }

        v37 = 2 * v34;
        if (v25)
        {
          v35 = 2;
        }

        else
        {
          v37 = (v32 * v34) >> 1;
        }

        do
        {
          if (v33)
          {
            v38 = 8;
          }

          else
          {
            v38 = 15;
          }

          v29[v37++] = (v31[v34] << v38) * v31[v33];
          v33 += v36;
          --v35;
        }

        while (v35);
      }

      while (v32 != v30);
    }
  }

  v267 = 0;
  v268 = 0;
  v265 = 0;
  v266 = 0;
  if ((v255 & 1) != 0 || *(v16 + 23) == 1)
  {
    v39 = v23 + 1;
    if (v23 == -1)
    {
      v40 = 0;
      v41 = 0;
    }

    else
    {
      v263 = 0;
      HIDWORD(v268) = realloc_array(0, &v263, 4 * (v23 + 1), 0, 0, 1) >> 2;
      v267 = v263;
      v40 = HIDWORD(v266);
      v41 = (*(v16 + 4) + 2 + (*(v16 + 4) + 2) * *(v16 + 4)) >> 1;
    }

    LODWORD(v268) = v39;
    if (v40 < v41)
    {
      v263 = 0;
      HIDWORD(v266) = realloc_array(v265, &v263, 8 * v41, 8 * v266, 8 * v266, 1) >> 3;
      v265 = v263;
    }

    LODWORD(v266) = v41;
  }

  v42 = (*(*v16 + 456) + 4 * a2);
  v44 = *v42;
  v43 = v42[1];
  v263 = 0;
  v264 = 0;
  v45 = (v43 - v44);
  if (v43 == v44)
  {
    v46 = 0;
    LODWORD(v264) = v43 - v44;
  }

  else
  {
    v262[0] = 0;
    v47 = realloc_array(0, v262, 16 * v45, 0, 0, 1);
    v48 = 0;
    v49 = v47 >> 4;
    v46 = v262[0];
    v263 = v262[0];
    HIDWORD(v264) = v49;
    LODWORD(v264) = v43 - v44;
    v50 = v283;
    v51 = (v262[0] + 8);
    v45 = (v43 - v44);
    do
    {
      *v51 = v48;
      *(v51 - 1) = *(v50 + 8 * v48++) / ComponentProbs;
      v51 += 2;
    }

    while (v43 - v44 != v48);
  }

  v241 = v45;
  mrec_qsort_r<CompAndProb>(v46, v45, 0x10uLL);
  v239 = v19;
  v240 = a4;
  v262[0] = 0;
  v262[1] = 0;
  v261[0] = 0;
  v261[1] = 0;
  v260[0] = 0;
  v260[1] = 0;
  v257[1] = 0;
  v258 = 0;
  v259 = 0;
  v257[0] = 0;
  v52 = *v16;
  if (v19 == 1)
  {
    DgnArray<DgnArray<DgnPrimArray<int>>>::copyArraySlice(v257, (v52 + 184), 0, *(v52 + 192));
    v52 = *v16;
    v53 = *(*v16 + 152);
    v55 = *(*v16 + 160);
    v54 = *(*v16 + 164);
    v56 = *(v16 + 4);
    if (*(v16 + 20))
    {
      v57 = 1;
    }

    else
    {
      v57 = *(v16 + 4);
    }

    v58 = v56 * v57;
    if (v56 * v57 && !v259)
    {
      v258 = MemChunkAlloc(8 * (v56 * v57), 0);
      v259 = v58;
      v52 = *v16;
    }

    v59 = v55 + v54;
  }

  else
  {
    v53 = 0;
    v59 = 0;
  }

  v60 = v241;
  if (v43 == v44)
  {
    v8 = 0;
    goto LABEL_236;
  }

  v61 = 0;
  v62 = 1.0 / (1 << v59);
  v242 = a5 * 256.0;
  v238 = *(*(v52 + 272) + 4 * v17);
  v63 = 0.0;
  v256 = v16;
  do
  {
    v64 = v263 + 16 * v61;
    v65 = *v64;
    v66 = v242 * *v64 + 0.5;
    v67 = v66;
    if (!v66)
    {
      goto LABEL_234;
    }

    v243 = v61;
    v68 = *(v64 + 2);
    v16[7] += v67;
    if (v240)
    {
      AdaptStats::update(v240, *(*(*v16 + 416) + 4 * a2), v66, 256);
    }

    v69 = a6;
    v70 = v67;
    if (v239 == 1)
    {
      PelMgr::unpackPelMixtureComponent(*v16, a2, v68, v262, v260);
      v72 = v70 + 0.5;
    }

    else
    {
      if (*(v16 + 26))
      {
        v73 = 1.0;
      }

      else
      {
        v73 = 40.7436654;
      }

      PelMgr::unpackPelMixtureComponent(*v16, a2, v68, v262, v261);
      v72 = v70 * v73 + 0.5;
    }

    a6 = v69;
    if (v255 & 1) != 0 || (*(v16 + 23))
    {
      v74 = v267;
      v75 = 1;
      *v267 = 1;
      if (*(v16 + 4))
      {
        v76 = 0;
        v77 = v262[0];
        do
        {
          v74[v76 + 1] = v77[v76];
          v78 = *(v16 + 4);
          ++v76;
        }

        while (v76 < v78);
        v75 = v78 + 1;
        if (v78 == -1)
        {
          v75 = 0;
          LODWORD(v78) = -1;
          goto LABEL_92;
        }
      }

      else
      {
        LODWORD(v78) = 0;
      }

      v79 = 0;
      v80 = 0;
      v81 = v265;
      v82 = 2;
      v83 = 1;
      do
      {
        v84 = 0;
        v85 = v80;
        v86 = v74[v80++];
        do
        {
          if (v84 | v85)
          {
            v87 = 15;
          }

          else
          {
            v87 = 22;
          }

          if (v84)
          {
            v87 = 8;
          }

          v81[(v79 >> 1) + v84] = (v86 << v87) * v74[v84];
          ++v84;
        }

        while (v83 != v84);
        ++v83;
        v79 += v82;
        v82 += 2;
      }

      while (v80 != v75);
    }

    else
    {
      LODWORD(v78) = *(v16 + 4);
      v75 = v78 + 1;
    }

LABEL_92:
    v251 = (v72 & 0x3FFFFFFFFFFFLL) << 10;
    v254 = (v75 * (v78 + 2)) >> 1;
    if (v239 != 1)
    {
      v247 = v75;
      if (!v78)
      {
        goto LABEL_233;
      }

      v100 = 0;
      v101 = 0;
      v102 = 0;
      v250 = v261[0];
      v246 = v262[0];
      v252 = *(v16 + 27);
      v245 = v68 + v238;
      v249 = *(v16 + 24);
      v103 = v271;
      v104 = v269;
      v244 = v273[0];
      v105 = v267;
      v248 = v78;
      v106 = v271 + 1;
      v107 = 2;
      while (1)
      {
        v108 = (*(v250 + 4 * v102) * *(v250 + 4 * v102));
        v109 = (v251 + (v108 >> 1)) / v108;
        if (v252)
        {
          v110 = (v251 + (v108 >> 1)) / v108;
          if (v102 < *(v16 + 8))
          {
            v110 = (v251 * *(*(v16[5] + 8) + 8 * (v245 + *v16[5] * v102)) + 0.5);
          }
        }

        else
        {
          v110 = (v251 + (v108 >> 1)) / v108;
        }

        if (!v249)
        {
          goto LABEL_129;
        }

        v111 = v246[v102];
        v112 = v109 * v111;
        if (*(v256 + 25) == 1)
        {
          if ((*(v256 + 26) & 1) == 0)
          {
            v113 = 0;
            v114 = *(v256[8] + 16 * v102);
            v115 = v256[10];
            v116 = 1;
            v117 = 15;
            v118 = 1;
            do
            {
              v119 = v116;
              *(v114 + 8 * v113) += ((v103[v113 * (v102 + 1)] << v117) * v112) >> 18;
              v120 = &v104[16 * ((v107 * v113) >> 1)];
              v121 = v100 + ((v113 + v113 * v113) >> 1);
              v122 = v118;
              do
              {
                v123 = *v120;
                v120 += 8;
                *(v115 + 8 * v121++) += (v123 * v109) >> 18;
                --v122;
              }

              while (v122);
              v116 = 0;
              ++v118;
              v117 = 8;
              v113 = 1;
            }

            while ((v119 & 1) != 0);
            goto LABEL_129;
          }
        }

        else if ((*(v256 + 26) & 1) == 0)
        {
          if (v252)
          {
            v124 = v102 < *(v256 + 8);
          }

          else
          {
            v124 = 1;
          }

          if (v247)
          {
            v125 = 0;
            v126 = 0;
            v127 = *(v256[8] + 16 * v102);
            v128 = 2;
            v129 = v269;
            v130 = 1;
            do
            {
              if (v126)
              {
                v131 = 8;
              }

              else
              {
                v131 = 15;
              }

              *(v127 + 8 * v126) += ((v103[v126] << v131) * v112) >> 18;
              if (v124)
              {
                v132 = v125 >> 1;
                v133 = v256[10];
                v134 = v130;
                v135 = v101 + (v125 >> 1);
                do
                {
                  *(v133 + 8 * v135++) += (v129[v132++] * v110) >> 18;
                  --v134;
                }

                while (v134);
              }

              ++v126;
              ++v130;
              v125 += v128;
              v128 += 2;
            }

            while (v126 != v247);
          }

          goto LABEL_129;
        }

        *(v256[13] + 8 * v102) += ((v72 << 25) * (*(v244 + v102) - v111)) >> 18;
LABEL_129:
        v16 = v256;
        if ((v255 & 1) != 0 || *(v256 + 23) == 1)
        {
          v136 = !v252 || v102 < *(v256 + 8);
          if (v247)
          {
            v137 = 0;
            v138 = 0;
            v139 = *(v256[16] + 16 * v102);
            v140 = 2;
            v141 = v265;
            v142 = 1;
            do
            {
              if (v138)
              {
                v143 = 8;
              }

              else
              {
                v143 = 15;
              }

              *(v139 + 8 * v138) += ((v106[v102] << v143) * v109 * v105[v138]) >> 18;
              if (v136)
              {
                v144 = v137 >> 1;
                v145 = v256[18];
                v146 = v142;
                do
                {
                  *(v145 + 8 * (v101 + v144)) += (v141[v144] * v110) >> 18;
                  ++v144;
                  --v146;
                }

                while (v146);
              }

              ++v138;
              ++v142;
              v137 += v140;
              v140 += 2;
            }

            while (v138 != v247);
          }
        }

        ++v102;
        v101 += v254;
        v107 += 2;
        v100 += 3;
        if (v102 == v248)
        {
          goto LABEL_233;
        }
      }
    }

    v88 = *(v16 + 20);
    if (v88)
    {
      if (v78)
      {
        v89 = 0;
        v90 = v260[0];
        v91 = v257[0];
        v92 = v258;
        do
        {
          v93 = 0.0;
          if (v53)
          {
            v94 = v53;
            v95 = v91;
            v96 = v90;
            do
            {
              v97 = *v96++;
              v98 = v97;
              v99 = *v95;
              v95 += 2;
              v71 = *(*(v99 + 16 * v89) + 4 * v89);
              v93 = v93 + v98 * v71;
              --v94;
            }

            while (v94);
          }

          *&v92[v89++] = v62 * v93;
        }

        while (v89 != v78);
        goto LABEL_153;
      }
    }

    else if (v78)
    {
      v147 = 0;
      v148 = v258;
      do
      {
        v149 = 0;
        v150 = v260[0];
        v151 = v257[0];
        do
        {
          v152 = 0.0;
          if (v53)
          {
            v153 = v53;
            v154 = v151;
            v155 = v150;
            do
            {
              v156 = *v155++;
              v157 = v156;
              v158 = *v154;
              v154 += 2;
              v71 = *(*(v158 + 16 * v147) + 4 * v149);
              v152 = v152 + v157 * v71;
              --v153;
            }

            while (v153);
          }

          *&v148[(v78 * v147 + v149++)] = v62 * v152;
        }

        while (v149 != v78);
        ++v147;
      }

      while (v147 != v78);
LABEL_153:
      v159 = v78 != 0;
      v253 = *(v16 + 24);
      if (v253 == 1 && v78 != 0)
      {
        v161 = 0;
        v162 = 0;
        v163 = v258;
        v164 = v262[0];
        v165 = *(v16 + 25) & v88;
        v166 = v271;
        do
        {
          if (v88)
          {
            LODWORD(v71) = v164[v162];
            v167 = *&v163[v162] * *&v71;
          }

          else
          {
            v167 = 0.0;
            v168 = v78;
            v169 = v164;
            v170 = v161;
            do
            {
              v171 = *v169++;
              v167 = v167 + *&v163[v170++] * v171;
              --v168;
            }

            while (v168);
          }

          if (v167 < 0.0)
          {
            v71 = -0.5;
          }

          else
          {
            v71 = 0.5;
          }

          v172 = (v71 + v167 * v251);
          if (v165)
          {
            v173 = 0;
            v174 = *(v16[8] + 16 * v162);
            v175 = 1;
            v176 = 15;
            do
            {
              v177 = v175;
              *(v174 + 8 * v173) += ((v172 << v176) * v166[v173 * (v162 + 1)]) >> 18;
              v176 = 8;
              v173 = 1;
              v175 = 0;
            }

            while ((v177 & 1) != 0);
          }

          else if (v75)
          {
            v178 = 0;
            v179 = *(v16[8] + 16 * v162);
            do
            {
              if (v178)
              {
                v180 = 8;
              }

              else
              {
                v180 = 15;
              }

              *(v179 + 8 * v178) += ((v172 << v180) * v166[v178]) >> 18;
              ++v178;
            }

            while (v75 != v178);
          }

          ++v162;
          v161 += v78;
        }

        while (v162 != v78);
      }

      if (v255)
      {
LABEL_182:
        v181 = 0;
        v182 = 0;
        v183 = v258;
        v184 = v267;
        if (v78 <= 1)
        {
          v185 = 1;
        }

        else
        {
          v185 = v78;
        }

        v186 = v271 + 1;
        do
        {
          if (v88)
          {
            LOBYTE(v71) = v186[v182];
            v187 = *&v183[v182] * *&v71;
          }

          else
          {
            v187 = 0.0;
            v188 = v186;
            v189 = v185;
            v190 = v181;
            do
            {
              v191 = *v188++;
              v187 = v187 + *&v183[v190++] * v191;
              --v189;
            }

            while (v189);
          }

          if (v187 < 0.0)
          {
            v71 = -0.5;
          }

          else
          {
            v71 = 0.5;
          }

          if (v75)
          {
            v192 = 0;
            v193 = v71 + v187 * v251;
            v194 = *(v16[16] + 16 * v182);
            do
            {
              if (v192)
              {
                v195 = 8;
              }

              else
              {
                v195 = 15;
              }

              *(v194 + 8 * v192) += ((v193 << v195) * v184[v192]) >> 18;
              ++v192;
            }

            while (v75 != v192);
          }

          ++v182;
          v181 += v78;
        }

        while (v182 != v185);
        goto LABEL_200;
      }

      goto LABEL_180;
    }

    LOBYTE(v253) = *(v16 + 24);
    if (v255)
    {
      goto LABEL_200;
    }

    v159 = 0;
LABEL_180:
    if (*(v16 + 23) == 1 && v159)
    {
      goto LABEL_182;
    }

LABEL_200:
    v196 = *(v16 + 24);
    if (v196)
    {
      v197 = v75;
      v198 = 0;
      v199 = 0;
      v200 = 0;
      v201 = 0;
      v202 = 0;
      v203 = v258;
      v204 = v269;
      v205 = v265;
      if (v75 <= 1)
      {
        v206 = 1;
      }

      else
      {
        v206 = v75;
      }

      v207 = 1;
      do
      {
        if (v88)
        {
          v208 = v200;
        }

        else
        {
          v208 = v201 + v202 * v78;
          if (v201 + 1 <= v202)
          {
            ++v201;
          }

          else
          {
            ++v202;
            v201 = 0;
          }
        }

        v209 = *&v203[v208];
        v210 = v207 & 0x7FFFFFFF;
        if (v209 < 0.0)
        {
          v211 = -0.5;
        }

        else
        {
          v211 = 0.5;
        }

        v212 = (v211 + v209 * v251);
        if (v253)
        {
          if (*(v256 + 25) & v88)
          {
            v213 = 0;
            v214 = v256[10];
            v215 = 1;
            v216 = 1;
            do
            {
              v217 = v215;
              v218 = (v204 + 16 * v210 * v213);
              v219 = v198 + ((v213 + v213 * v213) >> 1);
              v220 = v216;
              do
              {
                v221 = *v218++;
                *(v214 + 8 * v219++) += (v221 * v212) >> 18;
                --v220;
              }

              while (v220);
              v215 = 0;
              ++v216;
              v213 = 1;
            }

            while ((v217 & 1) != 0);
          }

          else if (v197)
          {
            v222 = 0;
            v223 = 0;
            v224 = v256[10];
            v225 = 2;
            v226 = 1;
            do
            {
              v227 = v222 >> 1;
              ++v223;
              v228 = v226;
              v229 = v199 + (v222 >> 1);
              do
              {
                *(v224 + 8 * v229++) += (v204[v227++] * v212) >> 18;
                --v228;
              }

              while (v228);
              ++v226;
              v222 += v225;
              v225 += 2;
            }

            while (v223 != v197);
          }
        }

        if (((v255 & 1) != 0 || *(v256 + 23) == 1) && v197)
        {
          v230 = 0;
          v231 = 0;
          v232 = v256[18];
          v233 = 2;
          v234 = 1;
          do
          {
            v235 = v230 >> 1;
            ++v231;
            v236 = v234;
            do
            {
              *(v232 + 8 * (v199 + v235)) += (v205[v235] * v212) >> 18;
              ++v235;
              --v236;
            }

            while (v236);
            ++v234;
            v230 += v233;
            v233 += 2;
          }

          while (v231 != v206);
        }

        ++v200;
        v199 += v254;
        v207 = v210 + 1;
        v198 += 3;
        v16 = v256;
      }

      while (v200 != v196);
    }

LABEL_233:
    v63 = v63 + v65;
    v60 = v241;
    v61 = v243;
    if (v63 > v69)
    {
      break;
    }

LABEL_234:
    ++v61;
  }

  while (v61 != v60);
  v8 = v63 > 0.0;
LABEL_236:
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(v257);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v258);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v260);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v261);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v262);
  DgnIArray<Utterance *>::~DgnIArray(&v263);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v265);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v267);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v269);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v271);
LABEL_237:
  DgnPrimArray<unsigned int>::~DgnPrimArray(v273);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v283);
  return v8;
}

void sub_26260EE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a46);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v49 - 168);
  _Unwind_Resume(a1);
}

unint64_t mrec_qsort_r<CompAndProb>(unint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = -a3;
  v5 = a3 != 8;
  v6 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = a3 != 8;
  }

  if (a2 < 7)
  {
LABEL_5:
    if ((a2 * a3) > a3)
    {
      v8 = result + a2 * a3;
      v9 = result + a3;
      v10 = result;
      do
      {
        if (v9 > result)
        {
          v11 = v10;
          v12 = v9;
          do
          {
            v13 = v12;
            v12 += v4;
            v14 = *v13;
            if (*v12 == *v13)
            {
              if (*(v12 + 8) <= *(v13 + 8))
              {
                break;
              }
            }

            else if (*v12 > *v13)
            {
              break;
            }

            if (v7)
            {
              v15 = 0;
              if (v6)
              {
                v16 = v12;
                do
                {
                  v17 = *(v13 + 8 * v15);
                  *(v13 + 8 * v15) = *v16;
                  *v16++ = v17;
                  ++v15;
                }

                while (a3 >> 3 != v15);
              }

              else
              {
                v18 = a3;
                do
                {
                  v19 = *(v13 + v15);
                  *(v13 + v15) = *(v11 + v15);
                  *(v11 + v15++) = v19;
                  --v18;
                }

                while (v18);
              }
            }

            else
            {
              *v13 = *v12;
              *v12 = v14;
            }

            v11 += v4;
          }

          while (v12 > result);
        }

        v9 += a3;
        v10 += a3;
      }

      while (v9 < v8);
    }

    return result;
  }

  v20 = a3 >> 3;
  while (2)
  {
    v21 = (result + (a2 >> 1) * a3);
    if (a2 == 7)
    {
      goto LABEL_26;
    }

    v25 = result + (a2 - 1) * a3;
    if (a2 < 0x29)
    {
      v27 = result;
      goto LABEL_111;
    }

    v26 = (a2 >> 3) * a3;
    v27 = result + v26;
    v28 = result + 2 * v26;
    v29 = *result;
    v30 = *(result + v26);
    if (*result == v30)
    {
      if (*(result + 8) < *(v27 + 8))
      {
        goto LABEL_34;
      }
    }

    else if (*result > v30)
    {
LABEL_34:
      v31 = *v28;
      if (v30 == *v28)
      {
        if (*(v27 + 8) < *(v28 + 8))
        {
          goto LABEL_128;
        }
      }

      else if (v30 > *v28)
      {
        goto LABEL_128;
      }

      if (v29 == v31)
      {
        v27 = result + 2 * v26;
        if (*(result + 8) < *(v28 + 8))
        {
          goto LABEL_128;
        }
      }

      else
      {
        v27 = result + 2 * v26;
        if (v29 > v31)
        {
          goto LABEL_128;
        }
      }

      v27 = result;
      goto LABEL_128;
    }

    v77 = *v28;
    if (v30 == *v28)
    {
      if (*(v27 + 8) > *(v28 + 8))
      {
        goto LABEL_128;
      }
    }

    else if (v30 <= *v28)
    {
      goto LABEL_128;
    }

    if (v29 != v77)
    {
      v27 = result;
      if (v29 > v77)
      {
        goto LABEL_128;
      }

      goto LABEL_127;
    }

    v27 = result;
    if (*(result + 8) >= *(v28 + 8))
    {
LABEL_127:
      v27 = result + 2 * v26;
    }

LABEL_128:
    v78 = &v21[-v26];
    v79 = &v21[v26];
    v80 = *&v21[-v26];
    v81 = *v21;
    if (v80 == *v21)
    {
      if (*(v78 + 2) < *(v21 + 2))
      {
        goto LABEL_130;
      }
    }

    else if (v80 > *v21)
    {
LABEL_130:
      v82 = *v79;
      if (v81 == *v79)
      {
        if (*(v21 + 2) < *(v79 + 2))
        {
          goto LABEL_149;
        }
      }

      else if (v81 > *v79)
      {
        goto LABEL_149;
      }

      if (v80 == v82)
      {
        v21 += v26;
        if (*(v78 + 2) < *(v79 + 2))
        {
          goto LABEL_149;
        }
      }

      else
      {
        v21 += v26;
        if (v80 > v82)
        {
          goto LABEL_149;
        }
      }

      v21 = v78;
      goto LABEL_149;
    }

    v83 = *v79;
    if (v81 == *v79)
    {
      if (*(v21 + 2) > *(v79 + 2))
      {
        goto LABEL_149;
      }
    }

    else if (v81 <= *v79)
    {
      goto LABEL_149;
    }

    if (v80 != v83)
    {
      v21 -= v26;
      if (v80 > v83)
      {
        goto LABEL_149;
      }

      goto LABEL_148;
    }

    v21 -= v26;
    if (*(v78 + 2) >= *(v79 + 2))
    {
LABEL_148:
      v21 = v79;
    }

LABEL_149:
    v84 = -v26;
    v76 = v25 - 2 * v26;
    v85 = v25 + v84;
    v86 = *v76;
    v87 = *(v25 + v84);
    if (*v76 == v87)
    {
      if (*(v76 + 8) < *(v85 + 8))
      {
        goto LABEL_151;
      }

LABEL_155:
      v89 = *v25;
      if (v87 == *v25)
      {
        if (*(v85 + 8) > *(v25 + 8))
        {
          goto LABEL_166;
        }
      }

      else if (v87 <= *v25)
      {
        goto LABEL_166;
      }

      if (v86 == v89)
      {
        if (*(v76 + 8) >= *(v25 + 8))
        {
          goto LABEL_111;
        }
      }

      else if (v86 <= v89)
      {
        goto LABEL_111;
      }

      goto LABEL_167;
    }

    if (*v76 <= v87)
    {
      goto LABEL_155;
    }

LABEL_151:
    v88 = *v25;
    if (v87 == *v25)
    {
      if (*(v85 + 8) < *(v25 + 8))
      {
        goto LABEL_166;
      }

      goto LABEL_159;
    }

    if (v87 > *v25)
    {
LABEL_166:
      v76 = v25 + v84;
      goto LABEL_167;
    }

LABEL_159:
    if (v86 == v88)
    {
      if (*(v76 + 8) >= *(v25 + 8))
      {
        goto LABEL_167;
      }

LABEL_111:
      v76 = result + (a2 - 1) * a3;
      goto LABEL_167;
    }

    if (v86 > v88)
    {
      goto LABEL_111;
    }

LABEL_167:
    v90 = *v27;
    v91 = *v21;
    if (*v27 == *v21)
    {
      if (*(v27 + 8) < *(v21 + 2))
      {
        goto LABEL_169;
      }

LABEL_173:
      v93 = *v76;
      if (v91 == *v76)
      {
        if (*(v21 + 2) > *(v76 + 8))
        {
          goto LABEL_26;
        }
      }

      else if (v91 <= *v76)
      {
        goto LABEL_26;
      }

      if (v90 == v93)
      {
        v21 = v27;
        if (*(v27 + 8) < *(v76 + 8))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v21 = v27;
        if (v90 > v93)
        {
          goto LABEL_26;
        }
      }

      v21 = v76;
      goto LABEL_26;
    }

    if (*v27 <= *v21)
    {
      goto LABEL_173;
    }

LABEL_169:
    v92 = *v76;
    if (v91 == *v76)
    {
      if (*(v21 + 2) < *(v76 + 8))
      {
        goto LABEL_26;
      }
    }

    else if (v91 > *v76)
    {
      goto LABEL_26;
    }

    if (v90 == v92)
    {
      v21 = v76;
      if (*(v27 + 8) >= *(v76 + 8))
      {
        goto LABEL_185;
      }
    }

    else
    {
      v21 = v76;
      if (v90 <= v92)
      {
LABEL_185:
        v21 = v27;
      }
    }

LABEL_26:
    if (v7)
    {
      if (v6)
      {
        v22 = result;
        v23 = a3 >> 3;
        do
        {
          v24 = *v22;
          *v22++ = *v21;
          *v21 = v24;
          v21 += 8;
          --v23;
        }

        while (v23);
      }

      else
      {
        v33 = a3;
        v34 = result;
        do
        {
          v35 = *v34;
          *v34++ = *v21;
          *v21++ = v35;
          --v33;
        }

        while (v33);
      }
    }

    else
    {
      v32 = *result;
      *result = *v21;
      *v21 = v32;
    }

    v36 = 0;
    v37 = result + a3;
    v38 = (result + (a2 - 1) * a3);
    v39 = v38;
    v40 = (result + a3);
    v41 = (result + a3);
    while (1)
    {
LABEL_41:
      if (v40 > v39)
      {
        goto LABEL_57;
      }

      if (*v40 == *result)
      {
        break;
      }

      if (*v40 <= *result)
      {
        goto LABEL_57;
      }

LABEL_77:
      v40 += a3;
    }

    v42 = *(v40 + 2);
    v43 = *(result + 8);
    if (v42 == v43)
    {
      if (v7)
      {
        v44 = 0;
        if (v6)
        {
          do
          {
            v45 = v41[v44];
            v41[v44] = *&v40[8 * v44];
            *&v40[8 * v44++] = v45;
          }

          while (v20 != v44);
        }

        else
        {
          do
          {
            v46 = *(v41 + v44);
            *(v41 + v44) = v40[v44];
            v40[v44++] = v46;
          }

          while (a3 != v44);
        }
      }

      else
      {
        v56 = *v41;
        *v41 = *v40;
        *v40 = v56;
      }

      v41 = (v41 + a3);
      v36 = 1;
      goto LABEL_77;
    }

    if (v42 < v43)
    {
      goto LABEL_77;
    }

LABEL_57:
    while (v40 <= v39)
    {
      v47 = *v39;
      if (*v39 == *result)
      {
        v48 = *(v39 + 2);
        v49 = *(result + 8);
        if (v48 == v49)
        {
          if (v7)
          {
            v50 = 0;
            if (v6)
            {
              do
              {
                v51 = v39[v50];
                v39[v50] = v38[v50];
                v38[v50++] = v51;
              }

              while (v20 != v50);
            }

            else
            {
              do
              {
                v52 = *(v39 + v50);
                *(v39 + v50) = *(v38 + v50);
                *(v38 + v50++) = v52;
              }

              while (a3 != v50);
            }
          }

          else
          {
            *v39 = *v38;
            *v38 = v47;
          }

          v38 = (v38 + v4);
          v36 = 1;
        }

        else if (v48 < v49)
        {
LABEL_69:
          if (v7)
          {
            v53 = 0;
            if (v6)
            {
              do
              {
                v54 = *&v40[8 * v53];
                *&v40[8 * v53] = v39[v53];
                v39[v53++] = v54;
              }

              while (v20 != v53);
            }

            else
            {
              do
              {
                v55 = v40[v53];
                v40[v53] = *(v39 + v53);
                *(v39 + v53++) = v55;
              }

              while (a3 != v53);
            }
          }

          else
          {
            v57 = *v40;
            *v40 = v47;
            *v39 = v57;
          }

          v40 += a3;
          v39 = (v39 + v4);
          v36 = 1;
          goto LABEL_41;
        }
      }

      else if (*v39 > *result)
      {
        goto LABEL_69;
      }

      v39 = (v39 + v4);
    }

    v58 = result + a2 * a3;
    if (v36)
    {
      v59 = v40 - v41;
      if ((v41 - result) >= v40 - v41)
      {
        v60 = v40 - v41;
      }

      else
      {
        v60 = v41 - result;
      }

      if (v60)
      {
        if (v6)
        {
          v61 = &v40[-v60];
          v62 = v60 >> 3;
          v63 = result;
          do
          {
            v64 = *v63;
            *v63++ = *v61;
            *v61++ = v64;
            --v62;
          }

          while (v62);
        }

        else
        {
          v65 = -v60;
          v66 = result;
          do
          {
            v67 = *v66;
            *v66++ = v40[v65];
            v40[v65] = v67;
            v68 = __CFADD__(v65++, 1);
          }

          while (!v68);
        }
      }

      v69 = v38 - v39;
      v70 = v58 - (v38 + a3);
      if (v38 - v39 < v70)
      {
        v70 = v38 - v39;
      }

      if (v70)
      {
        if (v6)
        {
          v71 = (v58 - v70);
          v72 = v70 >> 3;
          do
          {
            v73 = *v40;
            *v40 = *v71;
            v40 += 8;
            *v71++ = v73;
            --v72;
          }

          while (v72);
        }

        else
        {
          v74 = -v70;
          do
          {
            v75 = *v40;
            *v40++ = *(v58 + v74);
            *(v58 + v74) = v75;
            v68 = __CFADD__(v74++, 1);
          }

          while (!v68);
        }
      }

      if (v59 > a3)
      {
        result = mrec_qsort_r<CompAndProb>(result, v59 / a3, a3);
      }

      if (v69 > a3)
      {
        result = v58 - v69;
        a2 = v69 / a3;
        v6 = (((v58 - v69) | a3) & 7) == 0;
        if ((((v58 - v69) | a3) & 7) != 0)
        {
          v7 = 2;
        }

        else
        {
          v7 = v5;
        }

        if (a2 < 7)
        {
          goto LABEL_5;
        }

        continue;
      }
    }

    else if ((a2 * a3) > a3)
    {
      v94 = result;
      do
      {
        if (v37 > result)
        {
          v95 = v94;
          v96 = v37;
          do
          {
            v97 = v96;
            v96 += v4;
            v98 = *v97;
            if (*v96 == *v97)
            {
              if (*(v96 + 8) <= *(v97 + 8))
              {
                break;
              }
            }

            else if (*v96 > *v97)
            {
              break;
            }

            if (v7)
            {
              v99 = 0;
              if (v6)
              {
                v100 = v96;
                do
                {
                  v101 = *(v97 + 8 * v99);
                  *(v97 + 8 * v99) = *v100;
                  *v100++ = v101;
                  ++v99;
                }

                while (v20 != v99);
              }

              else
              {
                v102 = a3;
                do
                {
                  v103 = *(v97 + v99);
                  *(v97 + v99) = *(v95 + v99);
                  *(v95 + v99++) = v103;
                  --v102;
                }

                while (v102);
              }
            }

            else
            {
              *v97 = *v96;
              *v96 = v98;
            }

            v95 += v4;
          }

          while (v96 > result);
        }

        v37 += a3;
        v94 += a3;
      }

      while (v37 < v58);
    }

    return result;
  }
}

uint64_t CTPelAccum::addModelRelevance(uint64_t result, void *a2, unsigned int a3)
{
  v3 = *(*result + 16);
  if (v3 == 1)
  {
    v4 = *(result + 20);
  }

  else
  {
    v4 = 1;
  }

  v5 = *(result + 56);
  if ((vcvtd_n_f64_s64(v5, 8uLL) + 0.5) < a3)
  {
    *(result + 56) = *a2 + v5;
    v6 = *(result + 25);
    v7 = (v6 & v4) == 1 ? *(result + 21) ^ 1 : 0;
    if (*(result + 24) == 1)
    {
      if ((*(result + 26) & 1) == 0)
      {
        if (v3 == 1)
        {
          v8 = *(result + 20);
        }

        else
        {
          v8 = 1;
        }

        v9 = *(result + 16);
        if ((v6 & v8) != 0)
        {
          v10 = 2;
        }

        else
        {
          v10 = (v9 + 1);
        }

        if (v9)
        {
          v11 = 0;
          do
          {
            if (v10)
            {
              v12 = 0;
              v13 = 16 * v11;
              v14 = v11 + 1;
              if (v7)
              {
                v15 = v11 + 1;
              }

              else
              {
                v15 = 1;
              }

              v16 = *(a2[1] + v13);
              v17 = *(*(result + 64) + v13);
              v18 = v10;
              do
              {
                *v17++ += *(v16 + 8 * v12);
                v12 += v15;
                --v18;
              }

              while (v18);
            }

            else
            {
              v14 = v11 + 1;
            }

            v11 = v14;
          }

          while (v14 != v9);
        }

        v19 = *(result + 96);
        if (v19)
        {
          v20 = 0;
          v21 = 0;
          do
          {
            v22 = v21 + 1;
            if (v10)
            {
              v23 = 0;
              v24 = 0;
              if (v7)
              {
                v25 = v21 + 1;
              }

              else
              {
                v25 = 1;
              }

              v26 = *(a2[3] + 16 * v21);
              v27 = *(result + 80);
              v28 = 2;
              v29 = 1;
              do
              {
                v30 = 0;
                v31 = v20 + (v23 >> 1);
                v32 = *(v26 + 16 * (v25 * v24++));
                v33 = v29;
                do
                {
                  *(v27 + 8 * v31++) += *(v32 + 8 * v30);
                  v30 += v25;
                  --v33;
                }

                while (v33);
                ++v29;
                v23 += v28;
                v28 += 2;
              }

              while (v24 != v10);
            }

            v20 += (v10 + v10 * v10) >> 1;
            v21 = v22;
          }

          while (v22 != v19);
        }
      }

      if (*(result + 21) != 1)
      {
        goto LABEL_40;
      }
    }

    if (*(result + 23) == 1)
    {
LABEL_40:
      v34 = *(result + 16);
      if (v34)
      {
        v35 = 0;
        v36 = v34 + 1;
        do
        {
          if (v34 != -1)
          {
            v37 = *(a2[1] + 16 * v35);
            v38 = *(*(result + 128) + 16 * v35);
            v39 = (v34 + 1);
            do
            {
              v40 = *v37++;
              *v38++ += v40;
              --v39;
            }

            while (v39);
          }

          ++v35;
        }

        while (v35 != v34);
      }

      else
      {
        v36 = 1;
      }

      v41 = *(result + 160);
      if (v41)
      {
        v42 = 0;
        v43 = 0;
        v44 = (v36 * (v34 + 2)) >> 1;
        do
        {
          if (v36)
          {
            v45 = 0;
            v46 = 0;
            v47 = *(a2[3] + 16 * v43);
            v48 = *(result + 144);
            v49 = 2;
            v50 = 1;
            do
            {
              v51 = 0;
              v52 = v42 + (v45 >> 1);
              v53 = *(v47 + 16 * v46++);
              do
              {
                *(v48 + 8 * v52++) += *(v53 + 8 * v51++);
              }

              while (v50 != v51);
              ++v50;
              v45 += v49;
              v49 += 2;
            }

            while (v46 != v36);
          }

          ++v43;
          v42 += v44;
        }

        while (v43 != v41);
      }
    }
  }

  return result;
}

double ConstrainedTransAccMgr::ConstrainedTransAccMgr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0;
  return result;
}

void ConstrainedTransAccMgr::~ConstrainedTransAccMgr(CTFTMgr **this)
{
  ConstrainedTransAccMgr::releaseAccum(this);
  v2 = this[7];
  if (v2)
  {
    MemChunkFree(v2, 0);
    this[7] = 0;
  }

  this[8] = 0;
  this[1] = 0;
  this[2] = 0;
  *this = 0;
  v3 = this[3];
  if (v3)
  {
    CTFTMgr::resetOnlineCTList(v3);
  }

  this[3] = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 7));
  DgnIOwnArray<CTPelAccum *>::releaseAll((this + 5));
}

GenoneClassTree *ConstrainedTransAccMgr::releaseAccum(CTModelRelevance **this)
{
  DgnDelete<CTModelRelevance>(this[4]);
  this[4] = 0;
  DgnIOwnArray<CTPelAccum *>::releaseAll((this + 5));
  result = this[2];
  if (result)
  {

    return GenoneClassTree::release(result);
  }

  return result;
}

void *CTFTMgr::resetOnlineCTList(CTFTMgr *this)
{
  DgnArray<LinearTransform>::releaseAll(this + 224);
  result = *(this + 30);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(this + 30) = 0;
  }

  *(this + 31) = 0;
  *(this + 54) = 0;
  *(this + 4) = 0;
  return result;
}

uint64_t ConstrainedTransAccMgr::initAccum(ConstrainedTransAccMgr *this, char a2)
{
  if (a2)
  {
    v41 = *((*(**(this + 1) + 200))(*(this + 1)) + 56);
    result = (*(**(this + 1) + 208))(*(this + 1));
    v4 = result;
    v5 = 0;
    v6 = 0;
    LOBYTE(v7) = 0;
    LOBYTE(v8) = 1;
    v40 = 1;
    v9 = 1;
    v10 = 1;
    v11 = 1;
  }

  else
  {
    PelMgr = AdaptController::getPelMgr(*this);
    v13 = *this;
    v4 = *(*this + 32);
    v41 = PelMgr;
    v38 = *(PelMgr + 16);
    v14 = *(*this + 8);
    v40 = v14[332];
    v9 = v14[96];
    v15 = v14[81];
    v16 = v14[82];
    if ((v15 & 1) == 0 && (v16 & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2383, "recogctl/contrnac", 2, "%s", &errStr_recogctl_contrnac_E_IDENTITY_TRANSFORM);
      v14 = *(*this + 8);
    }

    v17 = v15 ^ 1;
    v7 = v17 & v16;
    v8 = v14[83];
    v18 = v13[52];
    v19 = v13[53];
    v6 = v13[48];
    v10 = v18 | v19;
    if (v19)
    {
      v20 = 2;
    }

    else
    {
      v20 = v18;
    }

    result = GenoneClassTree::initForType(*(this + 2), v20, this + 7);
    v21 = result;
    if (result == 1)
    {
      result = *(this + 7);
      if (result)
      {
        result = MemChunkFree(result, 0);
        *(this + 7) = 0;
      }

      *(this + 8) = 0;
    }

    v5 = 0;
    if ((v17 | v8 | v7))
    {
      v11 = v21;
    }

    else
    {
      v11 = v21;
      if (v38 != 1)
      {
        if (*this)
        {
          v5 = *(*(*this + 8) + 160);
          if (v5)
          {
            result = GenoneClassTree::decomposeInverseVariancesForTransformationMatrixAdaptation(*(this + 2));
          }
        }

        else
        {
          v5 = 0;
        }

        LOBYTE(v8) = 0;
        LOBYTE(v7) = 0;
      }
    }
  }

  v22 = *(this + 13);
  if (v11 > v22)
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(this + 40, v11 - v22, 0);
  }

  v23 = *(this + 12);
  if (v23 <= v11)
  {
    if (v23 < v11)
    {
      do
      {
        *(*(this + 5) + 8 * v23++) = 0;
      }

      while (v11 != v23);
    }
  }

  else
  {
    result = DgnIOwnArray<CTPelAccum *>::destructAt((this + 40), v11, v23 - v11);
  }

  *(this + 12) = v11;
  if (v11)
  {
    for (i = 0; i != v11; *(*(this + 5) + 8 * i++) = result)
    {
      v25 = MemChunkAlloc(0xA8uLL, 0);
      v26 = *(this + 2);
      if (v26)
      {
        if (i >= *(v26 + 272))
        {
          v27 = 0;
        }

        else
        {
          v27 = (*(v26 + 264) + 16 * i);
        }

        v28 = v26 + 240;
        if (i >= *(v26 + 288))
        {
          v26 = 0;
        }

        else
        {
          v26 = *(v26 + 280) + 24 * i;
        }
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      result = CTPelAccum::CTPelAccum(v25, v41, v4, v40, v9, v6, v10 & 1, v8 & 1, v7, v5, v28, v27, v26);
    }
  }

  if ((a2 & 1) == 0)
  {
    v29 = *(*this + 8);
    if (v10)
    {
      v30 = 152;
    }

    else
    {
      v30 = 392;
    }

    v31 = 352;
    if (v10)
    {
      v31 = 72;
    }

    v32 = 384;
    if (v10)
    {
      v32 = 112;
    }

    v33 = *(v29 + v30);
    if (v33)
    {
      v34 = *(v29 + v32);
      v35 = *(v29 + v31);
      if (v35 != 0.0 && v34 != 0)
      {
        v37 = MemChunkAlloc(0x30uLL, 0);
        *(v37 + 1) = 0u;
        *(v37 + 3) = 0u;
        *(this + 4) = v37;

        return CTModelRelevance::computeModelRelevance(v37, v41, v33, v35, v6, v10 & 1, v9, v40, v8 & 1);
      }
    }
  }

  return result;
}

CTModelRelevance *DgnDelete<CTModelRelevance>(CTModelRelevance *result)
{
  if (result)
  {
    CTModelRelevance::~CTModelRelevance(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void *DgnIOwnArray<CTPelAccum *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<CTPelAccum>(*(*a1 + v3));
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

BOOL ConstrainedTransAccMgr::adaptPel(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = *(a4 + 8);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *(a1 + 12);
    v15 = 104;
  }

  else
  {
    v16 = *a1;
    v11 = *a1 + 40;
    v12 = *(*a1 + 152);
    if (*(*a1 + 52))
    {
      v15 = 104;
    }

    else if (*(v16 + 53))
    {
      v15 = 104;
    }

    else
    {
      v15 = 376;
    }

    v14 = *(a1 + 12);
    v13 = *(*(AdaptController::getPelMgr(v16) + 288) + 2 * a2);
  }

  if (v14 != 1)
  {
    v17 = *(a1[7] + 4 * v13);
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_13:
    v20 = *(*a1 + 8);
    v19 = *(v20 + v15);
    v18 = *(v20 + 140) == 1 && *(v11 + 13) == 1 && *(a1[3] + 12) == *a1[3];
    goto LABEL_17;
  }

  v17 = 0;
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_11:
  v18 = 0;
  v19 = 1.0;
LABEL_17:
  v21 = *(a1[5] + 8 * v17);

  return CTPelAccum::adaptOneFrame(v21, a2, v18, v12, a5, v19, a3, a4);
}

uint64_t ConstrainedTransAccMgr::downScaleAccum(uint64_t this, unsigned int a2, unsigned int a3, double a4)
{
  if (a2)
  {
    if (a3)
    {
      if (!(a2 % a3))
      {
        v4 = this;
        v5 = *(this + 48);
        if (v5)
        {
          v7 = 0;
          v8 = 8 * v5;
          do
          {
            this = CTPelAccum::scaleAccum(*(*(v4 + 40) + v7), a4);
            v7 += 8;
          }

          while (v8 != v7);
        }
      }
    }
  }

  return this;
}

uint64_t *ConstrainedTransAccMgr::getFrameCountsByTNode(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result[2] + 200);
  v5 = *(a2 + 3);
  if (v4 > v5)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a2, v4 - v5, 0);
  }

  *(a2 + 2) = v4;
  if (*(v3 + 12))
  {
    v6 = 0;
    v7 = v3[5];
    v8 = *a2;
    do
    {
      *(v8 + 4 * v6) = (*(*(v7 + 8 * v6) + 56) * 0.00390625 + 0.5);
      ++v6;
    }

    while (v6 < *(v3 + 12));
  }

  return result;
}

uint64_t *ConstrainedTransAccMgr::computeGlobalSmoothing(AdaptController **this, double a2)
{
  v4 = *(this + 12);
  PelMgr = AdaptController::getPelMgr(*this);
  v6 = *this;
  v7 = *(*this + 4);
  v8 = *(*this + 1);
  v9 = v8[332];
  v10 = v8[83];
  v11 = v8[81];
  v12 = v8[82];
  if ((v11 & 1) == 0 && (v8[82] & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2719, "recogctl/contrnac", 2, "%s", &errStr_recogctl_contrnac_E_IDENTITY_TRANSFORM);
  }

  v13 = (v11 ^ 1) & v12;
  v14 = MemChunkAlloc(0xA8uLL, 0);
  v15 = v14;
  if (v6[52])
  {
    v16 = 1;
  }

  else
  {
    v16 = v6[53];
  }

  CTPelAccum::CTPelAccum(v14, PelMgr, v7, v9, *(*(*this + 1) + 96), v6[48], v16 & 1, v10, v13, 0, 0, 0, 0);
  if (v4)
  {
    v17 = 0;
    do
    {
      CTPelAccum::addAccum(v15, *(this[5] + v17), 0);
      v17 += 8;
    }

    while (8 * v4 != v17);
  }

  v18 = v15[7] * 0.00390625;
  if (v18 <= 0.0)
  {
    DgnDelete<CTPelAccum>(v15);
    return 0;
  }

  else
  {
    CTPelAccum::scaleAccum(v15, a2 / v18);
  }

  return v15;
}

CTPelAccum *DgnDelete<CTPelAccum>(CTPelAccum *result)
{
  if (result)
  {
    CTPelAccum::~CTPelAccum(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void ConstrainedTransAccMgr::printSize(ConstrainedTransAccMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v51, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2766);
  if (v52)
  {
    v12 = v51;
  }

  else
  {
    v12 = &unk_26287F771;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, a3, &unk_26287F771, a3, &unk_26287F771, v12);
  DgnString::~DgnString(&v51);
  if (a2 != -1)
  {
    xlprintf("%d ", v13, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v13, a3, &unk_26287F771);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v14 = 4;
  }

  else
  {
    v14 = 8;
  }

  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v51, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2767);
  if (v52)
  {
    v18 = v51;
  }

  else
  {
    v18 = &unk_26287F771;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_26287F771, (34 - a3), (34 - a3), v18, v14, v14, 0);
  DgnString::~DgnString(&v51);
  *a4 += v14;
  *a5 += v14;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v19 = 4;
  }

  else
  {
    v19 = 8;
  }

  getShipObjectSizeDescription(&v51, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2768);
  if (v52)
  {
    v21 = v51;
  }

  else
  {
    v21 = &unk_26287F771;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, (a3 + 1), &unk_26287F771, (34 - a3), (34 - a3), v21, v19, v19, 0);
  DgnString::~DgnString(&v51);
  *a4 += v19;
  *a5 += v19;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 8;
  }

  getShipObjectSizeDescription(&v51, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2769);
  if (v52)
  {
    v24 = v51;
  }

  else
  {
    v24 = &unk_26287F771;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), &unk_26287F771, (34 - a3), (34 - a3), v24, v22, v22, 0);
  DgnString::~DgnString(&v51);
  *a4 += v22;
  *a5 += v22;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v25 = 12;
  }

  else
  {
    v25 = 16;
  }

  v26 = *(this + 16);
  v27 = *(this + 17);
  if (v27 >= v26)
  {
    v28 = 0;
    if (v26 > 0)
    {
      v25 += 4 * (v26 - 1) + 4;
    }

    v29 = v25 + 4 * (v27 - v26);
  }

  else
  {
    v28 = 4 * v26;
    v29 = v25;
  }

  getShipObjectSizeDescription(&v51, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2771);
  if (v52)
  {
    v31 = v51;
  }

  else
  {
    v31 = &unk_26287F771;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &unk_26287F771, (34 - a3), (34 - a3), v31, v29, v25, v28);
  DgnString::~DgnString(&v51);
  *a4 += v29;
  *a5 += v25;
  *a6 += v28;
  v32 = sizeObject<CTPelAccum *>(this + 40, 0);
  v33 = sizeObject<CTPelAccum *>(this + 40, 1);
  getShipObjectSizeDescription(&v51, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2772);
  if (v52)
  {
    v35 = v51;
  }

  else
  {
    v35 = &unk_26287F771;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, (a3 + 1), &unk_26287F771, (34 - a3), (34 - a3), v35, v32, v33, 0);
  DgnString::~DgnString(&v51);
  *a4 += v32;
  *a5 += v33;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v36 = 4;
  }

  else
  {
    v36 = 8;
  }

  v37 = *(this + 4);
  if (v37)
  {
    v48 = (a3 + 1);
    v49 = a3;
    v38 = sizeObject<DgnPrimArray<double>>(v37 + 8, 0);
    v39 = v36 + v38 + sizeObject<DgnArray<DgnPrimArray<long long>>>(v37 + 24, 0) + 12;
    v40 = *(this + 4);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v36 = 4;
    }

    else
    {
      v36 = 8;
    }

    if (v40)
    {
      v41 = sizeObject<DgnPrimArray<double>>(v40 + 8, 1);
      v36 += v41 + sizeObject<DgnArray<DgnPrimArray<long long>>>(v40 + 24, 1) + 12;
      v42 = *(this + 4);
      v15 = v48;
      if (v42)
      {
        v51 = 0;
        v52 = 0;
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v51);
        v43 = sizeObject<DgnArray<DgnPrimArray<long long>>>(v42 + 24, 3);
      }

      else
      {
        v43 = 0;
      }

      a3 = v49;
    }

    else
    {
      v43 = 0;
      v15 = v48;
      a3 = v49;
    }
  }

  else
  {
    v43 = 0;
    v39 = v36;
  }

  getShipObjectSizeDescription(&v51, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2774);
  if (v52)
  {
    v45 = v51;
  }

  else
  {
    v45 = &unk_26287F771;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v15, &unk_26287F771, v16, v16, v45, v39, v36, v43);
  DgnString::~DgnString(&v51);
  *a4 += v39;
  *a5 += v36;
  *a6 += v43;
  getShipObjectSizeDescription(&v51, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2776);
  if (v52)
  {
    v47 = v51;
  }

  else
  {
    v47 = &unk_26287F771;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, a3, &unk_26287F771, (35 - a3), (35 - a3), v47, *a4, *a5, *a6);
  DgnString::~DgnString(&v51);
}

void sub_26261093C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<CTPelAccum *>(uint64_t a1, int a2)
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
          v9 += CTPelAccum::sizeObject(v10, a2);
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

BOOL ConstrainedTransAccMgr::computeTransform(ConstrainedTransAccMgr *this, int a2, double a3, SnapTime *a4, unsigned int *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a2)
  {
    v7 = *((*(**(this + 1) + 200))(*(this + 1)) + 56);
    v174 = (*(**(this + 1) + 208))(*(this + 1));
    v8 = 0;
    v163 = 0;
    v9 = 0;
    v159 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    PelMgr = v7;
    v171 = *(v7 + 16) == 1;
    v13 = this + 40;
    v14 = *(this + 12);
    v166 = 1;
    v176 = 1;
    v15 = 1;
    v16 = 1;
LABEL_5:
    v173 = 1;
    goto LABEL_19;
  }

  PelMgr = AdaptController::getPelMgr(*this);
  v17 = *this;
  v18 = *(*this + 32);
  v159 = *this + 40;
  v19 = *(*this + 8);
  v176 = *(v19 + 332);
  v15 = *(v19 + 96);
  v20 = *(v19 + 81);
  v16 = *(v19 + 82);
  if ((v20 & 1) == 0 && (v16 & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2890, "recogctl/contrnac", 2, "%s", &errStr_recogctl_contrnac_E_IDENTITY_TRANSFORM);
    v19 = *(*this + 8);
  }

  v9 = (v20 ^ 1) & v16;
  v166 = *(v19 + 83);
  v174 = v18;
  if (v17[52] == 1)
  {
    v21 = v17[48];
    v171 = *(PelMgr + 16) == 1;
    v13 = this + 40;
    v22 = *(this + 12);
    v23 = v17[53];
    v10 = *(v19 + 84);
    v8 = *(v19 + 156);
    if ((v23 & 1) == 0)
    {
      v163 = v21;
      v11 = 0;
      v14 = *(this + 12);
      v12 = *(v19 + 100);
      goto LABEL_5;
    }
  }

  else
  {
    v21 = v17[48];
    v171 = *(PelMgr + 16) == 1;
    v13 = this + 40;
    v22 = *(this + 12);
    if (v17[53] != 1)
    {
      v163 = v17[48];
      v173 = 0;
      v8 = *(v19 + 360);
      v14 = *(this + 12);
      v12 = *(v19 + 372);
      v11 = 1;
      v10 = v8;
      goto LABEL_19;
    }

    v10 = *(v19 + 84);
    v8 = *(v19 + 156);
  }

  v163 = v21;
  v24 = *(v19 + 148);
  v11 = 0;
  if (v24 == -1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v19 + 144) + v24;
  }

  v173 = 1;
  v14 = v22;
LABEL_19:
  v201 = 0;
  v202 = 0;
  v199 = 0;
  v200 = 0;
  v158 = v14;
  if (v14 >= 2)
  {
    v25 = *(*(*this + 8) + 68) / 10000.0;
    v26 = v173;
    if (v25 <= 0.0)
    {
      v26 = 0;
    }

    if (v26 != 1)
    {
      goto LABEL_31;
    }

    v27 = *(*(this + 7) + 4 * **(AdaptController::getPelMgr(*this) + 288));
    v28 = *(this + 5);
    v29 = *(v28 + 8 * v27);
    v30 = *(v29 + 56);
    v31 = v158;
    v32 = 0.0;
    do
    {
      if (v27)
      {
        v32 = v32 + *(*v28 + 56) * 0.00390625;
      }

      --v27;
      v28 += 8;
      --v31;
    }

    while (v31);
    v33 = 0.0;
    if (v32 > 0.0)
    {
      if (v30 * 0.00390625 / v32 <= v25)
      {
        goto LABEL_31;
      }

      v33 = v25 * v32 / (v30 * 0.00390625);
    }

    CTPelAccum::scaleAccum(v29, v33);
LABEL_31:
    v188 = 0;
    v189 = 0;
    ConstrainedTransAccMgr::getFrameCountsByTNode(this, &v188);
    GenoneClassTree::getDynamicClasses(*(this + 2), &v188, v12, v8, v10, &v201, &v199);
    if (*(*(*this + 8) + 80) == 1 && v202 >= 2)
    {
      v183 = 0;
      v184 = 0;
      v34 = v200;
      if (v200 == HIDWORD(v200))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(&v199, 1, 1);
        v34 = v200;
      }

      v35 = &v199[2 * v34];
      *v35 = 0;
      v35[1] = 0;
      DgnPrimArray<int>::copyArraySlice(v35, &v183, 0, v184);
      LODWORD(v200) = v200 + 1;
      v36 = v202;
      if (v202)
      {
        v37 = 0;
        v38 = v201;
        do
        {
          v39 = &v38[16 * v37];
          if (*(v39 + 2))
          {
            v40 = 0;
            v41 = v184;
            do
            {
              v42 = *(*v39 + 4 * v40);
              if (v41 == HIDWORD(v184))
              {
                DgnPrimArray<unsigned int>::reallocElts(&v183, 1, 1);
                v41 = v184;
                v38 = v201;
              }

              *(v183 + v41) = v42;
              v41 = v184 + 1;
              LODWORD(v184) = v184 + 1;
              ++v40;
              v39 = &v38[16 * v37];
            }

            while (v40 < *(v39 + 2));
            v36 = v202;
          }

          ++v37;
        }

        while (v37 < v36);
      }

      else
      {
        v36 = 0;
      }

      if (v36 == HIDWORD(v202))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(&v201, 1, 1);
        v36 = v202;
      }

      v54 = &v201[16 * v36];
      *v54 = 0;
      v54[1] = 0;
      DgnPrimArray<int>::copyArraySlice(v54, &v183, 0, v184);
      LODWORD(v202) = v202 + 1;
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v183);
      v43 = 1;
    }

    else
    {
      v43 = 0;
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v188);
    goto LABEL_74;
  }

  if (v8 <= (*(**v13 + 56) * 0.00390625 + 0.5))
  {
    v188 = 0;
    HIDWORD(v202) = realloc_array(0, &v188, 0x10uLL, 0, 0, 1) >> 4;
    v44 = v188;
    v201 = v188;
    v45 = v202;
    if (v202 <= 1)
    {
      if (!v202)
      {
        *v188 = 0;
        v44[1] = 0;
      }
    }

    else if (v202 >= 2)
    {
      v46 = 16 * v202 - 16;
      do
      {
        --v45;
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v201[v46]);
        v46 -= 16;
      }

      while (v45 > 1);
    }

    LODWORD(v202) = 1;
    v47 = v201;
    v48 = *(v201 + 2);
    if (v48 == *(v201 + 3))
    {
      DgnPrimArray<unsigned int>::reallocElts(v201, 1, 1);
      v48 = v47[2];
    }

    *(*v47 + 4 * v48) = 0;
    ++v47[2];
    if (!HIDWORD(v200))
    {
      v188 = 0;
      HIDWORD(v200) = realloc_array(v199, &v188, 0x10uLL, 16 * v200, 16 * v200, 1) >> 4;
      v199 = v188;
    }

    v49 = v200;
    if (v200 <= 1)
    {
      if (!v200)
      {
        v51 = v199;
        *v199 = 0;
        v51[1] = 0;
      }
    }

    else if (v200 >= 2)
    {
      v50 = 16 * v200 - 16;
      do
      {
        --v49;
        DgnPrimArray<unsigned int>::~DgnPrimArray(v199 + v50);
        v50 -= 16;
      }

      while (v49 > 1);
    }

    LODWORD(v200) = 1;
    v52 = v199;
    v53 = *(v199 + 2);
    if (v53 == *(v199 + 3))
    {
      DgnPrimArray<unsigned int>::reallocElts(v199, 1, 1);
      v53 = *(v52 + 2);
    }

    v43 = 0;
    *(*v52 + 4 * v53) = 0;
    ++*(v52 + 2);
  }

  else
  {
    v43 = 0;
  }

LABEL_74:
  v55 = v202;
  SnapTime::recordTime(a4, 1, 1, 1, 1);
  if (!v55)
  {
    goto LABEL_83;
  }

  v170 = v55;
  if (a2)
  {
    v56 = 1;
LABEL_79:
    v57 = *(*(this + 3) + 136);
    SnapTime::recordTime(a4, 1, 1, 1, 1);
    if (v57 >= v56)
    {
      v58 = v56;
    }

    else
    {
      v58 = v57;
    }

    LODWORD(v55) = v170;
    if (v170 < v58)
    {
      goto LABEL_83;
    }

    if (v173)
    {
      v60 = 1 << *(*(this + 3) + 4);
      if (a2)
      {
        goto LABEL_91;
      }

      goto LABEL_89;
    }

    v60 = 0x4000;
    if (a2)
    {
LABEL_91:
      v165 = 0;
      goto LABEL_95;
    }

LABEL_93:
    v61 = 384;
    goto LABEL_94;
  }

  if (*(v159 + 13) == 1)
  {
    v56 = *(*(*this + 8) + 144);
    goto LABEL_79;
  }

  if (!v173)
  {
    v60 = 0x4000;
    goto LABEL_93;
  }

  v60 = 1 << *(*(this + 3) + 4);
LABEL_89:
  v61 = 112;
LABEL_94:
  v165 = *(*(*this + 8) + v61);
LABEL_95:
  v169 = v60;
  v164 = v11 ^ (v11 | v15 | v9);
  if (((v11 | v15) | v9))
  {
    v62 = v166;
    v63 = v176;
  }

  else
  {
    v62 = v166;
    v63 = v176;
    if (((v166 ^ 1) & 1) == 0)
    {
      v164 = !v171 | v176;
    }
  }

  if ((a2 & 1) == 0)
  {
    v161 = 0;
    v168 = 0;
    v64 = *(*this + 8);
    v65 = 368;
    if (v173)
    {
      v65 = 92;
    }

    v66 = 364;
    if (v173)
    {
      v66 = 88;
    }

    v156 = *(v64 + v66);
    if (v55 == 1)
    {
      goto LABEL_109;
    }

    v67 = *(v64 + v65);
    if (!v67)
    {
      goto LABEL_109;
    }

    v161 = ConstrainedTransAccMgr::computeGlobalSmoothing(this, v67);
    SnapTime::recordTime(a4, 1, 1, 1, 1);
    if (v161)
    {
      v168 = 1;
      goto LABEL_109;
    }

LABEL_83:
    v59 = 0;
    goto LABEL_271;
  }

  v168 = 0;
  v156 = 0;
  v161 = 0;
LABEL_109:
  v68 = MemChunkAlloc(0xA8uLL, 0);
  CTPelAccum::CTPelAccum(v68, PelMgr, v174, v63, v15, v163, v173, v62, v9, 0, 0, 0, 0);
  v155 = v43;
  v69 = *(v68 + 4);
  if (v62)
  {
    v70 = 2;
  }

  else
  {
    v70 = 1;
  }

  if (v9)
  {
    v70 = 3;
  }

  v177 = v70;
  if (v9)
  {
    v71 = 0;
  }

  else
  {
    v71 = v69;
  }

  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(&v197, v71);
  v72 = v198;
  if (v198)
  {
    v73 = 0;
    v74 = 0;
    if (((v9 ^ 1) & v166) != 0)
    {
      v75 = 1;
    }

    else
    {
      v75 = v69;
    }

    do
    {
      v76 = v197 + v73;
      v77 = *(v197 + v73 + 12);
      if (v75 > v77)
      {
        DgnPrimArray<unsigned int>::reallocElts(v197 + v73, v75 - v77, 0);
        v72 = v198;
      }

      *(v76 + 8) = v75;
      ++v74;
      v73 += 16;
    }

    while (v74 < v72);
  }

  v175 = v16 | v166;
  if ((v16 | v166))
  {
    v78 = v69;
  }

  else
  {
    v78 = 0;
  }

  v195 = 0;
  v196 = 0;
  if (v78)
  {
    v188 = 0;
    HIDWORD(v196) = realloc_array(0, &v188, 4 * v78, 0, 0, 1) >> 2;
    v195 = v188;
  }

  LODWORD(v196) = v78;
  v193 = 0;
  v194 = 0;
  v188 = 0;
  HIDWORD(v194) = realloc_array(0, &v188, 72 * v170, 0, 0, 1) / 0x48;
  v193 = v188;
  v79 = v194;
  if (v170 >= v194)
  {
    if (v170 > v194)
    {
      v81 = v170 - v194;
      v82 = 72 * v194;
      do
      {
        LinearTransform::LinearTransform(&v193[v82]);
        v82 += 72;
        --v81;
      }

      while (v81);
    }
  }

  else if (v194 > v170)
  {
    v80 = 72 * v194 - 72;
    do
    {
      --v79;
      LinearTransform::~LinearTransform(&v193[v80]);
      v80 -= 72;
    }

    while (v79 > v170);
  }

  LODWORD(v194) = v170;
  v191 = 0;
  v192 = 0;
  if (v173)
  {
    v188 = 0;
    v83 = realloc_array(0, &v188, 4 * v170, 0, 0, 1);
    v191 = v188;
    LODWORD(v192) = v170;
    HIDWORD(v192) = v83 >> 2;
  }

  v162 = v9;
  v84 = 0;
  v85 = 0;
  v188 = 0;
  v189 = 0;
  v190 = 0;
  v187 = 0;
  v186 = 0;
  do
  {
    CTPelAccum::reset(v68);
    v86 = &v201[16 * v84];
    if (*(v86 + 2))
    {
      v87 = 0;
      do
      {
        CTPelAccum::addAccum(v68, *(*v13 + 8 * *(*v86 + 4 * v87++)), 0);
        v86 = &v201[16 * v84];
      }

      while (v87 < *(v86 + 2));
    }

    if ((v168 & 1) != 0 && (v68[7] * 0.00390625 + 0.5) < v156)
    {
      CTPelAccum::addAccum(v68, v161, 0);
    }

    v88 = *(this + 4);
    if (v88)
    {
      CTPelAccum::addModelRelevance(v68, v88, v165);
    }

    DgnMatrix::makeIdentity(v69, &v183);
    v188 = v183;
    DgnPrimFixArray<double>::copyArraySlice(&v189, &v184, 0, v185);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v184);
    LODWORD(v184) = 0;
    v183 = 0;
    if (v69)
    {
      v183 = MemChunkAlloc(8 * v69, 0);
      LODWORD(v184) = v69;
      bzero(v183, 8 * v69);
    }

    DgnPrimFixArray<double>::copyArraySlice(&v186, &v183, 0, v69);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v183);
    if (v173)
    {
      if ((v164 & 1) == 0 && !ConstrainedTransAccMgr::computeInitialTransform(this, v68, v171, &v188))
      {
        DgnMatrix::makeIdentity(v69, &v183);
        v188 = v183;
        DgnPrimFixArray<double>::copyArraySlice(&v189, &v184, 0, v185);
        DgnPrimFixArray<double>::~DgnPrimFixArray(&v184);
        LODWORD(v184) = 0;
        v183 = 0;
        if (v69)
        {
          v183 = MemChunkAlloc(8 * v69, 0);
          LODWORD(v184) = v69;
          bzero(v183, 8 * v69);
        }

        DgnPrimFixArray<double>::copyArraySlice(&v186, &v183, 0, v69);
        DgnPrimFixArray<double>::~DgnPrimFixArray(&v183);
      }

      v89 = ConstrainedTransAccMgr::computeIterativeTransform(this, v68, a2, v171, v166, v162, &v188, &v186, a3);
    }

    else
    {
      v89 = ConstrainedTransAccMgr::computeMeansTransform(this, v68, v171, &v188);
    }

    if (!v89 || !fillIntTransform(&v188, &v186, &v197, &v195, v169, v177, v175 & 1, v69))
    {
      DgnMatrix::makeIdentity(v69, &v183);
      v188 = v183;
      DgnPrimFixArray<double>::copyArraySlice(&v189, &v184, 0, v185);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v184);
      LODWORD(v184) = 0;
      v183 = 0;
      if (v69)
      {
        v183 = MemChunkAlloc(8 * v69, 0);
        LODWORD(v184) = v69;
        bzero(v183, 8 * v69);
      }

      DgnPrimFixArray<double>::copyArraySlice(&v186, &v183, 0, v69);
      ++v85;
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v183);
      fillIntTransform(&v188, &v186, &v197, &v195, v169, v177, v175 & 1, v69);
    }

    LinearTransform::setSize(&v193[72 * v84], v69, v69);
    LinearTransform::setTransform(&v193[72 * v84], &v197, v177, &v195, v175 & 1, v169, 0);
    if (v173)
    {
      v90 = DgnMatrix::determinant(&v188);
      v91 = DgnLog(v90) * v169;
      if (v91 >= 0.0)
      {
        v92 = 0.5;
      }

      else
      {
        v92 = -0.5;
      }

      v191[v84] = (v91 + v92);
    }

    ++v84;
  }

  while (v84 != v170);
  DgnDelete<CTPelAccum>(v68);
  DgnDelete<CTPelAccum>(v161);
  SnapTime::recordTime(a4, 1, 1, 1, 1);
  v93 = (20 * v170 + 50) / 0x64u;
  v59 = v85 <= v93;
  if (v85 <= v93)
  {
    v183 = 0;
    v184 = 0;
    LODWORD(v94) = v170;
    v182[0] = 0;
    v182[1] = 0;
    if (v155)
    {
      v94 = (v170 - 1);
      if (v202 <= v94)
      {
        if (v202 < v94)
        {
          v97 = v94 - v202;
          v98 = 16 * v202;
          do
          {
            v99 = &v201[v98];
            *v99 = 0;
            *(v99 + 1) = 0;
            v98 += 16;
            --v97;
          }

          while (v97);
        }
      }

      else if (v202 > v94)
      {
        v95 = v202;
        v96 = 16 * v202 - 16;
        do
        {
          --v95;
          DgnPrimArray<unsigned int>::~DgnPrimArray(&v201[v96]);
          v96 -= 16;
        }

        while (v95 > v94);
      }

      LODWORD(v202) = v170 - 1;
      if (v200 <= v94)
      {
        if (v200 < v94)
        {
          v102 = v94 - v200;
          v103 = 2 * v200;
          do
          {
            v104 = &v199[v103];
            *v104 = 0;
            v104[1] = 0;
            v103 += 2;
            --v102;
          }

          while (v102);
        }
      }

      else if (v200 > v94)
      {
        v100 = v200;
        v101 = 16 * v200 - 16;
        do
        {
          --v100;
          DgnPrimArray<unsigned int>::~DgnPrimArray(v199 + v101);
          v101 -= 16;
        }

        while (v100 > v94);
      }

      LODWORD(v200) = v170 - 1;
      DgnArray<LinearTransform>::copyArraySlice(&v183, &v193, v94, 1);
      DgnPrimArray<int>::copyArraySlice(v182, &v191, v94, 1u);
      v105 = v194;
      if (v194 <= v94)
      {
        if (v194 < v94)
        {
          v107 = ~v194 + v170;
          v108 = 72 * v194;
          do
          {
            LinearTransform::LinearTransform(&v193[v108]);
            v108 += 72;
            --v107;
          }

          while (v107);
        }
      }

      else if (v194 > v94)
      {
        v106 = 72 * v194 - 72;
        do
        {
          --v105;
          LinearTransform::~LinearTransform(&v193[v106]);
          v106 -= 72;
        }

        while (v105 > v94);
      }

      LODWORD(v194) = v170 - 1;
      LODWORD(v192) = v170 - 1;
    }

    if (a2)
    {
      CTFTMgr::setOnlineCTList(*(this + 3), &v193, &v191);
    }

    else if (v173)
    {
      v109 = *(this + 2);
      v110 = 120;
      if (*(v159 + 13))
      {
        v110 = 152;
      }

      v111 = *(*(v109 + v110) + 4 * (*(v109 + v110 + 8) - 1));
      v180 = 0;
      v181 = 0;
      v112 = v111 + 1;
      if (v111 != -1)
      {
        v178 = 0;
        HIDWORD(v181) = realloc_array(0, &v178, 4 * (v111 + 1), 0, 0, 1) >> 2;
        v180 = v178;
        v109 = *(this + 2);
      }

      LODWORD(v181) = v112;
      v178 = 0;
      v179 = 0;
      DgnPrimArray<int>::copyArraySlice(&v178, (v109 + 192), 0, *(v109 + 200));
      if (v181)
      {
        v113 = 0;
        v114 = v180;
        do
        {
          *&v114[4 * v113++] = -1;
        }

        while (v113 < v181);
      }

      v115 = v200;
      if (v200)
      {
        v116 = 0;
        v117 = v199;
        v118 = v178;
        v119 = v180;
        do
        {
          v120 = &v117[2 * v116];
          if (*(v120 + 2))
          {
            v121 = 0;
            v122 = *v120;
            do
            {
              *&v119[4 * v118[*(v122 + 4 * v121++)]] = v116;
            }

            while (v121 < *(v120 + 2));
            v115 = v200;
          }

          ++v116;
        }

        while (v116 < v115);
      }

      if (*(v159 + 12))
      {
        CTFTMgr::setSpeakerCTList(*(this + 3), &v193, &v191, &v180, &v183, v182);
      }

      else if (*(v159 + 13) == 1)
      {
        if (*(*(*this + 8) + 140) == 1)
        {
          v146 = *(this + 3);
          if (*(v146 + 12) == *v146 && v94 == *(v146 + 136) && v155 == *(v146 + 176))
          {
            if (v181)
            {
              v147 = 0;
              while (1)
              {
                v148 = *&v180[v147];
                if (v148 != -1 && (!v94 || v148 != *(*(v146 + 40) + v147)))
                {
                  break;
                }

                v147 += 4;
                if (4 * v181 == v147)
                {
                  goto LABEL_256;
                }
              }
            }

            else
            {
LABEL_256:
              if (v94)
              {
                v149 = 0;
                do
                {
                  multiplyIntTransform(&v193[72 * v149], (*(*(this + 3) + 144) + 72 * v149), v169, v177, v175 & 1, v69, &v191[v149]);
                  ++v149;
                }

                while (v149 != v94);
              }

              for (i = 0; i < v155; i = 1)
              {
                multiplyIntTransform(v183, *(*(this + 3) + 184), v169, v177, v175 & 1, v69, v182[0]);
              }
            }
          }
        }

        CTFTMgr::setChannelCTList(*(this + 3), &v193, &v191, &v180, &v183, v182);
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v178);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v180);
    }

    else
    {
      v180 = 0;
      v181 = 0;
      v123 = *(this + 2);
      v178 = 0;
      v179 = 0;
      if (v200)
      {
        v124 = 0;
        v125 = 0;
        do
        {
          LODWORD(v179) = 0;
          v126 = v199;
          v127 = &v199[2 * v125];
          if (*(v127 + 2))
          {
            v128 = 0;
            v129 = 0;
            do
            {
              v130 = *(*(this + 2) + 208) + 16 * *(*v127 + 4 * v129);
              v131 = *(v130 + 8);
              if (v131)
              {
                for (j = 0; j < v131; ++j)
                {
                  v133 = *(*v130 + 4 * j);
                  if ((*(*(v123 + 64) + ((v133 >> 3) & 0x1FFFFFFC)) >> v133))
                  {
                    v134 = *(*(v123 + 32) + 2 * v133);
                    if (v134 != 65534)
                    {
                      if (v128 == HIDWORD(v179))
                      {
                        DgnPrimArray<short>::reallocElts(&v178, 1, 1);
                        v128 = v179;
                        v131 = *(v130 + 8);
                      }

                      *(v178 + v128++) = v134;
                      LODWORD(v179) = v128;
                    }
                  }
                }

                v126 = v199;
              }

              ++v129;
              v127 = &v126[2 * v125];
            }

            while (v129 < *(v127 + 2));
            v124 = v181;
          }

          if (v124 == HIDWORD(v181))
          {
            DgnArray<DgnPrimArray<double>>::reallocElts(&v180, 1, 1);
            v124 = v181;
          }

          v135 = &v180[16 * v124];
          *v135 = 0;
          v135[1] = 0;
          DgnPrimArray<unsigned short>::copyArraySlice(v135, &v178, 0, v179);
          v124 = v181 + 1;
          LODWORD(v181) = v181 + 1;
          ++v125;
        }

        while (v125 < v200);
      }

      v136 = v194;
      if (v194)
      {
        v137 = 0;
        v138 = v180;
        do
        {
          v139 = &v138[16 * v137];
          if (*(v139 + 2))
          {
            v140 = 0;
            do
            {
              v141 = *(*v139 + 2 * v140);
              v142 = *(*(PelMgr + 272) + 4 * v141);
              v143 = *(*(PelMgr + 272) + 4 * v141 + 4);
              v144 = v143 - v142;
              if (v143 != v142)
              {
                v145 = 0;
                do
                {
                  ConstrainedTransAccMgr::copyBackMeans(this, v141, v145, &v193[72 * v137]);
                  v145 = (v145 + 1);
                }

                while (v144 != v145);
                v138 = v180;
              }

              ++v140;
              v139 = &v138[16 * v137];
            }

            while (v140 < *(v139 + 2));
            v136 = v194;
          }

          ++v137;
        }

        while (v137 < v136);
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v178);
      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v180);
    }

    if (v158)
    {
      v151 = *v13;
      v152 = v158;
      do
      {
        v153 = *v151++;
        *(v153 + 22) = 1;
        --v152;
      }

      while (v152);
    }

    SnapTime::recordTime(a4, 1, 1, 1, 1);
    if (a5)
    {
      *a5 = v94;
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v182);
    DgnArray<LinearTransform>::releaseAll(&v183);
    v59 = 1;
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v186);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v189);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v191);
  DgnArray<LinearTransform>::releaseAll(&v193);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v195);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v197);
LABEL_271:
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v199);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v201);
  return v59;
}

void sub_262611FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a30);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a34);
  DgnArray<LinearTransform>::releaseAll(&a36);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v38 - 232);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v38 - 216);
  DgnArray<LinearTransform>::releaseAll(v38 - 200);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v38 - 184);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v38 - 168);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v38 - 152);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v38 - 136);
  _Unwind_Resume(a1);
}

BOOL ConstrainedTransAccMgr::computeInitialTransform(ConstrainedTransAccMgr *this, CTPelAccum *a2, int a3, DgnMatrix *a4)
{
  v8 = *(a2 + 4);
  DgnMatrix::makeIdentity(v8, &v21);
  if (ConstrainedTransAccMgr::computeMeansTransform(this, a2, a3, &v21))
  {
    DgnMatrix::invert(&v19, &v21);
    v9 = v19;
    v10 = v19 != 0;
    if (v19 && v8)
    {
      v11 = 0;
      v12 = v20;
      v13 = *a4;
      v14 = *(a4 + 1);
      do
      {
        v15 = v8;
        v16 = v11;
        v17 = v11;
        do
        {
          *(v14 + 8 * v17) = *(v12 + 8 * v16);
          v17 += v13;
          v16 += v9;
          v15 = (v15 - 1);
        }

        while (v15);
        ++v11;
      }

      while (v11 != v8);
    }

    DgnPrimFixArray<double>::~DgnPrimFixArray(&v20);
  }

  else
  {
    v10 = 0;
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v22);
  return v10;
}

void sub_262612268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

uint64_t ConstrainedTransAccMgr::computeIterativeTransform(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, int a6, int *a7, void *a8, double a9)
{
  v10 = *(a2 + 56) * 0.00390625;
  if (v10 == 0.0)
  {
    v11 = 0;
    return v11 & 1;
  }

  v17 = a2;
  v181 = a4 & (*(a2 + 20) ^ 1);
  v19 = *(a2 + 16);
  if (*a1)
  {
    v20 = *(*(*a1 + 8) + 168) * 0.1;
  }

  else
  {
    v20 = 0.0;
  }

  v232 = 0;
  v233 = 0;
  v177 = v10;
  if (v181)
  {
    v229 = 0;
    v21 = realloc_array(0, &v229, 4 * v19, 0, 0, 1);
    v22 = v229;
    v232 = v229;
    LODWORD(v233) = v19;
    HIDWORD(v233) = v21 >> 2;
    *v229 = 0;
    v10 = v177;
    if (v19 >= 2)
    {
      v23 = 0;
      for (i = 1; i != v19; ++i)
      {
        v23 += i;
        v22[i] = v23;
      }
    }
  }

  v25 = *a1;
  v169 = 1;
  if (!a3 && ((a5 ^ 1 | v181) & 1) != 0)
  {
    v169 = *(*(v25 + 8) + 116);
  }

  v208 = v17;
  if (a5 & 1) != 0 || (a6)
  {
    if (!v25)
    {
      v200 = 0;
      v176 = 0;
      goto LABEL_19;
    }

    v200 = 0;
  }

  else
  {
    v200 = *(*(v25 + 8) + 82);
  }

  v176 = *(*(v25 + 8) + 164) ^ 1;
LABEL_19:
  LODWORD(v229) = v19;
  HIDWORD(v229) = v19;
  v231 = 0;
  v230 = 0;
  if (v19 * v19)
  {
    v230 = MemChunkAlloc(8 * (v19 * v19), 0);
    v231 = v19 * v19;
    v10 = v177;
  }

  if (!v169)
  {
LABEL_162:
    v11 = 1;
    goto LABEL_167;
  }

  v26 = 0;
  v167 = 0;
  v27 = 1.0 / v10 / 1000.0;
  v28 = v20 * (1.0 / v10 * v27 * v20);
  v179 = (v200 + v19) * (v200 + v19);
  v178 = 8 * v179;
  v191 = v200 + v19;
  v172 = a3;
  v29 = 8 * v191;
  v173 = -v10;
  v170 = 1.0 - a9;
  v171 = a9;
  v180 = 8 * v19;
  v30 = vdupq_lane_s64(*&v10, 0);
  v166 = v30;
  v182 = v200;
  v183 = a7;
  v184 = a8;
  v174 = a5;
  v175 = a6;
  v188 = v19;
  while (1)
  {
    v31 = v180;
    if (v19)
    {
      break;
    }

LABEL_161:
    v26 = ++v167 >= v169;
    if (v167 == v169)
    {
      goto LABEL_162;
    }
  }

  v32 = 0;
  v185 = v26;
  while (1)
  {
    v189 = v32;
    if (a6)
    {
      LODWORD(v227) = 0;
      v226 = 0;
      v33 = v31;
      v34 = MemChunkAlloc(v31, 0);
      v226 = v34;
      LODWORD(v227) = v19;
      bzero(v34, v33);
      v34[v32] = 0x3FF0000000000000;
      v35 = a7[1];
      if (v35)
      {
        v36 = *a7;
        v37 = *(a7 + 1);
        v38 = v32;
        do
        {
          v39 = *v34++;
          *(v37 + 8 * v38) = v39;
          v38 += v36;
          --v35;
        }

        while (v35);
      }

      *(*a8 + 8 * v32) = *(v17[13] + 8 * v32) * -0.0000305175781 / (v17[7] * 0.00390625);
      v40 = &v226;
      goto LABEL_160;
    }

    LODWORD(v226) = v191;
    HIDWORD(v226) = v191;
    v228 = 0;
    v227 = 0;
    if (v179)
    {
      v227 = MemChunkAlloc(v178, 0);
      v228 = v179;
    }

    v225 = 0;
    v224 = 0;
    if (!v191)
    {
      break;
    }

    v41 = MemChunkAlloc(v29, 0);
    v224 = v41;
    v225 = v191;
    bzero(v41, v29);
    if ((a5 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_34:
    if (v181)
    {
      v42 = v32 + 1;
    }

    else
    {
      v42 = 1;
    }

    v43 = v32;
    if (v181)
    {
      v43 = v232[v32] + v32;
    }

    v44 = *(v17[8] + 16 * v32);
    *v30.i64 = *v44 * 0.0000305175781;
    v209 = v30;
    *v30.i64 = v44[v42] * 0.00390625;
    v205 = v30;
    DataDataAccumUnscaled = CTPelAccum::getDataDataAccumUnscaled(v17, v43, 0, 0);
    __x = CTPelAccum::getDataDataAccumUnscaled(v17, v43, v42, 0);
    v192 = CTPelAccum::getDataDataAccumUnscaled(v17, v43, v42, v42);
    if (v181)
    {
      v45 = 0;
      v46 = v232;
      while (v45 >= v32)
      {
        if (v45 != v32)
        {
          v47 = v46[v45] + v32;
          v48 = v45 + 1;
          v52 = v32 + 1;
          v50 = v17;
          v51 = v47;
          v49 = v45 + 1;
          goto LABEL_46;
        }

        ++v45;
LABEL_47:
        if (v45 == v19)
        {
          goto LABEL_52;
        }
      }

      v47 = v46[v32] + v45;
      v48 = v45 + 1;
      v49 = v32 + 1;
      v50 = v17;
      v51 = v47;
      v52 = v45 + 1;
LABEL_46:
      v53 = CTPelAccum::getDataDataAccumUnscaled(v50, v51, v49, v52) * 0.00390625;
      v54 = CTPelAccum::getDataDataAccumUnscaled(v17, v47, v32 + 1, 0) * 0.0000305175781;
      v55 = CTPelAccum::getDataDataAccumUnscaled(v17, v47, v48, 0) * 0.0000305175781;
      v56 = CTPelAccum::getDataDataAccumUnscaled(v17, v47, 0, 0);
      v57 = *(*(a7 + 1) + 8 * (v45 + v45 * *a7));
      v58 = *(*a8 + 8 * v45);
      v59.i64[1] = v205.i64[1];
      *v59.i64 = *v205.i64 - (v54 * v58 + v57 * v53);
      v205 = v59;
      v60.i64[1] = v209.i64[1];
      *v60.i64 = *v209.i64 - (v56 * 0.000000238418579 * v58 + v57 * v55);
      v209 = v60;
      v45 = v48;
      v19 = v188;
      goto LABEL_47;
    }

LABEL_52:
    v62 = __x * 0.0000305175781;
    v202 = DataDataAccumUnscaled * 0.000000238418579;
    v193 = v192 * 0.00390625;
    v63 = v62 * v62 - v202 * v193;
    v64 = 0.0 - v63;
    if (v63 >= 0.0)
    {
      v64 = v62 * v62 - v202 * v193;
    }

    v11 = v185;
    v29 = 8 * v191;
    if (v64 < 1.0e-10)
    {
      goto LABEL_166;
    }

    v65 = (*v205.i64 * v202 - v62 * *v209.i64) / v63;
    v66 = v177 * v202 / v63 * -4.0;
    v67 = v66 + v65 * v65;
    if (v67 < 0.0)
    {
      goto LABEL_166;
    }

    v68 = DgnSqrt(v66 + v65 * v65);
    v69 = DgnSqrt(v67);
    v70 = (v68 - v65) * 0.5;
    v71 = (-v65 - v69) * 0.5;
    if (v70 <= 0.0 || v71 >= 1.0)
    {
      goto LABEL_166;
    }

    v73 = v70 + v71 <= 2.0 || v71 <= 0.0;
    if (!v73 || v202 == 0.0)
    {
      goto LABEL_166;
    }

    v74.f64[0] = (v68 - v65) * 0.5;
    __xa = (-v65 - v69) * 0.5;
    v74.f64[1] = __xa;
    v186 = vdupq_lane_s64(v209.i64[0], 0);
    v190 = v74;
    v210 = vdivq_f64(vmlaq_n_f64(v186, v74, -v62), vdupq_lane_s64(*&v202, 0));
    v75 = v181;
    if (v71 <= 0.0)
    {
      v75 = 1;
    }

    if ((v75 & 1) == 0)
    {
      v168 = DgnLog((v68 - v65) * 0.5);
      v76 = DgnLog(__xa);
      v77.f64[0] = v168;
      v77.f64[1] = v76;
      __asm { FMOV            V1.2D, #-0.5 }

      v83 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(v190, *v205.i64), v77, v166), v210, v186), _Q1, vmlaq_f64(vmlaq_f64(vmulq_f64(v210, vmulq_n_f64(v210, v202)), v190, vmulq_n_f64(v190, v193)), v190, vmulq_n_f64(v210, v62 + v62)));
      v70 = (v68 - v65) * 0.5;
      if ((vmovn_s64(vmvnq_s8(vcgtq_f64(vdupq_laneq_s64(v83, 1), v83))).u8[0] & 1) == 0)
      {
        v210.i64[0] = v210.i64[1];
        v70 = __xa;
      }
    }

    if (v172)
    {
      v70 = v170 + v171 * v70;
      v84 = *v210.i64 * v171;
    }

    else
    {
      v84 = *v210.i64;
    }

    v85 = v224;
    *&v224[v32] = v70;
    v86 = a7[1];
    if (v86)
    {
      v87 = *a7;
      v88 = *(a7 + 1);
      v89 = v32;
      do
      {
        v90 = *v85++;
        *(v88 + 8 * v89) = v90;
        v89 += v87;
        --v86;
      }

      while (v86);
    }

    *(*a8 + 8 * v32) = v84;
LABEL_159:
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v224);
    v40 = &v227;
LABEL_160:
    DgnPrimFixArray<double>::~DgnPrimFixArray(v40);
    ++v32;
    v31 = v180;
    if (v32 == v19)
    {
      goto LABEL_161;
    }
  }

  v41 = 0;
  if (a5)
  {
    goto LABEL_34;
  }

LABEL_50:
  if (v181)
  {
    v61 = v232[v32] + v32;
  }

  else
  {
    v61 = v32;
  }

  v91 = v200;
  if (v191)
  {
    v92 = 0;
    v93 = 0;
    v211 = 0;
    v194 = *(*(v208 + 8) + 16 * v189);
    v94 = v226;
    v95 = v227;
    __xb = v41;
    do
    {
      v96 = v211;
      v97 = v211 + 1;
      v98 = v211 + 1 - v200;
      v211 = v97;
      v99 = 256.0;
      if (v97 == v91)
      {
        v99 = 32768.0;
      }

      *&v41[v96] = v27 * (*(v194 + 8 * v98) / v99);
      if (v97 == v91)
      {
        v100 = 0.0;
      }

      else
      {
        v100 = v28;
      }

      v101 = v200 ^ 1;
      v102 = v200 - 1;
      v206 = v92;
      v203 = v93;
      do
      {
        v103 = CTPelAccum::getDataDataAccumUnscaled(v208, v61, v98, v101);
        _CF = v102-- != 0;
        v104 = _CF;
        v105 = 32768.0;
        if (!(v101 | v98))
        {
          v105 = 4194304.0;
        }

        if (((v211 != v200) & v104) != 0)
        {
          v105 = 256.0;
        }

        v106 = v27 * (v103 / v105);
        if (v93)
        {
          v107 = 0.0;
        }

        else
        {
          v107 = v100;
        }

        *&v108 = v107 + v106;
        v95[v96] = v108;
        v95[v92] = v108;
        ++v93;
        ++v92;
        LODWORD(v96) = v96 + v94;
        ++v101;
      }

      while (v93 != 1);
      v93 = v203 - 1;
      v92 = v206 + v94;
      v91 = v200;
      v41 = __xb;
    }

    while (v211 != v191);
  }

  a7 = v183;
  a8 = v184;
  v17 = v208;
  v19 = v188;
  v11 = v185;
  v29 = 8 * v191;
  if (v181)
  {
    LODWORD(v221) = v191;
    HIDWORD(v221) = v191;
    v223 = 0;
    v222 = 0;
    if (v179)
    {
      v222 = MemChunkAlloc(v178, 0);
      v223 = v179;
    }

    v109 = 0;
    do
    {
      if (v109 != v189)
      {
        LODWORD(v217) = 0;
        v216 = 0;
        if (v191)
        {
          v110 = MemChunkAlloc(v29, 0);
          v111 = v189;
          v216 = v110;
          LODWORD(v217) = v191;
        }

        else
        {
          v110 = 0;
          v111 = v189;
        }

        if (v200)
        {
          *v110 = *(*a8 + 8 * v109);
        }

        v112 = *a7;
        v113 = *(a7 + 1);
        v114 = &v110[v182];
        v115 = v19;
        v116 = v109;
        do
        {
          *v114++ = *(v113 + 8 * v116);
          v116 += v112;
          --v115;
        }

        while (v115);
        if (v109 <= v111)
        {
          v117 = v111;
        }

        else
        {
          v117 = v109;
        }

        v187 = v109;
        if (v109 >= v111)
        {
          LODWORD(v109) = v111;
        }

        v118 = v200;
        if (v191)
        {
          v119 = 0;
          v207 = 0;
          v120 = v232[v117];
          v121 = v221;
          v122 = v222;
          v123 = 1;
          do
          {
            v124 = v207++;
            v204 = v207 - v118;
            v125 = v200 ^ 1;
            v126 = v200 - 1;
            v195 = v123;
            __xc = v119;
            do
            {
              v212 = v207 != v118;
              v127 = CTPelAccum::getDataDataAccumUnscaled(v208, v120 + v109, v204, v125);
              _CF = v126-- != 0;
              v128 = _CF;
              v129 = 32768.0;
              if (!(v125 | v204))
              {
                v129 = 4194304.0;
              }

              v118 = v200;
              if ((v212 & v128) != 0)
              {
                v129 = 256.0;
              }

              *&v130 = v27 * (v127 / v129);
              v122[v124] = v130;
              v122[v119++] = v130;
              v124 += v121;
              ++v125;
              --v123;
            }

            while (v123);
            v123 = v195 + 1;
            v119 = __xc + v121;
          }

          while (v207 != v191);
        }

        DgnVector::operator*(&v216, &v221, &v219);
        v131 = v225;
        v17 = v208;
        v19 = v188;
        v11 = v185;
        v29 = 8 * v191;
        if (v225)
        {
          v132 = v219;
          v133 = v224;
          do
          {
            v134 = *v132++;
            *v133 = *v133 - v134;
            ++v133;
            --v131;
          }

          while (v131);
        }

        DgnPrimFixArray<double>::~DgnPrimFixArray(&v219);
        DgnPrimFixArray<double>::~DgnPrimFixArray(&v216);
        a7 = v183;
        a8 = v184;
        v109 = v187;
      }

      ++v109;
    }

    while (v109 != v19);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v222);
  }

  DgnMatrix::invert(&v221, &v226);
  if (!v221)
  {
    goto LABEL_165;
  }

  a6 = v175;
  LOBYTE(a5) = v174;
  if (((v189 != 0) & ~v176) == 0)
  {
    DgnMatrix::cofactorMatrix(a7, &v216);
    v229 = v216;
    DgnPrimFixArray<double>::copyArraySlice(&v230, &v217, 0, v218);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v217);
  }

  LODWORD(v217) = 0;
  v216 = 0;
  if (v191)
  {
    v135 = MemChunkAlloc(v29, 0);
    v32 = v189;
    v216 = v135;
    LODWORD(v217) = v191;
  }

  else
  {
    v135 = 0;
    v32 = v189;
  }

  if (v200)
  {
    *v135 = 0;
  }

  v136 = v229;
  v137 = v230;
  v138 = &v135[v182];
  v139 = v19;
  v140 = v32;
  do
  {
    *v138++ = v137[v140];
    v140 += v136;
    --v139;
  }

  while (v139);
  DgnVector::operator*(&v216, &v221, &v219);
  v141 = v220;
  if (v220)
  {
    v142 = v219;
    v143 = 0.0;
    v144 = v216;
    v145 = v219;
    v146 = v220;
    do
    {
      v147 = *v145++;
      v148 = v147;
      v149 = *v144++;
      v143 = v143 + v148 * v149;
      --v146;
    }

    while (v146);
    v150 = 0.0;
    v151 = v224;
    do
    {
      v152 = *v142++;
      v153 = v152;
      v154 = *v151++;
      v150 = v150 + v153 * v154;
      --v141;
    }

    while (v141);
    v155 = v27 * v143;
  }

  else
  {
    v150 = 0.0;
    v155 = v27 * 0.0;
  }

  if (v155 >= 1.0e-10)
  {
    v156 = v155 * -4.0 * v173 + v150 * v150;
    if (v156 >= 0.0)
    {
      v157 = DgnSqrt(v156);
      DgnVector::operator*(&v216, v213, v27 * ((v157 - v150) / (v155 + v155)));
      DgnVector::operator+(&v224, v213, v214);
      DgnMatrix::operator*(&v221, v214, v215);
      DgnPrimFixArray<double>::~DgnPrimFixArray(v214);
      DgnPrimFixArray<double>::~DgnPrimFixArray(v213);
      v158 = v215[0];
      if (v200)
      {
        *(*a8 + 8 * v32) = *v215[0];
      }

      v159 = *a7;
      v160 = *(a7 + 1);
      v161 = (v158 + 8 * v200);
      v162 = v19;
      v163 = v32;
      do
      {
        v164 = *v161++;
        *(v160 + 8 * v163) = v164;
        v163 += v159;
        --v162;
      }

      while (v162);
      DgnPrimFixArray<double>::~DgnPrimFixArray(v215);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v219);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v216);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v222);
      goto LABEL_159;
    }
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v219);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v216);
LABEL_165:
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v222);
LABEL_166:
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v224);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v227);
LABEL_167:
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v230);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v232);
  return v11 & 1;
}

uint64_t ConstrainedTransAccMgr::computeMeansTransform(ConstrainedTransAccMgr *this, CTPelAccum *a2, int a3, DgnMatrix *a4)
{
  v6 = *(*this + 48);
  v7 = a3 & (*(a2 + 20) ^ 1);
  v8 = *(a2 + 4);
  v77 = 0;
  v78 = 0;
  v57 = v7;
  if (v7 == 1)
  {
    v74 = 0;
    v9 = realloc_array(0, &v74, 4 * v8, 0, 0, 1);
    v10 = v74;
    v77 = v74;
    LODWORD(v78) = v8;
    HIDWORD(v78) = v9 >> 2;
    *v74 = 0;
    if (v8 >= 2)
    {
      v11 = 0;
      for (i = 1; i != v8; ++i)
      {
        v11 += i;
        v10[i] = v11;
      }
    }
  }

  v13 = *(a2 + 7) * 0.00390625;
  if (v13 != 0.0)
  {
    v53 = 1;
    if (a3)
    {
      if (v6)
      {
        v53 = *(*(*this + 8) + 388);
        if (!v53)
        {
          v51 = 1;
          goto LABEL_50;
        }
      }
    }

    v54 = 0;
    v14 = 1.0 / (v13 * 1000.0);
    v58 = v8 * v8;
    v55 = 8 * (v8 * v8);
    v56 = 8 * v8;
    v15 = a2;
    v64 = v8;
    while (!v8)
    {
LABEL_46:
      v51 = 1;
      if (++v54 == v53)
      {
        goto LABEL_50;
      }
    }

    v16 = 0;
    while (1)
    {
      LODWORD(v74) = v8;
      HIDWORD(v74) = v8;
      v76 = 0;
      v75 = 0;
      if (v58)
      {
        v75 = MemChunkAlloc(v55, 0);
        v76 = v58;
      }

      v73 = 0;
      v72 = 0;
      v17 = MemChunkAlloc(v56, 0);
      v72 = v17;
      v73 = v8;
      if (v57)
      {
        v18 = v77[v16] + v16;
      }

      else
      {
        v18 = v16;
      }

      v19 = 0;
      v20 = 0;
      v60 = v16;
      v61 = *(*(v15 + 16) + 16 * v16);
      v21 = v74;
      v22 = v75;
      v23 = 1;
      v65 = v17;
      do
      {
        v24 = 0;
        v25 = v20++;
        *&v17[v25] = v14 * (*(v61 + 8 * v20) * 0.00390625);
        v26 = v19;
        do
        {
          *&v27 = v14 * (CTPelAccum::getMeanMeanAccumUnscaled(v15, v18, v20, ++v24) * 0.00390625);
          v22[v25] = v27;
          v22[v26++] = v27;
          LODWORD(v25) = v25 + v21;
        }

        while (v23 != v24);
        ++v23;
        v19 += v21;
        v8 = v64;
        v17 = v65;
      }

      while (v20 != v64);
      v28 = v60;
      if (v57)
      {
        LODWORD(v69) = v64;
        HIDWORD(v69) = v64;
        v71 = 0;
        v70 = 0;
        if (v58)
        {
          v70 = MemChunkAlloc(v55, 0);
          v71 = v58;
        }

        v29 = 0;
        do
        {
          if (v29 != v28)
          {
            DgnMatrix::getRow(v68, a4, v29);
            v30 = 0;
            v31 = 0;
            if (v29 <= v28)
            {
              v32 = v28;
            }

            else
            {
              v32 = v29;
            }

            v62 = v29;
            if (v29 >= v28)
            {
              LODWORD(v29) = v28;
            }

            v33 = v77[v32];
            v34 = v69;
            v35 = v70;
            v36 = 1;
            do
            {
              v37 = 0;
              v38 = v31++;
              v66 = v30;
              v39 = v30;
              do
              {
                *&v40 = v14 * (CTPelAccum::getMeanMeanAccumUnscaled(a2, v33 + v29, v31, ++v37) * 0.00390625);
                v35[v38] = v40;
                v35[v39++] = v40;
                v38 += v34;
              }

              while (v36 != v37);
              ++v36;
              v30 = v66 + v34;
              v8 = v64;
            }

            while (v31 != v64);
            DgnVector::operator*(v68, &v69, v67);
            v41 = v73;
            v29 = v62;
            v15 = a2;
            if (v73)
            {
              v42 = v67[0];
              v43 = v72;
              do
              {
                v44 = *v42++;
                *v43 = *v43 - v44;
                ++v43;
                --v41;
              }

              while (v41);
            }

            DgnPrimFixArray<double>::~DgnPrimFixArray(v67);
            DgnPrimFixArray<double>::~DgnPrimFixArray(v68);
            v28 = v60;
          }

          ++v29;
        }

        while (v29 != v8);
        DgnPrimFixArray<double>::~DgnPrimFixArray(&v70);
      }

      DgnMatrix::invert(&v69, &v74);
      if (!v69)
      {
        break;
      }

      DgnMatrix::operator*(&v69, &v72, v68);
      v45 = *(a4 + 1);
      if (v45)
      {
        v46 = v68[0];
        v47 = *a4;
        v48 = v28;
        v49 = *(a4 + 1);
        do
        {
          v50 = *v46++;
          *(v49 + 8 * v48) = v50;
          v48 += v47;
          --v45;
        }

        while (v45);
      }

      DgnPrimFixArray<double>::~DgnPrimFixArray(v68);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v70);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v72);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v75);
      v16 = v28 + 1;
      if (v16 == v8)
      {
        goto LABEL_46;
      }
    }

    DgnPrimFixArray<double>::~DgnPrimFixArray(&v70);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v72);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v75);
  }

  v51 = 0;
LABEL_50:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v77);
  return v51;
}

BOOL fillIntTransform(uint64_t a1, double **a2, uint64_t *a3, _DWORD **a4, unsigned int a5, int a6, int a7, unsigned int a8)
{
  if (a6 == 3 || !a8)
  {
LABEL_19:
    v12 = 1;
    if (a8 && a7)
    {
      v19 = *a2;
      v20 = a5;
      v21 = *a4;
      v22 = a8 - 1;
      do
      {
        v23 = *v19++;
        v24 = v23 * v20;
        if (v23 * v20 >= 0.0)
        {
          v25 = 0.5;
        }

        else
        {
          v25 = -0.5;
        }

        *v21++ = (v24 + v25);
        v26 = fabs(v24);
        v28 = v22-- != 0;
        v12 = v26 <= 1073741820.0;
      }

      while (v26 <= 1073741820.0 && v28);
    }
  }

  else
  {
    v8 = 0;
    v9 = *(a1 + 8);
    v10 = a5;
    v11 = *a3;
    while (a6 == 2)
    {
      v12 = 0;
      v13 = *(v9 + 8 * (v8 + v8 * *a1)) * v10;
      if (v13 >= 0.0)
      {
        v14 = 0.5;
      }

      else
      {
        v14 = -0.5;
      }

      **(v11 + 16 * v8) = (v13 + v14);
      if (v13 < -32768.0 || v13 > 32767.0)
      {
        return v12;
      }

LABEL_18:
      if (++v8 == a8)
      {
        goto LABEL_19;
      }
    }

    v15 = 0;
    v16 = *(v11 + 16 * v8);
    while (1)
    {
      v12 = 0;
      v17 = *(v9 + 8 * (v8 + *a1 * v15)) * v10;
      v18 = v17 >= 0.0 ? 0.5 : -0.5;
      *(v16 + 4 * v15) = (v17 + v18);
      if (v17 < -32768.0 || v17 > 32767.0)
      {
        break;
      }

      if (a8 == ++v15)
      {
        goto LABEL_18;
      }
    }
  }

  return v12;
}

void DgnArray<LinearTransform>::copyArraySlice(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v8 = *(a1 + 8);
  if (v8 >= 1)
  {
    v9 = 72 * v8 - 72;
    do
    {
      LinearTransform::~LinearTransform((*a1 + v9));
      v9 -= 72;
    }

    while (v9 != -72);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 12);
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
    DgnArray<LinearTransform>::reallocElts(a1, a4 - v10, 0);
    v11 = *(a1 + 8);
  }

  v13 = a4;
  v12 = v11;
  do
  {
    LinearTransform::LinearTransform((*a1 + 72 * v12), (*a2 + 72 * a3));
    v12 = *(a1 + 8) + 1;
    *(a1 + 8) = v12;
    ++a3;
    --v13;
  }

  while (v13);
  if (v12 > a4)
  {
    if (v12 > a4)
    {
      v14 = v12;
      v15 = 72 * v12 - 72;
      do
      {
        --v14;
        LinearTransform::~LinearTransform((*a1 + v15));
        v15 -= 72;
      }

      while (v14 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  v16 = a4 - v12;
  if (a4 > v12)
  {
    v17 = 72 * v12;
    do
    {
      LinearTransform::LinearTransform((*a1 + v17));
      v17 += 72;
      --v16;
    }

    while (v16);
  }

LABEL_17:
  *(a1 + 8) = a4;
}

uint64_t *CTFTMgr::setSpeakerCTList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DgnArray<LinearTransform>::copyArraySlice(a1 + 64, a2, 0, *(a2 + 8));
  DgnPrimArray<int>::copyArraySlice((a1 + 80), a3, 0, *(a3 + 8));
  *(a1 + 56) = *(a1 + 72);
  DgnPrimArray<int>::copyArraySlice((a1 + 24), a4, 0, *(a4 + 8));
  DgnArray<LinearTransform>::copyArraySlice(a1 + 104, a5, 0, *(a5 + 8));
  result = DgnPrimArray<int>::copyArraySlice((a1 + 120), a6, 0, *(a6 + 8));
  *(a1 + 96) = *(a1 + 112);
  v12 = *(a1 + 56);
  if (v12)
  {
    v12 = *(*(a1 + 64) + 4);
  }

  *(a1 + 8) = v12;
  return result;
}

uint64_t multiplyIntTransform(LinearTransform *a1, const LinearTransform *a2, uint64_t a3, int a4, int a5, DgnMatrix *this, int *a7)
{
  DgnMatrix::makeIdentity(this, &v43);
  DgnMatrix::makeIdentity(this, &v41);
  DgnMatrix::makeIdentity(this, &v39);
  v38 = 0;
  v37 = 0;
  if (this)
  {
    v37 = MemChunkAlloc(8 * this, 0);
    v38 = this;
    bzero(v37, 8 * this);
    v35 = MemChunkAlloc(8 * this, 0);
    v36 = this;
    bzero(v35, 8 * this);
    v33 = MemChunkAlloc(8 * this, 0);
    v34 = this;
    bzero(v33, 8 * this);
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v33 = 0;
  }

  LinearTransform::getUnscaledData(a1, &v43, &v37);
  LinearTransform::getUnscaledData(a2, &v41, &v35);
  if (a4 == 3)
  {
    if (a5)
    {
      DgnVector::operator+(&v35, &v37, &v30);
      DgnPrimFixArray<double>::copyArraySlice(&v33, &v30, 0, v31);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v30);
    }

    v14 = 0;
  }

  else
  {
    DgnMatrix::operator*(&v43, &v41, &v30);
    v39 = v30;
    DgnPrimFixArray<double>::copyArraySlice(v40, &v31, 0, v32);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v31);
    v14 = this;
    if (a5)
    {
      DgnMatrix::operator*(&v43, &v35, &v28);
      DgnVector::operator+(&v28, &v37, &v30);
      DgnPrimFixArray<double>::copyArraySlice(&v33, &v30, 0, v31);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v30);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v28);
      v14 = this;
    }
  }

  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(&v28, v14);
  v15 = v29;
  if (v29)
  {
    v16 = 0;
    v17 = 0;
    if (a4 == 2)
    {
      v18 = 1;
    }

    else
    {
      v18 = this;
    }

    do
    {
      v19 = v28 + v16;
      v20 = *(v28 + v16 + 12);
      if (v18 > v20)
      {
        DgnPrimArray<unsigned int>::reallocElts(v28 + v16, v18 - v20, 0);
        v15 = v29;
      }

      *(v19 + 8) = v18;
      ++v17;
      v16 += 16;
    }

    while (v17 < v15);
  }

  if (a5)
  {
    v21 = this;
  }

  else
  {
    v21 = 0;
  }

  v26 = 0;
  v27 = 0;
  if (v21)
  {
    v30 = 0;
    HIDWORD(v27) = realloc_array(0, &v30, 4 * v21, 0, 0, 1) >> 2;
    v26 = v30;
  }

  LODWORD(v27) = v21;
  if (!fillIntTransform(&v39, &v33, &v28, &v26, a3, a4, a5, this))
  {
    DgnMatrix::makeIdentity(this, &v30);
    v39 = v30;
    DgnPrimFixArray<double>::copyArraySlice(v40, &v31, 0, v32);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v31);
    LODWORD(v31) = 0;
    v30 = 0;
    if (this)
    {
      v30 = MemChunkAlloc(8 * this, 0);
      LODWORD(v31) = this;
      bzero(v30, 8 * this);
    }

    DgnPrimFixArray<double>::copyArraySlice(&v33, &v30, 0, this);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v30);
    fillIntTransform(&v39, &v33, &v28, &v26, a3, a4, a5, this);
  }

  LinearTransform::setSize(a1, this, this);
  LinearTransform::setTransform(a1, &v28, a4, &v26, a5, a3, 0);
  v22 = DgnMatrix::determinant(&v39);
  v23 = DgnLog(v22) * a3;
  v24 = 0.5;
  if (v23 < 0.0)
  {
    v24 = -0.5;
  }

  *a7 = (v23 + v24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v26);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v28);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v33);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v35);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v37);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v40);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v42);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v44);
}

void sub_262613DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a14);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a12);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a17);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a19);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a21);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a24);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a27);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v27 - 104);
  _Unwind_Resume(a1);
}

uint64_t *CTFTMgr::setChannelCTList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DgnArray<LinearTransform>::copyArraySlice(a1 + 144, a2, 0, *(a2 + 8));
  DgnPrimArray<int>::copyArraySlice((a1 + 160), a3, 0, *(a3 + 8));
  *(a1 + 136) = *(a1 + 152);
  DgnPrimArray<int>::copyArraySlice((a1 + 40), a4, 0, *(a4 + 8));
  DgnArray<LinearTransform>::copyArraySlice(a1 + 184, a5, 0, *(a5 + 8));
  result = DgnPrimArray<int>::copyArraySlice((a1 + 200), a6, 0, *(a6 + 8));
  *(a1 + 176) = *(a1 + 192);
  v12 = *(a1 + 136);
  if (v12)
  {
    v12 = *(*(a1 + 144) + 4);
  }

  *(a1 + 12) = v12;
  return result;
}

uint64_t ConstrainedTransAccMgr::copyBackMeans(AdaptController **this, uint64_t a2, uint64_t a3, LinearTransform *a4)
{
  v5 = a3;
  v6 = a2;
  PelMgr = AdaptController::getPelMgr(*this);
  v8 = PelMgr;
  v18[0] = 0;
  v18[1] = 0;
  v17[0] = 0;
  v17[1] = 0;
  v16[0] = 0;
  v16[1] = 0;
  v9 = *(PelMgr + 16);
  if (v9 == 1)
  {
    PelMgr::unpackGenoneComponent(PelMgr, v6, v5, v18, v16);
  }

  else
  {
    PelMgr::unpackGenoneComponent(PelMgr, v6, v5, v18, v17);
  }

  v15[0] = 0;
  v15[1] = 0;
  LinearTransform::transformMeans(a4, v18, v15);
  if (v9 == 1)
  {
    PelMgr::packGenoneComponent(v8, v6, v5, v15, v16, 1, v10, v11, v12, v13);
  }

  else
  {
    PelMgr::packGenoneComponent(v8, v6, v5, v15, v17);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v17);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
}

void sub_2626140C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

uint64_t *CTFTMgr::setOnlineCTList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DgnArray<LinearTransform>::copyArraySlice(a1 + 224, a2, 0, *(a2 + 8));
  result = DgnPrimArray<int>::copyArraySlice((a1 + 240), a3, 0, *(a3 + 8));
  v6 = *(a1 + 232);
  *(a1 + 216) = v6;
  if (v6)
  {
    v6 = *(*(a1 + 224) + 4);
  }

  *(a1 + 16) = v6;
  return result;
}

double DgnVector::operator+@<D0>(uint64_t a1@<X0>, double **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  result = DgnPrimFixArray<double>::copyArraySlice(a3, a1, 0, *(a1 + 8));
  v6 = *(a3 + 8);
  if (v6)
  {
    v7 = *a2;
    v8 = *a3;
    do
    {
      v9 = *v7++;
      result = v9 + *v8;
      *v8++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t DgnArray<DgnArray<DgnPrimArray<int>>>::copyArraySlice(uint64_t result, void *a2, unsigned int a3, int a4)
{
  v7 = result;
  v8 = *(result + 8);
  if (v8 >= 1)
  {
    v9 = v8 + 1;
    v10 = 16 * v8 - 16;
    do
    {
      result = DgnArray<DgnPrimArray<unsigned char>>::releaseAll(*v7 + v10);
      --v9;
      v10 -= 16;
    }

    while (v9 > 1);
  }

  *(v7 + 8) = 0;
  v11 = *(v7 + 12);
  if (a4 <= v11)
  {
    v12 = 0;
    v13 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v7, a4 - v11, 0);
    v12 = *(v7 + 8);
  }

  v14 = a4;
  v13 = v12;
  do
  {
    v15 = *a2 + 16 * a3;
    v16 = (*v7 + 16 * v13);
    *v16 = 0;
    v16[1] = 0;
    result = DgnArray<DgnPrimArray<unsigned int>>::copyArraySlice(v16, v15, 0, *(v15 + 8));
    v13 = *(v7 + 8) + 1;
    *(v7 + 8) = v13;
    ++a3;
    --v14;
  }

  while (v14);
  if (v13 > a4)
  {
    if (v13 > a4)
    {
      v17 = v13;
      v18 = 16 * v13 - 16;
      do
      {
        result = DgnArray<DgnPrimArray<unsigned char>>::releaseAll(*v7 + v18);
        --v17;
        v18 -= 16;
      }

      while (v17 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  if (v13 < a4)
  {
    v19 = a4 - v13;
    v20 = 16 * v13;
    do
    {
      v21 = (*v7 + v20);
      *v21 = 0;
      v21[1] = 0;
      v20 += 16;
      --v19;
    }

    while (v19);
  }

LABEL_17:
  *(v7 + 8) = a4;
  return result;
}

CTPelAccum *DgnIOwnArray<CTPelAccum *>::destructAt(CTPelAccum *result, int a2, int a3)
{
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = a3 + a2 - 1;
    do
    {
      result = DgnDelete<CTPelAccum>(*(*v3 + 8 * v5));
      *(*v3 + 8 * v5) = 0;
    }

    while (v5-- > v4);
  }

  return result;
}

uint64_t *DgnArray<LinearTransform>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 72 * v6, 72 * v5, 72 * v5, 1);
  *(a1 + 12) = result / 0x48;
  *a1 = v8;
  return result;
}

void DgnSharedMemMgr::DgnSharedMemMgr(DgnSharedMemMgr *this, const char *a2)
{
  DgnString::DgnString(this, a2);
  recursive_mutex_init((v3 + 16));
  *(this + 20) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = 0;
}

void DgnSharedMemMgr::startupDSMMgr(DgnSharedMemMgr *this, const char *a2)
{
  v3 = MemChunkAlloc(0x70uLL, 0);
  DgnSharedMemMgr::DgnSharedMemMgr(v3, this);
  DgnSharedMemMgr::smpDSMMgr = v4;
}

void DgnSharedMemMgr::printSize(DgnSharedMemMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v47, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmmgr.cpp", 78);
  if (v48)
  {
    v13 = v47;
  }

  else
  {
    v13 = byte_26287F772;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, byte_26287F772, a3, byte_26287F772, v13);
  v44 = a5;
  DgnString::~DgnString(&v47);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, byte_26287F772);
  v15 = sizeObject(this, 0);
  v16 = sizeObject(this, 1);
  v17 = sizeObject(this, 3);
  getShipObjectSizeDescription(&v47, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmmgr.cpp", 80);
  if (v48)
  {
    v19 = v47;
  }

  else
  {
    v19 = byte_26287F772;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, (a3 + 1), byte_26287F772, (34 - a3), (34 - a3), v19, v15, v16, v17);
  DgnString::~DgnString(&v47);
  *a4 += v15;
  *v44 += v16;
  *a6 += v17;
  v20 = sizeObject(this + 16, 0);
  v21 = sizeObject(this + 16, 1);
  v22 = sizeObject(this + 16, 3);
  getShipObjectSizeDescription(&v47, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmmgr.cpp", 81);
  if (v48)
  {
    v24 = v47;
  }

  else
  {
    v24 = byte_26287F772;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), byte_26287F772, (34 - a3), (34 - a3), v24, v20, v21, v22);
  DgnString::~DgnString(&v47);
  *a4 += v20;
  *v44 += v21;
  *a6 += v22;
  getShipObjectSizeDescription(&v47, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmmgr.cpp", 82);
  if (v48)
  {
    v26 = v47;
  }

  else
  {
    v26 = byte_26287F772;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v25, (a3 + 1), byte_26287F772, (a3 + 1), byte_26287F772, v26);
  DgnString::~DgnString(&v47);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v27, (a3 + 1), byte_26287F772);
  v28 = *(this + 26);
  if (v28)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    do
    {
      v33 = *(this + 12);
      if (*(v33 + 8 * v29))
      {
        v47 = 0;
        v45 = 0;
        v46 = 0;
        DgnSharedMemSet::printSize(*(v33 + 8 * v29), v29, (a3 + 2), &v47, &v46, &v45);
        v32 += v47;
        v31 += v46;
        v30 += v45;
        v28 = *(this + 26);
      }

      ++v29;
    }

    while (v29 < v28);
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v30 = 0;
    v28 = 0;
  }

  v34 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v34 = 12;
  }

  v35 = v34 + v32;
  v36 = v34 + v31;
  v37 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v37 = 3;
  }

  v38 = v35 + (*(this + 27) << v37);
  v39 = v36 + (v28 << v37);
  getShipObjectSizeDescription(&v47, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmmgr.cpp", 82);
  if (v48)
  {
    v41 = v47;
  }

  else
  {
    v41 = byte_26287F772;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, (a3 + 1), byte_26287F772, (34 - a3), (34 - a3), v41, v38, v39, v30);
  DgnString::~DgnString(&v47);
  *a4 += v38;
  *v44 += v39;
  *a6 += v30;
  getShipObjectSizeDescription(&v47, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmmgr.cpp", 84);
  if (v48)
  {
    v43 = v47;
  }

  else
  {
    v43 = byte_26287F772;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, a3, byte_26287F772, (35 - a3), (35 - a3), v43, *a4, *v44, *a6);
  DgnString::~DgnString(&v47);
}

uint64_t DgnSharedMemMgr::getMaybeCreateSetObjectEx(DgnSharedMemMgr *this, const DgnString *a2, const DgnString *a3)
{
  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmmgr.cpp", 115, "mrecutil/dsmmgr", 2, "%s", byte_26287F772);
  DgnString::DgnString(&v20, this);
  DgnString::operator+=(&v20, a3);
  v6 = *(this + 26);
  v19 = this + 16;
  pthread_mutex_lock((this + 16));
  ++*(this + 20);
  *(this + 11) = pthread_self();
  if (v6)
  {
    v8 = 0;
    while (1)
    {
      SetPrefixName = DgnSharedMemSet::getSetPrefixName(*(*(this + 12) + 8 * v8));
      v10 = *(SetPrefixName + 8) ? *SetPrefixName : byte_26287F772;
      v11 = v21 ? v20 : byte_26287F772;
      if (!strcmp(v10, v11))
      {
        SetCacheDir = DgnSharedMemSet::getSetCacheDir(*(*(this + 12) + 8 * v8));
        v13 = *(SetCacheDir + 8) ? *SetCacheDir : byte_26287F772;
        v14 = *(a2 + 2) ? *a2 : byte_26287F772;
        if (!strcmp(v13, v14))
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        LODWORD(v8) = v6;
        goto LABEL_21;
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 == v6)
  {
LABEL_21:
    Set = DgnSharedMemSet::createSet(a2, &v20, v7);
    v16 = *(this + 26);
    if (v16 == *(this + 27))
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 96, 1, 1);
      v16 = *(this + 26);
    }

    *(*(this + 12) + 8 * v16) = Set;
    *(this + 26) = v16 + 1;
  }

  v17 = *(*(this + 12) + 8 * v8);
  Latch<DgnLock,LatchAdapter>::~Latch(&v19);
  DgnString::~DgnString(&v20);
  return v17;
}

void sub_262614AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t *Latch<DgnLock,LatchAdapter>::~Latch(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(v2 + 64) - 1;
    *(v2 + 64) = v3;
    if (!v3)
    {
      *(v2 + 72) = 0;
    }

    pthread_mutex_unlock(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t loggableToken(const char *a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v5 = strlen(a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, a1, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " (", 2);
  v7 = MEMORY[0x26672B080](&v9, *(a2 + 16));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") : ", 4);
  std::stringbuf::str();
  v9 = *MEMORY[0x277D82828];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x277D82828] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x26672B160](&v13);
}

void sub_262614CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x26672B160](v3 + 112);
  _Unwind_Resume(a1);
}

void TLexerLexicon::TLexerLexicon(TLexerLexicon *this, const TLocaleInfo *a2)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  operator new();
}