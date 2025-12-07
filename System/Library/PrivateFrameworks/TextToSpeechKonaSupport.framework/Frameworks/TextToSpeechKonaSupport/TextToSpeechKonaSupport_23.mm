uint64_t StreamArray::appendValue(StreamArray *this, unsigned int a2, int a3)
{
  v3 = *(this + 6);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (!v4)
  {
    return 0;
  }

  if (v5 <= 0xFFFE)
  {
    v9 = v5 | (a3 << 16);
LABEL_7:
    result = TimeValueQueue::push(this, v9);
    goto LABEL_8;
  }

  result = TimeValueQueue::push(this, (a3 << 16) | 0xFFFFu);
  if (result)
  {
    HIDWORD(v10) = a2;
    LODWORD(v10) = a2;
    v9 = v10 >> 16;
    goto LABEL_7;
  }

LABEL_8:
  *(this + 6) = a2;
  return result;
}

uint64_t StreamArray::fetchNext(StreamArray *this, unsigned int *a2, int *a3)
{
  if (TimeValueQueue::isEmpty(this))
  {
    return 0;
  }

  TimeValueQueue::pop(this, &v8);
  *a3 = SHIWORD(v8);
  if (v8 == 0xFFFF)
  {
    if (TimeValueQueue::isEmpty(this))
    {
      return 0;
    }

    TimeValueQueue::pop(this, &v8);
    v7 = HIWORD(v8) | (v8 << 16);
  }

  else
  {
    v7 = *(this + 7) + v8;
  }

  *a2 = v7;
  *(this + 7) = v7;
  return 1;
}

void StreamArrayList::~StreamArrayList(StreamArrayList *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = 0;
      v6 = v2 + 32 * v4;
      do
      {
        StreamArray::~StreamArray((v6 + v5 - 32));
        v5 -= 32;
      }

      while (-32 * v4 != v5);
    }

    MEMORY[0x27437BD90](v3, 0x1030C803AA113E6);
    *this = 0;
  }
}

void sub_26E1D46C8(_Unwind_Exception *a1)
{
  if (32 - 32 * v2 != v3)
  {
    v6 = 32 - (v3 + 32 * v2);
    v7 = (v4 - 64);
    do
    {
      StreamArray::~StreamArray(v7);
      v7 = (v8 - 32);
      v6 += 32;
    }

    while (v6);
  }

  MEMORY[0x27437BD90](v1, 0x1030C803AA113E6);
  _Unwind_Resume(a1);
}

void TimeValueQueue::TimeValueQueue(TimeValueQueue *this, unsigned int a2)
{
  *this = 0;
  *(this + 4) = a2;
  *(this + 10) = 0;
  *(this + 7) = a2;
  v3 = OUTLINED_FUNCTION_0_58(4 * a2);
  *this = v3;
  if (!v3)
  {
    *(this + 4) = 0;
  }
}

uint64_t TimeValueQueue::size(TimeValueQueue *this)
{
  v1 = *(this + 5);
  v2 = *(this + 6);
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    v4 += *(this + 4);
  }

  return v4;
}

void TimeValueQueue::~TimeValueQueue(TimeValueQueue *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
    *(this + 6) = 0;
    *this = 0;
  }
}

uint64_t TimeValueQueue::reset(TimeValueQueue *this)
{
  free(*this);
  result = OUTLINED_FUNCTION_0_58(4 * *(this + 7));
  *this = result;
  if (result)
  {
    *(this + 4) = *(this + 7);
    *(this + 10) = 0;
    return 1;
  }

  return result;
}

uint64_t TimeValueQueue::push(TimeValueQueue *this, int a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  v4 = *(this + 6);
  *(this + 6) = v4 + 1;
  *(v2 + 4 * v4) = a2;
  v5 = *(this + 6);
  if (v5 == *(this + 4))
  {
    v5 = 0;
    *(this + 6) = 0;
  }

  if (v5 != *(this + 5) || TimeValueQueue::expand(this))
  {
    return 1;
  }

  v7 = *(this + 6);
  if (!v7)
  {
    v7 = *(this + 4);
  }

  result = 0;
  *(this + 6) = v7 - 1;
  return result;
}

uint64_t TimeValueQueue::expand(TimeValueQueue *this)
{
  result = *this;
  if (result)
  {
    v3 = *(this + 4);
    OUTLINED_FUNCTION_1_54();
    v7 = malloc_type_realloc(v4, v5, v6);
    memmove(&v7[4 * *(this + 4)], v7, 4 * *(this + 6));
    memmove(v7, &v7[4 * *(this + 5)], 4 * *(this + 4));
    if (v7)
    {
      *this = v7;
      *(this + 5) = 0;
      *(this + 6) = *(this + 4);
      *(this + 4) = 2 * v3;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TimeValueQueue::pop(const void **a1, _DWORD *a2)
{
  result = TimeValueQueue::peekHead(a1, a2);
  if (result)
  {
    v4 = *(a1 + 5);
    if (*(a1 + 4) == (v4 + 1))
    {
      v5 = 0;
    }

    else
    {
      v5 = v4 + 1;
    }

    *(a1 + 5) = v5;

    return TimeValueQueue::shrinkIfNeeded(a1);
  }

  return result;
}

uint64_t TimeValueQueue::peekHead(uint64_t a1, _DWORD *a2)
{
  if (!*a1 || *(a1 + 10) == *(a1 + 12))
  {
    return 0;
  }

  *a2 = *(*a1 + 4 * *(a1 + 10));
  return 1;
}

uint64_t TimeValueQueue::shrinkIfNeeded(const void **this)
{
  v2 = *(this + 6);
  v3 = *(this + 5);
  v4 = v2 - v3;
  if (v2 <= v3)
  {
    v9 = *(this + 4);
    v4 = v9 - v3 + v2;
    if (v9 <= *(this + 7) || v4 >= (v9 >> 1))
    {
      return 1;
    }

    memmove(*this + 4 * v9 + -4 * v3, *this, 4 * *(this + 6));
    v6 = *this;
    v11 = *(this + 5);
    v7 = *this + 4 * v11;
    v8 = 4 * (*(this + 4) - v11);
  }

  else
  {
    v5 = *(this + 4);
    if (v5 <= *(this + 7) || v4 >= (v5 >> 1))
    {
      return 1;
    }

    v6 = *this;
    v7 = *this + 4 * v3;
    v8 = 4 * v4;
  }

  memmove(v6, v7, v8);
  v12 = *(this + 4);
  OUTLINED_FUNCTION_1_54();
  result = malloc_type_realloc(v14, *&v13 & 0x1FFFCLL, v15);
  if (!result)
  {
    return result;
  }

  *this = result;
  *(this + 5) = 0;
  *(this + 6) = v4;
  *(this + 4) = v12 >> 1;
  return 1;
}

_DWORD *TimeValueQueue::getElements(TimeValueQueue *this, unsigned int *a2)
{
  v4 = TimeValueQueue::size(this);
  result = OUTLINED_FUNCTION_0_58(4 * v4);
  if (result)
  {
    for (i = 0; v4 != i; ++i)
    {
      result[i] = *(*this + 4 * ((i + *(this + 5)) % *(this + 4)));
    }

    *a2 = v4;
  }

  return result;
}

void *OUTLINED_FUNCTION_0_58(size_t a1)
{

  return malloc_type_malloc(a1, 0x100004052888210uLL);
}

uint64_t setUserDictInputStream(uint64_t a1, const char *a2)
{
  if (!a2 || !*a2)
  {
    return 3;
  }

  for (i = 0; i < num_streams(a1); ++i)
  {
    v5 = stream_name(i);
    if (!strcmp(v5, a2))
    {
      break;
    }
  }

  v6 = 3;
  if (num_streams(a1) != i)
  {
    *(*(a1 + 208) + 120) = i;
    if (single_letter_stream(i))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  return v6;
}

uint64_t UserDict::buildHashTable(UserDict *this, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 256;
  }

  v4 = 1;
  v5 = hashNew(v3, 1, 1);
  *(this + 513) = v5;
  if (!v5)
  {
    return 0;
  }

  *(this + 1028) = 1;
  return v4;
}

uint64_t UserDict::UserDict(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_50(a1);
  UserDict::loadDictionary(v2, v3, v4, v5, v6, v7, v8, v9);
  return a1;
}

uint64_t UserDict::loadDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_4_44();
  v20 = *MEMORY[0x277D85DE8];
  DictFile = UserDict::findDictFile(v11, v8, v19, v12, v13, v14, v15, v16);
  if (DictFile == -1)
  {
    return 1;
  }

  if (!DictFile)
  {
    return 0;
  }

  if (*(v9 + 513) || UserDict::buildHashTable(v9, (DictFile / 15)))
  {
    UserDict::loadHashTable(v9, v10, v19);
    strcpy(v9, v8);
    return 0;
  }

  return 2;
}

off_t UserDict::findDictFile(UserDict *this, const char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (fileFindInPath(a2, a3, a3, a4, a5, a6, a7, a8) && !stat(a3, &v10))
  {
    return v10.st_size;
  }

  else
  {
    return -1;
  }
}

uint64_t UserDict::loadHashTable(UserDict *a1, uint64_t a2, uint64_t a3)
{
  v10[72] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v10);
  Line = std::ifstream::open();
  while (UserDict::readNextLine(Line, v10, v9))
  {
    Line = UserDict::parseNextLine(a1, a2, v9, __s, v7);
    if (Line)
    {
      Line = UserDict::addOneEntry(a1, __s, v7);
    }
  }

  std::ifstream::close(v10);
  std::ifstream::~ifstream(v10);
  return 1;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 24;
  *a1 = MEMORY[0x277D82858] + 24;
  v3 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  std::istream::basic_istream[abi:ne200100](a1, (MEMORY[0x277D82808] + 8), a1 + 2);
  *a1 = v2;
  a1[53] = v3;
  MEMORY[0x27437BC80](a1 + 2);
  return a1;
}

void sub_26E1D50CC(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x27437BD70](v1);
  _Unwind_Resume(a1);
}

BOOL UserDict::readNextLine(uint64_t a1, void *a2, _BYTE *a3)
{
  if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
  {
    return 0;
  }

  std::istream::getline[abi:ne200100](a2, a3, 704);
  return *a3 != 0;
}

uint64_t UserDict::parseNextLine(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t a4, uint64_t a5)
{
  while (1)
  {
    result = *a3;
    if (!*a3)
    {
      break;
    }

    if (!isspace(result))
    {
      v11 = *a3;
      if (!*a3)
      {
        return 0;
      }

      v12 = 0;
      do
      {
        if (v11 == 9 || v12 == 704)
        {
          break;
        }

        result = UserDict::proofCharacter(a1, a2, v11);
        if (!result)
        {
          return result;
        }

        *(a4 + v12) = a3[v12];
        v11 = a3[++v12];
      }

      while (v11);
      v13 = a4 + v12;
      *(a4 + v12) = 0;
      v14 = &a3[v12];
      do
      {
        v15 = v13;
        if (v13 <= a4)
        {
          break;
        }

        --v13;
      }

      while (isspace(*(v15 - 1)));
      *v15 = 0;
      while (1)
      {
        result = *v14;
        if (result != 9 && result != 32)
        {
          break;
        }

        ++v14;
      }

      if (*v14)
      {
        v16 = 0;
        do
        {
          if (v16 == 704)
          {
            break;
          }

          if (isspace(result))
          {
            v17 = 32;
          }

          else
          {
            result = UserDict::proofCharacter(a1, a2, v14[v16]);
            if (!result)
            {
              return result;
            }

            v17 = v14[v16];
          }

          *(a5 + v16) = v17;
          LODWORD(result) = v14[++v16];
        }

        while (result);
        v18 = 1 - v16;
        v19 = (a5 + v16 + 1);
        do
        {
          v20 = *(v19 - 2);
          --v19;
        }

        while (v20 == 32 && v18++ != 0);
        *v19 = 0;
        return 1;
      }

      return result;
    }

    ++a3;
  }

  return result;
}

uint64_t UserDict::addOneEntry(UserDict *this, const char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 < 0x81)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 129;
  }

  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  if (!v8)
  {
    return 2;
  }

  if (strlen(__s) < 0x81)
  {
    strcpy(v8, __s);
  }

  else
  {
    strncpy(v8, __s, 0x80uLL);
    if (strlen(__s) >= 0x80)
    {
      v8[128] = 0;
    }
  }

  v9 = strlen(a3);
  v10 = v9 < 0x201 ? v9 + 1 : 513;
  v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
  if (!v11)
  {
    return 2;
  }

  if (strlen(a3) < 0x201)
  {
    strcpy(v11, a3);
  }

  else
  {
    strncpy(v11, a3, 0x200uLL);
    if (strlen(a3) >= 0x200)
    {
      v11[512] = 0;
    }
  }

  inserted = hashInsertString(*(this + 513), v8, v11);
  result = 2;
  if (inserted)
  {
    *(this + 1028) = 2;
    return 0;
  }

  return result;
}

void std::ifstream::close(void *a1)
{
  if (!std::filebuf::close())
  {
    v2 = (a1 + *(*a1 - 24));

    std::ios_base::setstate[abi:ne200100](v2, 4);
  }
}

uint64_t *std::ifstream::~ifstream(uint64_t *a1)
{
  std::ifstream::~ifstream(a1, MEMORY[0x277D82808]);
  MEMORY[0x27437BD70](a1 + 53);
  return a1;
}

uint64_t std::istream::getline[abi:ne200100](void *a1, uint64_t a2, uint64_t a3)
{
  v6 = std::ios::widen[abi:ne200100]((a1 + *(*a1 - 24)), 10);

  return MEMORY[0x2821F7808](a1, a2, a3, v6);
}

int isspace(int _c)
{
  return __istype(_c, 0x4000uLL);
}

{
  return MEMORY[0x282202938](*&_c);
}

uint64_t UserDict::proofCharacter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v13[1] = 0;
  v11 = &v12;
  v10 = 0;
  v9 = &v10;
  v13[0] = a3;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  return non_unique_value(a2, *(*(a2 + 208) + 120), 0, v13, &v11, &v9, &v8, &v7, &v6, &v5, &v4);
}

uint64_t UserDict::saveDictionary(UserDict *this, const char *a2)
{
  v13[71] = *MEMORY[0x277D85DE8];
  std::ofstream::basic_ofstream(v13);
  std::ofstream::open();
  if (*(&v13[4] + *(v13[0] - 24)))
  {
    v10 = 1;
  }

  else
  {
    v4 = *(this + 513);
    if (v4)
    {
      if (hashIterConstruct(v12, v4))
      {
        do
        {
          v5 = hashIterString(v12);
          v6 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, v5);
          v7 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "\t");
          v8 = hashIterRef(v12);
          v9 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, v8);
          std::endl[abi:ne200100]<char,std::char_traits<char>>(v9);
        }

        while (hashIterNext(v12));
      }

      std::ofstream::close(v13);
      chmod(a2, 0x180u);
    }

    else
    {
      std::ofstream::close(v13);
      chmod(a2, 0x180u);
    }

    v10 = 0;
  }

  std::ofstream::~ofstream(v13);
  return v10;
}

void sub_26E1D5724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::ofstream::~ofstream(va);
  _Unwind_Resume(a1);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x277D82860] + 24;
  *a1 = MEMORY[0x277D82860] + 24;
  v3 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  std::ostream::basic_ostream[abi:ne200100](a1, (MEMORY[0x277D82810] + 8), a1 + 1);
  *a1 = v2;
  a1[52] = v3;
  MEMORY[0x27437BC80](a1 + 1);
  return a1;
}

void sub_26E1D57FC(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x27437BD70](v1);
  _Unwind_Resume(a1);
}

void std::ofstream::close(void *a1)
{
  if (!std::filebuf::close())
  {
    v2 = (a1 + *(*a1 - 24));

    std::ios_base::setstate[abi:ne200100](v2, 4);
  }
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios::widen[abi:ne200100]((a1 + *(*a1 - 24)), 10);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t *std::ofstream::~ofstream(uint64_t *a1)
{
  std::ofstream::~ofstream(a1, MEMORY[0x277D82810]);
  MEMORY[0x27437BD70](a1 + 52);
  return a1;
}

uint64_t UserDict::update(UserDict *this, const char *a2, const char *a3)
{
  OUTLINED_FUNCTION_4_44();
  v7 = *(v6 + 4104);
  if (!v7)
  {
    if (!UserDict::buildHashTable(v4, 256))
    {
      return 2;
    }

    v7 = *(v4 + 4104);
  }

  if (hashLookupString(v7, v5))
  {
    hashDeleteString(*(v4 + 4104), v5, 1, 1);
    if (!v3)
    {
      result = 0;
      *(v4 + 4112) = 2;
      return result;
    }
  }

  else if (!v3)
  {
    return 0;
  }

  return UserDict::addOneEntry(v4, v5, v3);
}

uint64_t UserDict::findFirst(UserDict *this, const char **a2, const char **a3)
{
  v4 = *(this + 513);
  if (!v4 || !hashIterConstruct(this + 4120, v4))
  {
    return 4;
  }

  *a2 = hashIterString(this + 4120);
  v7 = hashIterRef(this + 4120);
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t UserDict::findNext(UserDict *this, const char **a2, const char **a3)
{
  OUTLINED_FUNCTION_4_44();
  if (!hashIterNext(v6 + 4120))
  {
    return 4;
  }

  *v5 = hashIterString(v4 + 4120);
  v7 = hashIterRef(v4 + 4120);
  result = 0;
  *v3 = v7;
  return result;
}

uint64_t UserDict::lookup(UserDict *this, char *a2)
{
  if (a2 && *a2 && (v2 = *(this + 513)) != 0)
  {
    return hashLookupString(v2, a2);
  }

  else
  {
    return 0;
  }
}

void DictionarySet::DictionarySet()
{
  OUTLINED_FUNCTION_0_59();
  *(v0 + 32) = v1;
  OUTLINED_FUNCTION_5_43();
}

{
  OUTLINED_FUNCTION_0_59();
  *(v0 + 32) = v1;
  OUTLINED_FUNCTION_5_43();
}

void DictionarySet::~DictionarySet(DictionarySet *this)
{
  OUTLINED_FUNCTION_0_59();
  if (*v2)
  {
    UserDict::~UserDict(*v2);
  }

  OUTLINED_FUNCTION_6_42();
  if (*(v1 + 8))
  {
    UserDict::~UserDict(*(v1 + 8));
  }

  OUTLINED_FUNCTION_6_42();
  if (*(v1 + 16))
  {
    UserDict::~UserDict(*(v1 + 16));
  }

  OUTLINED_FUNCTION_6_42();
  v3 = *(*(v1 + 32) + 208);
  if (**(v1 + 24) == *(v3 + 112))
  {
    *(v3 + 112) = 0;
  }
}

uint64_t UserDict::lookupAndTranslate(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  if (!*(a1 + 4104))
  {
    return 2;
  }

  if (!sync_in_stm(a2, *(a2[26] + 120), a3) || !sync_in_stm(a2, *(a2[26] + 120), a4) || !extract_string(a2, *(a2[26] + 120), a3, a4, (a1 + 4144), 80))
  {
    return 3;
  }

  v8 = hashLookupString(*(a1 + 4104), (a1 + 4144));
  if (!v8)
  {
    return 5;
  }

  v9 = v8;
  del_two_point(a2, *(a2[26] + 120), a3, a4);
  *(a2[23] + 452) = 1;
  if (insert_string(a2, *(a2[26] + 120), a4, v9))
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t UserDict::lookupUndo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (!*(a1 + 4144))
  {
    return 5;
  }

  del_two_point(a2, *(a2[26] + 120), a3, a4);
  *(a2[23] + 452) = 1;
  if (insert_string(a2, *(a2[26] + 120), a4, (a1 + 4144)))
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x27437BC90](a1 + 2);

  return std::istream::~istream();
}

int __istype(__darwin_ct_rune_t _c, unint64_t _f)
{
  if (_c <= 0x7F)
  {
    return (*(MEMORY[0x277D85DE0] + 4 * _c + 60) & _f) != 0;
  }

  else
  {
    return __maskrune(_c, _f) != 0;
  }
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x27437BC90](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t *std::istream::basic_istream[abi:ne200100](uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[1];
  a1[1] = 0;
  std::ios::init[abi:ne200100]((a1 + *(*a1 - 24)), a3);
  return a1;
}

void std::ios::init[abi:ne200100](std::ios_base *a1, void *a2)
{
  std::ios_base::init(a1, a2);
  a1[1].__vftable = 0;
  a1[1].__fmtflags_ = -1;
}

uint64_t std::ios::widen[abi:ne200100](const std::ios_base *a1, uint64_t a2)
{
  std::ios_base::getloc(a1);
  v3 = std::use_facet[abi:ne200100]<std::ctype<char>>(&v6);
  v4 = (v3->__vftable[2].~facet_0)(v3, a2);
  std::locale::~locale(&v6);
  return v4;
}

uint64_t *std::ostream::basic_ostream[abi:ne200100](uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[1];
  std::ios::init[abi:ne200100]((a1 + *(*a1 - 24)), a3);
  return a1;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x27437BCE0](v12, a1);
  if (v12[0] == 1)
  {
    v6 = (a1 + *(*a1 - 24));
    rdbuf = v6->__rdbuf_;
    fmtflags = v6->__fmtflags_;
    v9 = std::ios::fill[abi:ne200100](v6);
    if ((fmtflags & 0xB0) == 0x20)
    {
      v10 = a2 + a3;
    }

    else
    {
      v10 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(rdbuf, a2, v10, a2 + a3, v6, v9))
    {
      std::ios_base::setstate[abi:ne200100]((a1 + *(*a1 - 24)), 5);
    }
  }

  MEMORY[0x27437BCF0](v12);
  return a1;
}

void sub_26E1D652C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x27437BCF0](&a9, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v9 + *(*v9 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x26E1D6510);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::string::value_type __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if ((a3 - a2 < 1 || (*(*a1 + 96))(a1) == a3 - a2) && (v12 < 1 || ((std::string::__init(&v17, v12, __c), (v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v13 = &v17) : (v13 = v17.__r_.__value_.__r.__words[0]), v14 = (*(*v6 + 96))(v6, v13, v12), std::string::~string(&v17), v14 == v12)) && ((v15 = a4 - a3, v15 < 1) || (*(*v6 + 96))(v6, a3, v15) == v15))
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t std::ios::fill[abi:ne200100](const std::ios_base *a1)
{
  fmtflags = a1[1].__fmtflags_;
  if (fmtflags == -1)
  {
    fmtflags = std::ios::widen[abi:ne200100](a1, 32);
    a1[1].__fmtflags_ = fmtflags;
  }

  return fmtflags;
}

uint64_t OUTLINED_FUNCTION_1_55(uint64_t result)
{
  *(result + 4104) = 0;
  *(result + 4112) = 0;
  *result = 0;
  *(result + 4144) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_50(uint64_t result)
{
  *(result + 4104) = 0;
  *(result + 4112) = 0;
  *result = 0;
  *(result + 4144) = 0;
  return result;
}

void OUTLINED_FUNCTION_5_43()
{

  operator new();
}

void OUTLINED_FUNCTION_6_42()
{

  JUMPOUT(0x27437BDA0);
}

void *settvar_s()
{
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_1_56();
  if (v0)
  {
    OUTLINED_FUNCTION_9_41();
  }

  v1 = OUTLINED_FUNCTION_4_45();
  return vinitflds(v1, v2, v3, v4);
}

void *settvar_l()
{
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_1_56();
  if (v0)
  {
    OUTLINED_FUNCTION_9_41();
  }

  v1 = OUTLINED_FUNCTION_4_45();
  return vinitflds(v1, v2, v3, v4);
}

void *settvar_lng()
{
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_1_56();
  if (v0)
  {
    OUTLINED_FUNCTION_9_41();
  }

  v1 = OUTLINED_FUNCTION_4_45();
  return vinitflds(v1, v2, v3, v4);
}

void *settvar_i()
{
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_1_56();
  if (v0)
  {
    OUTLINED_FUNCTION_9_41();
  }

  v1 = OUTLINED_FUNCTION_4_45();
  return vinitflds(v1, v2, v3, v4);
}

void *settvar_f()
{
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_1_56();
  if (v0)
  {
    OUTLINED_FUNCTION_9_41();
  }

  v1 = OUTLINED_FUNCTION_4_45();
  return vinitflds(v1, v2, v3, v4);
}

void settvar_v(uint64_t a1, unsigned __int8 *a2, __int16 *a3)
{
  OUTLINED_FUNCTION_1_56();
  if (v6)
  {
    save_var(a1, a2);
  }

  v7[0] = 0;
  v7[1] = 0;
  vinitloc_new(a1, v7, a3);
  vinitflds(a1, *a2, a2 + 16, v7[0]);
  if ((*a3 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_11_41();
  }
}

void copyvar(uint64_t a1, __int16 *a2, __int16 *a3)
{
  OUTLINED_FUNCTION_1_56();
  if (v6)
  {
    save_var(a1, a2);
  }

  v8[0] = 0;
  v8[1] = 0;
  v7[0] = 0;
  v7[1] = 0;
  vinitloc_new(a1, v8, a2);
  vinitloc_new(a1, v7, a3);
  vassign(a1, v8, v7);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }

  if ((*a3 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_11_41();
  }
}

void c_assvar(uint64_t a1, __int16 *a2)
{
  OUTLINED_FUNCTION_1_56();
  if (v4)
  {
    save_var(v3, a2);
  }

  if ((*a2 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_11_41();
  }
}

void assok(uint64_t a1, __int16 *a2)
{
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }
}

void noass(uint64_t a1, __int16 *a2)
{
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }
}

__n128 savescptr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 192);
  if (*(v6 + 8096))
  {
    save_var(a1, a3);
    v6 = *(a1 + 192);
  }

  *(a3 + 8) = *(v6 + 8080);
  v7 = *(a1 + 200);
  v8 = *(v7 + 288);
  v9 = *(v7 + 1720) - v8;
  v10 = *(v7 + 1728);
  *v9 = 3;
  *(v9 + 8) = a2;
  v11 = *(v7 + 284);
  v12 = v9 - v11;
  *(v7 + 1720) = v12;
  *(v7 + 1728) = v10 - (v8 + v11);
  *v12 = 1;
  result = *(v6 + 8080);
  *(v12 + 8) = result;
  return result;
}

uint64_t savetok(uint64_t a1, __int16 *a2)
{
  v16[0] = 0;
  v16[1] = 0;
  v15 = 0;
  v3 = *(a1 + 192);
  v4 = *(v3 + 8080);
  v5 = *(v3 + 8088);
  v6 = *(v4 + 8 * v5 + 24) & 0xFFFFFFFFFFFFFFFCLL;
  if (!v6)
  {
LABEL_4:
    v8 = 1;
    result = 1;
    if (*a2 < 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  while ((*v6 & 2) != 0)
  {
    v6 = *(v6 + 8 * v5 + 24) & 0xFFFFFFFFFFFFFFFCLL;
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  v10 = OUTLINED_FUNCTION_4_45();
  vinitloc_new(v10, v11, v12);
  v13 = *(a1 + 192) + 4096;
  LOWORD(v15) = *(*(a1 + 192) + 8088);
  v14 = (v6 + 16);
  BYTE2(v15) = 0;
  if (*(v13 + 4000))
  {
    vpush_var(a1, v16);
  }

  vassign(a1, v16, &v14);
  v8 = 0;
  result = 0;
  if ((*a2 & 0x80000000) == 0)
  {
LABEL_5:
    a2[1] = -1;
    return v8;
  }

  return result;
}

void dur_ass(uint64_t a1, unsigned __int8 a2, __int16 *a3, uint64_t a4)
{
  v6 = a2;
  if (vrange_2pt(a1, (a1 + 112), a1 + 144, a2, a4))
  {
    if (*a3 < 0)
    {
      return;
    }
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0;
    v10 = 0;
    v12[0] = &v10;
    v12[1] = 65533;
    v7 = OUTLINED_FUNCTION_4_45();
    vinitloc_new(v7, v8, v9);
    vassign(a1, v12, v11);
    vdur_ass(a1, (a1 + 112), (a1 + 144), v6, v10);
    if (*a3 < 0)
    {
      return;
    }
  }

  OUTLINED_FUNCTION_11_41();
}

void setscan_l(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (!OUTLINED_FUNCTION_6_43(a1, a2, a3) && *(v3 + 112))
  {
    OUTLINED_FUNCTION_2_51();
    if (v5)
    {
      OUTLINED_FUNCTION_0_60(v4);
      *v6 = 256;
    }
  }
}

uint64_t vtstsnc_tv(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    return 0;
  }

  v4 = vnormalize(a1, a2, a3);
  result = 1;
  if (v4 >= 3)
  {
    *(a2 + 24) = 1;
    return 0;
  }

  return result;
}

void setscan_r(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (!OUTLINED_FUNCTION_6_43(a1, a2, a3) && *(v3 + 112))
  {
    OUTLINED_FUNCTION_2_51();
    if (v5)
    {
      OUTLINED_FUNCTION_0_60(v4);
      *v6 = 257;
    }
  }
}

uint64_t lpta_loadp_setscan_l(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!OUTLINED_FUNCTION_3_48(a1, a2, a3))
  {
    if (*v4)
    {
      OUTLINED_FUNCTION_2_51();
      if (v7)
      {
        v3 = 0;
        OUTLINED_FUNCTION_0_60(v6);
        *v8 = 256;
      }
    }
  }

  return v3;
}

uint64_t lpta_loadp_setscan_r(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!OUTLINED_FUNCTION_3_48(a1, a2, a3))
  {
    if (*v4)
    {
      OUTLINED_FUNCTION_2_51();
      if (v7)
      {
        v3 = 0;
        OUTLINED_FUNCTION_0_60(v6);
        *v8 = 257;
      }
    }
  }

  return v3;
}

uint64_t rpta_loadp_setscan_l(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!OUTLINED_FUNCTION_5_44(a1, a2, a3))
  {
    if (*(v4 + 112))
    {
      OUTLINED_FUNCTION_10_41();
      if (v7)
      {
        OUTLINED_FUNCTION_8_42(v6);
        *v8 = 256;
      }
    }
  }

  return v3;
}

uint64_t rpta_loadp_setscan_r(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!OUTLINED_FUNCTION_5_44(a1, a2, a3))
  {
    if (*(v4 + 112))
    {
      OUTLINED_FUNCTION_10_41();
      if (v7)
      {
        OUTLINED_FUNCTION_8_42(v6);
        *v8 = 257;
      }
    }
  }

  return v3;
}

void setscan_nof_l(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (!OUTLINED_FUNCTION_6_43(a1, a2, a3) && *(v3 + 112))
  {
    OUTLINED_FUNCTION_2_51();
    if (v5)
    {
      OUTLINED_FUNCTION_0_60(v4);
      *v6 = 0;
    }
  }
}

uint64_t setscan_nof_r(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (OUTLINED_FUNCTION_6_43(a1, a2, a3) || !*(v3 + 112))
  {
    return 1;
  }

  OUTLINED_FUNCTION_2_51();
  result = 1;
  if (v6)
  {
    OUTLINED_FUNCTION_0_60(v5);
    *v8 = v7;
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 112) = *(a2 + 8);
  *(a1 + 136) = 1;
  *(a1 + 128) = 0;

  return vtstsnc_tv(a1, a1 + 112, a3);
}

uint64_t OUTLINED_FUNCTION_5_44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 168) = 1;
  *(a1 + 144) = *(a2 + 8);
  *(a1 + 128) = 0;

  return vtstsnc_tv(a1, a1 + 112, a3);
}

uint64_t OUTLINED_FUNCTION_6_43(__int16 *a1, uint64_t a2, uint64_t a3)
{

  return vtstsnc_tv(a1, (a1 + 56), a3);
}

void *OUTLINED_FUNCTION_9_41()
{

  return save_var(v1, v0);
}

uint64_t chstream(void *a1, uint64_t a2, unsigned int a3)
{
  while (1)
  {
    v6 = a1[24];
    if (*(*(v6 + 8080) + 8 * (*(v6 + 9084) + a3)))
    {
      break;
    }

    v7 = 1;
    if (!vscanadv(a1, 0, 1))
    {
      return v7;
    }
  }

  v7 = 0;
  v8 = a1[25];
  v9 = *(v8 + 288);
  v10 = *(v8 + 1720) - v9;
  *v10 = 3;
  v11 = *(v8 + 1728);
  *(v10 + 8) = a2;
  v12 = *(v8 + 284);
  v13 = v10 - v12;
  *(v8 + 1720) = v13;
  *(v8 + 1728) = v11 - (v9 + v12);
  *v13 = 1;
  *(v13 + 8) = *(v6 + 8080);
  *(a1[35] + *(a1[33] + a3)) = 1;
  *(a1[24] + 8088) = a3;
  return v7;
}

BOOL conj_merge(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = visleft(a1, *(*(a1 + 192) + 8080), v4);
  v6 = *(a1 + 192);
  v7 = *(v6 + 8080);
  if (v5)
  {
    v8 = v6 + 4096;
    while (v4 != v7)
    {
      if (!v4 || (*v4 & 2) == 0)
      {
        return 1;
      }

      v4 = (*&v4[8 * *(v8 + 3992) + 24] & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (*(v8 + 3993))
    {
      return 0;
    }

    goto LABEL_17;
  }

  v9 = visright(a1, v7, v4);
  v10 = *(a1 + 192);
  v7 = *(v10 + 8080);
  if (v9)
  {
    while (v4 != v7)
    {
      if (!v4 || (*v4 & 2) == 0)
      {
        return 1;
      }

      v4 = (*&v4[8 * *(v10 + 9084) + 8 * *(v10 + 8088)] & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (*(v10 + 8089) != 1)
    {
      return 0;
    }

LABEL_17:
    *(a2 + 8) = v7;
    return 0;
  }

  return v7 != v4;
}

uint64_t proj_def_mult(uint64_t result, unsigned int a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = result;
  v7 = a2;
  if (a2)
  {
    do
    {
      *(v6 + 136) = 1;
      *(v6 + 112) = *(a4 + 8);
      *(v6 + 128) = 0;
      ++a3;
      result = proj_def();
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t proj_def()
{
  OUTLINED_FUNCTION_5_45();
  if (!vsync_tv(v2, v3, v4) || (result = vdef_proj(v0, *(v0 + 112), v1), !result))
  {

    forceErrorBacktrack(v0);
  }

  return result;
}

uint64_t proj_l(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (!vsync_tv(a1, (a1 + 72), a3) || (v4 = OUTLINED_FUNCTION_19_33(), result = vproj_l(v4, v5, v6, v7), !result))
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

uint64_t proj_r()
{
  OUTLINED_FUNCTION_5_45();
  if (!vsync_tv(v1, v2, v3) || (v4 = OUTLINED_FUNCTION_19_33(), result = vproj_r(v4, v5, v6, v7), !result))
  {

    forceErrorBacktrack(v0);
  }

  return result;
}

uint64_t merge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!vsync_tv(a1, a1 + 112, a3) || !vsync_tv(a1, a1 + 144, v4))
  {
    forceErrorBacktrack(a1);
  }

  if (!vmergable(a1, *(a1 + 112), *(a1 + 144)))
  {
    forceErrorBacktrack(a1);
  }

  v6 = *(a1 + 112);
  v7 = *(a1 + 144);

  return vmerge(a1, v6, v7, v5);
}

uint64_t initdelta(uint64_t a1, unsigned int a2, char *a3)
{
  if (a2)
  {
    if (*(a1 + 288) == a2)
    {
      freeDeltaHeapTo(a1, *(*(a1 + 200) + 8), 0);
      deltaReinit(a1, 1);
    }

    else
    {
      v7 = a2;
      do
      {
        if (!vinit_stm(a1, *a3))
        {
          forceErrorBacktrack(a1);
        }

        --v7;
        ++a3;
      }

      while (v7);
    }
  }

  else
  {
    for (i = 0; i < *(a1 + 288); ++i)
    {
      if (!vinit_stm(a1, i))
      {
        forceErrorBacktrack(a1);
      }
    }
  }

  return vscaninit(a1);
}

uint64_t delete_1pt()
{
  OUTLINED_FUNCTION_5_45();
  if (!vsync_tv(v2, v3, v4) || (result = vdel_1pt(v0, v1, *(v0 + 112)), !result))
  {

    forceErrorBacktrack(v0);
  }

  return result;
}

uint64_t delete_2pt(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  OUTLINED_FUNCTION_1_57();
  if (vrange_2pt(v6, v7, v8, v9, v10))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_43();
  vdel_2pt(a1, v4, v12, v13);
  return 0;
}

uint64_t mark_v(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4, uint64_t a5)
{
  v6 = a3;
  v7 = a2;
  OUTLINED_FUNCTION_1_57();
  if (vrange_2pt(v9, v10, v11, v12, v13))
  {
    v14 = 1;
    result = 1;
    if (*a4 < 0)
    {
      return result;
    }

    goto LABEL_3;
  }

  v32 = 0;
  v33 = 0;
  vinitloc_new(a1, &v32, a4);
  if (v33 == *&vstmtbl[12 * v7 + 1][40 * v6 + 30])
  {
    v24 = OUTLINED_FUNCTION_12_41(v16, v17, v18, v19, v20, v21, v22, v23, v32);
    if (v33 >= 0xFFFAu)
    {
      OUTLINED_FUNCTION_12_41(v24, v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  v14 = 0;
  result = 0;
  if ((*a4 & 0x80000000) == 0)
  {
LABEL_3:
    a4[1] = -1;
    return v14;
  }

  return result;
}

uint64_t mark_s()
{
  OUTLINED_FUNCTION_4_46();
  v13 = v0;
  OUTLINED_FUNCTION_1_57();
  if (vrange_2pt(v1, v2, v3, v4, v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_61();
  if (v7 == -1)
  {
    OUTLINED_FUNCTION_14_39();
    OUTLINED_FUNCTION_7_43(v8, v9, v10, v11, v12, &v13);
  }

  return 0;
}

uint64_t mark_l()
{
  OUTLINED_FUNCTION_4_46();
  v13 = v0;
  OUTLINED_FUNCTION_1_57();
  if (vrange_2pt(v1, v2, v3, v4, v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_61();
  if (v7 == -2)
  {
    OUTLINED_FUNCTION_14_39();
    OUTLINED_FUNCTION_7_43(v8, v9, v10, v11, v12, &v13);
  }

  return 0;
}

uint64_t mark_lng()
{
  OUTLINED_FUNCTION_4_46();
  v13 = v0;
  OUTLINED_FUNCTION_1_57();
  if (vrange_2pt(v1, v2, v3, v4, v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_61();
  if (v7 == -3)
  {
    OUTLINED_FUNCTION_14_39();
    OUTLINED_FUNCTION_7_43(v8, v9, v10, v11, v12, &v13);
  }

  return 0;
}

uint64_t mark_i()
{
  OUTLINED_FUNCTION_4_46();
  v13 = v0;
  OUTLINED_FUNCTION_1_57();
  if (vrange_2pt(v1, v2, v3, v4, v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_61();
  if (v7 == -4)
  {
    OUTLINED_FUNCTION_14_39();
    OUTLINED_FUNCTION_7_43(v8, v9, v10, v11, v12, &v13);
  }

  return 0;
}

uint64_t mark_f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_46();
  v17 = v4;
  OUTLINED_FUNCTION_1_57();
  if (vrange_2pt(v5, v6, v7, v8, v9))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_61();
  if (v11 == -5)
  {
    OUTLINED_FUNCTION_14_39();
    OUTLINED_FUNCTION_7_43(v12, v13, v14, v15, v16, &v17);
  }

  return 0;
}

uint64_t insert_2pt(uint64_t *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v6 = a3;
  OUTLINED_FUNCTION_1_57();
  if (vrange_2pt(v9, v10, v11, v12, v13))
  {
    return 1;
  }

  visnonseq(a1, a2, a1[14], a1[18]);
  if (ins_tokens(a1, a2, a4, v6))
  {
    return 0;
  }

  else
  {
    return 245;
  }
}

void insert_2ptv()
{
  OUTLINED_FUNCTION_3_49();
  if (vrange_2pt(v5, (v5 + 112), v5 + 144, v3, v6))
  {
    if ((*v0 & 0x80000000) == 0)
    {
      OUTLINED_FUNCTION_9_42();
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_42();
    if (v4 < 0 && (v7 = STMTYP(v3), v4 != v7))
    {
      STMTYP(v3);
      OUTLINED_FUNCTION_10_42();
      switch(v18)
      {
        case 0:
          v19 = v1[24];
          v20 = 8256;
          goto LABEL_18;
        case 1:
        case 3:
          v19 = v1[24];
          v20 = 8242;
          goto LABEL_18;
        case 2:
          v19 = v1[24];
          v20 = 8200;
          goto LABEL_18;
        case 4:
          v19 = v1[24];
          v20 = 8194;
LABEL_18:
          v31 = v19 + v20;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_2_52(vstmtbl, v29, v30, v31, v32, v33);
      OUTLINED_FUNCTION_16_38(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
      OUTLINED_FUNCTION_8_43();
      v17 = &v31;
    }

    else
    {
      OUTLINED_FUNCTION_6_44(v7, v8, v9, v10, v11, v12, v13, v14, v29);
      OUTLINED_FUNCTION_8_43();
      v17 = &v29;
    }

    if (!vins_tok(v1, v2, v15, v16, v17))
    {
      forceErrorBacktrack(v1);
    }

    if ((*v0 & 0x80000000) == 0)
    {
      OUTLINED_FUNCTION_9_42();
    }
  }
}

uint64_t insert_l(uint64_t a1, char a2)
{
  if (!vrange_l() || (result = OUTLINED_FUNCTION_15_38(), !result))
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

uint64_t insert_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_57();
  if (!vrange_r() || (result = OUTLINED_FUNCTION_15_38(), !result))
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

void insert_lv()
{
  OUTLINED_FUNCTION_3_49();
  if (!vrange_l())
  {
    forceErrorBacktrack(v1);
  }

  OUTLINED_FUNCTION_11_42();
  if (v4 < 0 && (v5 = STMTYP(v3), v4 != v5))
  {
    STMTYP(v3);
    OUTLINED_FUNCTION_10_42();
    switch(v16)
    {
      case 0:
        v17 = v1[24];
        v18 = 8256;
        goto LABEL_16;
      case 1:
      case 3:
        v17 = v1[24];
        v18 = 8242;
        goto LABEL_16;
      case 2:
        v17 = v1[24];
        v18 = 8200;
        goto LABEL_16;
      case 4:
        v17 = v1[24];
        v18 = 8194;
LABEL_16:
        v29 = v17 + v18;
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_2_52(vstmtbl, v27, v28, v29, v30, v31);
    OUTLINED_FUNCTION_16_38(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_8_43();
    v15 = &v29;
  }

  else
  {
    OUTLINED_FUNCTION_6_44(v5, v6, v7, v8, v9, v10, v11, v12, v27);
    OUTLINED_FUNCTION_8_43();
    v15 = &v27;
  }

  if (!vins_tok(v1, v2, v13, v14, v15))
  {
    forceErrorBacktrack(v1);
  }

  if ((*v0 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_9_42();
  }
}

void insert_rv()
{
  OUTLINED_FUNCTION_3_49();
  if (!vrange_r())
  {
    forceErrorBacktrack(v1);
  }

  OUTLINED_FUNCTION_11_42();
  if (v4 < 0 && (v5 = STMTYP(v3), v4 != v5))
  {
    STMTYP(v3);
    OUTLINED_FUNCTION_10_42();
    switch(v16)
    {
      case 0:
        v17 = v1[24];
        v18 = 8256;
        break;
      case 1:
      case 3:
        v17 = v1[24];
        v18 = 8242;
        break;
      case 2:
        v17 = v1[24];
        v18 = 8200;
        break;
      case 4:
        v17 = v1[24];
        v18 = 8194;
        break;
      default:
        forceErrorBacktrack(v1);
    }

    OUTLINED_FUNCTION_2_52(vstmtbl, v27, v28, v17 + v18, v30, v31);
    OUTLINED_FUNCTION_16_38(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_8_43();
    v15 = &v29;
  }

  else
  {
    OUTLINED_FUNCTION_6_44(v5, v6, v7, v8, v9, v10, v11, v12, v27);
    OUTLINED_FUNCTION_8_43();
    v15 = &v27;
  }

  if (!vins_tok(v1, v2, v13, v14, v15))
  {
    forceErrorBacktrack(v1);
  }

  if ((*v0 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_9_42();
  }
}

uint64_t generate()
{
  OUTLINED_FUNCTION_5_45();
  if (!vprt_range(v2, v3, (v2 + 72)) || (result = vgen(v0, v0 + 112, (v0 + 144), *(v0 + 192) + 8160, v1), !result))
  {

    forceErrorBacktrack(v0);
  }

  return result;
}

void gendef_framedur()
{
  OUTLINED_FUNCTION_18_37();
  OUTLINED_FUNCTION_13_40(v1, v2, v3, v4, v5);
  vassign(v0, &v7, v8);
  OUTLINED_FUNCTION_20_33(8152);
  if ((v6 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_9_42();
  }
}

uint64_t gendef_timestm(uint64_t result, char a2)
{
  v2 = *(result + 192) + 4096;
  *(v2 + 4040) = a2;
  *(v2 + 4056) |= 2u;
  return result;
}

uint64_t gendef_params()
{
  OUTLINED_FUNCTION_17_38();
  *(v2 + 4041) = v4;
  if ((*(v2 + 4056) & 4) != 0)
  {
    v5 = *(v3 + 8144);
  }

  else
  {
    v5 = dynaBufNew(v1);
    *(v3 + 8144) = v5;
  }

  for (result = dynaBufReset(v5); v1; --v1)
  {
    v7 = *v0++;
    result = dynaBufAddChar(*(v3 + 8144), v7, 0);
  }

  *(v2 + 4056) |= 4u;
  return result;
}

void gencur_framedur()
{
  OUTLINED_FUNCTION_18_37();
  OUTLINED_FUNCTION_13_40(v1, v2, v3, v4, v5);
  vassign(v0, &v7, v8);
  OUTLINED_FUNCTION_20_33(8184);
  if ((v6 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_9_42();
  }
}

uint64_t gencur_timestm(uint64_t result, char a2)
{
  v2 = *(result + 192) + 4096;
  *(v2 + 4072) = a2;
  *(v2 + 4088) |= 2u;
  return result;
}

uint64_t gencur_params()
{
  OUTLINED_FUNCTION_17_38();
  *(v2 + 4073) = v4;
  if ((*(v2 + 4088) & 4) != 0)
  {
    v5 = *(v3 + 8176);
  }

  else
  {
    v5 = dynaBufNew(v1);
    *(v3 + 8176) = v5;
  }

  for (result = dynaBufReset(v5); v1; --v1)
  {
    v7 = *v0++;
    result = dynaBufAddChar(*(v3 + 8176), v7, 0);
  }

  *(v2 + 4088) |= 4u;
  return result;
}

void OUTLINED_FUNCTION_2_52(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char a6)
{
  a6 = *(*(a1 + 96 * v8 + 8) + 32);

  vinitloc_new(v7, &a2, v6);
}

void OUTLINED_FUNCTION_6_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  vinitloc_new(v10, &a9, v9);
}

uint64_t OUTLINED_FUNCTION_7_43(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{

  return vmark(v8, v7, v6, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_12_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = v11[14];
  v14 = v11[18];

  return vmark(v11, v10, v9, v13, v14, a9);
}

void OUTLINED_FUNCTION_13_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  vinitloc_new(a1, va, v5);
}

uint64_t OUTLINED_FUNCTION_15_38()
{

  return ins_tokens(v0, v3, v1, v2);
}

void OUTLINED_FUNCTION_16_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  vassign(v10, va, &a9);
}

uint64_t ccode_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x2460uLL, 0x10F004041F5ADEFuLL);
  *(a1 + 192) = v2;
  bzero(v2, 0x2460uLL);

  return ccode_misc_new(a1);
}

void ccode_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 192);
    if (v2)
    {
      bzero(v2, 0x2460uLL);
      free(*(a1 + 192));
      *(a1 + 192) = 0;
    }
  }
}

void forceErrorBacktrack(uint64_t a1)
{
  v1 = *(a1 + 192);
  *(v1 + 8012) = 1;
  longjmp(*(v1 + 8016), 1);
}

void get_parm(uint64_t a1, uint64_t a2, __int16 *a3, __int16 a4)
{
  v18[0] = 0;
  v18[1] = 0;
  *a2 = a4;
  switch(a4)
  {
    case -6:
      *(a2 + 8) = *(a3 + 1);
      v6 = *(a1 + 192);
      v7 = *v6;
      if (v7 <= 998)
      {
        *v6 = v7 + 1;
        *&v6[2 * v7 + 2] = a2;
      }

      return;
    case -5:
      OUTLINED_FUNCTION_2_53();
      if (v10)
      {
        v16 = OUTLINED_FUNCTION_3_50();
        goto LABEL_28;
      }

      if (v15 == 65532)
      {
        v16 = a3[1];
        goto LABEL_28;
      }

      if (v15 == 65533)
      {
        v16 = COERCE__INT64(OUTLINED_FUNCTION_3_50());
LABEL_28:
        *(a2 + 8) = v16;
        return;
      }

      if ((v15 & 0x80000000) == 0)
      {
        vinitloc_new(v14, v18, a3);
        *(a2 + 8) = *v18[0];
        goto LABEL_31;
      }

      return;
    case -4:
      OUTLINED_FUNCTION_2_53();
      if (v10)
      {
        v17 = OUTLINED_FUNCTION_3_50();
      }

      else
      {
        if (v9 != 65532)
        {
          if (v9 == 65533)
          {
            *(a2 + 2) = *(a3 + 1);
          }

          else if ((v9 & 0x80000000) == 0)
          {
            vinitloc_new(v8, v18, a3);
            *(a2 + 2) = *v18[0];
            goto LABEL_31;
          }

          return;
        }

        LOWORD(v17) = a3[1];
      }

      *(a2 + 2) = v17;
      return;
    case -3:
      OUTLINED_FUNCTION_2_53();
      if (v10)
      {
        v13 = OUTLINED_FUNCTION_3_50();
        goto LABEL_24;
      }

      if (v12 == 65532)
      {
        v13 = a3[1];
        goto LABEL_24;
      }

      if (v12 == 65533)
      {
        v13 = *(a3 + 1);
LABEL_24:
        *(a2 + 8) = v13;
        return;
      }

      if ((v12 & 0x80000000) == 0)
      {
        vinitloc_new(v11, v18, a3);
        *(a2 + 8) = *v18[0];
LABEL_31:
        if ((*a3 & 0x80000000) == 0)
        {
          a3[1] = -1;
        }
      }

      return;
    default:
      return;
  }
}

void vinitloc_new(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v5 = *a3;
  if (v5 < 0)
  {
    *(a2 + 8) = v5;
    v9 = v5 + 6;
    if (v9 > 3u)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    v10 = (a3 + *&asc_26E1F7E98[8 * v9]);
    goto LABEL_7;
  }

  v6 = a3[1];
  if (v6 == -1)
  {
    v8 = 0;
    *(a2 + 8) = v5;
    v10 = a3 + 8;
LABEL_7:
    *a2 = v10;
    goto LABEL_9;
  }

  *a2 = (*&vstmtbl[12 * *a3 + 2][8 * v6])(a3 + 8);
  v7 = &vstmtbl[12 * *a3 + 1][40 * v6];
  *(a2 + 8) = *(v7 + 15);
  v8 = v7[32];
LABEL_9:
  *(a2 + 10) = v8;
}

uint64_t push_ptr_init(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  *a2 = -6;
  v2 = *(a1 + 192);
  v3 = *v2;
  if (v3 > 998)
  {
    return 0;
  }

  *v2 = v3 + 1;
  *&v2[2 * v3 + 2] = a2;
  return 1;
}

uint64_t set_saved_ptrs(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 8 * (*(result + 16) & ~(*(result + 16) >> 31));
  while (v4 != v3)
  {
    v5 = *(*(result + 24) + v3);
    if (*v5 == a2)
    {
      *v5 = a3;
    }

    v3 += 8;
  }

  v6 = *(result + 192);
  v7 = v6[2002];
  v10 = *v6;
  v8 = v6 + 2;
  v9 = v10;
  while (v9 >= 1)
  {
    for (i = v7; i < v9; ++i)
    {
      v12 = *&v8[2 * i];
      if (*(v12 + 8) == a2)
      {
        *(v12 + 8) = a3;
      }
    }

    v9 = v7 - 2;
    v7 = v8[2 * v7 - 2];
  }

  return result;
}

uint64_t for_loop_preamble(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(a1 + 192);
  v6 = v5 + 4096;
  *(v5 + 8056) = a3;
  *(v5 + 8064) = a2;
  *(v5 + 8096) = 0;
  *(a1 + 136) = 1;
  v7 = *(a5 + 8);
  *(a1 + 112) = v7;
  if (!v7 || (*(v7 + 8 * (*(v5 + 9084) + a4)) & 1) == 0)
  {
    return 0;
  }

  *(v5 + 8080) = v7;
  *(v5 + 8088) = a4;
  v8 = 1;
  *(v6 + 3994) = 1;
  *(*(a1 + 280) + *(*(a1 + 264) + a4)) = 1;
  return v8;
}

uint64_t vback(void *a1, int a2)
{
  if (*(a1[24] + 8012))
  {
    return -1;
  }

  while (2)
  {
    v5 = a1[25];
    v6 = *(v5 + 1720);
    switch(*v6)
    {
      case 0:
        OUTLINED_FUNCTION_0_62(v5);
        if (a2)
        {
          continue;
        }

        break;
      case 1:
        OUTLINED_FUNCTION_0_62(v5);
        *(a1[24] + 8080) = *(v6 + 8);
        continue;
      case 2:
        v7 = *(v5 + 280);
        v8 = *(v6 + 16);
        v9 = v7 + ((v8 - 1) | 3) + 1;
        *(v5 + 1728) += v9;
        *(v5 + 1720) = v6 + v9;
        memcpy(*(v6 + 8), (v6 + v7), v8);
        continue;
      case 3:
        OUTLINED_FUNCTION_0_62(v5);
        if (a2 || !vscanadv(a1, 0, 1))
        {
          continue;
        }

        break;
      case 4:
        OUTLINED_FUNCTION_0_62(v5);
        a2 -= a2 > 0;
        continue;
      case 5:
        OUTLINED_FUNCTION_0_62(v5);
        *(v10 + 1760) = *(v6 + 8);
        continue;
      case 6:
        OUTLINED_FUNCTION_0_62(v5);
        ++a2;
        continue;
      default:
        return -1;
    }

    break;
  }

  return *(v6 + 8);
}

uint64_t vinitrun(int *a1)
{
  v2 = 0;
  *(*(a1 + 24) + 8121) = 0;
  while (1)
  {
    v3 = *(a1 + 288);
    if (v2 >= v3)
    {
      break;
    }

    *(*(a1 + 31) + v2) = 0;
    *(*(a1 + 33) + v2) = *(a1 + 288);
    *(*(a1 + 35) + v2++) = 0;
  }

  *(*(a1 + 35) + v3) = 0;
  v5 = *(a1 + 24);
  v4 = *(a1 + 25);
  v7 = *v4;
  v6 = v4[1];
  v8 = *(a1 + 12);
  *(*(a1 + 11) + 8) = v7;
  *(v8 + 8) = v6;
  *(v5 + 8152) = 0;
  *(v5 + 8184) = 0;
  *(v5 + 9296) = 0;
  v9 = *(v5 + 8024);
  if (v9 == 255 || v9 == 249)
  {
    result = vdltinit(a1, 1);
    if (!result)
    {
      return result;
    }

    v11 = *(a1 + 25);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(a1 + 12);
    *(*(a1 + 11) + 8) = v13;
    *(v14 + 8) = v12;
  }

  v15 = 0;
  v16 = 0;
  *(*(a1 + 23) + 452) = 0;
  while (v16 < *a1)
  {
    OUTLINED_FUNCTION_1_58();
    ++v16;
    v15 += 16;
  }

  return 1;
}

void *save_var(uint64_t a1, __int16 *a2)
{
  v4[0] = 0;
  v4[1] = 0;
  vinitloc_new(a1, v4, a2);
  return vpush_var(a1, v4);
}

uint64_t ventproc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 104) = 0;
  if (!a2)
  {
    return 1;
  }

  v7 = *(a1 + 192);
  v8 = *v7;
  if (v8 > 998)
  {
    return 1;
  }

  result = 0;
  v10 = v7[2002];
  *v7 = v8 + 1;
  *&v7[2 * v8 + 2] = v10;
  v11 = *(a1 + 192);
  *(v11 + 8008) = *v11;
  *a2 = *(v11 + 8104);
  *(a2 + 32) = *(v11 + 8056);
  v12 = *(a1 + 192);
  v13 = *(a1 + 200);
  *(a2 + 48) = *(v12 + 8096);
  v14 = *(v13 + 1720);
  *(a2 + 56) = *(v12 + 8112);
  *(a2 + 64) = v14;
  *(a2 + 72) = *(v13 + 1760);
  *(a2 + 80) = *(v12 + 8121);
  *(a2 + 88) = *(v12 + 8016);
  *(a2 + 96) = *(v12 + 8080);
  v15 = *(a1 + 128);
  *(a2 + 112) = *(a1 + 112);
  *(a2 + 128) = v15;
  v16 = *(a1 + 160);
  *(a2 + 144) = *(a1 + 144);
  *(a2 + 160) = v16;
  v17 = *(a1 + 192);
  v18 = *(a1 + 200);
  *(a2 + 176) = *(v17 + 8120);
  *(a2 + 177) = *(v18 + 272);
  v19 = *(v18 + 276);
  v20 = *(v18 + 1720) - v19;
  LODWORD(v14) = *(v18 + 1728);
  *(v18 + 1720) = v20;
  *(v18 + 1728) = v14 - v19;
  *v20 = 7;
  v21 = *(a1 + 248);
  *(a1 + 248) = a4;
  v22 = *(a1 + 264);
  *(v20 + 8) = a2;
  *(v20 + 16) = v22;
  *(a1 + 264) = a3;
  v23 = *(a1 + 280);
  *(v20 + 24) = v21;
  *(v20 + 32) = v23;
  *(a1 + 280) = a5;
  *(v17 + 8112) = v20;
  *(v17 + 8016) = a6;
  return result;
}

BOOL vretproc(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (*v2 < 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
    v4 = *(v2 + 8008) - 1;
    *v2 = v4;
    *(v2 + 8008) = *(v2 + 8 * v4 + 8);
  }

  v5 = *(v2 + 8112);
  v6 = *(v5 + *(*(a1 + 200) + 276));
  freeDeltaStackTo(a1, v5);
  v7 = *(a1 + 192);
  v8 = *(*(a1 + 200) + 1720);
  v9 = v8[2];
  *(a1 + 248) = v8[3];
  v10 = *(v5 + 8);
  *(a1 + 264) = v9;
  *(a1 + 280) = v8[4];
  *(v7 + 8104) = *v10;
  *(v7 + 8056) = *(v10 + 32);
  v11 = *(a1 + 192);
  *(v11 + 8096) = *(v10 + 48);
  v12 = *(v10 + 64);
  *(v11 + 8112) = *(v10 + 56);
  freeDeltaStackTo(a1, v12);
  v13 = *(a1 + 192);
  *(*(a1 + 200) + 1760) = *(v10 + 72);
  *(v13 + 8121) = *(v10 + 80);
  *(v13 + 8016) = *(v10 + 88);
  *(v13 + 8080) = *(v10 + 96);
  v14 = *(v10 + 128);
  *(a1 + 112) = *(v10 + 112);
  *(a1 + 128) = v14;
  v15 = *(v10 + 160);
  *(a1 + 144) = *(v10 + 144);
  *(a1 + 160) = v15;
  v16 = *(a1 + 192);
  v17 = *(a1 + 200);
  *(v16 + 8120) = *(v10 + 176);
  *(v17 + 272) = *(v10 + 177);
  *(v16 + 9296) = 0;
  if (v6 == 8)
  {
    *(*(a1 + 184) + 432) = 234;
    return *(v16 + 8012) != 0;
  }

  else if (*(v16 + 8012))
  {
    forceErrorBacktrack(a1);
  }

  return v3;
}

uint64_t freeDeltaStackTo(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 1744);
  if (v3)
  {
    *(v2 + 1720) = a2;
    *(v2 + 1728) = *(v2 + 1780) + a2 - *(v3 + 32);
  }

  return result;
}

uint64_t vprt_var(uint64_t result, uint64_t a2, __int16 *a3)
{
  v3 = a2;
  v4 = result;
  v9 = *MEMORY[0x277D85DE8];
  switch(*a3)
  {
    case -6:
      v5 = *(a3 + 1);
      if (v5 == 1)
      {
        v6 = "dangling";
      }

      else
      {
        if (v5)
        {
          absoluteSyncNum(result, v5);
          goto LABEL_15;
        }

        v6 = "NULL";
      }

      return vf_puts(result, v3, v6, 1);
    case -5:
      __sprintf_chk(__s1, 0, 0x50uLL, "%f");
      return vf_puts(v4, v3, __s1, 1);
    case -4:
LABEL_15:
      __sprintf_chk(__s1, 0, 0x50uLL, "%d");
      return vf_puts(v4, v3, __s1, 1);
    case -3:
      __sprintf_chk(__s1, 0, 0x50uLL, "%ld");
      return vf_puts(v4, v3, __s1, 1);
    default:
      v7 = a3[1];
      if (v7 == 255)
      {
        return result;
      }

      disptok(result, a3 + 16, *a3, v7, __s1);
      if (__s1[0] == 92)
      {
        cleanLiteral(__s1, 0, 0);
      }

      return vf_puts(v4, v3, __s1, 1);
  }
}

void initGlobalVars(int *result)
{
  v2 = 0;
  v3 = result[4];
  while (v2 < v3)
  {
    **(*(result + 3) + 8 * v2++) = 0;
  }

  v4 = 0;
  for (i = 0; i < *result; ++i)
  {
    OUTLINED_FUNCTION_1_58();
    v4 += 16;
  }

  v6 = 0;
  v7 = 8 * (result[1] & ~(result[1] >> 31));
  while (v7 != v6)
  {
    **(*(result + 5) + v6) = 0;
    v6 += 8;
  }

  v8 = 0;
  v9 = 8 * (result[2] & ~(result[2] >> 31));
  while (v9 != v8)
  {
    **(*(result + 6) + v8) = 0;
    v8 += 8;
  }

  v10 = 0;
  v11 = 8 * (result[3] & ~(result[3] >> 31));
  while (v11 != v10)
  {
    **(*(result + 7) + v10) = 0;
    v10 += 8;
  }
}

uint64_t runtime_new(uint64_t result)
{
  if (result)
  {
    v1 = result;
    init_new(result);
    ccode_new(v1);
    delta_lib_new(v1);
    dlang_new(v1);
  }

  return result;
}

double runtime_delete(uint64_t a1)
{
  if (a1)
  {
    init_delete(a1);
    ccode_delete(a1);
    delta_lib_delete(a1);
    dlang_delete(a1);
    logio_delete(a1);
    eloqc_delete(a1);
    result = 0.0;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
  }

  return result;
}

void OUTLINED_FUNCTION_1_58()
{
  v4 = *(v0 + 32) + v1;
  v5 = *v4;
  v6 = *(v4 + 12);
  *v5 = *(v4 + 8);
  v5[1] = v2;

  bzero(v5 + 8, v6);
}

uint64_t startloop(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 192) + 8064) = a2;
  result = clearDeltaStackBack(a1);
  *(*(a1 + 192) + 8096) = 0;
  return result;
}

uint64_t clearDeltaStackBack(uint64_t a1)
{
  v1 = *(*(a1 + 200) + 1760);
  if (*v1 == 8)
  {
    v1 = *(*(a1 + 192) + 8112);
  }

  return freeDeltaStackTo_0(a1, v1);
}

uint64_t forall_adv_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_51(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_44();
  result = OUTLINED_FUNCTION_11_43();
  if (result)
  {
    OUTLINED_FUNCTION_1_59();
    *(v8 + v7) = 1;
    return OUTLINED_FUNCTION_2_54();
  }

  return result;
}

uint64_t forall_adv_upto_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_51(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_44();
  OUTLINED_FUNCTION_20_34(v7, v8, v9, v10);
  OUTLINED_FUNCTION_6_45();
  if (v12 || (*v11 & 2) != 0)
  {
    return 0;
  }

  result = OUTLINED_FUNCTION_11_43();
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_20_34(result, v14, v15, v16);
  OUTLINED_FUNCTION_6_45();
  if (v12 || (*v17 & 2) != 0)
  {
    return 0;
  }

  clearDeltaStackBack(v6);
  return OUTLINED_FUNCTION_0_63();
}

uint64_t forall_adv_over_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_51(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_44();
  OUTLINED_FUNCTION_20_34(v6, v7, v8, v9);
  OUTLINED_FUNCTION_6_45();
  if (v11 || (*v10 & 2) != 0)
  {
    return 0;
  }

  result = OUTLINED_FUNCTION_11_43();
  if (result)
  {
    OUTLINED_FUNCTION_1_59();
    *(v14 + v13) = 1;
    return OUTLINED_FUNCTION_2_54();
  }

  return result;
}

uint64_t forall_adv_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_51(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_40();
  if (v8)
  {
    OUTLINED_FUNCTION_9_43(result);
    result = OUTLINED_FUNCTION_11_43();
    if (result)
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_63();
    }
  }

  return result;
}

uint64_t forall_adv_upto_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_51(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_40();
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_9_43(result);
    OUTLINED_FUNCTION_20_34(v9, v10, v11, v12);
    OUTLINED_FUNCTION_5_46();
    if (v14 || (*v13 & 2) != 0)
    {
      return 0;
    }

    result = OUTLINED_FUNCTION_11_43();
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_20_34(result, v15, v16, v17);
    OUTLINED_FUNCTION_5_46();
    if (v14 || (*v18 & 2) != 0)
    {
      return 0;
    }

    else
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_63();
    }
  }

  return result;
}

uint64_t forall_adv_over_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_51(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_40();
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_9_43(result);
    OUTLINED_FUNCTION_20_34(v8, v9, v10, v11);
    OUTLINED_FUNCTION_5_46();
    if (v13 || (*v12 & 2) != 0)
    {
      return 0;
    }

    else
    {
      result = OUTLINED_FUNCTION_11_43();
      if (result)
      {
        OUTLINED_FUNCTION_1_59();
        *(v15 + v14) = 1;
        return OUTLINED_FUNCTION_2_54();
      }
    }
  }

  return result;
}

uint64_t forto_adv_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_51(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_44();
  result = OUTLINED_FUNCTION_11_43();
  if (result)
  {
    OUTLINED_FUNCTION_10_43();
    if (v8)
    {
      return 0;
    }

    else
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_63();
    }
  }

  return result;
}

uint64_t forto_adv_upto_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_51(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_44();
  OUTLINED_FUNCTION_15_39();
  OUTLINED_FUNCTION_4_47();
  if (v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_42();
  if (v7 || (*v8 & 2) != 0)
  {
    return 0;
  }

  result = OUTLINED_FUNCTION_11_43();
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_21_32();
  if (v7)
  {
    return 0;
  }

  vscanadvUptoTokenOrMarker(v6, v10, 0);
  OUTLINED_FUNCTION_4_47();
  if (v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_42();
  if (v7 || (*v11 & 2) != 0)
  {
    return 0;
  }

  clearDeltaStackBack(v6);
  return OUTLINED_FUNCTION_0_63();
}

uint64_t forto_adv_over_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_51(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_44();
  OUTLINED_FUNCTION_15_39();
  OUTLINED_FUNCTION_4_47();
  if (v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_42();
  if (v7 || (*v8 & 2) != 0)
  {
    return 0;
  }

  result = OUTLINED_FUNCTION_11_43();
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_10_43();
  if (v7)
  {
    return 0;
  }

  clearDeltaStackBack(v6);
  return OUTLINED_FUNCTION_0_63();
}

uint64_t forto_adv_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_51(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_40();
  if (v8)
  {
    OUTLINED_FUNCTION_9_43(result);
    result = OUTLINED_FUNCTION_11_43();
    if (result)
    {
      OUTLINED_FUNCTION_10_43();
      if (v9)
      {
        return 0;
      }

      else
      {
        clearDeltaStackBack(v6);
        return OUTLINED_FUNCTION_0_63();
      }
    }
  }

  return result;
}

uint64_t forto_adv_upto_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_51(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_40();
  if (v8)
  {
    OUTLINED_FUNCTION_9_43(result);
    OUTLINED_FUNCTION_15_39();
    OUTLINED_FUNCTION_4_47();
    if (v9)
    {
      return 0;
    }

    OUTLINED_FUNCTION_7_44();
    if (v9 || (*v10 & 2) != 0)
    {
      return 0;
    }

    result = OUTLINED_FUNCTION_11_43();
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_21_32();
    if (v9)
    {
      return 0;
    }

    vscanadvUptoTokenOrMarker(v6, v11, 0);
    OUTLINED_FUNCTION_4_47();
    if (v9)
    {
      return 0;
    }

    OUTLINED_FUNCTION_7_44();
    if (v9 || (*v12 & 2) != 0)
    {
      return 0;
    }

    else
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_63();
    }
  }

  return result;
}

uint64_t forto_adv_over_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_51(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_40();
  if (v8)
  {
    OUTLINED_FUNCTION_9_43(result);
    OUTLINED_FUNCTION_15_39();
    OUTLINED_FUNCTION_4_47();
    if (v9)
    {
      return 0;
    }

    OUTLINED_FUNCTION_7_44();
    if (v9 || (*v10 & 2) != 0)
    {
      return 0;
    }

    result = OUTLINED_FUNCTION_11_43();
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_10_43();
    if (v9)
    {
      return 0;
    }

    else
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_63();
    }
  }

  return result;
}

uint64_t forall_to_test(uint64_t a1, __int16 *a2, __int16 *a3)
{
  OUTLINED_FUNCTION_16_39();
  vinitloc_new(v6, v7, a2);
  v8 = OUTLINED_FUNCTION_17_39();
  vinitloc_new(v8, v9, a3);
  vcompare(a1, v13, &v12);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }

  if ((*a3 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_34();
  }

  v10 = *(a1 + 192);
  if (*(v10 + 8120))
  {
    return 0;
  }

  *(a1 + 104) = *(v10 + 8064);
  return 2;
}

void forall_cont_from()
{
  OUTLINED_FUNCTION_13_41();
  if (v3)
  {
    save_var(v2, v1);
  }

  OUTLINED_FUNCTION_16_39();
  vinitloc_new(v2, v4, v1);
  vinitloc_new(v2, v6, v0);
  vassign(v2, v7, v6);
  OUTLINED_FUNCTION_22_31();
  if ((v5 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_34();
  }

  if ((*v0 & 0x80000000) == 0)
  {
    v0[1] = -1;
  }
}

uint64_t for_adv(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4, __int16 *a5, __int16 *a6)
{
  OUTLINED_FUNCTION_18_38();
  *(v11 + 8056) = v10;
  *(v11 + 8064) = v12;
  *(v11 + 8096) = 0;
  vinitloc_new(v13, v24, v14);
  v15 = OUTLINED_FUNCTION_17_39();
  vinitloc_new(v15, v16, a6);
  vinitloc_new(v6, v23, a5);
  vadd(v6, v24, &v22);
  vcompare(v6, v24, v23);
  if ((*a4 & 0x80000000) == 0)
  {
    a4[1] = -1;
  }

  if ((*a5 & 0x80000000) == 0)
  {
    a5[1] = -1;
  }

  if ((*a6 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_34();
  }

  v17 = OUTLINED_FUNCTION_17_39();
  v19 = vnegative(v17, v18);
  v20 = *(*(v6 + 192) + 8120);
  if (v19)
  {
    if (v20 == 255)
    {
      return 0;
    }
  }

  else if (v20 == 1)
  {
    return 0;
  }

  return 2;
}

uint64_t for_test(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4)
{
  OUTLINED_FUNCTION_18_38();
  *(v8 + 8096) = 0;
  vinitloc_new(v9, v19, a2);
  vinitloc_new(v4, v18, a3);
  v10 = OUTLINED_FUNCTION_17_39();
  vinitloc_new(v10, v11, a4);
  vcompare(v4, v19, v18);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }

  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }

  if ((*a4 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_34();
  }

  v12 = OUTLINED_FUNCTION_17_39();
  v14 = vnegative(v12, v13);
  v15 = *(v4 + 192);
  v16 = *(v15 + 8120);
  if (v14)
  {
    if (v16 == 255)
    {
LABEL_9:
      *(v4 + 104) = *(v15 + 8064);
      return 2;
    }
  }

  else if (v16 == 1)
  {
    goto LABEL_9;
  }

  return 0;
}

void for_cont_from()
{
  OUTLINED_FUNCTION_13_41();
  if (v3)
  {
    save_var(v2, v1);
  }

  OUTLINED_FUNCTION_16_39();
  vinitloc_new(v2, v4, v1);
  vinitloc_new(v2, v6, v0);
  vassign(v2, v7, v6);
  OUTLINED_FUNCTION_22_31();
  if ((v5 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_34();
  }

  if ((*v0 & 0x80000000) == 0)
  {
    v0[1] = -1;
  }
}

uint64_t while_iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 192);
  *(v4 + 8056) = a3;
  *(v4 + 8064) = a2;
  result = clearDeltaStackBack(a1);
  *(*(a1 + 200) + 256) = 0;
  return result;
}

uint64_t freeDeltaStackTo_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 1744);
  if (v3)
  {
    *(v2 + 1720) = a2;
    *(v2 + 1728) = *(v2 + 1780) + a2 - *(v3 + 32);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_63()
{
  v3 = v2[24];
  *(v2[25] + 256) = 0;
  *(v3 + 8096) = 1;
  v2[13] = v1;
  *(v0 + 8) = *(v3 + 8080);
  return 2;
}

uint64_t OUTLINED_FUNCTION_1_59()
{
  result = clearDeltaStackBack(v0);
  *(*(v0 + 200) + 256) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_54()
{
  *(v3 + 104) = v2;
  *(v1 + 8) = *(v0 + 8080);
  return 2;
}

uint64_t OUTLINED_FUNCTION_3_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{

  return for_loop_preamble(a1, a2, a3, a5, a6);
}

uint64_t OUTLINED_FUNCTION_11_43()
{

  return vscanadv(v0, 1, 0);
}

uint64_t OUTLINED_FUNCTION_15_39()
{
  v3 = *(v1 + 8);

  return vscanadvUptoTokenOrMarker(v0, v3, 0);
}

uint64_t OUTLINED_FUNCTION_20_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return vscanadvUptoToken(v4, 0, a3, a4);
}

uint64_t OUTLINED_FUNCTION_22_31()
{
  v3 = *(v0 + 192);
  *(v3 + 8056) = v2;
  *(v3 + 8064) = v1;
  result = clearDeltaStackBack(v0);
  *(*(v0 + 200) + 256) = 0;
  return result;
}

uint64_t read_2pt(uint64_t a1, char a2, unsigned int a3)
{
  if (OUTLINED_FUNCTION_1_60(a1, a2, a3))
  {
    return 1;
  }

  v3 = OUTLINED_FUNCTION_2_55();
  if (vrange_2pt(v3, v4, v5, v6, v7))
  {
    return 1;
  }

  v9 = OUTLINED_FUNCTION_0_64();
  visnonseq(v9, v10, v11, v12);
  v13 = OUTLINED_FUNCTION_0_64();
  ins_rdtoks(v13, v14, v15, v16);
  return 0;
}

uint64_t read_l(uint64_t a1, char a2, unsigned int a3)
{
  if (OUTLINED_FUNCTION_1_60(a1, a2, a3))
  {
    return 1;
  }

  if (!vrange_l())
  {
    forceErrorBacktrack(v3);
  }

  v5 = OUTLINED_FUNCTION_0_64();
  visnonseq(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_0_64();
  ins_rdtoks(v9, v10, v11, v12);
  return 0;
}

uint64_t read_r(uint64_t a1, char a2, unsigned int a3)
{
  if (OUTLINED_FUNCTION_1_60(a1, a2, a3))
  {
    return 1;
  }

  OUTLINED_FUNCTION_2_55();
  if (!vrange_r())
  {
    forceErrorBacktrack(v3);
  }

  v5 = OUTLINED_FUNCTION_0_64();
  visnonseq(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_0_64();
  ins_rdtoks(v9, v10, v11, v12);
  return 0;
}

uint64_t read_nvar(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3_52(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11);
  result = vrd_nvar();
  if ((*v8 & 0x80000000) == 0)
  {
    v8[1] = -1;
  }

  return result;
}

BOOL read_tvar(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3_52(a1, a2, a3, a4, a5, a6, a7, a8, v13[0], v13[1]);
  v11 = vrd_tvar(v10, v9, v13);
  if ((*v8 & 0x80000000) == 0)
  {
    v8[1] = -1;
  }

  return v11 != 0;
}

uint64_t open_input(uint64_t a1, char a2)
{
  v3 = logicalFileName(a1, a2);
  result = logicalFileOpen(a1, v3, 0);
  if (!result)
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

uint64_t open_output(uint64_t a1, char a2)
{
  v3 = logicalFileName(a1, a2);
  result = logicalFileOpen(a1, v3, 1);
  if (!result)
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

uint64_t open_append(uint64_t a1, char a2)
{
  v3 = logicalFileName(a1, a2);
  result = logicalFileOpen(a1, v3, 2);
  if (!result)
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

void print_delta1(uint64_t a1, char a2, uint64_t a3, _BYTE *a4, unsigned int a5, char *a6, unsigned int a7)
{
  *&v17[126] = *MEMORY[0x277D85DE8];
  if (!vprt_range(a1, a1 + 112, a1 + 144))
  {
    forceErrorBacktrack(a1);
  }

  v16[0] = a5;
  v13 = a5;
  v16[1] = 0;
  v14 = v17;
  if (a5)
  {
    do
    {
      v15 = *a6++;
      *v14++ = v15;
      --v13;
    }

    while (v13);
  }

  lf_print_delta(a1, a2, *(a1 + 112), *(a1 + 144), a4, (a7 >> 1) & 1, 0, v16, 0, 0, 0, 80);
}

uint64_t print_stream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = a4;
  v7 = a3;
  if (!vprt_range(a1, a1 + 112, a1 + 144))
  {
    forceErrorBacktrack(a1);
  }

  v10 = *(a1 + 112);
  v11 = *(a1 + 144);

  return vprt_strm(a1, a2, v10, v11, v7, v6, a5);
}

uint64_t print_var(uint64_t a1, char a2, __int16 *a3)
{
  result = vprt_var(a1, a2, a3);
  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }

  return result;
}

void print_tvar(uint64_t a1, uint64_t a2, __int16 *a3)
{
  prt_tvar();
  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }
}

uint64_t OUTLINED_FUNCTION_1_60(uint64_t a1, char a2, unsigned int a3)
{
  v4 = a2;

  return vrd_delta(a1, v4, a3);
}

void OUTLINED_FUNCTION_3_52(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a9 = 0;
  a10 = 0;

  vinitloc_new(a1, &a9, a3);
}

uint64_t etiwinMain(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3 + 1;
  v7 = *(a1 + 184);
  v6 = *(a1 + 192);
  *(v6 + 9304) = v5;
  v8 = __OFSUB__(a2, 1);
  v9 = a2 - 1;
  *(v7 + 480) = v9;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    v4 = 0;
  }

  *(v7 + 488) = v4;
  *(v6 + 8872) = 0;
  if (vcmdinit(a1) && vinitrun(a1))
  {
    DeltaProc_main(a1);
    vcmdend(a1, 0);
  }

  return 1;
}

uint64_t etiwinMainDLL(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 184);
  *(v4 + 480) = a2 - 1;
  if (a2 < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a3 + 8);
  }

  *(v4 + 488) = v5;
  *(*(a1 + 192) + 8872) = 0;
  result = vcmdinit(a1);
  if (result)
  {
    return vinitrun(a1) != 0;
  }

  return result;
}

void dur_expr(uint64_t a1, char a2, __int16 *a3)
{
  if (!vtimept_tv(a1, a1 + 112, 0) || !vtimept_tv(a1, a1 + 144, 1))
  {
    forceErrorBacktrack(a1);
  }

  v10[1] = 0;
  v9[0] = 0;
  v9[1] = 0;
  vinitloc_new(a1, v9, a3);
  v6 = vdur(a1, a1 + 112, (a1 + 144), a2);
  if (v6 == -2147483647)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  OUTLINED_FUNCTION_0_65();
  v10[0] = &v8;
  vassign(a1, v9, v10);
  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }
}

void val_expr1(__int16 *a1, __int16 *a2, char a3, uint64_t a4)
{
  if (val_expr(a1, (a1 + 56), a3, a4, 0) == -2147483647)
  {
    if ((*a2 & 0x80000000) == 0)
    {
      a2[1] = -1;
    }

    forceErrorBacktrack(a1);
  }

  v7[0] = 0;
  v7[1] = 0;
  v8[1] = 0;
  OUTLINED_FUNCTION_0_65();
  v8[0] = v6;
  vinitloc_new(a1, v7, a2);
  vassign(a1, v7, v8);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }
}

uint64_t actd_lookup(__int16 *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!vprt_range(a1, (a1 + 56), (a1 + 72)))
  {
    forceErrorBacktrack(a1);
  }

  v8 = *(a1 + 9) + (a2 << 6);
  v9 = actdlookup(a1, *(a1 + 14), *(a1 + 18), v8);
  if (v9)
  {
    v10 = 0;
    *(*(a1 + 24) + 9300) = *(v9 + 1);
    while (1)
    {
      if (v10 == 2)
      {
        return 0;
      }

      v12 = *v9++;
      v11 = v12;
      if (v12 != 255)
      {
        v13 = 0;
        v14 = *(a1 + 14);
        while (v13 < v11)
        {
          if (v14 && (*v14 & 2) != 0)
          {
            v15 = &v14[8 * *(*(a1 + 24) + 9084) + 8 * *(v8 + 16)];
          }

          else
          {
            v15 = v14 + 8;
            ++v13;
          }

          v14 = (*v15 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v10)
        {
          v16 = a4;
          if (!a4)
          {
            goto LABEL_17;
          }

LABEL_16:
          *(v16 + 8) = v14;
          goto LABEL_17;
        }

        v16 = a3;
        if (a3)
        {
          goto LABEL_16;
        }
      }

LABEL_17:
      ++v10;
    }
  }

  return 1;
}

BOOL setd_lookup(__int16 *a1, unsigned __int8 a2, int a3)
{
  if (!*(a1 + 14) || !*(a1 + 18))
  {
    return 1;
  }

  if (!vprt_range(a1, (a1 + 56), (a1 + 72)))
  {
    forceErrorBacktrack(a1);
  }

  return setdlookup(a1, *(a1 + 14), *(a1 + 18), *(a1 + 8) + (a3 << 6), a2) == 0;
}

BOOL if_testeq_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_41();
  npush_lng(v9);

  return if_testeq(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testeq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_44(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_35(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_42();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_45();
  return v19 != 0;
}

BOOL if_testle_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_41();
  npush_lng(v9);

  return if_testle(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_44(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_35(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_42();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_45();
  return v19 == 1;
}

BOOL if_testge_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_41();
  npush_lng(v9);

  return if_testge(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_44(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_35(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_42();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_45();
  return v19 == 255;
}

BOOL if_testgt_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_41();
  npush_lng(v9);

  return if_testgt(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testgt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_44(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_35(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_42();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_45();
  return v19 != 1;
}

BOOL if_testlt_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_41();
  npush_lng(v9);

  return if_testlt(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testlt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_44(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_35(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_42();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_45();
  return v19 != 255;
}

BOOL if_testneq_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_41();
  npush_lng(v9);

  return if_testneq(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testneq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_44(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_35(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_42();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_45();
  return v19 == 0;
}

BOOL if_testeq_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_33(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_45();
  npush_i(v9);

  return if_testeq(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testle_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_33(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_45();
  npush_i(v9);

  return if_testle(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testge_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_33(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_45();
  npush_i(v9);

  return if_testge(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testgt_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_33(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_45();
  npush_i(v9);

  return if_testgt(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testlt_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_33(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_45();
  npush_i(v9);

  return if_testlt(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testneq_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_33(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_45();
  npush_i(v9);

  return if_testneq(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL testeq_tvars(uint64_t a1, __int16 *a2, __int16 *a3)
{
  compare_tvars(a1, a2, a3);

  return testeq(a1);
}

BOOL testneq_tvars(uint64_t a1, __int16 *a2, __int16 *a3)
{
  compare_tvars(a1, a2, a3);

  return testneq(a1);
}

BOOL testFldeq(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v4 = *(a1 + 192);
  v5 = *(v4 + 8080);
  while (1)
  {
    v6 = *(v4 + 8089) ? *(v4 + 9084) + *(v4 + 8088) : *(v4 + 8088) + 3;
    v5 = (*&v5[8 * v6] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v5)
    {
      break;
    }

    if ((*v5 & 2) == 0)
    {
      return *(*&vstmtbl[12 * a2 + 2][8 * a3])(v5 + 16) != a4;
    }
  }

  return 1;
}

void move_lng(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_39();
  OUTLINED_FUNCTION_16_40();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_14_41();
    save_var(v7, v8);
  }

  OUTLINED_FUNCTION_15_40();
  switch(v10)
  {
    case 0:
    case 3:
      *(v3 + 1) = a3;
      break;
    case 1:
      *(v3 + 1) = a3;
      break;
    case 2:
      v3[1] = a3;
      break;
    default:
      if (v9 < 0)
      {

        forceErrorBacktrack(v4);
      }

      OUTLINED_FUNCTION_12_43(0xFFFDu, v13, 0, 0, v14, v15);
      OUTLINED_FUNCTION_22_32(v11, v12);
      if ((*v3 & 0x80000000) == 0)
      {
        v3[1] = -1;
      }

      break;
  }
}

void move_i(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_18_39();
  OUTLINED_FUNCTION_16_40();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_14_41();
    save_var(v7, v8);
  }

  OUTLINED_FUNCTION_15_40();
  switch(v10)
  {
    case 0:
    case 3:
      *(v3 + 1) = a3;
      break;
    case 1:
      *(v3 + 1) = a3;
      break;
    case 2:
      v3[1] = a3;
      break;
    default:
      if (v9 < 0)
      {

        forceErrorBacktrack(v4);
      }

      OUTLINED_FUNCTION_12_43(0xFFFCu, v13, 0, 0, v14, v15);
      OUTLINED_FUNCTION_22_32(v11, v12);
      if ((*v3 & 0x80000000) == 0)
      {
        v3[1] = -1;
      }

      break;
  }
}

void move_f(double a1)
{
  OUTLINED_FUNCTION_18_39();
  OUTLINED_FUNCTION_16_40();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_14_41();
    save_var(v5, v6);
  }

  OUTLINED_FUNCTION_15_40();
  switch(v8)
  {
    case 0:
      goto LABEL_12;
    case 1:
      v1[1] = a1;
      return;
    case 2:
      v9 = a1;
      goto LABEL_10;
    case 3:
      *(v1 + 1) = a1;
      return;
    default:
      if (v7 < 0)
      {
LABEL_12:

        forceErrorBacktrack(v2);
      }

      OUTLINED_FUNCTION_12_43(0xFFFBu, v12, 0, 0, v13, v14);
      OUTLINED_FUNCTION_22_32(v10, v11);
      if ((*v1 & 0x80000000) == 0)
      {
        LOWORD(v9) = -1;
LABEL_10:
        *(v1 + 1) = v9;
      }

      return;
  }
}

void bspush_ca_boa()
{
  OUTLINED_FUNCTION_18_39();
  bspush_boa(v0);
  v1 = OUTLINED_FUNCTION_14_41();

  bspush_ca(v1);
}

double bspush_ca_scan_boa()
{
  OUTLINED_FUNCTION_18_39();
  bspush_boa(v0);
  v1 = OUTLINED_FUNCTION_14_41();

  *&result = bspush_ca_scan(v1, v2).n128_u64[0];
  return result;
}

uint64_t lpta_rpta_loadp(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 168) = 1;
  *(result + 136) = 1;
  *(result + 112) = *(a2 + 8);
  *(result + 144) = *(a3 + 8);
  *(result + 160) = 0;
  *(result + 128) = 0;
  return result;
}

void ins_tokens_s(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_26_29();
  OUTLINED_FUNCTION_19_35();
  if (v8)
  {
    OUTLINED_FUNCTION_4_48();
    OUTLINED_FUNCTION_3_53();
    OUTLINED_FUNCTION_24_29();
    switch(v9)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_17_40();
        OUTLINED_FUNCTION_11_44();
        while (v6 < v7)
        {
          ++v6;
          OUTLINED_FUNCTION_10_44();
          if (!v14)
          {
            OUTLINED_FUNCTION_13_42();
            vassign(v5, v15, v16);
          }

          if (!OUTLINED_FUNCTION_5_47(v10, v11, v12, v13))
          {
            break;
          }

          if (v6 < v7)
          {
            v17 = OUTLINED_FUNCTION_2_56();
            *(v5 + 112) = v17;
            if (!v17)
            {
              break;
            }
          }
        }

        break;
      default:
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
  }

  OUTLINED_FUNCTION_25_29();
}

void ins_tokens_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_26_29();
  OUTLINED_FUNCTION_19_35();
  if (v8)
  {
    OUTLINED_FUNCTION_4_48();
    OUTLINED_FUNCTION_3_53();
    OUTLINED_FUNCTION_24_29();
    switch(v9)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_17_40();
        OUTLINED_FUNCTION_11_44();
        OUTLINED_FUNCTION_6_46();
        while (v6 < v7)
        {
          OUTLINED_FUNCTION_10_44();
          if (!v14)
          {
            OUTLINED_FUNCTION_13_42();
            vassign(v5, v15, v16);
          }

          if (!OUTLINED_FUNCTION_5_47(v10, v11, v12, v13))
          {
            break;
          }

          v6 += 2;
          if (v6 < v7)
          {
            v17 = OUTLINED_FUNCTION_2_56();
            *(v5 + 112) = v17;
            if (!v17)
            {
              break;
            }
          }
        }

        break;
      default:
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
  }

  OUTLINED_FUNCTION_25_29();
}

void ins_tokens_lng(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_26_29();
  OUTLINED_FUNCTION_19_35();
  if (v8)
  {
    OUTLINED_FUNCTION_4_48();
    OUTLINED_FUNCTION_3_53();
    OUTLINED_FUNCTION_24_29();
    switch(v9)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_17_40();
        OUTLINED_FUNCTION_11_44();
        while (v6 < v7)
        {
          OUTLINED_FUNCTION_10_44();
          if (!v14)
          {
            OUTLINED_FUNCTION_13_42();
            vassign(v5, v15, v16);
          }

          if (!OUTLINED_FUNCTION_5_47(v10, v11, v12, v13))
          {
            break;
          }

          v6 += 4;
          if (v6 < v7)
          {
            v17 = OUTLINED_FUNCTION_2_56();
            *(v5 + 112) = v17;
            if (!v17)
            {
              break;
            }
          }
        }

        break;
      default:
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
  }

  OUTLINED_FUNCTION_25_29();
}

void ins_tokens_i(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_26_29();
  OUTLINED_FUNCTION_19_35();
  if (v8)
  {
    OUTLINED_FUNCTION_4_48();
    OUTLINED_FUNCTION_3_53();
    OUTLINED_FUNCTION_24_29();
    switch(v9)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        v10 = v6 + v7;
        OUTLINED_FUNCTION_11_44();
        while (v6 < v10)
        {
          OUTLINED_FUNCTION_10_44();
          if (!v15)
          {
            OUTLINED_FUNCTION_13_42();
            vassign(v5, v16, v17);
          }

          if (!OUTLINED_FUNCTION_5_47(v11, v12, v13, v14))
          {
            break;
          }

          v6 += 2;
          if (v6 < v10)
          {
            v18 = OUTLINED_FUNCTION_2_56();
            *(v5 + 112) = v18;
            if (!v18)
            {
              break;
            }
          }
        }

        break;
      default:
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
  }

  OUTLINED_FUNCTION_25_29();
}

uint64_t ins_tokens_f(uint64_t a1)
{
  OUTLINED_FUNCTION_19_35();
  if (v4)
  {
    OUTLINED_FUNCTION_4_48();
    v5 = OUTLINED_FUNCTION_3_53();
    result = 0;
    switch(v5)
    {
      case -5:
      case -4:
      case -2:
      case -1:
        v7 = &v2[v3];
        OUTLINED_FUNCTION_11_44();
        OUTLINED_FUNCTION_6_46();
        while (1)
        {
          if (v2 >= v7)
          {
            return 1;
          }

          v10 = *v2;
          v8 = v2 + 1;
          v9 = v10;
          atof(v8);
          OUTLINED_FUNCTION_10_44();
          if (!v15)
          {
            OUTLINED_FUNCTION_13_42();
            vassign(v1, v16, v17);
          }

          result = OUTLINED_FUNCTION_5_47(v11, v12, v13, v14);
          if (!result)
          {
            break;
          }

          v2 = &v8[v9];
          if (v2 < v7)
          {
            result = OUTLINED_FUNCTION_2_56();
            *(v1 + 112) = result;
            if (!result)
            {
              break;
            }
          }
        }

        break;
      default:
        return result;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
    return 1;
  }

  return result;
}

uint64_t insert_2pt_s(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (OUTLINED_FUNCTION_1_61(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  v6 = OUTLINED_FUNCTION_0_66();
  ins_tokens_s(v6, v7, v8, v9, v10);
  return 0;
}

uint64_t insert_2pt_l(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (OUTLINED_FUNCTION_1_61(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  v6 = OUTLINED_FUNCTION_0_66();
  ins_tokens_l(v6, v7, v8, v9, v10);
  return 0;
}

uint64_t insert_2pt_lng(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (OUTLINED_FUNCTION_1_61(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  v6 = OUTLINED_FUNCTION_0_66();
  ins_tokens_lng(v6, v7, v8, v9, v10);
  return 0;
}

uint64_t insert_2pt_i(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (OUTLINED_FUNCTION_1_61(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  v6 = OUTLINED_FUNCTION_0_66();
  ins_tokens_i(v6, v7, v8, v9, v10);
  return 0;
}

uint64_t insert_2pt_f(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (OUTLINED_FUNCTION_1_61(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  v6 = OUTLINED_FUNCTION_0_66();
  ins_tokens_f(v6);
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_61(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return vrange_2pt(a1, (a1 + 112), a1 + 144, a2, a5);
}

uint64_t OUTLINED_FUNCTION_2_56()
{
  v4 = *(v1 + 144);
  v5 = (*(v4 + 8 * v2 + 24) & 0xFFFFFFFFFFFFFFFCLL);

  return vins_sync(v1, v0, v5, v4);
}

uint64_t OUTLINED_FUNCTION_3_53()
{

  return STMTYP(v0);
}

uint64_t OUTLINED_FUNCTION_4_48()
{

  return STMTYP(v0);
}

uint64_t OUTLINED_FUNCTION_5_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v7 = v5[14];
  v8 = v5[18];

  return vins_tok(v5, v4, v7, v8, va);
}

uint64_t OUTLINED_FUNCTION_6_46()
{
  v3 = v1[14];
  v4 = v1[18];

  return vdel_2pt(v1, v0, v3, v4);
}

uint64_t OUTLINED_FUNCTION_9_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;

  return vnspop(a1, &a11);
}

void OUTLINED_FUNCTION_12_43(unsigned __int16 a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a5 = v6;
  a6 = a1;
  BYTE2(a6) = 0;

  vinitloc_new(v8, &a3, v7);
}

uint64_t OUTLINED_FUNCTION_20_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return vnspop(v9, &a9);
}

uint64_t OUTLINED_FUNCTION_21_33(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(a1, a2, a3, a4, a5, a6, a7, a8);
}

void OUTLINED_FUNCTION_22_32(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);

  vassign(v2, va, va1);
}

uint64_t OUTLINED_FUNCTION_23_30(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t lpta_loadv(uint64_t a1, char a2, double *a3)
{
  *(a1 + 136) = 2;
  *(a1 + 120) = a2;
  v3 = *a3;
  switch(v3)
  {
    case 65531:
      v4 = a3[1];
      break;
    case 65532:
      v4 = *(a3 + 1);
      break;
    case 65533:
      v4 = *(a3 + 1);
      break;
    default:
      forceErrorBacktrack(a1);
  }

  *(a1 + 128) = v4;
  return a1;
}

uint64_t rpta_loadv(uint64_t a1, char a2, double *a3)
{
  *(a1 + 168) = 2;
  *(a1 + 152) = a2;
  v3 = *a3;
  switch(v3)
  {
    case 65531:
      v4 = a3[1];
      break;
    case 65532:
      v4 = *(a3 + 1);
      break;
    case 65533:
      v4 = *(a3 + 1);
      break;
    default:
      forceErrorBacktrack(a1);
  }

  *(a1 + 160) = v4;
  return a1;
}

uint64_t lpta_loadlng(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_7_46(a1, a2);
  if (result - 65532 >= 2)
  {
    if (result != 65531)
    {
      return result;
    }

    a3 = a3;
  }

  *(a1 + 128) = a3;
  return result;
}

uint64_t rpta_loadl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_8_46(a1, a2);
  if (result - 65532 >= 2)
  {
    if (result != 65531)
    {
      return result;
    }

    a3 = a3;
  }

  *(a1 + 160) = a3;
  return result;
}

void lpta_loadi(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_7_46(a1, a2);
  OUTLINED_FUNCTION_13_43();
  if (!(!v6 & v5))
  {
    *(a1 + 128) = a3;
  }
}

void rpta_loadi(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_8_46(a1, a2);
  OUTLINED_FUNCTION_13_43();
  if (!(!v6 & v5))
  {
    *(a1 + 160) = a3;
  }
}

void lpta_loadf(uint64_t a1, double a2, char a3)
{
  OUTLINED_FUNCTION_7_46(a1, a3);
  OUTLINED_FUNCTION_13_43();
  if (!(!v6 & v5))
  {
    *(a1 + 128) = a2;
  }
}

void rpta_loadf(uint64_t a1, double a2, char a3)
{
  OUTLINED_FUNCTION_8_46(a1, a3);
  OUTLINED_FUNCTION_13_43();
  if (!(!v6 & v5))
  {
    *(a1 + 160) = a2;
  }
}

void lpta_ctxtl()
{
  OUTLINED_FUNCTION_1_62();
  if (!vctxt_tv(v1, v2, v3))
  {
    forceErrorBacktrack(v0);
  }

  OUTLINED_FUNCTION_0_67();
  if ((v8 & 1) == 0)
  {
    *(v0 + 112) = OUTLINED_FUNCTION_3_54(v4, v5, v6, v7);
  }
}

void rpta_ctxtl()
{
  OUTLINED_FUNCTION_2_57();
  if (!vctxt_tv(v1, (v1 + 72), v2))
  {
    forceErrorBacktrack(v0);
  }

  OUTLINED_FUNCTION_0_67();
  if ((v7 & 1) == 0)
  {
    *(v0 + 144) = OUTLINED_FUNCTION_3_54(v3, v4, v5, v6);
  }
}

void lpta_ctxtr()
{
  OUTLINED_FUNCTION_1_62();
  if (!vctxt_tv(v1, v2, v3))
  {
    forceErrorBacktrack(v0);
  }

  OUTLINED_FUNCTION_0_67();
  if ((v8 & 1) == 0)
  {
    *(v0 + 112) = OUTLINED_FUNCTION_4_49(v4, v5, v6, v7);
  }
}

void rpta_ctxtr()
{
  OUTLINED_FUNCTION_2_57();
  if (!vctxt_tv(v1, (v1 + 72), v2))
  {
    forceErrorBacktrack(v0);
  }

  OUTLINED_FUNCTION_0_67();
  if ((v7 & 1) == 0)
  {
    *(v0 + 144) = OUTLINED_FUNCTION_4_49(v3, v4, v5, v6);
  }
}

_BYTE *lpta_movel()
{
  OUTLINED_FUNCTION_1_62();
  if (!vmove_tv(v2, v3, v4))
  {
    forceErrorBacktrack(v0);
  }

  result = vmovel(*(v0 + 112), v1);
  *(v0 + 112) = result;
  return result;
}

_BYTE *rpta_movel()
{
  OUTLINED_FUNCTION_2_57();
  if (!vmove_tv(v2, (v2 + 72), v3))
  {
    forceErrorBacktrack(v0);
  }

  result = vmovel(*(v0 + 144), v1);
  *(v0 + 144) = result;
  return result;
}

_BYTE *lpta_mover()
{
  OUTLINED_FUNCTION_1_62();
  v4 = vmove_tv(v1, v2, v3);
  if (!v4)
  {
    forceErrorBacktrack(v0);
  }

  result = OUTLINED_FUNCTION_14_42(v4, *(v0 + 112));
  *(v0 + 112) = result;
  return result;
}

_BYTE *rpta_mover()
{
  OUTLINED_FUNCTION_2_57();
  v3 = vmove_tv(v1, (v1 + 72), v2);
  if (!v3)
  {
    forceErrorBacktrack(v0);
  }

  result = OUTLINED_FUNCTION_14_42(v3, *(v0 + 144));
  *(v0 + 144) = result;
  return result;
}

uint64_t lpta_tstctxtl()
{
  OUTLINED_FUNCTION_1_62();
  vtstctx_tv(v1, v2, 0);
  if (v3)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_67();
  if (v9)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_54(v5, v6, v7, v8);
  result = OUTLINED_FUNCTION_12_44();
  *(v0 + 112) = v10;
  return result;
}

uint64_t rpta_tstctxtl()
{
  OUTLINED_FUNCTION_2_57();
  vtstctx_tv(v1, (v1 + 72), 0);
  if (v2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_67();
  if (v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_54(v4, v5, v6, v7);
  result = OUTLINED_FUNCTION_12_44();
  *(v0 + 144) = v9;
  return result;
}

uint64_t lpta_tstctxtr()
{
  OUTLINED_FUNCTION_2_57();
  v1 = 1;
  vtstctx_tv(v2, (v2 + 56), 1);
  if (!v3)
  {
    OUTLINED_FUNCTION_0_67();
    v1 = 0;
    if ((v8 & 1) == 0)
    {
      *(v0 + 112) = OUTLINED_FUNCTION_4_49(v4, v5, v6, v7);
    }
  }

  return v1;
}

uint64_t rpta_tstctxtr()
{
  OUTLINED_FUNCTION_2_57();
  OUTLINED_FUNCTION_9_45();
  vtstctx_tv(v2, v3, v4);
  if (!v5)
  {
    OUTLINED_FUNCTION_0_67();
    v1 = 0;
    if ((v10 & 1) == 0)
    {
      *(v0 + 144) = OUTLINED_FUNCTION_4_49(v6, v7, v8, v9);
    }
  }

  return v1;
}

uint64_t lpta_tstmovel()
{
  OUTLINED_FUNCTION_1_62();
  vtsttmark_tv(v2, v3, 0);
  if (v4)
  {
    return 1;
  }

  vmovel(*(v0 + 112), v1);
  result = OUTLINED_FUNCTION_12_44();
  *(v0 + 112) = v6;
  return result;
}

uint64_t rpta_tstmovel()
{
  OUTLINED_FUNCTION_2_57();
  OUTLINED_FUNCTION_9_45();
  vtsttmark_tv(v3, v4, v5);
  if (!v6)
  {
    v2 = 0;
    *(v0 + 144) = vmovel(*(v0 + 144), v1);
  }

  return v2;
}

uint64_t lpta_tstmover()
{
  OUTLINED_FUNCTION_1_62();
  vtsttmark_tv(v1, v2, 0);
  if (v3)
  {
    return 1;
  }

  OUTLINED_FUNCTION_14_42(v3, *(v0 + 112));
  result = OUTLINED_FUNCTION_12_44();
  *(v0 + 112) = v5;
  return result;
}

uint64_t rpta_tstmover()
{
  OUTLINED_FUNCTION_2_57();
  OUTLINED_FUNCTION_9_45();
  vtsttmark_tv(v2, v3, v4);
  if (!v5)
  {
    v1 = 0;
    *(v0 + 144) = OUTLINED_FUNCTION_14_42(v5, *(v0 + 144));
  }

  return v1;
}

uint64_t lpta_storep(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = vsync_tv(a1, a1 + 112, a3);
  if (!result)
  {
    forceErrorBacktrack(a1);
  }

  if (*(*(a1 + 192) + 8096))
  {
    result = save_var(a1, a2);
  }

  *(a2 + 8) = *(a1 + 112);
  return result;
}

uint64_t rpta_storep(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = vsync_tv(a1, a1 + 144, a3);
  if (!result)
  {
    forceErrorBacktrack(a1);
  }

  if (*(*(a1 + 192) + 8096))
  {
    result = save_var(a1, a2);
  }

  *(a2 + 8) = *(a1 + 144);
  return result;
}

unint64_t OUTLINED_FUNCTION_3_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return vgetsc(v4, 1, 1, a4, v5);
}

unint64_t OUTLINED_FUNCTION_4_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return vgetsc(v4, 0, 1, a4, v5);
}

uint64_t OUTLINED_FUNCTION_5_48(uint64_t result, uint64_t a2)
{
  *(result + 136) = 1;
  *(result + 112) = *(a2 + 8);
  *(result + 128) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_47(uint64_t result, uint64_t a2)
{
  *(result + 168) = 1;
  *(result + 144) = *(a2 + 8);
  *(result + 128) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_46(uint64_t a1, char a2)
{
  *(a1 + 136) = 2;
  *(a1 + 120) = a2;

  return STMTYP(a2);
}

uint64_t OUTLINED_FUNCTION_8_46(char *a1, char a2)
{
  a1[168] = 2;
  a1[152] = a2;
  v3 = a1[120];

  return STMTYP(v3);
}

uint64_t OUTLINED_FUNCTION_10_45@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W8>)
{
  *(result + 168) = a3;
  *(result + 152) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_45@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W8>)
{
  *(result + 136) = a3;
  *(result + 120) = a2;
  return result;
}

_BYTE *OUTLINED_FUNCTION_14_42(uint64_t a1, _BYTE *a2)
{

  return vmover(v2, a2, v3);
}

uint64_t npush_v(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_58(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1]);
  result = vnspush(v9, v11);
  if ((*v8 & 0x80000000) == 0)
  {
    v8[1] = -1;
  }

  return result;
}

uint64_t npush_vf(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_58(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1]);
  result = vnspush(v9, v11);
  if ((*v8 & 0x80000000) == 0)
  {
    v8[1] = -1;
  }

  return result;
}

uint64_t npush_fld(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v14 = 0;
  v4 = &vstmtbl[12 * a2];
  v5 = &v4[1][40 * a3];
  LOWORD(v14) = *(v5 + 30);
  BYTE2(v14) = *(v5 + 32);
  v6 = *(a1 + 192);
  v7 = *(v6 + 8080);
  if (*(v6 + 8089))
  {
    LODWORD(v8) = *(v6 + 8088);
    v9 = (v7 + 8 * (*(v6 + 9084) + v8));
  }

  else
  {
    v8 = *(v6 + 8088);
    v9 = (v7 + 8 * v8 + 24);
  }

  v10 = (*v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (!v10)
  {
    return 1;
  }

  while ((*v10 & 2) != 0)
  {
    v11 = v8 + 3;
    if (*(v6 + 8089))
    {
      v11 = *(v6 + 9084) + v8;
    }

    v10 = (*&v10[8 * v11] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v10)
    {
      return 1;
    }
  }

  v13 = (*&v4[2][8 * a3])(v10 + 16);
  vnspush(a1, &v13);
  return 0;
}

void npop(uint64_t a1, __int16 *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v4[0] = 0;
  v4[1] = 0;
  vnspop(a1, v5);
  if (*(*(a1 + 192) + 8096))
  {
    save_var(a1, a2);
  }

  vinitloc_new(a1, v4, a2);
  vassign(a1, v4, v5);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }
}

void ncompare(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  v2[0] = 0;
  v2[1] = 0;
  vnspop(a1, v3);
  vnspop(a1, v2);
  vcompare(a1, v3, v2);
}

void ncompare_s(uint64_t a1, unsigned int a2)
{
  v10 = a2;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  vnspop(a1, &v6);
  if (v7 == -1)
  {
    v4 = *v6;
    if (v4 == a2)
    {
      *(*(a1 + 192) + 8120) = 0;
    }

    else
    {
      if (v4 <= a2)
      {
        v5 = -1;
      }

      else
      {
        v5 = 1;
      }

      *(*(a1 + 192) + 8120) = v5;
    }
  }

  else
  {
    LOWORD(v9) = -1;
    v8 = &v10;
    BYTE2(v9) = 0;
    vcompare(a1, &v8, &v6);
  }
}

uint64_t clearDeltaStackBack_0(uint64_t a1)
{
  v1 = *(*(a1 + 200) + 1760);
  if (*v1 == 8)
  {
    v1 = *(*(a1 + 192) + 8112);
  }

  return freeDeltaStackTo_1(a1, v1);
}

void bsclr_pushca(uint64_t a1, uint64_t a2)
{
  clearDeltaStackBack_0(a1);
  OUTLINED_FUNCTION_0_68(*(a1 + 200));
  *v4 = 0;
  *(v4 + 8) = a2;
}

void bspush_ca(uint64_t a1)
{
  OUTLINED_FUNCTION_0_68(*(a1 + 200));
  *v1 = 0;
  *(v1 + 8) = v2;
}

__n128 bspush_ca_scan(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 192);
  v2 = *(a1 + 200);
  v4 = *(v2 + 288);
  v5 = *(v2 + 1720) - v4;
  v6 = *(v2 + 1728);
  *v5 = 0;
  *(v5 + 8) = a2;
  v7 = *(v2 + 284);
  v8 = v5 - v7;
  *(v2 + 1720) = v8;
  *(v2 + 1728) = v6 - (v4 + v7);
  *v8 = 1;
  result = v3[505];
  *(v8 + 8) = result;
  return result;
}

void bspush_vbot(uint64_t a1)
{
  OUTLINED_FUNCTION_0_68(*(a1 + 200));
  *v1 = 5;
  *(v1 + 8) = *(v2 + 1760);
  *(v2 + 1760) = v1;
}

uint64_t freeDeltaStackTo_1(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 1744);
  if (v3)
  {
    *(v2 + 1720) = a2;
    *(v2 + 1728) = *(v2 + 1780) + a2 - *(v3 + 32);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_63@<X0>(uint64_t a1@<X0>, unsigned __int16 a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a4 = v5;
  a5 = a2;

  return vnspush(a1, &a4);
}

void OUTLINED_FUNCTION_2_58(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a9 = 0;
  a10 = 0;

  vinitloc_new(a1, &a9, a2);
}

void starttest_l(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 192) + 8064) = a2;
  clearDeltaStackBack_1(a1);
  OUTLINED_FUNCTION_0_69();
}

uint64_t clearDeltaStackBack_1(uint64_t a1)
{
  v1 = *(*(a1 + 200) + 1760);
  if (*v1 == 8)
  {
    v1 = *(*(a1 + 192) + 8112);
  }

  return freeDeltaStackTo_2(a1, v1);
}

void starttest_e(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 192) + 8064) = a2;
  clearDeltaStackBack_1(a1);
  OUTLINED_FUNCTION_0_69();
}

void starttest(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 192) + 8064) = a2;
  clearDeltaStackBack_1(a1);
  OUTLINED_FUNCTION_0_69();
}

void compare_tvars(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v7[0] = 0;
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  vinitloc_new(a1, v7, a2);
  vinitloc_new(a1, v6, a3);
  vcompare(a1, v7, v6);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }

  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }
}

BOOL test_string(void *a1, unsigned int a2, uint64_t a3, unsigned __int8 *a4)
{
  if (!a3)
  {
    return vscanadvOverToken(a1, 1, a3, a4) == 0;
  }

  v5 = (a4 + 1);
  v6 = *a4 - 199;
  v8 = &a4[a3];
  v9 = &vstmtbl[12 * a2];
  OUTLINED_FUNCTION_2_59();
  while (v5 < v8)
  {
    if (*(a1[24] + 8089))
    {
      OUTLINED_FUNCTION_1_64();
    }

    else
    {
      OUTLINED_FUNCTION_4_50();
    }

    v11 = (*v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (!v11)
    {
      return 1;
    }

    if ((*v11 & 2) == 0)
    {
      switch(v6)
      {
        case 0:
          ++v5;
          break;
        case 1:
        case 2:
          v5 += 4;
          break;
        case 3:
          v5 += 2;
          break;
        case 4:
          atof(v5);
          break;
        default:
          break;
      }

      (*v9[2])(v11 + 16);
      OUTLINED_FUNCTION_7_47();
      vcompare(a1, v12, v13);
      if (*(a1[24] + 8120))
      {
        return 1;
      }
    }

    v7 = 1;
    if (!vscanadv(a1, 1, 1))
    {
      return v7;
    }
  }

  return 0;
}

uint64_t test_string_s()
{
  OUTLINED_FUNCTION_13_44();
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v6 = v5 + v4;
  OUTLINED_FUNCTION_15_41();
  v7 = *(v3 + 8);
  v8 = *(v7 + 30);
  if (v8 == 0xFFFF)
  {
    while (v0 < v6)
    {
      OUTLINED_FUNCTION_3_55();
      if (v15)
      {
        OUTLINED_FUNCTION_1_64();
      }

      else
      {
        OUTLINED_FUNCTION_4_50();
      }

      OUTLINED_FUNCTION_12_45();
      if (v11)
      {
        return 1;
      }

      if ((*v16 & 2) == 0)
      {
        v17 = OUTLINED_FUNCTION_6_48(v16);
        if (*v18(v17) != *v0)
        {
          return 1;
        }

        v0 = (v0 + 1);
      }

      if (!OUTLINED_FUNCTION_5_49())
      {
        return v2;
      }
    }
  }

  else
  {
    LOWORD(v23) = -1;
    BYTE2(v23) = *(v7 + 32);
    BYTE2(v21) = BYTE2(v23);
    LOWORD(v21) = v8;
    while (v0 < v6)
    {
      OUTLINED_FUNCTION_3_55();
      if (v9)
      {
        OUTLINED_FUNCTION_1_64();
      }

      else
      {
        OUTLINED_FUNCTION_4_50();
      }

      OUTLINED_FUNCTION_12_45();
      if (v11)
      {
        return 1;
      }

      if ((*v10 & 2) == 0)
      {
        v22 = v0;
        v12 = OUTLINED_FUNCTION_6_48(v10);
        v20 = v13(v12);
        vcompare(v1, &v22, &v20);
        OUTLINED_FUNCTION_14_43();
        if (v14)
        {
          return 1;
        }

        v0 = (v0 + 1);
      }

      if (!OUTLINED_FUNCTION_5_49())
      {
        return v2;
      }
    }
  }

  return 0;
}

uint64_t test_string_l()
{
  OUTLINED_FUNCTION_13_44();
  v5 = v4 + v3;
  OUTLINED_FUNCTION_15_41();
  OUTLINED_FUNCTION_2_59();
  while (v0 < v5)
  {
    OUTLINED_FUNCTION_3_55();
    if (v6)
    {
      OUTLINED_FUNCTION_1_64();
    }

    else
    {
      OUTLINED_FUNCTION_4_50();
    }

    OUTLINED_FUNCTION_12_45();
    if (v8)
    {
      return 1;
    }

    if ((*v7 & 2) == 0)
    {
      OUTLINED_FUNCTION_11_46();
      v10 = OUTLINED_FUNCTION_6_48(v9);
      v11(v10);
      OUTLINED_FUNCTION_7_47();
      vcompare(v1, v12, v13);
      OUTLINED_FUNCTION_14_43();
      if (v14)
      {
        return 1;
      }

      v0 += 2;
    }

    if (!OUTLINED_FUNCTION_5_49())
    {
      return v2;
    }
  }

  return 0;
}

uint64_t test_string_lng()
{
  OUTLINED_FUNCTION_13_44();
  v5 = v4 + v3;
  OUTLINED_FUNCTION_15_41();
  OUTLINED_FUNCTION_2_59();
  while (v0 < v5)
  {
    OUTLINED_FUNCTION_3_55();
    if (v6)
    {
      OUTLINED_FUNCTION_1_64();
    }

    else
    {
      OUTLINED_FUNCTION_4_50();
    }

    OUTLINED_FUNCTION_12_45();
    if (v8)
    {
      return 1;
    }

    if ((*v7 & 2) == 0)
    {
      v9 = OUTLINED_FUNCTION_6_48(v7);
      v10(v9);
      OUTLINED_FUNCTION_7_47();
      vcompare(v1, v11, v12);
      OUTLINED_FUNCTION_14_43();
      if (v13)
      {
        return 1;
      }

      v0 += 4;
    }

    if (!OUTLINED_FUNCTION_5_49())
    {
      return v2;
    }
  }

  return 0;
}

uint64_t test_string_i()
{
  OUTLINED_FUNCTION_13_44();
  v5 = v4 + v3;
  OUTLINED_FUNCTION_15_41();
  OUTLINED_FUNCTION_2_59();
  while (v0 < v5)
  {
    OUTLINED_FUNCTION_3_55();
    if (v6)
    {
      OUTLINED_FUNCTION_1_64();
    }

    else
    {
      OUTLINED_FUNCTION_4_50();
    }

    OUTLINED_FUNCTION_12_45();
    if (v8)
    {
      return 1;
    }

    if ((*v7 & 2) == 0)
    {
      OUTLINED_FUNCTION_11_46();
      v10 = OUTLINED_FUNCTION_6_48(v9);
      v11(v10);
      OUTLINED_FUNCTION_7_47();
      vcompare(v1, v12, v13);
      OUTLINED_FUNCTION_14_43();
      if (v14)
      {
        return 1;
      }

      v0 += 2;
    }

    if (!OUTLINED_FUNCTION_5_49())
    {
      return v2;
    }
  }

  return 0;
}

uint64_t test_string_f(uint64_t a1, unsigned int a2)
{
  v4 = &vstmtbl[12 * a2];
  OUTLINED_FUNCTION_2_59();
  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_44();
  while (1)
  {
    OUTLINED_FUNCTION_3_55();
    if (v6)
    {
      OUTLINED_FUNCTION_1_64();
    }

    else
    {
      OUTLINED_FUNCTION_4_50();
    }

    v8 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (!v8)
    {
      break;
    }

    if ((*v8 & 2) == 0)
    {
      atof(v2);
      (*v4[2])(v8 + 16);
      OUTLINED_FUNCTION_7_47();
      vcompare(v3, v9, v10);
      if (*(*(v3 + 192) + 8120))
      {
        break;
      }
    }

    if (!OUTLINED_FUNCTION_5_49())
    {
      return v8;
    }
  }

  return 1;
}

uint64_t test_ptr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 112))
  {
    return 1;
  }

  if ((*(a1 + 136) & 2) != 0)
  {
    vnormalize(a1, a1 + 112, a3);
  }

  while (*(*(a1 + 192) + 8080) != *(a1 + 112))
  {
    v4 = 1;
    if (!OUTLINED_FUNCTION_9_46())
    {
      return v4;
    }
  }

  return 0;
}

uint64_t test_time(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  v15[0] = *(a1 + 112);
  v15[1] = v4;
  vtsttmark_tv(a1, v15, 0);
  v5 = 1;
  if (!v6)
  {
    *(a1 + 144) = *(*(a1 + 192) + 8080);
    *(a1 + 168) = 1;
    if (!vcomp_pta(a1, a1 + 112, a1 + 144))
    {
      while (*(*(a1 + 192) + 8120))
      {
        v5 = 1;
        if (OUTLINED_FUNCTION_9_46())
        {
          *(a1 + 144) = *(*(a1 + 192) + 8080);
          if (!vcomp_pta(a1, a1 + 112, a1 + 144))
          {
            continue;
          }
        }

        return v5;
      }

      v5 = 0;
      OUTLINED_FUNCTION_10_46();
      v9 = *(v8 + 1728);
      *(v10 + 8) = a2;
      v11 = *(v8 + 284);
      v12 = v10 - v11;
      *(v8 + 1720) = v12;
      *(v8 + 1728) = v9 - (v13 + v11);
      *v12 = 1;
      *(v12 + 8) = *(v14 + 8080);
      *(*(a1 + 280) + *(*(a1 + 264) + *(a1 + 120))) = 1;
    }
  }

  return v5;
}

uint64_t test_synch(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = 0;
  v8 = a3;
  while (!v7)
  {
    v9 = 0;
    v7 = 1;
    while (v9 < v8 && v7)
    {
      if (*(*(a1[24] + 8080) + 8 * (*(a1[24] + 9084) + a4[v9])))
      {
        v7 = 1;
      }

      else
      {
        v10 = 1;
        v11 = vscanadv(a1, 0, 1);
        v7 = 0;
        if (!v11)
        {
          return v10;
        }
      }

      ++v9;
    }
  }

  OUTLINED_FUNCTION_10_46();
  *(v12 + 8) = a2;
  *(v13 + 1720) = v12 - *(v13 + 284);
  OUTLINED_FUNCTION_8_47(v13);
  for (; v8; --v8)
  {
    v15 = *a4++;
    *(a1[35] + *(a1[33] + v15)) = v14;
  }

  return 0;
}

uint64_t test_fence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = a3;
    v8 = 0;
    while (!v8)
    {
      v9 = 0;
      v8 = 1;
      while (v7 > v9 && v8)
      {
        v10 = *(a4 + v9);
        if (*(*(a1 + 264) + v10) == *(a1 + 288) && !FENCED(a1, *(*(a1 + 192) + 8080), v10))
        {
          v11 = 1;
          v12 = OUTLINED_FUNCTION_9_46();
          v8 = 0;
          if (!v12)
          {
            return v11;
          }
        }

        else
        {
          v8 = 1;
        }

        ++v9;
      }
    }

    v19 = 0;
    v21 = *(a1 + 192);
    v20 = *(a1 + 200);
    v22 = *(v20 + 288);
    v23 = *(v20 + 1720) - v22;
    *v23 = 3;
    *(v23 + 8) = a2;
    v24 = *(v20 + 284);
    v25 = v23 - v24;
    LODWORD(v22) = v22 + v24;
    LODWORD(v24) = *(v20 + 1728);
    *(v20 + 1720) = v25;
    *(v20 + 1728) = v24 - v22;
    *v25 = 1;
    *(v25 + 8) = *(v21 + 8080);
    while (v7 > v19)
    {
      *(*(a1 + 280) + *(*(a1 + 264) + *(a4 + v19++))) = 1;
    }

    return 0;
  }

  else
  {
    v13 = 0;
    while (!v13)
    {
      v14 = 0;
      v13 = 1;
      while (1)
      {
        v15 = v14;
        v16 = *(a1 + 288);
        if (!v13 || v15 >= v16)
        {
          break;
        }

        v17 = *(a1 + 192);
        if (v15 == *(v17 + 8088) || *(*(a1 + 264) + v15) != v16 || FENCED(a1, *(v17 + 8080), v15))
        {
          v13 = 1;
        }

        else
        {
          v11 = 1;
          v18 = OUTLINED_FUNCTION_9_46();
          v13 = 0;
          if (!v18)
          {
            return v11;
          }
        }

        v14 = v15 + 1;
      }
    }

    v11 = 0;
    OUTLINED_FUNCTION_10_46();
    *(v26 + 8) = a2;
    *(v27 + 1720) = v26 - *(v27 + 284);
    OUTLINED_FUNCTION_8_47(v27);
    *(*(a1 + 192) + 8090) = v28;
  }

  return v11;
}

uint64_t test_hasval(uint64_t a1)
{
  v1 = *(a1 + 184);
  *(v1 + 436) = 0;
  *(v1 + 32) = 0;
  return 1;
}

uint64_t freeDeltaStackTo_2(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 1744);
  if (v3)
  {
    *(v2 + 1720) = a2;
    *(v2 + 1728) = *(v2 + 1780) + a2 - *(v3 + 32);
  }

  return result;
}

void OUTLINED_FUNCTION_0_69()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v1 + 288);
  v4 = *(v1 + 1720) - v3;
  *(v1 + 1720) = v4;
  *(v1 + 1728) -= v3;
  *v4 = 0;
  *(v4 + 8) = *(v2 + 8064);
  *(v2 + 8096) = 1;
}

uint64_t OUTLINED_FUNCTION_5_49()
{

  return vscanadv(v0, 1, 1);
}

__n128 OUTLINED_FUNCTION_8_47@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 1728) = v4 - v2;
  *v3 = 1;
  result = v1[505];
  *(v3 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_46()
{

  return vscanadv(v0, 0, 1);
}

uint64_t num_fields(uint64_t a1)
{
  result = 0;
  v3 = *a1 & ~(*a1 >> 31);
  v4 = 4;
  if ((*a1 & ~(*a1 >> 31)) != 0)
  {
    do
    {
      result = (*(*(a1 + 8) + v4) + result);
      --v3;
      v4 += 16;
    }

    while (v3);
  }

  return result;
}

uint64_t first_field(uint64_t a1, uint64_t a2, _BYTE *a3, _DWORD *a4)
{
  *(*(a1 + 200) + 300) = 0;
  if (*a2 < 1)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  if (*(v4 + 4) < 1)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_0_70(a1, a2, a3, a4, *v4);
  }
}

uint64_t next_field(uint64_t a1, uint64_t a2, _BYTE *a3, _DWORD *a4)
{
  v4 = *(a1 + 200);
  v5 = *(v4 + 304) + 1;
  *(v4 + 304) = v5;
  v6 = *(a2 + 8);
  v7 = *(v4 + 300);
  if (v5 < *(v6 + 16 * v7 + 4))
  {
    return OUTLINED_FUNCTION_0_70(a1, a2, a3, a4, *(v6 + 16 * v7));
  }

  LODWORD(v7) = v7 + 1;
  *(v4 + 300) = v7;
  if (v7 < *a2)
  {
    *(v4 + 304) = 0;
    v7 = v7;
    return OUTLINED_FUNCTION_0_70(a1, a2, a3, a4, *(v6 + 16 * v7));
  }

  return 0;
}

uint64_t is_token_prev(int a1, uint64_t a2)
{
  if ((*(a2 + 8 * a1 + 24) & 0xFFFFFFFFFFFFFFFCLL) != 0 && (*(*(a2 + 8 * a1 + 24) & 0xFFFFFFFFFFFFFFFCLL) & 2) != 0)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_4_51();
  }
}

uint64_t is_token_next(uint64_t a1, int a2, uint64_t a3)
{
  if ((*(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL) != 0 && (*(*(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL) & 2) != 0)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_4_51();
  }
}

void *left_context(uint64_t a1, int a2, uint64_t a3)
{
  if ((*(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 1) == 0)
  {
    return VLSYNC(a3, a2);
  }

  return a3;
}

unint64_t right_context(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 1) == 0)
  {
    return VRSYNC(a1, a3, a2);
  }

  return a3;
}

void valid_prefix()
{
  OUTLINED_FUNCTION_8_48();
  v7 = v6;
  switch(v8)
  {
    case 0xFFFB:
      OUTLINED_FUNCTION_15_42();

      legal_double();
      break;
    case 0xFFFC:
      OUTLINED_FUNCTION_15_42();

      legal_int();
      break;
    case 0xFFFD:
      OUTLINED_FUNCTION_15_42();

      legal_long();
      break;
    case 0xFFFE:
    case 0xFFFF:
      v9 = v5;
      if (allchrs(v6))
      {
        OUTLINED_FUNCTION_6_49();
        do
        {
          if (v4 == v2)
          {
            break;
          }

          v10 = strcmp(*(*(v3 + 16) + v2), "undefined");
          v2 += 8;
        }

        while (v10);
      }

      else
      {
        OUTLINED_FUNCTION_14_44();
      }

      v14 = 0;
      v15 = v0 + 40 * v9;
      do
      {
        if (8 * v1 == v14)
        {
          break;
        }

        v16 = strprefix(*(*(v15 + 16) + v14), v7);
        v14 += 8;
      }

      while (!v16);
      goto LABEL_20;
    default:
LABEL_20:
      OUTLINED_FUNCTION_15_42();
      break;
  }
}

BOOL allchrs(unsigned __int8 *a1)
{
  while (1)
  {
    v1 = *a1;
    if (v1 != 45)
    {
      break;
    }

    ++a1;
  }

  return v1 == 0;
}

uint64_t strprefix(unsigned __int8 *a1, unsigned __int8 *a2)
{
  while (1)
  {
    v3 = *a2++;
    v2 = v3;
    if (!v3)
    {
      break;
    }

    v4 = *a1++;
    if (v4 != v2)
    {
      return 0;
    }
  }

  return OUTLINED_FUNCTION_4_51();
}

uint64_t legal_long()
{
  v1 = OUTLINED_FUNCTION_12_46();
  v2 = OUTLINED_FUNCTION_5_50(v1);
  v4 = strtol(v2, v3, 0);
  if (*v7)
  {
    return 0;
  }

  v5 = v4;
  if (*__error() == 34)
  {
    return 0;
  }

  if (v0)
  {
    *v0 = v5;
  }

  return 1;
}

uint64_t legal_int()
{
  v1 = OUTLINED_FUNCTION_12_46();
  v2 = OUTLINED_FUNCTION_5_50(v1);
  v4 = strtol(v2, v3, 0);
  if (*v8)
  {
    return 0;
  }

  v5 = v4;
  if (*__error() == 34 || (v5 - 0x80000000) < 0xFFFFFFFF00000000)
  {
    return 0;
  }

  if (v0)
  {
    *v0 = v5;
  }

  return 1;
}

uint64_t legal_double()
{
  v1 = OUTLINED_FUNCTION_12_46();
  v2 = OUTLINED_FUNCTION_5_50(v1);
  v4 = strtod(v2, v3);
  if (*v7)
  {
    return 0;
  }

  v5 = v4;
  if (*__error() == 34)
  {
    return 0;
  }

  if (v0)
  {
    *v0 = v5;
  }

  return 1;
}

void valid_prefix_char(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_8_48();
  if ((v10 - 65532) >= 2 && (v10 - 65534) < 2)
  {
    v11 = v9;
    if (a3 == 45)
    {
      OUTLINED_FUNCTION_6_49();
      while (v7 != v5)
      {
        v12 = strcmp(*(*(v6 + 16) + v5), "undefined");
        v5 += 8;
        if (!v12)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_14_44();
    }

    v13 = 0;
    do
    {
      if (8 * v4 == v13)
      {
        break;
      }

      v14 = **(*(v3 + 40 * v11 + 16) + v13);
      v13 += 8;
    }

    while (v14 != a3);
  }

LABEL_14:
  OUTLINED_FUNCTION_15_42();
}

uint64_t unique_value(uint64_t a1, int a2, int a3, unsigned __int8 *a4, void *a5, void *a6, uint64_t a7, _WORD *a8, _WORD *a9, _WORD *a10, _WORD *a11)
{
  if (!*a4)
  {
    return 0;
  }

  v11 = vstmtbl[12 * a2 + 1];
  v14 = a4;
  switch(*&v11[40 * a3 + 30])
  {
    case 0xFFFB:
      v15 = a11;
      OUTLINED_FUNCTION_7_48();
      result = legal_double();
      if (result)
      {
        goto LABEL_28;
      }

      break;
    case 0xFFFC:
      v15 = a10;
      OUTLINED_FUNCTION_7_48();
      result = legal_int();
      if (result)
      {
        goto LABEL_28;
      }

      break;
    case 0xFFFD:
      v15 = a9;
      OUTLINED_FUNCTION_7_48();
      result = legal_long();
      if (result)
      {
        goto LABEL_28;
      }

      break;
    case 0xFFFE:
    case 0xFFFF:
      v15 = a8;
      *a8 = -1;
      if (allchrs(a4))
      {
        v27 = a6;
        v18 = 0;
        v19 = &v11[40 * a3];
        v20 = -1;
        while (v18 < *(v19 + 14))
        {
          if (!strcmp(*(*(v19 + 2) + 8 * v18), "undefined"))
          {
            if (v20 != -1)
            {
              goto LABEL_30;
            }

            *v15 = v18;
            v20 = v18;
          }

          ++v18;
        }

        a6 = v27;
      }

      else
      {
        v20 = -1;
      }

      v22 = 0;
      OUTLINED_FUNCTION_13_45();
      v25 = &v11[v24 * v23];
      while (v22 < *(v25 + 14))
      {
        if (strprefix(*(*(v25 + 2) + 8 * v22), v14))
        {
          if (v20 != -1)
          {
            goto LABEL_30;
          }

          *v15 = v22;
          v20 = v22;
        }

        ++v22;
      }

      if (v20 == -1)
      {
        goto LABEL_30;
      }

      v26 = *(*(v25 + 2) + 8 * v20);
      *a5 = v26;
      if (!strcmp(v26, "undefined"))
      {
        v14 = *(*(a1 + 200) + 336);
LABEL_28:
        *a5 = v14;
      }

      *a6 = v15;
      result = 1;
      break;
    default:
LABEL_30:
      result = 0;
      break;
  }

  return result;
}

uint64_t non_unique_value(uint64_t a1, int a2, int a3, unsigned __int8 *a4, void *a5, void *a6, uint64_t a7, _WORD *a8, _WORD *a9, _WORD *a10, _WORD *a11)
{
  if (!*a4)
  {
    return 0;
  }

  v11 = vstmtbl[12 * a2 + 1];
  v14 = a4;
  switch(*&v11[40 * a3 + 30])
  {
    case 0xFFFB:
      v15 = a11;
      OUTLINED_FUNCTION_7_48();
      result = legal_double();
      if (result)
      {
        goto LABEL_26;
      }

      break;
    case 0xFFFC:
      v15 = a10;
      OUTLINED_FUNCTION_7_48();
      result = legal_int();
      if (result)
      {
        goto LABEL_26;
      }

      break;
    case 0xFFFD:
      v15 = a9;
      OUTLINED_FUNCTION_7_48();
      result = legal_long();
      if (result)
      {
        goto LABEL_26;
      }

      break;
    case 0xFFFE:
    case 0xFFFF:
      v15 = a8;
      *a8 = -1;
      if (allchrs(a4))
      {
        v17 = 0;
        OUTLINED_FUNCTION_13_45();
        v20 = &v11[v19 * v18];
        v21 = *(v20 + 14) & ~(*(v20 + 14) >> 31);
        while (v21 != v17)
        {
          if (!strcmp(*(*(v20 + 2) + 8 * v17), "undefined"))
          {
            *v15 = v17;
            LOWORD(v23) = v17;
            goto LABEL_24;
          }

          ++v17;
        }
      }

      v23 = 0;
      OUTLINED_FUNCTION_13_45();
      v26 = &v11[v25 * v24];
      v27 = *(v26 + 14) & ~(*(v26 + 14) >> 31);
      while (1)
      {
        if (v27 == v23)
        {
          LOWORD(v23) = -1;
          goto LABEL_21;
        }

        if (strprefix(*(*(v26 + 2) + 8 * v23), v14))
        {
          break;
        }

        ++v23;
      }

      *v15 = v23;
LABEL_21:
      if (v23 == 0xFFFF)
      {
        goto LABEL_22;
      }

LABEL_24:
      OUTLINED_FUNCTION_13_45();
      v30 = *(*&v11[v29 * v28 + 16] + 8 * v23);
      *a5 = v30;
      if (!strcmp(v30, "undefined"))
      {
        v14 = *(*(a1 + 200) + 336);
LABEL_26:
        *a5 = v14;
      }

      *a6 = v15;
      result = 1;
      break;
    default:
LABEL_22:
      result = 0;
      break;
  }

  return result;
}

char *field_value(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  v5 = &vstmtbl[12 * a1];
  v6 = &v5[1][40 * a3];
  switch(*(v6 + 30))
  {
    case 0xFFFB:
      v8 = OUTLINED_FUNCTION_3_56(a1, a2);
      v10 = v9(v8);
      v11 = *v10;
      v12 = &v5[1][40 * a3];
      if (*(v12 + 32))
      {
        v13 = v11 == 2.22507386e-308;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        goto LABEL_26;
      }

      sprintf(a4, *(v12 + 8), v11, *v10);
      return a4;
    case 0xFFFC:
      v28 = OUTLINED_FUNCTION_3_56(a1, a2);
      v29(v28);
      OUTLINED_FUNCTION_11_47();
      if (!v13 && v30 == 32769)
      {
        goto LABEL_26;
      }

      v20 = v30;
      goto LABEL_24;
    case 0xFFFD:
      v18 = OUTLINED_FUNCTION_3_56(a1, a2);
      v19(v18);
      OUTLINED_FUNCTION_11_47();
      if (v13 || v20 != -2147483647)
      {
LABEL_24:
        sprintf(a4, *(v21 + 8), v22, v20);
        return a4;
      }

LABEL_26:
      v27 = 5259591;
      goto LABEL_29;
    case 0xFFFE:
      v14 = *(v6 + 16);
      v24 = OUTLINED_FUNCTION_3_56(a1, a2);
      v17 = *v25(v24);
      goto LABEL_15;
    case 0xFFFF:
      v14 = *(v6 + 16);
      v15 = OUTLINED_FUNCTION_3_56(a1, a2);
      v17 = *v16(v15);
LABEL_15:
      v26 = strcpy(a4, *(v14 + 8 * v17));
      if (!strcmp(v26, "undefined"))
      {
        v27 = 2960685;
        goto LABEL_29;
      }

      if (*a4 == 32 && !a4[1])
      {
        v27 = 2564135;
LABEL_29:
        *a4 = v27;
      }

      return a4;
    default:
      v27 = 4144959;
      goto LABEL_29;
  }
}

uint64_t time_field_value(int a1, uint64_t a2)
{
  v2 = &vstmtbl[12 * a1];
  if (!*(v2 + 86))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2[1] + 15);
  if (v3 == 65532)
  {
    return *(*v2[2])(a2 + 16);
  }

  if (v3 == 65533)
  {
    return *(*v2[2])(a2 + 16);
  }

  return 0xFFFFFFFFLL;
}

void first_fieldval(uint64_t a1, char a2, int a3, unsigned __int8 *a4)
{
  v5 = *(a1 + 200);
  *(v5 + 308) = a2;
  *(v5 + 312) = a3;
  *(v5 + 320) = a4;
  *(v5 + 328) = -1;
  if (a4)
  {
    v6 = allchrs(a4);
  }

  else
  {
    v6 = 0;
  }

  *(v5 + 332) = v6;

  next_fieldval(a1);
}

void next_fieldval(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = *(v1 + 328);
  v3 = v2 + 1;
  *(v1 + 328) = v2 + 1;
  v4 = vstmtbl[12 * *(v1 + 308) + 1];
  v5 = *(v1 + 312);
  if (v2 + 1 >= *&v4[40 * v5 + 28] || (v6 = *(v1 + 320)) != 0 && *v6)
  {
    v7 = *&v4[40 * v5 + 28];
    v8 = &v4[40 * v5];
    for (i = v2 + 2; v3 < v7; ++i)
    {
      v10 = *(*(v8 + 2) + 8 * v3);
      if (strprefix(v10, *(v1 + 320)) || *(v1 + 332) && !strcmp(v10, "undefined"))
      {
        break;
      }

      ++v3;
      *(v1 + 328) = i;
    }
  }

  OUTLINED_FUNCTION_15_42();
}

uint64_t can_del_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 200);
  if (*v3 == a3 || v3[1] == a3)
  {
    return 0;
  }

  if (!is_token_next(a1, a2, a3))
  {
    return 1;
  }

  v7 = (*(a3 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL);
  if (v7)
  {
    if ((*v7 & 2) != 0)
    {
      return 1;
    }
  }

  v8 = *(a3 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = &vstmtbl[12 * a2];
  if (*(v9 + 86) || (field_value(a2, v7, 0, v37), *v37 == 5259591) && (field_value(a2, v8, 0, v36), *v36 == 5259591))
  {
    v10 = 1;
    while (v10 < *(v9 + 16))
    {
      switch(*(v9[1] + 15))
      {
        case 0xFFFB:
          v11 = OUTLINED_FUNCTION_2_60();
          v13 = *v12(v11);
          v14 = OUTLINED_FUNCTION_1_65();
          if (v13 != *v15(v14))
          {
            return 0;
          }

          goto LABEL_18;
        case 0xFFFC:
          v31 = OUTLINED_FUNCTION_2_60();
          v18 = *v32(v31);
          v33 = OUTLINED_FUNCTION_1_65();
          v21 = *v34(v33);
          goto LABEL_17;
        case 0xFFFD:
          v22 = OUTLINED_FUNCTION_2_60();
          v24 = *v23(v22);
          v25 = OUTLINED_FUNCTION_1_65();
          if (v24 != *v26(v25))
          {
            return 0;
          }

          goto LABEL_18;
        case 0xFFFE:
          v27 = OUTLINED_FUNCTION_2_60();
          v18 = *v28(v27);
          v29 = OUTLINED_FUNCTION_1_65();
          v21 = *v30(v29);
          goto LABEL_17;
        case 0xFFFF:
          v16 = OUTLINED_FUNCTION_2_60();
          v18 = *v17(v16);
          v19 = OUTLINED_FUNCTION_1_65();
          v21 = *v20(v19);
LABEL_17:
          if (v18 != v21)
          {
            return 0;
          }

LABEL_18:
          ++v10;
          break;
        default:
          return 0;
      }
    }

    return 1;
  }

  return 0;
}

unsigned __int16 *pvlist_size(unsigned __int16 *result)
{
  if (result)
  {
    return (bswap32(*result) >> 17);
  }

  return result;
}

void *pvlist_name()
{
  OUTLINED_FUNCTION_10_47();
  v4 = vardesc(v0, v1, v2, v3);
  if (v4)
  {
    return *v4;
  }

  else
  {
    return &unk_26E1F942A;
  }
}

uint64_t allow_left_ctxt(uint64_t a1, _BYTE *a2, int a3, _BYTE *a4)
{
  if (a2 != a4)
  {
    v4 = *(*(a1 + 192) + 9084) + a3;
    if (*&a2[8 * v4])
    {
      while (a2 != a4)
      {
        a2 = (*&a2[8 * v4] & 0xFFFFFFFFFFFFFFFCLL);
        if (!a2 || (*a2 & 2) == 0)
        {
          return 0;
        }
      }
    }
  }

  return OUTLINED_FUNCTION_4_51();
}

uint64_t allow_right_ctxt(uint64_t a1, _BYTE *a2, int a3, _BYTE *a4)
{
  if (a2 != a4)
  {
    v4 = *(*(a1 + 192) + 9084) + a3;
    if (*&a2[8 * v4])
    {
      while (a2 != a4)
      {
        a2 = (*&a2[8 * v4] & 0xFFFFFFFFFFFFFFFCLL);
        if (!a2 || (*a2 & 2) == 0)
        {
          return 0;
        }
      }
    }
  }

  return OUTLINED_FUNCTION_4_51();
}

char *extract_string(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char *a5, int a6)
{
  v9 = a3;
  v18 = *MEMORY[0x277D85DE8];
  if (!visleft(a1, a3, a4))
  {
    return 0;
  }

  v12 = a6 - 1;
  v13 = a5;
  while (v9 != a4 && v12)
  {
    if (is_token_next(a1, a2, v9))
    {
      v14 = v17;
      field_value(a2, *(v9 + 8 * (*(*(a1 + 192) + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL, 0, v17);
      while (1)
      {
        v15 = *v14;
        if (!*v14 || !v12)
        {
          break;
        }

        ++v14;
        *v13++ = v15;
        --v12;
      }
    }

    v9 = VRSYNC(a1, v9, a2);
  }

  *v13 = 0;
  return a5;
}

BOOL ins_tok_named(uint64_t *a1, int a2, uint64_t a3, char *__s1, uint64_t a5)
{
  v11 = 0;
  v10 = a3;
  LOWORD(v11) = *(vstmtbl[12 * a2 + 1] + 15);
  *(&v11 + 2) = strcmp(__s1, "GAP") == 0;
  v8 = VLSYNC(a5, a2);
  return vins_tok(a1, a2, v8, a5, &v10) != 0;
}

uint64_t set_fld_value(uint64_t *a1, unsigned __int8 a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = VLSYNC(a6, a2);
  vmark(a1, a2, a3, v11, a6, a4);
  return 1;
}

void *ins_sync(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v5 = a2;
  if (a4)
  {
    vins_sync(a1, a2, (a3[a2 + 3] & 0xFFFFFFFFFFFFFFFCLL), a3);
    return VLSYNC(a3, v5);
  }

  else
  {
    vins_sync(a1, a2, a3, a3[*(*(a1 + 192) + 9084) + a2] & 0xFFFFFFFFFFFFFFFCLL);
    return VRSYNC(a1, a3, v5);
  }
}

uint64_t project_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = 0;
  if (a2 && a4)
  {
    if (a5)
    {
      if (vproj_l(a1, a2, a4, a3))
      {
        return 1;
      }
    }

    else if (vproj_r(a1, a2, a4, a3))
    {
      return 1;
    }

    return 0;
  }

  return v5;
}

void merge_sync(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*(a4 + 8 * (*(*(a1 + 192) + 9084) + a3)) & 1) != 0 && project_sync(a1, a2, a3, a4, 0))
  {
    if (a2 == a4)
    {
LABEL_5:
      vmerge(a1, a4, a2, v7);
      goto LABEL_6;
    }

    v8 = *(a1 + 200);
    v9 = *v8;
    v10 = v8[1];
    if ((v9 != a2 || v10 != a4) && (v9 != a4 || v10 != a2))
    {
      for (i = 0; ; ++i)
      {
        if (i >= *(a1 + 288))
        {
          goto LABEL_5;
        }

        v14 = i + *(*(a1 + 192) + 9084);
        v15 = *(a2 + 8 * v14);
        v16 = *(a4 + 8 * v14);
        v17 = a2 + 8 * i;
        v18 = a4 + 8 * i;
        if (v15)
        {
          if (v16)
          {
            if ((v15 & 0xFFFFFFFFFFFFFFFCLL) != a4 && (*(v17 + 24) & 0xFFFFFFFFFFFFFFFCLL) != a4)
            {
              break;
            }
          }

          else
          {
            v19 = *(v18 + 24) & 0xFFFFFFFFFFFFFFFCLL;
            if (v19 != a2 && !visleft(a1, v19, a2))
            {
              break;
            }

            v20 = v16 & 0xFFFFFFFFFFFFFFFCLL;
            if ((v16 & 0xFFFFFFFFFFFFFFFCLL) != a2)
            {
              v21 = a1;
              v22 = a2;
              goto LABEL_31;
            }
          }
        }

        else if (v16)
        {
          v23 = *(v17 + 24) & 0xFFFFFFFFFFFFFFFCLL;
          if (v23 != a4 && !visleft(a1, v23, a4))
          {
            break;
          }

          v20 = v15 & 0xFFFFFFFFFFFFFFFCLL;
          if ((v15 & 0xFFFFFFFFFFFFFFFCLL) != a4)
          {
            v21 = a1;
            v22 = a4;
LABEL_31:
            if (!visright(v21, v20, v22))
            {
              break;
            }

            continue;
          }
        }

        else if (visleft(a1, v15 & 0xFFFFFFFFFFFFFFFCLL, *(v18 + 24) & 0xFFFFFFFFFFFFFFFCLL) || visright(a1, *(v17 + 24) & 0xFFFFFFFFFFFFFFFCLL, *(a4 + 8 * (i + *(*(a1 + 192) + 9084))) & 0xFFFFFFFFFFFFFFFCLL))
        {
          break;
        }
      }
    }
  }

LABEL_6:
  OUTLINED_FUNCTION_15_42();
}

void fill_stream_list(uint64_t a1, int *a2, _BYTE *a3)
{
  if (*a3)
  {
    v5 = OUTLINED_FUNCTION_9_47(*a3);
    *(a2 + 1) = v5;
    if (!v5)
    {
      goto LABEL_29;
    }

    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = *a2;
      if (v6 >= v8)
      {
        break;
      }

      v9 = &a3[v7];
      v10 = *(a2 + 1);
      *(v10 + 16 * v6) = *v9;
      v11 = v9[1];
      v12 = v9 + 2;
      v13 = 1;
      for (i = v11; i; --i)
      {
        if (*v12++)
        {
          ++v13;
        }
      }

      *(v10 + 16 * v6 + 4) = v13;
      v16 = malloc_type_calloc(v13, 4uLL, 0x100004052888210uLL);
      *(*(a2 + 1) + 16 * v6 + 8) = v16;
      if (v16)
      {
        *v16 = 0;
        v17 = &a3[v7 + 2];
        v7 += v11 + 2;
        v18 = 1;
        while (1)
        {
          v19 = __OFSUB__(v11, 1);
          LODWORD(v11) = v11 - 1;
          if (v11 < 0 != v19)
          {
            break;
          }

          if (*v17)
          {
            *(*(*(a2 + 1) + 16 * v6 + 8) + v18++) = *v17;
          }

          ++v17;
        }
      }

      else
      {
        v7 += 2;
      }

      ++v6;
    }

    v20 = *(a2 + 1) + 16 * v8;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_9_47(*(a1 + 288));
    *(a2 + 1) = v21;
    if (!v21)
    {
      goto LABEL_29;
    }

    for (j = 0; ; ++j)
    {
      v23 = *a2;
      if (j >= v23)
      {
        break;
      }

      v24 = &v21[2 * j];
      *v24 = j;
      v25 = SLODWORD(vstmtbl[12 * j + 8]);
      *(v24 + 1) = v25;
      v26 = malloc_type_calloc(v25, 4uLL, 0x100004052888210uLL);
      v21 = *(a2 + 1);
      v21[2 * j + 1] = v26;
      if (v26)
      {
        for (k = 0; ; ++k)
        {
          v28 = &v21[2 * j];
          if (k >= *(v28 + 1))
          {
            break;
          }

          *(*(v28 + 1) + k) = k;
          v21 = *(a2 + 1);
        }
      }
    }

    v20 = &v21[2 * v23];
  }

  if (!*(v20 - 8))
  {
    free_stream_list(a2);
  }

LABEL_29:
  OUTLINED_FUNCTION_15_42();
}

void free_stream_list(int *a1)
{
  v2 = 0;
  for (i = 8; ; i += 16)
  {
    v4 = *(a1 + 1);
    if (v2 >= *a1)
    {
      break;
    }

    free(*&v4[i]);
    ++v2;
  }

  free(v4);
  *(a1 + 1) = 0;
}

BOOL insert_string(uint64_t *a1, uint64_t a2, uint64_t *a3, char *a4)
{
  *__s2 = 0;
  v4 = &vstmtbl[12 * a2];
  v6 = v4[1];
  v5 = v4 + 1;
  if (*(v6 + 15) >= 0xFFFEu && LOBYTE(vstmtbl[12 * a2 + 10]))
  {
    if ((a3[a2 + 3] & 0xFFFFFFFFFFFFFFFCLL) == 0 || (*(a3[a2 + 3] & 0xFFFFFFFFFFFFFFFCLL) & 2) == 0)
    {
LABEL_8:
      ins_sync(a1, a2, a3, 1);
    }

LABEL_9:
    if (!*a4)
    {
      result = 1;
      *(a1[23] + 452) = 1;
      return result;
    }

    v12 = 0;
    __s2[0] = *a4;
    v13 = *v5;
    v14 = *(*v5 + 14) & ~(*(*v5 + 14) >> 31);
    while (v14 != v12)
    {
      if (!strcmp(*(*(v13 + 2) + 8 * v12), __s2))
      {
        if (*(v13 + 15) == -1)
        {
          v18 = v12;
          v15 = &v18;
        }

        else
        {
          v17 = v12;
          v15 = &v17;
        }

        result = ins_tok_named(a1, a2, v15, __s2, a3);
        if (!result)
        {
          return result;
        }

        if (*++a4)
        {
          goto LABEL_8;
        }

        goto LABEL_9;
      }

      ++v12;
    }
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_0_70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, _DWORD *a4@<X3>, char a5@<W8>)
{
  *a3 = a5;
  *a4 = *(*(*(a2 + 8) + 16 * *(*(a1 + 200) + 300) + 8) + *(*(a1 + 200) + 304));
  return 1;
}

void *OUTLINED_FUNCTION_9_47(size_t a1)
{
  *v1 = a1;

  return malloc_type_calloc(a1, 0x10uLL, 0x1010040449DF08BuLL);
}

int *OUTLINED_FUNCTION_12_46()
{

  return __error();
}

uint64_t vproj_r(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((*(a2 + 8 * (*(*(a1 + 192) + 9084) + a4)) & 1) == 0)
  {
    OUTLINED_FUNCTION_7_49();
    if (*(v9 + 8864))
    {
      OUTLINED_FUNCTION_2_61(v5, 1);
      OUTLINED_FUNCTION_2_61(v5, 0);
      v8 = *(*(v5 + 192) + 9084) + v6;
    }

    v10 = *(v7 + 8 * v8) & 0xFFFFFFFFFFFFFFFCLL;
    if (!v10 || (v11 = *(v7 + 8 * v8) & 0xFFFFFFFFFFFFFFFCLL, (*v10 & 2) == 0))
    {
      v11 = *(v10 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }

    v12 = OUTLINED_FUNCTION_3_57();
    project_rl(v12, v13, v7, v14, v6);
    if (NONSEQ(v4) && *(*(v5 + 192) + 8868))
    {
      v15 = OUTLINED_FUNCTION_3_57();
      DELSPINE(v15, v16);
      v17 = OUTLINED_FUNCTION_3_57();
      INSSPINEL(v17, v18, v11);
    }
  }

  return 1;
}

unint64_t vgetsc(uint64_t a1, int a2, int a3, uint64_t a4, unsigned int a5)
{
  v6 = a4;
  if (a3)
  {
    if (*(*(a1 + 192) + 8868))
    {
      if (!NONSEQ(a4))
      {
        v9 = *(a1 + 192);
        if (!*(*(v9 + 9072) + a5))
        {
          if (!a2)
          {
            for (i = *(v9 + 9084); ; v6 = *(v6 + 8 * i - 16) & 0xFFFFFFFFFFFFFFFCLL)
            {
              if (*(v6 + 8 * (i + a5)))
              {
                if (!NONSEQ(v6))
                {
                  return v6;
                }

                OUTLINED_FUNCTION_9_48();
              }
            }
          }

          while (1)
          {
            if (*(v6 + 8 * (*(v9 + 9084) + a5)))
            {
              if (!NONSEQ(v6))
              {
                return v6;
              }

              v9 = *(a1 + 192);
            }

            v6 = *(v6 + 8) & 0xFFFFFFFFFFFFFFFCLL;
          }
        }
      }
    }

    v10 = 0;
    v11 = 1;
    v12 = v6;
    v13 = v6;
LABEL_6:
    if (v11 >= 1 && v6)
    {
      while (1)
      {
        v14 = v6;
        OUTLINED_FUNCTION_9_48();
        if ((*(v6 + 8 * (v15 + a5)) & 1) == 0)
        {
          break;
        }

        v6 = *(v6 + 8 * v15 - 8) & 0xFFFFFFFFFFFFFFFCLL;
        v10 = v14;
        if (!v6)
        {
          goto LABEL_29;
        }
      }

      for (j = 0; ; ++j)
      {
        OUTLINED_FUNCTION_9_48();
        if (j >= v18)
        {
          v23 = v14 + 8 * v17;
          v24 = *(v23 - 8);
          v6 = v24 & 0xFFFFFFFFFFFFFFFCLL;
          *(v23 - 8) = v24 & 3;
          if (v10)
          {
            OUTLINED_FUNCTION_5_51();
            *(v10 + 8 * v25 - 8) = *(v10 + 8 * v25 - 8) & 3 | v6;
          }

          else
          {
            v13 = v24 & 0xFFFFFFFFFFFFFFFCLL;
          }

          --v11;
          goto LABEL_6;
        }

        if ((*(v14 + 8 * (j + v17)) & 1) == 0)
        {
          goto LABEL_23;
        }

        if (a2)
        {
          if (!VLSYNC(v14, j))
          {
            goto LABEL_23;
          }
        }

        else if (!VRSYNC(a1, v14, j))
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_5_51();
        v21 = v20 - 1;
        if (*(v19 + 8 * v21) <= 3uLL && v19 != v12)
        {
          *(v12 + 8 * v21) = *(v12 + 8 * v21) & 3 | v19;
          ++v11;
          goto LABEL_24;
        }

LABEL_23:
        v19 = v12;
LABEL_24:
        v12 = v19;
      }
    }

LABEL_29:
    v6 = 0;
    v26 = *(*(a1 + 200) + 8 * (a2 != 0));
LABEL_30:
    while (1)
    {
      v27 = v13;
      if (v11 < 2)
      {
        break;
      }

      while (v27)
      {
        v28 = v27;
        OUTLINED_FUNCTION_5_51();
        v27 = *(v27 + 8 * v29 - 8) & 0xFFFFFFFFFFFFFFFCLL;
        v30 = *(v28 + 16);
        if ((v30 & 1) == 0)
        {
          v31 = v30 & 0xFFFFFFFFFFFFFFFCLL;
          if (v31)
          {
            v32 = v31;
          }

          else
          {
            v32 = v28;
          }

          if (a2)
          {
            v33 = VRSYNC(a1, v32, a5);
          }

          else
          {
            v33 = VLSYNC(v32, a5);
          }

          if (v33 == v26)
          {
            v11 = 1;
            v6 = v28;
            goto LABEL_30;
          }

          OUTLINED_FUNCTION_5_51();
          if (*(v34 + 8 * v35 - 8) > 3uLL || v34 == v12)
          {
            *(v28 + 16) |= 1uLL;
            --v11;
          }

          else
          {
            *(v28 + 16) = *(v28 + 16) & 3 | v34;
          }
        }
      }
    }

    while (v13)
    {
      if (!v6)
      {
        if (*(v13 + 16))
        {
          v6 = 0;
        }

        else
        {
          v6 = v13;
        }
      }

      OUTLINED_FUNCTION_5_51();
      *(v13 + 8 * v37 - 8) &= 3uLL;
      *(v13 + 16) &= 2uLL;
      OUTLINED_FUNCTION_5_51();
      v39 = v13 + 8 * v38;
      v13 = v40 & 0xFFFFFFFFFFFFFFFCLL;
      *(v39 - 8) &= ~1uLL;
    }
  }

  else
  {
    if (a2)
    {
      v41 = (a4 + 8 * a5 + 24);
    }

    else
    {
      OUTLINED_FUNCTION_9_48();
      v41 = (v6 + 8 * (v42 + a5));
    }

    return *v41 & 0xFFFFFFFFFFFFFFFCLL;
  }

  return v6;
}

void project_rl(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5)
{
  v10 = *(*(a1 + 192) + 9084) + a5;
  *(a2 + 8 * v10) |= 1uLL;
  CLRONESTM(a2);
  if (ALLNSQ(a2) && !*(*(*(a1 + 192) + 9072) + a5))
  {
    CLRALLNSQ(a2);
  }

  if (a3 != a4)
  {
    *(a2 + 8 * (a5 + 3)) = *(a2 + 8 * (a5 + 3)) & 3 | a3;
    v11 = *(*(a1 + 192) + 9084) + a5;
    *(a2 + 8 * v11) = *(a2 + 8 * v11) & 3 | a4;
    if (a3 && (*a3 & 2) != 0)
    {
      v12 = *(*(a1 + 192) + 9084) + a5;
      *(a3 + 8 * v12) = *(a3 + 8 * v12) & 3 | a2;
      if (!a4)
      {
LABEL_11:
        *a4 = a2;
        return;
      }
    }

    else
    {
      *(a3 + 8) = a2;
      if (!a4)
      {
        goto LABEL_11;
      }
    }

    if ((*a4 & 2) == 0)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_8_49(a5 + 3);
  }
}

uint64_t vproj_l(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a2 + 8 * (*(*(a1 + 192) + 9084) + a4)))
  {
    return 1;
  }

  OUTLINED_FUNCTION_7_49();
  if (*(v8 + 8864))
  {
    OUTLINED_FUNCTION_2_61(v5, 1);
    if ((*(v4 + 8 * (*(*(v5 + 192) + 9084) + v6)) & 1) == 0)
    {
      OUTLINED_FUNCTION_2_61(v5, 0);
    }
  }

  v9 = (*(v7 + 8 * v6 + 24) & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v9;
    v11 = *(v7 + 8 * v6 + 24) & 0xFFFFFFFFFFFFFFFCLL;
    if ((*v9 & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = MEMORY[0];
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
LABEL_10:
  v12 = OUTLINED_FUNCTION_3_57();
  project_rl(v12, v13, v14, v7, v6);
  if (NONSEQ(v4) && *(*(v5 + 192) + 8868))
  {
    v15 = OUTLINED_FUNCTION_3_57();
    DELSPINE(v15, v16);
    v17 = OUTLINED_FUNCTION_3_57();
    INSSPINER(v17, v18, v11);
  }

  return 1;
}

uint64_t vctxtinit(uint64_t a1)
{
  if (*(a1 + 288))
  {
    *(*(a1 + 200) + 352) = malloc_type_malloc(8 * *(a1 + 288), 0x80040B8603338uLL);
    *(*(a1 + 200) + 360) = OUTLINED_FUNCTION_6_50();
    *(*(a1 + 200) + 368) = OUTLINED_FUNCTION_6_50();
    *(*(a1 + 200) + 376) = OUTLINED_FUNCTION_6_50();
    *(*(a1 + 200) + 384) = malloc_type_malloc(*(a1 + 288), 0x100004077774924uLL);
    v2 = malloc_type_malloc(*(a1 + 288), 0x100004077774924uLL);
    v3 = *(a1 + 200);
    v3[49] = v2;
  }

  else
  {
    v3 = *(a1 + 200);
  }

  v4 = v3[44];
  if (v4 && v3[45] && v3[46] && v3[47] && v3[48] && v3[49])
  {
    return 1;
  }

  free(v4);
  free(*(*(a1 + 200) + 360));
  free(*(*(a1 + 200) + 368));
  free(*(*(a1 + 200) + 376));
  free(*(*(a1 + 200) + 384));
  free(*(*(a1 + 200) + 392));
  return 0;
}

uint64_t vproject(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5)
{
  v5 = *(*(a1 + 192) + 9084) + a5;
  if ((*(a2 + 8 * v5) & 1) == 0)
  {
    if (a3 && a4 && (*a3 & 2) != 0)
    {
      if ((*a4 & 2) != 0)
      {
        v11 = a5 + 3;
        OUTLINED_FUNCTION_1_66(v5);
        v12 = ALLNSQ(a2);
        v13 = *(a1 + 192);
        if (v12 && !*(*(v13 + 9072) + a5))
        {
          CLRALLNSQ(a2);
          v13 = *(a1 + 192);
        }

        OUTLINED_FUNCTION_4_52(v13);
        *&a4[8 * v11] = *&a4[8 * v11] & 3 | a2;
        OUTLINED_FUNCTION_0_71(*(a1 + 192));
        v14 = (a2 + 8 * v11);
LABEL_24:
        *v14 = *v14 & 3 | a3;
        if (NONSEQ(a2))
        {
          if (*(*(a1 + 192) + 8868))
          {
            DELSPINE(a1, a2);
            INSSPINEL(a1, a2, a4);
          }
        }

        return 1;
      }
    }

    else
    {
      if (a4 && (*a4 & 2) != 0)
      {
        OUTLINED_FUNCTION_1_66(v5);
        v19 = ALLNSQ(a2);
        v20 = *(a1 + 192);
        if (v19 && !*(*(v20 + 9072) + a5))
        {
          CLRALLNSQ(a2);
          v20 = *(a1 + 192);
        }

        *(a3 + 8) = a2;
        OUTLINED_FUNCTION_0_71(v20);
        OUTLINED_FUNCTION_8_49(a5 + 3);
        v14 = (a2 + 8 * v21);
        goto LABEL_24;
      }

      if (!a3)
      {
        return 0;
      }
    }

    if ((*a3 & 2) != 0)
    {
      OUTLINED_FUNCTION_1_66(v5);
      v16 = ALLNSQ(a2);
      v17 = *(a1 + 192);
      if (v16)
      {
        v18 = a5;
        if (!*(*(v17 + 9072) + a5))
        {
          CLRALLNSQ(a2);
          v17 = *(a1 + 192);
        }
      }

      else
      {
        v18 = a5;
      }

      OUTLINED_FUNCTION_4_52(v17);
      OUTLINED_FUNCTION_0_71(*(a1 + 192));
      *a4 = a2;
      v14 = (a2 + 8 * v18 + 24);
      goto LABEL_24;
    }

    return 0;
  }

  return 1;
}

uint64_t vdef_proj(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 8 * (*(*(a1 + 192) + 9084) + a3)))
  {
    return 1;
  }

  v6 = vgetsc(a1, 1, 1, a2, a3);
  if (*(*(a1 + 192) + 8864))
  {
    v7 = vgetsc(a1, 0, 1, a2, a3);
  }

  else
  {
    v7 = VRSYNC(a1, v6, a3);
  }

  return vproject(a1, a2, v6, v7, a3);
}

uint64_t vsetsc(uint64_t result, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if (a2)
  {
    v6 = (a4 + 8 * a5 + 24);
  }

  else
  {
    v6 = (a4 + 8 * (*(*(result + 192) + 9084) + a5));
  }

  *v6 = *v6 & 3 | a6;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_66@<X0>(uint64_t a1@<X8>)
{
  *(*(v3 + 184) + 452) = 1;
  *(v2 + 8 * a1) = v1 | 1;

  return CLRONESTM(v2);
}

unint64_t OUTLINED_FUNCTION_2_61(uint64_t a1, int a2)
{

  return vgetsc(a1, a2, 1, v2, v3);
}

void *OUTLINED_FUNCTION_6_50()
{
  v3 = 8 * *(v0 + 288);

  return malloc_type_malloc(v3, v1);
}

double delta_lib_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x930uLL, 0x10B00402BA2B37CuLL);
  *(a1 + 200) = v2;
  bzero(v2, 0x930uLL);
  v3 = *(a1 + 200);
  *(v3 + 336) = "---";
  *(v3 + 344) = 1;
  result = NAN;
  *(v3 + 656) = -1;
  *(v3 + 2232) = 0;
  return result;
}

void delta_lib_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 200);
    if (v2)
    {
      bzero(v2, 0x930uLL);
      free(*(a1 + 200));
      *(a1 + 200) = 0;
    }
  }
}

uint64_t absoluteSyncNumPtr(uint64_t a1)
{
  if (a1)
  {
    return a1 & 0xFFFFFFFC;
  }

  else
  {
    return -1;
  }
}

uint64_t absoluteSyncNum(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return getDeltaHeapSegNumber(a1, a2, *(*(a1 + 200) + 248));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *VLSYNC(uint64_t a1, int a2)
{
  result = (*(a1 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL);
  if (result)
  {
    if ((*result & 2) == 0)
    {
      return (*result & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  return result;
}

unint64_t VRSYNC(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a2 + 8 * (*(*(a1 + 192) + 9084) + a3)) & 0xFFFFFFFFFFFFFFFCLL;
  if (result)
  {
    if ((*result & 2) == 0)
    {
      return *(result + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }
  }

  return result;
}

uint64_t SETFENCE(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(*(result + 192) + 9084) + a3;
  *(a2 + 8 * v3) |= 2uLL;
  return result;
}

uint64_t UNSETFENCE(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(*(result + 192) + 9084) + a3;
  *(a2 + 8 * v3) &= ~2uLL;
  return result;
}

uint64_t SETSPINER(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 + 8 * *(*(result + 192) + 9084);
  *(v3 - 16) = *(v3 - 16) & 3 | a3;
  return result;
}

void INSSPINER(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 8 * *(*(a1 + 192) + 9084) - 16;
  v4 = *(a3 + v3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a2 + v3) = v4 | *(a2 + v3) & 3;
  *(v4 + 8) = *(v4 + 8) & 3 | a2;
  v5 = a3 + 8 * *(*(a1 + 192) + 9084);
  *(v5 - 16) = *(v5 - 16) & 3 | a2;
  *(a2 + 8) = *(a2 + 8) & 3 | a3;
  OUTLINED_FUNCTION_0_72(&spine_changed);
}

void INSSPINEL(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8) & 0xFFFFFFFFFFFFFFFCLL;
  *(a2 + 8) = v3 | *(a2 + 8) & 3;
  v4 = v3 + 8 * *(*(a1 + 192) + 9084);
  *(v4 - 16) = *(v4 - 16) & 3 | a2;
  *(a3 + 8) = *(a3 + 8) & 3 | a2;
  v5 = a2 + 8 * *(*(a1 + 192) + 9084);
  *(v5 - 16) = *(v5 - 16) & 3 | a3;
  OUTLINED_FUNCTION_0_72(&spine_changed);
}

void DELSPINE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = 8 * *(*(a1 + 192) + 9084) - 16;
  v4 = *(a2 + v3) & 0xFFFFFFFFFFFFFFFCLL;
  *((v2 & 0xFFFFFFFFFFFFFFFCLL) + v3) = v4 | *((v2 & 0xFFFFFFFFFFFFFFFCLL) + v3) & 3;
  *(v4 + 8) = v2 & 0xFFFFFFFFFFFFFFFCLL | *(v4 + 8) & 3;
  OUTLINED_FUNCTION_0_72(&spine_changed);
}

uint64_t vinit_stm(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = &vstmtbl[12 * a2];
  vdel_2pt(a1, a2, **(a1 + 200), *(*(a1 + 200) + 8));
  if (!*(v4 + 48))
  {
    return 1;
  }

  v9 = 0;
  v5 = v4[1];
  v6 = v4[2];
  LOWORD(v9) = *(v5 + 15);
  BYTE2(v9) = v5[32];
  v8 = (*v6)(v4[5]);
  result = vins_tok(a1, v2, **(a1 + 200), *(*(a1 + 200) + 8), &v8);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t vdel_2pt(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[25];
  *(v8 + 136) = a2;
  *(v8 + 120) = a3;
  *(v8 + 128) = a4;
  v9 = a2;
  v10 = VRSYNC(a1, a3, a2);
  *(v8 + 104) = v10;
  *(v8 + 112) = VLSYNC(a4, v9);
  OUTLINED_FUNCTION_8_50(a1[23]);
  if (v10 == a4)
  {
    v11 = (*(a3 + 8 * (*(a1[24] + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL);
    if (!v11 || (*v11 & 2) == 0)
    {
      fdeldel(a1, v11, v11);
    }
  }

  else
  {
    fdel(a1, 0);
  }

  return 1;
}

uint64_t vins_tok(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[24];
  *(a1[23] + 452) = 1;
  v12 = a4 + 8 * a2;
  if ((*(a3 + 8 * (*(v10 + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL) != a4 || (*(v12 + 24) & 0xFFFFFFFFFFFFFFFCLL) != a3)
  {
    vdel_2pt(a1, a2, a3, a4);
  }

  v13 = &vstmtbl[12 * a2];
  result = alloc_tok(a1, v13);
  if (result)
  {
    v15 = *(a1[24] + 9084) + a2;
    *(a3 + 8 * v15) = *(a3 + 8 * v15) & 3 | result;
    *(v12 + 24) = *(v12 + 24) & 3 | result;
    *result = a3;
    *(result + 8) = a4;
    if (*(a5 + 8) < 0)
    {
      vinitflds(result, a2, (result + 16), *a5);
    }

    else
    {
      memcpy((result + 16), *a5, *(v13 + 17));
    }

    result = 1;
    v16 = a1[24];
    *(a1[23] + 452) = 1;
    *(v16 + 9080) = 0;
  }

  return result;
}

uint64_t vmergable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a2 != a3 && *(*(a1 + 192) + 8864))
  {
    v5 = *(a1 + 200);
    v6 = *v5;
    v7 = v5[1];
    if (v6 == a2 && v7 == a3)
    {
      return OUTLINED_FUNCTION_2_62();
    }

    else
    {
      return v6 != a3 || v7 != a2;
    }
  }

  return result;
}

uint64_t vmerge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 1;
  if (a2 != a3)
  {
    v6 = a3;
    *(*(a1 + 184) + 452) = 1;
    v7 = *(a1 + 200);
    if (*v7 == a3 || v7[1] == a3 || *(*(a1 + 192) + 8868) && (*(a2 + 16) & 2) != 0)
    {
      v8 = a3;
      v6 = a2;
    }

    else
    {
      v8 = a2;
    }

    v9 = 0;
    v10 = *(a1 + 288);
    while (1)
    {
      if (v9 >= v10)
      {
        v12 = 0;
        goto LABEL_15;
      }

      v11 = *(*(a1 + 192) + 9084) + v9;
      if (*(v8 + 8 * v11) & 1) != 0 && (*(v6 + 8 * v11))
      {
        break;
      }

      ++v9;
    }

    v12 = v8 == (*(v6 + 8 * v9 + 24) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_15:
    for (i = 0; ; i = v14 + 1)
    {
      v14 = i;
      if (i >= v10)
      {
        break;
      }

      v15 = *(*(a1 + 192) + 9084) + i;
      if (*(v6 + 8 * v15))
      {
        if ((*(v8 + 8 * v15) & 1) == 0 && v12)
        {
          v16 = OUTLINED_FUNCTION_7_50();
          result = vproj_l(v16, v17, v18, v19);
          if (!result)
          {
            return result;
          }

          v20 = OUTLINED_FUNCTION_7_50();
          result = vproj_r(v20, v21, v22, v23);
          if (!result)
          {
            return result;
          }
        }

        vdel_1pt(a1, v14, v6);
        v10 = *(a1 + 288);
      }
    }

    return 1;
  }

  return result;
}

uint64_t vdel_1pt(uint64_t a1, unsigned int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_50(*(a1 + 184));
  v7 = *(v6 + 200);
  *(v7 + 136) = v8;
  *(v7 + 104) = v9;
  *(v7 + 112) = v9;
  v10 = v8;
  *(v7 + 120) = VLSYNC(v9, v8);
  *(v7 + 128) = VRSYNC(a1, a3, v10);
  v11 = *(a3 + 8 * (*(*(a1 + 192) + 9084) + a2));
  if (v11)
  {
    v23 = 0;
    v21 = 0;
    v12 = (*(a3 + 8 * (a2 + 3)) & 0xFFFFFFFFFFFFFFFCLL);
    if (!v12 || (*v12 & 2) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      if ((v11 & 0xFFFFFFFFFFFFFFFCLL) == 0 || (*v13 & 2) == 0)
      {
        v14 = &vstmtbl[12 * a2];
        LOWORD(v21) = *(vstmtbl[12 * a2 + 1] + 15);
        LOWORD(v23) = v21;
        v15 = v14[2];
        BYTE2(v21) = v14[1][32];
        BYTE2(v23) = BYTE2(v21);
        __dst = (*v15)((v12 + 16));
        v20 = (*v14[2])(v13 + 16);
        if (*(v14 + 86))
        {
          vadd(a1, &v20, &__dst);
          vinitflds(v16, a2, __dst, v20);
          v17 = *(a1 + 192);
          *(*(a1 + 184) + 452) = 1;
          v18 = *(v13 + 8) & 0xFFFFFFFFFFFFFFFCLL;
          *(a3 + 8 * (*(v17 + 9084) + a2)) = v18 | *(a3 + 8 * (*(v17 + 9084) + a2)) & 3;
          *(v18 + 8 * (a2 + 3)) = *(v18 + 8 * (a2 + 3)) & 3 | a3;
          cacheDeletedDeltaObject(a1, v13);
        }
      }
    }

    fdel(a1, 1);
  }

  return 1;
}

uint64_t vscanadv(void *a1, int a2, int a3)
{
  i = 0;
  v4 = a1[24];
  v5 = *(v4 + 8080);
  v6 = *(v4 + 8088);
  if (a3)
  {
    v7 = *(v4 + 8121);
    if (*(v4 + 8121))
    {
      if (*(v4 + 8090))
      {
        i = 0;
      }

      else
      {
        for (i = 0; i < v7; ++i)
        {
          v11 = *(v4 + 9084);
          v12 = *(a1[31] + i);
          if (*(v5 + 8 * (v11 + v12)))
          {
            return OUTLINED_FUNCTION_2_62();
          }

          v13 = *(v5 + 8 * (v11 + v12));
          v14 = a1[35];
          if ((v13 & 2) != 0 && v6 != v12 && !*(v14 + i))
          {
            return OUTLINED_FUNCTION_2_62();
          }

          *(v14 + i) = 0;
          v4 = a1[24];
          v7 = *(v4 + 8121);
        }
      }
    }
  }

  if (!v5)
  {
    return OUTLINED_FUNCTION_2_62();
  }

  v8 = (*(v4 + 8089) ? v5 + 8 * (*(v4 + 9084) + v6) : v5 + 8 * v6 + 24);
  v9 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
  if (!v9)
  {
    return OUTLINED_FUNCTION_2_62();
  }

  if ((*v9 & 2) != 0)
  {
    goto LABEL_13;
  }

  if (!a2)
  {
    return OUTLINED_FUNCTION_2_62();
  }

  v9 = (*&v9[8 * (*(v4 + 8089) != 0)] & 0xFFFFFFFFFFFFFFFCLL);
LABEL_13:
  *(v4 + 8080) = v9;
  *(v4 + 8090) = 0;
  while (i < *(v4 + 8121))
  {
    *(a1[35] + i++) = 0;
    v4 = a1[24];
  }

  return OUTLINED_FUNCTION_4_53();
}

uint64_t vscanadvUptoTokenOrMarker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10_48();
  do
  {
    if (v6)
    {
      i = 0;
      if (v5)
      {
        v12 = *(v10 + 8121);
        if (v12)
        {
          if (*(v10 + 8090))
          {
            i = 0;
          }

          else
          {
            for (i = 0; i < v12; ++i)
            {
              v14 = *(v10 + 9084);
              v15 = *(v3[31] + i);
              if (*&v6[8 * v14 + 8 * v15])
              {
                return OUTLINED_FUNCTION_2_62();
              }

              v16 = *&v6[8 * v14 + 8 * v15];
              v17 = v3[35];
              if ((v16 & 2) != 0 && v7 != v15 && !*(v17 + i))
              {
                return OUTLINED_FUNCTION_2_62();
              }

              *(v17 + i) = 0;
              v10 = v3[24];
              v12 = *(v10 + v9);
            }
          }
        }
      }

      v13 = v8;
      if (*(v10 + 8089))
      {
        v13 = *(v10 + 9084) + v7;
      }

      v6 = (*&v6[8 * v13] & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        goto LABEL_10;
      }
    }

    return OUTLINED_FUNCTION_2_62();
LABEL_10:
    if ((*v6 & 2) == 0)
    {
      break;
    }

    *(v10 + 8080) = v6;
    *(v10 + 8090) = 0;
    while (i < *(v10 + v9))
    {
      *(v3[35] + i++) = 0;
      v10 = v3[24];
    }
  }

  while (v6 != v4);
  return OUTLINED_FUNCTION_4_53();
}

uint64_t vscanadvUptoToken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_10_48();
  while (1)
  {
    if (!v6)
    {
      return OUTLINED_FUNCTION_2_62();
    }

    i = 0;
    if (v5)
    {
      v12 = *(v10 + 8121);
      if (v12)
      {
        if (*(v10 + 8090))
        {
          i = 0;
        }

        else
        {
          for (i = 0; i < v12; ++i)
          {
            v14 = *(v10 + 9084);
            v15 = *(v4[31] + i);
            if (*&v6[8 * v14 + 8 * v15])
            {
              return OUTLINED_FUNCTION_2_62();
            }

            v16 = *&v6[8 * v14 + 8 * v15];
            v17 = v4[35];
            if ((v16 & 2) != 0 && v7 != v15 && !*(v17 + i))
            {
              return OUTLINED_FUNCTION_2_62();
            }

            *(v17 + i) = 0;
            v10 = v4[24];
            v12 = *(v10 + v9);
          }
        }
      }
    }

    v13 = v8;
    if (*(v10 + 8089))
    {
      v13 = *(v10 + 9084) + v7;
    }

    v6 = (*&v6[8 * v13] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v6)
    {
      return OUTLINED_FUNCTION_2_62();
    }

    if ((*v6 & 2) == 0)
    {
      break;
    }

    *(v10 + 8080) = v6;
    *(v10 + 8090) = 0;
    while (i < *(v10 + v9))
    {
      *(v4[35] + i++) = 0;
      v10 = v4[24];
    }
  }

  return OUTLINED_FUNCTION_4_53();
}

uint64_t vscanadvOverToken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_10_48();
  while (v6)
  {
    i = 0;
    if (v5)
    {
      v12 = *(v10 + 8121);
      if (v12)
      {
        if (*(v10 + 8090))
        {
          i = 0;
        }

        else
        {
          for (i = 0; i < v12; ++i)
          {
            v14 = *(v10 + 9084);
            v15 = *(v4[31] + i);
            if (*&v6[8 * v14 + 8 * v15])
            {
              return OUTLINED_FUNCTION_2_62();
            }

            v16 = *&v6[8 * v14 + 8 * v15];
            v17 = v4[35];
            if ((v16 & 2) != 0 && v7 != v15 && !*(v17 + i))
            {
              return OUTLINED_FUNCTION_2_62();
            }

            *(v17 + i) = 0;
            v10 = v4[24];
            v12 = *(v10 + v9);
          }
        }
      }
    }

    v13 = v8;
    if (*(v10 + 8089))
    {
      v13 = *(v10 + 9084) + v7;
    }

    v6 = (*&v6[8 * v13] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v6)
    {
      break;
    }

    *(v10 + 8080) = v6;
    *(v10 + 8090) = 0;
    while (i < *(v10 + 8121))
    {
      *(v4[35] + i++) = 0;
      v10 = v4[24];
    }

    if ((*v6 & 2) == 0)
    {
      *(v10 + 8080) = *&v6[8 * (*(v10 + 8089) != 0)] & 0xFFFFFFFFFFFFFFFCLL;
      return OUTLINED_FUNCTION_4_53();
    }
  }

  return OUTLINED_FUNCTION_2_62();
}

_BYTE *vmovel(_BYTE *a1, int a2)
{
  do
  {
    v2 = a1;
    a1 = (*&a1[8 * a2 + 24] & 0xFFFFFFFFFFFFFFFCLL);
  }

  while (a1 && (*a1 & 2) != 0);
  return v2;
}

_BYTE *vmover(uint64_t a1, _BYTE *a2, int a3)
{
  v3 = *(*(a1 + 192) + 9084) + a3;
  do
  {
    result = a2;
    a2 = (*&a2[8 * v3] & 0xFFFFFFFFFFFFFFFCLL);
  }

  while (a2 && (*a2 & 2) != 0);
  return result;
}

uint64_t vmark(uint64_t *a1, unsigned int a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a3;
  v11 = a1[25];
  *(v11 + 96) = -1;
  *(v11 + 88) = &v16;
  *(v11 + 98) = 0;
  v12 = &vstmtbl[12 * a2];
LABEL_2:
  v13 = *(v11 + 8);
  while (a4 != a5 && a4 != v13)
  {
    a4 = *(a4 + 8 * (*(a1[24] + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL;
    if (!a4 || (*a4 & 2) == 0)
    {
      (*&v12[3][8 * v16])(a4 + 16, a6);
      a4 = *(a4 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v11 = a1[25];
      goto LABEL_2;
    }
  }

  OUTLINED_FUNCTION_8_50(a1[23]);
  return 1;
}

uint64_t vsplit_time(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v26 = 0;
  v27 = 0;
  if ((a4 & 0x8000000000000000) == 0)
  {
    v8 = (a3[*(a1[24] + 9084) + a2] & 0xFFFFFFFFFFFFFFFCLL);
    if (v8 && (*v8 & 2) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = a3[*(a1[24] + 9084) + a2] & 0xFFFFFFFFFFFFFFFCLL;
    }

    v11 = vins_sync(a1, a2, a3, v8);
    v12 = v5;
    v5 = v11;
    if (v11)
    {
      goto LABEL_10;
    }

    return 0;
  }

  v10 = (a3[a2 + 3] & 0xFFFFFFFFFFFFFFFCLL);
  if (v10 && (*v10 & 2) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v10;
  }

  v11 = vins_sync(a1, a2, v10, v5);
  v12 = v11;
  if (!v11)
  {
    return 0;
  }

LABEL_10:
  v25 = 0;
  v23 = 0;
  v24 = 0;
  if (!v9)
  {
    goto LABEL_16;
  }

  v13 = &vstmtbl[12 * v6];
  v14 = *(v13[1] + 15);
  if (v14 == 65532)
  {
    (*v13[2])(v9 + 16);
    OUTLINED_FUNCTION_9_49();
    v25 = v18;
    v16 = (v9 + 16);
    v17 = &v25;
  }

  else
  {
    if (v14 != 65533)
    {
      goto LABEL_16;
    }

    (*v13[2])(v9 + 16);
    OUTLINED_FUNCTION_9_49();
    v16 = (v9 + 16);
    v17 = &v27;
  }

  vinitflds(v15, v6, v16, v17);
LABEL_16:
  if (v4 >= 0)
  {
    v19 = v4;
  }

  else
  {
    v19 = -v4;
  }

  v26 = v19;
  v20 = *(vstmtbl[12 * v6 + 1] + 15);
  if (v20 == 65532)
  {
    LOWORD(v24) = -4;
    v25 = v19;
    v21 = &v25;
  }

  else
  {
    if (v20 != 65533)
    {
      goto LABEL_24;
    }

    LOWORD(v24) = -3;
    v21 = &v26;
  }

  v23 = v21;
  BYTE2(v24) = 0;
LABEL_24:
  if (vins_tok(a1, v6, v12, v5, &v23))
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t vins_sync(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = alloc_sync(a1);
  if (v8)
  {
    OUTLINED_FUNCTION_5_52();
    *(v8 + 8 * v9) |= 1uLL;
    if (*(*(*(a1 + 192) + 9072) + v6))
    {
      *(v8 + 8) |= 2uLL;
    }

    OUTLINED_FUNCTION_8_50(*(a1 + 184));
    if (a3 && (v10 = *a3, (*a3 & 2) != 0))
    {
      OUTLINED_FUNCTION_5_52();
      a3[v11] = a3[v11] & 3 | v8;
      v12 = a3;
    }

    else
    {
      v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
      a3[1] = v8;
    }

    *(v8 + 8 * (v6 + 3)) = *(v8 + 8 * (v6 + 3)) & 3 | a3;
    if (a4 && (*a4 & 2) != 0)
    {
      *(a4 + 8 * (v6 + 3)) = *(a4 + 8 * (v6 + 3)) & 3 | v8;
      v13 = a4;
    }

    else
    {
      v13 = *(a4 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      *a4 = v8;
    }

    OUTLINED_FUNCTION_5_52();
    *(v8 + 8 * v14) = *(v8 + 8 * v14) & 3 | a4;
    v15 = *(a1 + 192);
    if (*(v15 + 8868))
    {
      v16 = *(v15 + 9084) - 2;
      v17 = *(v12 + 8 * v16);
      v18 = v17 & 0xFFFFFFFFFFFFFFFCLL;
      if (v13 != (v17 & 0xFFFFFFFFFFFFFFFCLL))
      {
        if (*(*(v15 + 9072) + v6))
        {
LABEL_15:
          *(v8 + 16) |= 2uLL;
          if (*(*(a1 + 192) + 8864) && (*(v8 + 8) & 1) == 0 && !vchkseqbad(a1, v8))
          {
            return 0;
          }
        }

        else
        {
          while (v18 != v13)
          {
            if ((*(v18 + 8) & 3) == 0)
            {
              goto LABEL_15;
            }

            v18 = *(v18 + 8 * v16) & 0xFFFFFFFFFFFFFFFCLL;
          }

          while (1)
          {
            v20 = v17 & 0xFFFFFFFFFFFFFFFCLL;
            if (v13 == (v17 & 0xFFFFFFFFFFFFFFFCLL))
            {
              break;
            }

            *(v20 + 16) |= 2uLL;
            v21 = *(a1 + 192);
            if (*(v21 + 8864) && (*(v20 + 8) & 1) == 0)
            {
              if (!vchkseqbad(a1, v20))
              {
                return 0;
              }

              v21 = *(a1 + 192);
            }

            v17 = *(v20 + 8 * *(v21 + 9084) - 16);
          }
        }
      }

      INSSPINER(a1, v8, v12);
      v15 = *(a1 + 192);
    }

    *(v15 + 9080) = 0;
  }

  return v8;
}

void *vinitflds(int a1, unsigned int a2, void *__dst, unsigned __int8 *a4)
{
  v6 = &vstmtbl[12 * a2];
  memmove(__dst, v6[5], *(v6 + 17));
  result = (*v6[3])(__dst, a4);
  v8 = v6[4];
  if (v8)
  {
    v9 = *(v6[1] + 15);
    if (v9 == 0xFFFF)
    {
      v10 = *a4;
    }

    else
    {
      if (v9 != 65534)
      {
        return result;
      }

      v10 = *a4;
    }

    v11 = *(v6 + 19);
    v12 = &v8[*(v6 + 18) * v10];

    return memmove(__dst, v12, v11);
  }

  return result;
}

uint64_t vchkseqbad(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8) & 3) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    while (*(a1 + 288) != v2)
    {
      v5 = *(a1 + 192);
      if (*(a2 + 8 * (v2 + *(v5 + 9084))))
      {
        ++v3;
        if (*(*(v5 + 9072) + v2))
        {
          ++v4;
        }
      }

      ++v2;
    }

    if (v3 < 2 || v4 >= v3)
    {
      return 1;
    }
  }

  vseqbad();
  return 0;
}

uint64_t vnsqflags(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(*(result + 200) + 160);
  while (1)
  {
    v6 = *v4++;
    v5 = v6;
    if (v6 < 0)
    {
      break;
    }

    v7 = *(a2 + 8 * (*(*(result + 192) + 9084) + v5)) & 1;
    v2 += v7;
    if (v7)
    {
      v3 = 1;
    }
  }

  v8 = *(result + 288);
LABEL_6:
  v9 = v8;
  while (1)
  {
    v8 = v9 - 1;
    if (v9 < 1)
    {
      break;
    }

    v10 = *(result + 192);
    v11 = *(a2 - 8 + 8 * *(v10 + 9084) + 8 * v9--);
    if (v11)
    {
      if (!*(*(v10 + 9072) + v8))
      {
        ++v2;
        v3 = 0;
      }

      if (v2 >= 2 && v3 == 0)
      {
        v3 = 0;
        goto LABEL_19;
      }

      goto LABEL_6;
    }
  }

  if (v2 == 1)
  {
    v13 = *(a2 + 8) | 1;
    goto LABEL_20;
  }

LABEL_19:
  v13 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL;
LABEL_20:
  *(a2 + 8) = v13 & 0xFFFFFFFFFFFFFFFDLL | (2 * (v3 != 0));
  return result;
}

uint64_t visnonseq(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a1 + 288);
  while (1)
  {
    if (v7 >= v8)
    {
      return 0;
    }

    if (a2 != v7)
    {
      v10 = v7 + *(*(a1 + 192) + 9084);
      if ((*(a3 + 8 * v10) & 1) != 0 && (*(a4 + 8 * v10) & 1) != 0 && VRSYNC(a1, a3, v7) != a4)
      {
        break;
      }
    }

    ++v7;
  }

  return 1;
}

void fdeldel(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(*(result + 184) + 452) = 1;
  if (a2)
  {
    v6 = *a2;
    if ((*a2 & 2) != 0)
    {
      v6 = a2[*(*(result + 200) + 136) + 3];
    }

    v7 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v7 = 0;
  }

  do
  {
    if (!v4)
    {
      return;
    }

    if ((*v4 & 2) == 0)
    {
      v8 = v4[1];
LABEL_35:
      cacheDeletedDeltaObject(result, v4);
      goto LABEL_36;
    }

    v9 = *(*(result + 192) + 9084) + *(*(result + 200) + 136);
    v8 = v4[v9];
    v10 = v4[1];
    v4[v9] = v8 & 0xFFFFFFFFFFFFFFFELL;
    v11 = &v4[*(*(result + 200) + 136)];
    v11[3] &= 3uLL;
    LODWORD(v11) = *(*(result + 192) + 9084) + *(*(result + 200) + 136);
    v4[v11] &= 3uLL;
    if (v10)
    {
      if (*(*(result + 192) + 8868))
      {
        DELSPINE(result, v4);
      }

      goto LABEL_35;
    }

    vnsqflags(result, v4);
    v12 = *(result + 192);
    if (!*(v12 + 8868))
    {
      goto LABEL_36;
    }

    v13 = *(result + 200);
    v14 = v4;
    do
    {
      v14 = *(v14 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }

    while ((*(v14 + 16) & 2) != 0);
    v15 = *(v12 + 9084);
    v16 = v4;
    do
    {
      v16 = *(v16 + 8 * v15 - 16) & 0xFFFFFFFFFFFFFFFCLL;
    }

    while ((*(v16 + 16) & 2) != 0);
    LODWORD(v17) = 0;
    v18 = 0;
    v19 = 0;
    v20 = *(result + 288);
    v21 = v16 + 8 * v15 - 8;
    v22 = v14 + 8 * v15 - 8;
LABEL_16:
    v23 = v17;
    for (i = v20; i > *(v13 + 136); --i)
    {
      if ((v4[v15 - 1 + i] & 1) == 0)
      {
        v20 = i - 1;
        LODWORD(v17) = 1;
        if (!v23)
        {
          LODWORD(v17) = 0;
          if (*(v22 + 8 * i))
          {
            v17 = *(v21 + 8 * i) & 1;
          }
        }

        goto LABEL_16;
      }

      if (*(v22 + 8 * i))
      {
        if (v19 || (*(v21 + 8 * i) & 1) != 0)
        {
          goto LABEL_36;
        }

        v19 = 0;
        ++v18;
      }

      else
      {
        if (v19)
        {
          goto LABEL_21;
        }

        if (*(v21 + 8 * i))
        {
          if (v18)
          {
            goto LABEL_36;
          }

LABEL_21:
          v19 = 1;
          continue;
        }

        v19 = 0;
      }
    }

    v26 = 8 * v15;
    v27 = *(v13 + 136);
    if (*(v13 + 136))
    {
      do
      {
        if (v4[v26 / 8])
        {
          if (*(v14 + v26))
          {
            if (v19 || (*(v16 + v26) & 1) != 0)
            {
              goto LABEL_36;
            }

            v19 = 0;
            ++v18;
          }

          else if (v19)
          {
            v19 = 1;
          }

          else
          {
            if (v18)
            {
              goto LABEL_36;
            }

            v19 = *(v16 + v26) & 1;
          }
        }

        else if (v23)
        {
          v23 = 1;
        }

        else if (*(v14 + v26))
        {
          v23 = *(v16 + v26) & 1;
        }

        else
        {
          v23 = 0;
        }

        v26 += 8;
        --v27;
      }

      while (v27);
    }

    if (!v19 || !v18)
    {
      if (v23)
      {
        *(v13 + 16) = 0;
        *(v13 + 24) = v4;
        *(v13 + 32) = v4;
        v28 = (v4[1] & 2) == 0 && (v4[1] & 1) == 0;
        *(v13 + 20) = v28;
        if (v19 | v18)
        {
          if (v19)
          {
            v29 = -1;
          }

          else
          {
            v29 = 1;
          }

          if (v19)
          {
            v30 = v14;
          }

          else
          {
            v30 = v16;
          }

          *(v13 + 48) = v30;
        }

        else
        {
          v29 = 2;
        }

        *(v13 + 40) = v29;
        goto LABEL_82;
      }

      if (v19 | v18)
      {
        v31 = v19 == 0;
        if (v19)
        {
          v32 = -1;
        }

        else
        {
          v32 = 1;
        }

        if (v19)
        {
          v33 = v14;
        }

        else
        {
          v33 = v16;
        }

        *(v13 + 16) = v32;
        v34 = v13 + 16;
        *(v34 + 8) = v33;
        if (v31)
        {
          v35 = -1;
        }

        else
        {
          v35 = 1;
        }

        *(v34 + 32) = v4;
        *(v34 + 24) = v35;
        seqscan(result, v34);
        v13 = *(result + 200);
        v29 = *(v13 + 40);
LABEL_82:
        switch(v29)
        {
          case 0xFFu:
LABEL_85:
            seqscan(result, (v13 + 40));
            v13 = *(result + 200);
            break;
          case 2u:
            if (*(v13 + 24) == v14 && *(v13 + 16) == 255)
            {
              *(v13 + 64) = -1;
              v44 = *(v13 + 32);
              *(v13 + 72) = v14;
              *(v13 + 80) = v44;
              *(v13 + 68) = *(v13 + 20);
            }

            else
            {
              *(v13 + 64) = -1;
              v36 = v13 + 64;
              *(v36 + 8) = v14;
              seqscan(result, v36);
              v13 = *(result + 200);
            }

            *(v13 + 40) = 1;
            v37 = v13 + 40;
            *(v37 + 8) = v16;
            seqscan(result, v37);
            v13 = *(result + 200);
            *(v13 + 48) = *(v13 + 80);
            *(v13 + 44) |= *(v13 + 68);
            break;
          case 1u:
            goto LABEL_85;
        }

        v38 = v13 + 24 * (*(v13 + 20) != 0);
        v41 = *(v38 + 16);
        v39 = v38 + 16;
        v40 = v41;
        for (j = *(v39 + 8); ; j = *v43 & 0xFFFFFFFFFFFFFFFCLL)
        {
          *(j + 16) |= 2uLL;
          if (*(*(result + 192) + 8864))
          {
            if ((*(j + 8) & 1) == 0 && !vchkseqbad(result, j))
            {
              break;
            }
          }

          if (j == *(v39 + 16))
          {
            break;
          }

          if (v40 < 0)
          {
            v43 = (j + 8);
          }

          else
          {
            v43 = (j + 8 * *(*(result + 192) + 9084) - 16);
          }
        }
      }
    }

LABEL_36:
    v25 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v31 = v4 == a3;
    v4 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
  }

  while (!v31);
  if (v7 && (*v7 & 2) != 0)
  {
    v45 = *(*(result + 192) + 9084) + *(*(result + 200) + 136);
    *(v7 + 8 * v45) = *(v7 + 8 * v45) & 3 | v25;
    if (v25 && (*v25 & 2) != 0)
    {
LABEL_109:
      v46 = v25 + 8 * *(*(result + 200) + 136);
      *(v46 + 24) = *(v46 + 24) & 3 | v7;
    }

    else
    {
      *v25 = v7;
    }
  }

  else if (v25 && (*v25 & 2) != 0)
  {
    *(v7 + 8) = v25;
    goto LABEL_109;
  }
}

void fdel(uint64_t a1, int a2)
{
  v2 = *(a1 + 200);
  if (a2)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
  }

  else
  {
    v5 = *(v2 + 136);
    v3 = (*(*(v2 + 120) + 8 * (*(*(a1 + 192) + 9084) + v5)) & 0xFFFFFFFFFFFFFFFCLL);
    v4 = (*(*(v2 + 128) + 8 * v5 + 24) & 0xFFFFFFFFFFFFFFFCLL);
  }

  fdeldel(a1, v3, v4);
}

uint64_t vdelinit(uint64_t a1)
{
  *(*(a1 + 192) + 9072) = malloc_type_malloc(*(a1 + 288), 0x100004077774924uLL);
  v2 = malloc_type_malloc(*(a1 + 288), 0x100004077774924uLL);
  result = 0;
  v4 = *(a1 + 192);
  *(*(a1 + 200) + 160) = v2;
  if (*(v4 + 9072) && v2)
  {
    for (i = 0; i < *(a1 + 288); ++i)
    {
      *(*(*(a1 + 192) + 9072) + i) = 0;
    }

    **(*(a1 + 200) + 160) = -1;
    return 1;
  }

  return result;
}

void vdelCleanup(uint64_t a1)
{
  v2 = *(*(a1 + 200) + 160);
  if (v2)
  {
    free(v2);
    *(*(a1 + 200) + 160) = 0;
  }

  v3 = *(*(a1 + 192) + 9072);
  if (v3)
  {
    free(v3);
    *(*(a1 + 192) + 9072) = 0;
  }
}

uint64_t setnonseqIndex(uint64_t result, int a2)
{
  v2 = 0;
  v3 = *(*(result + 200) + 160);
  while (1)
  {
    v4 = *(v3 + v2);
    if (v4 == -1)
    {
      break;
    }

    ++v2;
    if (v4 == a2)
    {
      return result;
    }
  }

  *(v3 + v2) = a2;
  *(*(*(result + 200) + 160) + v2 + 1) = -1;
  return result;
}

uint64_t mapsyncs(uint64_t a1, uint64_t a2)
{
  result = absoluteSyncNum(a1, a2);
  v5 = 0;
  v6 = a2 + 8 * *(*(a1 + 192) + 9084);
  *(v6 - 24) |= 2uLL;
  v7 = *(a1 + 200);
  v8 = *(v7 + 200);
  *(v7 + 200) = v8 + 1;
  *(*(v7 + 192) + 2 * result) = v8;
  while (1)
  {
    v9 = v5;
    if (v5 >= *(a1 + 288))
    {
      break;
    }

    v10 = *(*(a1 + 192) + 9084);
    if (*(a2 + 8 * (v10 + v5)))
    {
      result = VRSYNC(a1, a2, v5);
      if (result)
      {
        if ((*(result + 8 * v10 - 24) & 2) == 0)
        {
          result = mapsyncs(a1, result);
        }
      }
    }

    v5 = v9 + 1;
  }

  return result;
}

uint64_t vredoctxt(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = *(a1 + 200);
  v5[86] = 0;
  v5[56] = a2;
  v5[57] = 0;
  while (*(a1 + 288) > v4)
  {
    for (i = *(*(a1 + 200) + 8); i; i = VLSYNC(i, v4))
    {
      if (*(*(a1 + 200) + 224))
      {
        v7 = i[*(*(a1 + 192) + 9084) - 3];
        if ((v7 & 2) != 0 || (!v7 ? (v8 = *i > 3uLL) : (v8 = 1), !v8 ? (v9 = ((*i | v7) & 1) == 0) : (v9 = 0), !v9))
        {
          v10 = checkInterrupt(a1);
          v11 = *(a1 + 200);
          if (v10)
          {
            *(v11 + 224) = 0;
          }

          else if (*(v11 + 224))
          {
            *(v11 + 228) = 1;
            goto LABEL_19;
          }
        }
      }

      OUTLINED_FUNCTION_6_51();
      *(v13 - 24) = v12 & 0xFFFFFFFFFFFFFFFDLL;
      *i &= ~1uLL;
      OUTLINED_FUNCTION_6_51();
      *(v15 - 24) = v14 & 0xFFFFFFFFFFFFFFFELL;
      *i &= 3uLL;
      OUTLINED_FUNCTION_6_51();
      *(v17 - 24) = v16 & 3;
    }

    ++v4;
  }

LABEL_19:
  vclrctxt(a1);
  v18 = *(a1 + 200);
  if (a2 && !*(v18 + 228))
  {
    vf_printf(a1, *(*(a1 + 216) + 4), 1, "The delta is correct.\n");
    v18 = *(a1 + 200);
  }

  *(v18 + 344) = 1;
  return 1;
}