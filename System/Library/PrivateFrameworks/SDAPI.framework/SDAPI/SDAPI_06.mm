void sub_2625BE518(_Unwind_Exception *a1)
{
  v5 = v3;
  std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::destroy(v5, *(v1 + 160));
  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

char *TStringParam::get(TStringParam *this)
{
  ActiveConfigHandle = TParam::getActiveConfigHandle(this);
  v3 = this + 24 * TParam::getValidConfig(this, ActiveConfigHandle);
  result = v3 + 152;
  if (v3[175] < 0)
  {
    return *result;
  }

  return result;
}

uint64_t TAligner<wchar_t const,TRneCost>::align<wchar_t const*>(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v6 = (a3 - a2) >> 2;
  v7 = (a5 - a4) >> 2;
  v41 = v7 + 1;
  if (v7 + 1 >= (v6 + 1))
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = v6 + 1;
  if (v7 + 1 >= (v6 + 1))
  {
    v10 = v7 + 1;
  }

  else
  {
    v10 = v6 + 1;
  }

  if (v7 + 1 < (v6 + 1))
  {
    v11 = a2;
  }

  else
  {
    v11 = a4;
  }

  if (v7 + 1 < (v6 + 1))
  {
    v12 = a4;
  }

  else
  {
    v12 = a2;
  }

  v36 = v12;
  v37 = v10;
  std::vector<unsigned long>::resize((a1 + 8), 3 * v8);
  std::vector<unsigned short>::resize((a1 + 32), 2 * v8);
  v13 = *(a1 + 8);
  v14 = *(a1 + 32);
  v15 = &v13[v8];
  *v15 = 0;
  *v13 = 0;
  *v14 = 0;
  if (v8 >= 2)
  {
    v16 = *v15 + 2;
    for (i = 1; i != v8; ++i)
    {
      v13[i] = 2;
      v15[i] = v16;
      v14[i] = i;
      v16 += 2;
    }
  }

  if (v37 >= 2)
  {
    v18 = &v13[2 * v8];
    v19 = 1;
    v20 = &v14[v8];
    while (1)
    {
      v38 = v19;
      v39 = v15;
      v21 = v18;
      v22 = v20;
      *v18 = *v15 + 2;
      v40 = v14;
      *v20 = *v14 + 1;
      if (v8 >= 2)
      {
        break;
      }

LABEL_34:
      v18 = v39;
      v19 = v38 + 1;
      ++v11;
      v20 = v40;
      v14 = v22;
      v15 = v21;
      if (v38 + 1 == v37)
      {
        return v21[v8 - 1];
      }
    }

    v23 = v15 + 1;
    v24 = v14 + 1;
    v25 = 1;
    v26 = v36;
    while (1)
    {
      if (v41 >= v9)
      {
        v27 = v26;
      }

      else
      {
        v27 = v11;
      }

      if (v41 >= v9)
      {
        v28 = v11;
      }

      else
      {
        v28 = v26;
      }

      SubstitutionCost = TRneCost::getSubstitutionCost(a1, *v27, *v28);
      if (v30 == -1)
      {
        v33 = *v23 + 2;
        v31 = v25 - 1;
      }

      else
      {
        v31 = v25 - 1;
        v32 = *(v23 - 1) + v30;
        v21[v25] = v32;
        v22[v25] = *(v24 - 1) + !SubstitutionCost;
        v33 = *v23 + 2;
        if (v33 >= v32)
        {
          goto LABEL_31;
        }
      }

      v21[v25] = v33;
      v22[v25] = *v24 + 1;
      v32 = v33;
LABEL_31:
      v34 = *(*(a1 + 8) + 8 * v25) + v21[v31];
      if (v34 < v32)
      {
        v21[v25] = v34;
        v22[v25] = v22[v31] + 1;
      }

      ++v25;
      ++v26;
      ++v23;
      ++v24;
      if (v8 == v25)
      {
        goto LABEL_34;
      }
    }
  }

  v21 = &v13[v8];
  return v21[v8 - 1];
}

void std::vector<unsigned long>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(result, a2 - v2);
  }
}

void std::vector<unsigned short>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(result, a2 - v2);
  }
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *TAligner<wchar_t const,TRneCost>::~TAligner(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    a1[23] = v2;
    operator delete(v2);
  }

  v3 = a1[19];
  if (v3)
  {
    a1[20] = v3;
    operator delete(v3);
  }

  v4 = a1[16];
  if (v4)
  {
    a1[17] = v4;
    operator delete(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    a1[14] = v5;
    operator delete(v5);
  }

  v6 = a1[10];
  if (v6)
  {
    a1[11] = v6;
    operator delete(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    a1[8] = v7;
    operator delete(v7);
  }

  v8 = a1[4];
  if (v8)
  {
    a1[5] = v8;
    operator delete(v8);
  }

  v9 = a1[1];
  if (v9)
  {
    a1[2] = v9;
    operator delete(v9);
  }

  return a1;
}

void *TOutputStream::TOutputStream(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  v5 = (a2 + *(*a2 - 24));
  v6 = std::locale::classic();
  std::ios_base::getloc(v5);
  std::ios_base::imbue(v5, v6);
  std::locale::~locale(&v11);
  rdbuf = v5->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, v6);
    std::locale::locale(&v10, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, v6);
    std::locale::~locale(&v10);
  }

  std::locale::~locale(&v9);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x26672B0F0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2625BED9C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t TRegisterable<TLatticeProcessor>::getRegistry()
{
  {
    operator new();
  }

  return TRegisterable<TLatticeProcessor>::getRegistry(void)::s_registry;
}

uint64_t TBaseRegistry<TLatticeProcessor *>::registerInstance(void *a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = a1[2];
  }

  else
  {
    v4 = a1[1];
    a1[2] = v4;
  }

  v5 = a1[3];
  if (v4 >= v5)
  {
    v7 = a1[1];
    v8 = (v4 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>((a1 + 1), v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = a1[1];
    v14 = a1[2] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[1];
    a1[1] = v15;
    a1[2] = v6;
    a1[3] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v4 = a2;
    v6 = (v4 + 1);
  }

  a1[2] = v6;
  v17 = a1[1];
  ++*a1;
  return (v6 - v17) >> 3;
}

uint64_t *std::vector<TLatticeConstructionTransData>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<TLatticeConstructionTransData>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2625BF0D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TLatticeConstructionTransData>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TLatticeConstructionTransData>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TLatticeConstructionTransData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x26672B0F0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2625BF228(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t AdaptConfig::writeObject(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = *a1;
  writeObject(a2, &v7, a3);
  v7 = *(a1 + 4);
  writeObject(a2, &v7, a3);
  writeObject(a2, (a1 + 8), a3);
  writeObject(a2, (a1 + 9), a3);
  writeObject(a2, (a1 + 10), a3);
  writeObject(a2, (a1 + 11), a3);
  writeObject(a2, (a1 + 12), a3);
  return writeObject(a2, (a1 + 13), a3);
}

uint64_t AdaptStats::writeObject(AdaptStats *this, DgnStream *a2, unsigned int *a3)
{
  writeObject(a2, this + 2, a3);
  writeObject(a2, this + 3, a3);
  writeObject(a2, this + 10, a3);
  writeObject(a2, this + 4, a3);

  return writeObject<double>(a2, this, a3);
}

void *AdaptConfig::clear(void *this)
{
  *(this + 6) = 0;
  *this = 0;
  return this;
}

double AdaptStats::update(AdaptStats *this, unsigned int a2, uint64_t a3, uint64_t a4)
{
  result = *(*this + 8 * a2) + a3 * *(this + 4) / a4;
  *(*this + 8 * a2) = result;
  return result;
}

void readObject<double>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v8 = 0;
  readObject(a1, &v8, a3);
  v6 = v8;
  v7 = *(a2 + 12);
  if (v8 > v7)
  {
    DgnPrimArray<unsigned long long>::reallocElts(a2, v8 - v7, 0);
  }

  *(a2 + 8) = v6;
  readObjectArray(a1, *a2, v6, a3);
}

void (***AdaptStatsHistory::saveASB(void (***this)(void), DFile *a2, DFileChecksums *a3, char a4, uint64_t a5))(void)
{
  if ((a4 & 1) == 0)
  {
    v5 = this;
    if (*(this + 2))
    {
      v8 = OpenAndWriteMrecHeader(a2, 1u, a5, "MRASB!?", 19, 2);
      v12 = *(v5 + 2);
      v13 = 0;
      writeObject(v8, &v12, &v13);
      if (*(v5 + 2))
      {
        v9 = 0;
        do
        {
          v10 = (*v5)[v9];
          AdaptConfig::writeObject(v10, v8, &v13);
          AdaptStats::writeObject((v10 + 16), v8, &v13);
          ++v9;
        }

        while (v9 < *(v5 + 2));
      }

      writeObjectChecksum(v8, &v13);
      CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
      DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 1, v13);
      return DgnDelete<DgnStream>(v8);
    }
  }

  return this;
}

void *DgnIOwnArray<AdaptConfigAndStats *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<AdaptConfigAndStats>(*(*a1 + v3));
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

uint64_t sizeObject<AdaptConfigAndStats *>(uint64_t a1, int a2)
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
          v9 += sizeObject<unsigned long long>(v10 + 16, a2) + 42;
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

void *DgnDelete<AdaptConfigAndStats>(void *result)
{
  if (result)
  {
    v1 = result;
    DgnPrimArray<unsigned int>::~DgnPrimArray((result + 2));
    *(v1 + 6) = 0;
    *v1 = 0;

    return MemChunkFree(v1, 0);
  }

  return result;
}

unint64_t applyNewPronSetHeuristics(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = *(result + 8);
  if (v5)
  {
    v10 = result;
    for (i = 0; i < v5; ++i)
    {
      if (*(*v10 + 16 * i + 8) < a5)
      {
        v12 = i;
        result = DgnArray<DgnPrimArray<unsigned short>>::removeIndexKeepOrder(v10, i);
        LODWORD(v13) = *(a4 + 8) - 1;
        if (v13 > i)
        {
          v14 = (*a4 + 4 * i + 4);
          v15 = i;
          do
          {
            ++v15;
            *(v14 - 1) = *v14;
            v13 = (*(a4 + 8) - 1);
            ++v14;
          }

          while (v15 < v13);
        }

        *(a4 + 8) = v13;
        if (a2)
        {
          LODWORD(v16) = *(a2 + 8) - 1;
          if (v16 > i)
          {
            v17 = i;
            do
            {
              *(*a2 + v17) = *(*a2 + v17 + 1);
              v16 = (*(a2 + 8) - 1);
              ++v17;
            }

            while (v17 < v16);
          }

          *(a2 + 8) = v16;
          LODWORD(v16) = *(a3 + 8) - 1;
          if (v16 > i)
          {
            do
            {
              *(*a3 + v12) = *(*a3 + v12 + 1);
              v16 = (*(a3 + 8) - 1);
              ++v12;
            }

            while (v12 < v16);
          }

          *(a3 + 8) = v16;
        }

        --i;
        v5 = *(v10 + 8);
      }
    }
  }

  return result;
}

unint64_t DgnArray<DgnPrimArray<unsigned short>>::removeIndexKeepOrder(unint64_t result, unsigned int a2)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = v3 - 1;
  if (v3 - 1 > a2)
  {
    v5 = 16 * a2;
    v6 = a2;
    do
    {
      ++v6;
      result = DgnPrimArray<unsigned short>::copyArraySlice((*v2 + v5), (*v2 + v5 + 16), 0, *(*v2 + v5 + 24));
      v3 = *(v2 + 8);
      v5 += 16;
    }

    while (v6 < (v3 - 1));
    v4 = v3 - 1;
  }

  if (v3 != 0x80000000)
  {
    if (v3)
    {
      v10 = v3;
      v11 = 16 * v3 - 16;
      do
      {
        --v10;
        result = DgnPrimArray<unsigned int>::~DgnPrimArray(*v2 + v11);
        v11 -= 16;
      }

      while (v10 > v4);
    }

    else
    {
      v7 = 0;
      v8 = v4;
      do
      {
        v9 = (*v2 + v7);
        *v9 = 0;
        v9[1] = 0;
        v7 += 16;
        --v8;
      }

      while (v8);
    }
  }

  *(v2 + 8) = v4;
  return result;
}

uint64_t permuteToAltProns(uint64_t a1)
{
  v2 = *a1;
  v14 = 0;
  v15 = 0;
  DgnPrimArray<int>::copyArraySlice(&v14, v2, 0, *(v2 + 8));
  if (v15)
  {
    v3 = 0;
    v4 = ModelMgr::smpModelMgr;
    v12 = 0;
    v13 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v5 = *(v14 + 4 * v3);
      VocOrThrow = ModelMgr::getVocOrThrow(v4, v5 >> 25);
      WordList::lookupAll(*(VocOrThrow + 48), v5 & 0xFFFFFF, &v12);
      if (v13 >= 2)
      {
        DgnPrimArray<int>::copyArraySlice(&v10, &v14, 0, v15);
        *(v10 + 4 * v3) = v5 & 0xFE000000 | *(v12 + 4) & 0xFFFFFF;
        if (DgnArray<DgnPrimArray<unsigned int>>::find(a1, &v10) == -1)
        {
          v7 = *(a1 + 8);
          if (v7 == *(a1 + 12))
          {
            DgnArray<DgnPrimArray<double>>::reallocElts(a1, 1, 1);
            v7 = *(a1 + 8);
          }

          v8 = (*a1 + 16 * v7);
          *v8 = 0;
          v8[1] = 0;
          DgnPrimArray<int>::copyArraySlice(v8, &v10, 0, v11);
          ++*(a1 + 8);
        }
      }

      ++v3;
    }

    while (v3 < v15);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v10);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v12);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v14);
}

void sub_2625BFD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t GssResults::GssResults(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, void *a6, const RecogGrammar *a7, unsigned int a8)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  DgnArray<DgnPrimArray<unsigned int>>::copyArraySlice(a1, a2, 0, *(a2 + 8));
  *(a1 + 16) = a3;
  *(a1 + 20) = a5;
  GssResults::getChoiceWords(a1, a6, a7, a4);
  GssResults::getWordProns(a1, a8);
  return a1;
}

void sub_2625BFE38(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v6);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v3);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v2);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1);
  _Unwind_Resume(a1);
}

unsigned int *GssResults::getChoiceWords(unsigned int *result, void *a2, const RecogGrammar *a3, uint64_t a4)
{
  v4 = result;
  v5 = *(a4 + 8);
  v6 = result[8];
  if (v6 >= 1)
  {
    v7 = 16 * v6 - 16;
    do
    {
      result = DgnPrimArray<unsigned int>::~DgnPrimArray(*(v4 + 3) + v7);
      v7 -= 16;
    }

    while (v7 != -16);
  }

  v8 = 0;
  v4[8] = 0;
  v9 = v4[9];
  if (v5 <= v9 || (result = DgnArray<DgnPrimArray<double>>::reallocElts((v4 + 6), v5 - v9, 0), v8 = v4[8], v8 <= v5))
  {
    if (v8 < v5)
    {
      v12 = v5 - v8;
      v13 = 16 * v8;
      do
      {
        v14 = (*(v4 + 3) + v13);
        *v14 = 0;
        v14[1] = 0;
        v13 += 16;
        --v12;
      }

      while (v12);
    }

LABEL_13:
    v4[8] = v5;
    if (!v5)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v8 > v5)
  {
    v10 = v8;
    v11 = 16 * v8 - 16;
    do
    {
      --v10;
      result = DgnPrimArray<unsigned int>::~DgnPrimArray(*(v4 + 3) + v11);
      v11 -= 16;
    }

    while (v10 > v5);
    goto LABEL_13;
  }

  v4[8] = v5;
LABEL_14:
  v15 = 0;
  v30 = v5;
  do
  {
    v16 = *a4 + 48 * v15;
    v17 = *(v16 + 8);
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = *v16 + v18;
        if (*v21 != 1)
        {
          v22 = *(v21 + 4);
          v23 = *(v21 + 8);
          v24 = *(v21 + 12);
          v34 = 0;
          if (v20 == v4[4])
          {
            v25 = a3;
          }

          else
          {
            v25 = 0;
          }

          result = checkSpecInGrammar(v23, *(*a2 + 8 * v20), v25, &v34 + 1, &v34);
          if (v34 & 0x100) != 0 || (v34)
          {
            v26 = v20;
          }

          else
          {
            v26 = (v20 + 1);
            if (v26 == v4[4])
            {
              v29 = a3;
            }

            else
            {
              v29 = 0;
            }

            result = checkSpecInGrammar(v23, *(*a2 + 8 * v26), v29, &v34 + 1, &v34);
            if (v26 == v4[4] && (v34 & 1) == 0)
            {
              v26 = (v20 + 2);
              result = *(*a2 + 8 * v26);
              v35 = v23;
              if (result)
              {
                result = (*(*result + 32))(result, &v35);
              }
            }
          }

          if (v26 == v4[4])
          {
            v27 = *(v4 + 3) + 16 * v15;
            v28 = *(v27 + 8);
            if (v28 == *(v27 + 12))
            {
              result = DgnPrimArray<unsigned int>::reallocElts(*(v4 + 3) + 16 * v15, 1, 1);
              v28 = *(v27 + 8);
            }

            *(*v27 + 4 * v28) = v24 & 0xFFFFFF | (v22 << 25);
            ++*(v27 + 8);
          }

          v17 = *(v16 + 8);
          v20 = v26;
        }

        ++v19;
        v18 += 96;
      }

      while (v19 < v17);
    }

    ++v15;
  }

  while (v15 != v30);
  return result;
}

void *GssResults::getWordProns(GssResults *this, unsigned int a2)
{
  v3 = *(this + 8);
  v4 = ModelMgr::smpModelMgr;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v33 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(this + 3) + 16 * v6;
      if (*(v7 + 8))
      {
        if (v5 >= 1)
        {
          v8 = 16 * v5 - 16;
          do
          {
            DgnPrimArray<unsigned int>::~DgnPrimArray(v38 + v8);
            v8 -= 16;
          }

          while (v8 != -16);
        }

        LODWORD(v39) = 0;
        if (HIDWORD(v39))
        {
          v9 = 0;
        }

        else
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(&v38, 1, 1);
          v9 = v39;
        }

        v10 = (v38 + 16 * v9);
        *v10 = 0;
        v10[1] = 0;
        DgnPrimArray<int>::copyArraySlice(v10, v7, 0, *(v7 + 8));
        v11 = v39 + 1;
        LODWORD(v39) = v39 + 1;
        if ((*(this + 20) & 1) == 0)
        {
          permuteToAltProns(&v38);
          v11 = v39;
        }

        if (v11)
        {
          v12 = 0;
          do
          {
            v13 = v38 + 16 * v12;
            LODWORD(v37) = 0;
            if (*(v13 + 8))
            {
              v14 = 0;
              PronPredecessorSeedCategory = -2;
              PronSuccessorSeedCategory = -2;
              do
              {
                v17 = *(*v13 + 4 * v14);
                v18 = *(ModelMgr::getVocOrThrow(v4, v17 >> 25) + 48);
                WordList::getPronWithWB(v18, v17 & 0xFFFFFF, &v34);
                if (!v14)
                {
                  PronSuccessorSeedCategory = WordList::getPronSuccessorSeedCategory(v18, v17 & 0xFFFFFF);
                }

                if (v14 == *(v13 + 8) - 1)
                {
                  PronPredecessorSeedCategory = WordList::getPronPredecessorSeedCategory(v18, v17 & 0xFFFFFF);
                }

                v19 = v35;
                if (v35)
                {
                  v20 = v37;
                  if ((v37 + v35) <= HIDWORD(v37) || (DgnPrimArray<short>::reallocElts(&v36, (v37 + v35 - HIDWORD(v37)), 1), v19 = v35, v20 = v37, v35))
                  {
                    v21 = 0;
                    v22 = v34;
                    v23 = v36;
                    do
                    {
                      *(v23 + 2 * (v20 + v21)) = *(v22 + 2 * v21);
                      ++v21;
                    }

                    while (v19 != v21);
                  }

                  LODWORD(v37) = v20 + v19;
                }

                ++v14;
              }

              while (v14 < *(v13 + 8));
              if (v37 && DgnArray<DgnPrimArray<unsigned short>>::find(this + 5, &v36) == -1)
              {
                v24 = *(this + 12);
                if (v24 == *(this + 13))
                {
                  DgnArray<DgnPrimArray<double>>::reallocElts(this + 40, 1, 1);
                  v24 = *(this + 12);
                }

                v25 = (*(this + 5) + 16 * v24);
                *v25 = 0;
                v25[1] = 0;
                DgnPrimArray<unsigned short>::copyArraySlice(v25, &v36, 0, v37);
                ++*(this + 12);
                v26 = *(this + 24);
                if (v26 == *(this + 25))
                {
                  DgnPrimArray<unsigned int>::reallocElts(this + 88, 1, 1);
                  v26 = *(this + 24);
                }

                *(*(this + 11) + 4 * v26) = v6;
                ++*(this + 24);
                if (PronPredecessorSeedCategory != 254)
                {
                  v27 = *(this + 16);
                  if (v27 == *(this + 17))
                  {
                    DgnPrimArray<char>::reallocElts(this + 56, 1, 1);
                    v27 = *(this + 16);
                  }

                  *(*(this + 7) + v27) = PronPredecessorSeedCategory;
                  ++*(this + 16);
                  v28 = *(this + 20);
                  if (v28 == *(this + 21))
                  {
                    DgnPrimArray<char>::reallocElts(this + 72, 1, 1);
                    v28 = *(this + 20);
                  }

                  *(*(this + 9) + v28) = PronSuccessorSeedCategory;
                  ++*(this + 20);
                }
              }
            }

            ++v12;
            v5 = v39;
          }

          while (v12 < v39);
        }

        else
        {
          v5 = 0;
        }
      }

      ++v6;
    }

    while (v6 != v33);
  }

  if (*(this + 16))
  {
    v29 = this + 56;
  }

  else
  {
    v29 = 0;
  }

  if (*(this + 20))
  {
    v30 = this + 72;
  }

  else
  {
    v30 = 0;
  }

  applyNewPronSetHeuristics(this + 40, v29, v30, this + 88, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v34);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v36);
  return DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v38);
}

void sub_2625C04B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va2);
  _Unwind_Resume(a1);
}

void GssResults::~GssResults(GssResults *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 88);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 72);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 56);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 40);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 24);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this);
}

uint64_t checkSpecInGrammar(int a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  v10 = a1;
  if (a2)
  {
    v8 = (*(*a2 + 32))(a2, &v10);
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
  if (a3)
  {
    result = (*(*a3 + 32))(a3, &v10);
  }

  else
  {
    result = 0;
  }

  *a5 = result;
  return result;
}

uint64_t GssResults::updateWordProns(uint64_t a1, unsigned int a2, unsigned int a3, int a4, _DWORD *a5, uint64_t a6)
{
  v6 = ModelMgr::smpModelMgr;
  *a5 = 0;
  if (!*(a1 + 48))
  {
    return 4;
  }

  v13 = *a1 + 16 * *(a1 + 16);
  v28[0] = 0;
  v28[1] = 0;
  DgnPrimArray<int>::copyArraySlice(v28, v13, 0, *(v13 + 8));
  v14 = *v28[0];
  v15 = *(ModelMgr::getVocOrThrow(v6, *v28[0] >> 25) + 48);
  if (a4)
  {
    ModelMgr::deleteWordClientProns(v6, v14 >> 25, v14 & 0xFFFFFF);
    ModelMgr::rebuildAllStalePrefilterers(v6);
  }

  NumClientProns = WordList::getNumClientProns(v15, v14 & 0xFFFFFF);
  v17 = a3 - NumClientProns;
  if (a3 <= NumClientProns)
  {
    v20 = 3;
  }

  else
  {
    if (v17 >= a2)
    {
      v17 = a2;
    }

    v27[0] = 0;
    v27[1] = 0;
    v26[0] = 0;
    v26[1] = 0;
    v25[0] = 0;
    v25[1] = 0;
    if (*(a1 + 20))
    {
      v18 = "GuessPronsAcoustic";
    }

    else
    {
      v18 = "GuessPronsNonAcoustic";
    }

    ModelMgr::addClientPronsAvoidDuplicates(v6, v14 >> 25, (v14 & 0xFFFFFF), v27, v26, a1 + 40, (a1 + 56), (a1 + 72), v17, v18, v25);
    v19 = WordList::getNumClientProns(v15, v14 & 0xFFFFFF);
    if (v19 == NumClientProns)
    {
      v20 = 2;
    }

    else
    {
      *a5 = v19 - NumClientProns;
      ModelMgr::rebuildAllStalePrefilterers(v6);
      if (a6 && *a5)
      {
        v21 = 0;
        v22 = *(a6 + 8);
        do
        {
          v23 = *(*(a1 + 88) + 4 * *(v25[0] + 4 * v21));
          if (v22 == *(a6 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
            v22 = *(a6 + 8);
          }

          *(*a6 + 4 * v22) = v23;
          v22 = *(a6 + 8) + 1;
          *(a6 + 8) = v22;
          ++v21;
        }

        while (v21 < *a5);
      }

      v20 = 1;
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v25);
    DgnPrimArray<unsigned int>::~DgnPrimArray(v26);
    DgnPrimArray<unsigned int>::~DgnPrimArray(v27);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v28);
  return v20;
}

void sub_2625C0814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va3, a9);
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  va_copy(va3, va2);
  v16 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  _Unwind_Resume(a1);
}

uint64_t DgnArray<DgnPrimArray<unsigned int>>::copyArraySlice(uint64_t result, void *a2, unsigned int a3, int a4)
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
    result = DgnPrimArray<int>::copyArraySlice(v15, v14, 0, *(v14 + 8));
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

uint64_t DgnArray<DgnPrimArray<unsigned int>>::find(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = *a1;
  while (1)
  {
    v6 = v5 + 16 * result;
    if (v6 == a2)
    {
      return result;
    }

    if (*(v6 + 8) == *(a2 + 8))
    {
      v7 = *(a2 + 8);
      while (v7 >= 1)
      {
        v8 = *v6 + 4 * v7;
        v9 = *(*a2 - 4 + 4 * v7--);
        if (*(v8 - 4) != v9)
        {
          goto LABEL_8;
        }
      }

      return result;
    }

LABEL_8:
    if (++result == v2)
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t DgnArray<DgnPrimArray<unsigned short>>::find(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = *a1;
  while (1)
  {
    v6 = v5 + 16 * result;
    if (v6 == a2)
    {
      return result;
    }

    if (*(v6 + 8) == *(a2 + 8))
    {
      v7 = *(a2 + 8);
      while (v7 >= 1)
      {
        v8 = *v6 + 2 * v7;
        v9 = *(*a2 - 2 + 2 * v7--);
        if (*(v8 - 2) != v9)
        {
          goto LABEL_8;
        }
      }

      return result;
    }

LABEL_8:
    if (++result == v2)
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t SDParamSet_GetHandle(unint64_t a1, int64_t a2, ParamSetHolder *a3, unint64_t *a4)
{
  SdapiInsurance::SdapiInsurance(v49, "SDParamSet_GetHandle", 1, 1, 184);
  if (v49[97] != 1)
  {
    goto LABEL_98;
  }

  if (!a3)
  {
    v9 = throwBadStringPointer();
  }

  v49[151] = 0;
  if (gbShowCalls == 1)
  {
    if (gbShowCallPointerArguments)
    {
      v10 = a4;
    }

    else
    {
      v10 = 0;
    }

    xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, '%.500s', Masked:0x%016llx)\n", v8, v9, "SDParamSet_GetHandle", a1, a2, a3, v10);
  }

  if (!a4)
  {
    throwBadLengthForNullPointer(1, "DgnVerifyWritePtr");
  }

  *a4 = a1;
  a4[1] = a2;
  if (a2 > 6)
  {
    if (a2 > 9)
    {
      switch(a2)
      {
        case 10:
          v32 = ParamSetHolderMgr::smpParamSetHolderMgr;
          if (HIDWORD(a1))
          {
            throwBadSdapiArgument("SDhParamSetHolder", a1);
          }

          if ((a1 + 1) <= 1)
          {
            throwBadSdapiArgument("SDhParamSetHolder", a1);
          }

          ParamSetHolder = ParamSetHolderMgr::getParamSetHolder(v32, a1);
          v34 = ParamSetHolder::lookupName(ParamSetHolder, a3, 0xAu);
          if (v34 == -1)
          {
            v47 = 0;
            a4[11] = -1;
            goto LABEL_99;
          }

          a4[11] = v34;
          break;
        case 11:
          v44 = ParamSetHolderMgr::smpParamSetHolderMgr;
          if (HIDWORD(a1))
          {
            throwBadSdapiArgument("SDhParamSetHolder", a1);
          }

          if ((a1 + 1) <= 1)
          {
            throwBadSdapiArgument("SDhParamSetHolder", a1);
          }

          v45 = ParamSetHolderMgr::getParamSetHolder(v44, a1);
          v46 = ParamSetHolder::lookupName(v45, a3, 0xBu);
          if (v46 == -1)
          {
            v47 = 0;
            a4[12] = -1;
            goto LABEL_99;
          }

          a4[12] = v46;
          break;
        case 12:
          v20 = ParamSetHolderMgr::smpParamSetHolderMgr;
          if (HIDWORD(a1))
          {
            throwBadSdapiArgument("SDhParamSetHolder", a1);
          }

          if ((a1 + 1) <= 1)
          {
            throwBadSdapiArgument("SDhParamSetHolder", a1);
          }

          v21 = ParamSetHolderMgr::getParamSetHolder(v20, a1);
          v22 = ParamSetHolder::lookupName(v21, a3, 0xCu);
          if (v22 == -1)
          {
            v47 = 0;
            a4[13] = -1;
            goto LABEL_99;
          }

          a4[13] = v22;
          break;
        default:
LABEL_97:
          throwBadSdapiArgument("SDParamSetContainerType", a2);
LABEL_98:
          v47 = 0;
          goto LABEL_99;
      }
    }

    else if (a2 == 7)
    {
      v26 = ParamSetHolderMgr::smpParamSetHolderMgr;
      if (HIDWORD(a1))
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1);
      }

      if ((a1 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1);
      }

      v27 = ParamSetHolderMgr::getParamSetHolder(v26, a1);
      v28 = ParamSetHolder::lookupName(v27, a3, 7u);
      if (v28 == -1)
      {
        v47 = 0;
        a4[8] = -1;
        goto LABEL_99;
      }

      a4[8] = v28;
    }

    else if (a2 == 8)
    {
      v38 = ParamSetHolderMgr::smpParamSetHolderMgr;
      if (HIDWORD(a1))
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1);
      }

      if ((a1 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1);
      }

      v39 = ParamSetHolderMgr::getParamSetHolder(v38, a1);
      v40 = ParamSetHolder::lookupName(v39, a3, 8u);
      if (v40 == -1)
      {
        v47 = 0;
        a4[9] = -1;
        goto LABEL_99;
      }

      a4[9] = v40;
    }

    else
    {
      v14 = ParamSetHolderMgr::smpParamSetHolderMgr;
      if (HIDWORD(a1))
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1);
      }

      if ((a1 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1);
      }

      v15 = ParamSetHolderMgr::getParamSetHolder(v14, a1);
      v16 = ParamSetHolder::lookupName(v15, a3, 9u);
      if (v16 == -1)
      {
        v47 = 0;
        a4[10] = -1;
        goto LABEL_99;
      }

      a4[10] = v16;
    }
  }

  else if (a2 > 3)
  {
    if (a2 == 4)
    {
      v29 = ParamSetHolderMgr::smpParamSetHolderMgr;
      if (HIDWORD(a1))
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1);
      }

      if ((a1 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1);
      }

      v30 = ParamSetHolderMgr::getParamSetHolder(v29, a1);
      v31 = ParamSetHolder::lookupName(v30, a3, 4u);
      if (v31 == -1)
      {
        v47 = 0;
        a4[5] = -1;
        goto LABEL_99;
      }

      a4[5] = v31;
    }

    else if (a2 == 5)
    {
      v41 = ParamSetHolderMgr::smpParamSetHolderMgr;
      if (HIDWORD(a1))
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1);
      }

      if ((a1 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1);
      }

      v42 = ParamSetHolderMgr::getParamSetHolder(v41, a1);
      v43 = ParamSetHolder::lookupName(v42, a3, 5u);
      if (v43 == -1)
      {
        v47 = 0;
        a4[6] = -1;
        goto LABEL_99;
      }

      a4[6] = v43;
    }

    else
    {
      v17 = ParamSetHolderMgr::smpParamSetHolderMgr;
      if (HIDWORD(a1))
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1);
      }

      if ((a1 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1);
      }

      v18 = ParamSetHolderMgr::getParamSetHolder(v17, a1);
      v19 = ParamSetHolder::lookupName(v18, a3, 6u);
      if (v19 == -1)
      {
        v47 = 0;
        a4[7] = -1;
        goto LABEL_99;
      }

      a4[7] = v19;
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        v23 = ParamSetHolderMgr::smpParamSetHolderMgr;
        if (HIDWORD(a1))
        {
          throwBadSdapiArgument("SDhParamSetHolder", a1);
        }

        if ((a1 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhParamSetHolder", a1);
        }

        v24 = ParamSetHolderMgr::getParamSetHolder(v23, a1);
        v25 = ParamSetHolder::lookupName(v24, a3, 1u);
        if (v25 == -1)
        {
          v47 = 0;
          a4[2] = -1;
          goto LABEL_99;
        }

        a4[2] = v25;
        break;
      case 2:
        v35 = ParamSetHolderMgr::smpParamSetHolderMgr;
        if (HIDWORD(a1))
        {
          throwBadSdapiArgument("SDhParamSetHolder", a1);
        }

        if ((a1 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhParamSetHolder", a1);
        }

        v36 = ParamSetHolderMgr::getParamSetHolder(v35, a1);
        v37 = ParamSetHolder::lookupName(v36, a3, 2u);
        if (v37 == -1)
        {
          v47 = 0;
          a4[3] = -1;
          goto LABEL_99;
        }

        a4[3] = v37;
        break;
      case 3:
        v11 = ParamSetHolderMgr::smpParamSetHolderMgr;
        if (HIDWORD(a1))
        {
          throwBadSdapiArgument("SDhParamSetHolder", a1);
        }

        if ((a1 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhParamSetHolder", a1);
        }

        v12 = ParamSetHolderMgr::getParamSetHolder(v11, a1);
        v13 = ParamSetHolder::lookupName(v12, a3, 3u);
        if (v13 == -1)
        {
          v47 = 0;
          a4[4] = -1;
          goto LABEL_99;
        }

        a4[4] = v13;
        break;
      default:
        goto LABEL_97;
    }
  }

  v47 = 1;
LABEL_99:
  SdapiInsurance::~SdapiInsurance(v49);
  return v47;
}

void sub_2625C11C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (a2 == 2)
  {
    v14 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v14, v15);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(va);
      _Unwind_Resume(a1);
    }

    v16 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v16);
  }

  __cxa_end_catch();
  JUMPOUT(0x2625C10E0);
}

void *DgnArray<LinearTransform>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 72 * v2 - 72;
    do
    {
      LinearTransform::~LinearTransform((*a1 + v3));
      v3 -= 72;
    }

    while (v3 != -72);
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

_DWORD *BinaryIntScale::setScale(_DWORD *this, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    for (i = 1; i < a2; i *= 2)
    {
      ++v2;
    }
  }

  *this = v2;
  return this;
}

unint64_t BinaryIntScale::getBits(unint64_t this)
{
  if (this)
  {
    v1 = this;
    LODWORD(this) = 0;
    for (i = 1; i <= v1; i *= 2)
    {
      this = (this + 1);
    }
  }

  return this;
}

uint64_t BinaryIntScale::getUnscaleBits(BinaryIntScale *this, char a2)
{
  v2 = ~(-1 << (a2 + 1));
  v3 = 2 * this;
  if (2 * this < v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    v2 *= 2;
    result = (result + 1);
  }

  while (v2 <= v3);
  return result;
}

void BandwidthTransform::saveBandwidthTransform(BandwidthTransform *this, DFile *a2, DFileChecksums *a3, int a4, uint64_t a5)
{
  if (a4)
  {

    BandwidthTransform::saveText(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 3u, a5, "MRBEB!?", 22, 1);
    v10 = 0;
    writeObject(v8, this, &v10);
    writeObject(v8, this + 1, &v10);
    LinearTransform::writeObject((this + 8), v8, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 3, v10);
    DgnDelete<DgnStream>(v8);
  }
}

void BandwidthTransform::saveText(BandwidthTransform *this, DFile *a2, uint64_t a3)
{
  v3 = a3;
  DgnTextFileWriter::DgnTextFileWriter(v25);
  DgnTextFileWriter::openDgnTextFileWriter(v25, a2, 4, v3);
  v23 = 0;
  v24 = 0;
  DgnTextFile::legalDgnTextFileVersions(v25, sBET_Versions, &v23);
  DgnTextFileWriter::setFileType(v25, "BandwidthExtensionTransform", (v23 + 8 * (v24 - 1)));
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v6 = realloc_array(0, &v19, 0x10uLL, 0, 0, 1);
  v20 = 0;
  v21 = v19;
  LODWORD(v22) = 4;
  HIDWORD(v22) = v6 >> 2;
  v18[0] = 0;
  HIDWORD(v20) = realloc_array(0, v18, 0x40uLL, 0, 0, 1) >> 4;
  v19 = v18[0];
  v7 = v20;
  if (v20 <= 4)
  {
    if (v20 != 4)
    {
      v9 = v20 + 1;
      v10 = 16 * v20;
      do
      {
        DgnString::DgnString((v19 + v10));
        v10 += 16;
      }

      while (v9++ != 4);
    }
  }

  else if (v20 >= 5)
  {
    v8 = 16 * v20 - 16;
    do
    {
      --v7;
      DgnString::~DgnString(v19 + v8);
      v8 -= 16;
    }

    while (v7 > 4);
  }

  LODWORD(v20) = 4;
  DgnString::operator=(v19, "TableName");
  *v21 = 0;
  DgnString::operator=((v19 + 16), "RowIndex");
  v21[1] = 3;
  DgnString::operator=((v19 + 32), "ColumnIndex");
  v21[2] = 3;
  DgnString::operator=((v19 + 48), "TableEntryInt");
  v21[3] = 1;
  DgnTextFileWriter::setLineFieldFormat(v25, &v21, &v19);
  v13 = *(this + 2);
  v12 = *(this + 3);
  v14 = *(this + 12);
  DgnTextFileWriter::setHeaderFieldUnsigned(v25, "InputSampleRate", *this);
  DgnTextFileWriter::setHeaderFieldUnsigned(v25, "OutputSampleRate", *(this + 1));
  DgnTextFileWriter::setHeaderFieldUnsigned(v25, "InputFeatureDim", v13);
  DgnTextFileWriter::setHeaderFieldUnsigned(v25, "OutputFeatureDim", v12);
  DgnTextFileWriter::setHeaderFieldUnsigned(v25, "TransformIntScale", 1 << v14);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (v13)
      {
        for (j = 0; j != v13; ++j)
        {
          DgnTextFileWriter::setLineFieldValue(v25, 0, "BETMatrix");
          DgnTextFileWriter::setLineFieldUnsignedValue(v25, 1u, i);
          DgnTextFileWriter::setLineFieldUnsignedValue(v25, 2u, j);
          DgnTextFileWriter::setLineFieldIntegerValue(v25, 3u, *(*(*(this + 4) + 16 * i) + 4 * j));
          DgnTextFileWriter::writeNextLine(v25);
        }
      }
    }
  }

  v18[0] = 0;
  v18[1] = 0;
  DgnPrimArray<int>::copyArraySlice(v18, this + 2, 0, *(this + 6));
  if (v12)
  {
    for (k = 0; k != v12; ++k)
    {
      DgnTextFileWriter::setLineFieldValue(v25, 0, "BETOffset");
      DgnTextFileWriter::setLineFieldUnsignedValue(v25, 1u, k);
      DgnTextFileWriter::setLineFieldUnsignedValue(v25, 2u, 0);
      DgnTextFileWriter::setLineFieldIntegerValue(v25, 3u, *(v18[0] + k));
      DgnTextFileWriter::writeNextLine(v25);
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
  DgnArray<DgnString>::releaseAll(&v19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
  DgnIArray<Utterance *>::~DgnIArray(&v23);
  DgnTextFileWriter::~DgnTextFileWriter(v25);
}

void sub_2625C1800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

void MrecInitLibrary_fileutil(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();

  MrecInitModule_sdpres_sdapi();
}

void MrecInitLibrarySet_throughFileutil(void)
{
  MrecInitLibrarySet_throughDfutil();

  MrecInitLibrary_fileutil();
}

void MrecInitModule_genclass_pel(void)
{
  if (!gParDebugGenoneClassTree)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugGenoneClassTree", &unk_26286E9B8, &unk_26286E9B8, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugGenoneClassTree = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugGenoneClassTree);
  }
}

void GenoneClassTree::~GenoneClassTree(GenoneClassTree *this)
{
  DgnArray<DgnMatrix>::releaseAll(this + 280);
  DgnArray<DgnVector>::releaseAll(this + 264);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 248);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 168);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 152);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 120);
  BitArray::~BitArray((this + 96));
  BitArray::~BitArray((this + 80));
  BitArray::~BitArray((this + 64));
  BitArray::~BitArray((this + 48));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);
}

void GenoneClassTree::printSize(GenoneClassTree *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 206);
  if (v127)
  {
    v13 = v126;
  }

  else
  {
    v13 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26286E9B8, a3, &unk_26286E9B8, v13);
  DgnString::~DgnString(&v126);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26286E9B8);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v15 = 4;
  }

  else
  {
    v15 = 8;
  }

  v16 = (a3 + 1);
  v17 = (34 - a3);
  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 207);
  if (v127)
  {
    v19 = v126;
  }

  else
  {
    v19 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, (a3 + 1), &unk_26286E9B8, (34 - a3), (34 - a3), v19, v15, v15, 0);
  DgnString::~DgnString(&v126);
  *a4 += v15;
  *a5 += v15;
  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v21 = v126;
  }

  else
  {
    v21 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, (a3 + 1), &unk_26286E9B8, (34 - a3), (34 - a3), v21, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v23 = v126;
  }

  else
  {
    v23 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, (a3 + 1), &unk_26286E9B8, (34 - a3), (34 - a3), v23, 4, 4, 0);
  v125 = a3;
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v24 = 12;
  }

  else
  {
    v24 = 16;
  }

  v25 = *(this + 6);
  v26 = *(this + 7);
  if (v26 >= v25)
  {
    v27 = 0;
    if (v25 > 0)
    {
      v24 += 4 * (v25 - 1) + 4;
    }

    v28 = v24 + 4 * (v26 - v25);
  }

  else
  {
    v27 = 4 * v25;
    v28 = v24;
  }

  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v30 = v126;
  }

  else
  {
    v30 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v16, &unk_26286E9B8, v17, v17, v30, v28, v24, v27);
  DgnString::~DgnString(&v126);
  *a4 += v28;
  *a5 += v24;
  *a6 += v27;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v31 = 12;
  }

  else
  {
    v31 = 16;
  }

  v32 = *(this + 10);
  v33 = *(this + 11);
  if (v33 >= v32)
  {
    v34 = 0;
    if (v32 > 0)
    {
      v31 += 2 * (v32 - 1) + 2;
    }

    v35 = v31 + 2 * (v33 - v32);
  }

  else
  {
    v34 = 2 * v32;
    v35 = v31;
  }

  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v37 = v126;
  }

  else
  {
    v37 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v16, &unk_26286E9B8, v17, v17, v37, v35, v31, v34);
  DgnString::~DgnString(&v126);
  *a4 += v35;
  *a5 += v31;
  *a6 += v34;
  v38 = BitArray::sizeObject(this + 48, 0);
  v39 = BitArray::sizeObject(this + 48, 1);
  v40 = BitArray::sizeObject(this + 48, 3);
  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v42 = v126;
  }

  else
  {
    v42 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, v16, &unk_26286E9B8, v17, v17, v42, v38, v39, v40);
  DgnString::~DgnString(&v126);
  *a4 += v38;
  *a5 += v39;
  *a6 += v40;
  v43 = BitArray::sizeObject(this + 64, 0);
  v44 = BitArray::sizeObject(this + 64, 1);
  v45 = BitArray::sizeObject(this + 64, 3);
  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v47 = v126;
  }

  else
  {
    v47 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v16, &unk_26286E9B8, v17, v17, v47, v43, v44, v45);
  DgnString::~DgnString(&v126);
  *a4 += v43;
  *a5 += v44;
  *a6 += v45;
  v48 = BitArray::sizeObject(this + 80, 0);
  v49 = BitArray::sizeObject(this + 80, 1);
  v50 = BitArray::sizeObject(this + 80, 3);
  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v52 = v126;
  }

  else
  {
    v52 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v16, &unk_26286E9B8, v17, v17, v52, v48, v49, v50);
  DgnString::~DgnString(&v126);
  *a4 += v48;
  *a5 += v49;
  *a6 += v50;
  v53 = BitArray::sizeObject(this + 96, 0);
  v54 = BitArray::sizeObject(this + 96, 1);
  v55 = BitArray::sizeObject(this + 96, 3);
  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v57 = v126;
  }

  else
  {
    v57 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v16, &unk_26286E9B8, v17, v17, v57, v53, v54, v55);
  DgnString::~DgnString(&v126);
  *a4 += v53;
  *a5 += v54;
  *a6 += v55;
  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v59 = v126;
  }

  else
  {
    v59 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v16, &unk_26286E9B8, v17, v17, v59, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v60 = 12;
  }

  else
  {
    v60 = 16;
  }

  v61 = *(this + 32);
  v62 = *(this + 33);
  if (v62 >= v61)
  {
    v63 = 0;
    if (v61 > 0)
    {
      v60 += 4 * (v61 - 1) + 4;
    }

    v64 = v60 + 4 * (v62 - v61);
  }

  else
  {
    v63 = 4 * v61;
    v64 = v60;
  }

  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v66 = v126;
  }

  else
  {
    v66 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v16, &unk_26286E9B8, v17, v17, v66, v64, v60, v63);
  DgnString::~DgnString(&v126);
  *a4 += v64;
  *a5 += v60;
  *a6 += v63;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v67 = 12;
  }

  else
  {
    v67 = 16;
  }

  v68 = *(this + 36);
  v69 = *(this + 37);
  if (v69 >= v68)
  {
    v70 = 0;
    if (v68 > 0)
    {
      v67 += 4 * (v68 - 1) + 4;
    }

    v71 = v67 + 4 * (v69 - v68);
  }

  else
  {
    v70 = 4 * v68;
    v71 = v67;
  }

  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v73 = v126;
  }

  else
  {
    v73 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v72, v16, &unk_26286E9B8, v17, v17, v73, v71, v67, v70);
  DgnString::~DgnString(&v126);
  *a4 += v71;
  *a5 += v67;
  *a6 += v70;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v74 = 12;
  }

  else
  {
    v74 = 16;
  }

  v75 = *(this + 40);
  v76 = *(this + 41);
  if (v76 >= v75)
  {
    v77 = 0;
    if (v75 > 0)
    {
      v74 += 4 * (v75 - 1) + 4;
    }

    v78 = v74 + 4 * (v76 - v75);
  }

  else
  {
    v77 = 4 * v75;
    v78 = v74;
  }

  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v80 = v126;
  }

  else
  {
    v80 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v79, v16, &unk_26286E9B8, v17, v17, v80, v78, v74, v77);
  DgnString::~DgnString(&v126);
  *a4 += v78;
  *a5 += v74;
  *a6 += v77;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v81 = 12;
  }

  else
  {
    v81 = 16;
  }

  v82 = *(this + 44);
  v83 = *(this + 45);
  if (v83 >= v82)
  {
    v84 = 0;
    if (v82 > 0)
    {
      v81 += 4 * (v82 - 1) + 4;
    }

    v85 = v81 + 4 * (v83 - v82);
  }

  else
  {
    v84 = 4 * v82;
    v85 = v81;
  }

  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v87 = v126;
  }

  else
  {
    v87 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v16, &unk_26286E9B8, v17, v17, v87, v85, v81, v84);
  DgnString::~DgnString(&v126);
  *a4 += v85;
  *a5 += v81;
  *a6 += v84;
  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v89 = v126;
  }

  else
  {
    v89 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v88, v16, &unk_26286E9B8, v17, v17, v89, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v90 = 12;
  }

  else
  {
    v90 = 16;
  }

  v91 = *(this + 50);
  v92 = *(this + 51);
  if (v92 >= v91)
  {
    v93 = 0;
    if (v91 > 0)
    {
      v90 += 4 * (v91 - 1) + 4;
    }

    v94 = v90 + 4 * (v92 - v91);
  }

  else
  {
    v93 = 4 * v91;
    v94 = v90;
  }

  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v96 = v126;
  }

  else
  {
    v96 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v95, v16, &unk_26286E9B8, v17, v17, v96, v94, v90, v93);
  DgnString::~DgnString(&v126);
  *a4 += v94;
  *a5 += v90;
  *a6 += v93;
  v97 = sizeObject<DgnPrimArray<unsigned int>>(this + 208, 0);
  v98 = sizeObject<DgnPrimArray<unsigned int>>(this + 208, 1);
  v126 = 0;
  v127 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v126);
  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v100 = v126;
  }

  else
  {
    v100 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v99, v16, &unk_26286E9B8, v17, v17, v100, v97, v98, 0);
  DgnString::~DgnString(&v126);
  *a4 += v97;
  *a5 += v98;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v101 = 12;
  }

  else
  {
    v101 = 16;
  }

  v102 = *(this + 58);
  v103 = *(this + 59);
  if (v103 >= v102)
  {
    v104 = 0;
    if (v102 > 0)
    {
      v101 += 4 * (v102 - 1) + 4;
    }

    v105 = v101 + 4 * (v103 - v102);
  }

  else
  {
    v104 = 4 * v102;
    v105 = v101;
  }

  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v107 = v126;
  }

  else
  {
    v107 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v106, v16, &unk_26286E9B8, v17, v17, v107, v105, v101, v104);
  DgnString::~DgnString(&v126);
  *a4 += v105;
  *a5 += v101;
  *a6 += v104;
  v108 = sizeObject(this + 240, 0);
  v109 = sizeObject(this + 240, 1);
  v110 = sizeObject(this + 240, 3);
  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v112 = v126;
  }

  else
  {
    v112 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v111, v16, &unk_26286E9B8, v17, v17, v112, v108, v109, v110);
  DgnString::~DgnString(&v126);
  *a4 += v108;
  *a5 += v109;
  *a6 += v110;
  v113 = sizeObject<DgnVector>(this + 264, 0);
  v114 = sizeObject<DgnVector>(this + 264, 1);
  v115 = sizeObject<DgnVector>(this + 264, 3);
  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v117 = v126;
  }

  else
  {
    v117 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v116, v16, &unk_26286E9B8, v17, v17, v117, v113, v114, v115);
  DgnString::~DgnString(&v126);
  *a4 += v113;
  *a5 += v114;
  *a6 += v115;
  v118 = sizeObject<DgnMatrix>(this + 280, 0);
  v119 = sizeObject<DgnMatrix>(this + 280, 1);
  v120 = sizeObject<DgnMatrix>(this + 280, 3);
  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209);
  if (v127)
  {
    v122 = v126;
  }

  else
  {
    v122 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v121, v16, &unk_26286E9B8, v17, v17, v122, v118, v119, v120);
  DgnString::~DgnString(&v126);
  *a4 += v118;
  *a5 += v119;
  *a6 += v120;
  getShipObjectSizeDescription(&v126, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 210);
  if (v127)
  {
    v124 = v126;
  }

  else
  {
    v124 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v123, v125, &unk_26286E9B8, (35 - v125), (35 - v125), v124, *a4, *a5, *a6);
  DgnString::~DgnString(&v126);
}

void sub_2625C284C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnVector>(uint64_t a1, int a2)
{
  v12 = 0;
  v11 = 0;
  v4 = sizeObject(&v11, 2);
  if (a2 == 3)
  {
    v5 = 0;
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v5 = 12;
    }

    else
    {
      v5 = 16;
    }

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = v4;
      v7 = *(a1 + 8);
      if (v7 >= 1)
      {
        v8 = v7 + 1;
        v9 = 16 * v7 - 16;
        do
        {
          v5 += sizeObject(*a1 + v9, a2);
          --v8;
          v9 -= 16;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v11);
  return v5;
}

uint64_t sizeObject<DgnMatrix>(uint64_t a1, int a2)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v4 = sizeObject(&v11, 2);
  if (a2 == 3)
  {
    v5 = 0;
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v5 = 12;
    }

    else
    {
      v5 = 16;
    }

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = v4;
      v7 = *(a1 + 8);
      if (v7 >= 1)
      {
        v8 = v7 + 1;
        v9 = 24 * v7 - 24;
        do
        {
          v5 += sizeObject(*a1 + v9, a2);
          --v8;
          v9 -= 24;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v12);
  return v5;
}

void sub_2625C2AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

void *GenoneClassTree::getDynamicClasses(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 184);
  v11 = 48;
  if (v10 == 1)
  {
    v11 = 80;
  }

  v12 = v10 == 2;
  v13 = 96;
  if (!v12)
  {
    v13 = v11;
  }

  v111 = v13;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v132, *(a1 + 8));
  v14 = *(a1 + 112);
  v130 = 0;
  v131 = 0;
  if (v14)
  {
    v112 = 0;
    v15 = realloc_array(0, &v112, 4 * v14, 0, 0, 1);
    v16 = 0;
    v17 = v112;
    v130 = v112;
    LODWORD(v131) = v14;
    HIDWORD(v131) = v15 >> 2;
    do
    {
      v17[v16++] = 0;
    }

    while (v16 < v131);
  }

  else
  {
    LODWORD(v131) = 0;
  }

  v18 = *(a1 + 8);
  v128 = 0;
  v129 = 0;
  if (v18)
  {
    v112 = 0;
    v19 = realloc_array(0, &v112, 4 * v18, 0, 0, 1);
    v20 = 0;
    v21 = v112;
    v128 = v112;
    LODWORD(v129) = v18;
    HIDWORD(v129) = v19 >> 2;
    do
    {
      v21[v20++] = 0;
    }

    while (v20 < v129);
  }

  else
  {
    v21 = 0;
    LODWORD(v129) = 0;
  }

  if (*(a2 + 2))
  {
    v22 = 0;
    v23 = *a2;
    v24 = *(a1 + 192);
    do
    {
      v21[*(v24 + 4 * v22)] = *(v23 + 4 * v22);
      ++v22;
    }

    while (v22 < *(a2 + 2));
  }

  v126 = 0;
  v127 = 0;
  DgnPrimArray<int>::copyArraySlice(&v126, (a1 + 192), 0, *(a1 + 200));
  v124 = 0;
  v125 = 0;
  BitArray::BitArray(&v122, *(a1 + 8));
  BitArray::clearRange(&v122, 0, v123);
  v108 = a3;
  if (v127)
  {
    v25 = 0;
    v26 = v126;
    v27 = v122;
    do
    {
      *(v27 + ((*(v26 + 4 * v25) >> 3) & 0x1FFFFFFC)) |= 1 << *(v26 + 4 * v25);
      ++v25;
    }

    while (v25 < v127);
    v120 = 0;
    *v121 = 0;
    if (v127)
    {
      v28 = 0;
      while (1)
      {
        v29 = v126[v28];
        v30 = *(*(a1 + 16) + 4 * v29);
        v31 = v132[0];
        if ((*(*(a1 + v111) + 4 * (v29 >> 5)) & (1 << v29)) != 0)
        {
          v32 = v132[0] + 16 * v29;
          v33 = *(v32 + 8);
          if (v33 == *(v32 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(v132[0] + 16 * v29, 1, 1);
            v33 = *(v32 + 8);
            v31 = v132[0];
          }

          *(*v32 + 4 * v33) = v28;
          ++*(v32 + 8);
          v34 = v31 + 16 * v30;
          v36 = (v34 + 8);
          v35 = *(v34 + 8);
          if (v35 == *(v34 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(v34, 1, 1);
            v35 = *v36;
          }

          *(*v34 + 4 * v35) = v28;
          LODWORD(v37) = 1;
        }

        else
        {
          v38 = v132[0] + 16 * v30;
          v39 = v132[0] + 16 * v29;
          v40 = *(v39 + 8);
          v36 = (v38 + 8);
          v41 = *(v38 + 8) + v40;
          v42 = *(v38 + 12);
          if (v41 > v42)
          {
            DgnPrimArray<unsigned int>::reallocElts(v38, v41 - v42, 1);
            v40 = *(v39 + 8);
          }

          if (v40)
          {
            v43 = 0;
            v44 = *v39;
            v45 = *v38;
            do
            {
              *(v45 + 4 * (v43 + *v36)) = *(v44 + 4 * v43);
              ++v43;
              v37 = *(v39 + 8);
            }

            while (v43 < v37);
          }

          else
          {
            LODWORD(v37) = 0;
          }
        }

        *v36 += v37;
        v46 = v128;
        v128[v30] += v128[v29];
        ++v130[v30];
        v47 = a5;
        if (v29 == 1)
        {
          v47 = a4;
        }

        if (v46[v29] >= v47)
        {
          if ((*(v122 + 4 * (v29 >> 5)) & (1 << v29)) != 0)
          {
            v48 = v121[0];
            if (v121[0] == v121[1])
            {
              DgnPrimArray<unsigned int>::reallocElts(&v120, 1, 1);
              v48 = v121[0];
            }

            *&v120[4 * v48] = v29;
            ++v121[0];
          }
        }

        else
        {
          *(v122 + ((v30 >> 3) & 0x1FFFFFFC)) |= 1 << v30;
        }

        if (v30 && v130[v30] == *(*(a1 + 224) + 4 * v30))
        {
          v49 = v125;
          if (v125 == HIDWORD(v125))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v124, 1, 1);
            v49 = v125;
          }

          *(v124 + 4 * v49) = v30;
          LODWORD(v125) = v125 + 1;
        }

        if (++v28 >= v127)
        {
          DgnPrimArray<int>::copyArraySlice(&v126, &v124, 0, v125);
          v28 = 0;
          LODWORD(v125) = 0;
          if (!v127)
          {
            break;
          }
        }
      }
    }
  }

  else
  {
    v120 = 0;
    *v121 = 0;
  }

  v50 = v121[0];
  v51 = v108;
  if (v108)
  {
    while (v50 > v51)
    {
      DgnPrimArray<int>::copyArraySlice(&v126, &v120, 0, v50);
      v52 = *v128 + 1;
      v53 = v127;
      if (v127)
      {
        v54 = 0;
        v55 = v126;
        do
        {
          v56 = *v55++;
          v57 = *(*(a1 + 16) + 4 * v56);
          if (v57 && v128[v57] < v52)
          {
            v52 = v128[v57];
            v54 = v57;
          }

          --v53;
        }

        while (v53);
      }

      else
      {
        v54 = 0;
      }

      *(v122 + 4 * (v54 >> 5)) |= 1 << v54;
      v121[0] = 0;
      LODWORD(v125) = 0;
      if (!v127)
      {
        goto LABEL_93;
      }

      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = v52 + 1;
      v63 = v52 + 1;
      do
      {
        v64 = v126[v58];
        if (*(*(a1 + 16) + 4 * v64) != v54)
        {
          v69 = v121[0];
          if (v121[0] == v121[1])
          {
            DgnPrimArray<unsigned int>::reallocElts(&v120, 1, 1);
            v69 = v121[0];
          }

          *&v120[4 * v69] = v64;
          ++v121[0];
          goto LABEL_74;
        }

        v65 = v128;
        v66 = v128[v64];
        if (v66 >= v63)
        {
          if (v66 >= v62)
          {
            v72 = v125;
            if (v125 == HIDWORD(v125))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v124, 1, 1);
              v72 = v125;
            }

            *(v124 + 4 * v72) = v64;
            LODWORD(v125) = v125 + 1;
LABEL_74:
            v68 = v63;
            v70 = v60;
            goto LABEL_87;
          }

          if (v59)
          {
            v71 = v125;
            if (v125 == HIDWORD(v125))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v124, 1, 1);
              v71 = v125;
              v65 = v128;
            }

            *(v124 + 4 * v71) = v59;
            LODWORD(v125) = v125 + 1;
            v62 = v65[v64];
            v68 = v63;
          }

          else
          {
            v68 = v63;
            v62 = v128[v64];
          }

          v70 = v60;
          v59 = v64;
        }

        else
        {
          if (v59)
          {
            v67 = v125;
            if (v125 == HIDWORD(v125))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v124, 1, 1);
              v67 = v125;
              v65 = v128;
            }

            *(v124 + 4 * v67) = v59;
            LODWORD(v125) = v125 + 1;
            v68 = v65[v64];
          }

          else
          {
            v68 = v128[v64];
          }

          v62 = v63;
          v70 = v64;
          v59 = v60;
        }

LABEL_87:
        v61 |= v64 == v54;
        ++v58;
        v60 = v70;
        v63 = v68;
      }

      while (v58 < v127);
      v51 = v108;
      if (v61)
      {
        v73 = v125;
        if (v59)
        {
          if (v125 == HIDWORD(v125))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v124, 1, 1);
            v73 = v125;
          }

          *(v124 + 4 * v73) = v59;
          v73 = v125 + 1;
          LODWORD(v125) = v125 + 1;
        }

        goto LABEL_96;
      }

LABEL_93:
      v74 = v121[0];
      if (v121[0] == v121[1])
      {
        DgnPrimArray<unsigned int>::reallocElts(&v120, 1, 1);
        v74 = v121[0];
      }

      *&v120[4 * v74] = v54;
      ++v121[0];
      v73 = v125;
LABEL_96:
      if (v121[0] + v73 > v121[1])
      {
        DgnPrimArray<unsigned int>::reallocElts(&v120, v121[0] + v73 - v121[1], 1);
        v73 = v125;
      }

      if (v73)
      {
        v75 = 0;
        v76 = v124;
        v77 = v120;
        do
        {
          *&v77[4 * (v75 + v121[0])] = *(v76 + 4 * v75);
          ++v75;
          v78 = v125;
        }

        while (v75 < v125);
      }

      else
      {
        v78 = 0;
      }

      v50 = v121[0] + v78;
      v121[0] += v78;
    }
  }

  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v119, v50);
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(&v117, v50);
  BitArray::BitArray(&v115, *(a1 + 200));
  BitArray::setRange(&v115, 0, v116);
  mrec_qsort_r<GenoneClassTree>(v120, v121[0], 4, 0);
  if (v50)
  {
    v79 = 0;
    v80 = v132[0];
    do
    {
      v81 = *&v120[4 * (v50 + ~v79)];
      v82 = v80 + 16 * v81;
      if (*(v82 + 8))
      {
        v83 = 0;
        do
        {
          v84 = *(*v82 + 4 * v83);
          v85 = v119[0] + 16 * v79;
          v86 = *(v85 + 8);
          if (v86 == *(v85 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(v119[0] + 16 * v79, 1, 1);
            v86 = *(v85 + 8);
          }

          *(*v85 + 4 * v86) = v84;
          ++*(v85 + 8);
          v87 = v115;
          if ((*(v115 + 4 * (v84 >> 5)) & (1 << v84)) != 0)
          {
            v88 = v117 + 16 * v79;
            v89 = *(v88 + 8);
            if (v89 == *(v88 + 12))
            {
              DgnPrimArray<unsigned int>::reallocElts(v117 + 16 * v79, 1, 1);
              v89 = *(v88 + 8);
              v87 = v115;
            }

            *(*v88 + 4 * v89) = v84;
            ++*(v88 + 8);
            *(v87 + 4 * (v84 >> 5)) &= ~(1 << v84);
          }

          ++v83;
          v80 = v132[0];
          v82 = v132[0] + 16 * v81;
        }

        while (v83 < *(v82 + 8));
      }

      ++v79;
    }

    while (v79 != v50);
  }

  v90 = *(a6 + 8);
  if (v90 >= 1)
  {
    v91 = 16 * v90 - 16;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a6 + v91);
      v91 -= 16;
    }

    while (v91 != -16);
  }

  *(a6 + 8) = 0;
  v92 = *(a7 + 8);
  if (v92 >= 1)
  {
    v93 = 16 * v92 - 16;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a7 + v93);
      v93 -= 16;
    }

    while (v93 != -16);
  }

  *(a7 + 8) = 0;
  v94 = v118;
  if (v118)
  {
    v95 = 0;
    v96 = 0;
    v97 = 8;
    do
    {
      if (*(v117 + v97))
      {
        v98 = v119[0];
        v99 = *(a6 + 8);
        if (v99 == *(a6 + 12))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a6, 1, 1);
          v99 = *(a6 + 8);
        }

        v100 = (*a6 + 16 * v99);
        *v100 = 0;
        v100[1] = 0;
        DgnPrimArray<int>::copyArraySlice(v100, (v98 + v97 - 8), 0, *(v98 + v97));
        ++*(a6 + 8);
        v101 = v117;
        v102 = *(a7 + 8);
        if (v102 == *(a7 + 12))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a7, 1, 1);
          v102 = *(a7 + 8);
        }

        v103 = (*a7 + 16 * v102);
        *v103 = 0;
        v103[1] = 0;
        DgnPrimArray<int>::copyArraySlice(v103, (v101 + v97 - 8), 0, *(v101 + v97));
        v95 = *(a7 + 8) + 1;
        *(a7 + 8) = v95;
        v94 = v118;
      }

      ++v96;
      v97 += 16;
    }

    while (v96 < v94);
    if (v95)
    {
      v114 = &v115;
      v113 = v116;
      v112 = 0;
      SetBitOrStop = BitArrayIterator::scanForNextSetBitOrStop(&v112);
      if (HIDWORD(v112) < v113)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 586, "pel/genclass", 20, "%u", *(*(a1 + 192) + 4 * SetBitOrStop));
      }
    }
  }

  BitArray::~BitArray(&v115);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v117);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v119);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v120);
  BitArray::~BitArray(&v122);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v124);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v126);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v130);
  return DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v132);
}

void sub_2625C3564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  BitArray::~BitArray(&a18);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a20);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a22);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a24);
  BitArray::~BitArray(&a26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v27 - 152);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v27 - 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v27 - 120);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v27 - 104);
  _Unwind_Resume(a1);
}

void *DgnArray<DgnPrimArray<unsigned int>>::DgnArray(void *a1, uint64_t a2)
{
  v2 = a2;
  *a1 = 0;
  a1[1] = 0;
  if (a2)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1, a2, 0);
    v4 = *(a1 + 2);
    if (v4 > v2)
    {
      if (v4 > v2)
      {
        v5 = v4;
        v6 = 16 * v4 - 16;
        do
        {
          --v5;
          DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v6);
          v6 -= 16;
        }

        while (v5 > v2);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
  }

  if (v4 < v2)
  {
    v7 = v2 - v4;
    v8 = 16 * v4;
    do
    {
      v9 = (*a1 + v8);
      *v9 = 0;
      v9[1] = 0;
      v8 += 16;
      --v7;
    }

    while (v7);
  }

LABEL_11:
  *(a1 + 2) = v2;
  return a1;
}

char *mrec_qsort_r<GenoneClassTree>(char *result, unint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = -a3;
  v6 = a3 != 8;
  v7 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  if (a2 < 7)
  {
LABEL_145:
    if ((a2 * a3) > a3)
    {
      v87 = &result[a2 * a3];
      v88 = &result[a3];
      v89 = result;
      do
      {
        if (v88 > result)
        {
          v90 = v89;
          v91 = v88;
          do
          {
            v92 = v91;
            v91 += v5;
            if (*v91 - *v92 < 1)
            {
              break;
            }

            if (v8)
            {
              v93 = 0;
              if (v7)
              {
                v94 = v91;
                do
                {
                  v95 = *&v92[8 * v93];
                  *&v92[8 * v93] = *v94;
                  *v94 = v95;
                  v94 += 8;
                  ++v93;
                }

                while (a3 >> 3 != v93);
              }

              else
              {
                v97 = a3;
                do
                {
                  v98 = v92[v93];
                  v92[v93] = v90[v93];
                  v90[v93++] = v98;
                  --v97;
                }

                while (v97);
              }
            }

            else
            {
              v96 = *v92;
              *v92 = *v91;
              *v91 = v96;
            }

            v90 += v5;
          }

          while (v91 > result);
        }

        v88 += a3;
        v89 += a3;
      }

      while (v88 < v87);
    }

    return result;
  }

  v10 = a3 >> 3;
  while (1)
  {
    v11 = &result[(a2 >> 1) * a3];
    if (a2 == 7)
    {
      goto LABEL_69;
    }

    v12 = &result[(a2 - 1) * a3];
    if (a2 <= 0x28)
    {
      v23 = *result;
      v34 = *v11;
      v15 = result;
      v38 = *v12;
      goto LABEL_64;
    }

    v13 = (a2 >> 3) * a3;
    v14 = 2 * v13;
    v15 = &result[2 * v13];
    v16 = *result;
    v17 = *&result[v13];
    v18 = *result - v17;
    v19 = v17 - *v15;
    v20 = *result - *v15;
    if (v20 >= 0)
    {
      v21 = *v15;
    }

    else
    {
      v21 = *result;
    }

    if (v20 >= 0)
    {
      v22 = &result[2 * v13];
    }

    else
    {
      v22 = result;
    }

    if (v19 > 0)
    {
      v21 = *&result[v13];
      v22 = &result[v13];
    }

    if (v20 >= 0)
    {
      v15 = result;
    }

    else
    {
      v16 = *v15;
    }

    if (v19 < 0)
    {
      v16 = *&result[v13];
      v15 = &result[v13];
    }

    if (v18 < 0)
    {
      v23 = v16;
    }

    else
    {
      v23 = v21;
    }

    if (v18 >= 0)
    {
      v15 = v22;
    }

    v24 = -v13;
    v25 = &v11[-v13];
    v26 = &v11[v13];
    v27 = *v25;
    v28 = *v25 - *v11;
    v29 = *v11 - *v26;
    v30 = *v25 - *v26;
    if (v30 >= 0)
    {
      v31 = *v26;
    }

    else
    {
      v31 = *v25;
    }

    if (v30 >= 0)
    {
      v32 = v26;
    }

    else
    {
      v32 = v25;
    }

    if (v29 > 0)
    {
      v31 = *v11;
      v32 = &result[(a2 >> 1) * a3];
    }

    if (v30 >= 0)
    {
      v26 = v25;
    }

    else
    {
      v27 = *v26;
    }

    if (v29 >= 0)
    {
      v33 = v27;
    }

    else
    {
      v33 = *v11;
    }

    if (v29 >= 0)
    {
      v11 = v26;
    }

    if (v28 < 0)
    {
      v34 = v33;
    }

    else
    {
      v34 = v31;
    }

    if (v28 >= 0)
    {
      v11 = v32;
    }

    v35 = &v12[-v14];
    v36 = &v12[v24];
    v37 = *&v12[-v14];
    v38 = *v36;
    v39 = *v12;
    v40 = *v36 - *v12;
    if (v37 - *v36 < 0)
    {
      if (v40 < 0)
      {
LABEL_63:
        v12 = v36;
        goto LABEL_64;
      }

      if (v37 - v39 >= 0)
      {
        v38 = v37;
      }

      else
      {
        v38 = *v12;
      }

      if (v37 - v39 >= 0)
      {
        v12 = v35;
      }
    }

    else
    {
      if (v40 > 0)
      {
        goto LABEL_63;
      }

      if (v37 - v39 >= 0)
      {
        v38 = *v12;
      }

      else
      {
        v38 = v37;
      }

      if (v37 - v39 < 0)
      {
        v12 = v35;
      }
    }

LABEL_64:
    v41 = v23 - v34;
    v42 = v34 - v38;
    v43 = v23 - v38;
    if ((v41 & 0x80000000) == 0)
    {
      if (v43 < 0)
      {
        v12 = v15;
      }

      if (v42 <= 0)
      {
        v11 = v12;
      }

LABEL_69:
      if (!v8)
      {
        goto LABEL_82;
      }

      goto LABEL_70;
    }

    if (v43 >= 0)
    {
      v12 = v15;
    }

    if (v42 >= 0)
    {
      v11 = v12;
    }

    if (!v8)
    {
LABEL_82:
      v50 = *result;
      *result = *v11;
      *v11 = v50;
      goto LABEL_83;
    }

LABEL_70:
    if (v7)
    {
      v44 = result;
      v45 = a3 >> 3;
      do
      {
        v46 = *v44;
        *v44 = *v11;
        v44 += 8;
        *v11 = v46;
        v11 += 8;
        --v45;
      }

      while (v45);
    }

    else
    {
      v47 = a3;
      v48 = result;
      do
      {
        v49 = *v48;
        *v48++ = *v11;
        *v11++ = v49;
        --v47;
      }

      while (v47);
    }

LABEL_83:
    v51 = 0;
    v52 = &result[a3];
    v53 = &result[(a2 - 1) * a3];
    v54 = v53;
    v55 = &result[a3];
    v56 = &result[a3];
LABEL_84:
    while (v55 <= v54 && *v55 - *result <= 0)
    {
      if (*v55 == *result)
      {
        if (v8)
        {
          v57 = 0;
          if (v7)
          {
            do
            {
              v58 = *&v56[8 * v57];
              *&v56[8 * v57] = *&v55[8 * v57];
              *&v55[8 * v57++] = v58;
            }

            while (v10 != v57);
          }

          else
          {
            do
            {
              v59 = v56[v57];
              v56[v57] = v55[v57];
              v55[v57++] = v59;
            }

            while (a3 != v57);
          }
        }

        else
        {
          v67 = *v56;
          *v56 = *v55;
          *v55 = v67;
        }

        v56 += a3;
        v51 = 1;
      }

      v55 += a3;
    }

    while (v55 <= v54)
    {
      if (*v54 - *result < 0)
      {
        if (v8)
        {
          v64 = 0;
          if (v7)
          {
            do
            {
              v65 = *&v55[8 * v64];
              *&v55[8 * v64] = *&v54[8 * v64];
              *&v54[8 * v64++] = v65;
            }

            while (v10 != v64);
          }

          else
          {
            do
            {
              v66 = v55[v64];
              v55[v64] = v54[v64];
              v54[v64++] = v66;
            }

            while (a3 != v64);
          }
        }

        else
        {
          v68 = *v55;
          *v55 = *v54;
          *v54 = v68;
        }

        v55 += a3;
        v54 += v5;
        v51 = 1;
        goto LABEL_84;
      }

      if (*v54 == *result)
      {
        if (v8)
        {
          v60 = 0;
          if (v7)
          {
            do
            {
              v61 = *&v54[8 * v60];
              *&v54[8 * v60] = *&v53[8 * v60];
              *&v53[8 * v60++] = v61;
            }

            while (v10 != v60);
          }

          else
          {
            do
            {
              v62 = v54[v60];
              v54[v60] = v53[v60];
              v53[v60++] = v62;
            }

            while (a3 != v60);
          }
        }

        else
        {
          v63 = *v54;
          *v54 = *v53;
          *v53 = v63;
        }

        v53 += v5;
        v51 = 1;
      }

      v54 += v5;
    }

    v69 = &result[a2 * a3];
    if (!v51)
    {
      break;
    }

    v70 = v55 - v56;
    if (v56 - result >= v55 - v56)
    {
      v71 = v55 - v56;
    }

    else
    {
      v71 = v56 - result;
    }

    if (v71)
    {
      if (v7)
      {
        v72 = &v55[-v71];
        v73 = v71 >> 3;
        v74 = result;
        do
        {
          v75 = *v74;
          *v74 = *v72;
          v74 += 8;
          *v72 = v75;
          v72 += 8;
          --v73;
        }

        while (v73);
      }

      else
      {
        v76 = -v71;
        v77 = result;
        do
        {
          v78 = *v77;
          *v77++ = v55[v76];
          v55[v76] = v78;
          v79 = __CFADD__(v76++, 1);
        }

        while (!v79);
      }
    }

    v80 = v53 - v54;
    v81 = v69 - &v53[a3];
    if (v53 - v54 < v81)
    {
      v81 = v53 - v54;
    }

    if (v81)
    {
      if (v7)
      {
        v82 = &v69[-v81];
        v83 = v81 >> 3;
        do
        {
          v84 = *v55;
          *v55 = *v82;
          v55 += 8;
          *v82 = v84;
          v82 += 8;
          --v83;
        }

        while (v83);
      }

      else
      {
        v85 = -v81;
        do
        {
          v86 = *v55;
          *v55++ = v69[v85];
          v69[v85] = v86;
          v79 = __CFADD__(v85++, 1);
        }

        while (!v79);
      }
    }

    if (v70 > a3)
    {
      result = mrec_qsort_r<GenoneClassTree>(result, v70 / a3, a3, a4);
    }

    if (v80 <= a3)
    {
      return result;
    }

    result = &v69[-v80];
    a2 = v80 / a3;
    v7 = (((v69 - v80) | a3) & 7) == 0;
    if ((((v69 - v80) | a3) & 7) != 0)
    {
      v8 = 2;
    }

    else
    {
      v8 = v6;
    }

    if (a2 < 7)
    {
      goto LABEL_145;
    }
  }

  if ((a2 * a3) > a3)
  {
    v99 = result;
    do
    {
      if (v52 > result)
      {
        v100 = v99;
        v101 = v52;
        do
        {
          v102 = v101;
          v101 += v5;
          if (*v101 - *v102 < 1)
          {
            break;
          }

          if (v8)
          {
            v103 = 0;
            if (v7)
            {
              v104 = v101;
              do
              {
                v105 = *&v102[8 * v103];
                *&v102[8 * v103] = *v104;
                *v104 = v105;
                v104 += 8;
                ++v103;
              }

              while (v10 != v103);
            }

            else
            {
              v107 = a3;
              do
              {
                v108 = v102[v103];
                v102[v103] = v100[v103];
                v100[v103++] = v108;
                --v107;
              }

              while (v107);
            }
          }

          else
          {
            v106 = *v102;
            *v102 = *v101;
            *v101 = v106;
          }

          v100 += v5;
        }

        while (v101 > result);
      }

      v52 += a3;
      v99 += a3;
    }

    while (v52 < v69);
  }

  return result;
}

unint64_t GenoneClassTree::initForType(uint64_t a1, int a2, uint64_t *a3)
{
  *(a1 + 184) = a2;
  v5 = 48;
  if (a2 == 1)
  {
    v5 = 80;
  }

  if (a2 == 2)
  {
    v6 = 96;
  }

  else
  {
    v6 = v5;
  }

  *(a1 + 200) = 0;
  v7 = *(a1 + 8);
  v8 = 0;
  v9 = v7 - 1;
  if (v7 != 1)
  {
    do
    {
      if ((*(*(a1 + v6) + 4 * (v9 >> 5)) >> v9))
      {
        if (v8 == *(a1 + 204))
        {
          DgnPrimArray<unsigned int>::reallocElts(a1 + 192, 1, 1);
          v8 = *(a1 + 200);
        }

        *(*(a1 + 192) + 4 * v8) = v9;
        v8 = *(a1 + 200) + 1;
        *(a1 + 200) = v8;
      }

      --v9;
    }

    while (v9);
  }

  v10 = *(a1 + 216);
  if (v10 >= 1)
  {
    v11 = 16 * v10 - 16;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(a1 + 208) + v11);
      v11 -= 16;
    }

    while (v11 != -16);
    v8 = *(a1 + 200);
  }

  v12 = 0;
  *(a1 + 216) = 0;
  v13 = *(a1 + 220);
  if (v8 <= v13 || (DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 208, v8 - v13, 0), v12 = *(a1 + 216), v12 <= v8))
  {
    if (v12 < v8)
    {
      v16 = v8 - v12;
      v17 = 16 * v12;
      do
      {
        v18 = (*(a1 + 208) + v17);
        *v18 = 0;
        v18[1] = 0;
        v17 += 16;
        --v16;
      }

      while (v16);
    }
  }

  else if (v12 > v8)
  {
    v14 = v12;
    v15 = 16 * v12 - 16;
    do
    {
      --v14;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(a1 + 208) + v15);
      v15 -= 16;
    }

    while (v14 > v8);
  }

  *(a1 + 216) = v8;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v53, *(a1 + 8));
  v19 = 0;
  LODWORD(v20) = *(a1 + 8);
  while (1)
  {
    v21 = *(a1 + 112);
    v20 = (v20 - 1);
    if (!v20)
    {
      break;
    }

    if (v20 >= v21)
    {
      v22 = v53[0] + 16 * v20;
      v23 = *(v22 + 8);
      if (v23 == *(v22 + 12))
      {
        DgnPrimArray<unsigned int>::reallocElts(v53[0] + 16 * v20, 1, 1);
        v23 = *(v22 + 8);
      }

      *(*v22 + 4 * v23) = v20;
      ++*(v22 + 8);
    }

    if ((*(*(a1 + v6) + 4 * (v20 >> 5)) >> v20))
    {
      DgnPrimArray<int>::copyArraySlice((*(a1 + 208) + 16 * v19++), (v53[0] + 16 * v20), 0, *(v53[0] + 16 * v20 + 8));
    }

    else
    {
      v24 = v53[0];
      v25 = v53[0] + 16 * v20;
      if (*(v25 + 8))
      {
        v26 = 0;
        do
        {
          v27 = v24 + 16 * *(*(a1 + 16) + 4 * v20);
          v28 = *(*v25 + 4 * v26);
          v29 = *(v27 + 8);
          if (v29 == *(v27 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(v24 + 16 * *(*(a1 + 16) + 4 * v20), 1, 1);
            v29 = *(v27 + 8);
            v24 = v53[0];
          }

          *(*v27 + 4 * v29) = v28;
          ++*(v27 + 8);
          ++v26;
          v25 = v24 + 16 * v20;
        }

        while (v26 < *(v25 + 8));
      }
    }

    if (v19 == *(a1 + 200))
    {
      v21 = *(a1 + 112);
      break;
    }
  }

  v30 = *(a1 + 236);
  if (v21 > v30)
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 224, v21 - v30, 0);
  }

  *(a1 + 232) = v21;
  if (v21 != 1)
  {
    bzero((*(a1 + 224) + 4 * (v21 - 1 - (v21 - 2))), 4 * (v21 - 1));
  }

  v31 = *(a1 + 8);
  v32 = (v31 - 1);
  if (v31 != 1)
  {
    v33 = (*(a1 + 16) + 4 * v32);
    v34 = v32 - 1;
    do
    {
      v36 = *v33--;
      v35 = v36;
      if (v36)
      {
        ++*(*(a1 + 224) + 4 * v35);
      }
    }

    while (v34--);
  }

  if (!a3)
  {
    goto LABEL_65;
  }

  v38 = *(a1 + 12);
  v39 = *(a3 + 3);
  if (v38 <= v39)
  {
    *(a3 + 2) = v38;
    v40 = (a3 + 1);
    if (!v38)
    {
      goto LABEL_55;
    }
  }

  else
  {
    DgnPrimArray<unsigned int>::reallocElts(a3, v38 - v39, 0);
    *(a3 + 2) = v38;
    v40 = (a3 + 1);
  }

  v41 = 0;
  v42 = *a3;
  do
  {
    *(v42 + 4 * v41++) = 0;
  }

  while (v41 < *v40);
LABEL_55:
  v43 = *(a1 + 216);
  if (!v43)
  {
LABEL_65:
    v43 = 0;
    goto LABEL_66;
  }

  v44 = 0;
  v45 = *(a1 + 208);
  do
  {
    v46 = (v45 + 16 * v44);
    v47 = *(v46 + 2);
    if (v47)
    {
      v48 = 0;
      v49 = *v46;
      v50 = *(a1 + 32);
      do
      {
        v51 = *(v50 + 2 * *(v49 + 4 * v48));
        if (v51 != 65534)
        {
          *(*a3 + 4 * v51) = v44;
          v47 = *(v46 + 2);
        }

        ++v48;
      }

      while (v48 < v47);
      v43 = *(a1 + 216);
    }

    ++v44;
  }

  while (v44 < v43);
LABEL_66:
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v53);
  return v43;
}

void *GenoneClassTree::release(GenoneClassTree *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    MemChunkFree(v2, 0);
    *(this + 24) = 0;
  }

  *(this + 25) = 0;
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 208);
  result = *(this + 28);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(this + 28) = 0;
  }

  *(this + 29) = 0;
  *(this + 46) = 3;
  return result;
}

BOOL GenoneClassTree::decomposeInverseVariancesForTransformationMatrixAdaptation(GenoneClassTree *this)
{
  v2 = (this + 240);
  v3 = *(this + 54);
  v5 = *(*this + 132);
  v4 = *(*this + 136);
  if (__PAIR64__(*(this + 60), *(this + 61)) == __PAIR64__(v4, v5) && *(this + 68) == v3 && *(this + 72) == v3)
  {
    return 1;
  }

  else
  {
    GenoneClassTree::clearDecomposedInverseVarianceData(this);
    v84 = __PAIR64__(v5, v4);
    v77 = v5;
    v7 = v5 * v4;
    v86 = 0;
    v85 = 0;
    if (v7)
    {
      v85 = MemChunkAlloc(8 * v7, 0);
      v86 = v7;
    }

    *(this + 60) = v4;
    *(this + 61) = v77;
    DgnPrimFixArray<double>::copyArraySlice(this + 248, &v85, 0, v7);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v85);
    v8 = *(this + 69);
    if (v3 > v8)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 264, v3 - v8, 0);
    }

    v9 = *(this + 68);
    if (v9 <= v3)
    {
      if (v9 < v3)
      {
        v12 = v3 - v9;
        v13 = (*(this + 33) + 16 * v9 + 8);
        do
        {
          *v13 = 0;
          *(v13 - 1) = 0;
          v13 += 4;
          --v12;
        }

        while (v12);
      }
    }

    else if (v9 > v3)
    {
      v10 = v9;
      v11 = 16 * v9 - 16;
      do
      {
        --v10;
        DgnPrimFixArray<double>::~DgnPrimFixArray(*(this + 33) + v11);
        v11 -= 16;
      }

      while (v10 > v3);
    }

    *(this + 68) = v3;
    v14 = *(this + 73);
    if (v3 > v14)
    {
      DgnArray<CWIDAC>::reallocElts(this + 280, v3 - v14, 0);
    }

    v15 = *(this + 72);
    if (v15 <= v3)
    {
      if (v15 < v3)
      {
        v18 = v3 - v15;
        v19 = 24 * v15;
        do
        {
          v20 = *(this + 35) + v19;
          *v20 = 0;
          *(v20 + 8) = 0;
          *(v20 + 16) = 0;
          v19 += 24;
          --v18;
        }

        while (v18);
      }
    }

    else if (v15 > v3)
    {
      v16 = v15;
      v17 = 24 * v15 - 16;
      do
      {
        --v16;
        DgnPrimFixArray<double>::~DgnPrimFixArray(*(this + 35) + v17);
        v17 -= 24;
      }

      while (v16 > v3);
    }

    *(this + 72) = v3;
    v84 = 0;
    v85 = 0;
    v83[0] = 0;
    v83[1] = 0;
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        PelMgr::getComponentByIndex(*this, i, &v84, v83);
        if (v77)
        {
          v22 = v83[0];
          v23 = *v2;
          v24 = v77;
          v25 = i;
          v26 = *(this + 31);
          do
          {
            v27 = *v22++;
            *(v26 + 8 * v25) = 1.0 / (v27 * v27);
            v25 += v23;
            --v24;
          }

          while (v24);
        }
      }
    }

    BitArray::BitArray(&v81, v4);
    BitArray::clearRange(&v81, 0, v82);
    if (v3)
    {
      v28 = 0;
      v6 = 0;
      v74 = v3;
      while (1)
      {
        v78 = 16 * v28;
        if (v3 < 2)
        {
          BitArray::setRange(&v81, 0, v82);
          v36 = 0;
          v37 = v2;
        }

        else
        {
          v29 = *(this + 26) + 16 * v28;
          v30 = *(v29 + 8);
          if (v30)
          {
            v31 = 0;
            v32 = *v29;
            v33 = v30;
            do
            {
              v34 = *v32++;
              v35 = *(*(this + 4) + 2 * v34);
              if (v35 != 65534)
              {
                v31 = *(*(*this + 272) + 4 * v35 + 4) + v31 - *(*(*this + 272) + 4 * v35);
              }

              --v33;
            }

            while (v33);
          }

          else
          {
            v31 = 0;
          }

          v37 = MemChunkAlloc(0x18uLL, 0);
          *v37 = v31;
          *(v37 + 1) = v77;
          v38 = v31 * v77;
          *(v37 + 4) = 0;
          v37[1] = 0;
          if (v38)
          {
            v37[1] = MemChunkAlloc(8 * v38, 0);
            *(v37 + 4) = v38;
          }

          if (v30)
          {
            v39 = v28;
            v40 = 0;
            v41 = 0;
            do
            {
              v42 = *(*(this + 4) + 2 * *(*(*(this + 26) + v78) + 4 * v40));
              if (v42 != 65534)
              {
                v43 = (*(*this + 272) + 4 * v42);
                v44 = *v43;
                v45 = v43[1];
                if (*v43 < v45)
                {
                  do
                  {
                    DgnMatrix::getRow(v80, v2, v44);
                    v46 = *(v37 + 1);
                    if (v46)
                    {
                      v47 = v80[0];
                      v48 = *v37;
                      v49 = v41;
                      v50 = v37[1];
                      do
                      {
                        v51 = *v47++;
                        *(v50 + 8 * v49) = v51;
                        v49 += v48;
                        --v46;
                      }

                      while (v46);
                    }

                    ++v41;
                    DgnPrimFixArray<double>::~DgnPrimFixArray(v80);
                    *(v81 + 4 * (v44 >> 5)) |= 1 << v44;
                    ++v44;
                  }

                  while (v44 != v45);
                }
              }

              ++v40;
            }

            while (v40 != v30);
            v36 = v37;
            LODWORD(v3) = v74;
            v28 = v39;
          }

          else
          {
            v36 = v37;
          }
        }

        v52 = (*(this + 33) + 16 * v28);
        v76 = v28;
        v53 = (*(this + 35) + 24 * v28);
        if ((DgnMatrix::singularValueDecompose(v37, v52, v53) & 1) == 0)
        {
          break;
        }

        v75 = v36;
        if (v3 >= 2)
        {
          v54 = *(*(this + 26) + 16 * v76 + 8);
          if (v54)
          {
            v55 = 0;
            v56 = 0;
            do
            {
              v57 = *(*(this + 4) + 2 * *(*(*(this + 26) + v78) + 4 * v55));
              if (v57 != 65534)
              {
                v58 = (*(*this + 272) + 4 * v57);
                v59 = *v58;
                v60 = v58[1];
                if (*v58 < v60)
                {
                  do
                  {
                    DgnMatrix::getRow(v80, v37, v56);
                    v61 = *(this + 61);
                    if (v61)
                    {
                      v62 = v80[0];
                      v63 = *v2;
                      v64 = v59;
                      v65 = *(this + 31);
                      do
                      {
                        v66 = *v62++;
                        *(v65 + 8 * v64) = v66;
                        v64 += v63;
                        --v61;
                      }

                      while (v61);
                    }

                    ++v56;
                    DgnPrimFixArray<double>::~DgnPrimFixArray(v80);
                    ++v59;
                  }

                  while (v59 != v60);
                }
              }

              ++v55;
            }

            while (v55 != v54);
          }
        }

        if (v77)
        {
          for (j = 0; j != v77; ++j)
          {
            DgnMatrix::getCol(v79, v53, j);
            DgnVector::operator*(v79, v80, *(*v52 + 8 * j));
            v68 = *v53;
            if (v68)
            {
              v69 = v80[0];
              v70 = *(v53 + 1);
              v71 = v68 * j;
              do
              {
                v72 = *v69++;
                *(v70 + 8 * v71++) = v72;
                --v68;
              }

              while (v68);
            }

            DgnPrimFixArray<double>::~DgnPrimFixArray(v80);
            DgnPrimFixArray<double>::~DgnPrimFixArray(v79);
          }
        }

        LODWORD(v3) = v74;
        if (v75)
        {
          DgnPrimFixArray<double>::~DgnPrimFixArray((v75 + 1));
          MemChunkFree(v75, 0);
        }

        v28 = v76 + 1;
        v6 = v76 + 1 >= v74;
        if (v76 + 1 == v74)
        {
          goto LABEL_77;
        }
      }

      GenoneClassTree::clearDecomposedInverseVarianceData(this);
    }

    else
    {
LABEL_77:
      v6 = 1;
    }

    BitArray::~BitArray(&v81);
    DgnPrimArray<unsigned int>::~DgnPrimArray(v83);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v84);
  }

  return v6;
}

void sub_2625C47F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va2, a17);
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  va_copy(va2, va1);
  v21 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  BitArray::~BitArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

void *GenoneClassTree::clearDecomposedInverseVarianceData(GenoneClassTree *this)
{
  v2 = *(this + 31);
  if (v2)
  {
    MemChunkFree(v2, 0);
    *(this + 31) = 0;
  }

  *(this + 64) = 0;
  *(this + 30) = 0;
  DgnArray<DgnVector>::releaseAll(this + 264);

  return DgnArray<DgnMatrix>::releaseAll(this + 280);
}

void DgnVector::operator*(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  DgnPrimFixArray<double>::copyArraySlice(a2, a1, 0, *(a1 + 8));
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *a2;
    do
    {
      *v6 = *v6 * a3;
      ++v6;
      --v5;
    }

    while (v5);
  }
}

void *DgnArray<DgnVector>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 16 * v2 - 16;
    do
    {
      DgnPrimFixArray<double>::~DgnPrimFixArray(*a1 + v3);
      v3 -= 16;
    }

    while (v3 != -16);
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

void *DgnArray<DgnMatrix>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 24 * v2 - 16;
    do
    {
      DgnPrimFixArray<double>::~DgnPrimFixArray(*a1 + v3);
      v3 -= 24;
    }

    while (v3 != -16);
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

void GenoneClassTree::saveGenoneClassTree(GenoneClassTree *this, DFile *a2, DFileChecksums *a3, int a4, uint64_t a5)
{
  if (a4)
  {

    GenoneClassTree::saveGenoneClassTreeText(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x19u, a5, "MRGCT!?#", 24, 4);
    v10 = 0;
    writeObject(v8, this + 2, &v10);
    writeObject(v8, this + 3, &v10);
    writeObject<unsigned int>(v8, this + 16, &v10);
    writeObject<unsigned short>(v8, this + 32, &v10);
    writeObject(v8, this + 48, &v10);
    writeObject(v8, this + 64, &v10);
    writeObject(v8, this + 80, &v10);
    writeObject(v8, this + 96, &v10);
    writeObject(v8, this + 28, &v10);
    writeObject<unsigned int>(v8, this + 120, &v10);
    writeObject<unsigned int>(v8, this + 136, &v10);
    writeObject<unsigned int>(v8, this + 152, &v10);
    writeObject<unsigned int>(v8, this + 168, &v10);
    writeObject(v8, (this + 240), &v10);
    writeObject<DgnVector>(v8, this + 264, &v10);
    writeObject<DgnMatrix>(v8, this + 280, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 25, v10);
    DgnDelete<DgnStream>(v8);
  }
}

void GenoneClassTree::saveGenoneClassTreeText(GenoneClassTree *this, DFile *a2, uint64_t a3)
{
  v3 = a3;
  DgnTextFileWriter::DgnTextFileWriter(v36);
  DgnTextFileWriter::openDgnTextFileWriter(v36, a2, 26, v3);
  v34 = 0;
  v35 = 0;
  DgnTextFile::legalDgnTextFileVersions(v36, sGCT_Versions, &v34);
  DgnTextFileWriter::setFileType(v36, "GenoneClassTree", (v34 + 8 * (v35 - 1)));
  DgnTextFileWriter::setHeaderFieldUnsigned(v36, "NumberOfNodes", (*(this + 2) - 1));
  DgnTextFileWriter::setHeaderFieldUnsigned(v36, "NumberOfGenones", *(this + 3));
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  DgnString::DgnString(v29, "NodeId");
  v6 = v33;
  if (v33 == HIDWORD(v33))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v32, 1, 1);
    v6 = v33;
  }

  DgnString::DgnString((v32 + 16 * v6), v29);
  LODWORD(v33) = v33 + 1;
  DgnString::~DgnString(v29);
  v7 = v31;
  if (v31 == HIDWORD(v31))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v30, 1, 1);
    v7 = v31;
  }

  *(v30 + 4 * v7) = 3;
  LODWORD(v31) = v7 + 1;
  v28 = v33;
  DgnString::DgnString(v29, "ParentId");
  v8 = v33;
  if (v33 == HIDWORD(v33))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v32, 1, 1);
    v8 = v33;
  }

  DgnString::DgnString((v32 + 16 * v8), v29);
  LODWORD(v33) = v33 + 1;
  DgnString::~DgnString(v29);
  v9 = v31;
  if (v31 == HIDWORD(v31))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v30, 1, 1);
    v9 = v31;
  }

  *(v30 + 4 * v9) = 3;
  LODWORD(v31) = v9 + 1;
  v27 = v33;
  DgnString::DgnString(v29, "GenId");
  v10 = v33;
  if (v33 == HIDWORD(v33))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v32, 1, 1);
    v10 = v33;
  }

  DgnString::DgnString((v32 + 16 * v10), v29);
  LODWORD(v33) = v33 + 1;
  DgnString::~DgnString(v29);
  v11 = v31;
  if (v31 == HIDWORD(v31))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v30, 1, 1);
    v11 = v31;
  }

  *(v30 + 4 * v11) = 1;
  LODWORD(v31) = v11 + 1;
  v26 = v33;
  DgnString::DgnString(v29, "IsTransAccClass");
  v12 = v33;
  if (v33 == HIDWORD(v33))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v32, 1, 1);
    v12 = v33;
  }

  DgnString::DgnString((v32 + 16 * v12), v29);
  LODWORD(v33) = v33 + 1;
  DgnString::~DgnString(v29);
  v13 = v31;
  if (v31 == HIDWORD(v31))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v30, 1, 1);
    v13 = v31;
  }

  *(v30 + 4 * v13) = 3;
  LODWORD(v31) = v13 + 1;
  v14 = v33;
  DgnString::DgnString(v29, "IsSpeakerConstrainedTransAccClass");
  v15 = v33;
  if (v33 == HIDWORD(v33))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v32, 1, 1);
    v15 = v33;
  }

  DgnString::DgnString((v32 + 16 * v15), v29);
  LODWORD(v33) = v33 + 1;
  DgnString::~DgnString(v29);
  v16 = v31;
  if (v31 == HIDWORD(v31))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v30, 1, 1);
    v16 = v31;
  }

  *(v30 + 4 * v16) = 3;
  LODWORD(v31) = v16 + 1;
  v17 = v33;
  DgnString::DgnString(v29, "IsChannelConstrainedTransAccClass");
  v18 = v33;
  if (v33 == HIDWORD(v33))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v32, 1, 1);
    v18 = v33;
  }

  DgnString::DgnString((v32 + 16 * v18), v29);
  LODWORD(v33) = v33 + 1;
  DgnString::~DgnString(v29);
  v19 = v31;
  if (v31 == HIDWORD(v31))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v30, 1, 1);
    v19 = v31;
  }

  *(v30 + 4 * v19) = 3;
  LODWORD(v31) = v19 + 1;
  v20 = v33;
  DgnString::DgnString(v29, "IsTransAccAdaptable");
  v21 = v33;
  if (v33 == HIDWORD(v33))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v32, 1, 1);
    v21 = v33;
  }

  DgnString::DgnString((v32 + 16 * v21), v29);
  LODWORD(v33) = v33 + 1;
  DgnString::~DgnString(v29);
  v22 = v31;
  if (v31 == HIDWORD(v31))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v30, 1, 1);
    v22 = v31;
  }

  *(v30 + 4 * v22) = 3;
  LODWORD(v31) = v22 + 1;
  DgnTextFileWriter::setLineFieldFormat(v36, &v30, &v32);
  if (*(this + 6) >= 2u)
  {
    v23 = 1;
    do
    {
      DgnTextFileWriter::setLineFieldUnsignedValue(v36, 0, v23);
      DgnTextFileWriter::setLineFieldUnsignedValue(v36, v28, *(*(this + 2) + 4 * v23));
      v24 = *(*(this + 4) + 2 * v23);
      if (v24 == 65534)
      {
        v25 = -2;
      }

      else if (v24 == 0xFFFF)
      {
        v25 = -1;
      }

      else
      {
        v25 = *(*(this + 4) + 2 * v23);
      }

      DgnTextFileWriter::setLineFieldIntegerValue(v36, v27, v25);
      DgnTextFileWriter::setLineFieldUnsignedValue(v36, v26, (*(*(this + 6) + 4 * (v23 >> 5)) >> v23) & 1);
      DgnTextFileWriter::setLineFieldUnsignedValue(v36, v14, (*(*(this + 10) + 4 * (v23 >> 5)) >> (v23 & 0x1F)) & 1);
      DgnTextFileWriter::setLineFieldUnsignedValue(v36, v17, (*(*(this + 12) + 4 * (v23 >> 5)) >> (v23 & 0x1F)) & 1);
      DgnTextFileWriter::setLineFieldUnsignedValue(v36, v20, (*(*(this + 8) + 4 * (v23 >> 5)) >> (v23 & 0x1F)) & 1);
      DgnTextFileWriter::writeNextLine(v36);
      ++v23;
    }

    while (v23 < *(this + 6));
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v30);
  DgnArray<DgnString>::releaseAll(&v32);
  DgnIArray<Utterance *>::~DgnIArray(&v34);
  DgnTextFileWriter::~DgnTextFileWriter(v36);
}

void sub_2625C5190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va3, a9);
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  va_copy(va3, va2);
  v16 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnArray<DgnString>::releaseAll(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

uint64_t writeObject<DgnVector>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = *(a2 + 8);
  result = writeObject(a1, &v7, a3);
  if (*(a2 + 8))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      result = writeObject();
      ++v6;
      v5 += 16;
    }

    while (v6 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<DgnMatrix>(DgnStream *a1, uint64_t a2, unsigned int *a3)
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
      v7 += 24;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void BitArray::add(BitArray *this, int a2)
{
  v4 = *(this + 2);
  if (v4 == *(this + 3))
  {
    BitArray::reallocElts(this, 1, 1);
    v4 = *(this + 2);
  }

  *(this + 2) = v4 + 1;
  v5 = 1 << v4;
  v6 = v4 >> 5;
  if (a2)
  {
    v7 = *(*this + 4 * v6) | v5;
  }

  else
  {
    v7 = *(*this + 4 * v6) & ~v5;
  }

  *(*this + 4 * v6) = v7;
}

uint64_t BitArrayIterator::scanForNextSetBitOrStop(BitArrayIterator *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  if (v2 < v1)
  {
    v3 = v2 & 0x1F;
    if ((v2 & 0x1F) != 0)
    {
      while (v1 != v2)
      {
        if ((*(**(this + 2) + 4 * (v2 >> 5)) >> v3))
        {
          goto LABEL_17;
        }

        *(this + 1) = ++v2;
        ++v3;
        if ((v2 & 0x1F) == 0)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v4 = v2 >> 5;
      v5 = v1 >> 5;
      if (v4 < (v1 >> 5))
      {
        while (!*(**(this + 2) + 4 * v4))
        {
          if (v5 == ++v4)
          {
            goto LABEL_11;
          }
        }

        LODWORD(v5) = v4;
LABEL_11:
        v2 = 32 * v5;
      }

      *(this + 1) = v2;
      if (v2 < v1)
      {
        v6 = **(this + 2);
        while (((*(v6 + 4 * (v2 >> 5)) >> v2) & 1) == 0)
        {
          *(this + 1) = ++v2;
          if (v1 == v2)
          {
            return (v1 - *this);
          }
        }
      }

LABEL_17:
      LODWORD(v1) = v2;
    }
  }

  return (v1 - *this);
}

void MrecInitModule_psholder_recogctl(void)
{
  if (!gParDebugParamSetUpgrade)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugParamSetUpgrade", byte_26286EA0E, byte_26286EA0E, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugParamSetUpgrade = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugParamSetUpgrade);
  }
}

uint64_t ParamSetIdCollSearchCmp(unsigned int *a1, ParamSetHolder **a2)
{
  ParamSetCStringName = ParamSetHolder::getParamSetCStringName(a2[1], *a1);
  v4 = ParamSetCStringName;
  v5 = *(a2 + 26);
  v6 = *a2;
  if (v5 == 1)
  {
    v7 = strlen(v6);

    return ustrncmp(v4, v6, v7);
  }

  else
  {

    return ustrcmp(ParamSetCStringName, v6);
  }
}

char *ParamSetHolder::getParamSetCStringName(ParamSetHolder *this, unsigned int a2)
{
  v2 = *(*(this + 1) + 8 * a2);
  if (!v2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2237, "recogctl/psholder", 11, "%u", a2);
    v2 = *(*(this + 1) + 8 * a2);
  }

  if (*(v2 + 16))
  {
    return *(v2 + 8);
  }

  else
  {
    return byte_26286EA0E;
  }
}

uint64_t ParamSetIdCollSearchCmpFromParamSetId(unsigned int *a1, ParamSetHolder **a2)
{
  ParamSetCStringName = ParamSetHolder::getParamSetCStringName(a2[1], *a2);
  v5 = *(a2 + 12);
  v6 = *(a2 + 26);
  v8 = ParamSetCStringName;
  v9 = *(a2 + 1);
  v10 = v5;
  v11 = v6;
  return ParamSetIdCollSearchCmp(a1, &v8);
}

uint64_t ParamSetHolder::lookupName(ParamSetHolder *a1, ParamSetHolder *a2, unsigned int a3)
{
  v13[0] = a2;
  v13[1] = a1;
  v13[2] = 0;
  v14 = -2;
  v15 = 0;
  v3 = a1 + 80 * a3;
  v5 = v3[72];
  v4 = v3 + 72;
  if (v5 == 1 && *(v4 + 1) == -2)
  {
    v6 = v4 + 8;
  }

  else
  {
    v6 = *(*(v4 + 3) + 524272);
  }

  v7 = *(v6 + 2);
  v8 = v7 - 1;
  if (v7 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0;
  while (1)
  {
    v10 = ((v8 + v9) / 2);
    v11 = ParamSetIdCollSearchCmp((*v6 + 4 * v10), v13);
    if (!v11)
    {
      break;
    }

    if (v11 < 0)
    {
      v9 = v10 + 1;
    }

    else
    {
      v8 = v10 - 1;
    }

    if (v9 > v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if ((v8 + v9 + 3) >= 2)
  {
    return *(*v6 + 4 * v10);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

unint64_t ParamSetHolder::addName(ParamSetHolder *a1, uint64_t a2, ParamSetHolder *a3, unsigned int a4)
{
  v6 = a2;
  if (ParamSetHolder::lookupName(a1, a3, a4) != -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 732, "recogctl/psholder", 12, "%.500s %.500s", a3, spParamSetTypeStringNames[a4]);
  }

  return DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::add(a1 + 80 * a4 + 72, v6);
}

unint64_t DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::add(unint64_t result, int a2)
{
  v3 = result;
  v4 = (result + 8);
  if (*result == 1)
  {
    v5 = *(result + 2);
    v26 = a2;
    v27 = *(result + 64);
    v28 = v5;
    v29 = 0;
    result = DgnPrimArray<unsigned int>::searchLastOrBefore((result + 8), 0, *(result + 16), &v26, *(result + 56));
    v6 = (result + 1);
    v7 = *(v3 + 16);
    if (v7 == *(v3 + 20))
    {
      result = DgnPrimArray<unsigned int>::reallocElts(v4, 1, 1);
      v7 = *(v3 + 16);
    }

    v8 = *v4;
    if (v7 > v6)
    {
      v9 = v7;
      v10 = (v8 + 4 * v7);
      v11 = v10;
      do
      {
        --v9;
        v12 = *--v11;
        *v10 = v12;
        v10 = v11;
      }

      while (v9 > v6);
    }

    v13 = (v8 + 4 * v6);
  }

  else
  {
    v14 = *(result + 16);
    if (v14 == *(result + 20))
    {
      result = DgnPrimArray<unsigned int>::reallocElts(result + 8, 1, 1);
      v14 = *(v3 + 16);
    }

    v13 = (*v4 + 4 * v14);
  }

  *v13 = a2;
  ++*(v3 + 16);
  v15 = *(v3 + 32);
  if (v15)
  {
    for (i = 0; i < v15; ++i)
    {
      result = *(*(v3 + 24) + 8 * i);
      if (result)
      {
        v26 = a2;
        v27 = *(v3 + 64);
        v28 = i;
        v29 = 0;
        result = DgnPrimArray<unsigned int>::searchLastOrBefore(result, 0, *(result + 8), &v26, *(v3 + 56));
        v17 = result;
        v18 = *(*(v3 + 24) + 8 * i);
        v19 = *(v18 + 2);
        if (v19 == *(v18 + 3))
        {
          result = DgnPrimArray<unsigned int>::reallocElts(*(*(v3 + 24) + 8 * i), 1, 1);
          v19 = *(v18 + 2);
        }

        v20 = (v17 + 1);
        v21 = *v18;
        if (v19 > v20)
        {
          v22 = v19;
          v23 = (v21 + 4 * v19);
          v24 = v23;
          do
          {
            --v22;
            v25 = *--v24;
            *v23 = v25;
            v23 = v24;
          }

          while (v22 > v20);
        }

        *(v21 + 4 * v20) = a2;
        ++*(v18 + 2);
        v15 = *(v3 + 32);
      }
    }
  }

  return result;
}

void ParamSetHolder::getRefDetails(ParamSetHolder *this@<X0>, DgnString *a2@<X8>)
{
  DgnString::DgnString(a2);
  v4 = *(this + 4);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = *(*(this + 1) + 8 * i);
      if (v6)
      {
        v7 = *(v6 + 36);
        if (v7)
        {
          if (*(v6 + 16))
          {
            v8 = *(v6 + 8);
          }

          else
          {
            v8 = byte_26286EA0E;
          }

          DgnString::printfAppend(a2, "%u,%u,%s,%u;", *(v6 + 24), i, v8, v7);
        }
      }
    }
  }
}

void ParamSetHolder::ParamSetHolder(ParamSetHolder *this, int a2)
{
  v3 = 0;
  *this = a2;
  *(this + 1) = 0;
  v4 = this + 8;
  *(this + 2) = 0;
  *(this + 3) = 0x10000001DLL;
  *(this + 8) = 1;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  do
  {
    v5 = this + v3;
    v5[72] = 0;
    *(v5 + 74) = 0;
    *(v5 + 5) = 0uLL;
    *(v5 + 6) = 0uLL;
    *(v5 + 7) = 0uLL;
    v3 += 80;
    *(v5 + 17) = 0;
    *(v5 + 18) = 0;
  }

  while (v3 != 1040);
  *(this + 1153) = 0u;
  *(this + 1128) = 0u;
  *(this + 1144) = 0u;
  *(this + 1112) = 0u;
  FileHistory::FileHistory((this + 1176), 100, 100);
  v6 = *(this + 4);
  if (v6 == *(this + 5))
  {
    DgnPrimArray<unsigned long long>::reallocElts(v4, 1, 1);
    v6 = *(this + 4);
  }

  v7 = 0;
  *(*(this + 1) + 8 * v6) = 0;
  *(this + 4) = v6 + 1;
  do
  {
    v8 = this + v7;
    *(v8 + 16) = ParamSetIdCollSearchCmpFromParamSetId;
    *(v8 + 17) = this;
    *(v8 + 18) = 0;
    v8[72] = 1;
    *(v8 + 74) = 131070;
    v7 += 80;
  }

  while (v7 != 1040);
  v9 = MemChunkAlloc(0x110uLL, 0);
  EnvMgr::EnvMgr(v9, 13);
  *(this + 139) = v10;
}

void sub_2625C5BE8(_Unwind_Exception *a1)
{
  v5 = v3 + 1032;
  v6 = -1040;
  do
  {
    v5 = DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::~DgnCollArray(v5) - 80;
    v6 += 80;
  }

  while (v6);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnIOwnArray<ParamSetBase *>::releaseAll(v1);
  _Unwind_Resume(a1);
}

void ParamSetHolder::~ParamSetHolder(EnvMgr **this)
{
  DgnDelete<EnvMgr>(this[139]);
  FileHistory::~FileHistory((this + 147));
  for (i = 129; i != -1; i -= 10)
  {
    DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::~DgnCollArray(&this[i]);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 5));
  DgnIOwnArray<ParamSetBase *>::releaseAll((this + 1));
}

void ParamSetHolder::printSize(ParamSetHolder *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 822);
  if (v84)
  {
    v13 = v83;
  }

  else
  {
    v13 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, byte_26286EA0E, a3, byte_26286EA0E, v13);
  DgnString::~DgnString(&v83);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, byte_26286EA0E);
  v15 = (34 - a3);
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 824);
  if (v84)
  {
    v17 = v83;
  }

  else
  {
    v17 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v16, (a3 + 1), byte_26286EA0E, (34 - a3), (34 - a3), v17, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  v18 = sizeObject<ParamSetBase *>(this + 8, 0);
  v19 = sizeObject<ParamSetBase *>(this + 8, 1);
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 826);
  if (v84)
  {
    v21 = v83;
  }

  else
  {
    v21 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, (a3 + 1), byte_26286EA0E, (34 - a3), (34 - a3), v21, v18, v19, 0);
  v80 = (a3 + 1);
  v78 = a3;
  v79 = a6;
  DgnString::~DgnString(&v83);
  *a4 += v18;
  *a5 += v19;
  v22 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v22 = 12;
  }

  v23 = *(this + 12);
  v24 = *(this + 13);
  v25 = v24 >= v23;
  v26 = v24 - v23;
  if (v25)
  {
    if (v23 > 0)
    {
      v22 += 4 * (v23 - 1) + 4;
    }

    v22 += 4 * v26;
  }

  v27 = v22 + 24;
  v28 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 10, 1u) + 12;
  v29 = *(this + 12);
  v30 = this;
  if (v29 <= *(this + 13))
  {
    v31 = 0;
  }

  else
  {
    v31 = 4 * v29;
  }

  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 828);
  if (v84)
  {
    v33 = v83;
  }

  else
  {
    v33 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v80, byte_26286EA0E, (34 - a3), (34 - a3), v33, v27, v28, v31);
  DgnString::~DgnString(&v83);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  *a4 += v27;
  *a5 += v28;
  *v79 += v31;
  v37 = v30 + 72;
  v38 = 13;
  do
  {
    v34 += DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::sizeObject(v37, 0);
    v35 += DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::sizeObject(v37, 1);
    v36 += DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::sizeObject(v37, 3);
    v37 += 80;
    --v38;
  }

  while (v38);
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 830);
  if (v84)
  {
    v40 = v83;
  }

  else
  {
    v40 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v80, byte_26286EA0E, v15, v15, v40, v34, v35, v36);
  DgnString::~DgnString(&v83);
  *a4 += v34;
  *a5 += v35;
  *v79 += v36;
  v41 = *(v30 + 139);
  if (v41)
  {
    v83 = 0;
    v81 = 0;
    v82 = 0;
    EnvMgr::printSize(v41, 0xFFFFFFFFLL, v80, &v83, &v82, &v81);
    *a4 += v83;
    *a5 += v82;
    *v79 += v81;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v42 = 4;
  }

  else
  {
    v42 = 8;
  }

  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 832);
  if (v84)
  {
    v44 = v83;
  }

  else
  {
    v44 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v80, byte_26286EA0E, v15, v15, v44, v42, v42, 0);
  DgnString::~DgnString(&v83);
  *a4 += v42;
  *a5 += v42;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 834);
  if (v84)
  {
    v46 = v83;
  }

  else
  {
    v46 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v80, byte_26286EA0E, v15, v15, v46, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 836);
  if (v84)
  {
    v48 = v83;
  }

  else
  {
    v48 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v80, byte_26286EA0E, v15, v15, v48, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 838);
  if (v84)
  {
    v50 = v83;
  }

  else
  {
    v50 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, v80, byte_26286EA0E, v15, v15, v50, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 840);
  if (v84)
  {
    v52 = v83;
  }

  else
  {
    v52 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v80, byte_26286EA0E, v15, v15, v52, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 842);
  if (v84)
  {
    v54 = v83;
  }

  else
  {
    v54 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v80, byte_26286EA0E, v15, v15, v54, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 844);
  if (v84)
  {
    v56 = v83;
  }

  else
  {
    v56 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v80, byte_26286EA0E, v15, v15, v56, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 846);
  if (v84)
  {
    v58 = v83;
  }

  else
  {
    v58 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v80, byte_26286EA0E, v15, v15, v58, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 848);
  if (v84)
  {
    v60 = v83;
  }

  else
  {
    v60 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v80, byte_26286EA0E, v15, v15, v60, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 850);
  if (v84)
  {
    v62 = v83;
  }

  else
  {
    v62 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v80, byte_26286EA0E, v15, v15, v62, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 852);
  if (v84)
  {
    v64 = v83;
  }

  else
  {
    v64 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v80, byte_26286EA0E, v15, v15, v64, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 854);
  if (v84)
  {
    v66 = v83;
  }

  else
  {
    v66 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v80, byte_26286EA0E, v15, v15, v66, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 856);
  if (v84)
  {
    v68 = v83;
  }

  else
  {
    v68 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v80, byte_26286EA0E, v15, v15, v68, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 858);
  if (v84)
  {
    v70 = v83;
  }

  else
  {
    v70 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v69, v80, byte_26286EA0E, v15, v15, v70, 1, 1, 0);
  DgnString::~DgnString(&v83);
  ++*a4;
  ++*a5;
  v71 = sizeObject(v30 + 1176, 0);
  v72 = sizeObject(v30 + 1176, 1);
  v73 = sizeObject(v30 + 1176, 3);
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 859);
  if (v84)
  {
    v75 = v83;
  }

  else
  {
    v75 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v74, v80, byte_26286EA0E, v15, v15, v75, v71, v72, v73);
  DgnString::~DgnString(&v83);
  *a4 += v71;
  *a5 += v72;
  *v79 += v73;
  getShipObjectSizeDescription(&v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 860);
  if (v84)
  {
    v77 = v83;
  }

  else
  {
    v77 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v78, byte_26286EA0E, (35 - v78), (35 - v78), v77, *a4, *a5, *v79);
  DgnString::~DgnString(&v83);
}

uint64_t sizeObject<ParamSetBase *>(uint64_t a1, uint64_t a2)
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
          v9 += (*(*v10 + 104))(v10, a2);
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

void *ParamSetHolder::loadParamSetHolderText(ParamSetHolder *this, FileSpec **a2)
{
  v2 = a2;
  v3 = 0;
  v163 = 0;
  v164[0] = 0;
  v161 = 0;
  v162 = 0;
  v159 = 0;
  v160 = 0;
  v157 = 0;
  v158 = 0;
  v155 = 0;
  v156 = 0;
  v153 = 0;
  v154 = 0;
  v151 = 0;
  v152 = 0;
  v149 = 0;
  v150 = 0;
  v147 = 0;
  v148 = 0;
  v146 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v4 = 1;
  v101 = -1;
  v102 = -1;
  v99 = 0xFFFFFFFFLL;
  v100 = -1;
  v97 = 0xFFFFFFFFLL;
  v98 = -1;
  v95 = 0xFFFFFFFFLL;
  v96 = -1;
  v93 = 0xFFFFFFFFLL;
  v94 = -1;
  v91 = 0xFFFFFFFFLL;
  v92 = -1;
  v89 = 0xFFFFFFFFLL;
  v90 = -1;
  v87 = 0xFFFFFFFFLL;
  v88 = -1;
  v85 = 0xFFFFFFFFLL;
  v86 = -1;
  v83 = 0xFFFFFFFFLL;
  v84 = -1;
  v82 = 0xFFFFFFFFLL;
  v105 = 0xFFFFFFFFLL;
  v103 = 0xFFFFFFFFLL;
  v104 = 0xFFFFFFFFLL;
  do
  {
    DgnTextFileParser::DgnTextFileParser(v139);
    v121 = 0;
    v138[1] = 0;
    v138[0] = 0;
    v137 = 0;
    if (v4 > 6)
    {
      if (v4 > 9)
      {
        switch(v4)
        {
          case 0xA:
            *(this + 289) = 0;
            if (!DFile::subFileExists(v2, 0x58u))
            {
              v97 = 0;
              v100 = 1;
              goto LABEL_187;
            }

            v3 = qword_281051FB8;
            DgnTextFileParser::openDgnTextFileParser(v139, v2, 88, 1);
            DgnTextFileParser::verifyMatchingFileType(v139, "SearchParamSetArrayText");
            DgnTextFile::legalDgnTextFileVersions(v139, sSRPT_Versions, v138);
            DgnTextFileParser::verifyFileVersionInRange(v139, v138);
            DgnTextFile::getHeaderFieldUnsigned(v139, "NumberOfParamSets", &v137, 1, 1u, 0xFFFFu);
            --v137;
            FileVersion = DgnTextFile::getFileVersion(v139);
            v6 = HIDWORD(FileVersion);
            v111 = &v145;
            v121 = ".srpt";
            v109 = &v146;
            v108 = &v146 + 4;
            v100 = FileVersion;
            v7 = FileVersion;
            v97 = HIDWORD(FileVersion);
            goto LABEL_41;
          case 0xB:
            *(this + 290) = 0;
            if (!DFile::subFileExists(v2, 0x54u))
            {
              v99 = 0;
              v101 = 1;
              goto LABEL_187;
            }

            v3 = qword_281051FC0;
            DgnTextFileParser::openDgnTextFileParser(v139, v2, 84, 1);
            DgnTextFileParser::verifyMatchingFileType(v139, "SearchCrossLayerParamSetArrayText");
            DgnTextFile::legalDgnTextFileVersions(v139, sSCPT_Versions, v138);
            DgnTextFileParser::verifyFileVersionInRange(v139, v138);
            DgnTextFile::getHeaderFieldUnsigned(v139, "NumberOfParamSets", &v137, 1, 1u, 0xFFFFu);
            --v137;
            v19 = DgnTextFile::getFileVersion(v139);
            v6 = HIDWORD(v19);
            v111 = &v143;
            v121 = ".scpt";
            v109 = &v144;
            v108 = &v144 + 4;
            v101 = v19;
            v7 = v19;
            v99 = HIDWORD(v19);
            goto LABEL_41;
          case 0xC:
            *(this + 291) = 0;
            if (!DFile::subFileExists(v2, 0x65u))
            {
              v102 = 1;
              v103 = 0;
              goto LABEL_187;
            }

            v3 = qword_281051FC8;
            DgnTextFileParser::openDgnTextFileParser(v139, v2, 101, 1);
            DgnTextFileParser::verifyMatchingFileType(v139, "UserDeltaParamSetArrayText");
            DgnTextFile::legalDgnTextFileVersions(v139, sUDPT_Versions, v138);
            DgnTextFileParser::verifyFileVersionInRange(v139, v138);
            DgnTextFile::getHeaderFieldUnsigned(v139, "NumberOfParamSets", &v137, 1, 1u, 0xFFFFu);
            --v137;
            v10 = DgnTextFile::getFileVersion(v139);
            v11 = HIDWORD(v10);
            v111 = &v141;
            v121 = ".udpt";
            v109 = &v142;
            v108 = &v142 + 4;
            v102 = v10;
            v103 = HIDWORD(v10);
            v7 = v10;
            goto LABEL_43;
        }
      }

      else
      {
        switch(v4)
        {
          case 7:
            *(this + 286) = 0;
            if (!DFile::subFileExists(v2, 0x45u))
            {
              v91 = 0;
              v94 = 1;
              goto LABEL_187;
            }

            v3 = qword_281051FA0;
            DgnTextFileParser::openDgnTextFileParser(v139, v2, 69, 1);
            DgnTextFileParser::verifyMatchingFileType(v139, "PrefiltererSearchParamSetArrayText");
            DgnTextFile::legalDgnTextFileVersions(v139, sPSPT_Versions, v138);
            DgnTextFileParser::verifyFileVersionInRange(v139, v138);
            DgnTextFile::getHeaderFieldUnsigned(v139, "NumberOfParamSets", &v137, 1, 1u, 0xFFFFu);
            --v137;
            v13 = DgnTextFile::getFileVersion(v139);
            v6 = HIDWORD(v13);
            v111 = &v151;
            v121 = ".pspt";
            v109 = &v152;
            v108 = &v152 + 4;
            v94 = v13;
            v7 = v13;
            v91 = HIDWORD(v13);
            goto LABEL_41;
          case 8:
            *(this + 287) = 0;
            if (!DFile::subFileExists(v2, 0x3Cu))
            {
              v93 = 0;
              v96 = 1;
              goto LABEL_187;
            }

            v3 = qword_281051FA8;
            DgnTextFileParser::openDgnTextFileParser(v139, v2, 60, 1);
            DgnTextFileParser::verifyMatchingFileType(v139, "PronGuessParamSetArrayText");
            DgnTextFile::legalDgnTextFileVersions(v139, sPGPT_Versions, v138);
            DgnTextFileParser::verifyFileVersionInRange(v139, v138);
            DgnTextFile::getHeaderFieldUnsigned(v139, "NumberOfParamSets", &v137, 1, 1u, 0xFFFFu);
            --v137;
            v17 = DgnTextFile::getFileVersion(v139);
            v6 = HIDWORD(v17);
            v111 = &v149;
            v121 = ".pgpt";
            v109 = &v150;
            v108 = &v150 + 4;
            v96 = v17;
            v7 = v17;
            v93 = HIDWORD(v17);
            goto LABEL_41;
          case 9:
            *(this + 288) = 0;
            if (!DFile::subFileExists(v2, 0x4Fu))
            {
              v95 = 0;
              v98 = 1;
              goto LABEL_187;
            }

            v3 = qword_281051FB0;
            DgnTextFileParser::openDgnTextFileParser(v139, v2, 79, 1);
            DgnTextFileParser::verifyMatchingFileType(v139, "SausageParamSetArrayText");
            DgnTextFile::legalDgnTextFileVersions(v139, sSAPT_Versions, v138);
            DgnTextFileParser::verifyFileVersionInRange(v139, v138);
            DgnTextFile::getHeaderFieldUnsigned(v139, "NumberOfParamSets", &v137, 1, 1u, 0xFFFFu);
            --v137;
            v8 = DgnTextFile::getFileVersion(v139);
            v6 = HIDWORD(v8);
            v111 = &v147;
            v121 = ".sapt";
            v109 = &v148;
            v108 = &v148 + 4;
            v98 = v8;
            v7 = v8;
            v95 = HIDWORD(v8);
            goto LABEL_41;
        }
      }
    }

    else if (v4 > 3)
    {
      switch(v4)
      {
        case 4:
          *(this + 283) = 0;
          if (!DFile::subFileExists(v2, 0x21u))
          {
            v85 = 0;
            v88 = 1;
            goto LABEL_187;
          }

          v3 = qword_281051F88;
          DgnTextFileParser::openDgnTextFileParser(v139, v2, 33, 1);
          DgnTextFileParser::verifyMatchingFileType(v139, "LatticeNBestParamSetArrayText");
          DgnTextFile::legalDgnTextFileVersions(v139, sLNPT_Versions, v138);
          DgnTextFileParser::verifyFileVersionInRange(v139, v138);
          DgnTextFile::getHeaderFieldUnsigned(v139, "NumberOfParamSets", &v137, 1, 1u, 0xFFFFu);
          --v137;
          v14 = DgnTextFile::getFileVersion(v139);
          v6 = HIDWORD(v14);
          v111 = &v157;
          v121 = ".lnpt";
          v109 = &v158;
          v108 = &v158 + 4;
          v88 = v14;
          v7 = v14;
          v85 = HIDWORD(v14);
          goto LABEL_41;
        case 5:
          *(this + 284) = 0;
          if (!DFile::subFileExists(v2, 0x22u))
          {
            v87 = 0;
            v90 = 1;
            goto LABEL_187;
          }

          v3 = qword_281051F90;
          DgnTextFileParser::openDgnTextFileParser(v139, v2, 34, 1);
          DgnTextFileParser::verifyMatchingFileType(v139, "LatticePostProbParamSetArrayText");
          DgnTextFile::legalDgnTextFileVersions(v139, sLPPT_Versions, v138);
          DgnTextFileParser::verifyFileVersionInRange(v139, v138);
          DgnTextFile::getHeaderFieldUnsigned(v139, "NumberOfParamSets", &v137, 1, 1u, 0xFFFFu);
          --v137;
          v18 = DgnTextFile::getFileVersion(v139);
          v6 = HIDWORD(v18);
          v111 = &v155;
          v121 = ".lppt";
          v109 = &v156;
          v108 = &v156 + 4;
          v90 = v18;
          v7 = v18;
          v87 = HIDWORD(v18);
          goto LABEL_41;
        case 6:
          *(this + 285) = 0;
          if (!DFile::subFileExists(v2, 0x37u))
          {
            v89 = 0;
            v92 = 1;
            goto LABEL_187;
          }

          v3 = qword_281051F98;
          DgnTextFileParser::openDgnTextFileParser(v139, v2, 55, 1);
          DgnTextFileParser::verifyMatchingFileType(v139, "PrefiltererBuildParamSetArrayText");
          DgnTextFile::legalDgnTextFileVersions(v139, sPBPT_Versions, v138);
          DgnTextFileParser::verifyFileVersionInRange(v139, v138);
          DgnTextFile::getHeaderFieldUnsigned(v139, "NumberOfParamSets", &v137, 1, 1u, 0xFFFFu);
          --v137;
          v9 = DgnTextFile::getFileVersion(v139);
          v6 = HIDWORD(v9);
          v111 = &v153;
          v121 = ".pbpt";
          v109 = &v154;
          v108 = &v154 + 4;
          v92 = v9;
          v7 = v9;
          v89 = HIDWORD(v9);
          goto LABEL_41;
      }
    }

    else
    {
      switch(v4)
      {
        case 1:
          *(this + 280) = 0;
          if ((DFile::subFileExists(v2, 0) & 1) == 0)
          {
            v104 = 0;
            v105 = 1;
            goto LABEL_187;
          }

          v3 = qword_281051F70;
          DgnTextFileParser::openDgnTextFileParser(v139, v2, 0, 1);
          DgnTextFileParser::verifyMatchingFileType(v139, "AdapterParamSetArrayText");
          DgnTextFile::legalDgnTextFileVersions(v139, sADPT_Versions, v138);
          DgnTextFileParser::verifyFileVersionInRange(v139, v138);
          DgnTextFile::getHeaderFieldUnsigned(v139, "NumberOfParamSets", &v137, 1, 1u, 0xFFFFu);
          --v137;
          v12 = DgnTextFile::getFileVersion(v139);
          v6 = HIDWORD(v12);
          v111 = &v163;
          v121 = ".adpt";
          v109 = v164;
          v108 = v164 + 4;
          v105 = v12;
          v7 = v12;
          v104 = HIDWORD(v12);
          goto LABEL_41;
        case 2:
          *(this + 281) = 0;
          if (!DFile::subFileExists(v2, 0xBu))
          {
            v82 = 0;
            v84 = 1;
            goto LABEL_187;
          }

          v3 = qword_281051F78;
          DgnTextFileParser::openDgnTextFileParser(v139, v2, 11, 1);
          DgnTextFileParser::verifyMatchingFileType(v139, "ChannelParamSetArrayText");
          DgnTextFile::legalDgnTextFileVersions(v139, sCHPT_Versions, v138);
          DgnTextFileParser::verifyFileVersionInRange(v139, v138);
          DgnTextFile::getHeaderFieldUnsigned(v139, "NumberOfParamSets", &v137, 1, 1u, 0xFFFFu);
          --v137;
          v16 = DgnTextFile::getFileVersion(v139);
          v6 = HIDWORD(v16);
          v111 = &v161;
          v121 = ".chpt";
          v109 = &v162;
          v108 = &v162 + 4;
          v84 = v16;
          v7 = v16;
          v82 = HIDWORD(v16);
          goto LABEL_41;
        case 3:
          *(this + 282) = 0;
          if (!DFile::subFileExists(v2, 0xFu))
          {
            v83 = 0;
            v86 = 1;
            goto LABEL_187;
          }

          v3 = qword_281051F80;
          DgnTextFileParser::openDgnTextFileParser(v139, v2, 15, 1);
          DgnTextFileParser::verifyMatchingFileType(v139, "ConfidenceParamSetArrayText");
          DgnTextFile::legalDgnTextFileVersions(v139, sCOPT_Versions, v138);
          DgnTextFileParser::verifyFileVersionInRange(v139, v138);
          DgnTextFile::getHeaderFieldUnsigned(v139, "NumberOfParamSets", &v137, 1, 1u, 0xFFFFu);
          --v137;
          v5 = DgnTextFile::getFileVersion(v139);
          v6 = HIDWORD(v5);
          v111 = &v159;
          v121 = ".copt";
          v109 = &v160;
          v108 = &v160 + 4;
          v86 = v5;
          v7 = v5;
          v83 = HIDWORD(v5);
LABEL_41:
          v20 = v6;
          goto LABEL_44;
      }
    }

    v109 = 8;
    v108 = 12;
    v111 = 0;
    v7 = v105;
    v11 = v104;
LABEL_43:
    v20 = v11;
LABEL_44:
    v136 = 0;
    v135 = 0;
    v113 = v7;
    *v112 = v20;
    ParamSpecMgr::getAllParamIdsSortedByName(v3, &v135, v7, v20);
    DgnTextFileParser::verifyNoUnknownHeaderFields(v139);
    v134 = 0;
    v133 = 0;
    DgnTextFile::getLineFieldNames(v139, &v133);
    v132[1] = 0;
    v132[0] = 0;
    DgnTextFile::getLineFieldFormats(v139, v132);
    if (v134)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v118 = -1;
      v117 = -1;
      v116 = -1;
      v114 = -1;
      do
      {
        if (*(v133 + v21 + 8))
        {
          v24 = *(v133 + v21);
        }

        else
        {
          v24 = byte_26286EA0E;
        }

        if (!strcmp(v24, "SetIndex"))
        {
          if (*(v132[0] + 4 * v22) != 3)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 963, "recogctl/psholder", 17, "%.500s %.500s %.500s", v121, v24, "Unsigned");
          }

          ++v23;
          v118 = v22;
        }

        else if (!strcmp(v24, "SetName"))
        {
          if (*(v132[0] + 4 * v22))
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 971, "recogctl/psholder", 17, "%.500s %.500s %.500s", v121, v24, "String");
          }

          ++v23;
          v117 = v22;
        }

        else if (!strcmp(v24, "ParamName"))
        {
          if (*(v132[0] + 4 * v22))
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 979, "recogctl/psholder", 17, "%.500s %.500s %.500s", v121, v24, "String");
          }

          ++v23;
          v116 = v22;
        }

        else if (!strcmp(v24, "ParamValue"))
        {
          if (*(v132[0] + 4 * v22))
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 987, "recogctl/psholder", 17, "%.500s %.500s %.500s", v121, v24, "String");
          }

          ++v23;
          v114 = v22;
        }

        else
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 992, "recogctl/psholder", 15, "%.500s %.500s", v121, v24);
        }

        ++v22;
        v21 += 16;
      }

      while (v22 < v134);
      if (v23 == 4)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v23 = 0;
      v118 = -1;
      v117 = -1;
      v116 = -1;
      v114 = -1;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 995, "recogctl/psholder", 16, "%u %u", v23, 4);
LABEL_71:
    v131 = 0;
    v130 = 0;
    DgnString::DgnString(&v128, "_default");
    v25 = v131;
    v26 = v113;
    if (v131 == HIDWORD(v131))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(&v130, 1, 1);
      v25 = v131;
    }

    DgnString::DgnString((v130 + 16 * v25), &v128);
    v110 = v4;
    LODWORD(v131) = v131 + 1;
    DgnString::~DgnString(&v128);
    v115 = 0;
    v120 = 0;
    v119 = 0;
    v27 = 0;
    v28 = 0;
    v129 = 0;
    v128 = 0;
    while ((DgnTextFileParser::parseNextLine(v139) & 1) != 0)
    {
      v28 = v140;
      LineFieldUnsigned = DgnTextFileParser::getLineFieldUnsigned(v139, v118);
      LineFieldString = DgnTextFileParser::getLineFieldString(v139, v117);
      v31 = DgnTextFileParser::getLineFieldString(v139, v116);
      v32 = DgnTextFileParser::getLineFieldString(v139, v114);
      DgnString::DgnString(&v126, LineFieldString);
      DgnString::DgnString(&v124, v31);
      DgnString::DgnString(&v122, v32);
      if (v120 < v136)
      {
        v33 = *(v135 + 2 * v120);
        ParamByParamId = ParamSpecMgr::getParamByParamId(v3, v33);
        v35 = v3;
        v36 = ParamByParamId[1];
        v37 = (*(*ParamByParamId + 24))(ParamByParamId);
        if (LineFieldUnsigned)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1079, "recogctl/psholder", 37, "%u %.500s %u", LineFieldUnsigned, v121, v28);
        }

        if (v127)
        {
          v38 = v126;
        }

        else
        {
          v38 = byte_26286EA0E;
        }

        if (strcmp(v38, "_default"))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1082, "recogctl/psholder", 20, "%.500s %.500s %.500s %u", "_default", LineFieldString, v121, v28);
        }

        if (v125)
        {
          v39 = v124;
        }

        else
        {
          v39 = byte_26286EA0E;
        }

        if (strcmp(v39, v36))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1086, "recogctl/psholder", 21, "%.500s %.500s %.500s %u", v36, v31, v121, v28);
        }

        if (v37 <= 2)
        {
          if (v37 == 1)
          {
            v3 = v35;
            Default_BOOL = ParamSpecMgr::ParamGetDefault_BOOL(v35, v33, v113, v112[0]);
            if (v123)
            {
              v66 = v122;
            }

            else
            {
              v66 = byte_26286EA0E;
            }

            v67 = strcmp(v66, "True");
            if (v67 && strcmp(v66, "False"))
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1102, "recogctl/psholder", 29, "%.500s %.500s %.500s %u", v36, v32, v121, v28);
            }

            if (Default_BOOL != (v67 == 0))
            {
              v68 = "True";
              if (Default_BOOL)
              {
                v69 = "True";
              }

              else
              {
                v69 = "False";
              }

              if (v67)
              {
                v68 = "False";
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1109, "recogctl/psholder", 22, "%.500s %.500s %.500s %.500s %u", v36, v69, v68, v121, v28);
            }
          }

          else
          {
            v40 = v37 == 2;
            v3 = v35;
            if (v40)
            {
              Default_int = ParamSpecMgr::ParamGetDefault_int(v35, v33, v113, v112[0]);
              v48 = DgnTextFile::atosi(v139, v32);
              if (v48 != Default_int)
              {
                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1123, "recogctl/psholder", 23, "%.500s %d %d %.500s %u", v36, Default_int, v48, v121, v28);
              }
            }
          }
        }

        else if (v37 == 3)
        {
          v3 = v35;
          Default_double = ParamSpecMgr::ParamGetDefault_double(v35, v33, v113, v112[0]);
          v61 = atof(v32);
          v62 = eround(v61, 14);
          if (v62 != Default_double)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1138, "recogctl/psholder", 24, "%.500s %f %f %.500s %u", v36, Default_double, v62, v121, v28);
          }
        }

        else if (v37 == 4)
        {
          v3 = v35;
          Default_string = ParamSpecMgr::ParamGetDefault_string(v35, v33, v113, v112[0]);
          if (v123)
          {
            v64 = v122;
          }

          else
          {
            v64 = byte_26286EA0E;
          }

          if (strcmp(v64, Default_string))
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1153, "recogctl/psholder", 25, "%.500s %.500s %.500s %.500s %u", v36, Default_string, v32, v121, v28);
          }
        }

        else
        {
          v40 = v37 == 5;
          v3 = v35;
          if (v40)
          {
            Default_enumAsString = ParamSpecMgr::ParamGetDefault_enumAsString(v35, v33, v113, v112[0]);
            if (v123)
            {
              v42 = v122;
            }

            else
            {
              v42 = byte_26286EA0E;
            }

            if (strcmp(v42, Default_enumAsString))
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1168, "recogctl/psholder", 26, "%.500s %.500s %.500s %.500s %u", v36, Default_enumAsString, v32, v121, v28);
            }
          }
        }

        ++v120;
        v26 = v113;
        goto LABEL_181;
      }

      if (!LineFieldUnsigned)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1183, "recogctl/psholder", 38, "%u %.500s %u", v119 + 1, v121, v28);
      }

      if (v27 & 1 | (LineFieldUnsigned != v119))
      {
        if (LineFieldUnsigned != v119 + 1)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1190, "recogctl/psholder", 19, "%u %u %.500s %u", v119 + 1, LineFieldUnsigned, v121, v28);
        }

        if (v129 >= 1)
        {
          v43 = 16 * v129 - 16;
          do
          {
            DgnString::~DgnString(v128 + v43);
            v43 -= 16;
          }

          while (v43 != -16);
        }

        LODWORD(v129) = 0;
        if ((isValidRestrictedName(LineFieldString) & 1) == 0)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1197, "recogctl/psholder", 27, "%.500s %.500s %u", LineFieldString, v121, v28);
        }

        v44 = DgnArray<DgnString>::find(&v130, &v126);
        if (v44 != -1)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1203, "recogctl/psholder", 36, "%.500s %u %u %.500s %u", LineFieldString, v44, LineFieldUnsigned, v121, v28);
        }

        v45 = v131;
        if (v131 == HIDWORD(v131))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(&v130, 1, 1);
          v45 = v131;
        }

        DgnString::DgnString((v130 + 16 * v45), &v126);
        LODWORD(v131) = v131 + 1;
        v115 = MemChunkAlloc(0x30uLL, 0);
        DynamicParamSet::DynamicParamSet(v115, LineFieldString, ParamSetHolderMgr::smParamSetTypeRanked[v110], v113 | (*v112 << 32), &v135);
        v46 = *v109;
        if (*v109 == *v108)
        {
          DgnPrimArray<unsigned long long>::reallocElts(v111, 1, 1);
          v46 = *v109;
        }

        *(*v111 + 8 * v46) = v115;
        *v109 = v46 + 1;
        if (v125 <= 1)
        {
          if (v123 >= 2)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1222, "recogctl/psholder", 28, "%.500s %.500s %u", v32, v121, v28);
          }

          v27 = 1;
          v119 = LineFieldUnsigned;
          goto LABEL_181;
        }

        v119 = LineFieldUnsigned;
      }

      v49 = v130 + 16 * (v131 - 1);
      if (v127)
      {
        v50 = v126;
      }

      else
      {
        v50 = byte_26286EA0E;
      }

      v51 = *(v49 + 8);
      v52 = *v49;
      if (v51)
      {
        v53 = v52;
      }

      else
      {
        v53 = byte_26286EA0E;
      }

      if (strcmp(v50, v53))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1237, "recogctl/psholder", 30, "%u %.500s %.500s %.500s %u", v119, v53, LineFieldString, v121, v28);
      }

      if (v125 <= 1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1241, "recogctl/psholder", 31, "%.500s %u %u", v121, v28, v119);
      }

      ParamIdByParamName = ParamSpecMgr::getParamIdByParamName(v3, v31);
      if (ParamIdByParamName == 0xFFFF)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1248, "recogctl/psholder", 32, "%.500s %.500s %u", v31, v121, v28);
      }

      if (DgnArray<DgnString>::find(&v128, &v124) != -1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1252, "recogctl/psholder", 33, "%.500s %.500s %u", v31, v121, v28);
      }

      v55 = v129;
      if (v129 == HIDWORD(v129))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(&v128, 1, 1);
        v55 = v129;
      }

      DgnString::DgnString((v128 + 16 * v55), &v124);
      LODWORD(v129) = v129 + 1;
      v56 = ParamSpecMgr::getParamByParamId(v3, ParamIdByParamName);
      v57 = (*(*v56 + 24))(v56);
      v27 = 0;
      if (v57 <= 2)
      {
        if (v57 == 1)
        {
          if (v123)
          {
            v72 = v122;
          }

          else
          {
            v72 = byte_26286EA0E;
          }

          v73 = strcmp(v72, "True");
          if (v73 && strcmp(v72, "False"))
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1270, "recogctl/psholder", 29, "%.500s %.500s %.500s %u", v31, v32, v121, v28);
          }

          DynamicParamSet::setBoolParameter(v115, ParamIdByParamName, v73 == 0);
        }

        else
        {
          if (v57 != 2)
          {
            goto LABEL_181;
          }

          v59 = DgnTextFile::atosi(v139, v32);
          DynamicParamSet::setIntParameter(v115, ParamIdByParamName, v59);
        }
      }

      else
      {
        switch(v57)
        {
          case 3:
            v70 = atof(v32);
            v71 = eround(v70, 14);
            DynamicParamSet::setDoubleParameter(v115, ParamIdByParamName, v71);
            break;
          case 4:
            DynamicParamSet::setStringParameter(v115, ParamIdByParamName, v32, 1);
            break;
          case 5:
            if ((EnumParamSpec::checkStringEnumValue(v58, v32, v26, v112[0]) & 1) == 0)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1304, "recogctl/psholder", 10, "%.500s %.500s %.500s %u", v31, v32, v121, v28);
            }

            DynamicParamSet::setEnumParameter(v115, ParamIdByParamName, v32, 1);
            break;
          default:
            goto LABEL_181;
        }
      }

      v27 = 0;
LABEL_181:
      DgnString::~DgnString(&v122);
      DgnString::~DgnString(&v124);
      DgnString::~DgnString(&v126);
    }

    if (v120 != v136)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1023, "recogctl/psholder", 34, "%u %u %.500s %u", v120, v136, v121, v28);
    }

    if (v119 != v137)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1034, "recogctl/psholder", 35, "%u %u %.500s %u", v119 + 1, v137 + 1, v121, v28);
    }

    DgnArray<DgnString>::releaseAll(&v128);
    v4 = v110;
    DgnArray<DgnString>::releaseAll(&v130);
    v2 = a2;
    DgnPrimArray<unsigned int>::~DgnPrimArray(v132);
    DgnArray<DgnString>::releaseAll(&v133);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v135);
LABEL_187:
    DgnIArray<Utterance *>::~DgnIArray(v138);
    DgnTextFileParser::~DgnTextFileParser(v139);
    ++v4;
  }

  while (v4 != 13);
  *(&v81 + 1) = &v145;
  *(&v80 + 1) = &v149;
  *&v81 = &v147;
  *(&v79 + 1) = &v153;
  *&v80 = &v151;
  *(&v78 + 1) = &v157;
  *&v79 = &v155;
  *(&v77 + 1) = &v161;
  *&v78 = &v159;
  *&v77 = &v163;
  *&v76 = v100 | (v97 << 32);
  *(&v76 + 1) = v101 | (v99 << 32);
  *&v75 = v96 | (v93 << 32);
  *(&v75 + 1) = v98 | (v95 << 32);
  ParamSetHolder::runUpgradeFunctionSequence(this, v105 | (v104 << 32), v84 | (v82 << 32), v86 | (v83 << 32), v88 | (v85 << 32), v90 | (v87 << 32), v92 | (v89 << 32), v94 | (v91 << 32), v75, v76, v102 | (v103 << 32), v77, v78, v79, v80, v81, &v143, &v141);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v163);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v161);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v159);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v157);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v155);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v153);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v151);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v149);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v147);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v145);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v143);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v141);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v141);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v143);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v145);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v147);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v149);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v151);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v153);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v155);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v157);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v159);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v161);
  return DgnIOwnArray<DynamicParamSet *>::releaseAll(&v163);
}

void sub_2625C86E0(_Unwind_Exception *a1)
{
  DgnIArray<Utterance *>::~DgnIArray(&STACK[0x310]);
  DgnTextFileParser::~DgnTextFileParser(&STACK[0x320]);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&STACK[0x408]);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&STACK[0x418]);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&STACK[0x428]);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v1 - 248);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v1 - 232);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v1 - 216);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v1 - 200);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v1 - 184);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v1 - 168);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v1 - 152);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v1 - 136);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v1 - 120);
  _Unwind_Resume(a1);
}

uint64_t ParamSetHolder::runUpgradeFunctionSequence(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18)
{
  v130 = *MEMORY[0x277D85DE8];
  v126[0] = 1;
  v126[1] = a2;
  v126[2] = a3;
  v126[3] = a4;
  v126[4] = a5;
  v126[5] = a6;
  v126[6] = a7;
  v126[7] = a8;
  v127 = a9;
  v128 = a10;
  v129 = a11;
  *&v125[1] = a12;
  *&v125[3] = a13;
  *&v125[5] = a14;
  *&v125[7] = a15;
  *&v125[9] = a16;
  v125[0] = 0;
  v125[11] = a17;
  v125[12] = a18;
  v19 = MemChunkAlloc(0x70uLL, 0);
  Hash<DgnString,DgnString,DgnStringScope,unsigned int>::Hash(v19, 0, 16);
  v124 = 0;
  v20 = 1;
  memset(v123, 0, sizeof(v123));
  do
  {
    v21 = v125[v20];
    v22 = MemChunkAlloc(0x70uLL, 0);
    Hash<DgnString,DgnString,DgnStringScope,unsigned int>::Hash(v22, 0, 16);
    *(v123 + v20) = v22;
    LODWORD(v109) = 0;
    if (*(v21 + 8))
    {
      v23 = 0;
      do
      {
        v24 = *(*v21 + 8 * v23);
        DynamicParamSet::validateSelf(v24);
        if (*(v24 + 2))
        {
          v25 = *v24;
        }

        else
        {
          v25 = byte_26286EA0E;
        }

        DgnString::DgnString(v116, v25);
        Hash<DgnString,DgnString,DgnStringScope,unsigned int>::add(v22, v116, &v109);
        if (!*Hash<DgnString,DgnString,DgnStringScope,unsigned int>::findBucket(v19, v116))
        {
          LODWORD(v107) = 0;
          Hash<DgnString,DgnString,DgnStringScope,unsigned int>::add(v19, v116, &v107);
        }

        DgnString::~DgnString(v116);
        v23 = v109 + 1;
        LODWORD(v109) = v23;
      }

      while (v23 < *(v21 + 8));
    }

    ++v20;
  }

  while (v20 != 13);
  v26 = -1;
  v27 = &dword_28752B084;
  do
  {
    v28 = 0;
    ++v26;
    v29 = 1;
    v30 = v27;
    do
    {
      if (*(v30 - 1) != LODWORD(v126[v28 + 1]) || *v30 != HIDWORD(v126[v28 + 1]))
      {
        v29 = 0;
      }

      v30 += 2;
      ++v28;
    }

    while (v28 != 12);
    v27 += 30;
  }

  while (((v26 != 51) & ~v29) != 0);
  v102 = a1;
  if (v26 != 51)
  {
    v31 = v26;
    v99 = v19;
    do
    {
      do
      {
        v32 = &sUpgradeFunctionTable + 120 * ++v31;
      }

      while (v32[104] != 1);
      v33 = 0;
      v107 = 0;
      v108 = 0;
      v34 = 13;
      do
      {
        if (v33 == HIDWORD(v108))
        {
          DgnPrimArray<unsigned long long>::reallocElts(&v107, 1, 1);
          v33 = v108;
        }

        *(v107 + 8 * v33++) = 0;
        LODWORD(v108) = v33;
        --v34;
      }

      while (v34);
      v105 = 0;
      v106 = 0;
      v116[0] = 0;
      HIDWORD(v106) = realloc_array(0, v116, 0xD0uLL, 0, 0, 1) >> 4;
      v105 = v116[0];
      v35 = v106;
      if (v106 <= 0xD)
      {
        if (v106 != 13)
        {
          v37 = 16 * v106;
          do
          {
            v38 = &v105[v37];
            *v38 = 0;
            *(v38 + 1) = 0;
            v37 += 16;
          }

          while (v37 != 208);
        }
      }

      else if (v106 >= 14)
      {
        v36 = 16 * v106 - 16;
        do
        {
          --v35;
          DgnPrimArray<unsigned int>::~DgnPrimArray(&v105[v36]);
          v36 -= 16;
        }

        while (v35 > 0xD);
      }

      LODWORD(v106) = 13;
      v39 = &sUpgradeFunctionTable + 120 * v26;
      v40 = 120 * v26;
      v41 = (v39 + 12);
      v42 = &dword_27FF2C08C;
      for (i = 16; i != 208; i += 16)
      {
        v44 = *v42++;
        ParamSpecMgr::getAllParamIdsSortedByName(ParamSpecMgr::smpParamSpecMgrArray[v44], &v105[i], *(v41 - 1), *v41);
        v41 += 2;
      }

      DgnString::DgnString(&v103);
      v45 = *(v99 + 3);
      v98 = v31;
      if (v45)
      {
        v46 = v99[10];
        v47 = *v46;
        if (*v46)
        {
          v48 = 0;
        }

        else
        {
          v49 = 0;
          v50 = v46 + 1;
          do
          {
            if (v45 - 1 == v49)
            {
              goto LABEL_83;
            }

            v47 = v50[v49++];
          }

          while (!v47);
          v48 = v49;
        }
      }

      else
      {
        v48 = 0;
        v47 = 0;
      }

      if (v48 < v45)
      {
        v51 = &unk_28752B080 + v40;
        v52 = &unk_28752B080 + 120 * v31;
        do
        {
          v100 = v47;
          v101 = v48;
          v122 = 0;
          if (v47)
          {
            v53 = (v47 + 2);
          }

          else
          {
            v53 = 0;
          }

          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          *v116 = 0u;
          v117 = 0u;
          v115 = 0;
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v54 = 16;
          v55 = 1;
          v109 = 0u;
          v110 = 0u;
          do
          {
            v56 = *&v39[8 * v55];
            v57 = *Hash<DgnString,DgnString,DgnStringScope,unsigned int>::findBucket(*(v123 + v55), v53);
            if (v57)
            {
              v58 = *(*v125[v55] + 8 * *(v57 + 32));
            }

            else
            {
              v59 = MemChunkAlloc(0x30uLL, 0);
              v58 = v59;
              if (*(v53 + 8))
              {
                v60 = *v53;
              }

              else
              {
                v60 = byte_26286EA0E;
              }

              DynamicParamSet::DynamicParamSet(v59, v60, ParamSetHolderMgr::smParamSetTypeRanked[v55], v56, &v105[v54]);
            }

            v116[v55] = v58;
            v61 = *&v32[8 * v55];
            if (v61 == v56)
            {
              *(&v109 + v55) = 0;
            }

            else
            {
              v62 = MemChunkAlloc(0x30uLL, 0);
              DynamicParamSet::DynamicParamSet(v62, v58);
              *(&v109 + v55) = v63;
              *(v63 + 16) = v61;
            }

            ++v55;
            v54 += 16;
          }

          while (v55 != 13);
          (*(v39 + 14))(&v103, v53, v116[1], v117, *(&v117 + 1), v118, *(&v118 + 1), v119, *(&v119 + 1), v120, *(&v120 + 1), v121, *(&v121 + 1), v122, *(&v109 + 1), v110, *(&v110 + 1), v111, *(&v111 + 1), v112, *(&v112 + 1), v113, *(&v113 + 1), v114, *(&v114 + 1), v115);
          for (j = 8; j != 104; j += 8)
          {
            if (*&v32[j] != *&v39[j])
            {
              DynamicParamSet::validateSelf(*(&v109 + j));
            }
          }

          for (k = 0; k != 96; k += 8)
          {
            v66 = *Hash<DgnString,DgnString,DgnStringScope,unsigned int>::findBucket(*(v123 + k + 8), v53);
            if (*&v51[k] != *&v52[k] || *&v51[k + 4] != *&v52[k + 4])
            {
              if (v66)
              {
                v67 = v116[k / 8 + 1];
                v68 = *(&v109 + k + 8);
                v116[k / 8 + 1] = v68;
                *(&v109 + k + 8) = v67;
                *(*v125[k / 8 + 1] + 8 * *(v66 + 32)) = v68;
              }

              else
              {
                v67 = *(&v109 + k + 8);
              }

              DgnDelete<DynamicParamSet>(v67);
            }

            if (!v66)
            {
              DgnDelete<DynamicParamSet>(v116[k / 8 + 1]);
            }
          }

          v69 = *v100;
          v70 = *(v99 + 3);
          if (*v100)
          {
            v48 = v101;
          }

          else
          {
            v48 = (v101 + 1);
            if (v48 >= v70)
            {
              v69 = v100;
            }

            else
            {
              v71 = v99[10];
              v69 = *(v71 + 8 * v48);
              if (!v69)
              {
                v72 = (v71 + 8 * v48 + 8);
                v73 = ~v48 + v70;
                while (v73)
                {
                  v74 = *v72++;
                  v69 = v74;
                  v48 = (v48 + 1);
                  --v73;
                  if (v74)
                  {
                    goto LABEL_82;
                  }
                }

                break;
              }
            }
          }

LABEL_82:
          v47 = v69;
        }

        while (v48 < v70);
      }

LABEL_83:
      DgnIOwnArray<DynamicParamSet *>::releaseAll(&v107);
      if (v104 >= 2)
      {
        FileHistory::addEntry((v102 + 294), v103);
      }

      DgnString::~DgnString(&v103);
      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v105);
      v19 = v99;
      v31 = v98;
      DgnIOwnArray<DynamicParamSet *>::releaseAll(&v107);
      LODWORD(v26) = v98;
    }

    while (v98 != 51);
  }

  DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(v19);
  for (m = 8; m != 104; m += 8)
  {
    DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(*(v123 + m));
  }

  for (n = 1; n != 13; ++n)
  {
    v77 = ParamSpecMgr::smpParamSpecMgrArray[ParamSetHolderMgr::smParamSetTypeRanked[n]];
    v116[0] = 0;
    v116[1] = 0;
    ParamSpecMgr::getAllParamIdsSortedByName(v77, v116, 0, 0);
    v78 = v125[n];
    if (*(v78 + 8))
    {
      v79 = 0;
      do
      {
        v80 = *(*v78 + 8 * v79);
        if (*(v80 + 2))
        {
          v81 = *v80;
        }

        else
        {
          v81 = byte_26286EA0E;
        }

        v82 = n;
        v83 = ParamSetHolder::newParamSet(v102, v81, ParamSetHolderMgr::smParamSetTypeRanked[n], 0, 0);
        ParamSet = ParamSetHolder::getParamSet(v102, v83);
        if (LODWORD(v116[1]))
        {
          v85 = ParamSet;
          v86 = 0;
          do
          {
            v87 = *(v116[0] + v86);
            ParamByParamId = ParamSpecMgr::getParamByParamId(v77, *(v116[0] + v86));
            v89 = (*(*ParamByParamId + 24))(ParamByParamId);
            if (v89 <= 2)
            {
              if (v89 == 1)
              {
                BoolParameter = DynamicParamSet::getBoolParameter(v80, v87);
                (*(*v85 + 64))(v85, v87, BoolParameter);
              }

              else if (v89 == 2)
              {
                IntParameter = DynamicParamSet::getIntParameter(v80, v87);
                (*(*v85 + 72))(v85, v87, IntParameter);
              }
            }

            else
            {
              switch(v89)
              {
                case 3:
                  DoubleParameter = DynamicParamSet::getDoubleParameter(v80, v87);
                  (*(*v85 + 80))(v85, v87, DoubleParameter);
                  break;
                case 4:
                  StringParameter = DynamicParamSet::getStringParameter(v80, v87);
                  (*(*v85 + 88))(v85, v87, StringParameter);
                  break;
                case 5:
                  EnumParameter = DynamicParamSet::getEnumParameter(v80, v87);
                  v92 = EnumParamSpec::convertEnumStringToInt(v91, EnumParameter);
                  (*(*v85 + 96))(v85, v87, v92);
                  break;
              }
            }

            ++v86;
          }

          while (v86 < LODWORD(v116[1]));
        }

        ++v79;
        n = v82;
      }

      while (v79 < *(v78 + 8));
    }

    result = DgnPrimArray<unsigned int>::~DgnPrimArray(v116);
  }

  return result;
}

void sub_2625C9320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *DgnIOwnArray<DynamicParamSet *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<DynamicParamSet>(*(*a1 + v3));
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

void *ParamSetHolder::loadParamSetHolderBinary(ParamSetHolder *this, const char **a2, DFileChecksums *a3)
{
  *v81 = 0;
  MrecHeader = OpenAndReadMrecHeader(a2, 0x44u, 1, "MRPSB!? ", &v81[1], v81);
  v80 = 0;
  v6 = v81[1] == 22 && v81[0] == 1;
  v7 = v6;
  v46 = v7;
  v43 = a3;
  if (v6)
  {
    v8 = 0;
    v80 = 12;
    v9 = 22;
    v10 = 1;
  }

  else if (v81[1] == 23 && v81[0] == 2)
  {
    v8 = 0;
    v80 = 12;
    v9 = 23;
    v10 = 2;
  }

  else
  {
    if (*(a2 + 6))
    {
      v12 = a2[2];
    }

    else
    {
      v12 = byte_26286EA0E;
    }

    MrecHeaderCheckVersions(v12, "MRPSB!? ", v81[1], v81[0], 0x17u, 3u);
    v10 = v81[0];
    v9 = v81[1];
    v8 = 1;
  }

  v44 = a2;
  MrecHeaderCheckLatestVersionIfShared(a2, "MRPSB!? ", v9, v10, 23, 3);
  v79 = 0;
  v77 = -1;
  v78 = -1;
  v75 = -1;
  v76 = -1;
  v73 = -1;
  v74 = -1;
  v71 = -1;
  v72 = -1;
  v69 = -1;
  v70 = -1;
  v67 = -1;
  v68 = -1;
  v66[0] = 0;
  v66[1] = 0;
  v65[0] = 0;
  v65[1] = 0;
  v64[0] = 0;
  v64[1] = 0;
  v63[0] = 0;
  v63[1] = 0;
  v62[0] = 0;
  v62[1] = 0;
  v61[0] = 0;
  v61[1] = 0;
  v60[0] = 0;
  v60[1] = 0;
  v59[0] = 0;
  v59[1] = 0;
  v58[0] = 0;
  v58[1] = 0;
  v57[0] = 0;
  v57[1] = 0;
  v56[0] = 0;
  v56[1] = 0;
  v55[0] = 0;
  v55[1] = 0;
  if (v8)
  {
    readObject(MrecHeader, &v80, &v79);
  }

  v13 = 0;
  for (i = 1; i != 13; ++i)
  {
    v54 = 0;
    v15 = &v78;
    if (i > 6)
    {
      if (i > 9)
      {
        switch(i)
        {
          case 0xA:
            *(this + 289) = 0;
            if (i >= v80)
            {
              v69 = 1;
              continue;
            }

            readObject(MrecHeader, &v54, &v79);
            v15 = &v69;
            readObject(MrecHeader, &v69, &v79);
            v13 = v57;
            break;
          case 0xB:
            *(this + 290) = 0;
            if (i >= v80)
            {
              v68 = 1;
              continue;
            }

            readObject(MrecHeader, &v54, &v79);
            v15 = &v68;
            readObject(MrecHeader, &v68, &v79);
            v13 = v56;
            break;
          case 0xC:
            *(this + 291) = 0;
            if (i >= v80)
            {
              v67 = 1;
              continue;
            }

            readObject(MrecHeader, &v54, &v79);
            v15 = &v67;
            readObject(MrecHeader, &v67, &v79);
            v13 = v55;
            break;
        }
      }

      else
      {
        switch(i)
        {
          case 7:
            *(this + 286) = 0;
            if (i >= v80)
            {
              v72 = 1;
              continue;
            }

            readObject(MrecHeader, &v54, &v79);
            v15 = &v72;
            readObject(MrecHeader, &v72, &v79);
            v13 = v60;
            break;
          case 8:
            *(this + 287) = 0;
            if (i >= v80)
            {
              v71 = 1;
              continue;
            }

            readObject(MrecHeader, &v54, &v79);
            v15 = &v71;
            readObject(MrecHeader, &v71, &v79);
            v13 = v59;
            break;
          case 9:
            *(this + 288) = 0;
            if (i >= v80)
            {
              v70 = 1;
              continue;
            }

            readObject(MrecHeader, &v54, &v79);
            v15 = &v70;
            readObject(MrecHeader, &v70, &v79);
            v13 = v58;
            break;
        }
      }
    }

    else if (i > 3)
    {
      switch(i)
      {
        case 4:
          *(this + 283) = 0;
          if (i >= v80)
          {
            v75 = 1;
            continue;
          }

          readObject(MrecHeader, &v54, &v79);
          v15 = &v75;
          readObject(MrecHeader, &v75, &v79);
          v13 = v63;
          break;
        case 5:
          *(this + 284) = 0;
          if (i >= v80)
          {
            v74 = 1;
            continue;
          }

          readObject(MrecHeader, &v54, &v79);
          v15 = &v74;
          readObject(MrecHeader, &v74, &v79);
          v13 = v62;
          break;
        case 6:
          *(this + 285) = 0;
          if (i >= v80)
          {
            v73 = 1;
            continue;
          }

          readObject(MrecHeader, &v54, &v79);
          v15 = &v73;
          readObject(MrecHeader, &v73, &v79);
          v13 = v61;
          break;
      }
    }

    else
    {
      switch(i)
      {
        case 1:
          *(this + 280) = 0;
          if (i >= v80)
          {
            v78 = 1;
            continue;
          }

          readObject(MrecHeader, &v54, &v79);
          readObject(MrecHeader, &v78, &v79);
          v13 = v66;
          break;
        case 2:
          *(this + 281) = 0;
          if (i >= v80)
          {
            v77 = 1;
            continue;
          }

          readObject(MrecHeader, &v54, &v79);
          v15 = &v77;
          readObject(MrecHeader, &v77, &v79);
          v13 = v65;
          break;
        case 3:
          *(this + 282) = 0;
          if (i >= v80)
          {
            v76 = 1;
            continue;
          }

          readObject(MrecHeader, &v54, &v79);
          v15 = &v76;
          readObject(MrecHeader, &v76, &v79);
          v13 = v64;
          break;
      }
    }

    v18 = v15;
    v17 = *v15;
    v16 = *(v18 + 1);
    v19 = ParamSpecMgr::smpParamSpecMgrArray[ParamSetHolderMgr::smParamSetTypeRanked[i]];
    v52 = 0;
    v53 = 0;
    ParamSpecMgr::getAllParamIdsSortedByName(v19, &v52, v17, v16);
    if (v54)
    {
      v20 = 0;
      v21 = v17 | (v16 << 32);
      while (1)
      {
        v51 = 0;
        readObject(MrecHeader, &v51, &v79);
        DgnString::DgnString(&v49);
        readObject(MrecHeader, &v49, &v79);
        if (v46)
        {
          v22 = v50 ? v49 : byte_26286EA0E;
          if ((isValidRestrictedName(v22) & 1) == 0)
          {
            if (v50)
            {
              v23 = v49;
            }

            else
            {
              v23 = byte_26286EA0E;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1478, "recogctl/psholder", 39, "%.500s %.500s", v23, spParamSetTypeStringNames[i]);
          }
        }

        v24 = MemChunkAlloc(0x30uLL, 0);
        v25 = v24;
        v26 = v50 ? v49 : byte_26286EA0E;
        DynamicParamSet::DynamicParamSet(v24, v26, ParamSetHolderMgr::smParamSetTypeRanked[i], v21, &v52);
        if (v53)
        {
          break;
        }

LABEL_96:
        v33 = *(v13 + 2);
        if (v33 == *(v13 + 3))
        {
          DgnPrimArray<unsigned long long>::reallocElts(v13, 1, 1);
          v33 = *(v13 + 2);
        }

        *(*v13 + 8 * v33) = v25;
        *(v13 + 2) = v33 + 1;
        DgnString::~DgnString(&v49);
        if (v54 <= ++v20)
        {
          goto LABEL_99;
        }
      }

      v27 = 0;
      while (1)
      {
        v28 = *(v52 + 2 * v27);
        ParamByParamId = ParamSpecMgr::getParamByParamId(v19, v28);
        v30 = (*(*ParamByParamId + 24))(ParamByParamId);
        if (v30 <= 2)
        {
          if (v30 == 1)
          {
            v47[0] = 0;
            readObject(MrecHeader, v47, &v79);
            DynamicParamSet::setBoolParameter(v25, v28, v47[0]);
          }

          else if (v30 == 2)
          {
            *v47 = 0;
            readObject(MrecHeader, v47, &v79);
            DynamicParamSet::setIntParameter(v25, v28, *v47);
          }

          goto LABEL_95;
        }

        switch(v30)
        {
          case 3:
            *v47 = 0;
            readObject(MrecHeader, v47, &v79);
            DynamicParamSet::setDoubleParameter(v25, v28, *v47);
            break;
          case 4:
            DgnString::DgnString(v47);
            readObject(MrecHeader, v47, &v79);
            if (v48)
            {
              v32 = *v47;
            }

            else
            {
              v32 = byte_26286EA0E;
            }

            DynamicParamSet::setStringParameter(v25, v28, v32, 1);
            goto LABEL_93;
          case 5:
            DgnString::DgnString(v47);
            readObject(MrecHeader, v47, &v79);
            if (v48)
            {
              v31 = *v47;
            }

            else
            {
              v31 = byte_26286EA0E;
            }

            DynamicParamSet::setEnumParameter(v25, v28, v31, 1);
LABEL_93:
            DgnString::~DgnString(v47);
            break;
        }

LABEL_95:
        if (++v27 >= v53)
        {
          goto LABEL_96;
        }
      }
    }

LABEL_99:
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v52);
  }

  *(&v42 + 1) = v57;
  *(&v41 + 1) = v59;
  *&v42 = v58;
  *(&v40 + 1) = v61;
  *&v41 = v60;
  *(&v39 + 1) = v63;
  *&v40 = v62;
  *(&v38 + 1) = v65;
  *&v39 = v64;
  *&v38 = v66;
  *&v37 = v69;
  *(&v37 + 1) = v68;
  *&v36 = v71;
  *(&v36 + 1) = v70;
  ParamSetHolder::runUpgradeFunctionSequence(this, v78, v77, v76, v75, v74, v73, v72, v36, v37, v67, v38, v39, v40, v41, v42, v56, v55);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v66);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v65);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v64);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v63);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v62);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v61);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v60);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v59);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v58);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v57);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v56);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v55);
  readObjectChecksumAndVerify(MrecHeader, v79);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(v44);
  DFileChecksums::addChecksum(v43, CurrentSubDirComponents, 68, v79);
  DgnDelete<DgnStream>(MrecHeader);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v55);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v56);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v57);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v58);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v59);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v60);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v61);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v62);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v63);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v64);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v65);
  return DgnIOwnArray<DynamicParamSet *>::releaseAll(v66);
}

void sub_2625C9E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, ...)
{
  va_start(va, a55);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a35);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a38);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a40);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a42);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a44);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a46);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a48);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a50);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a52);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a54);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(va);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v55 - 248);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v55 - 232);
  _Unwind_Resume(a1);
}

void ParamSetHolder::loadParamSetHolder(EnvMgr **this, const char **a2)
{
  v13 = 0u;
  v14 = 0u;
  SnapTime::recordTime(&v13, 1, 1, 1, 1);
  EnvHolder::errorIfFileObviouslyIsNotOfTypeParamSetHolder(a2, v4);
  DFileChecksums::DFileChecksums(v12);
  EnvMgr::loadEnvMgr(this[139], a2, v12);
  v5 = DFile::subFileExists(a2, 0);
  if (v5)
  {
    ParamSetHolder::loadParamSetHolderText(this, a2);
  }

  else
  {
    ParamSetHolder::loadParamSetHolderBinary(this, a2, v12);
  }

  if (DFile::subFileExists(a2, 0x39u))
  {
    v11 = 0;
    v6 = OpenAndReadMrecHeader(a2, 0x39u, 1, "MRPCH!? ", &v11 + 1, &v11);
    if (*(a2 + 6))
    {
      v7 = a2[2];
    }

    else
    {
      v7 = byte_26286EA0E;
    }

    MrecHeaderCheckVersions(v7, "MRPCH!? ", HIDWORD(v11), v11, 0x16u, 1u);
    MrecHeaderCheckLatestVersionIfShared(a2, "MRPCH!? ", SHIDWORD(v11), v11, 22, 1);
    DFileChecksums::DFileChecksums(&v8);
    v10 = 0;
    readObject(v6, &v8, &v10);
    readObjectChecksumAndVerify(v6, v10);
    if (!DFileChecksums::operator==(&v8, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1650, "recogctl/psholder", 14, "%s", byte_26286EA0E);
    }

    DgnDelete<DgnStream>(v6);
    DFileChecksums::~DFileChecksums(&v8);
  }

  FileHistory::loadFileHistory((this + 147), a2, v5);
  v8 = 0u;
  v9 = 0u;
  SnapTime::recordTime(&v8, 1, 1, 1, 1);
  v8 = vsubq_s64(v8, v13);
  v9 = vsubq_s64(v9, v14);
  FileHistory::addEntryWithElapsedTime((this + 147), " loadParamSetHolder time: ", &v8);
  *(this + 1168) = v5;
  (*(*a2 + 10))(a2, "ParamSetHolder");
  DFileChecksums::~DFileChecksums(v12);
}

void sub_2625CA184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  DFileChecksums::~DFileChecksums(va);
  _Unwind_Resume(a1);
}

void *ParamSetHolder::saveParamSetHolderText(ParamSetHolder *this, DFile *a2)
{
  v59 = 0;
  v55[0] = 0;
  HIDWORD(v59) = realloc_array(0, v55, 0x40uLL, 0, 0, 1) >> 4;
  v58 = v55[0];
  v2 = v59;
  if (v59 <= 4)
  {
    if (v59 != 4)
    {
      v4 = v59 + 1;
      v5 = 16 * v59;
      do
      {
        DgnString::DgnString((v58 + v5));
        v5 += 16;
      }

      while (v4++ != 4);
    }
  }

  else if (v59 >= 5)
  {
    v3 = 16 * v59 - 16;
    do
    {
      --v2;
      DgnString::~DgnString(v58 + v3);
      v3 -= 16;
    }

    while (v2 > 4);
  }

  LODWORD(v59) = 4;
  v56 = 0;
  v57 = 0;
  v55[0] = 0;
  v7 = realloc_array(0, v55, 0x10uLL, 0, 0, 1);
  v56 = v55[0];
  LODWORD(v57) = 4;
  HIDWORD(v57) = v7 >> 2;
  DgnString::operator=(v58, "SetIndex");
  DgnString::operator=((v58 + 16), "SetName");
  DgnString::operator=((v58 + 32), "ParamName");
  DgnString::operator=((v58 + 48), "ParamValue");
  v51 = 0;
  v40 = 0;
  v41 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v33 = 0;
  v34 = 0;
  v52 = 0;
  v48 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  *v56 = xmmword_26286E9F0;
  v8 = 1;
  do
  {
    DgnTextFileWriter::DgnTextFileWriter(v55);
    if (v8 > 6)
    {
      if (v8 > 9)
      {
        switch(v8)
        {
          case 0xA:
            DgnTextFileWriter::openDgnTextFileWriter(v55, a2, 88, 0);
            v53 = 0;
            v54 = 0;
            DgnTextFile::legalDgnTextFileVersions(v55, sSRPT_Versions, &v53);
            DgnTextFileWriter::setFileType(v55, "SearchParamSetArrayText", (v53 + 8 * (v54 - 1)));
            DgnIArray<Utterance *>::~DgnIArray(&v53);
            DgnTextFileWriter::setHeaderFieldUnsigned(v55, "NumberOfParamSets", (*(this + 289) + 1));
            v51 = *(this + 289);
            v43 = MemChunkAlloc(0x210uLL, 0);
            v48 = SearchParamSet::SearchParamSet(v43, v52, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, -1);
            break;
          case 0xB:
            DgnTextFileWriter::openDgnTextFileWriter(v55, a2, 84, 0);
            v53 = 0;
            v54 = 0;
            DgnTextFile::legalDgnTextFileVersions(v55, sSCPT_Versions, &v53);
            DgnTextFileWriter::setFileType(v55, "SearchCrossLayerParamSetArrayText", (v53 + 8 * (v54 - 1)));
            DgnIArray<Utterance *>::~DgnIArray(&v53);
            DgnTextFileWriter::setHeaderFieldUnsigned(v55, "NumberOfParamSets", (*(this + 290) + 1));
            v51 = *(this + 290);
            v42 = MemChunkAlloc(0x50uLL, 0);
            v48 = SearchCrossLayerParamSet::SearchCrossLayerParamSet(v42, v52, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, -1);
            break;
          case 0xC:
            DgnTextFileWriter::openDgnTextFileWriter(v55, a2, 101, 0);
            v53 = 0;
            v54 = 0;
            DgnTextFile::legalDgnTextFileVersions(v55, sUDPT_Versions, &v53);
            DgnTextFileWriter::setFileType(v55, "UserDeltaParamSetArrayText", (v53 + 8 * (v54 - 1)));
            DgnIArray<Utterance *>::~DgnIArray(&v53);
            DgnTextFileWriter::setHeaderFieldUnsigned(v55, "NumberOfParamSets", (*(this + 291) + 1));
            v51 = *(this + 291);
            v44 = MemChunkAlloc(0x38uLL, 0);
            v48 = UserDeltaParamSet::UserDeltaParamSet(v44, v52, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, -1);
            break;
        }
      }

      else if (v8 == 7)
      {
        DgnTextFileWriter::openDgnTextFileWriter(v55, a2, 69, 0);
        v53 = 0;
        v54 = 0;
        DgnTextFile::legalDgnTextFileVersions(v55, sPSPT_Versions, &v53);
        DgnTextFileWriter::setFileType(v55, "PrefiltererSearchParamSetArrayText", (v53 + 8 * (v54 - 1)));
        DgnIArray<Utterance *>::~DgnIArray(&v53);
        DgnTextFileWriter::setHeaderFieldUnsigned(v55, "NumberOfParamSets", (*(this + 286) + 1));
        v51 = *(this + 286);
        v48 = MemChunkAlloc(0x98uLL, 0);
        v33 = PrefiltererSearchParamSet::PrefiltererSearchParamSet(v48, v52, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, -1);
      }

      else if (v8 == 8)
      {
        DgnTextFileWriter::openDgnTextFileWriter(v55, a2, 60, 0);
        v53 = 0;
        v54 = 0;
        DgnTextFile::legalDgnTextFileVersions(v55, sPGPT_Versions, &v53);
        DgnTextFileWriter::setFileType(v55, "PronGuessParamSetArrayText", (v53 + 8 * (v54 - 1)));
        DgnIArray<Utterance *>::~DgnIArray(&v53);
        DgnTextFileWriter::setHeaderFieldUnsigned(v55, "NumberOfParamSets", (*(this + 287) + 1));
        v51 = *(this + 287);
        v48 = MemChunkAlloc(0x40uLL, 0);
        v40 = PronGuessParamSet::PronGuessParamSet(v48, v52, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, -1);
      }

      else
      {
        DgnTextFileWriter::openDgnTextFileWriter(v55, a2, 79, 0);
        v53 = 0;
        v54 = 0;
        DgnTextFile::legalDgnTextFileVersions(v55, sSAPT_Versions, &v53);
        DgnTextFileWriter::setFileType(v55, "SausageParamSetArrayText", (v53 + 8 * (v54 - 1)));
        DgnIArray<Utterance *>::~DgnIArray(&v53);
        DgnTextFileWriter::setHeaderFieldUnsigned(v55, "NumberOfParamSets", (*(this + 288) + 1));
        v51 = *(this + 288);
        v48 = MemChunkAlloc(0x48uLL, 0);
        v34 = SausageParamSet::SausageParamSet(v48, v52, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, -1);
      }
    }

    else if (v8 > 3)
    {
      if (v8 == 4)
      {
        DgnTextFileWriter::openDgnTextFileWriter(v55, a2, 33, 0);
        v53 = 0;
        v54 = 0;
        DgnTextFile::legalDgnTextFileVersions(v55, sLNPT_Versions, &v53);
        DgnTextFileWriter::setFileType(v55, "LatticeNBestParamSetArrayText", (v53 + 8 * (v54 - 1)));
        DgnIArray<Utterance *>::~DgnIArray(&v53);
        DgnTextFileWriter::setHeaderFieldUnsigned(v55, "NumberOfParamSets", (*(this + 283) + 1));
        v51 = *(this + 283);
        v48 = MemChunkAlloc(0x30uLL, 0);
        v37 = LatticeNBestParamSet::LatticeNBestParamSet(v48, v52, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, -1);
      }

      else if (v8 == 5)
      {
        DgnTextFileWriter::openDgnTextFileWriter(v55, a2, 34, 0);
        v53 = 0;
        v54 = 0;
        DgnTextFile::legalDgnTextFileVersions(v55, sLPPT_Versions, &v53);
        DgnTextFileWriter::setFileType(v55, "LatticePostProbParamSetArrayText", (v53 + 8 * (v54 - 1)));
        DgnIArray<Utterance *>::~DgnIArray(&v53);
        DgnTextFileWriter::setHeaderFieldUnsigned(v55, "NumberOfParamSets", (*(this + 284) + 1));
        v51 = *(this + 284);
        v48 = MemChunkAlloc(0x48uLL, 0);
        v38 = LatticePostProbParamSet::LatticePostProbParamSet(v48, v52, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, -1);
      }

      else
      {
        DgnTextFileWriter::openDgnTextFileWriter(v55, a2, 55, 0);
        v53 = 0;
        v54 = 0;
        DgnTextFile::legalDgnTextFileVersions(v55, sPBPT_Versions, &v53);
        DgnTextFileWriter::setFileType(v55, "PrefiltererBuildParamSetArrayText", (v53 + 8 * (v54 - 1)));
        DgnIArray<Utterance *>::~DgnIArray(&v53);
        DgnTextFileWriter::setHeaderFieldUnsigned(v55, "NumberOfParamSets", (*(this + 285) + 1));
        v51 = *(this + 285);
        v48 = MemChunkAlloc(0x98uLL, 0);
        v39 = PrefiltererBuildParamSet::PrefiltererBuildParamSet(v48, v52, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, -1);
      }
    }

    else
    {
      switch(v8)
      {
        case 1:
          DgnTextFileWriter::openDgnTextFileWriter(v55, a2, 0, 0);
          v53 = 0;
          v54 = 0;
          DgnTextFile::legalDgnTextFileVersions(v55, sADPT_Versions, &v53);
          DgnTextFileWriter::setFileType(v55, "AdapterParamSetArrayText", (v53 + 8 * (v54 - 1)));
          DgnIArray<Utterance *>::~DgnIArray(&v53);
          DgnTextFileWriter::setHeaderFieldUnsigned(v55, "NumberOfParamSets", (*(this + 280) + 1));
          v51 = *(this + 280);
          v48 = MemChunkAlloc(0x190uLL, 0);
          v41 = AdapterParamSet::AdapterParamSet(v48, v52, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, -1);
          break;
        case 2:
          DgnTextFileWriter::openDgnTextFileWriter(v55, a2, 11, 0);
          v53 = 0;
          v54 = 0;
          DgnTextFile::legalDgnTextFileVersions(v55, sCHPT_Versions, &v53);
          DgnTextFileWriter::setFileType(v55, "ChannelParamSetArrayText", (v53 + 8 * (v54 - 1)));
          DgnIArray<Utterance *>::~DgnIArray(&v53);
          DgnTextFileWriter::setHeaderFieldUnsigned(v55, "NumberOfParamSets", (*(this + 281) + 1));
          v51 = *(this + 281);
          v48 = MemChunkAlloc(0x150uLL, 0);
          v35 = ChannelParamSet::ChannelParamSet(v48, v52, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, -1);
          break;
        case 3:
          DgnTextFileWriter::openDgnTextFileWriter(v55, a2, 15, 0);
          v53 = 0;
          v54 = 0;
          DgnTextFile::legalDgnTextFileVersions(v55, sCOPT_Versions, &v53);
          DgnTextFileWriter::setFileType(v55, "ConfidenceParamSetArrayText", (v53 + 8 * (v54 - 1)));
          DgnIArray<Utterance *>::~DgnIArray(&v53);
          DgnTextFileWriter::setHeaderFieldUnsigned(v55, "NumberOfParamSets", (*(this + 282) + 1));
          v51 = *(this + 282);
          v48 = MemChunkAlloc(0x260uLL, 0);
          v36 = ConfidenceParamSet::ConfidenceParamSet(v48, v52, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, -1);
          break;
      }
    }

    DgnTextFileWriter::setLineFieldFormat(v55, &v56, &v58);
    v9 = ParamSpecMgr::smpParamSpecMgrArray[ParamSetHolderMgr::smParamSetTypeRanked[v8]];
    v53 = 0;
    v54 = 0;
    ParamSpecMgr::getAllParamIdsSortedByName(v9, &v53, 0, 0);
    v10 = 0;
    v11 = 0;
    v12 = this + 80 * v8 + 72;
    v46 = v8;
    v47 = v12 + 8;
    v49 = v12;
    do
    {
      if (v11)
      {
        if (*v12 != 1 || (v13 = v47, *(v12 + 1) != -2))
        {
          v13 = *(*(v12 + 3) + 524272);
        }

        v14 = *(*(this + 1) + 8 * *(*v13 + 4 * (v10 - 1)));
        v15 = 0;
        if (v14[4])
        {
          v52 = *(v14 + 1);
        }

        else
        {
          v52 = byte_26286EA0E;
        }
      }

      else
      {
        v15 = 1;
        v52 = "_default";
        v14 = v48;
      }

      if (!v54)
      {
LABEL_74:
        DgnTextFileWriter::setLineFieldUnsignedValue(v55, 0, v10);
        DgnTextFileWriter::setLineFieldValue(v55, 1u, v52);
        DgnTextFileWriter::setLineFieldValue(v55, 2u, byte_26286EA0E);
        DgnTextFileWriter::setLineFieldValue(v55, 3u, byte_26286EA0E);
        DgnTextFileWriter::writeNextLine(v55);
        goto LABEL_75;
      }

      v16 = 0;
      v17 = 0;
      do
      {
        v18 = *(v53 + 2 * v16);
        ParamByParamId = ParamSpecMgr::getParamByParamId(v9, *(v53 + 2 * v16));
        v20 = ParamByParamId[1];
        v21 = (*(*ParamByParamId + 24))(ParamByParamId);
        if (v21 <= 2)
        {
          if (v21 == 1)
          {
            v30 = (*(*v14 + 24))(v14, v18, v15);
            if (!v11 || v30 != (*(*v14 + 24))(v14, v18, 1))
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v55, 0, v10);
              DgnTextFileWriter::setLineFieldValue(v55, 1u, v52);
              DgnTextFileWriter::setLineFieldValue(v55, 2u, v20);
              if (v30)
              {
                v31 = "True";
              }

              else
              {
                v31 = "False";
              }

              DgnTextFileWriter::setLineFieldValue(v55, 3u, v31);
              DgnTextFileWriter::writeNextLine(v55);
              goto LABEL_71;
            }
          }

          else if (v21 == 2)
          {
            v26 = (*(*v14 + 32))(v14, v18, v15);
            if (!v11 || v26 != (*(*v14 + 32))(v14, v18, 1))
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v55, 0, v10);
              DgnTextFileWriter::setLineFieldValue(v55, 1u, v52);
              DgnTextFileWriter::setLineFieldValue(v55, 2u, v20);
              DgnTextFileWriter::setLineFieldIntegerValue(v55, 3u, v26);
              DgnTextFileWriter::writeNextLine(v55);
              goto LABEL_71;
            }
          }
        }

        else
        {
          switch(v21)
          {
            case 3:
              v27 = (*(*v14 + 40))(v14, v18, v15);
              if (!v11 || v27 != (*(*v14 + 40))(v14, v18, 1))
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v55, 0, v10);
                DgnTextFileWriter::setLineFieldValue(v55, 1u, v52);
                DgnTextFileWriter::setLineFieldValue(v55, 2u, v20);
                DgnTextFileWriter::setLineFieldRealValue(v55, 3u, v27);
                DgnTextFileWriter::writeNextLine(v55);
                goto LABEL_71;
              }

              break;
            case 4:
              v28 = (*(*v14 + 48))(v14, v18, v15);
              if (!v11 || (v29 = (*(*v14 + 48))(v14, v18, 1), strcmp(v28, v29)))
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v55, 0, v10);
                DgnTextFileWriter::setLineFieldValue(v55, 1u, v52);
                DgnTextFileWriter::setLineFieldValue(v55, 2u, v20);
                DgnTextFileWriter::setLineFieldValue(v55, 3u, v28);
                DgnTextFileWriter::writeNextLine(v55);
                goto LABEL_71;
              }

              break;
            case 5:
              v22 = (*(*v14 + 56))(v14, v18, v15);
              if (!v11 || v22 != (*(*v14 + 56))(v14, v18, 1))
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v55, 0, v10);
                DgnTextFileWriter::setLineFieldValue(v55, 1u, v52);
                DgnTextFileWriter::setLineFieldValue(v55, 2u, v20);
                v23 = ParamSpecMgr::getParamByParamId(v9, v18);
                NameForEnumItem = GetNameForEnumItem(v24[4] + 16, v22);
                DgnTextFileWriter::setLineFieldValue(v55, 3u, NameForEnumItem);
                DgnTextFileWriter::writeNextLine(v55);
LABEL_71:
                v17 = 1;
              }

              break;
          }
        }

        ++v16;
      }

      while (v16 < v54);
      v12 = v49;
      if ((v17 & 1) == 0)
      {
        goto LABEL_74;
      }

LABEL_75:
      v10 = ++v11;
    }

    while (v51 >= v11);
    if (v46 > 6)
    {
      if (v46 > 9)
      {
        switch(v46)
        {
          case 0xA:
            DgnDelete<AdapterParamSet>(v43);
            break;
          case 0xB:
            DgnDelete<AdapterParamSet>(v42);
            break;
          case 0xC:
            DgnDelete<AdapterParamSet>(v44);
            break;
        }
      }

      else if (v46 == 7)
      {
        DgnDelete<AdapterParamSet>(v33);
      }

      else if (v46 == 8)
      {
        DgnDelete<AdapterParamSet>(v40);
      }

      else
      {
        DgnDelete<AdapterParamSet>(v34);
      }
    }

    else if (v46 > 3)
    {
      if (v46 == 4)
      {
        DgnDelete<AdapterParamSet>(v37);
      }

      else if (v46 == 5)
      {
        DgnDelete<AdapterParamSet>(v38);
      }

      else
      {
        DgnDelete<AdapterParamSet>(v39);
      }
    }

    else
    {
      switch(v46)
      {
        case 1:
          DgnDelete<AdapterParamSet>(v41);
          break;
        case 2:
          DgnDelete<AdapterParamSet>(v35);
          break;
        case 3:
          DgnDelete<AdapterParamSet>(v36);
          break;
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v53);
    DgnTextFileWriter::~DgnTextFileWriter(v55);
    v8 = v46 + 1;
  }

  while (v46 != 12);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v56);
  return DgnArray<DgnString>::releaseAll(&v58);
}

void (***DgnDelete<AdapterParamSet>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void (***ParamSetHolder::saveParamSetHolderBinary(ParamSetHolder *this, DFile *a2, DFileChecksums *a3, uint64_t a4))(void)
{
  v5 = OpenAndWriteMrecHeader(a2, 0x44u, a4, "MRPSB!? ", 23, 3);
  v34[0] = 13;
  writeObject(v5, v34, v34 + 1);
  v28 = this;
  v26 = this + 72;
  v6 = 1;
  do
  {
    v7 = &v26[80 * v6];
    v8 = *(v7 + 4);
    if (v6 > 6)
    {
      if (v6 > 9)
      {
        if (v6 != 10)
        {
          if (v6 == 11)
          {
            writeObject(v5, v28 + 290, v34 + 1);
            DgnTextFileWriter::DgnTextFileWriter(&v32);
            v30 = 0.0;
            v31 = 0;
            DgnTextFile::legalDgnTextFileVersions(&v32, sSCPT_Versions, &v30);
          }

          else
          {
            writeObject(v5, v28 + 291, v34 + 1);
            DgnTextFileWriter::DgnTextFileWriter(&v32);
            v30 = 0.0;
            v31 = 0;
            DgnTextFile::legalDgnTextFileVersions(&v32, sUDPT_Versions, &v30);
          }

          goto LABEL_17;
        }

        writeObject(v5, v28 + 289, v34 + 1);
        DgnTextFileWriter::DgnTextFileWriter(&v32);
        v30 = 0.0;
        v31 = 0;
        DgnTextFile::legalDgnTextFileVersions(&v32, sSRPT_Versions, &v30);
        writeObject(v5, (*&v30 + 8 * (v31 - 1)), v34 + 1);
      }

      else
      {
        if (v6 != 7)
        {
          if (v6 == 8)
          {
            writeObject(v5, v28 + 287, v34 + 1);
            DgnTextFileWriter::DgnTextFileWriter(&v32);
            v30 = 0.0;
            v31 = 0;
            DgnTextFile::legalDgnTextFileVersions(&v32, sPGPT_Versions, &v30);
          }

          else
          {
            writeObject(v5, v28 + 288, v34 + 1);
            DgnTextFileWriter::DgnTextFileWriter(&v32);
            v30 = 0.0;
            v31 = 0;
            DgnTextFile::legalDgnTextFileVersions(&v32, sSAPT_Versions, &v30);
          }

          goto LABEL_17;
        }

        writeObject(v5, v28 + 286, v34 + 1);
        DgnTextFileWriter::DgnTextFileWriter(&v32);
        v30 = 0.0;
        v31 = 0;
        DgnTextFile::legalDgnTextFileVersions(&v32, sPSPT_Versions, &v30);
        writeObject(v5, (*&v30 + 8 * (v31 - 1)), v34 + 1);
      }
    }

    else if (v6 > 3)
    {
      if (v6 != 4)
      {
        if (v6 == 5)
        {
          writeObject(v5, v28 + 284, v34 + 1);
          DgnTextFileWriter::DgnTextFileWriter(&v32);
          v30 = 0.0;
          v31 = 0;
          DgnTextFile::legalDgnTextFileVersions(&v32, sLPPT_Versions, &v30);
        }

        else
        {
          writeObject(v5, v28 + 285, v34 + 1);
          DgnTextFileWriter::DgnTextFileWriter(&v32);
          v30 = 0.0;
          v31 = 0;
          DgnTextFile::legalDgnTextFileVersions(&v32, sPBPT_Versions, &v30);
        }

        goto LABEL_17;
      }

      writeObject(v5, v28 + 283, v34 + 1);
      DgnTextFileWriter::DgnTextFileWriter(&v32);
      v30 = 0.0;
      v31 = 0;
      DgnTextFile::legalDgnTextFileVersions(&v32, sLNPT_Versions, &v30);
      writeObject(v5, (*&v30 + 8 * (v31 - 1)), v34 + 1);
    }

    else
    {
      if (v6 != 1)
      {
        if (v6 == 2)
        {
          writeObject(v5, v28 + 281, v34 + 1);
          DgnTextFileWriter::DgnTextFileWriter(&v32);
          v30 = 0.0;
          v31 = 0;
          DgnTextFile::legalDgnTextFileVersions(&v32, sCHPT_Versions, &v30);
        }

        else
        {
          writeObject(v5, v28 + 282, v34 + 1);
          DgnTextFileWriter::DgnTextFileWriter(&v32);
          v30 = 0.0;
          v31 = 0;
          DgnTextFile::legalDgnTextFileVersions(&v32, sCOPT_Versions, &v30);
        }

LABEL_17:
        writeObject(v5, (*&v30 + 8 * (v31 - 1)), v34 + 1);
        goto LABEL_26;
      }

      writeObject(v5, v28 + 280, v34 + 1);
      DgnTextFileWriter::DgnTextFileWriter(&v32);
      v30 = 0.0;
      v31 = 0;
      DgnTextFile::legalDgnTextFileVersions(&v32, sADPT_Versions, &v30);
      writeObject(v5, (*&v30 + 8 * (v31 - 1)), v34 + 1);
    }

LABEL_26:
    DgnIArray<Utterance *>::~DgnIArray(&v30);
    DgnTextFileWriter::~DgnTextFileWriter(&v32);
    v27 = v6;
    v9 = ParamSpecMgr::smpParamSpecMgrArray[ParamSetHolderMgr::smParamSetTypeRanked[v6]];
    v32 = 0;
    v33 = 0;
    ParamSpecMgr::getAllParamIdsSortedByName(v9, &v32, 0, 0);
    v29 = 0;
    if (v8)
    {
      v10 = 0;
      while (1)
      {
        if (*v7 != 1 || (v11 = v7 + 8, *(v7 + 1) != -2))
        {
          v11 = *(*(v7 + 3) + 524272);
        }

        v12 = *(*(v28 + 1) + 8 * *(*v11 + 4 * v10));
        writeObject(v5, &v29, v34 + 1);
        writeObject(v5, v12 + 8, v34 + 1);
        if (v33)
        {
          break;
        }

LABEL_49:
        v10 = v29 + 1;
        v29 = v10;
        if (v8 <= v10)
        {
          goto LABEL_50;
        }
      }

      v13 = 0;
      while (1)
      {
        v14 = *(v32 + 2 * v13);
        ParamByParamId = ParamSpecMgr::getParamByParamId(v9, *(v32 + 2 * v13));
        v16 = (*(*ParamByParamId + 24))(ParamByParamId);
        if (v16 <= 2)
        {
          if (v16 == 1)
          {
            LOBYTE(v30) = (*(*v12 + 24))(v12, v14, 0);
            writeObject(v5, &v30, v34 + 1);
          }

          else if (v16 == 2)
          {
            LODWORD(v30) = (*(*v12 + 32))(v12, v14, 0);
            writeObject(v5, &v30, v34 + 1);
          }

          goto LABEL_48;
        }

        switch(v16)
        {
          case 3:
            v30 = (*(*v12 + 40))(v12, v14, 0);
            writeObject(v5, &v30, v34 + 1);
            break;
          case 4:
            v19 = (*(*v12 + 48))(v12, v14, 0);
            DgnString::DgnString(&v30, v19);
            writeObject(v5, &v30, v34 + 1);
LABEL_47:
            DgnString::~DgnString(&v30);
            break;
          case 5:
            v17 = ParamSpecMgr::getParamByParamId(v9, v14);
            if (v17)
            {
            }

            else
            {
              v18 = 0;
            }

            v20 = (*(*v12 + 56))(v12, v14, 0);
            NameForEnumItem = GetNameForEnumItem(v18[4] + 16, v20);
            DgnString::DgnString(&v30, NameForEnumItem);
            writeObject(v5, &v30, v34 + 1);
            goto LABEL_47;
        }

LABEL_48:
        if (++v13 >= v33)
        {
          goto LABEL_49;
        }
      }
    }

LABEL_50:
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v32);
    ++v6;
  }

  while (v27 != 12);
  writeObjectChecksum(v5, v34 + 1);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 68, SHIDWORD(v34[0]));
  return DgnDelete<DgnStream>(v5);
}

void sub_2625CBD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  DgnTextFileWriter::~DgnTextFileWriter(va1);
  _Unwind_Resume(a1);
}

void ParamSetHolder::saveParamSetHolder(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, uint64_t a5)
{
  v19 = 0u;
  v20 = 0u;
  SnapTime::recordTime(&v19, 1, 1, 1, 1);
  LoadSaveTracker::LoadSaveTracker(&v18);
  if (a4)
  {
    v10 = a4 != 2;
  }

  else if (*(a1 + 1168) == 1)
  {
    v10 = *(*(a1 + 1112) + 264);
  }

  else
  {
    v10 = 0;
  }

  *a3 = 1;
  DFileOwner::DFileOwner(v17);
  v11 = DFile::openDFile(a2, 1, 13, v17);
  *a3 = 2;
  DFileChecksums::DFileChecksums(v16);
  EnvMgr::saveEnvMgr(*(a1 + 1112), v11, v16, v10 & 1, a5);
  if (v10)
  {
    ParamSetHolder::saveParamSetHolderText(a1, v11);
  }

  else
  {
    ParamSetHolder::saveParamSetHolderBinary(a1, v11, v16, a5);
    v12 = OpenAndWriteMrecHeader(v11, 0x39u, 0, "MRPCH!? ", 22, 1);
    v14.i32[0] = 0;
    writeObject(v12, v16, &v14);
    writeObjectChecksum(v12, v14.i32);
    DgnDelete<DgnStream>(v12);
  }

  v14 = 0u;
  v15 = 0u;
  SnapTime::recordTime(&v14, 1, 1, 1, 1);
  v14 = vsubq_s64(v14, v19);
  v15 = vsubq_s64(v15, v20);
  FileHistory::addEntryWithElapsedTime((a1 + 1176), " saveParamSetHolder time: ", &v14);
  FileHistory::saveFileHistory((a1 + 1176), v11, v10 & 1);
  DFileOwner::setRemoveFileOnDestruction(v17, 0);
  *a3 = 0;
  DFileChecksums::~DFileChecksums(v16);
  DFileOwner::~DFileOwner(v17, v13);
  LoadSaveTracker::~LoadSaveTracker(&v18);
}

void sub_2625CBFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  DFileChecksums::~DFileChecksums(&a13);
  DFileOwner::~DFileOwner(&a16, v22);
  LoadSaveTracker::~LoadSaveTracker(&a21);
  _Unwind_Resume(a1);
}

uint64_t ParamSetHolder::newParamSet(unsigned int *a1, char *a2, int a3, int a4, const void *a5)
{
  if ((isValidRestrictedName(a2) & 1) == 0)
  {
    v10 = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2122, "recogctl/psholder", 40, "%.500s", a2);
  }

  if (a5 || !a4)
  {
    if (a5 && (a4 & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2127, "recogctl/psholder", 6, "%s", v10);
    }
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2125, "recogctl/psholder", 5, "%s", v10);
  }

  NextId = IdMgr<unsigned int>::getNextId(a1 + 6);
  for (i = a1[4]; i <= NextId; a1[4] = i)
  {
    if (i == a1[5])
    {
      DgnPrimArray<unsigned long long>::reallocElts((a1 + 2), 1, 1);
      i = a1[4];
    }

    *(*(a1 + 1) + 8 * i++) = 0;
  }

  v13 = &a1[20 * a3];
  v14 = v13[22];
  if (v14)
  {
    v15 = *(v13 + 10);
    v16 = 0xFFFFFFFFLL;
    while (1)
    {
      v17 = *v15++;
      if (v17 == NextId)
      {
        break;
      }

      --v16;
      if (!--v14)
      {
        goto LABEL_20;
      }
    }

    if (v16)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2145, "recogctl/psholder", 3, "%.500s", a2);
    }
  }

LABEL_20:
  if (a3 > 6)
  {
    if (a3 > 9)
    {
      switch(a3)
      {
        case 10:
          v39 = MemChunkAlloc(0x210uLL, 0);
          v40 = v39;
          if (a4)
          {
            SearchParamSet::SearchParamSet(v40, v41, a2, 10, *a1, NextId);
          }

          else
          {
            SearchParamSet::SearchParamSet(v39, a2, 10, *a1, NextId);
          }

          *(*(a1 + 1) + 8 * NextId) = v40;
          ParamSetHolder::addName(a1, NextId, a2, 0xAu);
          ++a1[289];
          break;
        case 11:
          v51 = MemChunkAlloc(0x50uLL, 0);
          v52 = v51;
          if (a4)
          {
            SearchCrossLayerParamSet::SearchCrossLayerParamSet(v52, v53, a2, 11, *a1, NextId);
          }

          else
          {
            SearchCrossLayerParamSet::SearchCrossLayerParamSet(v51, a2, 11, *a1, NextId);
          }

          *(*(a1 + 1) + 8 * NextId) = v52;
          ParamSetHolder::addName(a1, NextId, a2, 0xBu);
          ++a1[290];
          break;
        case 12:
          v27 = MemChunkAlloc(0x38uLL, 0);
          v28 = v27;
          if (a4)
          {
            UserDeltaParamSet::UserDeltaParamSet(v28, v29, a2, 12, *a1, NextId);
          }

          else
          {
            UserDeltaParamSet::UserDeltaParamSet(v27, a2, 12, *a1, NextId);
          }

          *(*(a1 + 1) + 8 * NextId) = v28;
          ParamSetHolder::addName(a1, NextId, a2, 0xCu);
          ++a1[291];
          break;
      }
    }

    else if (a3 == 7)
    {
      v33 = MemChunkAlloc(0x98uLL, 0);
      v34 = v33;
      if (a4)
      {
        PrefiltererSearchParamSet::PrefiltererSearchParamSet(v34, v35, a2, 7, *a1, NextId);
      }

      else
      {
        PrefiltererSearchParamSet::PrefiltererSearchParamSet(v33, a2, 7, *a1, NextId);
      }

      *(*(a1 + 1) + 8 * NextId) = v34;
      ParamSetHolder::addName(a1, NextId, a2, 7u);
      ++a1[286];
    }

    else if (a3 == 8)
    {
      v45 = MemChunkAlloc(0x40uLL, 0);
      v46 = v45;
      if (a4)
      {
        PronGuessParamSet::PronGuessParamSet(v46, v47, a2, 8, *a1, NextId);
      }

      else
      {
        PronGuessParamSet::PronGuessParamSet(v45, a2, 8, *a1, NextId);
      }

      *(*(a1 + 1) + 8 * NextId) = v46;
      ParamSetHolder::addName(a1, NextId, a2, 8u);
      ++a1[287];
    }

    else
    {
      v21 = MemChunkAlloc(0x48uLL, 0);
      v22 = v21;
      if (a4)
      {
        SausageParamSet::SausageParamSet(v22, v23, a2, 9, *a1, NextId);
      }

      else
      {
        SausageParamSet::SausageParamSet(v21, a2, 9, *a1, NextId);
      }

      *(*(a1 + 1) + 8 * NextId) = v22;
      ParamSetHolder::addName(a1, NextId, a2, 9u);
      ++a1[288];
    }
  }

  else if (a3 > 3)
  {
    if (a3 == 4)
    {
      v36 = MemChunkAlloc(0x30uLL, 0);
      v37 = v36;
      if (a4)
      {
        LatticeNBestParamSet::LatticeNBestParamSet(v37, v38, a2, 4, *a1, NextId);
      }

      else
      {
        LatticeNBestParamSet::LatticeNBestParamSet(v36, a2, 4, *a1, NextId);
      }

      *(*(a1 + 1) + 8 * NextId) = v37;
      ParamSetHolder::addName(a1, NextId, a2, 4u);
      ++a1[283];
    }

    else if (a3 == 5)
    {
      v48 = MemChunkAlloc(0x48uLL, 0);
      v49 = v48;
      if (a4)
      {
        LatticePostProbParamSet::LatticePostProbParamSet(v49, v50, a2, 5, *a1, NextId);
      }

      else
      {
        LatticePostProbParamSet::LatticePostProbParamSet(v48, a2, 5, *a1, NextId);
      }

      *(*(a1 + 1) + 8 * NextId) = v49;
      ParamSetHolder::addName(a1, NextId, a2, 5u);
      ++a1[284];
    }

    else
    {
      v24 = MemChunkAlloc(0x98uLL, 0);
      v25 = v24;
      if (a4)
      {
        PrefiltererBuildParamSet::PrefiltererBuildParamSet(v25, v26, a2, 6, *a1, NextId);
      }

      else
      {
        PrefiltererBuildParamSet::PrefiltererBuildParamSet(v24, a2, 6, *a1, NextId);
      }

      *(*(a1 + 1) + 8 * NextId) = v25;
      ParamSetHolder::addName(a1, NextId, a2, 6u);
      ++a1[285];
    }
  }

  else
  {
    switch(a3)
    {
      case 1:
        v30 = MemChunkAlloc(0x190uLL, 0);
        v31 = v30;
        if (a4)
        {
          AdapterParamSet::AdapterParamSet(v31, v32, a2, 1, *a1, NextId);
        }

        else
        {
          AdapterParamSet::AdapterParamSet(v30, a2, 1, *a1, NextId);
        }

        *(*(a1 + 1) + 8 * NextId) = v31;
        ParamSetHolder::addName(a1, NextId, a2, 1u);
        ++a1[280];
        break;
      case 2:
        v42 = MemChunkAlloc(0x150uLL, 0);
        v43 = v42;
        if (a4)
        {
          ChannelParamSet::ChannelParamSet(v43, v44, a2, 2, *a1, NextId);
        }

        else
        {
          ChannelParamSet::ChannelParamSet(v42, a2, 2, *a1, NextId);
        }

        *(*(a1 + 1) + 8 * NextId) = v43;
        ParamSetHolder::addName(a1, NextId, a2, 2u);
        ++a1[281];
        break;
      case 3:
        v18 = MemChunkAlloc(0x260uLL, 0);
        v19 = v18;
        if (a4)
        {
          ConfidenceParamSet::ConfidenceParamSet(v19, v20, a2, 3, *a1, NextId);
        }

        else
        {
          ConfidenceParamSet::ConfidenceParamSet(v18, a2, 3, *a1, NextId);
        }

        *(*(a1 + 1) + 8 * NextId) = v19;
        ParamSetHolder::addName(a1, NextId, a2, 3u);
        ++a1[282];
        break;
    }
  }

  return NextId;
}