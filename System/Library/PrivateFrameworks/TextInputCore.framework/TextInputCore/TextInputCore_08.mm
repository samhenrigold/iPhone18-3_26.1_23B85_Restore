double TI::CP::SearchNode::score_at_sample_index(TI::CP::SearchNode *this, unsigned int a2)
{
  v3 = *(this + 9);
  v4 = *(this + 12);
  if (v4 < a2)
  {
    v5 = *(this + 3);
    if (0xAAAAAAAAAAAAAAABLL * ((*(v5 + 8) - *(v5 + 7)) >> 4) - 1 <= a2)
    {
      v6 = 1;
    }

    else
    {
      ++a2;
      v6 = 0;
    }

    return v3 + TI::CP::Search::path_deviation_cost(v5, v4, a2, v6);
  }

  return v3;
}

uint64_t TI::CP::SearchNode::explain_score(void *a1, uint64_t a2)
{
  result = (*(*a1 + 72))(a1);
  if (!result)
  {
    TI::CP::SearchNode::explain_score(a1[4], a2);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = ___ZNK2TI2CP10SearchNode13explain_scoreERNSt3__16vectorINS0_14ScoreComponentENS2_9allocatorIS4_EEEE_block_invoke;
    v5[3] = &__block_descriptor_tmp_49;
    v5[4] = a2;
    return (*(*a1 + 176))(a1, v5);
  }

  return result;
}

void ___ZNK2TI2CP10SearchNode13explain_scoreERNSt3__16vectorINS0_14ScoreComponentENS2_9allocatorIS4_EEEE_block_invoke(uint64_t a1, int a2, int a3, int a4, double a5, double a6, double a7, double a8, double a9)
{
  v11 = *(a1 + 32);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  if (v12 >= v13)
  {
    v15 = *v11;
    v16 = v12 - *v11;
    v17 = 0x6DB6DB6DB6DB6DB7 * (v16 >> 3) + 1;
    if (v17 > 0x492492492492492)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v18 = 0x6DB6DB6DB6DB6DB7 * ((v13 - v15) >> 3);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x249249249249249)
    {
      v19 = 0x492492492492492;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TI::CP::ScoreComponent>>(v19);
    }

    v20 = 8 * (v16 >> 3);
    *v20 = a2;
    *(v20 + 4) = a3;
    *(v20 + 8) = a4;
    *(v20 + 16) = a5;
    *(v20 + 24) = a6;
    *(v20 + 32) = a7;
    *(v20 + 40) = a8;
    *(v20 + 48) = a9;
    v14 = v20 + 56;
    v21 = v20 - v16;
    memcpy((v20 - v16), v15, v16);
    v22 = *v11;
    *v11 = v21;
    *(v11 + 8) = v14;
    *(v11 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v12 = a2;
    *(v12 + 4) = a3;
    *(v12 + 8) = a4;
    *(v12 + 16) = a5;
    *(v12 + 24) = a6;
    *(v12 + 32) = a7;
    *(v12 + 40) = a8;
    v14 = v12 + 56;
    *(v12 + 48) = a9;
  }

  *(v11 + 8) = v14;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TI::CP::ScoreComponent>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

BOOL KB::WordSuggestionPolicy::is_never_suggestible(KB::WordSuggestionPolicy *this, const KB::Word *a2, KB::String *a3)
{
  if ((*(a2 + 107) & 0x40) != 0)
  {
    if (a3)
    {
      v6 = "word is blocklisted";
      goto LABEL_7;
    }

    return 1;
  }

  if (KB::Word::is_potentially_private(a2))
  {
    if (a3)
    {
      v6 = "word is not suggestible";
LABEL_7:
      KB::String::append(a3, v6, 0xFFFFuLL);
      return 1;
    }

    return 1;
  }

  v8 = *(a2 + 26);
  if ((v8 & 0x10000) != 0)
  {
    v12 = *(this + 3) & v8;
    if (v12 == 0x20000000)
    {
      v13 = *(a2 + 14);
      if (v13)
      {
        v14 = (v13 & *(this + 2)) == 0;
      }

      else
      {
        v14 = 0;
      }

      result = !v14;
      if (a3 && result)
      {
        v6 = "user dictionary word is sensitive only with prohibited category";
        goto LABEL_7;
      }
    }

    else
    {
      result = v12 != 0;
      if (a3 && v12)
      {
        v6 = "user dictionary word is nosuggest under policy";
        goto LABEL_7;
      }
    }
  }

  else
  {
    v9 = *(this + 2) & v8;
    if (v9 == 0x20000000)
    {
      v10 = *(a2 + 14);
      if (v10)
      {
        v11 = (v10 & *(this + 2)) == 0;
      }

      else
      {
        v11 = 0;
      }

      result = !v11;
      if (a3 && result)
      {
        v6 = "sensitive only with prohibited category";
        goto LABEL_7;
      }
    }

    else
    {
      result = v9 != 0;
      if (a3 && v9)
      {
        v6 = "word is nosuggest under policy";
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t IsNumeric(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v3 = [v2 characterIsMember:a1];

  return v3;
}

double SetupInputClassifierTable(void)
{
  memset_pattern16(UkcMap, &unk_22CC88C90, 0x84uLL);
  memset_pattern16(&UkcMap[33], &unk_22CC88CA0, 0x37CuLL);
  v0 = 0;
  qword_27D9ECEFC = 0;
  xmmword_27D9ECEDC = 0u;
  unk_27D9ECEEC = 0u;
  xmmword_27D9ECEBC = 0u;
  unk_27D9ECECC = 0u;
  xmmword_27D9ECE9C = 0u;
  *algn_27D9ECEAC = 0u;
  xmmword_27D9ECE1C = 0u;
  *algn_27D9ECE2C = 0u;
  xmmword_27D9ECE3C = 0u;
  unk_27D9ECE4C = 0u;
  v1 = 192;
  xmmword_27D9ECE5C = 0u;
  unk_27D9ECE6C = 0u;
  qword_27D9ECE7C = 0;
  do
  {
    UkcMap[v1] = 0;
    v1 = *(&AscVnLexiList + v0 + 8);
    v0 += 8;
  }

  while (v0 != 256);
  v2 = 0;
  DWORD1(xmmword_27D9ECEBC) = 2;
  DWORD1(xmmword_27D9ECE3C) = 2;
  dword_27D9ECEB0 = 2;
  dword_27D9ECE30 = 2;
  dword_27D9ECEF4 = 2;
  dword_27D9ECE74 = 2;
  do
  {
    UkcMap[WordBreakSyms[v2++]] = 1;
  }

  while (v2 != 30);
  memset(&IsoVnLexiMap, 255, 0x400uLL);
  v3 = 192;
  v4 = &dword_22CC8A0E0;
  v5 = 32;
  do
  {
    *(&IsoVnLexiMap + v3) = *(v4 - 1);
    v6 = *v4;
    v4 += 2;
    v3 = v6;
    --v5;
  }

  while (v5);
  qword_27D9ED2FC = 0xB9000000ADLL;
  xmmword_27D9ED2BC = xmmword_22CC8A090;
  unk_27D9ED2CC = unk_22CC8A0A0;
  xmmword_27D9ED2DC = xmmword_22CC8A0B0;
  unk_27D9ED2EC = unk_22CC8A0C0;
  xmmword_27D9ED29C = AZLexiLower;
  unk_27D9ED2AC = unk_22CC8A080;
  qword_27D9ED27C = 0xB8000000ACLL;
  xmmword_27D9ED21C = AZLexiUpper;
  unk_27D9ED22C = unk_22CC8A018;
  *&result = 0x560000004ALL;
  xmmword_27D9ED25C = xmmword_22CC8A048;
  unk_27D9ED26C = unk_22CC8A058;
  xmmword_27D9ED23C = xmmword_22CC8A028;
  unk_27D9ED24C = unk_22CC8A038;
  return result;
}

void UkInputProcessor::useBuiltIn(uint64_t a1, _BYTE *a2)
{
  v3 = a1 + 4;
  memset_pattern16((a1 + 4), &unk_22CC88CB0, 0x400uLL);
  v4 = *a2;
  if (*a2)
  {
    v5 = a2 + 4;
    v6 = MEMORY[0x277D85DE0];
    do
    {
      v7 = *v5;
      *(v3 + 4 * v4) = *v5;
      if (v7 <= 19)
      {
        if ((v4 & 0x80) != 0)
        {
          if (__maskrune(v4, 0x1000uLL))
          {
LABEL_6:
            v8 = *v5;
            v9 = __toupper(*(v5 - 4));
            goto LABEL_13;
          }
        }

        else if ((*(v6 + 4 * v4 + 60) & 0x1000) != 0)
        {
          goto LABEL_6;
        }

        v10 = *(v5 - 4);
        if ((v10 & 0x8000000000000000) == 0)
        {
          if ((*(v6 + 4 * v10 + 60) & 0x8000) == 0)
          {
            goto LABEL_14;
          }

LABEL_12:
          v8 = *v5;
          v9 = __tolower(*(v5 - 4));
LABEL_13:
          *(v3 + 4 * v9) = v8;
          goto LABEL_14;
        }

        if (__maskrune(*(v5 - 4), 0x8000uLL))
        {
          goto LABEL_12;
        }
      }

LABEL_14:
      v4 = v5[4];
      v5 += 8;
    }

    while (v4);
  }
}

KB::ByteString *KB::ByteString::ByteString(KB::ByteString *this, const KB::ByteString *a2, char a3)
{
  v5 = *a2;
  if (v5 <= 0xE)
  {
    v6 = a2 + 2;
  }

  else
  {
    v6 = *(a2 + 1);
  }

  *this = v5 + 1;
  if ((v5 + 1) >= 0xFu)
  {
    operator new[]();
  }

  v7 = this + 2;
  if (v5)
  {
    memmove(this + 2, v6, v5);
  }

  v7[v5] = a3;
  return this;
}

char *KB::ByteString::initialize(KB::ByteString *this, unsigned __int16 a2, const unsigned __int8 *__src, size_t __len)
{
  *this = a2;
  if (a2 >= 0xFu)
  {
    operator new[]();
  }

  v5 = this + 2;
  if (__len)
  {
    memmove(this + 2, __src, __len);
  }

  return &v5[__len];
}

KB::ByteString *KB::ByteString::ByteString(KB::ByteString *this, const KB::ByteString *a2, const unsigned __int8 *a3, size_t a4)
{
  v7 = *a2;
  if (v7 <= 0xE)
  {
    v8 = a2 + 2;
  }

  else
  {
    v8 = *(a2 + 1);
  }

  *this = v7 + a4;
  if ((v7 + a4) >= 0xFu)
  {
    operator new[]();
  }

  v9 = this + 2;
  if (v7)
  {
    memmove(this + 2, v8, v7);
  }

  if (a4)
  {
    memmove(&v9[v7], a3, a4);
  }

  return this;
}

__n128 KB::ByteString::copy(KB::ByteString *this, __n128 *a2)
{
  v3 = a2->n128_u16[0];
  if (v3 >= 0xF)
  {
    *this = v3;
    operator new[]();
  }

  result = *a2;
  *this = *a2;
  return result;
}

_OWORD *KB::ByteString::move(_OWORD *result, unsigned __int16 *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2 >= 0xF)
  {
    *a2 = 0;
  }

  return result;
}

unsigned __int16 *KB::ByteString::operator=(unsigned __int16 *a1, const void **a2)
{
  if (*a1 >= 0xFu)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      MEMORY[0x2318BE250](v4, 0x1000C8077774924);
    }
  }

  v5 = *a2;
  if (v5 >= 0xF)
  {
    *a1 = v5;
    operator new[]();
  }

  *a1 = *a2;
  return a1;
}

unsigned __int16 *KB::ByteString::operator=(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 >= 0xFu)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      MEMORY[0x2318BE250](v4, 0x1000C8077774924);
    }
  }

  v5 = *a2;
  *a1 = *a2;
  if (v5 >= 0xF)
  {
    *a2 = 0;
  }

  return a1;
}

BOOL KB::ByteString::starts_with(KB::ByteString *this, const ByteString *a2)
{
  var0 = a2->var0.var0.var0;
  v3 = *this;
  if (var0 > v3)
  {
    return 0;
  }

  var1 = a2->var0.var0.var1;
  if (var0 <= 0xE)
  {
    var1 = a2->var0.var1.var1;
  }

  if (v3 < 0xF)
  {
    v6 = this + 2;
  }

  else
  {
    v6 = *(this + 1);
  }

  return memcmp(var1, v6, var0) == 0;
}

uint64_t KB::ByteString::compare(KB::ByteString *this, const KB::ByteString *a2)
{
  v4 = *this;
  if (v4 <= 0xE)
  {
    v5 = this + 2;
  }

  else
  {
    v5 = *(this + 1);
  }

  v6 = *a2;
  if (v6 <= 0xE)
  {
    v7 = a2 + 2;
  }

  else
  {
    v7 = *(a2 + 1);
  }

  if (v6 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  v9 = memcmp(v5, v7, v8);
  v10 = v4 < v6;
  if (v9)
  {
    v10 = v9 < 0;
  }

  if (v10)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return !KB::operator==(this, a2);
  }
}

BOOL KB::operator==(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  if (v2 != *a2)
  {
    return 0;
  }

  if (v2 <= 0xE)
  {
    v3 = a1 + 1;
  }

  else
  {
    v3 = *(a1 + 1);
  }

  if (v2 <= 0xE)
  {
    v4 = a2 + 1;
  }

  else
  {
    v4 = *(a2 + 1);
  }

  return memcmp(v3, v4, v2) == 0;
}

BOOL KB::operator<(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  if (v2 <= 0xE)
  {
    v3 = a1 + 1;
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = *a2;
  if (v4 <= 0xE)
  {
    v5 = a2 + 1;
  }

  else
  {
    v5 = *(a2 + 1);
  }

  if (v4 >= v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  v7 = memcmp(v3, v5, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v2 < v4;
  }
}

uint64_t __Block_byref_object_copy__5808(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void TI::RejectionsDatabase::keyboard_db_file(std::string *a1, std::string *a2)
{
  memset(&v7, 0, sizeof(v7));
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:nn200100]<char const*,0>(&v7, a2, (a2 + v3));
  memset(&__p, 0, sizeof(__p));
  std::string::append[abi:nn200100]<char const*,0>(&__p, "AutocorrectionRejections.db", "");
  std::__fs::filesystem::operator/[abi:nn200100](&v6, &v7, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a1, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a1 = v6;
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

std::string *std::string::append[abi:nn200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = HIBYTE(v10);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v7 = 22;
    LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    v9 = this;
  }

  if (v9 > __src || (&v9->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v7 - size < v6)
    {
      std::string::__grow_by(this, v7, size - v7 + v6, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v11 = this;
    if ((v8 & 0x80) != 0)
    {
      v11 = this->__r_.__value_.__r.__words[0];
    }

    v12 = v11 + size;
    memmove(v11 + size, __src, v6);
    v12[v6] = 0;
    v13 = v6 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v13;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v13 & 0x7F;
    }
  }

  else
  {
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    if (v6 > 0x16)
    {
      operator new();
    }

    v18 = v6;
    memcpy(__dst, __src, v6);
    *(__dst + v6) = 0;
    if ((v18 & 0x80u) == 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v15 = v18;
    }

    else
    {
      v15 = __dst[1];
    }

    std::string::append(this, v14, v15);
    if (v18 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  return this;
}

std::string *std::__fs::filesystem::operator/[abi:nn200100](std::string *this, uint64_t a2, std::__fs::filesystem::path *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 8));
  }

  else
  {
    *this = *a2;
  }

  if (std::__fs::filesystem::path::__root_directory(a3).__size_)
  {

    return std::string::operator=(this, &a3->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(this).__size_)
    {
      std::string::push_back(this, 47);
    }

    v6 = SHIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
    if (v6 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = a3->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v6 >= 0)
    {
      size = HIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a3->__pn_.__r_.__value_.__l.__size_;
    }

    return std::string::append(this, v7, size);
  }
}

uint64_t TI::RejectionsDatabase::initialize(TI::RejectionsDatabase *this, const std::__fs::filesystem::path *__s, const __CFString *a3, const __CFString *a4)
{
  v37[19] = *MEMORY[0x277D85DE8];
  v7 = (this + 8);
  v8 = strlen(__s);
  v9 = v8;
  v10 = *(this + 31);
  if (v10 < 0)
  {
    if (v8 != *(this + 2))
    {
      goto LABEL_8;
    }

    if (v8 == -1)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v11 = v7->__r_.__value_.__r.__words[0];
  }

  else
  {
    v11 = v7;
    if (v9 != v10)
    {
      goto LABEL_8;
    }
  }

  result = memcmp(v11, __s, v9);
  if (!result)
  {
    return result;
  }

LABEL_8:
  result = TI_DEVICE_UNLOCKED_SINCE_BOOT();
  if ((result & 1) == 0)
  {
LABEL_12:
    *this = 0;
    return result;
  }

  ppDb = 0;
  if (sqlite3_open_v2(__s, &ppDb, 3145734, 0))
  {
    v13 = sqlite3_errmsg(ppDb);
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      result = sqlite3_close(ppDb);
      goto LABEL_12;
    }

    *ppStmt = 136315394;
    *&ppStmt[4] = __s;
    *&ppStmt[12] = 2080;
    *&ppStmt[14] = v13;
    v19 = MEMORY[0x277D86220];
    v20 = "RejectionsDatabase: Error creating/opening database at: %s, %s";
    p_error = ppStmt;
    v22 = 22;
LABEL_25:
    _os_log_error_impl(&dword_22CA55000, v19, OS_LOG_TYPE_ERROR, v20, p_error, v22);
    goto LABEL_11;
  }

  if ((TI_IS_FILE_CLASS_C() & 1) == 0 && !TI_SET_PROTECTION_CLASS_C())
  {
    goto LABEL_11;
  }

  v14 = strlen(__s);
  v15 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x277CBECE8], __s, v14, 0);
  error.__r_.__value_.__r.__words[0] = 0;
  if (!CFURLSetResourcePropertyForKey(v15, *MEMORY[0x277CBF170], *MEMORY[0x277CBED28], &error))
  {
    remove(__s, v16);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *ppStmt = 136315138;
      *&ppStmt[4] = __s;
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "RejectionsDatabase: failed to set backup exclusion for database at: %s", ppStmt, 0xCu);
    }

    CFRelease(error.__r_.__value_.__l.__data_);
    CFRelease(v15);
    goto LABEL_11;
  }

  CFRelease(v15);
  v17 = ppDb;
  *ppStmt = 0;
  if (!sqlite3_prepare_v2(ppDb, "SELECT value FROM properties WHERE key = 'version'", -1, ppStmt, 0))
  {
    if (sqlite3_step(*ppStmt) == 100)
    {
      v18 = sqlite3_column_int(*ppStmt, 0);
      result = sqlite3_finalize(*ppStmt);
      if (v18 == 2)
      {
        goto LABEL_40;
      }
    }

    else
    {
      sqlite3_finalize(*ppStmt);
    }
  }

  file_path_for_bundle_resource = get_file_path_for_bundle_resource(a3, @"sql");
  if (!file_path_for_bundle_resource)
  {
    goto LABEL_11;
  }

  v24 = file_path_for_bundle_resource;
  v37[6] = 0;
  v25 = MEMORY[0x277D82858] + 24;
  v26 = MEMORY[0x277D82858] + 64;
  v37[0] = MEMORY[0x277D82858] + 64;
  v27 = MEMORY[0x277D82808];
  v28 = *(MEMORY[0x277D82808] + 16);
  *ppStmt = *(MEMORY[0x277D82808] + 8);
  *&ppStmt[*(*ppStmt - 24)] = v28;
  *&ppStmt[8] = 0;
  v29 = &ppStmt[*(*ppStmt - 24)];
  std::ios_base::init(v29, &ppStmt[16]);
  v29[1].__vftable = 0;
  v29[1].__fmtflags_ = -1;
  *ppStmt = v25;
  v37[0] = v26;
  MEMORY[0x2318BE010](&ppStmt[16]);
  if (!std::filebuf::open())
  {
    std::ios_base::clear(&ppStmt[*(*ppStmt - 24)], *&ppStmt[*(*ppStmt - 24) + 32] | 4);
  }

  std::string::__init_with_sentinel[abi:nn200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&error, *&ppStmt[*(*ppStmt - 24) + 40]);
  errmsg = 0;
  v30 = (error.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &error : error.__r_.__value_.__r.__words[0];
  v31 = sqlite3_exec(v17, v30, 0, 0, &errmsg);
  free(v24);
  if (SHIBYTE(error.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(error.__r_.__value_.__l.__data_);
  }

  *ppStmt = *v27;
  *&ppStmt[*(*ppStmt - 24)] = v27[3];
  MEMORY[0x2318BE020](&ppStmt[16]);
  std::istream::~istream();
  MEMORY[0x2318BE200](v37);
  if (v31)
  {
    goto LABEL_11;
  }

  *ppStmt = 0;
  if (sqlite3_prepare_v2(v17, "INSERT OR REPLACE INTO properties (key, value) VALUES ('version', ?)", -1, ppStmt, 0))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(error.__r_.__value_.__l.__data_) = 0;
    v19 = MEMORY[0x277D86220];
    v20 = "RejectionsDatabase: Unable to update library version.";
    p_error = &error;
    v22 = 2;
    goto LABEL_25;
  }

  sqlite3_bind_int(*ppStmt, 1, 2);
  sqlite3_step(*ppStmt);
  result = sqlite3_finalize(*ppStmt);
LABEL_40:
  v32 = ppDb;
  *this = ppDb;
  if (v32)
  {
    return std::string::__assign_external(v7, __s);
  }

  return result;
}

void std::string::__init_with_sentinel[abi:nn200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(std::string *this, void *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  while (a2)
  {
    v4 = a2[3];
    v5 = a2[4];
    if (v4 == v5)
    {
      if ((*(*a2 + 72))(a2) == -1)
      {
        return;
      }

      v4 = a2[3];
      v5 = a2[4];
    }

    if (v4 == v5)
    {
      v6 = (*(*a2 + 72))(a2);
    }

    else
    {
      v6 = *v4;
    }

    std::string::push_back(this, v6);
    v7 = a2[3];
    if (v7 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v7 + 1;
    }
  }
}

void TI::RejectionsDatabase::insert_rejection(TI *a1, sqlite3 *a2, const char *a3, double a4)
{
  if (!sqlite3_exec(a1, "BEGIN TRANSACTION", 0, 0, 0))
  {
    TI::insert_default_row(a1, a2, a3, "rejections", v8);
    std::ostringstream::basic_ostringstream[abi:nn200100](&v21);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "UPDATE ", 7);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "rejections", 10);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, " SET ", 5);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "hard", 4);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "_rejections = ", 14);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "hard", 4);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "_rejections + 1,", 16);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, " last_", 6);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "hard", 4);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "_rejection = :last_rejection_timestamp ", 39);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, " WHERE typed = :typed AND correction = :correction", 50);
    std::ostringstream::str[abi:nn200100](pStmt, &v21);
    v21 = *MEMORY[0x277D82828];
    *(&v21 + *(v21 - 3)) = *(MEMORY[0x277D82828] + 24);
    v22 = MEMORY[0x277D82878] + 16;
    if (v24 < 0)
    {
      operator delete(v23[7].__locale_);
    }

    v22 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v23);
    std::ostream::~ostream();
    MEMORY[0x2318BE200](&v25);
    v9 = v20;
    v10 = pStmt[0];
    if (v20 >= 0)
    {
      v11 = pStmt;
    }

    else
    {
      v11 = pStmt[0];
    }

    std::string::basic_string[abi:nn200100]<0>(&v21, v11);
    if (v9 < 0)
    {
      operator delete(v10);
    }

    pStmt[0] = 0;
    if (SHIBYTE(v23[0].__locale_) >= 0)
    {
      v12 = &v21;
    }

    else
    {
      v12 = v21;
    }

    if (sqlite3_prepare_v2(a1, v12, -1, pStmt, 0) || (v13 = pStmt[0], v14 = sqlite3_bind_parameter_index(pStmt[0], ":typed"), sqlite3_bind_text(v13, v14, a2, -1, 0), v15 = pStmt[0], v16 = sqlite3_bind_parameter_index(pStmt[0], ":correction"), sqlite3_bind_text(v15, v16, a3, -1, 0), v17 = pStmt[0], v18 = sqlite3_bind_parameter_index(pStmt[0], ":last_rejection_timestamp"), sqlite3_bind_double(v17, v18, a4), LODWORD(v17) = sqlite3_step(pStmt[0]), sqlite3_finalize(pStmt[0]), v17 == 101))
    {
      sqlite3_exec(a1, "COMMIT", 0, 0, 0);
    }

    if (SHIBYTE(v23[0].__locale_) < 0)
    {
      operator delete(v21);
    }
  }
}

void TI::insert_default_row(TI *this, sqlite3 *a2, const char *a3, const char *a4, const char *a5)
{
  v26[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&__p, "INSERT OR IGNORE INTO ");
  if ((v25 & 0x80u) == 0)
  {
    v9 = v25;
  }

  else
  {
    v9 = *v24;
  }

  v10 = strlen(a4);
  v11 = &v22;
  std::string::basic_string[abi:nn200100](&v22, v9 + v10);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v22.__r_.__value_.__r.__words[0];
  }

  if (v9)
  {
    if ((v25 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    memmove(v11, p_p, v9);
  }

  v13 = v11 + v9;
  if (v10)
  {
    memmove(v13, a4, v10);
  }

  v13[v10] = 0;
  v14 = std::string::append(&v22, " (typed, correction) VALUES (:typed, :correction)", 0x31uLL);
  v15 = v14->__r_.__value_.__r.__words[0];
  v26[0] = v14->__r_.__value_.__l.__size_;
  *(v26 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
  v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  __p = v15;
  *v24 = v26[0];
  *&v24[7] = *(v26 + 7);
  v25 = v16;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
    v16 = v25;
    v15 = __p;
  }

  v22.__r_.__value_.__r.__words[0] = 0;
  if ((v16 & 0x80u) == 0)
  {
    v17 = &__p;
  }

  else
  {
    v17 = v15;
  }

  if (!sqlite3_prepare_v2(this, v17, -1, &v22, 0))
  {
    v18 = v22.__r_.__value_.__r.__words[0];
    v19 = sqlite3_bind_parameter_index(v22.__r_.__value_.__l.__data_, ":typed");
    sqlite3_bind_text(v18, v19, a2, -1, 0);
    v20 = v22.__r_.__value_.__r.__words[0];
    v21 = sqlite3_bind_parameter_index(v22.__r_.__value_.__l.__data_, ":correction");
    sqlite3_bind_text(v20, v21, a3, -1, 0);
    sqlite3_step(v22.__r_.__value_.__l.__data_);
    sqlite3_finalize(v22.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(__p);
  }
}

uint64_t std::ostringstream::basic_ostringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 24;
  v3 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v4 = a1 + 8;
  v5 = *(MEMORY[0x277D82828] + 16);
  v6 = *(MEMORY[0x277D82828] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 8));
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *(a1 + 112) = v3;
  v8 = MEMORY[0x277D82868] + 16;
  *a1 = v2;
  *(a1 + 8) = v8;
  MEMORY[0x2318BE1C0](a1 + 16);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](v4);
  return a1;
}

const void *std::ostringstream::str[abi:nn200100](void *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:nn200100](a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  *(a1 + v5) = 0;
  return result;
}

void TI::RejectionsDatabase::insert_inline_completion_rejection(TI *a1, sqlite3 *a2, const char *a3, uint64_t a4, double a5)
{
  if (!sqlite3_exec(a1, "BEGIN TRANSACTION", 0, 0, 0))
  {
    TI::insert_default_row(a1, a2, a3, "inline_completion_rejections", v10);
    std::ostringstream::basic_ostringstream[abi:nn200100](&v29);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v29, "UPDATE ", 7);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v29, "inline_completion_rejections", 28);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v29, " SET ", 5);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v29, "hard", 4);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v29, "_rejections = ", 14);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v29, "hard", 4);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v29, "_rejections + ", 14);
    v11 = MEMORY[0x2318BE0A0](&v29, a4);
    v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ",", 1);
    v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, " last_", 6);
    v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, "hard", 4);
    v15 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, "_rejection = :last_rejection_timestamp,", 39);
    v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, " typed = :typed ", 16);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, " WHERE correction = :correction", 31);
    std::ostringstream::str[abi:nn200100](pStmt, &v29);
    v29 = *MEMORY[0x277D82828];
    *(&v29 + *(v29 - 3)) = *(MEMORY[0x277D82828] + 24);
    v30 = MEMORY[0x277D82878] + 16;
    if (v32 < 0)
    {
      operator delete(v31[7].__locale_);
    }

    v30 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v31);
    std::ostream::~ostream();
    MEMORY[0x2318BE200](&v33);
    v17 = v28;
    v18 = pStmt[0];
    if (v28 >= 0)
    {
      v19 = pStmt;
    }

    else
    {
      v19 = pStmt[0];
    }

    std::string::basic_string[abi:nn200100]<0>(&v29, v19);
    if (v17 < 0)
    {
      operator delete(v18);
    }

    pStmt[0] = 0;
    if (SHIBYTE(v31[0].__locale_) >= 0)
    {
      v20 = &v29;
    }

    else
    {
      v20 = v29;
    }

    if (sqlite3_prepare_v2(a1, v20, -1, pStmt, 0) || (v21 = pStmt[0], v22 = sqlite3_bind_parameter_index(pStmt[0], ":typed"), sqlite3_bind_text(v21, v22, a2, -1, 0), v23 = pStmt[0], v24 = sqlite3_bind_parameter_index(pStmt[0], ":correction"), sqlite3_bind_text(v23, v24, a3, -1, 0), v25 = pStmt[0], v26 = sqlite3_bind_parameter_index(pStmt[0], ":last_rejection_timestamp"), sqlite3_bind_double(v25, v26, a5), LODWORD(v25) = sqlite3_step(pStmt[0]), sqlite3_finalize(pStmt[0]), v25 == 101))
    {
      sqlite3_exec(a1, "COMMIT", 0, 0, 0);
    }

    if (SHIBYTE(v31[0].__locale_) < 0)
    {
      operator delete(v29);
    }
  }
}

void TI::RejectionsDatabase::insert_acceptance(sqlite3 *a1, const char *a2, const char *a3)
{
  if (!sqlite3_exec(a1, "BEGIN TRANSACTION", 0, 0, 0))
  {
    std::ostringstream::basic_ostringstream[abi:nn200100](&ppStmt);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&ppStmt, "UPDATE ", 7);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&ppStmt, "rejections", 10);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&ppStmt, " SET performed_count = performed_count + 1, ", 44);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&ppStmt, " hard_rejections = 0 ", 21);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&ppStmt, " WHERE typed = :typed AND correction = :correction", 50);
    std::ostringstream::str[abi:nn200100](v12, &ppStmt);
    ppStmt = *MEMORY[0x277D82828];
    *(&ppStmt + *(ppStmt - 3)) = *(MEMORY[0x277D82828] + 24);
    v15 = MEMORY[0x277D82878] + 16;
    if (v17 < 0)
    {
      operator delete(v16[7].__locale_);
    }

    v15 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v16);
    std::ostream::~ostream();
    MEMORY[0x2318BE200](&v18);
    ppStmt = 0;
    if (v13 >= 0)
    {
      v6 = v12;
    }

    else
    {
      v6 = v12[0];
    }

    if (sqlite3_prepare_v2(a1, v6, -1, &ppStmt, 0) || (v7 = ppStmt, v8 = sqlite3_bind_parameter_index(ppStmt, ":typed"), sqlite3_bind_text(v7, v8, a2, -1, 0), v9 = ppStmt, v10 = sqlite3_bind_parameter_index(ppStmt, ":correction"), sqlite3_bind_text(v9, v10, a3, -1, 0), v11 = sqlite3_step(ppStmt), sqlite3_finalize(ppStmt), v11 == 101))
    {
      sqlite3_exec(a1, "COMMIT", 0, 0, 0);
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }
  }
}

void TI::memory_for_db_path(uint64_t *a1, uint64_t a2, int a3)
{
  {
    TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map = 0u;
    *&qword_280FAC310 = 0u;
    dword_280FAC320 = 1065353216;
    __cxa_atexit(std::unordered_map<std::string,std::shared_ptr<TI::ShortMemory>>::~unordered_map[abi:nn200100], &TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map, &dword_22CA55000);
  }

  {
    __cxa_atexit(MEMORY[0x277D82690], &TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map_mutex, &dword_22CA55000);
  }

  std::mutex::lock(&TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map_mutex);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v7, v8);
  v10 = v9;
  v11 = *(&TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map + 1);
  if (a3 != 1)
  {
    if (!*(&TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map + 1))
    {
      goto LABEL_45;
    }

    v15 = vcnt_s8(*(&TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map + 8));
    v15.i16[0] = vaddlv_u8(v15);
    v16 = v15.u32[0];
    if (v15.u32[0] > 1uLL)
    {
      v17 = v9;
      if (v9 >= *(&TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map + 1))
      {
        v17 = v9 % *(&TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map + 1);
      }
    }

    else
    {
      v17 = (*(&TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map + 1) - 1) & v9;
    }

    v23 = *(TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map + 8 * v17);
    if (!v23 || (v24 = *v23) == 0)
    {
LABEL_45:
      operator new();
    }

    while (1)
    {
      v25 = v24[1];
      if (v25 == v10)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v24 + 2, a2))
        {
          v26 = v24[5];
          if (!v26)
          {
            operator new();
          }

          *a1 = v26;
          v27 = v24[6];
          a1[1] = v27;
          if (v27)
          {
            atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
          }

          goto LABEL_78;
        }
      }

      else
      {
        if (v16 > 1)
        {
          if (v25 >= v11)
          {
            v25 %= v11;
          }
        }

        else
        {
          v25 &= v11 - 1;
        }

        if (v25 != v17)
        {
          goto LABEL_45;
        }
      }

      v24 = *v24;
      if (!v24)
      {
        goto LABEL_45;
      }
    }
  }

  if (*(&TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map + 1))
  {
    v12 = vcnt_s8(*(&TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map + 8));
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v14 = v9;
      if (v9 >= *(&TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map + 1))
      {
        v14 = v9 % *(&TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map + 1);
      }
    }

    else
    {
      v14 = (*(&TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map + 1) - 1) & v9;
    }

    v18 = TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map;
    v19 = *(TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map + 8 * v14);
    if (v19)
    {
      v20 = *v19;
      if (*v19)
      {
        v21 = *(&TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map + 1) - 1;
        do
        {
          v22 = *(v20 + 1);
          if (v22 == v10)
          {
            if (std::equal_to<std::string>::operator()[abi:nn200100](v20 + 2, a2))
            {
              v28 = *(v20 + 1);
              if (v13 > 1)
              {
                if (v28 >= v11)
                {
                  v28 %= v11;
                }
              }

              else
              {
                v28 &= v21;
              }

              v29 = *(v18 + 8 * v28);
              do
              {
                v30 = v29;
                v29 = *v29;
              }

              while (v29 != v20);
              if (v30 == &qword_280FAC310)
              {
                goto LABEL_67;
              }

              v31 = v30[1];
              if (v13 > 1)
              {
                if (v31 >= v11)
                {
                  v31 %= v11;
                }
              }

              else
              {
                v31 &= v21;
              }

              if (v31 != v28)
              {
LABEL_67:
                if (!*v20)
                {
                  goto LABEL_68;
                }

                v32 = *(*v20 + 8);
                if (v13 > 1)
                {
                  if (v32 >= v11)
                  {
                    v32 %= v11;
                  }
                }

                else
                {
                  v32 &= v21;
                }

                if (v32 != v28)
                {
LABEL_68:
                  *(v18 + 8 * v28) = 0;
                }
              }

              v33 = *v20;
              if (*v20)
              {
                v34 = *(v33 + 8);
                if (v13 > 1)
                {
                  if (v34 >= v11)
                  {
                    v34 %= v11;
                  }
                }

                else
                {
                  v34 &= v21;
                }

                if (v34 != v28)
                {
                  *(TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map + 8 * v34) = v30;
                  v33 = *v20;
                }
              }

              *v30 = v33;
              *v20 = 0;
              --qword_280FAC318;
              v35[0] = v20;
              v35[1] = &TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map;
              LOBYTE(v36) = 1;
              memset(&v36 + 1, 0, 7);
              std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<TI::ShortMemory>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<TI::ShortMemory>>,void *>>>>::~unique_ptr[abi:nn200100](v35);
              break;
            }
          }

          else
          {
            if (v13 > 1)
            {
              if (v22 >= v11)
              {
                v22 %= v11;
              }
            }

            else
            {
              v22 &= v21;
            }

            if (v22 != v14)
            {
              break;
            }
          }

          v20 = *v20;
        }

        while (v20);
      }
    }
  }

  *a1 = 0;
  a1[1] = 0;
LABEL_78:
  std::mutex::unlock(&TI::memory_for_db_path(std::string const&,TI::MemoryAccessMode)::map_mutex);
}

void std::__shared_ptr_emplace<TI::ShortMemory>::__on_zero_shared(uint64_t a1)
{
  std::mutex::~mutex((a1 + 424));
  v2 = a1 + 352;
  v3 = -192;
  do
  {
    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    v2 -= 64;
    v3 += 64;
  }

  while (v3);
  v4 = a1 + 152;
  v5 = -192;
  do
  {
    if (*(v4 + 47) < 0)
    {
      operator delete(*(v4 + 24));
    }

    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    v4 -= 64;
    v5 += 64;
  }

  while (v5);
}

void std::__shared_ptr_emplace<TI::ShortMemory>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDA5B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<TI::ShortMemory>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<TI::ShortMemory>>,void *>>>>::~unique_ptr[abi:nn200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::shared_ptr<TI::ShortMemory>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::shared_ptr<TI::ShortMemory>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::unordered_map<std::string,std::shared_ptr<TI::ShortMemory>>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::shared_ptr<TI::ShortMemory>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void TI::RejectionsDatabase::soft_add_deleted(uint64_t a1, uint64_t a2, double a3)
{
  v42[2] = *MEMORY[0x277D85DE8];
  TI::memory_for_db_path(&v37, a1 + 8, 0);
  v5 = v37;
  std::mutex::lock((v37 + 400));
  v6 = v5 + 200;
  v7 = *(v5 + 392);
  if (v7 >= 3)
  {
    v8 = 0;
    v9 = (v5 + 312);
    for (i = 1; i != v7; ++i)
    {
      v11 = *v9;
      v9 += 8;
      if (v11 < *(v6 + (v8 << 6) + 48))
      {
        v8 = i;
      }
    }
  }

  else
  {
    *(v5 + 392) = v7 + 1;
    v8 = v7;
  }

  v12 = v6 + (v8 << 6);
  std::string::operator=((v12 + 24), a2);
  *(v12 + 56) = 0;
  *(v12 + 48) = a3;
  v13 = *(v5 + 192);
  if (v13 < 1)
  {
LABEL_23:
    std::string::operator=(v12, a2);
  }

  else
  {
    v14 = 0;
    v15 = *(a2 + 23);
    if (v15 >= 0)
    {
      v16 = *(a2 + 23);
    }

    else
    {
      v16 = *(a2 + 8);
    }

    if (v15 >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    v18 = v5 + 24;
    while (1)
    {
      v19 = *(v18 + 23);
      v20 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(v18 + 8);
      }

      if (v19 == v16)
      {
        v21 = v20 >= 0 ? v18 : *v18;
        if (!memcmp(v21, v17, v16))
        {
          break;
        }
      }

      ++v14;
      v18 += 64;
      if (v13 == v14)
      {
        goto LABEL_23;
      }
    }

    std::string::operator=(v12, (v18 - 24));
    v22 = *(v5 + 192);
    v23 = v5 + (v14 << 6);
    v24 = *v23;
    v42[0] = *(v23 + 8);
    v25 = v5 + (v22 << 6);
    *(v42 + 7) = *(v23 + 15);
    v26 = *(v23 + 23);
    *v23 = 0;
    *(v23 + 8) = 0;
    v27 = *(v23 + 24);
    v41[0] = *(v23 + 32);
    *(v41 + 7) = *(v23 + 39);
    v28 = *(v23 + 47);
    *(v23 + 32) = 0;
    *(v23 + 40) = 0;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    v29 = *(v23 + 48);
    v40 = *(v23 + 56);
    v39 = v29;
    v30 = *(v25 - 64);
    *(v23 + 16) = *(v25 - 48);
    v31 = *(v25 - 24);
    v32 = *(v25 - 16);
    *(v23 + 56) = *(v25 - 8);
    *v23 = v30;
    *(v23 + 24) = *(v25 - 40);
    *(v23 + 40) = v31;
    *(v23 + 48) = v32;
    *(v25 - 49) = *(v42 + 7);
    v33 = v42[0];
    *(v25 - 64) = v24;
    *(v25 - 56) = v33;
    *(v25 - 41) = v26;
    LODWORD(v33) = *(v5 + 192);
    v34 = v41[0];
    *(v25 - 25) = *(v41 + 7);
    *(v25 - 40) = v27;
    *(v25 - 32) = v34;
    *(v25 - 17) = v28;
    v35 = v39;
    *(v25 - 8) = v40;
    *(v25 - 16) = v35;
    *(v5 + 192) = v33 - 1;
  }

  std::mutex::unlock((v5 + 400));
  v36 = v38;
  if (v38)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  }
}

uint64_t TI::RejectionsDatabase::soft_should_block(uint64_t a1, void **a2, void ***a3, int a4, double a5)
{
  TI::memory_for_db_path(&v40, a1 + 8, 0);
  v9 = v40;
  std::mutex::lock((v40 + 400));
  v10 = *(v9 + 392);
  v11 = 126 - 2 * __clz(v10);
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,TI::ShortMemory::WordRecord *,false>(v9 + 200, (v9 + 200 + (v10 << 6)), v12, 1);
  v13 = *(v9 + 392);
  if (v13)
  {
    v14 = (v9 + (v13 << 6) + 184);
    while (a5 - *v14 > 120.0)
    {
      *(v9 + 392) = v13 - 1;
      v14 -= 8;
      if (!--v13)
      {
        goto LABEL_61;
      }
    }

    if (v13 >= 1)
    {
      v15 = 0;
      v16 = *(a3 + 23);
      v17 = v16 < 0;
      if (v16 < 0)
      {
        v16 = a3[1];
      }

      __n = v16;
      if (v17)
      {
        v18 = *a3;
      }

      else
      {
        v18 = a3;
      }

      __s2 = v18;
      v19 = *(a2 + 23);
      if (v19 >= 0)
      {
        v20 = *(a2 + 23);
      }

      else
      {
        v20 = a2[1];
      }

      if (v19 >= 0)
      {
        v21 = a2;
      }

      else
      {
        v21 = *a2;
      }

      v36 = v21;
      v37 = v20;
      v22 = v13 + 1;
      v23 = v9 + (v13 << 6) + 136;
      while (1)
      {
        if (*(v23 + 56) < a4)
        {
          v24 = (v23 + 24);
          v25 = *(v23 + 47);
          if (v25 >= 0)
          {
            v26 = *(v23 + 47);
          }

          else
          {
            v26 = *(v23 + 32);
          }

          if (v26 == __n && (v25 >= 0 ? (v27 = (v23 + 24)) : (v27 = *v24), !memcmp(v27, __s2, __n)))
          {
            v15 = 1;
          }

          else
          {
            v38 = v15;
            v28 = *(v23 + 23);
            if (v28 >= 0)
            {
              v29 = *(v23 + 23);
            }

            else
            {
              v29 = *(v23 + 8);
            }

            if (v29 == v26)
            {
              if (v28 >= 0)
              {
                v30 = v23;
              }

              else
              {
                v30 = *v23;
              }

              if (v25 >= 0)
              {
                v31 = (v23 + 24);
              }

              else
              {
                v31 = *(v23 + 24);
              }

              if (!memcmp(v30, v31, v26) || v26 != v20)
              {
LABEL_51:
                v20 = v37;
                if (v26 == v37)
                {
                  if (v25 >= 0)
                  {
                    v33 = (v23 + 24);
                  }

                  else
                  {
                    v33 = *v24;
                  }

                  v15 = (memcmp(v33, v36, v37) != 0) & v38;
                }

                else
                {
                  v15 = v38;
                }

                goto LABEL_59;
              }
            }

            else
            {
              if (v29 != v20)
              {
                goto LABEL_51;
              }

              if (v28 >= 0)
              {
                v30 = v23;
              }

              else
              {
                v30 = *v23;
              }
            }

            if (memcmp(v30, v36, v29))
            {
              goto LABEL_51;
            }

            v15 = 1;
            v20 = v37;
          }
        }

LABEL_59:
        --v22;
        v23 -= 64;
        if (v22 <= 1)
        {
          goto LABEL_62;
        }
      }
    }
  }

LABEL_61:
  LOBYTE(v15) = 0;
LABEL_62:
  std::mutex::unlock((v9 + 400));
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  }

  return v15 & 1;
}

void std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,TI::ShortMemory::WordRecord *,false>(unint64_t a1, double *a2, uint64_t a3, char a4)
{
LABEL_1:
  v165 = a1;
LABEL_2:
  v7 = v165;
  while (1)
  {
    v8 = (a2 - v7) >> 6;
    v9 = v8 - 2;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3uLL:
          v82 = *(v7 + 112);
          v83 = *(a2 - 2);
          if (v82 > *(v7 + 48))
          {
            if (v83 <= v82)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(v7, (v7 + 64));
              if (*(a2 - 2) <= *(v7 + 112))
              {
                return;
              }

              v79 = (v7 + 64);
            }

            else
            {
              v79 = v7;
            }

            v78 = (a2 - 8);
            goto LABEL_249;
          }

          if (v83 <= v82)
          {
            return;
          }

          v80 = (v7 + 64);
          v81 = (a2 - 8);
          goto LABEL_228;
        case 4uLL:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<void> &,TI::ShortMemory::WordRecord *,0>(v7, v7 + 64, v7 + 128, (a2 - 8));
          return;
        case 5uLL:
          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<void> &,TI::ShortMemory::WordRecord *,0>(v7, v7 + 64, v7 + 128, v7 + 192);
          if (*(a2 - 2) <= *(v7 + 240))
          {
            return;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>((v7 + 192), a2 - 4);
          if (*(v7 + 240) <= *(v7 + 176))
          {
            return;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>((v7 + 128), (v7 + 192));
          if (*(v7 + 176) <= *(v7 + 112))
          {
            return;
          }

          v80 = (v7 + 64);
          v81 = (v7 + 128);
LABEL_228:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(v80, v81);
          if (*(v7 + 112) <= *(v7 + 48))
          {
            return;
          }

          v78 = (v7 + 64);
          v79 = v7;
          goto LABEL_249;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        if (*(a2 - 2) <= *(v7 + 48))
        {
          return;
        }

        v78 = (a2 - 8);
        v79 = v165;
LABEL_249:

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(v79, v78);
        return;
      }
    }

    if (v8 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v7 != a2)
      {
        v104 = v9 >> 1;
        v105 = v9 >> 1;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = v7 + (v107 << 6);
            if (2 * v106 + 2 < v8 && *(v108 + 48) > *(v108 + 112))
            {
              v108 += 64;
              v107 = 2 * v106 + 2;
            }

            v109 = v7 + (v106 << 6);
            v110 = *(v109 + 48);
            if (*(v108 + 48) <= v110)
            {
              v168 = *v109;
              *&v196[7] = *(v109 + 15);
              *v196 = *(v109 + 8);
              v111 = *(v109 + 23);
              *v109 = 0;
              *(v109 + 8) = 0;
              v171 = *(v109 + 24);
              *v189 = *(v109 + 32);
              *&v189[7] = *(v109 + 39);
              v175 = *(v109 + 47);
              *(v109 + 16) = 0;
              *(v109 + 24) = 0;
              *(v109 + 32) = 0;
              *(v109 + 40) = 0;
              v112 = *(v109 + 56);
              do
              {
                v113 = v109;
                v109 = v108;
                if (*(v113 + 23) < 0)
                {
                  operator delete(*v113);
                }

                v114 = *v109;
                *(v113 + 16) = *(v109 + 16);
                *v113 = v114;
                *(v109 + 23) = 0;
                *v109 = 0;
                if (*(v113 + 47) < 0)
                {
                  operator delete(*(v113 + 24));
                }

                v115 = *(v109 + 24);
                *(v113 + 40) = *(v109 + 40);
                *(v113 + 24) = v115;
                *(v109 + 47) = 0;
                *(v109 + 24) = 0;
                v116 = *(v109 + 48);
                *(v113 + 56) = *(v109 + 56);
                *(v113 + 48) = v116;
                if (v104 < v107)
                {
                  break;
                }

                v117 = 2 * v107;
                v107 = (2 * v107) | 1;
                v108 = v7 + (v107 << 6);
                v118 = v117 + 2;
                if (v118 < v8 && *(v108 + 48) > *(v108 + 112))
                {
                  v108 += 64;
                  v107 = v118;
                }
              }

              while (*(v108 + 48) <= v110);
              if (*(v109 + 23) < 0)
              {
                operator delete(*v109);
              }

              *v109 = v168;
              *(v109 + 8) = *v196;
              *(v109 + 15) = *&v196[7];
              *(v109 + 23) = v111;
              if (*(v109 + 47) < 0)
              {
                operator delete(*(v109 + 24));
              }

              *(v109 + 24) = v171;
              *(v109 + 32) = *v189;
              *(v109 + 39) = *&v189[7];
              *(v109 + 47) = v175;
              *(v109 + 48) = v110;
              *(v109 + 56) = v112;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        do
        {
          if (v8 >= 2)
          {
            v119 = 0;
            v120 = *v7;
            *v183 = *(v7 + 8);
            *&v183[7] = *(v7 + 15);
            v121 = *(v7 + 23);
            *v7 = 0;
            *(v7 + 8) = 0;
            v172 = *(v7 + 24);
            *v181 = *(v7 + 32);
            *&v181[7] = *(v7 + 39);
            v176 = *(v7 + 47);
            *(v7 + 32) = 0;
            *(v7 + 40) = 0;
            v122 = *(v7 + 56);
            *(v7 + 16) = 0;
            *(v7 + 24) = 0;
            v180 = v122;
            v179 = *(v7 + 48);
            v123 = v7;
            do
            {
              v124 = v123 + (v119 << 6);
              v125 = v124 + 64;
              if (2 * v119 + 2 >= v8)
              {
                v119 = (2 * v119) | 1;
              }

              else
              {
                v126 = *(v124 + 112);
                v127 = *(v124 + 176);
                v128 = v124 + 128;
                if (v126 <= v127)
                {
                  v119 = (2 * v119) | 1;
                }

                else
                {
                  v125 = v128;
                  v119 = 2 * v119 + 2;
                }
              }

              if (*(v123 + 23) < 0)
              {
                operator delete(*v123);
              }

              v129 = *v125;
              *(v123 + 16) = *(v125 + 16);
              *v123 = v129;
              *(v125 + 23) = 0;
              *v125 = 0;
              if (*(v123 + 47) < 0)
              {
                operator delete(*(v123 + 24));
              }

              v130 = *(v125 + 24);
              *(v123 + 40) = *(v125 + 40);
              *(v123 + 24) = v130;
              v132 = (v125 + 48);
              v131 = *(v125 + 48);
              *(v125 + 47) = 0;
              *(v125 + 24) = 0;
              *(v123 + 56) = *(v125 + 56);
              *(v123 + 48) = v131;
              v123 = v125;
            }

            while (v119 <= ((v8 - 2) >> 1));
            v133 = (a2 - 8);
            v134 = *(v125 + 23);
            if (v125 == a2 - 8)
            {
              if (v134 < 0)
              {
                operator delete(*v125);
              }

              *v125 = v120;
              *(v125 + 8) = *v183;
              *(v125 + 15) = *&v183[7];
              *(v125 + 23) = v121;
              if (*(v125 + 47) < 0)
              {
                operator delete(*(v125 + 24));
              }

              *(v125 + 24) = v172;
              *(v125 + 32) = *v181;
              *(v125 + 39) = *&v181[7];
              *(v125 + 47) = v176;
              *v132 = v179;
              *(v125 + 56) = v180;
            }

            else
            {
              if (v134 < 0)
              {
                operator delete(*v125);
              }

              v135 = *v133;
              *(v125 + 16) = *(a2 - 6);
              *v125 = v135;
              *(a2 - 41) = 0;
              *(a2 - 64) = 0;
              if (*(v125 + 47) < 0)
              {
                operator delete(*(v125 + 24));
              }

              v136 = *(a2 - 5);
              *(v125 + 40) = *(a2 - 3);
              *(v125 + 24) = v136;
              v137 = *(a2 - 2);
              *(a2 - 17) = 0;
              *(a2 - 40) = 0;
              *(v125 + 56) = *(a2 - 2);
              *v132 = v137;
              if (*(a2 - 41) < 0)
              {
                operator delete(*v133);
              }

              *(a2 - 8) = v120;
              *(a2 - 49) = *&v183[7];
              *(a2 - 7) = *v183;
              *(a2 - 41) = v121;
              if (*(a2 - 17) < 0)
              {
                operator delete(*(a2 - 5));
              }

              *(a2 - 5) = v172;
              *(a2 - 25) = *&v181[7];
              *(a2 - 4) = *v181;
              *(a2 - 17) = v176;
              *(a2 - 2) = v180;
              *(a2 - 2) = v179;
              v138 = (v125 + 64 - v7) >> 6;
              v139 = v138 < 2;
              v140 = v138 - 2;
              if (!v139)
              {
                v141 = v140 >> 1;
                v142 = v7 + (v140 >> 1 << 6);
                v143 = *v132;
                if (*(v142 + 48) > *v132)
                {
                  v144 = *v125;
                  *v197 = *(v125 + 8);
                  *&v197[7] = *(v125 + 15);
                  v145 = *(v125 + 23);
                  *v125 = 0;
                  *(v125 + 8) = 0;
                  *&v190[7] = *(v125 + 39);
                  v146 = *(v125 + 24);
                  *v190 = *(v125 + 32);
                  v177 = *(v125 + 47);
                  *(v125 + 32) = 0;
                  *(v125 + 40) = 0;
                  *(v125 + 16) = 0;
                  *(v125 + 24) = 0;
                  v147 = *(v125 + 56);
                  do
                  {
                    v148 = v142;
                    if (*(v125 + 23) < 0)
                    {
                      operator delete(*v125);
                    }

                    v149 = *v148;
                    *(v125 + 16) = *(v148 + 16);
                    *v125 = v149;
                    *(v148 + 23) = 0;
                    *v148 = 0;
                    if (*(v125 + 47) < 0)
                    {
                      operator delete(*(v125 + 24));
                    }

                    v150 = *(v148 + 24);
                    *(v125 + 40) = *(v148 + 40);
                    *(v125 + 24) = v150;
                    *(v148 + 47) = 0;
                    *(v148 + 24) = 0;
                    v151 = *(v148 + 48);
                    *(v125 + 56) = *(v148 + 56);
                    *(v125 + 48) = v151;
                    if (!v141)
                    {
                      break;
                    }

                    v141 = (v141 - 1) >> 1;
                    v142 = v7 + (v141 << 6);
                    v125 = v148;
                  }

                  while (*(v142 + 48) > v143);
                  if (*(v148 + 23) < 0)
                  {
                    operator delete(*v148);
                  }

                  *v148 = v144;
                  *(v148 + 8) = *v197;
                  *(v148 + 15) = *&v197[7];
                  *(v148 + 23) = v145;
                  if (*(v148 + 47) < 0)
                  {
                    operator delete(*(v148 + 24));
                  }

                  *(v148 + 24) = v146;
                  *(v148 + 32) = *v190;
                  *(v148 + 39) = *&v190[7];
                  *(v148 + 47) = v177;
                  *(v148 + 48) = v143;
                  *(v148 + 56) = v147;
                }
              }
            }
          }

          a2 -= 8;
          v139 = v8-- > 2;
        }

        while (v139);
      }

      return;
    }

    v10 = v7 + (v8 >> 1 << 6);
    v11 = *(a2 - 2);
    if (v8 >= 0x81)
    {
      v12 = (v10 + 48);
      v13 = *(v10 + 48);
      v14 = (v7 + 48);
      if (v13 <= *(v7 + 48))
      {
        if (v11 > v13)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>((v7 + (v8 >> 1 << 6)), a2 - 4);
          if (*(v10 + 48) > *v14)
          {
            v15 = v7;
            v16 = (v7 + (v8 >> 1 << 6));
            goto LABEL_26;
          }
        }
      }

      else
      {
        v15 = v7;
        if (v11 > v13)
        {
          goto LABEL_17;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(v7, (v7 + (v8 >> 1 << 6)));
        if (*(a2 - 2) > *(v10 + 48))
        {
          v15 = (v7 + (v8 >> 1 << 6));
LABEL_17:
          v16 = (a2 - 8);
LABEL_26:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(v15, v16);
        }
      }

      v20 = *(v10 - 16);
      v21 = *(a2 - 10);
      if (v20 <= *(v7 + 112))
      {
        if (v21 > v20)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>((v10 - 64), a2 - 8);
          if (*(v10 - 16) > *(v7 + 112))
          {
            v22 = (v7 + 64);
            v23 = (v10 - 64);
            goto LABEL_39;
          }
        }
      }

      else
      {
        v22 = (v7 + 64);
        if (v21 > v20)
        {
          goto LABEL_31;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(v22, (v10 - 64));
        if (*(a2 - 10) > *(v10 - 16))
        {
          v22 = (v10 - 64);
LABEL_31:
          v23 = (a2 - 16);
LABEL_39:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(v22, v23);
        }
      }

      v24 = *(v10 + 112);
      v25 = *(a2 - 18);
      if (v24 <= *(v7 + 176))
      {
        if (v25 > v24)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>((v10 + 64), a2 - 12);
          if (*(v10 + 112) > *(v7 + 176))
          {
            v26 = (v7 + 128);
            v27 = (v10 + 64);
            goto LABEL_48;
          }
        }
      }

      else
      {
        v26 = (v7 + 128);
        if (v25 > v24)
        {
          goto LABEL_44;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(v26, (v10 + 64));
        if (*(a2 - 18) > *(v10 + 112))
        {
          v26 = (v10 + 64);
LABEL_44:
          v27 = (a2 - 24);
LABEL_48:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(v26, v27);
        }
      }

      v28 = *v12;
      v29 = *(v10 + 112);
      if (*v12 <= *(v10 - 16))
      {
        if (v29 > v28)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(v10, (v10 + 64));
          if (*(v10 + 48) > *(v10 - 16))
          {
            v31 = (v10 - 64);
            v30 = (v7 + (v8 >> 1 << 6));
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (v29 > v28)
        {
          v30 = (v10 + 64);
          v31 = (v10 - 64);
          goto LABEL_57;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>((v10 - 64), v10);
        if (*(v10 + 112) > *(v10 + 48))
        {
          v30 = (v10 + 64);
          v31 = (v7 + (v8 >> 1 << 6));
LABEL_57:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(v31, v30);
        }
      }

      v32 = *v7;
      *&v192 = *(v7 + 8);
      *(&v192 + 7) = *(v7 + 15);
      v33 = *(v7 + 23);
      *v7 = 0;
      *(v7 + 8) = 0;
      v34 = *(v7 + 24);
      *&v185 = *(v7 + 32);
      *(&v185 + 7) = *(v7 + 39);
      v35 = *(v7 + 47);
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v184 = *(v7 + 56);
      v182 = *v14;
      v36 = *v10;
      *(v7 + 16) = *(v10 + 16);
      *v7 = v36;
      *(v10 + 23) = 0;
      v37 = *(v10 + 24);
      *(v7 + 40) = *(v10 + 40);
      *(v7 + 24) = v37;
      *(v10 + 47) = 0;
      *(v10 + 24) = 0;
      v38 = *v12;
      *(v7 + 56) = *(v10 + 56);
      *v14 = v38;
      *v10 = v32;
      *(v10 + 15) = *(&v192 + 7);
      *(v10 + 8) = v192;
      *(v10 + 23) = v33;
      *(v10 + 24) = v34;
      *(v10 + 39) = *(&v185 + 7);
      *(v10 + 32) = v185;
      *(v10 + 47) = v35;
      *(v10 + 56) = v184;
      v7 = v165;
      *v12 = v182;
      goto LABEL_59;
    }

    v17 = *(v7 + 48);
    if (v17 > *(v10 + 48))
    {
      v18 = (v7 + (v8 >> 1 << 6));
      if (v11 <= v17)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(v18, v7);
        if (*(a2 - 2) <= *(v7 + 48))
        {
          goto LABEL_59;
        }

        v18 = v7;
      }

      v19 = (a2 - 8);
      goto LABEL_35;
    }

    if (v11 > v17)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(v7, a2 - 4);
      if (*(v7 + 48) > *(v10 + 48))
      {
        v18 = (v7 + (v8 >> 1 << 6));
        v19 = v7;
LABEL_35:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(v18, v19);
      }
    }

LABEL_59:
    v173 = a3 - 1;
    if (a4)
    {
      v39 = *(v7 + 48);
    }

    else
    {
      v39 = *(v7 + 48);
      if (*(v7 - 16) <= v39)
      {
        v59 = *v7;
        *v194 = *(v7 + 8);
        *&v194[7] = *(v7 + 15);
        v60 = *(v7 + 23);
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        v61 = (v7 + 24);
        v62 = *(v7 + 24);
        *&v187[7] = *(v7 + 39);
        *v187 = *(v7 + 32);
        v63 = *(v7 + 47);
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        if (v39 <= *(a2 - 2))
        {
          v66 = v7 + 64;
          do
          {
            a1 = v66;
            if (v66 >= a2)
            {
              break;
            }

            v67 = *(v66 + 48);
            v66 += 64;
          }

          while (v39 <= v67);
        }

        else
        {
          v64 = v7;
          do
          {
            a1 = v64 + 64;
            v65 = *(v64 + 112);
            v64 += 64;
          }

          while (v39 <= v65);
        }

        v68 = a2;
        if (a1 < a2)
        {
          v69 = a2;
          do
          {
            v68 = (v69 - 8);
            v70 = *(v69 - 2);
            v69 -= 8;
          }

          while (v39 > v70);
        }

        v71 = *(v7 + 56);
        while (a1 < v68)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(a1, v68);
          do
          {
            v72 = *(a1 + 112);
            a1 += 64;
          }

          while (v39 <= v72);
          do
          {
            v73 = *(v68 - 2);
            v68 -= 4;
          }

          while (v39 > v73);
        }

        v74 = (a1 - 64);
        if (a1 - 64 != v7)
        {
          if (*(v7 + 23) < 0)
          {
            operator delete(*v7);
          }

          v75 = *v74;
          *(v7 + 16) = *(a1 - 48);
          *v7 = v75;
          *(a1 - 41) = 0;
          *(a1 - 64) = 0;
          if (*(v7 + 47) < 0)
          {
            operator delete(*v61);
          }

          v76 = *(a1 - 40);
          *(v7 + 40) = *(a1 - 24);
          *v61 = v76;
          *(a1 - 17) = 0;
          *(a1 - 40) = 0;
          v77 = *(a1 - 16);
          *(v7 + 56) = *(a1 - 8);
          *(v7 + 48) = v77;
        }

        if (*(a1 - 41) < 0)
        {
          operator delete(*v74);
        }

        *(a1 - 64) = v59;
        *(a1 - 49) = *&v194[7];
        *(a1 - 56) = *v194;
        *(a1 - 41) = v60;
        if (*(a1 - 17) < 0)
        {
          operator delete(*(a1 - 40));
        }

        a4 = 0;
        *(a1 - 40) = v62;
        *(a1 - 25) = *&v187[7];
        *(a1 - 32) = *v187;
        *(a1 - 17) = v63;
        *(a1 - 16) = v39;
        *(a1 - 8) = v71;
        a3 = v173;
        goto LABEL_1;
      }
    }

    v40 = *v7;
    *v193 = *(v7 + 8);
    *&v193[7] = *(v7 + 15);
    v41 = *(v7 + 23);
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    v42 = (v7 + 24);
    v169 = *(v7 + 24);
    *&v186[7] = *(v7 + 39);
    *v186 = *(v7 + 32);
    v167 = *(v7 + 47);
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    v43 = v7;
    v44 = *(v7 + 56);
    do
    {
      v45 = v43;
      v43 += 64;
    }

    while (*(v45 + 112) > v39);
    v46 = a2;
    if (v45 == v7)
    {
      v49 = a2;
      while (v43 < v49)
      {
        v47 = v49 - 8;
        v50 = *(v49 - 2);
        v49 -= 8;
        if (v50 > v39)
        {
          goto LABEL_72;
        }
      }

      v47 = v49;
    }

    else
    {
      do
      {
        v47 = v46 - 8;
        v48 = *(v46 - 2);
        v46 -= 8;
      }

      while (v48 <= v39);
    }

LABEL_72:
    if (v43 >= v47)
    {
      a1 = v43;
    }

    else
    {
      v51 = v47;
      a1 = v43;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(a1, v51);
        do
        {
          v52 = *(a1 + 112);
          a1 += 64;
        }

        while (v52 > v39);
        do
        {
          v53 = *(v51 - 2);
          v51 -= 4;
        }

        while (v53 <= v39);
      }

      while (a1 < v51);
    }

    v54 = (a1 - 64);
    if (a1 - 64 != v7)
    {
      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v55 = *v54;
      *(v7 + 16) = *(a1 - 48);
      *v7 = v55;
      *(a1 - 41) = 0;
      *(a1 - 64) = 0;
      if (*(v7 + 47) < 0)
      {
        operator delete(*v42);
      }

      v56 = *(a1 - 40);
      *(v7 + 40) = *(a1 - 24);
      *v42 = v56;
      *(a1 - 17) = 0;
      *(a1 - 40) = 0;
      v57 = *(a1 - 16);
      *(v7 + 56) = *(a1 - 8);
      *(v7 + 48) = v57;
    }

    if (*(a1 - 41) < 0)
    {
      operator delete(*v54);
    }

    *(a1 - 64) = v40;
    *(a1 - 49) = *&v193[7];
    *(a1 - 56) = *v193;
    *(a1 - 41) = v41;
    if (*(a1 - 17) < 0)
    {
      operator delete(*(a1 - 40));
    }

    *(a1 - 40) = v169;
    *(a1 - 25) = *&v186[7];
    *(a1 - 32) = *v186;
    *(a1 - 17) = v167;
    *(a1 - 16) = v39;
    *(a1 - 8) = v44;
    a3 = v173;
    if (v43 < v47)
    {
      goto LABEL_95;
    }

    v58 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<void> &,TI::ShortMemory::WordRecord *>(v7, a1 - 64);
    if (!std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<void> &,TI::ShortMemory::WordRecord *>(a1, a2))
    {
      v165 = a1;
      if (v58)
      {
        goto LABEL_2;
      }

LABEL_95:
      std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,TI::ShortMemory::WordRecord *,false>(v7, (a1 - 64), v173, a4 & 1);
      a4 = 0;
      goto LABEL_1;
    }

    a2 = (a1 - 64);
    if (v58)
    {
      return;
    }
  }

  v84 = (v7 + 64);
  v86 = v7 == a2 || v84 == a2;
  if (a4)
  {
    if (!v86)
    {
      v87 = 0;
      v88 = v7;
      do
      {
        v89 = v84;
        v90 = *(v88 + 112);
        if (v90 > *(v88 + 48))
        {
          v170 = *v84;
          *&v195[7] = *(v88 + 79);
          *v195 = *(v88 + 72);
          v91 = *(v88 + 87);
          v84[1] = 0.0;
          v84[2] = 0.0;
          *v84 = 0.0;
          *&v188[7] = *(v88 + 103);
          v92 = *(v88 + 88);
          *v188 = *(v88 + 96);
          v174 = *(v88 + 111);
          *(v88 + 88) = 0;
          *(v88 + 96) = 0;
          *(v88 + 104) = 0;
          v93 = *(v88 + 120);
          v94 = v87;
          while (1)
          {
            v95 = v94;
            v96 = v7 + v94;
            if (*(v7 + v94 + 87) < 0)
            {
              operator delete(*(v96 + 64));
            }

            *(v96 + 64) = *v96;
            *(v96 + 80) = *(v96 + 16);
            *(v96 + 23) = 0;
            *v96 = 0;
            if (*(v96 + 111) < 0)
            {
              operator delete(*(v96 + 88));
            }

            v97 = v7 + v95;
            *(v96 + 88) = *(v7 + v95 + 24);
            v98 = *(v7 + v95 + 48);
            *(v96 + 104) = *(v7 + v95 + 40);
            *(v97 + 47) = 0;
            *(v97 + 24) = 0;
            *(v97 + 112) = v98;
            *(v97 + 120) = *(v7 + v95 + 56);
            if (!v95)
            {
              break;
            }

            v99 = *(v97 - 16);
            v94 = v95 - 64;
            if (v90 <= v99)
            {
              v100 = v7 + v95;
              v101 = v7 + v95;
              v102 = (v7 + v95 + 48);
              v103 = (v101 + 24);
              goto LABEL_154;
            }
          }

          v102 = (v97 + 48);
          v103 = (v97 + 24);
          v100 = v7;
LABEL_154:
          if (*(v100 + 23) < 0)
          {
            operator delete(*v100);
          }

          *v100 = v170;
          *(v100 + 8) = *v195;
          *(v100 + 15) = *&v195[7];
          *(v100 + 23) = v91;
          if (*(v100 + 47) < 0)
          {
            operator delete(*v103);
          }

          *v103 = v92;
          *(v100 + 32) = *v188;
          *(v100 + 39) = *&v188[7];
          *(v100 + 47) = v174;
          *v102 = v90;
          *(v100 + 56) = v93;
        }

        v84 = v89 + 8;
        v87 += 64;
        v88 = v89;
      }

      while (v89 + 8 != a2);
    }
  }

  else if (!v86)
  {
    v152 = v7 + 112;
    do
    {
      v153 = v84;
      v154 = *(v7 + 112);
      if (v154 > *(v7 + 48))
      {
        v155 = *v84;
        *&v198[7] = *(v7 + 79);
        *v198 = *(v7 + 72);
        v156 = *(v7 + 87);
        v84[1] = 0.0;
        v84[2] = 0.0;
        *v84 = 0.0;
        *&v191[7] = *(v7 + 103);
        v157 = *(v7 + 88);
        *v191 = *(v7 + 96);
        v178 = *(v7 + 111);
        *(v7 + 88) = 0;
        *(v7 + 96) = 0;
        *(v7 + 104) = 0;
        v158 = *(v7 + 120);
        v159 = v152;
        do
        {
          v160 = (v159 - 48);
          if (*(v159 - 25) < 0)
          {
            operator delete(*v160);
          }

          v161 = v159 - 112;
          *v160 = *(v159 - 112);
          *(v159 - 32) = *(v159 - 96);
          *(v159 - 89) = 0;
          *(v159 - 112) = 0;
          v162 = (v159 - 24);
          if (*(v159 - 1) < 0)
          {
            operator delete(*v162);
          }

          *v162 = *(v159 - 88);
          *(v159 - 8) = *(v159 - 72);
          *(v159 - 65) = 0;
          *(v159 - 88) = 0;
          v163 = v159 - 64;
          *v159 = *(v159 - 64);
          *(v159 + 8) = *(v159 - 56);
          v164 = *(v159 - 128);
          v159 -= 64;
        }

        while (v154 > v164);
        if (*(v161 + 23) < 0)
        {
          operator delete(*v161);
        }

        *v161 = v155;
        *(v161 + 15) = *&v198[7];
        *(v161 + 8) = *v198;
        *(v161 + 23) = v156;
        if (*(v161 + 47) < 0)
        {
          operator delete(*(v163 - 24));
        }

        *(v163 - 24) = v157;
        *(v161 + 39) = *&v191[7];
        *(v161 + 32) = *v191;
        *(v163 - 1) = v178;
        *v163 = v154;
        *(v163 + 8) = v158;
      }

      v84 = v153 + 8;
      v152 += 64;
      v7 = v153;
    }

    while (v153 + 8 != a2);
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  *v15 = a1[1];
  *&v15[7] = *(a1 + 15);
  v4 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v6 = a1 + 3;
  v5 = a1[3];
  *v14 = a1[4];
  *&v14[7] = *(a1 + 39);
  v7 = *(a1 + 47);
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = 0;
  v8 = a1 + 6;
  v13 = *(a1 + 14);
  v12 = a1[6];
  v9 = *a2;
  a1[2] = *(a2 + 2);
  *a1 = v9;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*v6);
  }

  v10 = *(a2 + 24);
  v6[2] = *(a2 + 5);
  *v6 = v10;
  v11 = *(a2 + 6);
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  *(v8 + 2) = *(a2 + 14);
  *v8 = v11;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v3;
  *(a2 + 1) = *v15;
  *(a2 + 15) = *&v15[7];
  *(a2 + 23) = v4;
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 3));
  }

  *(a2 + 3) = v5;
  *(a2 + 4) = *v14;
  *(a2 + 39) = *&v14[7];
  *(a2 + 47) = v7;
  *(a2 + 6) = v12;
  *(a2 + 14) = v13;
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<void> &,TI::ShortMemory::WordRecord *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 48);
  v9 = *(a3 + 48);
  if (v8 <= *(a1 + 48))
  {
    if (v9 > v8)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(a2, a3);
      if (*(a2 + 48) > *(v7 + 48))
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 > v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(a1, v10);
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(a1, a2);
    if (*(a3 + 48) > *(a2 + 48))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 48) > *(a3 + 48))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(a3, a4);
    if (*(a3 + 48) > *(a2 + 48))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(a2, a3);
      if (*(a2 + 48) > *(v7 + 48))
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(v7, a2);
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<void> &,TI::ShortMemory::WordRecord *>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = (a2 - a1) >> 6;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *(a1 + 112);
        v9 = *(a2 - 16);
        if (v8 > *(a1 + 48))
        {
          if (v9 <= v8)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(a1, (a1 + 64));
            if (*(a2 - 16) <= *(v3 + 112))
            {
              return 1;
            }

            a1 = v3 + 64;
          }

          v5 = (a2 - 64);
          goto LABEL_31;
        }

        if (v9 <= v8)
        {
          return 1;
        }

        v6 = (a1 + 64);
        v7 = (a2 - 64);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<void> &,TI::ShortMemory::WordRecord *,0>(a1, a1 + 64, a1 + 128, a2 - 64);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<void> &,TI::ShortMemory::WordRecord *,0>(a1, a1 + 64, a1 + 128, a1 + 192);
        if (*(a2 - 16) <= *(v3 + 240))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>((v3 + 192), (a2 - 64));
        if (*(v3 + 240) <= *(v3 + 176))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>((v3 + 128), (v3 + 192));
        if (*(v3 + 176) <= *(v3 + 112))
        {
          return 1;
        }

        v6 = (v3 + 64);
        v7 = (v3 + 128);
        break;
      default:
        goto LABEL_16;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(v6, v7);
    if (*(v3 + 112) > *(v3 + 48))
    {
      v5 = (v3 + 64);
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 16) > *(a1 + 48))
    {
      v5 = (a2 - 64);
LABEL_24:
      a1 = v3;
LABEL_31:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 128;
  v11 = *(a1 + 112);
  v12 = *(a1 + 176);
  if (v11 > *(a1 + 48))
  {
    if (v12 <= v11)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(a1, (a1 + 64));
      if (*(v3 + 176) <= *(v3 + 112))
      {
        goto LABEL_36;
      }

      a1 = v3 + 64;
    }

    v13 = (v3 + 128);
    goto LABEL_35;
  }

  if (v12 > v11)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>((a1 + 64), (a1 + 128));
    if (*(v3 + 112) > *(v3 + 48))
    {
      v13 = (v3 + 64);
      a1 = v3;
LABEL_35:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<TI::ShortMemory::WordRecord *&,TI::ShortMemory::WordRecord *&>(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 192;
  if (v3 + 192 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(v14 + 48);
    if (v17 > *(v10 + 48))
    {
      v31 = *v14;
      *v35 = *(v14 + 8);
      *&v35[7] = *(v14 + 15);
      v18 = *(v14 + 23);
      *v14 = 0;
      *(v14 + 8) = 0;
      v33 = *(v14 + 24);
      *v34 = *(v14 + 32);
      *&v34[7] = *(v14 + 39);
      v32 = *(v14 + 47);
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      v19 = v15;
      v20 = *(v14 + 56);
      while (1)
      {
        v21 = v19;
        v22 = v3 + v19;
        if (*(v3 + v19 + 215) < 0)
        {
          operator delete(*(v22 + 192));
        }

        *(v22 + 192) = *(v22 + 128);
        *(v22 + 208) = *(v22 + 144);
        *(v22 + 151) = 0;
        *(v22 + 128) = 0;
        if (*(v22 + 239) < 0)
        {
          operator delete(*(v22 + 216));
        }

        v23 = v3 + v21;
        *(v22 + 216) = *(v3 + v21 + 152);
        v24 = *(v3 + v21 + 176);
        *(v22 + 232) = *(v3 + v21 + 168);
        *(v23 + 175) = 0;
        *(v23 + 152) = 0;
        *(v23 + 240) = v24;
        *(v23 + 248) = *(v3 + v21 + 184);
        if (v21 == -128)
        {
          break;
        }

        v25 = *(v23 + 112);
        v19 = v21 - 64;
        if (v17 <= v25)
        {
          v26 = v3 + v19 + 192;
          v27 = v3 + v21;
          v28 = (v3 + v21 + 176);
          v29 = (v27 + 152);
          goto LABEL_48;
        }
      }

      v28 = (v23 + 176);
      v29 = (v23 + 152);
      v26 = v3;
LABEL_48:
      if (*(v26 + 23) < 0)
      {
        operator delete(*v26);
      }

      *v26 = v31;
      *(v26 + 8) = *v35;
      *(v26 + 15) = *&v35[7];
      *(v26 + 23) = v18;
      if (*(v26 + 47) < 0)
      {
        operator delete(*v29);
      }

      *v29 = v33;
      *(v26 + 32) = *v34;
      *(v26 + 39) = *&v34[7];
      *(v26 + 47) = v32;
      *v28 = v17;
      *(v26 + 56) = v20;
      if (++v16 == 8)
      {
        return v14 + 64 == a2;
      }
    }

    v10 = v14;
    v15 += 64;
    v14 += 64;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void TI::RejectionsDatabase::soft_clear_memory(TI::RejectionsDatabase *this)
{
  TI::memory_for_db_path(&v2, this + 8, 1);
  v1 = v3;
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void KB::FilterLowQualityContinuousPathRetrocorrections::filter_candidates(KB::FilterLowQualityContinuousPathRetrocorrections *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v8 = *(a4 + 2);
  if (v8)
  {
    atomic_fetch_add(v8, 1u);
  }

  v9 = *(v8 + 8);
  WTF::RefCounted<KB::DictionaryContainer>::deref(v8);
  if (*a3)
  {
    v12 = *(a2 + 1);
    v13 = *a2;
    if (*a2 != v12)
    {
      while (1)
      {
        v14 = KB::Candidate::num_words_matching_input(v13, a3, v9 + 144, v10, v11);
        v15 = *a3;
        if (*a3 > v14)
        {
          break;
        }

        v13 += 1000;
        if (v13 == v12)
        {
          v16 = -INFINITY;
          goto LABEL_9;
        }
      }

      v16 = expf(*(v13 + 744));
LABEL_9:
      if (v16 < (expf(*(*a2 + 744)) * *(this + 2)))
      {
        v18 = *(a4 + 7);
        if (v18)
        {
          KB::append_format(v18, "removing all retrocorrection candidates: %s\n", v17, "FilterLowQualityContinuousPathRetrocorrections");
          v15 = *a3;
        }

        KB::CandidateFilter::remove_candidates_with_input_mismatch(this, a2, v15, a3, a4, "FilterLowQualityContinuousPathRetrocorrections");
      }
    }
  }
}

void KB::FilterNoPredictContinuousPathAlternates::filter_candidates(KB::FilterNoPredictContinuousPathAlternates *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((0x1CAC083126E978D5 * ((*(a2 + 1) - *a2) >> 3)) >= 2)
  {
    KB::Candidate::Candidate(v18, a3);
    v15 = *(this + 8);
    v16 = *(this + 3);
    v7 = *(a4 + 2);
    if (v7)
    {
      atomic_fetch_add(v7, 1u);
    }

    v8 = *(v7 + 8);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v7);
    std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::__value_func[abi:nn200100](v17, v8 + 144);
    v13 = *(a4 + 7);
    v14 = "FilterNoPredictContinuousPathAlternates";
    v9 = *(a2 + 1);
    v10 = (*a2 + 1000);
    v12[0] = v18;
    v12[1] = &v15;
    v12[2] = v17;
    v12[3] = &v13;
    v12[4] = &v14;
    while (1)
    {
      if (v10 == v9)
      {
        v10 = v9;
        goto LABEL_9;
      }

      if (KB::FilterNoPredictContinuousPathAlternates::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)const::$_0::operator()(v12, v10))
      {
        break;
      }

      v10 += 125;
    }

    if (v10 != v9)
    {
      for (i = v10 + 125; i != v9; i += 125)
      {
        if ((KB::FilterNoPredictContinuousPathAlternates::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)const::$_0::operator()(v12, i) & 1) == 0)
        {
          KB::Candidate::operator=(v10, i);
          v10 += 125;
        }
      }
    }

LABEL_9:
    std::vector<KB::Candidate>::erase(a2, v10, *(a2 + 1));
    std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::~__value_func[abi:nn200100](v17);
    KB::Candidate::~Candidate(v18);
  }
}

uint64_t KB::FilterNoPredictContinuousPathAlternates::filter_candidates(KB::CandidateCollection &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)const::$_0::operator()(uint64_t a1, uint64_t *a2)
{
  v21[2] = *MEMORY[0x277D85DE8];
  is_suggestible_for_input = KB::CandidateFilter::is_suggestible_for_input(a2, *a1, 1, *(a1 + 8), *(a1 + 16), 0);
  v5 = a2[1];
  v6 = v5 + 240 * *a2;
  if (*a2)
  {
    v7 = 240 * *a2;
    while ((*(v5 + 106) & 1) == 0)
    {
      v5 += 240;
      v7 -= 240;
      if (!v7)
      {
        v5 = v6;
        break;
      }
    }
  }

  if (v5 == v6)
  {
    v8 = is_suggestible_for_input;
  }

  else
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    v9 = **(a1 + 24);
    if (v9)
    {
      KB::Candidate::capitalized_string(&v19, a2);
      v10 = v20;
      if (!v20)
      {
        v10 = v21;
      }

      if (v19)
      {
        v11 = v10;
      }

      else
      {
        v11 = "";
      }

      KB::Candidate::token_ids_as_string(&v16, a2);
      v13 = v17;
      if (!v17)
      {
        v13 = &v18;
      }

      if (v16)
      {
        v14 = v13;
      }

      else
      {
        v14 = "";
      }

      KB::append_format(v9, "[%s] {%s} removed by %s\n", v12, v11, v14, **(a1 + 32));
      if (v17 && BYTE6(v16) == 1)
      {
        free(v17);
      }

      if (v20 && BYTE6(v19) == 1)
      {
        free(v20);
      }
    }
  }

  return v8 ^ 1u;
}

void KB::FilterContinuousPathAlternatesFromOtherLanguage::filter_candidates(KB::FilterContinuousPathAlternatesFromOtherLanguage *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v9 = *(a4 + 3);
  v8 = *(a4 + 4);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (v9)
  {
    v10 = *a2;
    if ((0x1CAC083126E978D5 * ((*(a2 + 1) - *a2) >> 3)) >= 4)
    {
      v11 = *(this + 2);
      KB::LanguageModelContext::LanguageModelContext(&v49, (a3 + 2032));
      if (*v10)
      {
        v12 = *(v10 + 8);
        v13 = 240 * *v10;
        do
        {
          if ((*(v12 + 135) & 4) == 0)
          {
            v14 = *(v12 + 136);
            KB::Word::capitalized_string(&v56, v12);
            v15 = v14;
            KB::LanguageModelContext::append(&v49, v15, &v56, 0);
            if (v57 && BYTE6(v56) == 1)
            {
              free(v57);
            }
          }

          v12 += 240;
          v13 -= 240;
        }

        while (v13);
      }

      if (KB::LanguageModelContext::is_linguistically_void(&v49))
      {
        v17 = 0;
      }

      else
      {
        v17 = KB::CandidateFilter::language_id_for_context_with_confidence(&v49, *(a4 + 3), *(a4 + 4), v11);
      }

      v56 = &v55;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v56);
      language_modeling::v1::LinguisticContext::~LinguisticContext(&v54);
      language_modeling::v1::LinguisticContext::~LinguisticContext(&v53);
      if (__p)
      {
        v52 = __p;
        operator delete(__p);
      }

      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v50);
      }

      if (v17)
      {
        v18 = v10 + 888;
        if (!*(v10 + 888))
        {
          KB::Candidate::compute_string(v10);
        }

        v19 = *(a4 + 2);
        if (v19)
        {
          atomic_fetch_add(v19, 1u);
        }

        v36 = this;
        v20 = *(v19 + 8) + 144;
        WTF::RefCounted<KB::DictionaryContainer>::deref(v19);
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 0x40000000;
        v44 = ___ZNK2KB47FilterContinuousPathAlternatesFromOtherLanguage17filter_candidatesERNS_19CandidateCollectionERKNS_28CandidateFilterLookupContextERKNS_24CandidateFilterResourcesE_block_invoke;
        v45 = &__block_descriptor_tmp_6228;
        v48 = v17;
        v46 = v20;
        v47 = v18;
        v21 = *(a2 + 1);
        v35 = *a2;
        v22 = (v35 + 1000);
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 0x40000000;
        v42[2] = ___ZNK2KB47FilterContinuousPathAlternatesFromOtherLanguage17filter_candidatesERNS_19CandidateCollectionERKNS_28CandidateFilterLookupContextERKNS_24CandidateFilterResourcesE_block_invoke_2;
        v42[3] = &unk_278730350;
        v42[4] = v43;
        v49 = v42;
        v23 = v21 - v35 - 1000;
        v24 = 0x1CAC083126E978D5 * (v23 >> 3);
        if (v23 < 1)
        {
          v28 = 0;
LABEL_33:
          std::__stable_sort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),std::__wrap_iter<KB::Candidate*>>(v22, v21, &v49, v24, 0, v28);
        }

        else
        {
          v25 = MEMORY[0x277D826F0];
          v26 = 0x1CAC083126E978D5 * (v23 >> 3);
          while (1)
          {
            v27 = operator new(1000 * v26, v25);
            if (v27)
            {
              break;
            }

            v28 = v26 >> 1;
            v29 = v26 > 1;
            v26 >>= 1;
            if (!v29)
            {
              goto LABEL_33;
            }
          }

          v30 = v27;
          std::__stable_sort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),std::__wrap_iter<KB::Candidate*>>(v22, v21, &v49, v24, v27, v26);
          operator delete(v30);
        }

        v31 = (v35 + 3000);
        v32 = *(a2 + 1);
        if ((v35 + 3000) != v32)
        {
          while ((v44(v43, v31) & 1) != 0)
          {
            v31 += 125;
            if (v31 == v32)
            {
              v31 = v32;
              break;
            }
          }
        }

        v33 = *(a2 + 1);
        if (*(a4 + 7))
        {
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 0x40000000;
          v38 = ___ZNK2KB47FilterContinuousPathAlternatesFromOtherLanguage17filter_candidatesERNS_19CandidateCollectionERKNS_28CandidateFilterLookupContextERKNS_24CandidateFilterResourcesE_block_invoke_3;
          v39 = &__block_descriptor_tmp_9;
          v40 = v36;
          v41 = a4;
          if (v31 != v33)
          {
            v34 = v31;
            do
            {
              v38(v37, v34);
              v34 += 125;
            }

            while (v34 != v33);
            v33 = *(a2 + 1);
          }
        }

        std::vector<KB::Candidate>::erase(a2, v31, v33);
      }
    }
  }
}

uint64_t ___ZNK2KB47FilterContinuousPathAlternatesFromOtherLanguage17filter_candidatesERNS_19CandidateCollectionERKNS_28CandidateFilterLookupContextERKNS_24CandidateFilterResourcesE_block_invoke(uint64_t a1, uint64_t a2)
{
  if (KB::CandidateFilter::candidate_static_words_from_same_language(*a2, *(a2 + 8), *(a1 + 48)))
  {
    return 1;
  }

  v5 = *(a1 + 32);
  if (!*(a2 + 888))
  {
    KB::Candidate::compute_string(a2);
  }

  v6 = *(v5 + 24);
  if (v6)
  {
    return (*(*v6 + 48))(v6, a2 + 888, *(a1 + 40)) != 0;
  }

  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return ___ZNK2KB47FilterContinuousPathAlternatesFromOtherLanguage17filter_candidatesERNS_19CandidateCollectionERKNS_28CandidateFilterLookupContextERKNS_24CandidateFilterResourcesE_block_invoke_2(v7);
}

uint64_t ___ZNK2KB47FilterContinuousPathAlternatesFromOtherLanguage17filter_candidatesERNS_19CandidateCollectionERKNS_28CandidateFilterLookupContextERKNS_24CandidateFilterResourcesE_block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    return (*(*(a1 + 32) + 16))() ^ 1;
  }

  return result;
}

void ___ZNK2KB47FilterContinuousPathAlternatesFromOtherLanguage17filter_candidatesERNS_19CandidateCollectionERKNS_28CandidateFilterLookupContextERKNS_24CandidateFilterResourcesE_block_invoke_3(uint64_t a1, KB::Candidate *a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 40) + 56);
  KB::Candidate::capitalized_string(&v12, a2);
  v4 = v13;
  if (!v13)
  {
    v4 = v14;
  }

  if (v12)
  {
    v5 = v4;
  }

  else
  {
    v5 = "";
  }

  KB::Candidate::token_ids_as_string(&v9, a2);
  v7 = v10;
  if (!v10)
  {
    v7 = &v11;
  }

  if (v9)
  {
    v8 = v7;
  }

  else
  {
    v8 = "";
  }

  KB::append_format(v3, "[%s] {%s} removed by %s\n", v6, v5, v8, "FilterContinuousPathAlternatesFromOtherLanguage");
  if (v10 && BYTE6(v9) == 1)
  {
    free(v10);
  }

  if (v13)
  {
    if (BYTE6(v12) == 1)
    {
      free(v13);
    }
  }
}

void std::__stable_sort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),std::__wrap_iter<KB::Candidate*>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4, KB::Candidate *a5, int64_t a6)
{
  v24[125] = *MEMORY[0x277D85DE8];
  if (a4 >= 2)
  {
    v8 = a1;
    if (a4 == 2)
    {
      if ((*(*a3 + 16))())
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v8, a2 - 125);
      }
    }

    else
    {
      v9 = a4;
      if (a4 <= 0)
      {
        if (a1 != a2)
        {
          v15 = a1 + 125;
          if (a1 + 125 != a2)
          {
            v16 = 0;
            do
            {
              v17 = v15;
              if ((*(*a3 + 16))())
              {
                KB::Candidate::Candidate(v24, v17);
                v18 = v16;
                while (1)
                {
                  KB::Candidate::operator=((v8 + v18 + 1000), (v8 + v18));
                  if (!v18)
                  {
                    break;
                  }

                  v18 -= 1000;
                  if (((*(*a3 + 16))() & 1) == 0)
                  {
                    v19 = (v8 + v18 + 1000);
                    goto LABEL_22;
                  }
                }

                v19 = v8;
LABEL_22:
                KB::Candidate::operator=(v19, v24);
                KB::Candidate::~Candidate(v24);
              }

              v15 = (v17 + 1000);
              v16 += 1000;
            }

            while ((v17 + 1000) != a2);
          }
        }
      }

      else
      {
        v11 = a5;
        v12 = a4 >> 1;
        v13 = &a1[125 * (a4 >> 1)];
        v14 = a4 >> 1;
        if (v9 <= a6)
        {
          std::__stable_sort_move<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),std::__wrap_iter<KB::Candidate*>>(a1, v13, a3, v14, a5);
          v20 = (v11 + 1000 * v12);
          std::__stable_sort_move<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),std::__wrap_iter<KB::Candidate*>>(&v8[125 * (v9 >> 1)], a2, a3, v9 - (v9 >> 1), v20);
          v21 = (v11 + 1000 * v9);
          v22 = v20;
          v23 = v11;
          while (v22 != v21)
          {
            if ((*(*a3 + 16))())
            {
              KB::Candidate::operator=(v8, v22);
              v22 += 125;
            }

            else
            {
              KB::Candidate::operator=(v8, v23);
              v23 += 125;
            }

            v8 += 125;
            if (v23 == v20)
            {
              while (v22 != v21)
              {
                KB::Candidate::operator=(v8, v22);
                v22 += 125;
                v8 += 125;
              }

              goto LABEL_37;
            }
          }

          while (v23 != v20)
          {
            KB::Candidate::operator=(v8, v23);
            v23 += 125;
            v8 += 125;
          }

LABEL_37:
          if (v11)
          {
            do
            {
              KB::Candidate::~Candidate(v11);
              v11 = (v11 + 1000);
              --v9;
            }

            while (v9);
          }
        }

        else
        {
          std::__stable_sort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),std::__wrap_iter<KB::Candidate*>>(a1, v13, a3, v14, a5, a6);
          std::__stable_sort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),std::__wrap_iter<KB::Candidate*>>(&v8[125 * (v9 >> 1)], a2, a3, v9 - (v9 >> 1), v11, a6);

          std::__inplace_merge<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),std::__wrap_iter<KB::Candidate*>>(v8, &v8[125 * (v9 >> 1)], a2, a3, v9 >> 1, v9 - (v9 >> 1), v11, a6);
        }
      }
    }
  }
}

void std::__stable_sort_move<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),std::__wrap_iter<KB::Candidate*>>(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, KB::Candidate *a5)
{
  if (!a4)
  {
    return;
  }

  v5 = a5;
  v9 = a1;
  if (a4 == 2)
  {
    v11 = a2 - 125;
    if (!(*(*a3 + 16))())
    {
      KB::Candidate::Candidate(v5, v9);
      v10 = (v5 + 1000);
      v12 = v11;
      goto LABEL_23;
    }

    KB::Candidate::Candidate(v5, v11);
    v10 = (v5 + 1000);
LABEL_7:
    v12 = v9;
LABEL_23:

    KB::Candidate::Candidate(v10, v12);
    return;
  }

  if (a4 == 1)
  {
    v10 = a5;
    goto LABEL_7;
  }

  if (a4 > 8)
  {
    v18 = 125 * (a4 >> 1);
    v19 = &a1[v18];
    std::__stable_sort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),std::__wrap_iter<KB::Candidate*>>(a1, &a1[v18], a3, a4 >> 1, a5, a4 >> 1);
    std::__stable_sort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),std::__wrap_iter<KB::Candidate*>>(&v9[v18], a2, a3, a4 - (a4 >> 1), (v5 + v18 * 8), a4 - (a4 >> 1));
    v20 = &v9[v18];
    while (v20 != a2)
    {
      if ((*(*a3 + 16))())
      {
        KB::Candidate::Candidate(v5, v20);
        v20 += 125;
      }

      else
      {
        KB::Candidate::Candidate(v5, v9);
        v9 += 125;
      }

      v5 = (v5 + 1000);
      if (v9 == v19)
      {
        while (v20 != a2)
        {
          KB::Candidate::Candidate(v5, v20);
          v20 += 125;
          v5 = (v5 + 1000);
        }

        return;
      }
    }

    while (v9 != v19)
    {
      KB::Candidate::Candidate(v5, v9);
      v9 += 125;
      v5 = (v5 + 1000);
    }
  }

  else if (a1 != a2)
  {
    KB::Candidate::Candidate(a5, a1);
    v13 = v9 + 125;
    if (v13 != a2)
    {
      v14 = 0;
      v15 = v5;
      do
      {
        if ((*(*a3 + 16))())
        {
          KB::Candidate::Candidate(v15 + 1000, v15);
          v16 = v5;
          if (v15 != v5)
          {
            v17 = v14;
            while (1)
            {
              v16 = (v5 + v17);
              if (!(*(*a3 + 16))())
              {
                break;
              }

              KB::Candidate::operator=((v5 + v17), (v5 + v17 - 1000));
              v17 -= 1000;
              if (!v17)
              {
                v16 = v5;
                break;
              }
            }
          }

          KB::Candidate::operator=(v16, v13);
        }

        else
        {
          KB::Candidate::Candidate(v15 + 1000, v13);
        }

        v13 += 125;
        v14 += 1000;
        v15 += 1000;
      }

      while (v13 != a2);
    }
  }
}

void std::__inplace_merge<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),std::__wrap_iter<KB::Candidate*>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, KB::Candidate *a7, uint64_t a8)
{
  if (a6)
  {
    v10 = a6;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return;
      }

      while (((*(*a4 + 16))() & 1) == 0)
      {
        a1 += 125;
        if (!--a5)
        {
          return;
        }
      }

      v44 = v10;
      v45 = a3;
      if (a5 >= v10)
      {
        if (a5 == 1)
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, a2);
          return;
        }

        v20 = a5 / 2;
        v18 = &a1[125 * (a5 / 2)];
        if (a3 == a2)
        {
          v17 = a3;
        }

        else
        {
          v42 = a4;
          v21 = *a4;
          v22 = 0x1CAC083126E978D5 * (a3 - a2);
          v17 = a2;
          do
          {
            v23 = &v17[125 * (v22 >> 1)];
            v24 = (*(v21 + 16))(v21, v23, v18);
            if (v24)
            {
              v22 += ~(v22 >> 1);
            }

            else
            {
              v22 >>= 1;
            }

            if (v24)
            {
              v17 = v23 + 125;
            }
          }

          while (v22);
          a4 = v42;
          v20 = a5 / 2;
        }

        v16 = 0x1CAC083126E978D5 * (v17 - a2);
      }

      else
      {
        v16 = v10 / 2;
        v17 = &a2[125 * (v10 / 2)];
        v18 = a2;
        if (a2 != a1)
        {
          v19 = 0x1CAC083126E978D5 * (a2 - a1);
          v18 = a1;
          do
          {
            if ((*(*a4 + 16))())
            {
              v19 >>= 1;
            }

            else
            {
              v18 += 125 * (v19 >> 1) + 125;
              v19 += ~(v19 >> 1);
            }
          }

          while (v19);
          v16 = v10 / 2;
        }

        v20 = 0x1CAC083126E978D5 * (v18 - a1);
      }

      a3 = v17;
      if (v18 != a2)
      {
        a3 = v18;
        if (v17 != a2)
        {
          v25 = a2;
          v26 = a7;
          v27 = v16;
          v28 = std::__rotate_forward[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<KB::Candidate *>>(v18, v25, v17);
          v16 = v27;
          a7 = v26;
          a3 = v28;
        }
      }

      a5 -= v20;
      v29 = v44 - v16;
      if (v20 + v16 >= a5 + v44 - v16)
      {
        v43 = v16;
        std::__inplace_merge<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),std::__wrap_iter<KB::Candidate*>>(a3, v17, v45, a4, a5, v44 - v16, a7, a8);
        v17 = v18;
        a5 = v20;
        v10 = v43;
      }

      else
      {
        std::__inplace_merge<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(KB::Candidate const&,KB::Candidate const&),std::__wrap_iter<KB::Candidate*>>(a1, v18, a3, a4, v20, v16, a7, a8);
        a1 = a3;
        a3 = v45;
        v10 = v29;
      }

      a2 = v17;
      if (!v10)
      {
        return;
      }
    }

    if (a5 <= v10)
    {
      if (a1 == a2)
      {
        return;
      }

      v36 = a3;
      v30 = 0;
      v37 = a7;
      v38 = a1;
      do
      {
        v39 = v37;
        KB::Candidate::Candidate(v37, v38);
        ++v30;
        v38 += 125;
        v37 = (v37 + 1000);
      }

      while (v38 != a2);
      v40 = a7;
      while (a2 != v36)
      {
        if ((*(*a4 + 16))())
        {
          KB::Candidate::operator=(a1, a2);
          a2 += 125;
        }

        else
        {
          KB::Candidate::operator=(a1, v40);
          v40 += 125;
        }

        a1 += 125;
        if (v40 == v37)
        {
          goto LABEL_67;
        }
      }

      do
      {
        KB::Candidate::operator=(a1, v40);
        a1 += 125;
        v41 = v40 == v39;
        v40 += 125;
      }

      while (!v41);
    }

    else
    {
      if (a3 == a2)
      {
        return;
      }

      v30 = 0;
      v31 = a7;
      v32 = a2;
      do
      {
        KB::Candidate::Candidate(v31, v32);
        ++v30;
        v32 += 125;
        v31 = (v31 + 1000);
      }

      while (v32 != a3);
      v33 = a3 - 125;
      while (a2 != a1)
      {
        v34 = (*(*a4 + 16))();
        if (v34)
        {
          v35 = a2 - 125;
        }

        else
        {
          v35 = (v31 - 1000);
        }

        if (v34)
        {
          a2 -= 125;
        }

        else
        {
          v31 = (v31 - 1000);
        }

        KB::Candidate::operator=(v33, v35);
        v33 -= 125;
        if (v31 == a7)
        {
          goto LABEL_67;
        }
      }

      while (v31 != a7)
      {
        v31 = (v31 - 1000);
        KB::Candidate::operator=(v33, v31);
        v33 -= 125;
      }
    }

LABEL_67:
    if (a7 && v30)
    {
      do
      {
        KB::Candidate::~Candidate(a7);
        a7 = (a7 + 1000);
        --v30;
      }

      while (v30);
    }
  }
}

uint64_t *std::__rotate_forward[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<KB::Candidate *>>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = a1;
  v6 = a1 + 125;
  v7 = a2;
  while (1)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v5, v4);
    v5 += 125;
    v4 += 125;
    if (v4 == a3)
    {
      break;
    }

    if (v5 == v7)
    {
      v7 = v4;
    }

    v6 += 125;
  }

  if (v5 != v7)
  {
    v8 = v7;
    do
    {
      while (1)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v5, v7);
        v5 += 125;
        v7 += 125;
        if (v7 == a3)
        {
          break;
        }

        if (v5 == v8)
        {
          v8 = v7;
        }
      }

      v7 = v8;
    }

    while (v5 != v8);
  }

  return v6;
}

uint64_t __Block_byref_object_copy__6341(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __TIGetShowEmojisByDefaultValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"ShowEmojisByDefault" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC28]];
}

id TIGetProactiveQuickTypeSettingValue()
{
  if (TIGetProactiveQuickTypeSettingValue_onceToken != -1)
  {
    dispatch_once(&TIGetProactiveQuickTypeSettingValue_onceToken, &__block_literal_global_307);
  }

  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v1 = [v0 valueForPreferenceKey:@"ProactiveQuickTypeSetting"];

  return v1;
}

void __TIGetProactiveQuickTypeSettingValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"ProactiveQuickTypeSetting" domain:@"com.apple.keyboard" defaultValue:&unk_28400BD30];
}

uint64_t __Block_byref_object_copy__6482(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getCLGeocoderClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreLocationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2787307C0;
    v6 = 0;
    CoreLocationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreLocationLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CLGeocoder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "CLGeocoder");
  }

  getCLGeocoderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary = result;
  return result;
}

void *__Block_byref_object_copy__7036(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__279(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *TIAssetAvailabilityStatusToString(uint64_t a1)
{
  if (a1)
  {
    return @"Installed";
  }

  else
  {
    return @"Unavailable";
  }
}

void std::construct_at[abi:nn200100]<KB::LanguageModelImplStub,KB::LanguageModelConfig,KB::LanguageModelImplStub*>(KB::LanguageModelImplBase *this, uint64_t a2)
{
  v4 = *a2;
  v9 = v4;
  if (v4)
  {
    CFRetain(v4);
    v9 = v4;
  }

  v5 = *(a2 + 8);
  v10 = v5;
  if (v5)
  {
    CFRetain(v5);
    v10 = v5;
  }

  v6 = *(a2 + 16);
  v11 = v6;
  if (v6)
  {
    CFRetain(v6);
    v11 = v6;
  }

  v7 = *(a2 + 24);
  *(a2 + 24) = 0u;
  v12 = v7;
  v8 = *(a2 + 40);
  *(a2 + 40) = 0u;
  v13 = v8;
  v14 = *(a2 + 56);
  v15 = *(a2 + 72);
  v16 = *(a2 + 88);
  KB::LanguageModelImplBase::LanguageModelImplBase(this, &v9);
}

void std::__shared_ptr_emplace<KB::LanguageModelImplStub>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDA8B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void std::shared_ptr<KB::LanguageModelStr>::__enable_weak_this[abi:nn200100]<KB::LanguageModelStr,KB::LanguageModelStr,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }
    }
  }
}

void std::__shared_ptr_emplace<KB::LanguageModelStr>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDA878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t __Block_byref_object_copy__7422(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__getReportMemoryExceptionFromTaskSymbolLoc_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = libMemoryResourceExceptionLibraryCore_frameworkLibrary;
  v11 = libMemoryResourceExceptionLibraryCore_frameworkLibrary;
  if (!libMemoryResourceExceptionLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __libMemoryResourceExceptionLibraryCore_block_invoke;
    v5[4] = &unk_2787308F8;
    v6 = &v8;
    v7 = v5;
    v12 = xmmword_2787308D8;
    v13 = 0;
    v9[3] = _sl_dlopen();
    libMemoryResourceExceptionLibraryCore_frameworkLibrary = *(v6[1] + 24);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  v3 = v5[0];
  if (!v2)
  {
    v3 = abort_report_np("%s", v5[0]);
    goto LABEL_7;
  }

  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "ReportMemoryExceptionFromTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getReportMemoryExceptionFromTaskSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __libMemoryResourceExceptionLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libMemoryResourceExceptionLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __Block_byref_object_copy__7580(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t StringBIStream::gotoBookmark(StringBIStream *this)
{
  if (!*(this + 18))
  {
    return 0;
  }

  *(this + 1) = *(this + 3);
  *(this + 2) = *(this + 10);
  *(this + 4) = *(this + 8);
  return 1;
}

uint64_t StringBIStream::bookmark(StringBIStream *this)
{
  *(this + 18) = 1;
  *(this + 3) = *(this + 1);
  *(this + 10) = *(this + 2);
  *(this + 8) = *(this + 4);
  return 1;
}

uint64_t StringBIStream::getNextDW(StringBIStream *this, unsigned int *a2)
{
  if (*(this + 2))
  {
    return 0;
  }

  v3 = *(this + 3);
  v4 = *v3;
  *a2 = *v3;
  *(this + 3) = v3 + 1;
  if (*(this + 8) == -1)
  {
    v6 = v4 == 0;
  }

  else
  {
    v5 = *(this + 9);
    *(this + 9) = v5 - 4;
    v6 = v5 < 5;
  }

  *(this + 2) = v6;
  return 1;
}

uint64_t StringBIStream::peekNextW(StringBIStream *this, unsigned __int16 *a2)
{
  if (*(this + 2))
  {
    return 0;
  }

  *a2 = **(this + 3);
  return 1;
}

uint64_t StringBIStream::getNextW(StringBIStream *this, unsigned __int16 *a2)
{
  if (*(this + 2))
  {
    return 0;
  }

  v3 = *(this + 3);
  v4 = *v3;
  *a2 = *v3;
  *(this + 3) = v3 + 1;
  if (*(this + 8) == -1)
  {
    v6 = v4 == 0;
  }

  else
  {
    v5 = *(this + 9);
    *(this + 9) = v5 - 2;
    v6 = v5 < 3;
  }

  *(this + 2) = v6;
  return 1;
}

uint64_t StringBIStream::unget(StringBIStream *this, char a2)
{
  v2 = *(this + 3);
  if (v2 != *(this + 2))
  {
    *(this + 3) = v2 - 1;
    *(v2 - 1) = a2;
    *(this + 2) = 0;
    if (*(this + 8) != -1)
    {
      ++*(this + 9);
    }
  }

  return 1;
}

uint64_t StringBIStream::peekNext(StringBIStream *this, unsigned __int8 *a2)
{
  if (*(this + 2))
  {
    return 0;
  }

  *a2 = **(this + 3);
  return 1;
}

uint64_t StringBIStream::getNext(StringBIStream *this, unsigned __int8 *a2)
{
  if (*(this + 2))
  {
    return 0;
  }

  v3 = *(this + 3);
  *(this + 3) = v3 + 1;
  v4 = *v3;
  *a2 = v4;
  if (*(this + 8) == -1)
  {
    v6 = v4 == 0;
  }

  else
  {
    v5 = *(this + 9);
    *(this + 9) = v5 - 1;
    v6 = v5 < 2;
  }

  *(this + 2) = v6;
  return 1;
}

uint64_t StringBOStream::puts(StringBOStream *this, const char *a2, int a3)
{
  if (a3 != -1)
  {
    v5 = *(this + 6);
    if (*(this + 8))
    {
      result = 0;
      *(this + 6) = v5 + a3;
      return result;
    }

    v15 = *(this + 7);
    if (v15 >= v5)
    {
      if (v15 - v5 >= a3)
      {
        v17 = a3;
      }

      else
      {
        v17 = v15 - v5;
      }

      memcpy(*(this + 2), a2, v17);
      *(this + 2) += v17;
      v18 = *(this + 8);
      v16 = *(this + 6) + a3;
      *(this + 6) = v16;
      if (v18)
      {
        return 0;
      }

      v15 = *(this + 7);
    }

    else
    {
      v16 = v5 + a3;
      *(this + 6) = v16;
    }

    result = 1;
    if (v16 <= v15)
    {
      return result;
    }

LABEL_20:
    *(this + 8) = 1;
    return 0;
  }

  if (*a2)
  {
    v7 = a2 + 1;
    do
    {
      v8 = *(this + 6);
      v9 = *(this + 7);
      *(this + 6) = v8 + 1;
      if (v8 < v9)
      {
        v10 = *(v7 - 1);
        v11 = *(this + 2);
        *(this + 2) = v11 + 1;
        *v11 = v10;
      }
    }

    while (*v7++);
  }

  if (*(this + 8))
  {
    return 0;
  }

  v13 = *(this + 6);
  v14 = *(this + 7);
  result = 1;
  if (v13 > v14)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t StringBOStream::putW(StringBOStream *this, __int16 a2)
{
  v2 = *(this + 6) + 2;
  *(this + 6) = v2;
  if (*(this + 8))
  {
    return 0;
  }

  if (v2 <= *(this + 7))
  {
    v4 = *(this + 2);
    *v4 = a2;
    *(this + 2) = v4 + 1;
    return 1;
  }

  else
  {
    v3 = 0;
    *(this + 8) = 1;
  }

  return v3;
}

uint64_t StringBOStream::putB(StringBOStream *this, char a2)
{
  v2 = *(this + 6);
  *(this + 6) = v2 + 1;
  if (*(this + 8))
  {
    return 0;
  }

  if (v2 >= *(this + 7))
  {
    v3 = 0;
    *(this + 8) = 1;
  }

  else
  {
    v4 = *(this + 2);
    *(this + 2) = v4 + 1;
    *v4 = a2;
    return 1;
  }

  return v3;
}

KB::StaticDictionary *KB::StaticDictionary::StaticDictionary(KB::StaticDictionary *this)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  KB::String::String((this + 80), "");
  *(this + 14) = &unk_283FDEF10;
  *(this + 17) = this + 112;
  *(this + 18) = &unk_283FDEF58;
  *(this + 21) = this + 144;
  return this;
}

{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  KB::String::String((this + 80), "");
  *(this + 14) = &unk_283FDEF10;
  *(this + 17) = this + 112;
  *(this + 18) = &unk_283FDEF58;
  *(this + 21) = this + 144;
  return this;
}

void KB::StaticDictionary::candidates_for_string(uint64_t *__return_ptr a1@<X8>, KB::StaticDictionary *this@<X0>, const KB::String *a3@<X1>, float *a4@<X2>)
{
  if (*this == *(this + 1) || *a3 == 0)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    KB::StaticDictionaryCursor::StaticDictionaryCursor(v15, this);
    v12 = KB::StaticDictionaryCursor::advance(v15, a3, v9, v10, v11);
    if (a4)
    {
      *a4 = v12;
      *a4 = KB::StaticDictionaryCursor::termination_probability(v15) * *a4;
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    KB::StaticDictionaryCursor::derive_words(v15, a1, this);
    for (i = 16; i != -8; i -= 8)
    {
      v14 = *&v15[i];
      if (v14)
      {
        CFRelease(v14);
      }

      *&v15[i] = 0;
    }
  }
}

BOOL KB::StaticDictionary::contains(KB::StaticDictionary *a1, const KB::String *a2, int a3, float a4)
{
  v15[30] = *MEMORY[0x277D85DE8];
  if (*a1 == *(a1 + 1) || *a2 == 0)
  {
    return 0;
  }

  v14 = 0.0;
  KB::StaticDictionary::candidates_for_string(v13, a1, a2, &v14);
  v5 = 0;
  if (v14 > a4 && v13[1] != v13[0])
  {
    if (a3 == 2)
    {
      v5 = 1;
    }

    else
    {
      KB::word_with_string(v15, a2, v13, a3 == 1, v9, v10);
      v5 = LOWORD(v15[0]) != 0;
      KB::Word::~Word(v15);
    }
  }

  v15[0] = v13;
  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](v15);
  return v5;
}

BOOL KB::StaticDictionary::contains_with_candidates(float a1, float a2, uint64_t a3, KB::String *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1 <= a2 || a5[1] == *a5)
  {
    return 0;
  }

  if (a6 == 2)
  {
    return 1;
  }

  KB::word_with_string(v10, a4, a5, a6 == 1, a6, a7);
  v8 = v10[0] != 0;
  KB::Word::~Word(v10);
  return v8;
}

uint64_t KB::StaticDictionary::contains_surfaceform_insertion_with_candidates(uint64_t *a1, _BYTE *a2, float a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (a3 <= 0.0 || a1[1] == v3)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    KB::Word::Word(v10, (v3 + v7));
    if ((v10[106] & 0x40) != 0)
    {
      break;
    }

    KB::Word::~Word(v10);
    ++v8;
    v3 = *a1;
    v7 += 240;
    if (0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 4) <= v8)
    {
      return 0;
    }
  }

  if (a2)
  {
    if (v11)
    {
      *a2 = 1;
    }
  }

  KB::Word::~Word(v10);
  return 1;
}

uint64_t KB::StaticDictionary::merge_words(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    v5 = MEMORY[0x277D85DD0];
    do
    {
      v6 = *v4;
      v7 = v4[1];
      v8[0] = v5;
      v8[1] = 0x40000000;
      v9 = ___ZN2KB16StaticDictionary11merge_wordsERNSt3__16vectorINS_4WordENS1_9allocatorIS3_EEEERKS6__block_invoke;
      v10 = &__block_descriptor_tmp_8019;
      v11 = v2;
      if (v6 != v7)
      {
        while (1)
        {
          result = (v9)(v8, v6);
          if (result)
          {
            break;
          }

          v6 += 240;
          if (v6 == v7)
          {
            v6 = v7;
            break;
          }
        }

        v7 = v4[1];
      }

      if (v6 == v7)
      {
        result = std::vector<KB::Word>::push_back[abi:nn200100](v4, v2);
      }

      else
      {
        *(v6 + 48) = *(v6 + 48) + *(v2 + 48);
        *(v6 + 104) = *(v2 + 104);
        *(v6 + 132) = *(v2 + 132);
      }

      v2 += 240;
    }

    while (v2 != v3);
  }

  return result;
}

BOOL ___ZN2KB16StaticDictionary11merge_wordsERNSt3__16vectorINS_4WordENS1_9allocatorIS3_EEEERKS6__block_invoke(uint64_t a1, KB::String *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  if (*(this + 34) != *(v5 + 34))
  {
    return 0;
  }

  if (v5 == this)
  {
    return *(this + 30) == *(v5 + 30);
  }

  result = KB::String::equal(this, v5, 1, a4, a5);
  if (result)
  {
    return *(this + 30) == *(v5 + 30);
  }

  return result;
}

double KB::StaticDictionary::invalid_cursor@<D0>(KB::StaticDictionary *this@<X0>, uint64_t a2@<X8>)
{
  v2 = ((*(this + 1) - *this) >> 3);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  *(a2 + 40) = v2;
  *(a2 + 48) = 0;
  return result;
}

void KB::StaticDictionary::~StaticDictionary(const void ***this)
{
  KB::StaticDictionary::unload(this, -1);
  std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::~__value_func[abi:nn200100]((this + 18));
  std::__function::__value_func<KB::ByteString ()(KB::String const&)>::~__value_func[abi:nn200100]((this + 14));
  v2 = this[11];
  if (v2 && *(this + 86) == 1)
  {
    free(v2);
  }

  v3 = this[9];
  if (v3)
  {
    CFRelease(v3);
  }

  this[9] = 0;
  v4 = this[6];
  if (v4)
  {
    this[7] = v4;
    operator delete(v4);
  }

  v5 = this[3];
  if (v5)
  {
    this[4] = v5;
    operator delete(v5);
  }

  v6 = this;
  std::vector<KB::retain_ptr<_LXLexicon const*>>::__destroy_vector::operator()[abi:nn200100](&v6);
}

void KB::StaticDictionary::unload(const void ***this, int a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (a2 == -1)
    {
      std::vector<KB::retain_ptr<_LXLexicon const*>>::clear[abi:nn200100](this);
      this[4] = this[3];
      v3 = this[6];
    }

    else
    {
      v4 = KB::StaticDictionary::lexicon_index(this, a2);
      if (v4 == -1)
      {
        goto LABEL_20;
      }

      v5 = v4;
      v6 = this[1];
      v7 = &(*this)[v4];
      if (v7 + 1 != v6)
      {
        do
        {
          if (*v7)
          {
            CFRelease(*v7);
          }

          v8 = v7 + 1;
          v9 = v7[1];
          v7[1] = 0;
          *v7 = v9;
          v10 = v7 + 2;
          ++v7;
        }

        while (v10 != v6);
        v6 = this[1];
        v7 = v8;
      }

      while (v6 != v7)
      {
        v12 = *--v6;
        v11 = v12;
        if (v12)
        {
          CFRelease(v11);
        }

        *v6 = 0;
      }

      this[1] = v7;
      v13 = 4 * v5;
      v14 = this[4];
      v15 = this[3] + 4 * v5;
      v16 = v14 - (v15 + 4);
      if (v14 != (v15 + 4))
      {
        memmove(v15, v15 + 4, v14 - (v15 + 4));
      }

      this[4] = &v15[v16];
      v17 = this[6];
      v18 = this[7];
      v19 = v17 + v13;
      v20 = (v17 + v13 + 4);
      v21 = v18 - v20;
      if (v18 != v20)
      {
        memmove(v17 + v13, v20, v18 - v20);
      }

      v3 = &v19[v21];
    }

    this[7] = v3;
  }

LABEL_20:
  if (*this == this[1])
  {
    cf = 0;
    KB::String::String(v29, "");
    v32[0] = &unk_283FDEF10;
    v32[3] = v32;
    v33[0] = &unk_283FDEF58;
    v33[3] = v33;
    v26 = this[9];
    if (v26)
    {
      CFRelease(v26);
    }

    v27 = cf;
    cf = 0;
    this[9] = v27;
    KB::String::operator=((this + 10), v29);
    std::__function::__value_func<KB::ByteString ()(KB::String const&)>::operator=[abi:nn200100]((this + 14), v32);
    std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::operator=[abi:nn200100]((this + 18), v33);
    std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::~__value_func[abi:nn200100](v33);
    std::__function::__value_func<KB::ByteString ()(KB::String const&)>::~__value_func[abi:nn200100](v32);
    if (v31 && v30 == 1)
    {
      free(v31);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v22 = **this;
    v23 = TILocaleIdentifierForLexiconID(*this[6]);
    KB::String::String(v34, v23);
    KB::CollatorWrapper::CollatorWrapper(&cf, v22, v34);
    v24 = this[9];
    if (v24)
    {
      CFRelease(v24);
    }

    v25 = cf;
    cf = 0;
    this[9] = v25;
    KB::String::operator=((this + 10), v29);
    std::__function::__value_func<KB::ByteString ()(KB::String const&)>::operator=[abi:nn200100]((this + 14), v32);
    std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::operator=[abi:nn200100]((this + 18), v33);
    std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::~__value_func[abi:nn200100](v33);
    std::__function::__value_func<KB::ByteString ()(KB::String const&)>::~__value_func[abi:nn200100](v32);
    if (v31 && v30 == 1)
    {
      free(v31);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v35)
    {
      if (v34[6] == 1)
      {
        free(v35);
      }
    }
  }
}

uint64_t std::__function::__value_func<KB::ByteString ()(KB::String const&)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

double KB::StaticDictionary::word_with_string@<D0>(KB::Word *__return_ptr a1@<X8>, KB::StaticDictionary *this@<X0>, const KB::String *a3@<X1>, int a4@<W2>)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*this != *(this + 1))
  {
    v7 = KB::StaticDictionary::lexicon_index(this, a4);
    _os_feature_enabled_impl();
    LOBYTE(v14[0]) = 0;
    v15 = 0;
    if (v7 == -1)
    {
      v10 = *(this + 6);
      if (*(this + 7) != v10)
      {
        v11 = 0;
        do
        {
          KB::word_from_lexicon(v12, a3, *(*this + 8 * v11), *(v10 + 4 * v11), v8);
          std::__optional_storage_base<KB::Word,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<KB::Word,false>>(v14, v12);
          if (v13 == 1)
          {
            KB::Word::~Word(v12);
          }

          if (v15)
          {
            goto LABEL_6;
          }

          ++v11;
          v10 = *(this + 6);
        }

        while (v11 < (*(this + 7) - v10) >> 2);
      }
    }

    else
    {
      KB::word_from_lexicon(v12, a3, *(*this + 8 * v7), *(*(this + 6) + 4 * v7), v8);
      std::__optional_storage_base<KB::Word,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<KB::Word,false>>(v14, v12);
      if (v13 == 1)
      {
        KB::Word::~Word(v12);
      }

      if (v15)
      {
LABEL_6:
        KB::Word::Word(a1, v14);
        if (v15)
        {
          KB::Word::~Word(v14);
        }

        return result;
      }
    }

    *(a1 + 13) = 0u;
    *(a1 + 14) = 0u;
    *(a1 + 11) = 0u;
    *(a1 + 12) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    return KB::Word::Word(a1);
  }

  *(a1 + 13) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;

  return KB::Word::Word(a1);
}

void KB::word_from_lexicon(KB *this, const KB::String *a2, const _LXLexicon *a3, int a4, double a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    *this = 0;
    *(this + 240) = 0;
    return;
  }

  RootCursor = LXLexiconCreateRootCursor();
  v7 = LXCursorCreateByAdvancingWithUTF8();
  if (!v7)
  {
    *this = 0;
    *(this + 240) = 0;
    if (!RootCursor)
    {
      return;
    }

    goto LABEL_11;
  }

  v8 = v7;
  v10 = 0;
  v11 = &v10;
  v12 = 0x12002000000;
  v13 = __Block_byref_object_copy__8026;
  v14 = __Block_byref_object_dispose__8027;
  v15[0] = 0;
  v16 = 0;
  LXCursorEnumerateEntries();
  v9 = v11;
  *this = 0;
  *(this + 240) = 0;
  if (*(v9 + 280) == 1)
  {
    KB::Word::Word(this, v9 + 5);
    *(this + 240) = 1;
  }

  _Block_object_dispose(&v10, 8);
  if (v16 == 1)
  {
    KB::Word::~Word(v15);
  }

  CFRelease(v8);
  if (RootCursor)
  {
LABEL_11:
    CFRelease(RootCursor);
  }
}

void std::__optional_storage_base<KB::Word,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<KB::Word,false>>(uint64_t a1, KB::String *this)
{
  if (*(a1 + 240) == *(this + 240))
  {
    if (*(a1 + 240))
    {
      KB::String::operator=(a1, this);
      KB::ByteString::operator=((a1 + 32), this + 16);
      v4 = *(this + 6);
      *(a1 + 56) = *(this + 14);
      *(a1 + 48) = v4;
      KB::String::operator=(a1 + 64, (this + 64));
      v5 = *(this + 6);
      v6 = *(this + 7);
      v7 = *(this + 9);
      *(a1 + 128) = *(this + 8);
      *(a1 + 144) = v7;
      *(a1 + 96) = v5;
      *(a1 + 112) = v6;
      KB::String::operator=(a1 + 160, (this + 160));
      *(a1 + 192) = *(this + 192);

      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__move_assign(a1 + 200, this + 25);
    }
  }

  else if (*(a1 + 240))
  {
    KB::Word::~Word(a1);
    *(a1 + 240) = 0;
  }

  else
  {
    KB::Word::Word(a1, this);
    *(a1 + 240) = 1;
  }
}

uint64_t __Block_byref_object_copy__8026(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  result = a1 + 40;
  *(result + 240) = 0;
  if (*(a2 + 280) == 1)
  {
    result = KB::Word::Word(result, a2 + 40);
    *(a1 + 280) = 1;
  }

  return result;
}

void __Block_byref_object_dispose__8027(uint64_t a1)
{
  if (*(a1 + 280) == 1)
  {
    KB::Word::~Word((a1 + 40));
  }
}

void ___ZN2KBL17word_from_lexiconERKNS_6StringEPK10_LXLexiconj_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = LXEntryCopyString();
  KB::utf8_string(v11, v6);
  v9 = *(a1 + 40);
  if (v11 == v9 || KB::String::equal(v11, v9, 1, v7, v8))
  {
    v10 = *(*(a1 + 32) + 8);
    if (*(v10 + 280) == 1)
    {
      KB::Word::~Word((v10 + 40));
      *(v10 + 280) = 0;
    }

    KB::Word::Word(v10 + 40, a2, *(a1 + 48));
    *(v10 + 280) = 1;
    *(*(*(a1 + 32) + 8) + 144) |= 0x40000u;
    *a3 = 1;
  }

  if (v12 && v11[6] == 1)
  {
    free(v12);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

BOOL KB::StaticDictionary::load(const void ***this, uint64_t a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 160);
  if (v4 != -1)
  {
    if (this[1] - *this != 24 && KB::StaticDictionary::lexicon_index(this, v4) == -1)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (*this != this[1])
  {
    return 0;
  }

LABEL_4:
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = *MEMORY[0x277D23168];
  KB::cf_string_impl<KB::String>(&value, a2);
  v8 = value;
  CFDictionarySetValue(Mutable, v7, value);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *MEMORY[0x277D23148];
  KB::cf_string_impl<KB::String>(&value, (a2 + 32));
  v10 = value;
  CFDictionarySetValue(Mutable, v9, value);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = CFArrayCreateMutable(v5, 1, MEMORY[0x277CBF128]);
  KB::cf_string_impl<KB::String>(&value, (a2 + 64));
  v12 = value;
  CFArrayAppendValue(v11, value);
  if (v12)
  {
    CFRelease(v12);
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x277D23150], v11);
  v13 = LXLexiconCreate();
  v14 = v13 != 0;
  if (v13)
  {
    v15 = v13;
    v16 = this[1];
    v17 = this[2];
    if (v16 >= v17)
    {
      v20 = *this;
      v21 = v16 - *this;
      v22 = v21 + 1;
      if ((v21 + 1) >> 61)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v23 = v17 - v20;
      if (v23 >> 2 > v22)
      {
        v22 = v23 >> 2;
      }

      v24 = v23 >= 0x7FFFFFFFFFFFFFF8;
      v25 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v24)
      {
        v25 = v22;
      }

      v63 = this;
      if (v25)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<__CFString const*>>(v25);
      }

      *(8 * v21) = v15;
      v18 = (8 * v21 + 8);
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::retain_ptr<_LXLexicon const*>>,KB::retain_ptr<_LXLexicon const*>*>(v20, v16, 0);
      v26 = *this;
      *this = 0;
      this[1] = v18;
      v27 = this[2];
      this[2] = 0;
      v61 = v26;
      v62 = v27;
      value = v26;
      v60 = v26;
      std::__split_buffer<KB::retain_ptr<_LXLexicon const*>>::~__split_buffer(&value);
    }

    else
    {
      *v16 = v13;
      v18 = v16 + 1;
    }

    this[1] = v18;
    v29 = this[4];
    v28 = this[5];
    if (v29 >= v28)
    {
      v31 = this[3];
      v32 = v29 - v31;
      v33 = (v29 - v31) >> 2;
      v34 = v33 + 1;
      if ((v33 + 1) >> 62)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v35 = v28 - v31;
      if (v35 >> 1 > v34)
      {
        v34 = v35 >> 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v36 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = v34;
      }

      if (v36)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v36);
      }

      v37 = (v29 - v31) >> 2;
      v38 = (4 * v33);
      v39 = (4 * v33 - 4 * v37);
      *v38 = *(a2 + 168);
      v30 = (v38 + 1);
      memcpy(v39, v31, v32);
      v40 = this[3];
      this[3] = v39;
      this[4] = v30;
      this[5] = 0;
      if (v40)
      {
        operator delete(v40);
      }
    }

    else
    {
      *v29 = *(a2 + 168);
      v30 = (v29 + 4);
    }

    this[4] = v30;
    v42 = this[7];
    v41 = this[8];
    if (v42 >= v41)
    {
      v44 = this[6];
      v45 = v42 - v44;
      v46 = (v42 - v44) >> 2;
      v47 = v46 + 1;
      if ((v46 + 1) >> 62)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v48 = v41 - v44;
      if (v48 >> 1 > v47)
      {
        v47 = v48 >> 1;
      }

      if (v48 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v49 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v49 = v47;
      }

      if (v49)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v49);
      }

      v50 = v46;
      v51 = (4 * v46);
      v52 = *(a2 + 160);
      v53 = &v51[-v50];
      *v51 = v52;
      v43 = (v51 + 1);
      memcpy(v53, v44, v45);
      v54 = this[6];
      this[6] = v53;
      this[7] = v43;
      this[8] = 0;
      if (v54)
      {
        operator delete(v54);
      }
    }

    else
    {
      *v42 = *(a2 + 160);
      v43 = (v42 + 4);
    }

    this[7] = v43;
    if (*this != this[1])
    {
      v55 = **this;
      v56 = TILocaleIdentifierForLexiconID(*this[6]);
      KB::String::String(v66, v56);
      KB::CollatorWrapper::CollatorWrapper(&value, v55, v66);
      v57 = this[9];
      if (v57)
      {
        CFRelease(v57);
      }

      v58 = value;
      value = 0;
      this[9] = v58;
      KB::String::operator=((this + 10), &v60);
      std::__function::__value_func<KB::ByteString ()(KB::String const&)>::operator=[abi:nn200100]((this + 14), v64);
      std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::operator=[abi:nn200100]((this + 18), v65);
      std::__function::__value_func<int ()(KB::String const&,KB::String const&)>::~__value_func[abi:nn200100](v65);
      std::__function::__value_func<KB::ByteString ()(KB::String const&)>::~__value_func[abi:nn200100](v64);
      if (v61 && BYTE6(v60) == 1)
      {
        free(v61);
      }

      if (value)
      {
        CFRelease(value);
      }

      if (v67 && v66[6] == 1)
      {
        free(v67);
      }
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v14;
}

double KB::StaticDictionary::lexicon_weight(KB::StaticDictionary *this, int a2)
{
  v3 = KB::StaticDictionary::lexicon_index(this, a2);
  if (v3 == -1)
  {
    return 0.0;
  }

  LODWORD(result) = *(*(this + 3) + 4 * v3);
  return result;
}

uint64_t KB::StaticDictionary::set_lexicon_weight(KB::StaticDictionary *this, int a2, float a3)
{
  result = KB::StaticDictionary::lexicon_index(this, a2);
  if (result != -1)
  {
    *(*(this + 3) + 4 * result) = a3;
  }

  return result;
}

uint64_t *std::vector<TI::CP::PathSample>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<TI::CP::PathSample>::__vallocate[abi:nn200100](a1, 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4));
  }

  return a1;
}

uint64_t TI::CP::ShapeStore::attempt_database_migration(sqlite3 **this)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *this;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(v2, "SELECT value FROM properties WHERE key = 'version'", -1, &ppStmt, 0))
  {
    if (sqlite3_step(ppStmt) == 100)
    {
      v3 = sqlite3_column_int(ppStmt, 0);
      sqlite3_finalize(ppStmt);
      if (v3)
      {
        file_path_for_bundle_resource = 1;
LABEL_15:
        if (v3 != 2)
        {
          v14 = *this;
          file_path_for_bundle_resource = get_file_path_for_bundle_resource(@"shape_store_schema_migration", @"sql");
          if (file_path_for_bundle_resource)
          {
            v30 = 0;
            v15 = (MEMORY[0x277D82858] + 24);
            v16 = MEMORY[0x277D82858] + 64;
            v29[0] = MEMORY[0x277D82858] + 64;
            v17 = MEMORY[0x277D82808];
            v18 = *(MEMORY[0x277D82808] + 16);
            ppStmt = *(MEMORY[0x277D82808] + 8);
            *(&ppStmt + *(ppStmt - 3)) = v18;
            v27 = 0;
            v19 = (&ppStmt + *(ppStmt - 3));
            std::ios_base::init(v19, v28);
            v19[1].__vftable = 0;
            v19[1].__fmtflags_ = -1;
            ppStmt = v15;
            v29[0] = v16;
            MEMORY[0x2318BE010](v28);
            if (!std::filebuf::open())
            {
              std::ios_base::clear((&ppStmt + *(ppStmt - 3)), *&v28[*(ppStmt - 3) + 16] | 4);
            }

            std::string::__init_with_sentinel[abi:nn200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&__p, *&v28[*(ppStmt - 3) + 24]);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            v21 = sqlite3_exec(v14, p_p, 0, 0, 0);
            free(file_path_for_bundle_resource);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            ppStmt = *v17;
            *(&ppStmt + *(ppStmt - 3)) = *(v17 + 24);
            MEMORY[0x2318BE020](v28);
            std::istream::~istream();
            MEMORY[0x2318BE200](v29);
            if (v21)
            {
              return 0;
            }

            v23 = *this;
            ppStmt = 0;
            v24 = sqlite3_prepare_v2(v23, "INSERT OR REPLACE INTO properties (key, value) VALUES ('version', ?)", -1, &ppStmt, 0);
            file_path_for_bundle_resource = v24 == 0;
            if (v24)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "CPShapeStore: Unable to update library version.", &__p, 2u);
              }
            }

            else
            {
              sqlite3_bind_int(ppStmt, 1, 2);
              sqlite3_step(ppStmt);
              sqlite3_finalize(ppStmt);
            }
          }
        }

        return file_path_for_bundle_resource;
      }
    }

    else
    {
      sqlite3_finalize(ppStmt);
    }
  }

  v5 = *this;
  v6 = get_file_path_for_bundle_resource(@"shape_store_schema", @"sql");
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v30 = 0;
  v8 = (MEMORY[0x277D82858] + 24);
  v9 = MEMORY[0x277D82858] + 64;
  v29[0] = MEMORY[0x277D82858] + 64;
  v10 = MEMORY[0x277D82808];
  v11 = *(MEMORY[0x277D82808] + 16);
  ppStmt = *(MEMORY[0x277D82808] + 8);
  *(&ppStmt + *(ppStmt - 3)) = v11;
  v27 = 0;
  v12 = (&ppStmt + *(ppStmt - 3));
  std::ios_base::init(v12, v28);
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  ppStmt = v8;
  v29[0] = v9;
  MEMORY[0x2318BE010](v28);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((&ppStmt + *(ppStmt - 3)), *&v28[*(ppStmt - 3) + 16] | 4);
  }

  std::string::__init_with_sentinel[abi:nn200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&__p, *&v28[*(ppStmt - 3) + 24]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &__p;
  }

  else
  {
    v13 = __p.__r_.__value_.__r.__words[0];
  }

  file_path_for_bundle_resource = sqlite3_exec(v5, v13, 0, 0, 0) == 0;
  free(v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ppStmt = *v10;
  *(&ppStmt + *(ppStmt - 3)) = *(v10 + 24);
  MEMORY[0x2318BE020](v28);
  std::istream::~istream();
  MEMORY[0x2318BE200](v29);
  v3 = 0;
  if (file_path_for_bundle_resource)
  {
    goto LABEL_15;
  }

  return file_path_for_bundle_resource;
}

uint64_t TI::CP::ShapeStore::ShapeStore(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 32) = *a2;
  v4 = *(a2 + 8);
  *(a1 + 40) = v4;
  if (v4)
  {
    CFRetain(v4);
    *(a1 + 40) = v4;
  }

  v5 = *(a2 + 16);
  *(a1 + 48) = v5;
  if (v5)
  {
    CFRetain(v5);
    *(a1 + 48) = v5;
    v6 = *(a2 + 16);
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 64) = 0;
  v7 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], *(a2 + 8), v6, 0);
  v8 = CFURLCopyFileSystemPath(v7, kCFURLPOSIXPathStyle);
  if (v7)
  {
    CFRelease(v7);
  }

  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v8);
  v10 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
  if (!CFStringGetFileSystemRepresentation(v8, v10, MaximumSizeOfFileSystemRepresentation) && v10)
  {
    MEMORY[0x2318BE270](v10, 0x1000C4077774924);
    v10 = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  TI::CP::ShapeStore::create_store_at_path(a1, v10);
  if (v10)
  {
    MEMORY[0x2318BE270](v10, 0x1000C4077774924);
  }

  return a1;
}

{
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 32) = 1050253722;
  *(a1 + 40) = 0;
  *(a1 + 48) = @"shapestore.db";
  CFRetain(@"shapestore.db");
  *(a1 + 48) = @"shapestore.db";
  *(a1 + 64) = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  TI::CP::ShapeStore::create_store_at_path(a1, v4);
  return a1;
}

uint64_t TI::CP::ShapeStore::create_store_at_path(sqlite3 **this, const char *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  result = TI_DEVICE_UNLOCKED_SINCE_BOOT();
  if (result)
  {
    ppDb = 0;
    if (sqlite3_open_v2(a2, &ppDb, 3145734, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v7 = a2;
        _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "CPShapeStore: Error creating/opening database at: %s", buf, 0xCu);
      }

      return sqlite3_close(ppDb);
    }

    result = TI_IS_FILE_CLASS_C();
    if ((result & 1) == 0)
    {
      result = TI_SET_PROTECTION_CLASS_C();
      if ((result & 1) == 0)
      {
        return sqlite3_close(ppDb);
      }
    }

    if (ppDb)
    {
      *this = ppDb;
      return TI::CP::ShapeStore::attempt_database_migration(this);
    }
  }

  return result;
}

void TI::CP::ShapeStore::~ShapeStore(char **this)
{
  v7 = *MEMORY[0x277D85DE8];
  TI::CP::ShapeStore::clear_statement_cache(this);
  v2 = sqlite3_close(*this);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "CPShapeStore: Error closing database: %d", v6, 8u);
    }
  }

  v4 = this[6];
  if (v4)
  {
    CFRelease(v4);
  }

  this[6] = 0;
  v5 = this[5];
  if (v5)
  {
    CFRelease(v5);
  }

  this[5] = 0;
  std::__tree<std::__value_type<std::string,sqlite3_stmt *>,std::__map_value_compare<std::string,std::__value_type<std::string,sqlite3_stmt *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sqlite3_stmt *>>>::destroy(this[2]);
}

void TI::CP::ShapeStore::clear_statement_cache(TI::CP::ShapeStore *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v3 = this + 16;
  if (v2 != (this + 16))
  {
    v4 = MEMORY[0x277D86220];
    do
    {
      if (*(v2 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v10, v2[4], v2[5]);
      }

      else
      {
        v10 = *(v2 + 4);
      }

      v5 = sqlite3_finalize(v2[7]);
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v12 = v6;
          _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "CPShapeStore: Error finalizing statement: %d", buf, 8u);
        }
      }

      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      v7 = v2[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v2[2];
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
    }

    while (v8 != v3);
  }

  std::__tree<std::__value_type<std::string,sqlite3_stmt *>,std::__map_value_compare<std::string,std::__value_type<std::string,sqlite3_stmt *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sqlite3_stmt *>>>::destroy(*(this + 2));
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = v3;
}

void std::__tree<std::__value_type<std::string,sqlite3_stmt *>,std::__map_value_compare<std::string,std::__value_type<std::string,sqlite3_stmt *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sqlite3_stmt *>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,sqlite3_stmt *>,std::__map_value_compare<std::string,std::__value_type<std::string,sqlite3_stmt *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sqlite3_stmt *>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,sqlite3_stmt *>,std::__map_value_compare<std::string,std::__value_type<std::string,sqlite3_stmt *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sqlite3_stmt *>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

sqlite3_stmt *TI::CP::ShapeStore::cached_statement_for_query(uint64_t a1, char *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  ppStmt = 0;
  v4 = (a1 + 16);
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = (a1 + 16);
  do
  {
    v7 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, a2);
    if ((v7 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v5 = *(v5 + ((v7 >> 4) & 8));
  }

  while (v5);
  if (v6 != v4 && (std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v6 + 4) & 0x80) == 0)
  {
    return v6[7];
  }

LABEL_9:
  v8 = a2;
  if (a2[23] < 0)
  {
    v8 = *a2;
  }

  v9 = sqlite3_prepare_v2(*a1, v8, -1, &ppStmt, 0);
  v10 = ppStmt;
  if (!ppStmt || v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      if (a2[23] < 0)
      {
        a2 = *a2;
      }

      v12 = sqlite3_errmsg(*a1);
      *buf = 136315394;
      v16 = a2;
      v17 = 2080;
      v18 = v12;
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "CPShapeStore: Error preparing statement: %s. ERROR: %s", buf, 0x16u);
    }
  }

  else
  {
LABEL_13:
    v11 = *v4;
    if (!*v4)
    {
LABEL_17:
      operator new();
    }

    while (1)
    {
      v4 = v11;
      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v11 + 4) & 0x80) != 0)
      {
        goto LABEL_13;
      }

      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v4 + 4, a2) & 0x80) == 0)
      {
        break;
      }

      v11 = v4[1];
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v4[7] = v10;
  }

  return ppStmt;
}

BOOL TI::CP::ShapeStore::store_shape(uint64_t a1, uint64_t *a2, void *a3)
{
  std::vector<TI::CP::PathSample>::vector[abi:nn200100](v9, a3);
  std::vector<unsigned int>::vector[abi:nn200100](v10, a3 + 3);
  __p = 0;
  v12 = 0;
  v13 = 0;
  v6 = TI::CP::PathEncoder::encode_path(v9);
  v7 = TI::CP::ShapeStore::store_shape(a1, a2, v6, -1431655765 * ((a3[1] - *a3) >> 4), *(*a3 + 16));
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  return v7;
}

BOOL TI::CP::ShapeStore::store_shape(uint64_t a1, uint64_t *a2, const void **a3, int a4, double a5)
{
  std::string::basic_string[abi:nn200100]<0>(v29, "INSERT INTO shapes (size, word_id, string_representation, shape_data, timestamp) VALUES (:size, :word_id, :string_representation, :shape_data, :timestamp)");
  v10 = TI::CP::ShapeStore::cached_statement_for_query(a1, v29);
  v11 = v10;
  if (v30 < 0)
  {
    operator delete(v29[0]);
    if (v11)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!v10)
  {
    return 0;
  }

LABEL_3:
  v12 = sqlite3_bind_parameter_index(v11, ":size");
  sqlite3_bind_int(v11, v12, a4);
  v13 = sqlite3_bind_parameter_index(v11, ":word_id");
  sqlite3_bind_int(v11, v13, 0);
  __p[0] = 0;
  __p[1] = 0;
  v28 = 0;
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = a2[1];
  }

  v17 = __p;
  if (v16)
  {
    for (i = 0; i != v16; ++i)
    {
      *(__p + i) = __tolower(*(v15 + i));
    }

    if (v28 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }
  }

  v19 = sqlite3_bind_parameter_index(v11, ":string_representation");
  sqlite3_bind_text(v11, v19, v17, -1, 0);
  v20 = sqlite3_bind_parameter_index(v11, ":shape_data");
  v21 = *(a3 + 23);
  if (v21 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if (v21 >= 0)
  {
    v23 = *(a3 + 23);
  }

  else
  {
    v23 = *(a3 + 2);
  }

  sqlite3_bind_blob(v11, v20, v22, v23, 0);
  v24 = sqlite3_bind_parameter_index(v11, ":timestamp");
  sqlite3_bind_double(v11, v24, a5);
  v25 = sqlite3_step(v11) == 0;
  sqlite3_reset(v11);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  return v25;
}

void TI::CP::ShapeStore::recall_shapes(TI::CP::ShapeStore *this@<X0>, int a2@<W1>, int a3@<W2>, void ***a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*(this + 64))
  {
    v8 = "SELECT ROWID, string_representation, shape_data, ratifications, rejections, origin_type FROM shapes WHERE size >= ? AND size < ? AND timestamp < ?";
  }

  else
  {
    v8 = "SELECT ROWID, string_representation, shape_data, ratifications, rejections, origin_type FROM shapes WHERE size >= ? AND size < ?";
  }

  std::string::basic_string[abi:nn200100]<0>(v53, v8);
  v9 = TI::CP::ShapeStore::cached_statement_for_query(this, v53);
  v10 = v9;
  if ((v54 & 0x80000000) == 0)
  {
    if (!v9)
    {
      goto LABEL_75;
    }

    goto LABEL_8;
  }

  operator delete(v53[0]);
  if (v10)
  {
LABEL_8:
    v33 = a4;
    sqlite3_bind_int(v10, 1, a2);
    sqlite3_bind_int(v10, 2, a3);
    if (*(this + 64) == 1)
    {
      sqlite3_bind_double(v10, 3, *(this + 7));
    }

    while (1)
    {
      do
      {
        if (sqlite3_step(v10) != 100)
        {
          sqlite3_reset(v10);
          goto LABEL_75;
        }

        v11 = sqlite3_column_int(v10, 0);
        v12 = sqlite3_column_text(v10, 1);
        v13 = sqlite3_column_blob(v10, 2);
        v14 = sqlite3_column_bytes(v10, 2);
        v15 = sqlite3_column_int(v10, 3);
        v16 = sqlite3_column_int(v10, 4);
        v17 = sqlite3_column_int(v10, 5);
      }

      while (!*v12 || !v13);
      v18 = v17;
      std::string::basic_string[abi:nn200100]<0>(&__str, v12);
      if (v14 < 0)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v14;
      if (v14)
      {
        memmove(&__dst, v13, v14);
      }

      __dst.__r_.__value_.__s.__data_[v14] = 0;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      v19 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v50, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        v23 = *(&v47 + 1);
        v24 = v47;
        if (v47 != *(&v47 + 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        v50 = __dst;
      }

      size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v50;
      }

      else
      {
        v21 = v50.__r_.__value_.__r.__words[0];
      }

      while (1)
      {
        if ((size & 0x80u) == 0)
        {
          v22 = &v50;
        }

        else
        {
          v22 = v50.__r_.__value_.__r.__words[0];
        }

        if ((size & 0x80u) != 0)
        {
          size = v50.__r_.__value_.__l.__size_;
        }

        if (v21 >= (v22 + size))
        {
          break;
        }

        TI::CP::Path::append(&v47, *v21, v21[1].y, v21[1].x, -1.0, 0.0);
        v21 += 2;
        size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
      }

      v23 = *(&v47 + 1);
      v24 = v47;
LABEL_33:
      v41 = 0;
      v42 = 0;
      v43 = 0;
      if (v23 != v24)
      {
        v25 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 4);
        if (v25 < 0x555555555555556)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<TI::CP::PathSample>>(v25);
        }

        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v44 = 0;
      v45 = 0;
      v46 = 0;
      v26 = v49 - *(&v48 + 1);
      if (v49 != *(&v48 + 1))
      {
        if (!((v26 >> 2) >> 62))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v26 >> 2);
        }

        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      memset(v39, 0, sizeof(v39));
      v38 = 0u;
      v37 = 0u;
      v36 = 0u;
      v35 = 0u;
      v34 = v11;
      TI::CP::Path::operator=(&v36 + 1, &v41);
      std::string::operator=(&v35, &__str);
      *&v40[20] = v15;
      *&v40[24] = v16;
      *&v40[16] = v18;
      v27 = v33[1];
      if (v27 >= v33[2])
      {
        v30 = std::vector<TI::CP::ShapeRecord>::__emplace_back_slow_path<TI::CP::ShapeRecord const&>(v33, &v34);
      }

      else
      {
        *v27 = v34;
        v28 = (v27 + 1);
        if (SBYTE7(v36) < 0)
        {
          std::string::__init_copy_ctor_external(v28, v35, *(&v35 + 1));
        }

        else
        {
          v29 = v35;
          v27[3] = v36;
          *&v28->__r_.__value_.__l.__data_ = v29;
        }

        v27[4] = 0;
        v27[5] = 0;
        v27[6] = 0;
        if (v37 != *(&v36 + 1))
        {
          std::vector<TI::CP::PathSample>::__vallocate[abi:nn200100](v27 + 4, 0xAAAAAAAAAAAAAAABLL * ((v37 - *(&v36 + 1)) >> 4));
        }

        v27[7] = 0;
        v27[8] = 0;
        v27[9] = 0;
        if (*(&v38 + 1) != v38)
        {
          std::vector<unsigned int>::__vallocate[abi:nn200100](v27 + 7, (*(&v38 + 1) - v38) >> 2);
        }

        if (SHIBYTE(v39[3]) < 0)
        {
          std::string::__init_copy_ctor_external((v27 + 10), v39[1], v39[2]);
        }

        else
        {
          v31 = *&v39[1];
          v27[12] = v39[3];
          *(v27 + 5) = v31;
        }

        v32 = *v40;
        *(v27 + 116) = *&v40[12];
        *(v27 + 13) = v32;
        v30 = v27 + 17;
      }

      v33[1] = v30;
      if (SHIBYTE(v39[3]) < 0)
      {
        operator delete(v39[1]);
      }

      if (v38)
      {
        *(&v38 + 1) = v38;
        operator delete(v38);
      }

      if (*(&v36 + 1))
      {
        *&v37 = *(&v36 + 1);
        operator delete(*(&v36 + 1));
      }

      if (SBYTE7(v36) < 0)
      {
        operator delete(v35);
      }

      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }

      if (v41)
      {
        v42 = v41;
        operator delete(v41);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      if (*(&v48 + 1))
      {
        *&v49 = *(&v48 + 1);
        operator delete(*(&v48 + 1));
      }

      if (v47)
      {
        *(&v47 + 1) = v47;
        operator delete(v47);
      }

      if (v19 < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_75:
  *(this + 64) = 0;
}

uint64_t *TI::CP::Path::operator=(uint64_t *a1, const void **a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = v5 - *a2;
    v7 = a1[2];
    v8 = *a1;
    if (v7 - *a1 < v6)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 4);
      if (v8)
      {
        a1[1] = v8;
        operator delete(v8);
        v7 = 0;
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
      }

      if (v9 <= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
        v11 = 2 * v10;
        if (2 * v10 <= v9)
        {
          v11 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 4);
        }

        if (v10 >= 0x2AAAAAAAAAAAAAALL)
        {
          v12 = 0x555555555555555;
        }

        else
        {
          v12 = v11;
        }

        std::vector<TI::CP::PathSample>::__vallocate[abi:nn200100](a1, v12);
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v13 = a1[1];
    v14 = v13 - v8;
    if (v13 - v8 >= v6)
    {
      if (v5 != v4)
      {
        memmove(v8, v4, v6);
      }

      v16 = &v8[v6];
    }

    else
    {
      v15 = &v4[v14];
      if (v13 != v8)
      {
        memmove(*a1, *a2, v14);
        v13 = a1[1];
      }

      if (v5 != v15)
      {
        memmove(v13, v15, v5 - v15);
      }

      v16 = &v13[v5 - v15];
    }

    a1[1] = v16;
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(a1 + 3, a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  }

  return a1;
}

void **std::vector<TI::CP::ShapeRecord>::__emplace_back_slow_path<TI::CP::ShapeRecord const&>(void ***a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * (a1[1] - *a1) + 1;
  if (v2 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * (a1[2] - *a1) > v2)
  {
    v2 = 0xE1E1E1E1E1E1E1E2 * (a1[2] - *a1);
  }

  if (0xF0F0F0F0F0F0F0F1 * (a1[2] - *a1) >= 0xF0F0F0F0F0F0F0)
  {
    v5 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x1E1E1E1E1E1E1E1)
    {
      operator new();
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  v6 = 8 * (a1[1] - *a1);
  *v6 = *a2;
  v7 = (v6 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *&v7->__r_.__value_.__l.__data_ = *(a2 + 8);
    *(v6 + 24) = *(a2 + 24);
  }

  std::vector<TI::CP::PathSample>::vector[abi:nn200100]((v6 + 32), (a2 + 32));
  std::vector<unsigned int>::vector[abi:nn200100]((v6 + 56), (a2 + 56));
  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    *(v6 + 80) = *(a2 + 80);
    *(v6 + 96) = *(a2 + 96);
  }

  *(v6 + 104) = *(a2 + 104);
  *(v6 + 116) = *(a2 + 116);
  v8 = (v6 + 136);
  v10 = *a1;
  v9 = a1[1];
  v11 = (v6 + *a1 - v9);
  if (*a1 != v9)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      v13[3] = *(v12 + 3);
      *(v13 + 1) = v14;
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      *(v12 + 1) = 0;
      v13[4] = 0;
      v13[5] = 0;
      v13[6] = 0;
      *(v13 + 2) = *(v12 + 2);
      v13[6] = *(v12 + 6);
      *(v12 + 4) = 0;
      *(v12 + 5) = 0;
      *(v12 + 6) = 0;
      v13[7] = 0;
      v13[8] = 0;
      v13[9] = 0;
      *(v13 + 7) = *(v12 + 56);
      v13[9] = *(v12 + 9);
      *(v12 + 7) = 0;
      *(v12 + 8) = 0;
      *(v12 + 9) = 0;
      v15 = *(v12 + 5);
      v13[12] = *(v12 + 12);
      *(v13 + 5) = v15;
      *(v12 + 11) = 0;
      *(v12 + 12) = 0;
      *(v12 + 10) = 0;
      v16 = *(v12 + 104);
      *(v13 + 116) = *(v12 + 116);
      *(v13 + 13) = v16;
      v12 += 136;
      v13 += 17;
    }

    while (v12 != v9);
    do
    {
      if (v10[103] < 0)
      {
        operator delete(*(v10 + 10));
      }

      v17 = *(v10 + 7);
      if (v17)
      {
        *(v10 + 8) = v17;
        operator delete(v17);
      }

      v18 = *(v10 + 4);
      if (v18)
      {
        *(v10 + 5) = v18;
        operator delete(v18);
      }

      if (v10[31] < 0)
      {
        operator delete(*(v10 + 1));
      }

      v10 += 136;
    }

    while (v10 != v9);
  }

  v19 = *a1;
  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v19)
  {
    operator delete(v19);
  }

  return v8;
}

BOOL TI::CP::ShapeStore::increment_row_with_column_name(uint64_t a1, const char *a2, int a3)
{
  v4 = a2;
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2[23];
  if (v6 < 0)
  {
    v7 = *(a2 + 1);
  }

  else
  {
    v7 = a2[23];
  }

  v8 = 2 * v7 + 45;
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&__b.__r_.__value_.__s + 23) = 2 * v7 + 45;
  memset(&__b, 32, v8);
  __b.__r_.__value_.__s.__data_[v8] = 0;
  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_b = &__b;
  }

  else
  {
    p_b = __b.__r_.__value_.__r.__words[0];
  }

  if ((v6 & 0x80) != 0)
  {
    v4 = *v4;
  }

  snprintf(p_b, v8, "UPDATE shapes SET %s = %s + 1 WHERE ROWID = ?", v4, v4);
  v10 = SHIBYTE(__b.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, __b.__r_.__value_.__l.__data_, __b.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = __b;
  }

  v11 = TI::CP::ShapeStore::cached_statement_for_query(a1, &v16);
  v12 = v11;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_25:
    v14 = 1;
    if ((v10 & 0x80000000) == 0)
    {
      return v14;
    }

    goto LABEL_22;
  }

  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_18:
  sqlite3_bind_int(v12, 1, a3);
  v13 = sqlite3_step(v12);
  v14 = v13 != 1;
  if (v13 == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v19 = a3;
    _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "CPShapeStore: Unable to modify usage count for ROWID = %d", buf, 8u);
  }

  sqlite3_reset(v12);
  if (v10 < 0)
  {
LABEL_22:
    operator delete(__b.__r_.__value_.__l.__data_);
  }

  return v14;
}

void TI::CP::ShapeStore::increment_shape_usage_count(TI::CP::ShapeStore *this, int a2)
{
  std::string::basic_string[abi:nn200100]<0>(__p, "ratifications");
  TI::CP::ShapeStore::increment_row_with_column_name(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void TI::CP::ShapeStore::increment_shape_penalty_count(TI::CP::ShapeStore *this, int a2)
{
  std::string::basic_string[abi:nn200100]<0>(__p, "rejections");
  TI::CP::ShapeStore::increment_row_with_column_name(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t TI::CP::ShapeStore::num_records(sqlite3 **this)
{
  v11 = *MEMORY[0x277D85DE8];
  ppStmt = 0;
  if (sqlite3_prepare_v2(*this, "SELECT COUNT(*) FROM shapes;", -1, &ppStmt, 0))
  {
    return 0;
  }

  if (sqlite3_step(ppStmt) == 1)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v3 = TIOSLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = sqlite3_errmsg(*this);
      *buf = 136315394;
      v8 = "num_records";
      v9 = 2080;
      v10 = v5;
      _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%s couldn't read # of records %s", buf, 0x16u);
    }

    v2 = 0;
  }

  else
  {
    v2 = sqlite3_column_int(ppStmt, 0);
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

BOOL TI::CP::ShapeStore::remove_shapes_older_than(sqlite3 **this, double a2)
{
  std::string::basic_string[abi:nn200100]<0>(&v10, "DELETE From shapes WHERE timestamp <= ");
  std::to_string(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v10, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v10;
  }

  else
  {
    v6 = v10.__r_.__value_.__r.__words[0];
  }

  v7 = sqlite3_exec(*this, v6, 0, 0, 0);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v7 == 0;
}

uint64_t TI::CP::ShapeStore::shape_count_for_word(sqlite3 **a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&v13, "SELECT COUNT(*) FROM shapes WHERE string_representation LIKE '");
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  std::string::append(&v13, v5, v6);
  std::string::append(&v13, "';", 2uLL);
  pStmt = 0;
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v13;
  }

  else
  {
    v7 = v13.__r_.__value_.__r.__words[0];
  }

  if (sqlite3_prepare_v2(*a1, v7, -1, &pStmt, 0))
  {
    v8 = 0;
  }

  else
  {
    if (sqlite3_step(pStmt) == 1)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v9 = TIOSLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11 = sqlite3_errmsg(*a1);
        *buf = 136315394;
        v15 = "shape_count_for_word";
        v16 = 2080;
        v17 = v11;
        _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%s couldn't read # of records %s", buf, 0x16u);
      }

      v8 = 0;
    }

    else
    {
      v8 = sqlite3_column_int(pStmt, 0);
    }

    sqlite3_finalize(pStmt);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v8;
}

uint64_t __Block_byref_object_copy__8322(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8469(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___getSystemActiveInputModes_block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277D6F380] sharedInputModeController];
  v2 = [v5 enabledInputModeIdentifiers];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void ___getCurrentValueFromPreferenceController_block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v2 = [v5 valueForPreferenceKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void _HandleUserNotificationCallBack(uint64_t a1, unint64_t a2)
{
  if (sNotification == a1)
  {
    if (a2 > 2)
    {
      v2 = 0;
    }

    else
    {
      v2 = qword_22CC8A478[a2];
    }

    (*(sCompletionHandler + 16))(sCompletionHandler, v2);
    if (sNotification)
    {
      CFUserNotificationCancel(sNotification);
      CFRelease(sNotification);
      sNotification = 0;
    }

    v3 = sCompletionHandler;
    sCompletionHandler = 0;
  }

  else
  {
    NSLog(&cfstr_UnexpectedNoti.isa, a2);
  }
}

void *__getMKBGetDeviceLockStateSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MobileKeyBagLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278730BA8;
    v7 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = MobileKeyBagLibraryCore_frameworkLibrary;
    if (MobileKeyBagLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = MobileKeyBagLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MKBGetDeviceLockState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBGetDeviceLockStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  return result;
}

void __TIGetTypologyEnabledByProfileValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"TypologyEnabledByProfile" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC28]];
}

uint64_t KB::String::String(uint64_t this)
{
  *this = 0x100000;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = 0x100000;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t KB::String::String(uint64_t this, unsigned int a2)
{
  *(this + 16) = 0;
  v2 = (this + 16);
  *(this + 2) = 16;
  *(this + 6) = 1;
  *(this + 8) = 0;
  *(this + 24) = 0;
  if (a2 > 0x7F)
  {
    if (a2 > 0x7FF)
    {
      if (HIWORD(a2))
      {
        v4 = (a2 >> 18) | 0xFFFFFFF0;
        *(this + 17) = (a2 >> 12) & 0x3F | 0x80;
        v5 = 2;
      }

      else
      {
        v4 = (a2 >> 12) | 0xFFFFFFE0;
        v5 = 1;
      }

      *v2 = v4;
      v3 = v5 + 1;
      v2[v5] = (a2 >> 6) & 0x3F | 0x80;
    }

    else
    {
      *v2 = (a2 >> 6) | 0xC0;
      v3 = 1;
    }

    v6 = v3 + 1;
    *this = v6;
    v2[v3] = a2 & 0x3F | 0x80;
    v2[v6] = 0;
  }

  else
  {
    *(this + 16) = a2;
    *this = 1;
  }

  return this;
}

KB::String *KB::String::initialize(KB::String *this, const char *a2, int a3, unsigned int a4)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  v4 = (this + 16);
  if (a2 && a4)
  {
    v8 = this;
    KB::String::ensure_capacity(this, a4);
    if (*(v8 + 1))
    {
      v9 = *(v8 + 1);
    }

    else
    {
      v9 = v4;
    }

    this = memcpy(v9, &a2[a3], a4);
    *v8 = a4;
  }

  return this;
}

unsigned __int16 *KB::String::internalize_buffer(unsigned __int16 *this)
{
  *(this + 6) = 1;
  v1 = *(this + 1);
  *(this + 1) = 0;
  v2 = *this;
  *(this + 2) = 0;
  v3 = this + 8;
  *(this + 3) = 0;
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = this;
    KB::String::ensure_capacity(this, v2);
    if (*(v5 + 1))
    {
      v6 = *(v5 + 1);
    }

    else
    {
      v6 = v3;
    }

    this = memcpy(v6, v1, v2);
    *v5 = v2;
  }

  return this;
}

KB::String *KB::String::String(KB::String *this, char a2, char *__s, int a4, __int16 a5)
{
  v5 = a4;
  *this = a4;
  *(this + 1) = 16;
  *(this + 2) = a5;
  *(this + 6) = a2;
  *(this + 1) = 0;
  if (a2 == 1)
  {
    if (__s && !a4)
    {
      v5 = strlen(__s);
      *this = v5;
    }

    *(this + 2) = 0;
    *(this + 3) = 0;
    if (__s && v5)
    {
      KB::String::ensure_capacity(this, v5);
      if (*(this + 1))
      {
        v9 = *(this + 1);
      }

      else
      {
        v9 = this + 16;
      }

      memcpy(v9, __s, v5);
      *this = v5;
    }
  }

  else if (!a2)
  {
    *(this + 1) = __s;
    if (!a4)
    {
      if (__s)
      {
        v8 = strlen(__s);
      }

      else
      {
        v8 = 0;
      }

      *this = v8;
    }

    *(this + 17) = 0;
  }

  return this;
}

KB::String *KB::String::String(KB::String *this, const KB::String::iterator *a2, const KB::String::iterator *a3)
{
  *this = 0x100000;
  *(this + 2) = 0;
  *(this + 6) = 1;
  *(this + 1) = 0;
  v5 = *a2;
  v6 = KB::String::iterator::offset(a2);
  v7 = KB::String::iterator::offset(a3) - v6;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = (v5 + v6);
    KB::String::ensure_capacity(this, v7);
    if (*(this + 1))
    {
      v10 = *(this + 1);
    }

    else
    {
      v10 = this + 16;
    }

    memcpy(v10, v9, v7);
    *this = v7;
  }

  return this;
}

uint64_t KB::String::iterator::offset(KB::String::iterator *this)
{
  v3 = *(this + 2);
  result = *(this + 3);
  if (v3 <= result)
  {
    v4 = *(this + 4);
    if (v4 >= 0x10000)
    {
      v5 = -4;
    }

    else
    {
      v5 = -3;
    }

    if (v4 - 1114112 >= 0xFFEFE000)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v4 >> 11 >= 0x1B)
    {
      v7 = v6;
    }

    else
    {
      v7 = -3;
    }

    if (v4 >= 0x800)
    {
      v8 = v7;
    }

    else
    {
      v8 = -2;
    }

    if (v4 >= 0x80)
    {
      v9 = v8;
    }

    else
    {
      v9 = -1;
    }

    return (v9 + v3);
  }

  return result;
}

uint64_t KB::String::String(uint64_t a1, KB::String *a2)
{
  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 0;
  *(a1 + 8) = 0;
  return KB::String::operator=(a1, a2);
}

uint64_t KB::String::operator=(uint64_t a1, KB::String *this)
{
  v4 = *(a1 + 8);
  if (v4 && *(a1 + 6) == 1)
  {
    free(v4);
  }

  v5 = *this;
  *a1 = v5;
  *(a1 + 2) = *(this + 2);
  *(a1 + 6) = *(this + 6);
  v6 = *(this + 1);
  *(a1 + 8) = v6;
  if (!v6)
  {
    if (v5)
    {
      *(a1 + 16) = *(this + 1);
    }

    else
    {
      *(a1 + 16) = 0;
    }
  }

  *(this + 1) = 0;
  KB::String::clear(this);
  return a1;
}

uint64_t KB::String::String(uint64_t a1, KB::String *this)
{
  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 0;
  *(a1 + 8) = 0;
  return KB::String::operator=(a1, this);
}

void KB::String::~String(KB::String *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*(this + 6) == 1)
    {
      free(v2);
    }
  }
}

{
  v2 = *(this + 1);
  if (v2)
  {
    if (*(this + 6) == 1)
    {
      free(v2);
    }
  }
}

KB::String *KB::String::operator=(KB::String *a1, const char *a2)
{
  KB::String::clear(a1);
  if (a2)
  {
    v4 = strlen(a2);
    v5 = v4;
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    if (v4)
    {
      KB::String::ensure_capacity(a1, v4);
      if (*(a1 + 1))
      {
        v6 = *(a1 + 1);
      }

      else
      {
        v6 = (a1 + 16);
      }

      memcpy(v6, a2, v5);
      *a1 = v5;
    }
  }

  else
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
  }

  return a1;
}

KB::String *KB::String::operator=(KB::String *a1, unsigned int a2)
{
  KB::String::clear(a1);
  if (a2)
  {
    KB::String::append(a1, a2);
  }

  return a1;
}

void KB::String::append(KB::String *this, unsigned int a2)
{
  if (!*(this + 6))
  {
    KB::String::internalize_buffer(this);
  }

  v4 = *this;
  if (a2 > 0x7F)
  {
    KB::String::ensure_capacity(this, v4 + 4);
    v6 = *(this + 1);
    if (!v6)
    {
      v6 = this + 16;
    }

    if (a2 > 0x7FF)
    {
      v8 = *this;
      *this = v8 + 1;
      if (HIWORD(a2))
      {
        v6[v8] = (a2 >> 18) | 0xF0;
        v9 = *this;
        *this = v9 + 1;
        v6[v9] = (a2 >> 12) & 0x3F | 0x80;
      }

      else
      {
        v6[v8] = (a2 >> 12) | 0xE0;
      }

      v7 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
    }

    else
    {
      v7 = (a2 >> 6) | 0xFFFFFFC0;
    }

    v10 = *this;
    *this = v10 + 1;
    v6[v10] = v7;
    v11 = *this;
    *this = v11 + 1;
    v6[v11] = a2 & 0x3F | 0x80;
  }

  else
  {
    v5 = v4 + 1;
    KB::String::ensure_capacity(this, v4 + 1);
    v6 = *(this + 1);
    if (!v6)
    {
      v6 = this + 16;
    }

    *this = v5;
    v6[v5 - 1] = a2;
  }

  v6[*this] = 0;
  *(this + 2) = 0;
}

int *KB::String::empty_string(KB::String *this)
{
  {
    KB::String::empty_string(void)::empty_string = 0x100000;
    word_280FAC864 = 0;
    byte_280FAC866 = 0;
    qword_280FAC868 = 0;
    byte_280FAC870 = 0;
    __cxa_atexit(KB::String::~String, &KB::String::empty_string(void)::empty_string, &dword_22CA55000);
  }

  return &KB::String::empty_string(void)::empty_string;
}

int *KB::String::space(KB::String *this)
{
  {
    word_280FAC35C = 0;
    byte_280FAC35E = 0;
    qword_280FAC360 = " ";
    KB::String::space(void)::space = 1048577;
    byte_280FAC369 = 0;
    __cxa_atexit(KB::String::~String, &KB::String::space(void)::space, &dword_22CA55000);
  }

  return &KB::String::space(void)::space;
}

void KB::String::resize(KB::String *this, unsigned int a2, int a3)
{
  v3 = *this;
  if (v3 != a2)
  {
    if (!*(this + 6))
    {
      KB::String::internalize_buffer(this);
      v3 = *this;
    }

    v7 = v3 >= a2;
    v8 = v3 - a2;
    if (v8 != 0 && v7)
    {
      v9 = *(this + 1);
      if (!v9)
      {
        v9 = this + 16;
      }

      bzero(&v9[a2], v8);
    }

    else
    {
      KB::String::ensure_capacity(this, a2);
      v10 = *(this + 1);
      if (!v10)
      {
        v10 = this + 16;
      }

      memset(&v10[*this], a3, a2 - *this);
    }

    *this = a2;
    *(this + 2) = 0;
  }
}

uint64_t *KB::String::shorten@<X0>(uint64_t *__return_ptr a1@<X8>, KB::String *this@<X0>, unsigned int a3@<W1>)
{
  *a1 = 0x100000;
  *(a1 + 2) = 0;
  *(a1 + 6) = 0;
  a1[1] = 0;
  *(a1 + 16) = 0;
  v5 = *(this + 1);
  if (!v5)
  {
    v5 = this + 16;
  }

  v11 = v5;
  v6 = *this;
  v12 = 0;
  v13 = v6;
  v14 = 0;
  result = KB::String::iterator::initialize(&v11);
  v8 = v14;
  if (v14 && a3)
  {
    v9 = 1;
    do
    {
      KB::String::append(a1, v8);
      result = KB::String::iterator::operator++(&v11);
      v8 = v14;
      if (v14)
      {
        v10 = v9 >= a3;
      }

      else
      {
        v10 = 1;
      }

      ++v9;
    }

    while (!v10);
  }

  return result;
}

uint64_t *KB::String::iterator::operator++(uint64_t *result)
{
  v1 = *(result + 3);
  v2 = *(result + 2);
  if (v2 >= v1)
  {
    *(result + 2) = v1 + 1;
    *(result + 4) = 0;
  }

  else
  {
    v3 = *result;
    v4 = v2 + 1;
    *(result + 2) = v2 + 1;
    v5 = *(v3 + v2);
    *(result + 4) = v5;
    if ((v5 + 64) > 0x34)
    {
      return result;
    }

    v6 = kb_utf8_countTrailBytes[v5];
    v7 = v5 & ~(-1 << (6 - v6));
    *(result + 4) = v7;
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        if (v6 != 3)
        {
          return result;
        }

        v8 = v2 + 2;
        *(result + 2) = v8;
        v9 = *(v3 + v4) & 0x3F | (v7 << 6);
        *(result + 4) = v9;
        LODWORD(v4) = v8;
        v7 = v9;
      }

      *(result + 2) = v4 + 1;
      v10 = *(v3 + v4) & 0x3F | (v7 << 6);
      *(result + 4) = v10;
      LODWORD(v4) = v4 + 1;
      v7 = v10;
    }

    *(result + 2) = v4 + 1;
    *(result + 4) = *(v3 + v4) & 0x3F | (v7 << 6);
  }

  return result;
}

KB::String::iterator *KB::String::iterator::operator--(KB::String::iterator *a1)
{
  v2 = KB::String::iterator::offset(a1);
  if (v2)
  {
    *(a1 + 2) = v2;
    v3 = *a1;
    v4 = *(*a1 + (v2 - 1));
    *(a1 + 4) = v4;
    if ((v4 & 0xC0) == 0x80)
    {
      v5 = v4 & 0x3F;
      *(a1 + 4) = v5;
      v6 = *(v3 + (v2 - 2));
      if (v6 <= 0xBF)
      {
        v9 = v2 - 3;
        v10 = 1;
        v11 = 6;
        do
        {
          v5 |= (v6 & 0x3F) << v11;
          *(a1 + 4) = v5;
          ++v10;
          v11 += 6;
          v6 = *(v3 + v9--);
        }

        while (v6 <= 0xBF);
        v8 = 6 - v10;
        v7 = v11;
      }

      else
      {
        v7 = 6;
        v8 = 5;
      }

      *(a1 + 4) = v5 | ((v6 & ~(-1 << v8)) << v7);
    }
  }

  return a1;
}

KB::String::iterator *KB::String::iterator::operator+@<X0>(uint64_t a1@<X0>, int a2@<W1>, KB::String::iterator *a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 2) = *(a1 + 16);
  return std::__advance[abi:nn200100]<KB::String::iterator>(a3, a2);
}

KB::String::iterator *std::__advance[abi:nn200100]<KB::String::iterator>(KB::String::iterator *result, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    do
    {
      result = KB::String::iterator::operator--(result);
    }

    while (!__CFADD__(v2++, 1));
  }

  else if (a2)
  {
    v3 = a2 + 1;
    do
    {
      result = KB::String::iterator::operator++(result);
      --v3;
    }

    while (v3 > 1);
  }

  return result;
}

KB::String::iterator *KB::String::iterator::operator-@<X0>(uint64_t a1@<X0>, int a2@<W1>, KB::String::iterator *a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 2) = *(a1 + 16);
  return std::__advance[abi:nn200100]<KB::String::iterator>(a3, -a2);
}

uint64_t *KB::String::find@<X0>(char **__return_ptr a1@<X8>, KB::String *this@<X0>, const KB::String *a3@<X1>)
{
  if (*(this + 1))
  {
    v5 = *(this + 1);
  }

  else
  {
    v5 = this + 16;
  }

  if (*(a3 + 1))
  {
    v6 = *(a3 + 1);
  }

  else
  {
    v6 = a3 + 16;
  }

  v7 = strstr(v5, v6);
  if (v7)
  {
    v8 = v7 - v5;
  }

  else
  {
    v8 = *this;
  }

  v9 = *this;
  *a1 = v5;
  *(a1 + 2) = v8;
  *(a1 + 12) = v9;

  return KB::String::iterator::initialize(a1);
}

uint64_t *KB::String::rfind@<X0>(KB::String *this@<X0>, const KB::String *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = this + 16;
  if (*(this + 1))
  {
    v5 = *(this + 1);
  }

  v6 = *this;
  v7 = &v5[v6];
  v8 = *(a2 + 1);
  if (!v8)
  {
    v8 = a2 + 16;
  }

  v9 = *a2;
  if (v6)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (!*a2)
    {
LABEL_24:
      *a3 = v5;
      *(a3 + 8) = v7 - v5;
      goto LABEL_25;
    }
  }

  else
  {
    v13 = *v8;
    v11 = v8 + 1;
    v12 = v13;
    v14 = v9 - 1;
    v15 = v5;
    v16 = &v5[v6];
    do
    {
      v17 = v15 + 1;
      while (*v15 != v12)
      {
        ++v15;
        ++v17;
        if (v15 == v7)
        {
          goto LABEL_23;
        }
      }

      v18 = v14;
      v19 = v11;
      while (v18)
      {
        if (v17 == v7)
        {
          goto LABEL_23;
        }

        v21 = *v17++;
        v20 = v21;
        v22 = *v19++;
        --v18;
        if (v20 != v22)
        {
          goto LABEL_22;
        }
      }

      v16 = v15;
LABEL_22:
      ++v15;
    }

    while (v15 != v7);
LABEL_23:
    v10 = v16 == v7;
    LODWORD(v7) = v16;
    if (!v10)
    {
      goto LABEL_24;
    }
  }

  *a3 = v5;
  *(a3 + 8) = v6;
LABEL_25:
  *(a3 + 12) = v6;
  *(a3 + 16) = 0;
  return KB::String::iterator::initialize(a3);
}

double KB::String::find_first_of@<D0>(KB::String *this@<X0>, const KB::String *a2@<X1>, const KB::String::iterator *a3@<X2>, uint64_t a4@<X8>)
{
  v15 = *a3;
  *v16 = *(a3 + 2);
  v6 = *this;
  v7 = *(this + 1);
  if (!v7)
  {
    v7 = this + 16;
  }

  v11 = v7;
  v12 = v6;
  v13 = v6;
  v14 = 0;
  KB::String::iterator::initialize(&v11);
  v8 = DWORD2(v15);
  v9 = v12;
  while (v8 != v9 && !KB::String::contains(a2, v16[0]))
  {
    KB::String::iterator::operator++(&v15);
    v8 = DWORD2(v15);
  }

  result = *&v15;
  *a4 = v15;
  *(a4 + 16) = *v16;
  return result;
}

BOOL KB::String::contains(KB::String *this, unsigned int a2)
{
  if (a2 > 0x7F)
  {
    if (*(this + 1))
    {
      v7 = *(this + 1);
    }

    else
    {
      v7 = this + 16;
    }

    *&v18 = v7;
    v8 = *this;
    DWORD2(v18) = 0;
    HIDWORD(v18) = v8;
    LODWORD(v19) = 0;
    KB::String::iterator::initialize(&v18);
    v14 = v7;
    v15 = v8;
    v16 = v8;
    v17 = 0;
    KB::String::iterator::initialize(&v14);
    v20 = v18;
    v21 = v19;
    v9 = v15;
    v10 = DWORD2(v18);
    if (DWORD2(v18) != v15 && v19 != a2)
    {
      do
      {
        KB::String::iterator::operator++(&v20);
        v10 = DWORD2(v20);
      }

      while (DWORD2(v20) != v9 && v21 != a2);
    }

    *&v20 = v7;
    DWORD2(v20) = v8;
    HIDWORD(v20) = v8;
    LODWORD(v21) = 0;
    KB::String::iterator::initialize(&v20);
    v12 = v10 == DWORD2(v20);
  }

  else
  {
    v3 = *(this + 1);
    if (!v3)
    {
      v3 = this + 16;
    }

    v4 = *this;
    if (*this)
    {
      v5 = *this;
      v6 = v3;
      while (*v6 != a2)
      {
        ++v6;
        if (!--v5)
        {
          v6 = &v3[v4];
          break;
        }
      }
    }

    else
    {
      v6 = v3;
    }

    v12 = v6 - v3 == v4;
  }

  return !v12;
}

double KB::String::find_first_not_of@<D0>(KB::String *this@<X0>, const KB::String *a2@<X1>, const KB::String::iterator *a3@<X2>, uint64_t a4@<X8>)
{
  v15 = *a3;
  *v16 = *(a3 + 2);
  v6 = *this;
  v7 = *(this + 1);
  if (!v7)
  {
    v7 = this + 16;
  }

  v11 = v7;
  v12 = v6;
  v13 = v6;
  v14 = 0;
  KB::String::iterator::initialize(&v11);
  v8 = DWORD2(v15);
  v9 = v12;
  while (v8 != v9 && KB::String::contains(a2, v16[0]))
  {
    KB::String::iterator::operator++(&v15);
    v8 = DWORD2(v15);
  }

  result = *&v15;
  *a4 = v15;
  *(a4 + 16) = *v16;
  return result;
}

uint64_t *KB::String::find_last_of@<X0>(KB::String *this@<X0>, const KB::String *a2@<X1>, const KB::String::iterator *a3@<X2>, uint64_t a4@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  *v17 = *a3;
  *&v17[16] = *(a3 + 2);
  v15 = *v17;
  v16 = *&v17[16];
  if (*(this + 1))
  {
    v6 = *(this + 1);
  }

  else
  {
    v6 = this + 16;
  }

  *&v12 = v6;
  v7 = *this;
  DWORD2(v12) = 0;
  HIDWORD(v12) = v7;
  v13[0] = 0;
  KB::String::iterator::initialize(&v12);
  v8 = DWORD2(v12);
  v9 = *&v17[8];
  if (*&v17[8] == DWORD2(v12))
  {
LABEL_7:
    v9 = v8;
  }

  else
  {
    while (1)
    {
      v12 = *v17;
      *v13 = *&v17[16];
      KB::String::iterator::operator--(&v12);
      if (KB::String::contains(a2, v13[0]))
      {
        break;
      }

      KB::String::iterator::operator--(v17);
      v9 = *&v17[8];
      if (*&v17[8] == v8)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = *v17;
  *&v12 = *&v17[12];
  DWORD2(v12) = *&v17[20];
  v14 = v6;
  LODWORD(v15) = 0;
  *(&v15 + 4) = v7;
  KB::String::iterator::initialize(&v14);
  if (v9 == v15)
  {
    *a4 = v6;
    *(a4 + 8) = v7;
    *(a4 + 12) = v7;
    *(a4 + 16) = 0;
    return KB::String::iterator::initialize(a4);
  }

  else
  {
    *(a4 + 12) = v12;
    *(a4 + 20) = DWORD2(v12);
    *a4 = v10;
    *(a4 + 8) = v9;
    return KB::String::iterator::operator--(a4);
  }
}

uint64_t *KB::String::find_last_not_of@<X0>(KB::String *this@<X0>, const KB::String *a2@<X1>, const KB::String::iterator *a3@<X2>, uint64_t a4@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  *v17 = *a3;
  *&v17[16] = *(a3 + 2);
  v15 = *v17;
  v16 = *&v17[16];
  if (*(this + 1))
  {
    v6 = *(this + 1);
  }

  else
  {
    v6 = this + 16;
  }

  *&v12 = v6;
  v7 = *this;
  DWORD2(v12) = 0;
  HIDWORD(v12) = v7;
  v13[0] = 0;
  KB::String::iterator::initialize(&v12);
  v8 = DWORD2(v12);
  v9 = *&v17[8];
  if (*&v17[8] == DWORD2(v12))
  {
LABEL_7:
    v9 = v8;
  }

  else
  {
    while (1)
    {
      v12 = *v17;
      *v13 = *&v17[16];
      KB::String::iterator::operator--(&v12);
      if (!KB::String::contains(a2, v13[0]))
      {
        break;
      }

      KB::String::iterator::operator--(v17);
      v9 = *&v17[8];
      if (*&v17[8] == v8)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = *v17;
  *&v12 = *&v17[12];
  DWORD2(v12) = *&v17[20];
  v14 = v6;
  LODWORD(v15) = 0;
  *(&v15 + 4) = v7;
  KB::String::iterator::initialize(&v14);
  if (v9 == v15)
  {
    *a4 = v6;
    *(a4 + 8) = v7;
    *(a4 + 12) = v7;
    *(a4 + 16) = 0;
    return KB::String::iterator::initialize(a4);
  }

  else
  {
    *(a4 + 12) = v12;
    *(a4 + 20) = DWORD2(v12);
    *a4 = v10;
    *(a4 + 8) = v9;
    return KB::String::iterator::operator--(a4);
  }
}

BOOL KB::String::contains(KB::String *this, const KB::String *a2)
{
  v4 = *(this + 1);
  v5 = this + 16;
  if (!v4)
  {
    v4 = this + 16;
  }

  v11 = v4;
  v6 = *this;
  v12 = 0;
  v13 = v6;
  v14 = 0;
  KB::String::iterator::initialize(&v11);
  KB::String::find_first_of(this, a2, &v11, v10);
  v7 = *this;
  v8 = *(this + 1);
  if (!v8)
  {
    v8 = v5;
  }

  v11 = v8;
  v12 = v7;
  v13 = v7;
  v14 = 0;
  KB::String::iterator::initialize(&v11);
  return v10[2] != v12;
}

uint64_t KB::String::count(KB::String *this, unsigned int a2)
{
  if (a2 > 0x7F)
  {
    if (*(this + 1))
    {
      v7 = *(this + 1);
    }

    else
    {
      v7 = this + 16;
    }

    *&v15 = v7;
    v8 = *this;
    DWORD2(v15) = 0;
    HIDWORD(v15) = v8;
    LODWORD(v16) = 0;
    KB::String::iterator::initialize(&v15);
    v11 = v7;
    v12 = v8;
    v13 = v8;
    v14 = 0;
    KB::String::iterator::initialize(&v11);
    v5 = 0;
    v17 = v15;
    v18 = v16;
    v9 = v12;
    if (DWORD2(v15) != v12)
    {
      LODWORD(v5) = 0;
      do
      {
        if (v18 == a2)
        {
          v5 = (v5 + 1);
        }

        else
        {
          v5 = v5;
        }

        KB::String::iterator::operator++(&v17);
      }

      while (DWORD2(v17) != v9);
    }
  }

  else
  {
    v3 = *(this + 1);
    if (!v3)
    {
      v3 = this + 16;
    }

    v4 = *this;
    if (*this)
    {
      LODWORD(v5) = 0;
      do
      {
        v6 = *v3++;
        if (v6 == a2)
        {
          v5 = (v5 + 1);
        }

        else
        {
          v5 = v5;
        }

        --v4;
      }

      while (v4);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t KB::String::compare(KB::String *this, const KB::String *a2)
{
  if (*(this + 1))
  {
    v2 = *(this + 1);
  }

  else
  {
    v2 = this + 16;
  }

  if (*(a2 + 1))
  {
    v3 = *(a2 + 1);
  }

  else
  {
    v3 = a2 + 16;
  }

  return strcmp(v2, v3);
}

uint64_t *KB::String::trim@<X0>(KB::String *__return_ptr a1@<X8>, uint64_t *this@<X0>, const KB::String *a3@<X1>)
{
  v4 = *this;
  if (!*this)
  {
    goto LABEL_8;
  }

  v6 = this;
  v7 = this[1];
  v8 = this + 2;
  if (!v7)
  {
    v7 = this + 2;
  }

  v22 = v7;
  v23 = 0;
  v24 = v4;
  v25 = 0;
  KB::String::iterator::initialize(&v22);
  KB::String::find_first_not_of(v6, a3, &v22, v20);
  v9 = *v6;
  v10 = v6[1] ? v6[1] : v8;
  v22 = v10;
  v23 = v9;
  v24 = v9;
  v25 = 0;
  this = KB::String::iterator::initialize(&v22);
  v11 = v21;
  if (v21 != v23)
  {
    v22 = v10;
    v23 = v9;
    v24 = v9;
    v25 = 0;
    KB::String::iterator::initialize(&v22);
    KB::String::find_last_not_of(v6, a3, &v22, &v18);
    KB::String::iterator::operator++(&v18);
    if (v6[1])
    {
      v12 = v6[1];
    }

    else
    {
      v12 = v8;
    }

    v22 = v12;
    v13 = *v6;
    v23 = 0;
    v24 = v13;
    v25 = 0;
    KB::String::iterator::initialize(&v22);
    if (v11 == v23 && (v14 = v12, v15 = v13, v16 = v13, v17 = 0, KB::String::iterator::initialize(&v14), v19 == v15))
    {
      return KB::String::String(a1, v6);
    }

    else
    {
      return KB::String::String(a1, v20, &v18);
    }
  }

  else
  {
LABEL_8:
    *a1 = 0x100000;
    *(a1 + 2) = 0;
    *(a1 + 6) = 0;
    *(a1 + 1) = 0;
    *(a1 + 16) = 0;
  }

  return this;
}

uint64_t *KB::String::remove@<X0>(KB::String *this@<X0>, const KB::String *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2)
  {
    *a3 = 0x100000;
    *(a3 + 4) = 0;
    *(a3 + 6) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    KB::String::ensure_capacity(a3, *this);
    if (*(this + 1))
    {
      v6 = *(this + 1);
    }

    else
    {
      v6 = this + 16;
    }

    v15 = v6;
    v7 = *this;
    v16 = 0;
    v17 = v7;
    v18 = 0;
    KB::String::iterator::initialize(&v15);
    v11 = v6;
    v12 = v7;
    v13 = v7;
    v14 = 0;
    result = KB::String::iterator::initialize(&v11);
    v9 = v12;
    while (v16 != v9)
    {
      v10 = v18;
      if (!KB::String::contains(a2, v18))
      {
        KB::String::append(a3, v10);
      }

      result = KB::String::iterator::operator++(&v15);
    }
  }

  else
  {

    return KB::String::String(a3, this);
  }

  return result;
}

KB::String *KB::String::remove_prefix_bytes@<X0>(KB::String *this@<X0>, uint64_t a2@<X1>, KB::String *a3@<X8>)
{
  v3 = *(this + 1);
  if (!v3)
  {
    v3 = this + 16;
  }

  return KB::String::String(a3, &v3[a2], (*this - a2));
}

unsigned __int16 *KB::String::replace@<X0>(KB::String *this@<X0>, const KB::String::iterator *a2@<X1>, const KB::String::iterator *a3@<X2>, const KB::String *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = KB::String::iterator::offset(a3);
  v11 = KB::String::iterator::offset(a2);
  *a5 = 0x100000;
  *(a5 + 4) = 0;
  *(a5 + 6) = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  KB::String::ensure_capacity(a5, *this + v11 - v10 + *a4);
  v12 = *(this + 1);
  if (!v12)
  {
    v12 = this + 16;
  }

  v17 = v12;
  v13 = *this;
  v18 = 0;
  v19 = v13;
  v20 = 0;
  KB::String::iterator::initialize(&v17);
  KB::String::append(a5, &v17, a2);
  KB::String::append(a5, a4);
  v14 = *this;
  v15 = *(this + 1);
  if (!v15)
  {
    v15 = this + 16;
  }

  v17 = v15;
  v18 = v14;
  v19 = v14;
  v20 = 0;
  KB::String::iterator::initialize(&v17);
  return KB::String::append(a5, a3, &v17);
}

unsigned __int16 *KB::String::append(KB::String *this, const KB::String::iterator *a2, const KB::String::iterator *a3)
{
  v5 = *a2;
  v6 = KB::String::iterator::offset(a2);
  v7 = (v5 + v6);
  v8 = (KB::String::iterator::offset(a3) - v6);

  return KB::String::append(this, v7, v8);
}

KB::String *KB::String::append(KB::String *this, const KB::String *a2)
{
  if (*a2)
  {
    v3 = this;
    if (!*(this + 6))
    {
      KB::String::internalize_buffer(this);
    }

    if (*(a2 + 1))
    {
      v4 = *(a2 + 1);
    }

    else
    {
      v4 = a2 + 16;
    }

    return KB::String::append(v3, v4, 0xFFFFuLL);
  }

  return this;
}

unsigned __int16 *KB::String::append(unsigned __int16 *this, const char *__s1, size_t __n)
{
  if (__s1)
  {
    v4 = this;
    this = strnlen(__s1, __n);
    v5 = this;
    if (this)
    {
      v6 = this;
      if (!*(v4 + 6))
      {
        KB::String::internalize_buffer(v4);
      }

      KB::String::ensure_capacity(v4, *v4 + v6);
      v7 = *(v4 + 1);
      if (!v7)
      {
        v7 = v4 + 8;
      }

      this = memcpy(v7 + *v4, __s1, v5);
      v8 = *v4 + v6;
      *v4 = v8;
      v9 = *(v4 + 1);
      if (!v9)
      {
        v9 = v4 + 8;
      }

      *(v9 + v8) = 0;
      v4[2] = 0;
    }
  }

  return this;
}

uint64_t *KB::String::replace_char@<X0>(uint64_t *__return_ptr a1@<X8>, KB::String *this@<X0>, const KB::String *a3@<X2>, int a4@<W1>)
{
  *a1 = 0x100000;
  *(a1 + 2) = 0;
  *(a1 + 6) = 0;
  a1[1] = 0;
  *(a1 + 16) = 0;
  v8 = *(this + 1);
  v9 = this + 16;
  if (v8)
  {
    v10 = *(this + 1);
  }

  else
  {
    v10 = this + 16;
  }

  v18 = v10;
  v11 = *this;
  v19 = 0;
  v20 = v11;
  v21 = 0;
  KB::String::iterator::initialize(&v18);
  while (1)
  {
    v12 = (v8 ? v8 : v9);
    v14 = v12;
    v15 = v11;
    v16 = v11;
    v17 = 0;
    result = KB::String::iterator::initialize(&v14);
    if (v19 == v15)
    {
      break;
    }

    if (v21 == a4)
    {
      KB::String::append(a1, a3);
    }

    else
    {
      KB::String::append(a1, v21);
    }

    KB::String::iterator::operator++(&v18);
    v11 = *this;
    v8 = *(this + 1);
  }

  return result;
}

uint64_t *KB::String::convert_via_map@<X0>(unsigned __int16 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  *a3 = 0x100000;
  *(a3 + 4) = 0;
  *(a3 + 6) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a1 + 1);
  v7 = a1 + 8;
  if (v6)
  {
    v8 = *(a1 + 1);
  }

  else
  {
    v8 = a1 + 8;
  }

  v15 = v8;
  v9 = *a1;
  v16 = 0;
  v17 = v9;
  v18 = 0;
  KB::String::iterator::initialize(&v15);
  while (1)
  {
    v10 = (v6 ? v6 : v7);
    v19 = v10;
    LODWORD(v20) = v9;
    HIDWORD(v20) = v9;
    v21 = 0;
    result = KB::String::iterator::initialize(&v19);
    if (v16 == v20)
    {
      break;
    }

    KB::String::String(&v19, v18);
    v13 = std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(a2, &v19, v12);
    if (v13)
    {
      v14 = (v13 + 6);
    }

    else
    {
      v14 = &v19;
    }

    KB::String::append(a3, v14);
    if (v20)
    {
      if (BYTE6(v19) == 1)
      {
        free(v20);
      }
    }

    KB::String::iterator::operator++(&v15);
    v9 = *a1;
    v6 = *(a1 + 1);
  }

  return result;
}